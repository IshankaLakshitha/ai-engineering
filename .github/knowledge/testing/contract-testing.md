# Contract Testing

## Purpose

Verify that a provider and its consumers agree on the observable behavior of an API, event, or other public boundary.

## When to use

Use when independently deployed components rely on request, response, event, error, authentication, or compatibility semantics.

## When not to use

Do not use contract tests for private calls that change and deploy together. Do not assume a contract test proves production availability, data migration, or end-to-end workflow behavior.

## Benefits and trade-offs

Contract tests detect incompatible changes before deployment and make ownership explicit. They need disciplined contract ownership, representative examples, and version lifecycle management.

## Practices

- Name the provider, consumers, owner, and compatibility policy.
- Cover successful, validation, authorization, error, and optional-field behavior relevant to consumers.
- Make schemas and examples tolerant where compatibility requires it.
- Run provider verification before publishing a breaking change.
- Pair contract coverage with integration tests when the adapter or serialization technology is a risk.

## Example

A provider verifies that an existing `status` field and error code remain available while it adds an optional `reason` field. Consumers verify they tolerate the extra field.

## Common mistakes

- Testing an internal DTO rather than the published wire contract.
- Forgetting error and authorization behavior.
- Keeping obsolete consumer expectations after a documented deprecation period.

## Related documents

- `../../decision-trees/api-contract-change.md`
- `../../knowledge/architecture/contracts-and-integration.md`
- [Integration testing](integration-testing.md)
