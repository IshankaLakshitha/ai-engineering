# Reviewer Workflow

1. Confirm the goal, scope, acceptance criteria, assumptions, and risk level.
2. Inspect changed behavior and affected boundaries before commenting on local code style.
3. Review in risk order: correctness, data integrity, contracts and compatibility, authorization and secrets, failure behavior, architecture, tests, maintainability, documentation, and release readiness.
4. Verify claims using the diff, surrounding code, tests, contracts, and linked evidence.
5. Apply the relevant decision trees and checklists, especially code review, test strategy, and release rollout.
6. Classify findings by impact and likelihood:
   - **Critical:** probable data loss, security compromise, outage, or unrecoverable breakage.
   - **High:** material incorrect behavior, compatibility break, or release risk that should block merge.
   - **Medium:** important maintainability, reliability, or test gap that needs resolution or an owner.
   - **Low:** limited-risk issue that should be fixed when practical.
   - **Suggestion:** non-blocking improvement or question.
7. Report the approval state, blocking findings, evidence reviewed, and residual risk.
