# Release Readiness Score

## Purpose

Assess whether a change has sufficient validation, operational control, and recovery preparation for its intended release risk.

## Non-negotiable gates

Do not release when a material migration, compatibility issue, security exposure, unvalidated critical flow, or unrecoverable failure mode has no approved control or explicit risk acceptance.

## Rubric

| Dimension | Points | Full-credit evidence |
| --- | ---: | --- |
| Validation evidence | 25 | Required build, test, contract, migration, and release checks are complete and recorded. |
| Compatibility and migration | 20 | Client, worker, data, and configuration transition paths are understood and safe. |
| Rollout and recovery | 25 | Staged rollout, success signals, stop authority, rollback or forward repair, and feature-flag behavior are viable. |
| Operability | 20 | Telemetry, dashboards, alerts, runbooks, ownership, and support routes cover critical behavior. |
| Communication and cleanup | 10 | Release notes, stakeholder actions, temporary-control owners, and removal dates are explicit. |

## Interpretation

- **90–100:** Ready for the intended release path with explicit evidence.
- **75–89:** Ready for normal risk after named actions are complete.
- **60–74:** Needs additional controls or accountable risk acceptance.
- **Below 60:** Not ready for release.

## Evidence record

- **Score:**
- **Non-negotiable gate status:** Pass | Fail | Accepted risk
- **Release decision and approver:**
- **Linked rollout and recovery plan:**

## Related documents

- `../checklists/release-readiness.md`
- `../checklists/production-readiness.md`
- `../templates/production-readiness-review.md`
