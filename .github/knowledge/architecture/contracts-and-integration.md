# Contracts and Integration

## Contract ownership

The provider owns the meaning, lifecycle, compatibility policy, and documentation of a public contract. Consumers may depend on the published contract, but never on provider internals or incidental behavior.

## Every contract should specify

- Purpose, owner, audience, authentication and authorization requirements.
- Request or event schema, required and optional fields, validation, and data classification.
- Response, error, and retry semantics, including whether an operation is idempotent.
- Ordering, delivery guarantee, pagination, rate limits, timeout, and consistency expectations where relevant.
- Versioning, deprecation, and compatibility policy.

## Choose interaction style from the need

| Need | Usually prefer | Key responsibility |
| --- | --- | --- |
| Immediate user response or strongly consistent decision | Synchronous request | Bound latency, timeout, and failure response |
| Independent downstream work or burst absorption | Asynchronous message | Idempotent consumer, observable delivery, recovery path |
| Consumer needs a stable subset of provider data | Query API or published read model | Freshness and authorization semantics |
| Workflow spans multiple autonomous owners | Explicit orchestration or choreography | Clear state, compensations, and operational ownership |

## Compatibility

Add optional fields and tolerant readers before removing or changing existing behavior. Run old and new producers or consumers together during a transition when needed. Schema version labels alone do not create safety: validate with representative clients and monitor errors after release.

## Integration safeguards

- Set a timeout and propagate cancellation for every remote call.
- Retry only failures likely to succeed and only when the operation is idempotent or protected by an idempotency key.
- Treat duplicate, late, and out-of-order events as normal possibilities unless the transport proves otherwise.
- Record a correlation or trace identifier across boundaries without placing secrets or unnecessary PII in logs.
