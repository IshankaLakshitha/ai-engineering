# Production Readiness Checklist

Use this checklist for a service, feature, or material change that will be operated in production.

- [ ] The service owner, user impact, critical dependencies, support route, and on-call expectations are documented.
- [ ] Health, readiness, structured logs, metrics, traces, dashboards, and actionable alerts cover critical behavior.
- [ ] Timeouts, cancellation, retry limits, idempotency, backpressure, and degraded behavior are explicit at external boundaries.
- [ ] Data handling, authorization, secrets, access controls, retention, and privacy obligations are satisfied.
- [ ] Capacity, dependency limits, cost exposure, and safe failure limits are understood for expected load.
- [ ] Backup, restore, recovery, incident, and data-repair actions are viable and have named owners.
- [ ] Release, rollback, feature-flag, migration, and decommissioning paths are documented and tested proportionately.

See `../knowledge/architecture/observability-and-operability.md` and `../knowledge/architecture/reliability-and-resilience.md`.
