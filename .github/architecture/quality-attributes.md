# Quality Attributes

Architecture decisions must name the quality attributes that drive them and how success will be measured.

| Attribute | Questions | Example measure |
| --- | --- | --- |
| Availability | What happens when a dependency fails? | 99.9% successful requests per month |
| Performance | Which flows are latency or throughput sensitive? | p95 API latency under 250 ms |
| Scalability | What changes as load or data grows? | Sustain 500 requests per second |
| Reliability | How is data loss, duplication, or partial failure handled? | At-least-once messages are idempotent |
| Security | Which assets, actors, and trust boundaries matter? | Least-privilege service identity |
| Maintainability | How easily can a feature change safely? | One module owns each business capability |
| Operability | Can operators detect and diagnose failures? | Trace ID and SLO metric for each critical flow |
| Cost | What recurring and peak costs are acceptable? | Monthly infrastructure budget target |

## Trade-off guidance

- State the priority order when attributes conflict; no design maximizes all of them.
- Use measurable targets where practical, including a time horizon and expected load.
- Make degradation behavior explicit: fail, retry, queue, fallback, or shed load.
- Revisit assumptions when observed usage, cost, or failure patterns invalidate them.
