# Integration Testing

## Purpose

Verify behavior where application code meets infrastructure, framework configuration, or another concrete boundary.

## When to use

Use for persistence mappings and constraints, serialization, authentication configuration, message delivery, external-client adapters, and migration behavior.

## When not to use

Do not make integration tests the only proof of pure business rules. Keep local rules covered by fast unit tests.

## Benefits and trade-offs

Integration tests discover issues that mocks cannot, but they are slower and require controlled environments, data, and cleanup.

## Practices

- Use the closest practical representation of the real dependency and its configuration.
- Isolate test data and clean it up deterministically.
- Assert boundary-visible outcomes: stored data, emitted messages, serialized payloads, or returned responses.
- Keep environment setup explicit and failure diagnostics rich.
- Run the focused subset locally and the full suite in CI according to repository conventions.

## Example

Verify that a unique database constraint produces the expected domain-safe error, rather than only testing a mocked repository response.

## Common mistakes

- Hiding shared-environment state or relying on a developer's local services.
- Using production credentials or unmasked production data.
- Asserting timing details that make asynchronous tests flaky.

## Related documents

- [Test data](test-data.md)
- [Contract testing](contract-testing.md)
- `../../checklists/integration-test-review.md`
