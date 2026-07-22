# Quality Evaluation

## Purpose

Provide reusable, evidence-based scorecards that help an AI agent or engineering team identify quality gaps before review or release.

## Scope

These scorecards support judgment; they do not replace tests, code review, architecture review, risk acceptance, or production accountability.

## How to score

1. Gather evidence from requirements, code, tests, contracts, CI, documentation, and release artifacts.
2. Score each applicable criterion using the guidance in the relevant scorecard.
3. Reweight only criteria that are genuinely not applicable, and record why.
4. Apply the non-negotiable gates before relying on a numeric result.
5. Record gaps, owners, and follow-up dates rather than hiding uncertainty in a score.

## Scorecards

| Scorecard | Use it for |
| --- | --- |
| [Testing score](testing-score.md) | Assessing evidence for changed behavior |
| [Review score](review-score.md) | Assessing review depth and feedback quality |
| [Release readiness score](release-readiness-score.md) | Assessing release controls and recovery preparation |
| [Quality scorecard](quality-scorecard.md) | Summarizing delivery-quality evidence across the change |

## Related documents

- `../agents/tester.agent.md`
- `../agents/reviewer.agent.md`
- `../checklists/`
- `../templates/`
