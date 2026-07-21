# Dependency Boundaries

## Layers

| Layer | Owns | May depend on |
| --- | --- | --- |
| Domain | Business rules, entities, value objects, domain events | Nothing outside the domain |
| Application | Use cases, ports, orchestration, validation | Domain |
| Delivery | HTTP endpoints, message consumers, request mapping | Application |
| Infrastructure | Persistence, external clients, queues, file systems | Application and Domain contracts |
| Composition root | Dependency injection and host configuration | All layers |

## Rules

- Delivery code is thin: it translates protocols and delegates to application use cases.
- Infrastructure implements ports defined by the application or domain; it does not own business rules.
- Domain code must not reference framework, transport, persistence, or vendor-specific types.
- Cross-module access occurs through a stable contract, not another module's persistence model or internals.
- DTOs do not cross into the domain unchanged; map them at the delivery or application boundary.
- Every external call has an explicit timeout, cancellation behavior, and failure strategy.

## Exceptions

An exception needs a documented rationale, scope, owner, and removal or review date. Record enduring exceptions as an ADR.
