# 🧠 Stage 1 — Brainstorm & Idea Analysis
> **Output →** `docs/project/config/brainstorm.md`
> **Instructions:** Fill this out BEFORE writing any requirements.
> Goal: validate the idea is worth building before investing time.
> Status: `[ ] Draft` → `[ ] Validated` → `[ ] Approved → Proceed to PRD`

---

## 0. Freeform Input
> *Start here with completely unstructured thoughts. Write anything - bullet points, paragraphs, random ideas.*
> *This section gets rephrased into the structured sections below.*

```
[Add your raw thoughts, requirements, ideas here in any format]

Examples:
- Users need to login somehow
- Store data in a database
- Should be fast and secure
- Maybe add social login later?
- Need to handle errors gracefully
```

**Notes & Context:**
```
[Add any background information, constraints, priorities, or questions here]
```

---

## 1. The One-Liner
> *What is this project in ONE sentence? No conjunctions — if you need "and", it's two projects.*

```
[PROJECT NAME] is a [type of thing] that [does what] for [who].
```

**Example:** *"TradeAlert is a Python daemon that detects breakout patterns in IBKR data and sends Telegram notifications."*

---

## 2. The Problem
> *What pain does this solve? Be specific — generic answers = vague projects.*

- **Who has this problem?**
- **How are they solving it today?** (manual process, other tool, not at all)
- **Why is the current solution inadequate?**
- **How often does this problem occur?**

---

## 3. The Solution
> *What are you building? Describe it from the USER's perspective, not the tech perspective.*

**Core workflow (user's journey):**
1. User does X
2. System does Y
3. User gets Z

**What makes this different from alternatives?**

---

## 4. Assumptions & Risks
> *List what you're assuming to be true. Each assumption is a risk if wrong.*

| Assumption | Risk if Wrong | Mitigation |
|---|---|---|
| [e.g. Data is available in CSV format] | [Pipeline fails at ingestion] | [Validate format at kickoff] |
| | | |

---

## 5. Feasibility Check
> *Honest assessment before you invest weeks.*

| Dimension | Assessment | Notes |
|---|---|---|
| **Technical complexity** | Low / Medium / High | |
| **Time estimate (MVP)** | X days/weeks | |
| **Dependencies / blockers** | | |
| **Skills gap** | | |
| **Maintenance burden** | Low / Medium / High | |

---

## 6. Success Definition
> *How will you know this project succeeded? Make it measurable.*

- **Minimum success (MVP done):** _______
- **Full success:** _______
- **Failure looks like:** _______

---

## 7. Goals & Scope Definition
> *Define what you ARE and ARE NOT building. This feeds directly into 2-PRD.md Goals & Non-Goals.*

### ✅ Core Goals (What Success Looks Like)
- G1: [Specific, measurable goal from your solution]
- G2: [Another core goal]
- G3: [Third core goal]

### ❌ Explicit Non-Goals (What You Will NOT Build)
- NG1: [Feature/capability you're explicitly excluding + why]
- NG2: [Another exclusion + reason]
- NG3: [Third exclusion + reason]

### 🔜 Future Considerations (v2 and beyond)
- [Enhancement idea] - defer until core is proven
- [Integration idea] - wait for user feedback
- [Advanced feature] - complexity too high for MVP

---

## 8. User Types & Core Workflows
> *Identify who will use this and their primary workflows. This seeds 2-PRD.md User Stories.*

### Primary Users
- **[User Type 1]:** [Who they are, what they need]
- **[User Type 2]:** [Who they are, what they need]

### Core User Workflows
1. **[Workflow Name]:** [User Type] wants to [action] so they can [outcome]
2. **[Workflow Name]:** [User Type] wants to [action] so they can [outcome]
3. **[Workflow Name]:** [User Type] wants to [action] so they can [outcome]

---

## 9. Requirements Seeds
> *High-level requirements that will be detailed in 2-PRD.md*

### Functional Requirements (What the system must do)
- FR1: [Core function from your solution]
- FR2: [Another core function]
- FR3: [Third core function]

### Non-Functional Requirements (Quality attributes)
- NFR1: [Performance requirement from feasibility check]
- NFR2: [Security requirement if mentioned]
- NFR3: [Reliability requirement if mentioned]

### Constraints
- C1: [Technical constraint from assumptions]
- C2: [Business constraint]
- C3: [Time/resource constraint]

---

## 10. Go / No-Go Decision
> *Honest gut check before moving to PRD.*

```
[ ] GO — The problem is real, the solution is scoped, I'm committing to this
[ ] NO-GO — Reasons: _______________
[ ] PARK — Good idea, wrong time. Revisit: _______________
```

**Decision rationale:**

---

## 📤 Outputs for 2-PRD.md

**If GO decision made, these outputs feed directly into the PRD:**

- **Project Name & One-liner** → PRD Section 1 (Project Summary)
- **Goals & Non-Goals** → PRD Section 2 (Goals & Non-Goals)
- **User Types & Workflows** → PRD Section 3 (User Stories)
- **Requirements Seeds** → PRD Sections 4-5 (Functional & Non-Functional Requirements)
- **Constraints** → PRD Section 9 (Constraints)
- **Assumptions & Risks** → PRD Section 10 (Open Questions)

---

*→ If GO: proceed to `2-PRD.md` with the structured outputs above*
