# Security Essentials

Principles
- Least privilege. Short-lived, scoped credentials only.
- No secrets in source, logs, or prompts. Ever.
- Assume public: anything in git may be seen by others.

Secrets Mgmt
- Use environment variables plus a manager (AWS SSM/Secrets Manager, GCP Secret Manager, 1Password CLI).
- Provide `.env.example` only (no real values). Add `.env*` to `.gitignore`.
- Rotate keys regularly; automate rotation for prod.

Repo Hygiene
- Enable GitHub: Secret scanning + Push Protection + Dependabot alerts.
- Require code review for merges to `main`.
- Sign commits if feasible (GPG/Sigstore).

Dependencies
- JS: `npm audit` (or `pnpm audit`).
- Python: `pip-audit` / `pip-tools` with pinned versions.
- Keep lockfiles committed.

Editor/AI Tools
- Limit AI extensions to “open file only” context. Disable any “send entire workspace” option.
- Exclude `.env`, `secrets.*`, and `*.pem` from any tool’s context/share settings.
- Review publisher reputation and required permissions for every extension.

Cloud/IAM
- Separate dev vs prod accounts/projects.
- Least-privilege IAM roles; no wildcards (`*`) on actions/resources.
- Budget + anomaly alerts enabled.

Logging/Telemetry
- Redact tokens/PII before logging. Treat logs as public.
- Disable verbose debug in prod; never log request headers containing auth.

Incident Response (leaked secret)
1) **Revoke/rotate** the key immediately.
2) **Purge from git history** (BFG Repo-Cleaner or `git filter-repo`) and force-push.
3) **Invalidate sessions/tokens** and audit access logs.
4) **Search** issues/PRs/chat exports for the secret.
5) **Document** the incident in `DECISIONS_LOG.md` with the fix + prevention.
