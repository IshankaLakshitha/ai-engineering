# Quality Scorecard

## Purpose

Summarize the delivery-quality evidence for a change without pretending that a number can replace professional judgment.

## Non-negotiable gates

The overall score is invalid if any required scorecard fails a non-negotiable gate. Resolve the gap or record explicit risk acceptance before proceeding.

## Rubric

| Dimension | Weight | Evidence source |
| --- | ---: | --- |
| Testing quality | 35 | `testing-score.md`, test plan, and results |
| Review quality | 25 | `review-score.md` and review record |
| Release readiness | 25 | `release-readiness-score.md` and readiness review |
| CI and repository hygiene | 15 | Required validation workflow and documentation checks |

Calculate the weighted score using only applicable dimensions. If a dimension is not applicable, document why and redistribute its weight across the remaining dimensions before scoring.

## Interpretation

- **90–100:** Strong, well-evidenced quality posture for the intended risk.
- **75–89:** Acceptable with explicit follow-ups and no failed gates.
- **60–74:** Quality gaps need targeted remediation or accountable risk acceptance.
- **Below 60:** Do not treat the change as delivery-ready.

## Evidence record

| Dimension | Score | Weight | Evidence | Gap or owner |
| --- | ---: | ---: | --- | --- |
| Testing | | 35 | | |
| Review | | 25 | | |
| Release | | 25 | | |
| CI | | 15 | | |

## Related documents

- `testing-score.md`
- `review-score.md`
- `release-readiness-score.md`
- `../workflows/framework-quality.yml`
