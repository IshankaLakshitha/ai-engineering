# Testing Strategy

## Purpose

Select a small, reliable set of checks that proves the risks introduced or changed by a piece of work.

## When to use

Use before implementing material behavior, while fixing a defect, when reviewing a pull request, and before a release-sensitive change.

## When not to use

Do not create a formal test plan for a trivial, isolated, low-risk edit when the repository's normal checks already prove the result. Still add evidence proportionate to the risk.

## Benefits and trade-offs

A risk-based strategy makes test suites faster, more intentional, and easier to maintain. It requires reasoning about failure modes instead of chasing a coverage percentage.

## Workflow

1. List the outcomes, invariants, contracts, and failure modes that matter.
2. Rate each risk by impact, likelihood, and ease of detection after release.
3. Select the lowest test level that can reliably prove the behavior.
4. Add higher-level tests only for boundary behavior, integration confidence, or user journeys that local tests cannot prove.
5. Define data, environment, assertions, negative cases, and release evidence.
6. Record intentional gaps and the owner who accepts their residual risk.

## Example

For an order-discount rule, use unit tests for calculation boundaries. Add an integration test only if persistence mapping affects the result, and add a contract test if another service consumes the calculated discount.

## Common mistakes

- Treating every change as requiring the same end-to-end suite.
- Selecting test level by habit rather than what can fail.
- Asserting only a successful response and ignoring validation, authorization, timeout, or duplicate paths.
- Measuring lines covered instead of risks proved.

## Related documents

- [Test pyramid](test-pyramid.md)
- `../../decision-trees/test-strategy.md`
- `../../templates/test-plan.md`
