# New Endpoint Decision

## 1. Is a delivery endpoint needed?

Can an existing endpoint or contract safely serve the use case?

- **Yes:** Use or extend it only if the change remains compatible. Continue with `api-contract-change.md`.
- **No:** Define a new endpoint.

## 2. Is the contract clear?

Have the caller, resource or command, request and response shape, errors, pagination, idempotency, and compatibility policy been defined?

- **No:** Define the contract before implementation; do not expose persistence models directly.
- **Yes:** Continue.

## 3. Does it require a new application use case?

Does the behavior contain business rules, coordinate multiple components, or change state?

- **Yes:** Place the behavior behind an application service or handler. Use `new-service.md` if ownership is unclear.
- **No:** Keep the endpoint thin and delegate to the existing use case or query path.

## 4. Are boundary concerns complete?

- Validate input and return client-safe errors.
- Authenticate and authorize against the protected resource or action.
- Set cancellation and timeout behavior for downstream work.
- Add structured logs, metrics, traces, and an appropriate rate or size limit.
- Test the success, validation, authorization, error, and compatibility paths.

## Outcome

Implement the smallest compatible endpoint. Use `security-review.md`, `test-strategy.md`, and `release-rollout.md` when their triggers apply.
