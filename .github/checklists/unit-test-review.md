# Unit Test Review Checklist

Use this checklist to decide whether unit tests provide clear, durable evidence for a local rule or behavior.

- [ ] The test name describes the behavior, condition, and expected outcome.
- [ ] Inputs expose a meaningful boundary, invalid case, state transition, or business rule.
- [ ] Assertions prove observable output, state, or domain event rather than private implementation details.
- [ ] The test is independent of execution order, current time, random values, network, and shared mutable state.
- [ ] Test doubles isolate a real boundary without recreating the production implementation.
- [ ] Failure output makes the broken behavior understandable without source-code archaeology.
- [ ] The test remains focused; unrelated behavior is covered by a separate case.
- [ ] A defect or edge case has a regression case that would fail before the fix.

See `../knowledge/testing/unit-testing.md` and `../knowledge/testing/mocking-and-test-doubles.md`.
