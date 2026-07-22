# Pull-Request Review

## Purpose

Review a change for correctness and delivery risk before it becomes part of the shared codebase.

## When to use

Use for every non-trivial change, with the depth of review matched to the change's scope, blast radius, and reversibility.

## When not to use

Do not use a pull-request review as the sole approval for production-risk, security, architectural, or compliance decisions that require named accountable owners.

## Benefits and trade-offs

Risk-ordered review finds high-impact defects early and shares knowledge. It takes focused attention and works poorly when diffs are too large or expectations are undocumented.

## Review sequence

1. Read the goal, acceptance criteria, linked design, tests, and rollout notes.
2. Confirm the diff is scoped and that behavior, contracts, ownership, and boundaries remain coherent.
3. Review happy paths, validation, authorization, failure, duplicate, timeout, and compatibility behavior.
4. Assess test signal, documentation, diagnostics, migration, and release controls.
5. Classify actionable findings by impact and summarize approval state and residual risk.

## Example

For a compatible endpoint addition, first review authorization and error mapping, then the application behavior and contract test, then logs and documentation. Do not start with naming preference in a helper method.

## Common mistakes

- Reviewing changed lines without reading the surrounding contract or owner.
- Blocking a change for a personal preference with no user or system consequence.
- Approving a large, mixed refactor without a test or rollback story.
- Requesting broad rewrites when a targeted correction removes the actual risk.

## Related documents

- [Review feedback](review-feedback.md)
- `../../checklists/pull-request-review.md`
- `../../decision-trees/code-review.md`
