# Observability and Operability

## Operability is a design requirement

An operator must be able to tell whether a critical flow is working, why it is not, and how to recover it. Add this capability while designing the flow, not after an incident.

## Signals

- **Logs:** Structured, queryable events with outcome, operation, dependency, and correlation context. Do not log secrets or unnecessary PII.
- **Metrics:** Counters, rates, durations, saturation, queue age, and business outcomes that support service-level objectives.
- **Traces:** End-to-end context across process and service boundaries, with controlled sampling and stable operation names.
- **Health:** Separate liveness from readiness. Readiness must represent whether accepting work is safe, not whether every optional dependency is perfect.

## Service objectives

Choose indicators that reflect user or business outcomes, then set a target and error budget. For example, successful order submission is more useful than process uptime. Alerts should be actionable, owned, and tied to a playbook or a known diagnostic path.

## Operational ownership

For critical components, document the on-call or owning team, dashboards, alert thresholds, dependencies, common failure modes, recovery actions, and escalation route. The deployer should be able to verify the new behavior, and the on-call responder should not need source-code archaeology to start diagnosis.

## Review questions

- Can a trace follow this request or message through all critical boundaries?
- Are success, failure, latency, backlog, and saturation observable?
- Will an alert fire before users discover a sustained failure?
- Can data or a message be safely repaired or replayed with an audit trail?
