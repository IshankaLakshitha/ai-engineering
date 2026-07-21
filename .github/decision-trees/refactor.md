# Refactoring Decision

## 1. Is the observed behavior incorrect?

- **Yes:** Use `bug-fix.md`; behavior changes need a defect analysis and regression test.
- **No:** Continue.

## 2. Is the change behavior-preserving?

Will any public contract, data shape, performance characteristic, security posture, or operational behavior change?

- **Yes:** It is not a pure refactor. Use the relevant API, data, architecture, performance, or security tree.
- **No:** Continue.

## 3. Is the safety net adequate?

Do targeted tests, characterization tests, or observable production behavior prove the current behavior well enough to detect a regression?

- **No:** Add the smallest effective safety net before restructuring.
- **Yes:** Continue.

## 4. Is the refactor proportionate?

Can it be delivered in small reviewable steps without mixing unrelated changes?

- **Yes:** Refactor now, keeping commits and reviews focused.
- **No:** Create a technical-debt item with the risk, desired outcome, owner, and a proposed incremental plan.

## Outcome

Validate that observable behavior is unchanged. Do not conceal feature work, dependency upgrades, or architecture changes inside a refactor.
