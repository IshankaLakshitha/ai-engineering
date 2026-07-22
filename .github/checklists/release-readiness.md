# Release Readiness Checklist

Use this checklist when a change is ready to move from a merged implementation to a planned release.

- [ ] Acceptance criteria, required approvals, and linked design or ADR decisions are complete.
- [ ] Required build, test, contract, migration, and validation checks have passed with recorded evidence.
- [ ] Compatibility has been assessed for clients, workers, contracts, data, and configuration.
- [ ] Rollout stages, success measures, alert thresholds, and the person authorized to stop the release are defined.
- [ ] Rollback or forward-repair actions cover code, data, messages, configuration, and feature flags.
- [ ] Monitoring, dashboards, alerts, logs, and runbooks are ready for the changed critical flow.
- [ ] Release notes, support communication, owner, and escalation route are known.
- [ ] Temporary compatibility paths, flags, and migrations have an owner and removal date.

See `../decision-trees/release-rollout.md` and `../templates/production-readiness-review.md`.
