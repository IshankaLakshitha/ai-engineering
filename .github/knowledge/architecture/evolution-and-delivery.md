# Evolution and Delivery

## Deliver architecture incrementally

Prefer thin, deployable slices that create a safe path from the current state to the target state. A design is incomplete if it only describes the target state and not how to reach it safely.

## Compatibility and migration

- Introduce new contracts, schemas, and behavior additively before retiring old behavior.
- Decouple data migration from feature activation when a migration is large, risky, or slow.
- Use feature flags, dual reads, dual writes, adapters, or backfills only with explicit lifecycle and removal criteria.
- Publish a consumer migration plan with ownership and dates when a public contract changes.

## Rollout and rollback

Define progressive rollout stages, success signals, guardrails, and the person or team authorized to halt. A rollback plan must consider data changes: sometimes a forward repair is safer than reverting code. Exercise the plan in a non-production environment when the risk warrants it.

## Decommissioning

Before removing an endpoint, event, table, service, flag, or infrastructure resource, prove that consumers and historical recovery needs are gone. Remove stale telemetry, runbooks, permissions, and costs with the retired component.

## Delivery handoff

Give the planner an ordered sequence and dependencies, the developer explicit contracts and invariants, and the reviewer the intended architecture plus validation evidence. Keep the system design and ADR current when implementation changes the decision.
