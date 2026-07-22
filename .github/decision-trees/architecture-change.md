# Architecture Change Decision

## 1. Is this an architecture change?

Does the change cross a module, layer, data, or external-service boundary; alter ownership; introduce a new integration; or change a quality attribute?

- **No:** Follow the normal implementation workflow. Revisit this tree if the scope grows.
- **Yes:** Continue.

## 2. Is an existing pattern sufficient?

Can an established, well-understood project pattern meet the stated requirements without changing a boundary?

- **Yes:** Record why it applies, verify the boundary and quality attributes, then plan implementation.
- **No:** Create a system design using `../architecture/system-design-template.md`.

## 3. Is a durable decision required?

Does the choice introduce a platform, contract, ownership model, shared capability, or hard-to-reverse commitment?

- **Yes:** Create an ADR with `../architecture/adr-template.md`.
- **No:** Document the selected option and alternatives in the system design or work item.

## 4. Are risks designed explicitly?

Does the change affect security, availability, performance, scalability, cost, data consistency, or operations?

- **Yes:** Set a measurable target, define failure and degraded behavior, and consult the relevant architecture knowledge topic.
- **No:** State why the risk is not material.

## Outcome

Complete `../architecture/architecture-review-checklist.md` before approval. Use the data, integration, security, and release trees for the affected delivery concerns.
