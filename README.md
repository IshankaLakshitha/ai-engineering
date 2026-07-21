# AI Engineering Framework — v0.3.0

Reusable GitHub Copilot guidance for building maintainable .NET services. The framework gives agents a shared way to reason, plan, choose designs, and validate changes.

## v0.3.0 — Architecture Framework

Version 0.3 adds lightweight architecture governance: explicit system designs, documented decisions, clear boundaries, quality-attribute trade-offs, and an architecture review path. It complements the v0.1 foundation and v0.2 reasoning and decision trees.

## Use in a repository

Copy the `.github` directory into the target repository, then tailor `knowledge/project-conventions.md` to the project. Agents and instructions can refer to the architecture artifacts before introducing cross-cutting or structural changes.

## Layout

```text
.
├── .github/
│   ├── agents/           # Role definitions
│   ├── architecture/     # Designs, ADRs, boundaries, and quality attributes
│   ├── checklists/       # Completion and review gates
│   ├── decision-trees/   # Repeatable engineering decisions
│   ├── examples/         # Small implementation examples
│   ├── knowledge/        # Project and engineering guidance
│   ├── reasoning/        # Role-specific problem-solving workflows
│   └── templates/        # Reusable planning documents
├── CHANGELOG.md
└── ROADMAP.md
```

## Architecture workflow

For a material architecture change, create a system-design record, evaluate the relevant quality attributes, decide whether an ADR is needed, and complete the architecture checklist. Details and templates live in `.github/architecture/`.

## Status

The framework is source-controlled from this root. `CHANGELOG.md` records released capability, while `ROADMAP.md` distinguishes completed milestones from planned work.
