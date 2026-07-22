# Release Rollout Decision

## 1. Is the change compatible with the current production state?

Can old clients, old workers, current data, and existing infrastructure continue to operate during deployment?

- **Yes:** Use normal progressive deployment and monitoring.
- **No:** Continue.

## 2. Can compatibility be introduced first?

Can the change be split into additive schema or contract updates, dual reads or writes, adapters, or a feature flag before activation?

- **Yes:** Deliver those safety steps before enabling the new behavior.
- **No:** Continue.

## 3. Is coordinated release or downtime acceptable?

Has the accountable owner accepted the client coordination, outage, data, and rollback risk?

- **Yes:** Create a timed runbook, communication plan, pre-flight checks, and recovery plan.
- **No:** Redesign the rollout path; do not force a breaking deployment.

## 4. Can the change be monitored and recovered?

- Define rollout stages, success signals, alert thresholds, and a stop authority.
- Define code rollback, data forward-repair, message recovery, and feature-flag behavior.
- Verify dashboards, alerts, backups, and runbooks before the high-risk step.

## Outcome

Release progressively where possible. Record the result and remove temporary flags, compatibility paths, migrations, and documentation when the transition is complete.
