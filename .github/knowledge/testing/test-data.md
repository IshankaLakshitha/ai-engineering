# Test Data

## Purpose

Create safe, representative, understandable data that exposes the behavior and risk a test is intended to verify.

## When to use

Use whenever tests depend on persisted records, messages, files, identity context, time, or non-trivial input combinations.

## When not to use

Do not copy production secrets, credentials, tokens, or unmasked personal data into tests. Do not build an elaborate data factory for a case that needs only a few explicit values.

## Benefits and trade-offs

Representative data catches edge cases and makes tests credible. Large opaque fixtures and shared mutable state make tests slow, brittle, and difficult to diagnose.

## Practices

- Start with the smallest explicit fixture that demonstrates the rule.
- Include boundaries: empty, maximum, invalid, expired, duplicate, missing, and permission-limited cases when relevant.
- Generate or mask sensitive data; make its classification and lifecycle clear.
- Use builders or factories only when they improve readability and defaults remain valid.
- Isolate data by test and clean up deterministically, especially for integration tests.

## Example

Use a generated tenant and a fixed, expired date to test authorization and expiry behavior; do not reuse a shared account that changes across test runs.

## Common mistakes

- Test fixtures that hide the condition the test is meant to prove.
- Random data without a recorded seed or stable assertion.
- Shared database records that create order-dependent failures.

## Related documents

- [Integration testing](integration-testing.md)
- `../../knowledge/architecture/data-and-state.md`
- `../../checklists/integration-test-review.md`
