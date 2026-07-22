# Review Feedback

## Purpose

Turn review observations into clear, respectful, evidence-based actions that improve the change and the shared system.

## When to use

Use whenever requesting a correction, raising a risk, asking a question, or suggesting a non-blocking improvement.

## When not to use

Do not use comments to impose ungrounded preferences, relitigate a settled decision, or hide a blocking concern behind vague language.

## Benefits and trade-offs

Specific feedback reduces rework and makes severity understandable. Writing it well takes more care than a terse opinion, especially for cross-cutting risks.

## Effective finding format

- **Severity:** Critical, High, Medium, Low, or Suggestion.
- **Location:** affected file, contract, flow, or scenario.
- **Evidence:** what code, test, or behavior demonstrates the issue.
- **Impact:** user, data, security, compatibility, operational, or maintainability consequence.
- **Action:** smallest credible remediation or the question needed to resolve uncertainty.

## Example

**High — duplicate charge risk:** The retry path reissues the payment request without an idempotency key. A timeout after the provider accepts the first request can charge the customer twice. Reuse a stable request key and add a timeout-after-acceptance integration test.

## Common mistakes

- “This looks wrong” without evidence or consequence.
- Labeling a stylistic request as high severity.
- Combining multiple unrelated findings in one comment.
- Leaving an accepted risk without an owner or follow-up date.

## Related documents

- [Pull-request review](pull-request-review.md)
- `../../agents/reviewer.agent.md`
- `../../evaluation/review-score.md`
