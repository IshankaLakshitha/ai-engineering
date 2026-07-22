# System Design

## Purpose

A system design explains how a proposed change satisfies a problem and its constraints. It is a decision aid, not an implementation diary or a collection of technology names.

## Start with evidence

Before drawing the future state, establish the current state:

- Locate the owning modules, public contracts, data stores, integrations, and deployment boundaries.
- Read recent incidents, metrics, traces, support feedback, and operating costs when they bear on the problem.
- Separate confirmed facts from estimates, assumptions, and open questions.
- State success criteria in outcomes a user or operator can observe.

## Define the right scope

A design should state what it changes and what it deliberately leaves unchanged. Use a short record for a local boundary change; use the full `../../architecture/system-design-template.md` when the change crosses major boundaries, introduces a platform, or has non-functional risk.

## Describe behavior, not just components

For each critical flow, describe:

1. The initiating actor or event.
2. The owning component and the contract it receives.
3. State changes, side effects, and external calls.
4. Expected response or completion behavior.
5. Failure, retry, timeout, and recovery behavior.
6. The telemetry used to confirm the flow is healthy.

## Use diagrams sparingly and precisely

Choose a diagram only when it clarifies a relationship that prose cannot. Label component owners, protocol or event names, data stores, trust boundaries, and sync or async behavior. Do not use a diagram as the only definition of an interface or failure mode.

## Design completion test

A delivery team should be able to implement the design without guessing who owns each component, which contracts change, why the selected option wins, or how to release and recover the change.
