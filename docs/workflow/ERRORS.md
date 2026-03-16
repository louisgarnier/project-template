# Known Errors & Investigation Methodology

## TL;DR
1. **Check the Error Registry below** — has this been solved before?
2. **Simplify before complexifying** — minimal fix first, test, then add complexity
3. **Compare with existing code** — copy working patterns, don't invent new ones
4. **Test after every change** — one change at a time, verify each
5. **If stuck** — STOP, restore to working state, restart simpler
6. **After fixing** — add an entry to the Error Registry immediately

---

## � Investigation Methodology

> **Read this BEFORE attempting to fix ANY error.**

### Fundamental Principles

#### 1. Simplify BEFORE Complexifying
- ❌ **BAD:** Add complex solutions (forward references, `model_rebuild()`, advanced patterns)
- ✅ **GOOD:** Create a minimal working version first, then add features progressively

#### 2. Compare With Existing Code
- ❌ **BAD:** Create new code without looking at how it's done elsewhere in the codebase
- ✅ **GOOD:** Find similar examples in the codebase, copy the working pattern exactly

#### 3. Test Progressively
- ❌ **BAD:** Create everything at once, test only at the end
- ✅ **GOOD:** Create one thing at a time, test after each addition

#### 4. Isolate the Problem
- ❌ **BAD:** Modify several things at the same time
- ✅ **GOOD:** Test if the problem existed before your changes, verify each hypothesis one by one

#### 5. Don't Break the Application
- ❌ **BAD:** Keep modifying even if the app no longer works
- ✅ **GOOD:** Restore immediately if the app is broken, restart with a simpler approach

### Systematic Investigation Process

1. **Understand the Error** — Read the complete error (not just the type), identify where it occurs
2. **Check Error Registry** — Has this been solved before? Check below.
3. **Isolate the Problem** — Test if it existed before your changes, create a minimal reproduction
4. **Compare With Existing Code** — Find similar working examples in the codebase
5. **Simplify** — Remove all non-essential features, create a minimal working version
6. **Test at Each Step** — Test after every modification, don't accumulate untested changes
7. **If Stuck (Going in Circles)** — STOP immediately, restore to working state, restart simpler

### Checklist Before Modifying Code
- [ ] I've read the existing code to understand the pattern
- [ ] I've found similar examples in the codebase
- [ ] I will create a minimal version first
- [ ] I will test after each modification
- [ ] I know how to restore if it breaks (`git checkout <file>`)
- [ ] I will NOT add unnecessary complexity

---

## Error Registry

## Error Index
| ID | Category | Short Description | Status | First Seen | Epic |
|---|---|---|---|---|---|
| ERR-001 | [Category] | [One-line description] | Resolved / Recurring / Open | [DATE] | EPIC-X |

---

## Error Categories
- **DATA** — ingestion, parsing, schema, quality issues
- **CONFIG** — missing env vars, bad config values, environment mismatch
- **INTEGRATION** — API failures, DB connection errors, external service issues
- **LOGIC** — incorrect calculations, wrong business logic, edge cases
- **PERFORMANCE** — timeouts, memory issues, slow queries
- **DEPENDENCY** — package conflicts, version mismatches, import errors
- **INFRA** — deployment, environment, path, permissions issues
- **UI** — frontend rendering, state management, API contract mismatches

---

## Error Entries

---

### ERR-001: [Short Title]
**Category:** [DATA / CONFIG / INTEGRATION / LOGIC / PERFORMANCE / DEPENDENCY / INFRA / UI]
**Status:** `Open` → `Resolved` → `Recurring`
**First seen:** [DATE] — EPIC-X / Story X.Y
**Last seen:** [DATE] — EPIC-X / Story X.Y

#### Symptoms
> What did the failure look like? What error message, log line, or behaviour was observed?

```
[Paste the exact error message, stack trace, or log line here]
```

**Observable behaviour:** [What the user/system experienced — e.g. "pipeline silently produced 0 rows"]

#### Root Cause
> What actually caused this? Be precise — "it broke" is not a root cause.

[Explain the root cause clearly. E.g. "CSV reader treated empty strings as NaN by default,
causing the schema validator to reject rows that were actually valid."]

**Why it wasn't caught earlier:**
[e.g. "Test data never included empty string fields — only None/null values were tested"]

#### Fix Applied
**Date fixed:** [DATE]
**Story:** EPIC-X / Story X.Y
**Commit:** `[hash]`

```python
# Before (broken)
[code snippet if relevant]

# After (fixed)
[code snippet if relevant]
```

**Files changed:**
- `src/[file]` — [what was changed]

#### Prevention Rule
> The standing rule the AI must follow to never reproduce this error.
> This gets enforced in `.windsurfrules` if it's a recurring pattern.

> 🔒 **RULE ERR-001:** [Write the rule as a clear instruction]
> *Example: "Always explicitly set `keep_default_na=False` when calling `pd.read_csv()` on user-supplied files."*

#### Test Added
- [ ] Regression test added: `tests/dev/test_[module].py::test_[name]`
- [ ] Test covers: [what the test validates to prevent recurrence]

---

### ERR-002: [Short Title]
*(copy template above)*

---
---

## 🔒 Prevention Rules Summary
> Consolidated list of all ERR-derived rules.
> The AI checks this list before writing code in affected areas.
> High-severity rules are also added to `.windsurfrules`.

| Rule ID | Applies To | Rule |
|---|---|---|
| ERR-001 | `src/[module]` | [The rule, written as a clear do/don't instruction] |
| ERR-002 | | |

---

## 📊 Error Patterns
> Fill this in as errors accumulate. Helps identify systemic weaknesses.
> Updated manually when 3+ errors share a root cause category.

| Pattern | Count | Root Cause Theme | Systemic Fix |
|---|---|---|---|
| [e.g. Silent data drops] | [3] | [Missing schema validation at ingestion] | [Add validation step to every pipeline entry point] |
