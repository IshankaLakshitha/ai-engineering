# Reliability and Resilience

## Design for ordinary failure

Networks fail, dependencies slow down, messages duplicate, processes restart, and deployments overlap. Treat these as expected cases rather than exceptional edge conditions.

## External-call policy

For each external call, decide and document:

- Timeout and cancellation behavior.
- Which failures are retryable, the retry budget, and backoff behavior.
- Idempotency mechanism and duplicate protection.
- Bulkhead, queue, concurrency, or rate limits that prevent a failing dependency from exhausting the service.
- Fallback or degraded response, and which failures must remain visible to the caller.

Never add retries without a timeout, a cap, and a reason. Retrying non-idempotent operations can create data loss or duplication.

## Asynchronous recovery

Track message acceptance, processing, failure, and age. Define how poison messages are isolated, inspected, corrected, replayed, or discarded. A dead-letter destination without an owner and recovery procedure is not a resilience strategy.

## Availability and recovery

State the availability target, recovery point objective, and recovery time objective only when they are required; each has cost and complexity. Ensure backups, restore procedures, dependency failover, and runbooks are tested at the level the service promises.

## Validate resilience

Use failure-oriented tests, dependency simulations, load tests, and game days where risk warrants them. Monitor the error and latency consequences of a degraded dependency, not just whether the application process stays alive.
