# AI Engineering Framework - v0.4.0

Reusable engineering guidance for AI coding assistants. The framework gives agents a shared way to reason, design, implement, test, review, release, and improve software across projects.

## v0.4.0 - Delivery and Quality

Version 0.4 adds a complete quality path after implementation: Tester and Reviewer agents, risk-based testing and review knowledge, CI documentation validation, release-readiness artifacts, and reusable quality scorecards.

## Version history

| Version | Focus | Includes |
| --- | --- | --- |
| v0.1.0 | Foundation | Copilot instructions, planner and developer roles, engineering knowledge, checklists, examples, and a feature-plan template. |
| v0.2.0 | Reasoning and decisions | Role-specific workflows plus repeatable engineering decision trees. |
| v0.3.0 | Architecture framework | Principles, boundaries, quality attributes, system designs, ADRs, the Architect Agent, architecture knowledge, and decision support. |
| v0.4.0 | Delivery and quality | Tester and Reviewer agents, test and review knowledge, CI quality gates, release readiness, and quality evaluation. |

See [CHANGELOG.md](CHANGELOG.md) for complete version detail and [ROADMAP.md](ROADMAP.md) for milestones.

## Use in a repository

Copy the `.github` directory and `scripts/validate-framework.ps1` into the target repository, then tailor `knowledge/project-conventions.md` to the project. Use only the agents, decision trees, and artifacts relevant to the change.

## Layout

```text
.
|-- .github/
|   |-- agents/           # Role definitions
|   |-- architecture/     # Designs, ADRs, boundaries, and quality attributes
|   |-- checklists/       # Completion and review gates
|   |-- decision-trees/   # Indexed design, delivery, quality, and release decisions
|   |-- evaluation/       # Evidence-based delivery-quality scorecards
|   |-- examples/         # Good-versus-bad engineering examples
|   |-- knowledge/        # Architecture, testing, review, and delivery-quality guidance
|   |-- reasoning/        # Role-specific problem-solving workflows
|   |-- templates/        # Reusable planning, review, test, and release documents
|   `-- workflows/        # CI validation workflow
|-- scripts/              # Portable framework validation
|-- CHANGELOG.md
|-- ROADMAP.md
`-- VERSION
```

## Delivery-quality workflow

1. Use the relevant decision tree to understand the change and its risks.
2. Use the Tester Agent to create proportionate test evidence.
3. Use the Reviewer Agent to review correctness, boundaries, tests, and release impact.
4. Run the CI quality gate and complete the applicable checklists.
5. For release-risk changes, record rollout, recovery, and production-readiness evidence.
6. Use the quality scorecards to expose gaps and owners; do not replace judgment with a score.

## Status

The version in [VERSION](VERSION) identifies the current framework development line. The GitHub Actions workflow runs the repository-quality validation on pull requests and supported branches.
