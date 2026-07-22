# Bug Fix Decision

## 1. Can the issue be reproduced or evidenced?

Do logs, traces, metrics, a failing test, a support case, or production data demonstrate the behavior?

- **No:** Gather minimally sufficient evidence. Do not change code based only on a suspected cause.
- **Yes:** Continue.

## 2. Is the expected behavior known?

Can a requirement, contract, invariant, or user outcome distinguish correct from incorrect behavior?

- **No:** Clarify with the accountable owner and record the decision before coding.
- **Yes:** Continue.

## 3. Is the root cause understood?

Does the evidence trace the failure to a specific defect, dependency behavior, data condition, or missing guard?

- **No:** Instrument, isolate, or reproduce further. Avoid speculative multi-change fixes.
- **Yes:** Continue.

## 4. Does the fix cross a boundary or change data?

- **Architecture, contract, data, security, or performance impact:** Use the matching tree before implementation.
- **Local implementation defect:** Implement the smallest correct fix.

## Outcome

Add a regression test at the level that caught the defect, validate the repaired behavior, and improve diagnostics or a runbook if recurrence would otherwise be difficult to detect.
