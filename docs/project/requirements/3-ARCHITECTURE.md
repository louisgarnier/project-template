# 🏗️ Stage 3 — Architecture & Technical Design
> **Output →** `docs/project/config/architecture.md`
> **Instructions:** Define ALL technical decisions here before coding starts.
> The AI reads this to understand what tools and patterns are approved.
> Adding a dependency or changing architecture mid-project requires updating this doc first.
> Status: `[ ] Draft` → `[ ] Reviewed` → `[ ] Locked`

## 📥 Inputs from 2-PRD.md
- **Tech Stack Hint** → Use to make Section 1 decisions
- **Functional Requirements** → Drive Section 3 component breakdown
- **Non-Functional Requirements** → Shape Section 10 performance assumptions
- **Data Requirements** → Design Section 4 data model
- **Interfaces & Integrations** → Record as Section 8 technical decisions
- **Error Handling Policy** → Implement in Section 8 decisions
- **Constraints** → Limit Section 1 tech stack choices
- **User Stories** → Flow through Section 2 system overview

---

## 1. Tech Stack
> *Be explicit. Vague stacks produce inconsistent code.*
> *Pick ONE per category. Leave blank if not needed. Record your choice in `config/architecture.md`.*

### Core

| Layer | Options | Choice | Version | Reason |
|---|---|---|---|---|
| Language | Python / TypeScript / Go | | | |
| Framework | FastAPI / Next.js / Nuxt / SvelteKit / Express | | | |
| Testing | pytest / vitest / jest | | | |
| Linter | ruff / eslint / biome | | | |
| Formatter | black / prettier / biome | | | |

### Data & Storage

| Layer | Options | Choice | Version | Reason |
|---|---|---|---|---|
| Database | PostgreSQL / SQLite / MySQL / none | | | |
| BaaS | Supabase / Firebase / Appwrite / none | | | |
| ORM / Query | SQLAlchemy / Prisma / Drizzle / none | | | |
| Vector DB | Pinecone / Weaviate / ChromaDB / pgvector / none | | | |
| Caching | Redis / Memcached / none | | | |
| File Storage | Supabase Storage / S3 / Cloudflare R2 / none | | | |

### Auth & Services

| Layer | Options | Choice | Version | Reason |
|---|---|---|---|---|
| Auth | Supabase Auth / Clerk / Auth.js / custom / none | | | |
| Email | Resend / SendGrid / Postmark / none | | | |
| Payments | Stripe / Lemonsqueezy / none | | | |
| AI / LLM | OpenAI / Anthropic / local / none | | | |

### Infrastructure

| Layer | Options | Choice | Version | Reason |
|---|---|---|---|---|
| Hosting (frontend) | Vercel / Netlify / Cloudflare Pages / none | | | |
| Hosting (backend) | Railway / Render / Fly.io / VPS / none | | | |
| Containerization | Docker / none | | | |
| CI/CD | GitHub Actions / none | | | |
| Monitoring | Sentry / LogRocket / none | | | |

**Approved external packages:**
```
# Add every package here before using it. AI must not add packages not in this list.
- [package] — [reason]
```

---

## 2. System Overview
> *High-level diagram in text/ASCII. What are the main components?*
> *For this full-stack template, show how frontend, backend, database, and scripts connect.*

```
┌─────────────────────────────────────────────────────────────────┐
│                         FRONTEND (Next.js)                      │
│  - User Interface (React components)                            │
│  - API Client (fetch/axios)                                     │
│  - Browser Console Logging                                      │
└────────────────────────────┬────────────────────────────────────┘
                             │ HTTP Requests
                             ↓
┌─────────────────────────────────────────────────────────────────┐
│                      BACKEND (FastAPI)                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐         │
│  │  API Routes  │→ │   Business   │→ │   Database   │         │
│  │  (endpoints) │  │     Logic    │  │  Connection  │         │
│  └──────────────┘  └──────────────┘  └──────────────┘         │
│         ↕                  ↕                  ↕                  │
│  ┌──────────────────────────────────────────────────┐          │
│  │         Logger (terminal + file logs)            │          │
│  └──────────────────────────────────────────────────┘          │
└────────────────────────────┬────────────────────────────────────┘
                             │
                             ↓
                    ┌─────────────────┐
                    │  DATABASE       │
                    │  [DB_CHOICE]    │
                    └─────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                    SCRIPTS (Utilities)                          │
│  - git_ops.py (git wrapper)                                     │
│  - setup.sh (environment setup)                                 │
└─────────────────────────────────────────────────────────────────┘
```

