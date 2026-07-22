# Data Change Decision

## 1. Does this change authoritative data or its ownership?

Will it add, remove, rename, reclassify, relocate, or change the writer of persisted business data?

- **No:** Apply the normal implementation workflow.
- **Yes:** Continue.

## 2. Is the owning boundary clear?

Does one module or service own writes, invariants, lifecycle, access policy, and the published representation of the data?

- **No:** Use `architecture-change.md` to establish ownership before altering storage.
- **Yes:** Continue.

## 3. Is the migration compatible and recoverable?

Can the schema and application tolerate both old and new forms while data is migrated or backfilled?

- **Yes:** Use additive change, backfill, verify, then retire the old form.
- **No:** Plan coordinated downtime, a compatibility adapter, or a forward-repair procedure; do not deploy an unsafe destructive change.

## 4. Are data risks addressed?

- Classify data and confirm access, encryption, retention, deletion, and audit needs.
- Define validation, volume, locking, performance, and rollback or repair behavior.
- Decide how events, read models, backups, and downstream consumers remain consistent.

## Outcome

Document the migration, test it with representative data, monitor it during rollout, and use `release-rollout.md` for activation and recovery.
