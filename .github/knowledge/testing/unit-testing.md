# Unit Testing

## Purpose

Verify a small unit of business or application behavior quickly and deterministically through its public behavior.

## When to use

Use for domain rules, validation, transformations, state transitions, and failure paths that can run without real infrastructure.

## When not to use

Do not use a unit test to prove database constraints, serialization, dependency configuration, or a remote provider's behavior. Use an integration or contract test instead.

## Benefits and trade-offs

Unit tests are fast to run and diagnose. They can give false confidence when they mock away the boundary or assert private implementation details.

## Practices

- Name the behavior, condition, and expected outcome.
- Arrange only the data required to demonstrate the rule.
- Assert observable outputs, state, or domain events rather than method call order.
- Cover meaningful boundaries, invalid input, and failure behavior.
- Keep each test independent; do not rely on execution order or shared mutable fixtures.

## Example

Test that a discount is rejected when it is expired, rather than asserting that a private `IsExpired` helper is called.

## Common mistakes

- One test with many unrelated assertions and unclear failure messages.
- Reproducing production logic inside the test to calculate the expected result.
- Mocking every collaborator even when a simple value object or fake would be clearer.

## Related documents

- [Mocking and test doubles](mocking-and-test-doubles.md)
- `../../checklists/unit-test-review.md`
- `../../examples/testing-good-vs-bad.md`
