# Vibecoder Project Prompt
_Date: 2025-10-17_

This file directs any AI assistant on how to use the repository to build with clarity.

## Modes
Ask: Quick Mode (2–6h) or Full Mode (multi-day)?
- **Quick**: fill `REQUIREMENTS.md`, plan in `tasks/todo.md`, build one slice, run top-level QA, write Review.
- **Full**: fill `REQUIREMENTS.md`, `PRD.md`, `MVP_SCOPE.md`; keep `DECISIONS_LOG.md` + `THREADKEEPER_LOG.md`; full QA and sprint reviews.

## Process Rules
- Simplicity first; smallest working change.
- Read `REPOSITORY_OVERVIEW.md`, `PROJECT_PHILOSOPHY.md`, `DESIGN_NOTES.md`, `TECH_STACK_GUIDE.md` before coding.
- Plan before action in `tasks/todo.md`; if resuming, read `activity.md` + `DECISIONS_LOG.md`.
- Log after each change to `docs/activity.md`.
- Protected: `/design` (read-only), `/html` (deploy root). Use unique ids in HTML.
- Lint/format: eslint/prettier or ruff/black.

## 3.5 Test-first Nudge
When adding a new function/route/agent behavior, draft a minimal test or validation snippet first. The test defines success.

## Prevent Drift
Use `docs/_stack-snippets/` addendum, follow `QA_CHECKLIST.md`, record template version in `docs/VERSION.md` (if present), and snapshot reasoning in `THREADKEEPER_LOG.md`. If heavy, run an *Occam Reset*.

## Collaboration
If humans join, point them to this file and `/docs`. AI must keep decisions explainable in logs.

## Output Discipline
- Plans → `tasks/todo.md`
- Reasoning/prompts → `docs/activity.md`
- Key choices → `docs/DECISIONS_LOG.md`
- Close each phase with Review in `tasks/todo.md`

## Sprint Cadence (Lightweight)
- Set Sprint Goal at top of `tasks/todo.md`
- Keep backlog ≤ 5 items
- Close with Review and update `CHANGELOG.md`
- See `DEPLOYMENT_TIERS.md` for staging/prod

## Scalability reminder
Design and code with statelessness, horizontal growth, and backpressure in mind.
For any new feature, propose a minimal scale path (cache/index/queue) and add notes to `docs/SCALABILITY_NOTES.md` when relevant.

