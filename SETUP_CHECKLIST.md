# Setup Checklist

⚠️ **Before starting any work on this project, complete this checklist:**

## Pre-Development Checklist

- [ ] **Read `CLAUDE.md`** - ⚠️ **MANDATORY** - All AI behavioral rules
- [ ] **Review `README.md`** - Understand the 3-tier documentation architecture
- [ ] **Install dependencies** - Run `./scripts/setup.sh`

## Initial Setup

### 1. Run Setup Script
```bash
./scripts/setup.sh
```
This will:
- Create Python virtual environment
- Install backend dependencies
- Install frontend dependencies
- Set up project directories

### 2. Backend Setup
- [ ] Navigate to `backend/`
- [ ] Activate virtual environment: `source venv/bin/activate` (macOS/Linux)
- [ ] Verify installation: `python3 -m uvicorn backend.api.main:app --help`

### 3. Frontend Setup
- [ ] Navigate to `frontend/`
- [ ] Verify installation: `npm run dev` (should start without errors)

### 4. Database Setup
- [ ] Review `backend/database/schema.sql`
- [ ] Configure database per `docs/project/config/architecture.md` (PostgreSQL / Supabase / SQLite)

### 5. Git Setup
- [ ] Initialize git: `git init` (if not already done)
- [ ] Review `.gitignore` - ensure sensitive files are excluded
- [ ] Set up remote repository (if applicable)
- [ ] **DO NOT commit yet** - Wait for user approval per `CLAUDE.md`

## Development Workflow Reminder

The AI follows this mandatory sequence (defined in `CLAUDE.md`):
1. ✅ Understand requirement → ask questions if unclear
2. ✅ Propose approach → get user approval before coding
3. ✅ Implement → only after approval
4. ✅ Create test script → executable `.py` file in `backend/tests/`
5. ✅ Propose test → show what it does, wait for user approval
6. ✅ Run test → verify it passes, check logs
7. ✅ Get user confirmation → user says "done"
8. ✅ Update MDs → ONLY now: check [x] tasks, update status

## Testing Setup

- [ ] Backend tests run: `cd backend && pytest`
- [ ] Frontend tests run: `cd frontend && npm test`
- [ ] All tests pass

## Verification

- [ ] Backend starts: `http://localhost:8000/health`
- [ ] Frontend starts: `http://localhost:3000`
- [ ] API connection works (frontend can reach backend)
- [ ] Database connection works

## Ready to Develop

Once all checkboxes are complete, you're ready to start development!

**Remember**: All AI rules live in `CLAUDE.md` — single source of truth.




