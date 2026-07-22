# Mocking and Test Doubles

## Purpose

Isolate a unit from slow, nondeterministic, unavailable, or expensive collaborators while retaining meaningful behavioral evidence.

## When to use

Use a fake, stub, spy, or mock at a clear boundary when a real collaborator would make a local test slow, unreliable, unsafe, or difficult to control.

## When not to use

Do not mock value objects, pure functions, simple in-memory collaborators, or the system under test. Do not replace integration tests for a boundary where serialization, configuration, or provider behavior matters.

## Benefits and trade-offs

Test doubles enable fast, controlled tests. Overuse couples tests to implementation and can hide drift between the application and real dependency.

## Selection guide

- **Fake:** lightweight working implementation, such as in-memory storage, when its behavior is simple and trustworthy.
- **Stub:** supplies controlled inputs or outcomes.
- **Spy:** records observable interaction needed for an outcome assertion.
- **Mock:** verifies an interaction only when that interaction itself is part of the contract.

## Example

Stub a clock to prove expiry behavior. Prefer asserting that an order is rejected over verifying the exact internal sequence of helper calls.

## Common mistakes

- Verifying every call and argument when only the returned outcome matters.
- Reimplementing a remote API's behavior in a mock and never testing the real adapter.
- Sharing mutable mocks across tests.

## Related documents

- [Unit testing](unit-testing.md)
- [Integration testing](integration-testing.md)
- `../../examples/testing-good-vs-bad.md`
