# Test Pyramid

## Purpose

Balance fast, focused tests with the smaller number of boundary and workflow tests needed for realistic confidence.

## When to use

Use when a suite is slow, flaky, over-dependent on end-to-end tests, or missing evidence at important boundaries.

## When not to use

Do not apply a fixed ratio mechanically. A system with heavy integration risk needs more integration coverage than a pure domain library.

## Benefits and trade-offs

Many focused tests give quick feedback and clear failures. Fewer integration and end-to-end tests cost more to run and diagnose, but prove behavior that unit tests cannot observe.

## Model

- **Unit tests:** business rules, transformations, and local state transitions.
- **Integration tests:** persistence, serialization, queues, HTTP clients, file systems, and framework adapters.
- **Contract tests:** compatibility assumptions between a provider and consumer.
- **End-to-end tests:** a small set of critical user or business journeys.
- **Non-functional checks:** load, resilience, security, and migration checks where the risk warrants them.

## Example

A payment workflow may use unit tests for status transitions, integration tests for durable idempotency, a contract test for a payment provider adapter, and one end-to-end checkout journey.

## Common mistakes

- Making browser or full-stack tests the default for every rule.
- Omitting integration tests for serialization, database constraints, or retry behavior.
- Treating contract tests as a replacement for the provider's own tests.

## Related documents

- [Testing strategy](testing-strategy.md)
- [Integration testing](integration-testing.md)
- [Contract testing](contract-testing.md)
