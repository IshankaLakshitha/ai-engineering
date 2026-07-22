# Testing Knowledge

## Purpose

Provide reusable guidance for designing evidence that a software change behaves correctly and remains safe to evolve.

## Scope

This library covers test selection, test levels, test data, contract verification, and test doubles. It complements project-specific testing conventions and does not prescribe a framework or test runner.

## Use this library when

- Adding, changing, reviewing, or debugging behavior.
- Choosing between unit, integration, contract, end-to-end, or non-functional verification.
- Designing regression, compatibility, migration, or release validation.

## Do not use it as

- A substitute for acceptance criteria, production monitoring, or an accountable release decision.
- A reason to add tests that do not prove a material behavior or risk.

## Topics

| Topic | Use it for |
| --- | --- |
| [Testing strategy](testing-strategy.md) | Mapping risk to proportionate evidence |
| [Test pyramid](test-pyramid.md) | Choosing the balance of test levels |
| [Unit testing](unit-testing.md) | Fast verification of business rules and local behavior |
| [Integration testing](integration-testing.md) | Real behavior across adapters and infrastructure boundaries |
| [Contract testing](contract-testing.md) | Provider-consumer compatibility at public boundaries |
| [Test data](test-data.md) | Safe, representative fixtures and lifecycle management |
| [Mocking and test doubles](mocking-and-test-doubles.md) | Isolating a unit without hiding real behavior |

## Related documents

- `../../decision-trees/test-strategy.md`
- `../../checklists/unit-test-review.md`
- `../../checklists/integration-test-review.md`
- `../../templates/test-plan.md`
- `../../evaluation/testing-score.md`
