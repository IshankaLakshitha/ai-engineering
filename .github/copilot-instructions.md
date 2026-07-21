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

## Workflow

Understand -> Search -> Plan -> Assess architecture -> Implement -> Self review -> Test -> Document
