# Feature Setup — Drop-in for Existing Projects

Copy this folder's contents into the root of any existing project to add the full development workflow.

## What's included

```
CLAUDE.md                          ← project-level context (fill in name, stack, non-goals)
docs/project/requirements/         ← read-only process templates (never modify)
docs/project/config/               ← empty output files (fill in as you build)
docs/project/testing/              ← blind test scenarios (sealed during development)
workflow/ADR.md                    ← architecture decision records
workflow/ERRORS.md                 ← known errors registry
scripts/git_ops.py                 ← git wrapper (all git commands go through this)
```

## How to use

1. Copy this folder's contents into your project root
2. Fill in `CLAUDE.md` — project name, stack, non-goals
3. The global `~/.claude/CLAUDE.md` handles all process and skill rules automatically
4. Start at Step 1: read `docs/project/requirements/1-BRAINSTORM.md`
