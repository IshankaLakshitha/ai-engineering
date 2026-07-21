# Boundaries and Modularity

## Goal

Boundaries contain change. A module should own a coherent business capability, its rules, and the data it is responsible for. It should expose a deliberate contract rather than let other modules reach through its internals.

## Establish ownership

For each capability, name:

- The business responsibility and the team or service that owns it.
- The authoritative state and how other consumers obtain it.
- The public commands, queries, events, or APIs it supports.
- The invariants that must remain true and where they are enforced.

Avoid ownership split by technical layer alone. A module that owns an entity but another module owns its validation, writes, and lifecycle is not a real boundary.

## Dependency direction

Follow `../../architecture/boundaries.md`: business rules remain independent, application code owns use cases and ports, and delivery or infrastructure code adapts external concerns. A dependency is suspicious when an inner layer references a transport DTO, ORM model, cloud SDK, or host framework type.

## Communicate through contracts

- Use a module's application-facing API, published event, or explicit read model.
- Do not share database tables or access another module's persistence context directly.
- Keep shared libraries small and stable; share contracts or primitives, not feature-specific business behavior.
- Prefer explicit translation at boundaries over a universal domain model that couples unrelated contexts.

## Boundary warning signs

- A change in one module routinely requires edits across unrelated modules.
- A controller or repository contains business rules because no application owner exists.
- Many consumers read or write another module's private tables.
- An abstraction has broad names such as `CommonService` but no clear owner or cohesive responsibility.

When a transition needs an exception, document the scope, owner, and removal or review date as required by `../../architecture/boundaries.md`.
