# LCM A2A Spec — Checklist (Gatekeeper)

This checklist defines the minimum, non-negotiable rules for "LCM-compatible" integrations.

## 1) Registration payload (schema gate)
- Payload MUST validate against: `a2a-v5/registration/a2a_registration.schema.json`
- `schema_version` MUST be `v1`
- `plan` MUST be one of: `trial | pro | partner`
- Plan-based required fields are enforced by the schema itself (if/then rules)

## 2) Error contract (machine-readable)
- Errors MUST follow: `a2a-v5/registration/error_response.schema.json`
- Schema mismatch MUST return HTTP 422 with deterministic field-level details
- Invalid API key MUST return HTTP 401 (`INVALID_API_KEY`)
- Rate limit MUST return HTTP 429 (`RATE_LIMITED`) with `retry_after_ms`

## 3) Key semantics (passport)
- API key is issued once at creation time
- LCM stores only `api_key_hash` (never store raw api_key)
- Requests are authorized by API key (Bearer)

## 4) Rate limits (deterministic)
- Limits are enforced per API key
- Trial default: 4 successful requests per 10s window; 5th is blocked with HTTP 429
- Response includes `retry_after_ms`, `window_ms`, `max`
