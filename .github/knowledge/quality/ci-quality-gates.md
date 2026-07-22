# CI Quality Gates

## Purpose

Define automated, reliable checks that prevent known quality regressions before code is merged or released.

## When to use

Use when creating or changing pull-request checks, repository validation, test execution tiers, build verification, or release gates.

## When not to use

Do not add a gate that is flaky, unactionable, excessively slow, or unable to distinguish a real defect from infrastructure noise. Do not rely on CI alone for production-risk decisions.

## Benefits and trade-offs

Fast deterministic gates shorten feedback loops and protect standards consistently. Every gate has execution, maintenance, and false-positive cost, so it must prevent a meaningful class of failure.

## Gate design

- Run fast checks on every change: formatting where enforced, compilation, targeted tests, static analysis, and framework-documentation validation.
- Run slower integration, contract, security, performance, or migration checks at a frequency justified by risk and feedback cost.
- Make failures diagnostic: name the violated rule, affected artifact, and expected remediation.
- Pin and review CI actions or tools according to repository policy; grant workflows least-privilege permissions.
- Track flaky checks as defects with owners and service-level expectations; do not normalize rerunning failures without investigation.

## Example

This framework's `../../workflows/framework-quality.yml` runs `../../../scripts/validate-framework.ps1` on pull requests and protected branches. The script validates required artifacts, version references, top-level Markdown headings, and local Markdown links.

## Common mistakes

- Adding an expensive end-to-end suite to every edit without evidence it catches relevant failures.
- Hiding warnings or allowing known flaky checks to pass by retry.
- Making a check mandatory without an owner, failure guide, or maintenance plan.

## Related documents

- [Release readiness](release-readiness.md)
- `../../evaluation/quality-scorecard.md`
- `../../templates/test-plan.md`
