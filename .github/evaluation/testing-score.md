# Testing Score

## Purpose

Assess whether test evidence is proportionate to the behavior and risk introduced by a change.

## Non-negotiable gates

A change cannot be considered test-ready if a material defect, contract, migration, authorization, or failure path lacks any credible verification and no accountable owner has accepted the gap.

## Rubric

| Dimension | Points | Full-credit evidence |
| --- | ---: | --- |
| Risk coverage | 30 | Requirements, invariants, failure modes, and relevant compatibility paths have explicit evidence. |
| Test-level selection | 20 | Unit, integration, contract, and end-to-end checks are selected by risk, not habit. |
| Behavioral assertions | 20 | Tests assert user-visible outcomes and boundary behavior rather than private implementation details. |
| Reliability and isolation | 15 | Tests are deterministic, isolated, fast enough for their tier, and diagnostic when failing. |
| Data and boundary realism | 15 | Fixtures are safe and representative; integration and contract tests exercise realistic configuration or payloads. |

## Interpretation

- **90–100:** Strong evidence; remaining gaps are minor and explicit.
- **75–89:** Adequate for normal risk; resolve named gaps or record ownership before release.
- **60–74:** Insufficient for medium or high risk; add targeted evidence.
- **Below 60:** Test strategy needs redesign before relying on it.

## Evidence record

- **Score:**
- **Non-negotiable gate status:** Pass | Fail | Accepted risk
- **Coverage gaps and owners:**
- **Related test plan and results:**

## Related documents

- `../knowledge/testing/testing-strategy.md`
- `../checklists/unit-test-review.md`
- `../checklists/integration-test-review.md`
