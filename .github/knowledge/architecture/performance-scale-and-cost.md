# Performance, Scale, and Cost

## Measure before optimizing

State the user journey, load shape, data size, latency target, throughput target, and budget before adding performance complexity. Capture a baseline and identify the actual bottleneck with profiling, tracing, query analysis, or load testing.

## Performance design

- Keep work off the critical path only when eventual completion is acceptable and observable.
- Set latency budgets across dependencies; an upstream target is not achievable if its dependency budgets already exceed it.
- Use pagination, bounded concurrency, batching, and streaming to control memory and load.
- Cache only data with a clear owner, freshness rule, invalidation approach, and fallback for misses or outages.
- Avoid N+1 requests, unbounded scans, and expensive serialization in high-volume paths.

## Scale and capacity

Determine whether the limiting factor is CPU, memory, I/O, connection count, partition, queue, database lock, or downstream quota. Scale stateless work horizontally when it is cheaper and simpler; partition state only after an access pattern and ownership model are understood.

## Cost as a quality attribute

Model steady-state and peak cost, including data transfer, retention, observability, retries, overprovisioning, and third-party quotas. Apply resource limits and backpressure so a burst or malfunction cannot create an uncontrolled bill.

## Validation

Use representative data and traffic. Record the test conditions, result, confidence, and the next threshold that should trigger reassessment. A one-time benchmark is not a production capacity plan.
