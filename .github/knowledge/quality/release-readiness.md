# Release Readiness

## Purpose

Decide whether a validated change has a safe path into production, including rollout, recovery, observability, communication, and ownership.

## When to use

Use for releases with material user, data, compatibility, security, operational, or financial impact. Apply a lighter form to routine low-risk releases.

## When not to use

Do not delay a low-risk rollback-only change with a heavyweight ceremony. Do not approve a high-risk release merely because a template is filled in.

## Benefits and trade-offs

Release readiness makes implicit operational assumptions visible before users depend on the change. It requires coordination and evidence proportional to blast radius and reversibility.

## Readiness workflow

1. Confirm acceptance criteria, test results, contracts, and required approvals.
2. Assess compatibility for clients, workers, data, configuration, and dependencies.
3. Define rollout stages, success signals, alert thresholds, and stop authority.
4. Define rollback or forward-repair actions for code, data, messages, configuration, and flags.
5. Confirm monitoring, runbooks, support ownership, release notes, and stakeholder communication.
6. Record residual risk and accountable approval before release.

## Example

A data-bearing endpoint change deploys an additive schema first, verifies migration metrics, enables behavior behind a flag for a small cohort, monitors errors and queue age, then removes the old path after consumer migration.

## Common mistakes

- Calling a code rollback a recovery plan when data or messages are already changed.
- Releasing without an owner authorized to halt or repair the change.
- Leaving compatibility code or feature flags without a removal owner and date.

## Related documents

- `../../decision-trees/release-rollout.md`
- `../../checklists/release-readiness.md`
- `../../templates/production-readiness-review.md`
