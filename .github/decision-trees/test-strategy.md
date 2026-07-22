# Test Strategy Decision

## 1. What could fail if this change is wrong?

Identify the business rule, contract, state transition, failure mode, security control, performance target, or migration behavior at risk.

## 2. What is the smallest test that proves it?

- **Pure business rule or invariant:** Unit test at the domain or application boundary.
- **Adapter, database, queue, file, or external protocol behavior:** Integration test against a realistic dependency or contract fixture.
- **Public endpoint or workflow:** Exercise the boundary with end-to-end or component-level tests.
- **Cross-owner contract:** Add provider and consumer contract coverage where practical.
- **Capacity, resilience, or security property:** Use targeted load, failure, or security verification.

## 3. Is a regression or compatibility test required?

Did the change fix a defect, alter a public contract, migrate data, or change a security boundary?

- **Yes:** Add a test that would have detected the previous failure or incompatibility.
- **No:** Continue with proportionate coverage.

## 4. Is the test trustworthy?

Does it assert an observable outcome, run reliably, use representative inputs, and avoid implementation-detail coupling?

- **No:** Improve the test design before relying on it as a gate.
- **Yes:** Continue.

## Outcome

Run the fastest relevant tests during development and the broader suite before delivery. Document any intentional coverage gap with its risk and owner.
