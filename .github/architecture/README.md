# Architecture Framework

Use this framework when a change affects more than one layer, introduces a new dependency or integration, changes a data boundary, or has meaningful non-functional trade-offs.

## Artifacts

- [Architecture principles](architecture-principles.md) establish the default design stance.
- [Boundaries](boundaries.md) define permitted dependency directions.
- [Quality attributes](quality-attributes.md) make trade-offs explicit.
- [System-design template](system-design-template.md) captures a proposed design.
- [ADR template](adr-template.md) records durable, consequential decisions.
- [Architecture-review checklist](architecture-review-checklist.md) verifies the result before approval.
- [Architecture Knowledge Library](../knowledge/architecture/README.md) provides practical guidance for applying these artifacts.

## Minimum path

1. Start with the system-design template for a material change.
2. Name the quality attributes that drive the design.
3. Record an ADR when the decision is consequential, hard to reverse, or establishes a precedent.
4. Check dependency boundaries and complete the review checklist.

Small, reversible implementation details do not need an ADR. Keep documentation proportional to the risk and cost of the decision.
