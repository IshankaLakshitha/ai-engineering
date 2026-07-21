# Synchronous or Asynchronous Decision

## 1. Is an immediate answer required?

Must the initiating user or caller receive a completed, authoritative result before proceeding?

- **Yes:** Prefer a synchronous request, with an explicit latency budget, timeout, and failure response.
- **No:** Continue.

## 2. Is the work independently recoverable?

Can the work complete later without holding the caller open, and can the consumer process duplicates safely?

- **Yes:** Prefer asynchronous messaging, with idempotency, delivery observability, and recovery procedures.
- **No:** Continue.

## 3. Does a workflow span multiple owners?

Does it require long-running coordination, compensation, or a visible intermediate state?

- **Yes:** Model the workflow explicitly. Name the state owner, progress contract, compensations, timeout, and operational owner.
- **No:** Keep the interaction within the smallest appropriate boundary.

## 4. Are guarantees explicit?

- State ordering, duplicate, loss, timeout, and consistency expectations.
- Do not promise exactly-once delivery unless the full path can uphold it and the cost is justified.
- Use an outbox or equivalent recovery mechanism when a committed state change must produce an event reliably.

## Outcome

Choose the style that fits the required user outcome and recovery model, not the technology trend. Use `external-integration.md` for a separately owned dependency.
