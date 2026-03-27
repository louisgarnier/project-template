# 🔒 Blind Test Scenarios
> **SEALED DURING DEVELOPMENT**
> This file is written at PRD stage and NOT touched until dev is complete.
> The AI is explicitly forbidden from reading this file during development (see `CLAUDE.md`).
> These scenarios test robustness — the code must handle them without having been designed for them.
> Run these ONLY after `docs/5-BUILD.md` Definition of Done checklist is fully checked.

---

## How to Run Blind Scenarios
1. Confirm `docs/5-BUILD.md` DoD checklist is complete
2. Read each scenario below cold — do not pre-test
3. Run each scenario manually or via the automated runner
4. Record results in the Results table at the bottom
5. Any FAIL is a real bug — fix it and re-run all scenarios

---

## 📝 Scenario Authorship
These scenarios were written by:
- [ ] **Human** (at PRD stage) — Louis
- [ ] **AI pass** (Claude, after PRD was locked, before dev started)

---

## ══════════════════════════════════
## HUMAN-WRITTEN SCENARIOS
## Written by: Louis | Date: [fill at writing time]
## ══════════════════════════════════

### H-SCN-01: [Scenario Name]
**Category:** [Edge Case / Error Handling / Performance / Security / Data Quality]
**Trigger:** [What action or input initiates this scenario]
**Setup:** [Any data or state needed]
**Steps:**
1.
2.
3.
**Expected Result:** [What SHOULD happen]
**Why it's interesting:** [Why you think this might break things]

---

### H-SCN-02: [Scenario Name]
**Category:**
**Trigger:**
**Setup:**
**Steps:**
1.
**Expected Result:**
**Why it's interesting:**

---

### H-SCN-03: Empty / Null Inputs
**Category:** Data Quality
**Trigger:** Provide empty input where data is expected
**Setup:** [empty file / blank form / null API response]
**Steps:**
1. Run the main workflow with an empty/null input
**Expected Result:** System fails gracefully with a clear error message — no crash, no silent skip
**Why it's interesting:** Most pipelines/apps are only tested with valid data

---

### H-SCN-04: Duplicate Data
**Category:** Data Quality
**Trigger:** Provide input with duplicate records/rows/events
**Steps:**
1. Feed data that contains exact duplicate entries
2. Run the pipeline/process
**Expected Result:** Duplicates are either rejected, deduplicated, or flagged — not silently doubled
**Why it's interesting:** Duplicates cause silent calculation errors (double-counting, inflated aggregates)

---

### H-SCN-05: [Add your own based on your project's domain]
**Category:**
**Trigger:**
**Expected Result:**

---

## ══════════════════════════════════
## AI-GENERATED SCENARIOS
## Written by: Claude (prompted after PRD lock) | Date: [fill at writing time]
## Prompt used: "Given this PRD, write 5 blind test scenarios that probe edge cases
##               the developer might not have thought about. Focus on failure modes,
##               boundary conditions, and unexpected inputs."
## ══════════════════════════════════

### A-SCN-01: [AI writes this at PRD stage]
**Category:**
**Trigger:**
**Setup:**
**Steps:**
1.
**Expected Result:**
**Reasoning:** [Why Claude thinks this is a risk]

---

### A-SCN-02:
*(AI fills these in)*

---

### A-SCN-03:

---

### A-SCN-04:

---

### A-SCN-05:

---

## 📊 Results Log
> *Fill this in AFTER development is complete and you run the scenarios.*

| Scenario | Date Run | Result | Notes | Fixed? |
|---|---|---|---|---|
| H-SCN-01 | | ✅ PASS / ❌ FAIL | | |
| H-SCN-02 | | | | |
| H-SCN-03 | | | | |
| H-SCN-04 | | | | |
| H-SCN-05 | | | | |
| A-SCN-01 | | | | |
| A-SCN-02 | | | | |
| A-SCN-03 | | | | |
| A-SCN-04 | | | | |
| A-SCN-05 | | | | |

---

## 🏁 Blind Test Sign-Off
```
All scenarios passed:    [ ] Yes  [ ] No — [N] failures remaining
Sign-off date:
Notes:
```
