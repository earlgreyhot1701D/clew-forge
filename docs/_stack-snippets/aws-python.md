# AWS + Python (Occam Addendum)
Principle: serverless-first, least-privilege IAM.
Guardrails: pinned deps, no secrets in env, S3 encryption, sane timeouts, avoid heavy libs, Bedrock model IDs via env.
Quick Checks: pytest -q; ruff; black --check; pip-audit || true
Ship Criteria: one-command deploy; rollback plan; cost awareness.
