# Data and State

## Data ownership

One module or service is authoritative for each business fact. Other modules receive data through a contract, replicated read model, or event; they do not modify the source of truth indirectly.

## Model consistency deliberately

- Keep invariants that must be atomic inside one transactional boundary where possible.
- When a workflow spans boundaries, name the consistency model and user-visible behavior while work is incomplete.
- Use outbox-style publication or equivalent recovery mechanisms when a state change must reliably produce an integration event.
- Design consumers to be idempotent; delivery may be duplicated even when a broker is reliable.
- Do not promise exactly-once end-to-end behavior unless the full path and cost justify it.

## Data lifecycle

Define the classification, retention period, residency, encryption needs, access rules, audit requirements, and deletion path for sensitive or regulated data. Minimize data copied across boundaries and avoid logging secrets, credentials, access tokens, or unnecessary PII.

## Schema evolution

Use additive changes first, backfill explicitly, and deploy code that tolerates both old and new forms during transition. Separate large or locking migrations from request-path deployments. A migration plan needs validation, monitoring, rollback or forward-repair strategy, and ownership.

## Data design questions

- Which component writes this fact and who reads it?
- Which invariants must be preserved together?
- What is the expected volume, access pattern, retention, and deletion behavior?
- How is stale, missing, duplicate, or corrupt data detected and repaired?
