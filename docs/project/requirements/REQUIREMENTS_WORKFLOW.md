# Project Development Workflow

This is the **master checklist** for developing a new project from scratch. Follow each numbered file in sequence, checking off steps as you complete them.

## Workflow Overview

```
PLAN IT:  1-BRAINSTORM → 2-PRD → 3-ARCHITECTURE → 4-LOGGING
BUILD IT: 5-EPICS → 6-BUILD → 7-CODEBASE
```

**Continuous Workflow Tools** (updated throughout development):
- `../../workflow/ADR.md` - Architecture Decision Records
- `../../workflow/ERRORS.md` - Known Errors Registry
- `../../workflow/LOGGING.md` - Active Log Tracking

## Master Checklist

### 🎯 PLANNING PHASE

#### [ ] Stage 1: Brainstorm & Idea Validation
**File**: `1-BRAINSTORM.md`
- [ ] Fill Section 0: Freeform input (raw thoughts, any format)
- [ ] Define the one-liner (project in one sentence)
- [ ] Identify the problem (who, current solution, why inadequate)
- [ ] Describe the solution (user workflow, differentiators)
- [ ] List assumptions & risks
- [ ] Complete feasibility check
- [ ] Define success criteria
- [ ] Make Go/No-Go decision
- [ ] **Status**: `Draft` → `Validated` → `Approved`

#### [ ] Stage 2: Product Requirements Document
**File**: `2-PRD.md`
- [ ] Complete project summary table
- [ ] Define goals & non-goals (AI guardrails)
- [ ] Write user stories with acceptance criteria
- [ ] List functional requirements (testable statements)
- [ ] Define non-functional requirements (performance, security)
- [ ] Document data requirements (if applicable)
- [ ] Map interfaces & integrations
- [ ] Set error handling policy
- [ ] List constraints
- [ ] Answer all open questions
- [ ] **Status**: `Draft` → `Reviewed` → `Locked`

#### [ ] Stage 3: Architecture & Technical Design
**File**: `3-ARCHITECTURE.md`
- [ ] Define complete tech stack with versions
- [ ] List all approved external packages
- [ ] Create system overview diagram
- [ ] Break down components (responsibility, input, output)
- [ ] Design data model (if applicable)
- [ ] Define folder structure
- [ ] List environment variables
- [ ] Design API (if applicable)
- [ ] Record key technical decisions
- [ ] Document known limitations
- [ ] Set performance assumptions
- [ ] **Status**: `Draft` → `Reviewed` → `Locked`

#### [ ] Stage 4: Logging Setup & Architecture
**File**: `4-LOGGING.md`
- [ ] Configure backend logging (timestamps, emojis, levels)
- [ ] Implement HTTP request logging middleware
- [ ] Set up frontend terminal logging (API proxy)
- [ ] Create browser console logger utility
- [ ] Configure database operation logging
- [ ] Set up log file structure (/logs directory)
- [ ] Define logging conventions (emojis, prefixes, levels)
- [ ] Configure environment variables (LOG_LEVEL)
- [ ] Test end-to-end logging flow
- [ ] **Status**: `Draft` → `Configured` → `Tested` → `Locked`

### 🔨 BUILDING PHASE

#### [ ] Stage 5: Epics & Stories
**File**: `5-EPICS.md`
- [ ] Break all work into Epics
- [ ] Create stories for each epic (1 session completable)
- [ ] Define tasks for each story
- [ ] Set dependencies between stories
- [ ] Write acceptance criteria for each story
- [ ] Estimate time for each story
- [ ] Plan dev tests for each story
- [ ] Update epic overview table
- [ ] Set current status section
- [ ] **Status**: Stories defined and prioritized

#### [ ] Stage 6: Build Log & Session Journal
**File**: `6-BUILD.md`
- [ ] Update current session info before each session
- [ ] Maintain project health dashboard
- [ ] Track active blockers
- [ ] Log each session (build → test → evidence → sign-off)
- [ ] Record cumulative test status
- [ ] Log key decisions made during build
- [ ] Track dependencies added
- [ ] Complete Definition of Done checklist before scenarios
- [ ] **Status**: Updated after every session

#### [ ] Stage 7: Codebase Documentation
**File**: `7-CODEBASE.md`
- [ ] Update codebase map after each story
- [ ] Document each module (purpose, exports, usage, design)
- [ ] Maintain data flow diagrams
- [ ] Update dependency map
- [ ] Record technical debt
- [ ] Follow naming conventions
- [ ] **Status**: Always current with codebase

### 🔧 CONTINUOUS WORKFLOW (Throughout Development)

These files are updated **continuously** during development, not at the end:

#### Architecture Decision Records
**File**: `../../workflow/ADR.md`
- Record decisions **as you make them** during any stage
- Document context, alternatives, consequences
- Reference from BUILD sessions when making technical choices
- **Status**: Living document, append-only

#### Known Errors Registry
**File**: `../../workflow/ERRORS.md`
- Log bugs **as you encounter them** during BUILD
- Document root cause and fix immediately
- Create prevention rules for future development
- **Status**: Living document, searchable registry

#### Active Log Tracking
**File**: `../../workflow/LOGGING.md`
- Track what's being logged in your project
- Update when adding new log points based on ADRs/errors
- Document log analysis and debugging workflows
- **Status**: Living document, updated with each feature

### 🧪 TESTING PHASE

#### [ ] Blind Test Scenarios
**File**: `../testing/BLIND_SCENARIOS.md`
- [ ] Complete Definition of Done checklist first
- [ ] Run scenarios cold (no pre-testing)
- [ ] Record results for each scenario
- [ ] Fix any failures and re-run all scenarios
- [ ] Complete blind test sign-off
- [ ] **Status**: Only run after development complete

## Best Practices

### Requirements Analysis
- ✅ Ask clarifying questions
- ✅ Identify edge cases
- ✅ Consider non-functional requirements
- ✅ Document assumptions
- ❌ Don't assume - clarify

### Functionality Breakdown
- ✅ Keep functionalities focused (single responsibility)
- ✅ Make steps actionable
- ✅ Identify dependencies clearly
- ✅ Include acceptance criteria
- ❌ Don't create overly large functionalities

### Step Definition
- ✅ Steps should be completable in 1-2 days
- ✅ Each step should have clear deliverables
- ✅ Include testing in steps
- ✅ Document dependencies
- ❌ Don't create vague or too-large steps

## Quick Reference

| Stage | File/Directory | Purpose |
|-------|---------------|---------|
| Input | `RAW_REQUIREMENTS.md` | Initial requirements capture |
| Analysis | `ANALYZED_REQUIREMENTS.md` | Rephrased, structured requirements |
| Breakdown | `../features/[NAME].md` | Individual functionality with steps |
| Implementation | Code files | Actual code implementation |

## Example Workflow

1. **User adds to RAW_REQUIREMENTS.md**:
   ```
   - Need user login
   - Store passwords securely
   ```

2. **AI analyzes and creates ANALYZED_REQUIREMENTS.md**:
   - Identifies "User Authentication" functionality
   - Breaks into: login, registration, password security

3. **AI creates features/USER_AUTHENTICATION.md**:
   - Defines steps: database schema → API endpoints → frontend → tests

4. **User reviews and approves**

5. **Implementation begins following steps**

---

**Related Documents**:
- [Best Practices](../../workflow/BEST_PRACTICES.md)
- [Feature Template](./TEMPLATE.md)
- [Features Directory](../features/README.md)

