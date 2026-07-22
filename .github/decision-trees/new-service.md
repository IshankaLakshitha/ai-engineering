# New Service Decision

## 1. Is there business behavior to own?

Does the change enforce a business rule, coordinate a use case, or protect a domain invariant?

- **No:** Use the smallest existing construct: query, mapper, validator, middleware, adapter, or extension. Do not create a service by default.
- **Yes:** Continue.

## 2. Does an existing owner already fit?

Can the current application service, domain type, or module own the behavior without becoming incoherent?

- **Yes:** Extend that owner and preserve its public contract.
- **No:** Continue.

## 3. Is a new application service or module justified?

Does the behavior form a cohesive use case with clear inputs, outputs, dependencies, and ownership?

- **Yes:** Create an application service or handler behind an explicit interface or use-case boundary.
- **No:** Refine the responsibility; broad utility services and generic managers are not valid owners.

## 4. Does it cross a boundary?

Will it add a dependency, own data, communicate with another module, or establish a reusable pattern?

- **Yes:** Use `architecture-change.md` before implementation.
- **No:** Implement with the existing application and domain boundaries.

## Outcome

Keep controllers, message consumers, and repositories thin. Place business rules with the smallest cohesive owner and test the behavior at that boundary.
