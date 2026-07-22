# Code Review: Good vs Bad

## Bad: vague and unprioritized

> This retry code looks wrong. Please improve it.

The author cannot tell whether the concern is a blocker, what scenario fails, or what a safe correction looks like.

## Good: evidence, impact, and action

> **High — duplicate-charge risk:** The timeout retry sends a new payment request without an idempotency key. If the provider accepted the first request but the response was lost, the customer can be charged twice. Reuse a stable request key for retries and add an integration test for timeout-after-acceptance behavior.

This finding identifies the scenario, explains user impact, calibrates severity, and gives an actionable remediation path without prescribing unrelated implementation details.

## Related documents

- `../knowledge/review/review-feedback.md`
- `../decision-trees/code-review.md`
- `../templates/pull-request-review.md`
