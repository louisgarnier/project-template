# Architecture Decision Records (ADR)

## TL;DR
- Log every significant technical decision here (if wrong = 2+ hours to undo)
- Check this BEFORE making architectural changes — don't contradict past decisions
- Never delete/modify entries — append only
- To override a past decision: add a new ADR referencing the old one

---

## ADR Index
| ID | Title | Status | Date | Epic |
|---|---|---|---|---|
| ADR-001 | [Decision title] | Accepted / Superseded | [DATE] | EPIC-X |
| ADR-002 | | | | |

---

## ADR Template
> Copy this block for each new decision. One ADR per significant choice.
> What counts as "significant"? If getting it wrong would cost more than 2 hours to undo — write an ADR.

---

### ADR-001: [Decision Title]
**Date:** [DATE]
**Epic / Story:** EPIC-X / Story X.Y
**Status:** `Proposed` → `Accepted` → `Superseded by ADR-XXX`
**Decided by:** [Human / AI / Both]

#### Context
> What situation forced this decision? What constraints existed?
> What was the problem we were trying to solve?

[Describe the context in 2-4 sentences. Be specific about constraints — time, skill, budget, compatibility.]

#### Decision
> What was decided? State it clearly and unambiguously.

**We will [do X] using [approach Y].**

#### Alternatives Considered
| Option | Pros | Cons | Reason Rejected |
|---|---|---|---|
| [Option A — chosen] | [pros] | [cons] | *Chosen* |
| [Option B] | [pros] | [cons] | [Why rejected] |
| [Option C] | [pros] | [cons] | [Why rejected] |

#### Consequences
**Positive:**
- [What this decision enables or improves]

**Negative / Trade-offs:**
- [What this decision constrains or makes harder]
- [Technical debt introduced, if any]

**What this decision affects:**
- Files: `src/[file]`
- Modules: [which modules are shaped by this choice]
- Future stories: [which upcoming stories are impacted]

#### Review Triggers
> Under what conditions should this decision be revisited?
- [ ] If [condition, e.g. data volume exceeds X]
- [ ] If [condition, e.g. we add a second deployment environment]

---

### ADR-002: [Decision Title]
*(copy template above)*

---
---

## 📌 Superseded Decisions
> ADRs that have been overridden. Kept for historical reference — never deleted.
> When superseding an ADR, update its Status field above and add an entry here.

| Superseded ADR | Superseded By | Date | Reason |
|---|---|---|---|
| ADR-XXX: [title] | ADR-YYY | [DATE] | [Why the original decision was reversed] |
