# Pull Request Review Checklist

Use this checklist after understanding the change intent; do not review formatting before material behavior and release risk.

- [ ] Goal, scope, acceptance criteria, assumptions, and non-goals are clear.
- [ ] Changed behavior is correct across success, validation, authorization, failure, timeout, duplicate, and compatibility paths that apply.
- [ ] Module ownership, contracts, data access, and dependency direction remain coherent.
- [ ] Tests prove the material risks and include regression or compatibility coverage when needed.
- [ ] Diagnostics, error handling, cancellation, and user-safe failure behavior are appropriate.
- [ ] Security, secrets, PII, input validation, and authorization are addressed at changed boundaries.
- [ ] Migration, feature flag, rollout, rollback, and operational impact are viable when release risk exists.
- [ ] Documentation, examples, and decision records match the implemented behavior.
- [ ] Findings are evidence-based, severity-calibrated, actionable, and assigned an owner.

See `../knowledge/review/pull-request-review.md` and `../decision-trees/code-review.md`.
