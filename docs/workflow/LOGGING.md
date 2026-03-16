# Active Log Tracking

## TL;DR
- This tracks **what we're actually logging** in the project (not how to set it up — that's `4-LOGGING.md`)
- Update this when adding new log points or features
- When fixing a bug (ERRORS.md) → add logging to prevent recurrence
- When making a decision (ADR.md) → add logging to track its impact

---

## 🗂️ Active Log Points

> Track every log point in your application. Update this as you add features.

### Backend Logs

| Module | Log Point | Purpose | Level | Added In |
|--------|-----------|---------|-------|----------|
| `main.py` | Server startup | Track when API starts | INFO | EPIC-1 / Story 1.1 |
| `core/logger.py` | Logger initialization | Confirm logging configured | INFO | EPIC-1 / Story 1.2 |
| `[module]/[file].py` | [Event] | [Why we log this] | INFO/ERROR | EPIC-X / Story X.Y |

### Frontend Logs

| Component | Log Point | Purpose | Level | Added In |
|-----------|-----------|---------|-------|----------|
| `api/proxy/[...path]/route.ts` | API proxy requests | Track all frontend→backend calls | INFO | EPIC-1 / Story 1.2 |
| `[component].tsx` | [Event] | [Why we log this] | INFO/ERROR | EPIC-X / Story X.Y |

### Database Logs

| Operation | Log Point | Purpose | Level | Added In |
|-----------|-----------|---------|-------|----------|
| `database/connection.py` | DB connection | Track connection lifecycle | INFO | EPIC-1 / Story 1.3 |
| `[module]/[file].py` | [Query type] | [Why we log this] | INFO/ERROR | EPIC-X / Story X.Y |

---

## 🔍 Log Analysis Workflows

> Document how you use logs to debug and monitor your application.

### Debugging Workflow

1. **Reproduce the issue** - Trigger the error in your environment
2. **Check backend logs** - Look for `❌` error markers in terminal
3. **Check frontend logs** - Look for failed API calls `❌ [Frontend->API]`
4. **Check database logs** - Look for query failures or connection issues
5. **Trace the flow** - Follow timestamps across all log layers
6. **Fix and verify** - Ensure logs show `✅` success after fix

### Monitoring Workflow

- **Daily**: Check log files for any `❌` errors
- **After deployment**: Verify all services logging correctly
- **After new feature**: Confirm new log points appear as expected

---

## 📌 Log Points Added from ADRs

> When you make architectural decisions (ADR.md), track related logging here.

| ADR ID | Decision | Log Points Added | Rationale |
|--------|----------|------------------|-----------|
| ADR-001 | [Decision title] | [What logs were added] | [Why these logs matter] |

**Example:**
| ADR ID | Decision | Log Points Added | Rationale |
|--------|----------|------------------|-----------|
| ADR-003 | Use PostgreSQL instead of SQLite | Database connection pool logs, query timing logs | Need to monitor connection usage and identify slow queries |

---

## 🐛 Log Points Added from Errors

> When you fix bugs (ERRORS.md), add logging to prevent recurrence.

| ERR ID | Error | Log Points Added | Prevention Rule |
|--------|-------|------------------|-----------------|
| ERR-001 | [Error description] | [What logs were added] | [How logs prevent this] |

**Example:**
| ERR ID | Error | Log Points Added | Prevention Rule |
|--------|-------|------------------|-----------------|
| ERR-005 | Silent API timeout | Log all API calls with timing, log timeouts explicitly | Never fail silently - always log errors with context |

---

## 📋 Log Conventions (Project-Specific)

> Document any project-specific logging conventions beyond the standard ones in 4-LOGGING.md.

### Custom Emojis
| Emoji | Usage | Example |
|-------|-------|---------|
| 🎯 | Business metric | `🎯 [Metrics] Daily active users: 1234` |
| 💰 | Financial transaction | `💰 [Payment] Transaction #123 completed: $45.00` |

### Custom Prefixes
```
[ModuleName] verb: detail
[API] endpoint: status - timing
[DB] operation: result
```

### Sensitive Data Handling
- ❌ **Never log**: Passwords, API keys, credit card numbers, PII
- ✅ **Always log**: User IDs (hashed if needed), transaction IDs, timestamps
- ⚠️ **Redact in production**: Email addresses, phone numbers (log hashed versions)

---

## 🔄 Log Rotation & Retention

> Track your log file management strategy.

| Log Type | Rotation | Retention | Location |
|----------|----------|-----------|----------|
| Backend | Daily | 30 days | `/logs/backend_YYYY-MM-DD.log` |
| API | Daily | 30 days | `/logs/api_YYYY-MM-DD.log` |
| Database | Daily | 30 days | `/logs/database_YYYY-MM-DD.log` |
| Frontend | Daily | 7 days | `/logs/frontend_YYYY-MM-DD.log` |
| Tests | Per run | Until next run | `/logs/tests_YYYY-MM-DD.log` |

---

## ⚡ Quick Reference

### Check Logs After Code Changes
```bash
# Backend logs
tail -f logs/backend_$(date +%Y-%m-%d).log

# API logs
tail -f logs/api_$(date +%Y-%m-%d).log

# Database logs
tail -f logs/database_$(date +%Y-%m-%d).log
```

### Search Logs for Errors
```bash
# Find all errors today
grep "❌" logs/*_$(date +%Y-%m-%d).log

# Find specific error pattern
grep "ERROR" logs/backend_*.log | grep "[pattern]"
```

### Verify Logging After Feature
```bash
# Test a feature and watch logs in real-time
tail -f logs/backend_$(date +%Y-%m-%d).log logs/api_$(date +%Y-%m-%d).log
```

---

## 📝 Update Log

> Track when you update this file and why.

| Date | Change | Reason | Related |
|------|--------|--------|---------|
| [DATE] | Added [log point] | [Why it was needed] | EPIC-X / Story X.Y |
| [DATE] | Updated [section] | [What changed] | ADR-XXX / ERR-XXX |

---

**Related Documents:**
- [Logging Setup Template](../project/requirements/4-LOGGING.md) - How to implement logging
- [Architecture Decisions](./ADR.md) - Decisions that drive log requirements
- [Known Errors](./ERRORS.md) - Bugs that require logging for prevention
- [Build Log](../project/requirements/6-BUILD.md) - Session log evidence
