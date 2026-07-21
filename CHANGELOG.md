# Changelog

All notable changes to this framework are documented here. Versions use semantic versioning.

## [0.3.0] - Unreleased

### Added

- Architecture framework with system-design, architecture-decision-record, and quality-attribute templates.
- Architecture Knowledge Library covering system design, boundaries, contracts, data, resilience, security, operations, performance, evolution, decisions, and reviews.
- Boundary rules, architecture principles, and an architecture-review checklist.
- Complete architect agent with engagement criteria, authority, inputs, design standards, expected outputs, handoffs, and escalation rules.
- Architecture-change decision tree.
- Project-level documentation and Git hygiene for a commit-ready repository.

### Changed

- Flattened the repository so `.github` and release documentation are at the repository root.
- Updated Copilot guidance and architect reasoning to use the new architecture artifacts.

## [0.2.0]

### Added

- A reasoning layer that separates how agents solve problems from their role definitions and domain knowledge.
- Common engineering workflow covering request understanding, repository discovery, risk assessment, implementation, validation, and self-review.
- Architect workflow for evaluating alternatives, trade-offs, and design decisions.
- Developer workflow for finding existing patterns, identifying affected layers, and implementing the smallest correct change.
- Planner workflow for milestones, dependencies, risks, acceptance criteria, and ordered work.
- Debugger workflow for reproduction, evidence collection, root-cause analysis, minimal fixes, and regression prevention.
- Reviewer workflow prioritizing correctness, architecture, security, performance, maintainability, tests, and documentation.
- Decision trees for adding endpoints, deciding whether to create a service, and deciding when to refactor.

### Changed

- Established a repeatable decision-making path before implementation, rather than relying on role instructions alone.

## [0.1.0]

### Added

- Core Copilot instructions defining the engineering principles and the baseline delivery workflow.
- Developer agent focused on maintainable implementation, validation, logging, tests, and safe refactoring.
- Planner agent focused on goals, assumptions, affected files, risks, tasks, and validation.
- Engineering knowledge covering SOLID, DRY, KISS, YAGNI, asynchronous programming, C# coding standards, and clean architecture.
- Project-conventions guide for repository-specific folder structure, logging, middleware, dependency injection, API conventions, and testing.
- Endpoint and feature checklists for common delivery quality gates.
- Controller and service examples that reinforce thin delivery layers and business-logic ownership.
- Feature-plan template for concise, repeatable implementation planning.
