# Security and Trust

## Start with the trust boundary

Identify the actors, assets, entry points, data flows, and privilege transitions in the proposed design. Consider what can be spoofed, altered, disclosed, denied, or abused before selecting controls.

## Identity and authorization

- Authenticate users and workloads using an appropriate managed identity or trusted identity provider.
- Authorize each action at the boundary that owns the protected resource; authentication alone is not authorization.
- Apply least privilege to people, services, databases, queues, and deployment credentials.
- Do not rely on a client-supplied role, tenant, or ownership value without validating it against trusted context.

## Data and secrets

- Classify data and minimize collection, retention, replication, and log exposure.
- Encrypt data in transit and at rest according to the risk and platform capabilities.
- Retrieve secrets from an approved secret store; never commit, log, or embed them in application code or build output.
- Rotate credentials and keys without requiring an emergency redeploy where possible.

## Input and supply-chain defense

Validate input at the external boundary, parameterize data access, encode output for its context, and limit request size and rate. Keep dependencies patched, pin or verify build inputs where required, and grant CI/CD only the permissions it needs.

## Evidence and review

Record relevant security decisions, residual risks, and owners. Trigger a dedicated threat-model or security review when a change adds a trust boundary, sensitive data class, elevated privilege, public endpoint, or new third-party integration.
