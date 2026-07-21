# Performance Change Decision

## 1. Is there a measured performance or cost problem?

Do representative metrics, traces, profiling, query analysis, load tests, or bills show a target is missed or at risk?

- **No:** Define the target and capture a baseline before optimizing.
- **Yes:** Continue.

## 2. Is the bottleneck understood?

Is the constraint CPU, memory, storage, network, database, queue, downstream quota, serialization, or unbounded work?

- **No:** Investigate before proposing an optimization.
- **Yes:** Continue.

## 3. Can a simple change solve it?

Can an existing index, query improvement, pagination, batching, bounded concurrency, payload reduction, or resource limit meet the target?

- **Yes:** Prefer the simple, measurable change.
- **No:** Continue.

## 4. Is added complexity justified?

Would caching, partitioning, asynchronous processing, new infrastructure, or a new data store meet a stated target and remain operable?

- **Yes:** Use `architecture-change.md`; define ownership, invalidation, failure, cost, and validation.
- **No:** Revisit the requirement or capacity plan with the accountable owner.

## Outcome

Validate using representative load and data. Record the result, confidence, cost effect, and the threshold for reassessment.
