# Project Template

⚠️ **IMPORTANT: All behavioral rules are in `.windsurfrules` — AI reads this on every session**

This is a **template project** for quickly starting new full-stack applications with a rigorous development workflow.

## Tech Stack

- **Backend**: FastAPI (Python) + SQLite
- **Frontend**: Next.js (TypeScript/React) + TailwindCSS
- **Testing**: Pytest (backend) + Jest (frontend)
- **Workflow**: Epic → Story → Test → Sign-off methodology

---

## 🚀 Quick Start

### 1. Run Setup Script
```bash
./scripts/setup.sh
```
This will:
- Create Python virtual environment + install dependencies
- Install Node.js dependencies
- Set up project directories

### 2. Start Development Servers

**Backend:**
```bash
cd backend
source venv/bin/activate
python3 -m uvicorn backend.api.main:app --reload --port 8000
```

**Frontend:**
```bash
cd frontend
npm run dev
```

### 3. Verify Setup
- Backend health check: `http://localhost:8000/health`
- Frontend: `http://localhost:3000`

---

## 📁 Project Structure

```
template_project/
├── .windsurfrules              # AI behavioral rules (single source of truth)
├── backend/                    # FastAPI backend
│   ├── api/                   # Routes, models, main app
│   ├── database/              # Connection, schema, migrations
│   └── tests/                 # Backend tests
├── frontend/                   # Next.js frontend
│   ├── app/                   # Next.js app router
│   ├── src/                   # Components, API client, types
│   └── __tests__/             # Frontend tests
├── docs/
│   ├── project/
│   │   ├── requirements/      # Read-only instructions (WHAT to build)
│   │   ├── config/            # Project-specific output (generated content)
│   │   └── testing/           # Blind test scenarios
│   └── workflow/              # HOW to behave (always active rules)
│       ├── ADR.md            # Architecture Decision Records
│       ├── ERRORS.md         # Known Errors Registry
│       ├── LOGGING.md        # Active Log Tracking
│       └── GIT_WORKFLOW.md   # Git operations guide
└── scripts/
    ├── setup.sh               # Automated setup
    └── git_ops.py             # Git command wrapper
```

---

## 📖 Documentation Architecture

This template uses a **3-tier documentation system**:

### 1. `docs/project/requirements/` — Instructions (Read-Only)
Sequential files (1-7) that tell you **WHAT to build**:
- `1-BRAINSTORM.md` → Validate idea
- `2-PRD.md` → Requirements source of truth
- `3-ARCHITECTURE.md` → Technical decisions
- `4-LOGGING.md` → Logging setup
- `5-EPICS.md` → Work breakdown (Epics → Stories)
- `6-BUILD.md` → Session-by-session build log
- `7-CODEBASE.md` → Living codebase documentation

**Output:** Each file generates content in `docs/project/config/`

### 2. `docs/project/config/` — Generated Output (Project-Specific)
- `brainstorm.md`, `prd.md`, `architecture.md`, `logging.md`
- `build-log.md`, `codebase.md`
- `epics/` folder: `ACTIVE.md`, `overview.md`, `epic-X/story-X.Y.md`

**This is where ALL project-specific content lives.**

### 3. `docs/workflow/` — Behavioral Rules (Always Active)
- `ADR.md` — Architecture Decision Records (append-only)
- `ERRORS.md` — Known Errors Registry (searchable)
- `LOGGING.md` — Active log tracking
- `GIT_WORKFLOW.md` — Git operations guide

**Updated continuously during development.**

---

## 🔧 Development Workflow

The AI follows this **mandatory sequence** for every code change (defined in `.windsurfrules`):

1. **Understand requirement** → ask questions if unclear
2. **Propose approach** → get user approval before coding
3. **Implement** → only after approval
4. **Create test script** → executable `.py` file in `backend/tests/`
5. **Propose test** → show what it does, wait for user approval
6. **Run test** → verify it passes, check logs (backend + frontend)
7. **Get user confirmation** → user says "done"
8. **Update MDs** → ONLY now: check [x] tasks, update status

---

## 🧪 Testing

### Backend Tests
```bash
cd backend
pytest
```

### Frontend Tests
```bash
cd frontend
npm test
```

### Blind Test Scenarios
- Located in `docs/project/testing/BLIND_SCENARIOS.md`
- **SEALED during development** — AI cannot read this file
- Run ONLY after development is complete

---

## 🔀 Git Workflow

All git operations use `scripts/git_ops.py` — never craft git commands manually.

```bash
# Check status
python scripts/git_ops.py status

# Commit (stages all + commits)
python scripts/git_ops.py commit "[EPIC-X] feat: description"

# Push
python scripts/git_ops.py push

# View history
python scripts/git_ops.py log
```

See `docs/workflow/GIT_WORKFLOW.md` for commit message conventions.

---

## 🆕 Starting a New Project with This Template

1. **Fork/clone this repository**
2. **Clear project-specific content:**
   - Delete all files in `docs/project/config/` (keep folder structure)
   - Clear `docs/workflow/ADR.md` (keep template)
   - Clear `docs/workflow/ERRORS.md` (keep template)
   - Clear `docs/workflow/LOGGING.md` (keep template)
3. **Follow the requirements workflow:**
   - Start with `docs/project/requirements/REQUIREMENTS_WORKFLOW.md`
   - Follow files 1-7 sequentially
4. **Keep `.windsurfrules` unchanged** — it's the AI's behavioral contract

---

## 📝 Key Principles

- **Single source of truth**: All AI rules live in `.windsurfrules`
- **Test before marking done**: Never check [x] before tests pass
- **Document decisions**: Use ADR.md for technical choices
- **Log errors**: Use ERRORS.md to prevent recurring bugs
- **Check logs always**: After every code change, verify backend + frontend logs

---

## 🔗 Quick Links

- **AI Rules**: `.windsurfrules`
- **Master Workflow**: `docs/project/requirements/REQUIREMENTS_WORKFLOW.md`
- **Git Operations**: `docs/workflow/GIT_WORKFLOW.md`
- **Error Registry**: `docs/workflow/ERRORS.md`
- **Architecture Decisions**: `docs/workflow/ADR.md`




