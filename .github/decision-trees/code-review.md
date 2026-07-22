# Code Review Decision

## 1. Is the change reviewable?

Does the request explain the goal, scope, acceptance criteria, test evidence, and relevant design or rollout impact?

- **No:** Request the missing context before attempting detailed review.
- **Yes:** Continue.

## 2. What is the highest-risk behavior?

Does the change affect correctness, data integrity, contracts, authorization, secrets, failure handling, compatibility, or release safety?

- **Yes:** Review these paths before style or local maintainability concerns.
- **No:** Review the changed behavior, maintainability, tests, and documentation proportionately.

## 3. Is the evidence credible?

Do tests and validation assert the user-visible behavior, failure cases, and boundary effects introduced by the change?

- **No:** Request the smallest missing evidence and use `test-strategy.md`.
- **Yes:** Continue.

## 4. Does a finding require a block?

Would the issue plausibly cause data loss, security exposure, incorrect behavior, incompatibility, outage, or an unsafe release?

- **Yes:** Record a Critical or High finding with evidence, impact, and a concrete remediation path.
- **No:** Classify it as Medium, Low, or Suggestion based on impact and urgency.

## Outcome

Approve only when no unresolved blocking issue remains and residual risk is explicit. Use `../checklists/pull-request-review.md` and `../templates/pull-request-review.md` to record the review.
