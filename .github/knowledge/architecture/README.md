# Architecture Knowledge Library

This library explains the engineering practices behind the v0.3 architecture artifacts. It is reference material for the Architect Agent and delivery teams; it does not replace repository-specific conventions or the mandatory templates and checklists in `../../architecture/`.

## How to use it

1. Read `../../knowledge/project-conventions.md` and inspect the existing repository before applying general guidance.
2. Start with the topic that matches the decision being made.
3. Convert the relevant guidance into measurable requirements in a system design or ADR.
4. Use `../../architecture/architecture-review-checklist.md` to verify the proposal.

## Topics

| Topic | Use it when deciding about |
| --- | --- |
| [System design](system-design.md) | Scope, components, flows, evidence, and design-record depth |
| [Boundaries and modularity](boundaries-and-modularity.md) | Ownership, dependencies, layers, and module communication |
| [Contracts and integration](contracts-and-integration.md) | APIs, events, compatibility, and synchronous versus asynchronous flows |
| [Data and state](data-and-state.md) | Data ownership, consistency, migrations, and privacy |
| [Reliability and resilience](reliability-and-resilience.md) | Failure handling, idempotency, timeouts, retries, and recovery |
| [Security and trust](security-and-trust.md) | Threat boundaries, identity, authorization, secrets, and data protection |
| [Observability and operability](observability-and-operability.md) | Telemetry, SLOs, alerts, health, and incident readiness |
| [Performance, scale, and cost](performance-scale-and-cost.md) | Latency, capacity, caching, load, and cost trade-offs |
| [Evolution and delivery](evolution-and-delivery.md) | Migration, rollout, rollback, compatibility, and incremental delivery |
| [Decisions and trade-offs](decisions-and-trade-offs.md) | Alternatives, ADRs, reversibility, experiments, and risk acceptance |
| [Architecture review](architecture-review.md) | Preparing and running an effective design review |

## Source of truth

- `../../architecture/architecture-principles.md` and `../../architecture/boundaries.md` define the framework's default rules.
- `../../architecture/` contains the canonical system-design, ADR, and review artifacts.
- This library supplies the reasoning needed to apply those rules well.
- A target repository's documented conventions take precedence when they intentionally differ from the framework.
