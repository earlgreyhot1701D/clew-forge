# Scalability Notes (Pragmatic, Stack-Agnostic)

Principle: design features so they can grow from demo to city-scale without rewrites.

- Stateless services by default; keep state in datastore/cache/queue
- Horizontal before vertical scaling
- Backpressure: rate limits, queues, load-shedding
- Graceful degradation: drop nonessential features first under load
- Idempotent handlers; retries with backoff + jitter
- Pagination/streaming for large responses
- Index hot queries; avoid N+1; batch writes
- AI calls: circuit-breakers; cache when allowed; log token/latency; model swaps via config
- Minimal load test on a happy path before “prod”
