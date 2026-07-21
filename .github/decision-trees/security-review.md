# Security Review Decision

## 1. Does the change affect a trust boundary or sensitive asset?

Does it add a public endpoint, external integration, privilege, identity flow, sensitive-data class, secret, executable input, or administrative capability?

- **No:** Apply baseline secure-coding practices and continue.
- **Yes:** Continue.

## 2. Is a focused threat assessment needed?

Could spoofing, tampering, disclosure, denial of service, privilege escalation, or supply-chain compromise materially affect the change?

- **Yes:** Identify actors, assets, entry points, data flows, controls, residual risks, and owners before implementation.
- **No:** Record why the risk is not material.

## 3. Are boundary controls complete?

- Authenticate users and workloads through trusted identity mechanisms.
- Authorize the action against the owned resource using least privilege.
- Validate and limit input; parameterize data access and encode output in its context.
- Protect secrets and classified data in storage, transit, diagnostics, and delivery pipelines.

## 4. Is assurance proportionate?

Do code review, tests, dependency and configuration checks, penetration testing, or specialist review match the risk?

- **No:** Add the missing verification or escalate for risk acceptance.
- **Yes:** Continue.

## Outcome

Record material security decisions and residual risks. Use `architecture-change.md` for enduring trust-boundary or platform changes.
