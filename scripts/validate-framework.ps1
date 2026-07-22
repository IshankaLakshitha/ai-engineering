[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repositoryRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$errors = [System.Collections.Generic.List[string]]::new()

$requiredPaths = @(
    'README.md',
    'CHANGELOG.md',
    'ROADMAP.md',
    'VERSION',
    '.github/agents/tester.agent.md',
    '.github/agents/reviewer.agent.md',
    '.github/decision-trees/code-review.md',
    '.github/checklists/release-readiness.md',
    '.github/templates/test-plan.md',
    '.github/evaluation/quality-scorecard.md',
    '.github/workflows/framework-quality.yml'
)

foreach ($relativePath in $requiredPaths) {
    $path = Join-Path $repositoryRoot $relativePath
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $errors.Add("Required framework file is missing: $relativePath")
    }
}

$version = (Get-Content -Raw -LiteralPath (Join-Path $repositoryRoot 'VERSION')).Trim()
if ($version -notmatch '^\d+\.\d+\.\d+$') {
    $errors.Add('VERSION must contain a semantic version in major.minor.patch form.')
}

$readme = Get-Content -Raw -LiteralPath (Join-Path $repositoryRoot 'README.md')
if ($readme -notmatch [regex]::Escape("v$version")) {
    $errors.Add("README.md does not identify the current version v$version.")
}

$changelog = Get-Content -Raw -LiteralPath (Join-Path $repositoryRoot 'CHANGELOG.md')
if ($changelog -notmatch [regex]::Escape("## [$version]")) {
    $errors.Add("CHANGELOG.md does not contain an entry for $version.")
}

$markdownFiles = Get-ChildItem -Path $repositoryRoot -Recurse -File -Filter '*.md' -Force |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' }

foreach ($file in $markdownFiles) {
    $content = Get-Content -Raw -LiteralPath $file.FullName
    $relativeFile = $file.FullName.Substring($repositoryRoot.Length).TrimStart([char[]]@('\', '/'))

    if ($content -notmatch '(?m)^#\s+\S') {
        $errors.Add("Markdown file has no top-level heading: $relativeFile")
    }

    $links = [regex]::Matches($content, '\]\((?<target>[^)\s]+)(?:\s+"[^"]*")?\)')
    foreach ($link in $links) {
        $target = $link.Groups['target'].Value
        if ($target -match '^(https?:|mailto:|#)') {
            continue
        }

        $targetPath = ($target -replace '#.*$', '') -replace '/', [IO.Path]::DirectorySeparatorChar
        if ([string]::IsNullOrWhiteSpace($targetPath)) {
            continue
        }

        $resolvedPath = [IO.Path]::GetFullPath([IO.Path]::Combine($file.DirectoryName, $targetPath))
        if (-not (Test-Path -LiteralPath $resolvedPath)) {
            $errors.Add("Broken local Markdown link in ${relativeFile}: $target")
        }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    throw "Framework validation failed with $($errors.Count) error(s)."
}

Write-Host "Framework validation passed: $($markdownFiles.Count) Markdown files checked; version $version."
