# API Contract Change Decision

## 1. Is the contract externally consumed?

Do another team, deployed client, public integration, message consumer, or persisted payload depend on it?

- **No:** Keep the contract internal and update callers together.
- **Yes:** Continue.

## 2. Is the change additive and tolerant?

Can the provider add optional fields or new behavior while existing consumers continue to work unchanged?

- **Yes:** Deploy the provider change first, then update consumers and monitor adoption.
- **No:** Continue.

## 3. Is a compatibility period possible?

Can old and new forms run in parallel through versioning, adapters, dual reads, or dual publishing?

- **Yes:** Define the deprecation date, consumer migration plan, telemetry, and removal criteria.
- **No:** Treat this as a coordinated breaking change; obtain consumer-owner approval and a release plan before implementation.

## 4. Are semantics stable?

Have error behavior, authorization, idempotency, ordering, delivery, timeout, and data-classification implications been assessed?

- **No:** Define them before release.
- **Yes:** Continue.

## Outcome

Use `../knowledge/architecture/contracts-and-integration.md` for the contract record and `release-rollout.md` for the deployment path. Material changes also require `architecture-change.md`.
