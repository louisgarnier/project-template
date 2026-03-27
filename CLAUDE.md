## Project: [NAME]
One-liner: [fill in from brainstorm]
Current stage: EPIC-1 / Story 1.1 — Project setup

## Non-goals — these are LAW, do not implement
- [fill from locked PRD — leave blank until PRD is done]

## Stack
- Frontend: Next.js
- Backend: FastAPI / Python
- Database: [see docs/project/config/architecture.md]

## Read before every session (in this order)
1. docs/project/config/prd.md — locked requirements
2. docs/project/config/architecture.md — approved stack + packages
3. docs/project/config/build-log.md — current session, active blockers
4. docs/project/config/codebase.md — existing modules before touching anything
5. docs/project/config/epics/ACTIVE.md — current story

## Mandatory dev sequence — follow this EXACTLY for every code change
1. Understand requirement — ask questions if unclear
2. Propose approach — state what you will do and which files you will touch
3. Get user approval — do not write a single line before approval
4. Implement — only after approval
5. Create test — executable test file in backend/tests/ or frontend/__tests__/
6. Propose test — show what it does, wait for user approval
7. Run test — verify it passes, check logs (backend + frontend)
8. Get user confirmation — user says "done"
9. Update MDs — ONLY now: check [x] tasks, update build-log and codebase

## Hard rules — always active

### Before writing or modifying code
- Get user approval first — no exceptions
- Check workflow/ERRORS.md — has this problem been solved before?
- Check workflow/ADR.md — does a past decision constrain this?
- Never check [x] in any MD before: test created + executed + user confirms

### After any code change
- Check logs (backend + frontend) — never assume code works
- Update docs/project/config/build-log.md
- Update docs/project/config/codebase.md if modules changed
- Update workflow/ERRORS.md if bug encountered
- Update workflow/ADR.md if technical decision made

### Code quality — non-negotiable
- Docstrings on every function
- No magic numbers — use named constants
- Max 40 lines per function, max 300 lines per file
- No silent failures — handle all errors explicitly
- No console.log or print in production — use the logger

### Scope discipline
- Only build what the current Epic/Story requires
- Never add unlisted dependencies without user approval
- If uncertain, ASK — do not assume

### Git
- All git via `python scripts/git_ops.py` — never raw git commands
- Commit format: [EPIC-X] type: short description
- Confirm with user before any commit or push

### Sealed files — never read or modify
- docs/project/testing/BLIND_SCENARIOS.md

## Check when relevant
- workflow/ADR.md — before any architectural decision
- workflow/ERRORS.md — before coding in a known-problem area

## Log files — read directly when debugging
- logs/backend_[date].log → FastAPI, business logic
- logs/api_[date].log → HTTP requests and responses
- logs/frontend_[date].log → browser-side calls
- Search ❌ for errors, trace by timestamp across layers

## Logging conventions
- Emojis: 📥 in, 📤 out, ✅ success, ❌ error, ⚠️ warning, 🗄️ db, 🚀 startup
- Format: [ModuleName] verb: detail
- Never log: passwords, API keys, PII

## Communication
- End every substantive response with:
  📍 Story: [EPIC-X / Story Y] | 📋 Next: [what comes next]