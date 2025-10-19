# QA Checklist v3
## Structural
- One purpose per file; remove dead code
- Occam's Razor: simplest working design

## Readability & Style
- ESLint + Prettier (JS/TS); Ruff/Flake8 + Black (Python)
- Comments explain *why*; lines ~88–100 chars

## Correctness
- Unit tests for new logic; integration for key flows
- Edge cases: nulls, empties, errors, timeouts, races

## Interface
- Types/schemas updated (TS/Pydantic)
- No silent API changes; validate boundaries

## Security
- Secrets not in source; validate inputs; redact logs; dep scan

## Performance
- Avoid N+1; lazy-load or batch; time critical paths

## Accessibility
- Labels/alt text; keyboard paths; WCAG AA contrast; readable font tokens

## Documentation
- README delta; docstrings; runnable examples

## Ops
- Clean clone can run/build/test; `.env.example` current; CI matches local

## Scalability
- Stateless where possible; concurrency & timeouts set via env/config
- Hot paths measured; no N+1; indexes present for heavy queries
- Backpressure/rate limits; idempotent retries with exponential backoff + jitter
- Cache or queue bursty workloads; graceful degradation plan noted

