# External Integration Decision

## 1. Is an external dependency necessary?

Can an existing internal capability, approved integration, or simpler workflow satisfy the need?

- **Yes:** Reuse it and avoid creating a parallel integration.
- **No:** Continue.

## 2. Is the provider suitable?

Have ownership, support model, service limits, data handling, security posture, cost, availability, contract stability, and exit strategy been evaluated?

- **No:** Gather this evidence or escalate the vendor decision.
- **Yes:** Continue.

## 3. Is interaction style selected deliberately?

Use `synchronous-or-asynchronous.md` to choose request/response, event, batch, or workflow behavior.

## 4. Is the integration isolated and resilient?

- Put vendor-specific types and behavior behind an adapter owned by the consuming module.
- Define timeout, cancellation, retry, idempotency, rate, and degraded behavior.
- Protect secrets, validate responses, and avoid logging sensitive payloads.
- Add metrics, traces, alerting, and a recovery owner.

## Outcome

Create a system design and ADR when the integration is material, durable, or hard to replace. Test success, slow, failed, duplicate, and malformed-response paths.
