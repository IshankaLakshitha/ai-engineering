# Decision Trees

Decision trees turn common engineering choices into small, repeatable paths. They guide discovery and documentation; they do not replace repository evidence, project conventions, or accountable human decisions.

## How to use a tree

1. Start with the tree that best matches the proposed change.
2. Follow each question in order and gather evidence before selecting a branch.
3. Complete the action named by the outcome, including any required design, ADR, test, or rollout artifact.
4. Use additional trees when the change crosses concerns.

## Catalog

| Decision | Tree | Use it when |
| --- | --- | --- |
| Architecture | [Architecture change](architecture-change.md) | A change crosses a module, layer, data, or external-service boundary |
| API | [New endpoint](new-endpoint.md) | Adding an HTTP, RPC, or other delivery endpoint |
| API | [API contract change](api-contract-change.md) | Changing a public request, response, event, or error contract |
| Application | [New service](new-service.md) | Deciding where new business behavior belongs |
| Defect | [Bug fix](bug-fix.md) | Investigating and correcting incorrect behavior |
| Data | [Data change](data-change.md) | Changing schema, ownership, retention, or migration behavior |
| Integration | [External integration](external-integration.md) | Calling or subscribing to a third-party or separately owned system |
| Integration | [Synchronous or asynchronous](synchronous-or-asynchronous.md) | Selecting interaction style between components or services |
| Quality | [Performance change](performance-change.md) | Addressing latency, throughput, resource, or cost concerns |
| Quality | [Security review](security-review.md) | Changing trust boundaries, data exposure, privilege, or public access |
| Refactoring | [Refactor](refactor.md) | Improving structure without intended behavior change |
| Review | [Code review](code-review.md) | Reviewing a proposed implementation change before merge |
| Testing | [Test strategy](test-strategy.md) | Choosing the verification needed for a change |
| Release | [Release rollout](release-rollout.md) | Releasing a risky, stateful, or compatibility-sensitive change |

## Related framework material

- Read `../knowledge/project-conventions.md` before applying a general path to a specific project.
- Use `../architecture/` for material design changes, including system designs, ADRs, and architecture review.
- Use `../checklists/` as final delivery gates.
