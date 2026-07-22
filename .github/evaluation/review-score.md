# Review Score

## Purpose

Assess whether a review meaningfully examined the risk in a change and produced actionable outcomes.

## Non-negotiable gates

A review cannot be considered complete when known Critical or High findings are unresolved, required evidence was not inspected, or an accepted material risk has no accountable owner.

## Rubric

| Dimension | Points | Full-credit evidence |
| --- | ---: | --- |
| Context and scope | 15 | Reviewer understands the goal, affected boundaries, acceptance criteria, and non-goals. |
| Risk prioritization | 25 | Correctness, data, contracts, authorization, failure, and release risk were checked before low-impact style concerns. |
| Evidence depth | 25 | Findings and approval claims are supported by code, tests, contracts, and validation evidence. |
| Finding quality | 20 | Findings include calibrated severity, location, consequence, and actionable remediation. |
| Completion and ownership | 15 | Approval state, residual risk, follow-ups, and owners are explicit. |

## Interpretation

- **90–100:** Thorough, risk-focused review with clear ownership.
- **75–89:** Adequate review; improve named gaps before high-risk release.
- **60–74:** Important areas may be unreviewed; request a focused follow-up.
- **Below 60:** Review is not a reliable quality gate.

## Evidence record

- **Score:**
- **Non-negotiable gate status:** Pass | Fail | Accepted risk
- **Blocking findings and owners:**
- **Review record:**

## Related documents

- `../knowledge/review/pull-request-review.md`
- `../knowledge/review/review-feedback.md`
- `../checklists/pull-request-review.md`
