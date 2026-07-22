# Integration Test Review Checklist

Use this checklist for tests that exercise databases, frameworks, serialization, queues, files, or external-client adapters.

- [ ] The test proves a boundary behavior that a unit test cannot reliably prove.
- [ ] Environment configuration represents the production-relevant behavior without using production secrets or PII.
- [ ] Test data is isolated, safe, deterministic, and cleaned up or reset predictably.
- [ ] Assertions inspect a boundary-visible result: persisted state, response, payload, constraint, or emitted message.
- [ ] Success, failure, timeout, duplicate, and recovery behavior are covered where the boundary requires them.
- [ ] Setup and diagnostics make a failure actionable in CI.
- [ ] The test avoids fixed delays and timing assumptions that create flakiness.
- [ ] The suite has an appropriate execution path in local development and CI.

See `../knowledge/testing/integration-testing.md` and `../knowledge/testing/test-data.md`.
