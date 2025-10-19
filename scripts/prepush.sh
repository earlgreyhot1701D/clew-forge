#!/usr/bin/env bash
set -e
echo "Running pre-push checks..."
if [ -f "package.json" ]; then npm run lint || true; npm run format || true; npm test || true; fi
python -m pip install --upgrade pip >/dev/null 2>&1 || true
pip install ruff black pytest >/dev/null 2>&1 || true
ruff check . || true
black --check . || true
pytest || true
echo "QA reminder: see docs/QA_CHECKLIST.md"
