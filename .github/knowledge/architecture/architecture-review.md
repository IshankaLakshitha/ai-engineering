# Architecture Review

## Purpose

An architecture review tests whether the proposed design is understandable, proportionate, and safe to deliver. It is not a forum to reward complexity or relitigate settled product priorities.

## Before the review

- Share the problem statement, system design, relevant ADRs, and the specific decision required.
- Include evidence about the current state and quality-attribute targets.
- Invite the owners of affected modules, operations, security, data, and consuming contracts when relevant.
- Ask reviewers to read the material before the meeting; use meeting time for decisions and unresolved trade-offs.

## Review sequence

1. Confirm scope, non-goals, assumptions, and success criteria.
2. Walk the critical behavior and failure paths across ownership and trust boundaries.
3. Test the proposal against quality attributes, security, operability, compatibility, and cost.
4. Compare viable alternatives and verify the selected option is proportionate.
5. Confirm delivery slices, migration, rollout, rollback, validation, and decision owners.
6. Record the decision, actions, risks, and follow-up dates.

## Good review questions

- What evidence makes this the smallest design that meets the need?
- Which component owns the state and invariant at each boundary?
- What happens when the slowest or least reliable dependency fails?
- How will we detect user impact and recover without data loss or unsafe replay?
- Which assumptions would invalidate this design, and when will we revisit them?

Complete `../../architecture/architecture-review-checklist.md` as the acceptance record for a material change.