**Data Flow:**
1. User interacts with **Frontend** (Next.js React app)
2. Frontend makes HTTP requests to **Backend** (FastAPI)
3. Backend processes requests, interacts with **Database** ([DB_CHOICE])
4. **Logger** tracks all operations (backend terminal + file logs)
5. **Scripts** provide development utilities (git operations, setup)
6. All layers log to centralized logging system for debugging

---

## 3. Component Breakdown
> *One section per major module/component.*
> *For this template: define Frontend, Backend, Database, and Scripts components.*

### Component 1: Frontend (Next.js)
- **Responsibility:** User interface, client-side logic, API communication
- **Input:** User interactions, API responses from backend
- **Output:** Rendered UI, HTTP requests to backend
- **File location:** `frontend/`
  - `frontend/app/` — Next.js app router (pages, layouts)
  - `frontend/src/components/` — React components
  - `frontend/src/api/` — API client utilities
  - `frontend/src/types/` — TypeScript type definitions
- **Key dependencies:** Next.js, React, TailwindCSS
- **Logging:** 
  - Browser console logs (development)
  - API proxy terminal logs (server-side)
  - File logs: `logs/frontend_YYYY-MM-DD.log` (user actions, API calls, errors)

### Component 2: Backend (FastAPI)
- **Responsibility:** API endpoints, business logic, database operations
- **Input:** HTTP requests from frontend
- **Output:** JSON responses, database writes
- **File location:** `backend/`
  - `backend/api/main.py` — FastAPI app initialization
  - `backend/api/routes/` — API endpoint definitions
  - `backend/api/models.py` — Pydantic models
- **Key dependencies:** FastAPI, Uvicorn, Pydantic
- **Logging:** Terminal logs (requests/responses), file logs (`logs/backend_*.log`)

### Component 3: Database Layer
- **Responsibility:** Data persistence, schema management, migrations
- **Input:** SQL queries from backend
- **Output:** Query results, transaction confirmations
- **File location:** `backend/database/`
  - `backend/database/connection.py` — Database connection management
  - `backend/database/schema.sql` — Database schema definition
  - `backend/database/migrations/` — Schema migrations
- **Key dependencies:** [DB_CHOICE from Section 1] + ORM/client if applicable
- **Logging:** Database operation logs (connections, queries, errors)

### Component 4: Scripts & Utilities
- **Responsibility:** Development automation, git operations, setup
- **Input:** Command-line arguments
- **Output:** Terminal output, file system changes
- **File location:** `scripts/`
  - `scripts/git_ops.py` — Git command wrapper
  - `scripts/setup.sh` — Environment setup automation
- **Key dependencies:** Python stdlib, bash
- **Logging:** Script execution logs to terminal

---

## 4. Data Model
> *(Skip if no persistent storage)*

### Entity: [Name]
```
[field_name]: [type] — [description]
[field_name]: [type] — [description]
```

**Relationships:**
- [Entity A] has many [Entity B]

---

## 5. Folder Structure
> *Define the exact structure. AI must follow this.*
> *This is the ACTUAL structure of the full-stack template.*

