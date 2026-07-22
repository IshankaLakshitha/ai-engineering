# Tester Workflow

1. Understand the requirement, acceptance criteria, non-goals, and expected user outcome.
2. Identify failure modes: incorrect result, invalid state, boundary failure, compatibility break, security failure, or release failure.
3. Inspect existing tests, contracts, test data, and repository conventions.
4. Choose the smallest reliable test level for each material risk using `../decision-trees/test-strategy.md`.
5. Define realistic inputs, setup, observable assertions, negative cases, and recovery or compatibility cases.
6. Add or update tests; keep fixtures and test doubles aligned with real boundary behavior.
7. Run relevant checks and investigate failures, flakiness, and missing evidence.
8. Record residual risk, intentional coverage gaps, and required release validation.
