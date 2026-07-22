# Decisions and Trade-offs

## Make the decision explicit

Architecture is the set of hard-to-change choices that shape future delivery. Describe the problem, constraints, options, and consequences before selecting a solution. Use `../../architecture/adr-template.md` when the choice is consequential, difficult to reverse, creates a precedent, or needs durable context.

## Compare alternatives fairly

Evaluate each viable option against the attributes that matter now. Include implementation and operating cost, migration risk, vendor dependence, security, team familiarity, and reversibility. Do not dismiss an alternative without a reason tied to a stated constraint.

## Prefer reversible decisions

Use a time-boxed experiment, adapter, or narrow interface when uncertainty is high and the cost of reversal is low. Do not delay a decision that blocks delivery merely because perfect information is unavailable; document the assumption, owner, and review trigger.

## Risk acceptance

Separate a design risk from an accepted business trade-off. A risk record should name the likelihood, impact, mitigation, residual risk, accountable owner, and review date. Only the accountable stakeholder can accept a material product, compliance, security, or availability risk.

## Keep decisions alive

Mark an ADR as accepted, deprecated, or superseded as reality changes. Revisit it when assumptions, scale, cost, incidents, ownership, or platform capabilities materially change. Old decisions are useful context, not permanent authority.
