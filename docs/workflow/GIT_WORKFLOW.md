# Git Workflow

All git operations go through `scripts/git_ops.py`. Never craft git commands manually.

## Commands

```bash
# Check what's changed
python scripts/git_ops.py status
python scripts/git_ops.py diff

# Commit (stages all + commits)
python scripts/git_ops.py commit "[EPIC-X] feat: short description"

# Push to remote
python scripts/git_ops.py push

# Pull latest
python scripts/git_ops.py pull

# View recent history
python scripts/git_ops.py log

# Branching
python scripts/git_ops.py branch feature/my-feature
python scripts/git_ops.py checkout main
```

## Commit Message Convention
```
[EPIC-X] feat: add CSV ingestion parser
[EPIC-X] fix: handle empty rows in CSV
[Docs] update BUILD.md with session log
[Tests] add unit tests for scrapers
```

## Before Committing
- [ ] Tests passing
- [ ] User has validated
- [ ] No sensitive data (API keys, `.env` values)