```
template_project/
├── CLAUDE.md                   # AI behavioral rules (single source of truth)
├── README.md                   # Project overview and quick start
├── SETUP_CHECKLIST.md          # Setup verification checklist
│
├── backend/                    # FastAPI backend
│   ├── api/
│   │   ├── __init__.py
│   │   ├── main.py            # FastAPI app + lifespan + CORS
│   │   ├── models.py          # Pydantic models
│   │   └── routes/            # API endpoint modules
│   ├── database/
│   │   ├── __init__.py
│   │   ├── connection.py      # DB connection management
│   │   ├── schema.sql         # Database schema
│   │   └── migrations/        # Schema migrations
│   ├── tests/                 # Backend tests (pytest)
│   │   ├── __init__.py
│   │   ├── test_api.py
│   │   └── test_[module].py
│   ├── requirements.txt       # Python dependencies
│   └── venv/                  # Python virtual environment (gitignored)
│
├── frontend/                   # Next.js frontend
│   ├── app/
│   │   ├── layout.tsx         # Root layout
│   │   ├── page.tsx           # Home page
│   │   └── globals.css        # Global styles
│   ├── src/
│   │   ├── components/        # React components
│   │   ├── api/               # API client utilities
│   │   └── types/             # TypeScript types
│   ├── __tests__/             # Frontend tests (Jest)
│   │   └── example.test.tsx
│   ├── package.json           # Node dependencies
│   ├── next.config.ts         # Next.js configuration
│   ├── jest.config.js         # Jest configuration
│   └── node_modules/          # Node dependencies (gitignored)
│
├── docs/
│   ├── project/
│   │   ├── requirements/      # Read-only instructions (WHAT to build)
│   │   │   ├── 1-BRAINSTORM.md
│   │   │   ├── 2-PRD.md
│   │   │   ├── 3-ARCHITECTURE.md  ← YOU ARE HERE
│   │   │   ├── 4-LOGGING.md
│   │   │   ├── 5-EPICS.md
│   │   │   ├── 6-BUILD.md
│   │   │   ├── 7-CODEBASE.md
│   │   │   ├── README.md
│   │   │   └── REQUIREMENTS_WORKFLOW.md
│   │   ├── config/            # Project-specific output (generated)
│   │   │   ├── brainstorm.md
│   │   │   ├── prd.md
│   │   │   ├── architecture.md
│   │   │   ├── logging.md
│   │   │   ├── build-log.md
│   │   │   ├── codebase.md
│   │   │   └── epics/
│   │   │       ├── ACTIVE.md
│   │   │       ├── overview.md
│   │   │       └── epic-X/
│   │   │           └── story-X.Y.md
│   │   └── testing/
│   │       └── BLIND_SCENARIOS.md  ← SEALED during development
├── workflow/                  # HOW to behave (always active)
│   ├── ADR.md               # Architecture Decision Records
│   └── ERRORS.md            # Known Errors Registry
│
├── scripts/
│   ├── setup.sh              # Automated environment setup
│   ├── git_ops.py            # Git command wrapper
│   ├── brainstorm.py         # Interactive brainstorm generator
│   └── new_project.py        # New project initializer
│
├── logs/                      # Log files (gitignored)
│   ├── backend_YYYY-MM-DD.log    # Backend operations, errors, startup
│   ├── api_YYYY-MM-DD.log        # API requests/responses, timing
│   ├── database_YYYY-MM-DD.log   # Database queries, connections
│   ├── frontend_YYYY-MM-DD.log   # Frontend logs from browser
│   └── tests_YYYY-MM-DD.log      # Test execution logs
│
├── .gitignore                 # Git ignore rules
└── .git/                      # Git repository (gitignored in nested repos)
```

**Key Principles:**
- `backend/` and `frontend/` are **separate** with their own dependencies
- `docs/project/requirements/` = read-only instructions
- `docs/project/config/` = project-specific generated content
- `workflow/` = living documents updated during development
- `logs/` = centralized logging output (all components log here)
- `CLAUDE.md` = AI behavioral contract (never modify)

---

## 6. Environment Variables
> *List all .env variables. Never hardcode these. Provide .env.example.*

| Variable | Description | Example |
|---|---|---|
| `DATABASE_URL` | DB connection string | `postgresql://user:pass@localhost/db` |
| `API_KEY_X` | External service key | `sk-...` |
| `LOG_LEVEL` | Logging verbosity | `INFO` |

---

## 7. API Design
> *(Skip if no HTTP API)*

| Method | Endpoint | Request Body | Response | Auth |
|---|---|---|---|---|
| GET | `/api/[resource]` | — | `[schema]` | Bearer |
| POST | `/api/[resource]` | `{field: type}` | `{id: string}` | Bearer |

---

## 8. Key Technical Decisions
> *Record WHY you chose things. Future-you will thank present-you.*

| Decision | Options Considered | Choice | Rationale |
|---|---|---|---|
| [e.g. DB type] | [SQLite vs PostgreSQL] | [PostgreSQL] | [Need concurrent writes] |
| | | | |

---

## 9. Known Limitations & Technical Debt
> *Things you're knowingly cutting corners on — document them now.*

- [ ] [e.g. No pagination on API — max 1000 rows for now]
- [ ] [e.g. Single-threaded pipeline — fine for current data volume]

---

## 10. Performance & Scalability Assumptions
- Current expected load: [X users / Y rows / Z requests/min]
- This architecture breaks at: [describe ceiling]
- Scaling path if needed: [describe]

---

## 📤 Outputs for 4-LOGGING.md

**Once ARCHITECTURE is LOCKED, these outputs feed directly into logging setup:**

- **Tech Stack** → LOGGING backend/frontend technology choices (Python/FastAPI vs Node/React patterns)
- **Component Breakdown** → LOGGING layer identification (which components need logging)
- **System Overview** → LOGGING flow design (where logs are captured in the data flow)
- **Folder Structure** → LOGGING file locations (`logs/` directory, logger modules)
- **Environment Variables** → LOGGING configuration (`LOG_LEVEL`, log destinations)
- **API Design** → LOGGING middleware requirements (HTTP request/response logging)
- **Technical Decisions** → LOGGING implementation choices (structured vs plain text, rotation, etc.)
- **Performance Assumptions** → LOGGING performance impact considerations

---

*→ Proceed to `4-LOGGING.md` with the structured outputs above*
