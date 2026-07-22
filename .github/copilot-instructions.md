# Copilot Instructions

## Core Principles
1. Search existing code before creating new code.
2. Reuse patterns before inventing new ones.
3. Prefer readability over cleverness.
4. State assumptions and clarify materially ambiguous requirements.
5. Follow SOLID, DRY, KISS, and YAGNI.
6. Use modern C# features where appropriate.
7. Never silently ignore errors.
8. Include tests when changing behavior.
9. Protect secrets and PII; use structured, useful observability.
10. Keep business rules independent from HTTP, persistence, and vendor SDKs.

## Architecture

For changes that cross layers, modules, data boundaries, or external integrations, consult `.github/architecture/`. Document consequential or hard-to-reverse choices with an ADR, and apply the architecture review checklist before approval.

## Decision Support

Consult the relevant tree in `.github/decision-trees/` before implementing a material API, data, integration, defect, security, performance, testing, refactoring, or release change. Complete any artifacts and validation named by its outcome.

## Delivery Quality

For a behavior change, use the Tester Agent and `.github/knowledge/testing/` to select proportionate evidence. Before merge, use the Reviewer Agent and pull-request checklist. Before release, complete the release-readiness and production-readiness checks, then preserve the resulting evidence with the change.

## Workflow

Understand -> Search -> Plan -> Assess architecture -> Implement -> Self review -> Test -> Document
