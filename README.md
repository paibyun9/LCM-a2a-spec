## Official entry points (link these)
- **Partner Contract (canonical):** docs/LCM-A2A-Partner-Contract.md
- **Registration Schema (SSOT):** a2a-v5/registration/a2a_registration.schema.json
- **Examples (PASS/FAIL):** a2a-v5/registration/
- **Error Contract (machine-readable):** a2a-v5/registration/error_response.schema.json

## Anchors (stable references)
- [Registration Schema](#registration-schema)
- [Registration Flow](#registration-flow)
- [Key Semantics](#key-semantics)
- [OPA Enforcement](#opa-enforcement)
- [Rate Limits](#rate-limits)
- [Error Catalog](#error-catalog)
- [Non-LCM-compatible](#non-lcm-compatible)
# LCM A2A Spec (SSOT)

This repo is the **single source of truth** for external Agent developers integrating with LCM.

## Canonical entry points (link these)
- **README (this page):** contract overview + anchors for partners
- **Registration schema:** `a2a-v5/registration/a2a_registration.schema.json`
- **Error response schema:** `a2a-v5/registration/error_response.schema.json`
- **Spec checklist:** `a2a-v5/registration/CHECKLIST.md`

## Versioning
- Current registration schema version: **v1**
- Compatibility is defined by **exact schema conformance** + **documented error contract**.

## Registration flow (3 steps)
1) **Validate (Gatekeeper)**: payload must match schema or return **HTTP 422** with exact mismatch details  
2) **Issue key (Passport)**: key is issued once; store **hash only**; authorize via `Authorization: Bearer <key>`  
3) **Record (Ledger)**: permanently record `schema_version` used for registration

## Trial / Pro / Partner
All plans use the **same schema**. Plan differences are enforced via **plan-based required rules** and defaults.

## Schemas
- Registration: `a2a-v5/registration/a2a_registration.schema.json`
- Error response envelope: `a2a-v5/registration/error_response.schema.json`

## Examples
### Registration
- PASS: `a2a-v5/registration/registration_trial.pass.json`
- PASS: `a2a-v5/registration/registration_pro.pass.json`
- PASS: `a2a-v5/registration/registration_partner.pass.json`
- FAIL (expected): `a2a-v5/registration/registration_partner.fail.json`

### Errors (machine-readable contract)
- 422 schema mismatch: `a2a-v5/registration/error_422_schema_mismatch.example.json`
- 401 invalid API key: `a2a-v5/registration/error_401_invalid_key.example.json`
- 429 rate limited: `a2a-v5/registration/error_429_rate_limited.example.json`

## Rate limits
- Limits are enforced **per API key**.
- When blocked, LCM returns **HTTP 429** with `retry_after_ms`.
- Rate limits are deterministic and safe to client-side retry.

### Plan table (defaults)
| Plan    | Window | Max OK in window | Blocked request | Result |
|---------|--------|------------------|-----------------|--------|
| Trial   | 10s    | 4                | 5th             | 429    |
| Pro     | 10s    | (documented later) | (documented later) | 429 |
| Partner | 10s    | (documented later) | (documented later) | 429 |

## Non-LCM-compatible implementations
The following are **explicitly NOT LCM-compatible**:
- Payloads that do not fully conform to `a2a_registration.schema.json`
- Missing/extra fields outside the schema contract
- Error responses that do not match documented error schemas (422, 401, 429)
- Undocumented retry, rate-limit, or authorization behavior

Any implementation violating the above **must not claim LCM compatibility**.

## Validate locally (no install)
From repo root:
- `make registration-test`


## Partner contract (canonical)
- docs/LCM-A2A-Partner-Contract.md


## Registration Schema
See: a2a-v5/registration/a2a_registration.schema.json


## Registration Flow
See: docs/LCM-A2A-Partner-Contract.md


## Key Semantics
See: docs/LCM-A2A-Partner-Contract.md


## OPA Enforcement
OPA is enforced post-registration, per call.


## Rate Limits
See: docs/LCM-A2A-Partner-Contract.md


## Error Catalog
See: a2a-v5/registration/error_response.schema.json

## Copy-paste links (for partners)
- Partner Contract: https://github.com/paibyun9/LCM-a2a-spec/blob/main/docs/LCM-A2A-Partner-Contract.md
- Registration Schema (SSOT): https://github.com/paibyun9/LCM-a2a-spec/blob/main/a2a-v5/registration/a2a_registration.schema.json
- Examples (PASS/FAIL): https://github.com/paibyun9/LCM-a2a-spec/tree/main/a2a-v5/registration
- Error Contract: https://github.com/paibyun9/LCM-a2a-spec/blob/main/a2a-v5/registration/error_response.schema.json
- README Anchors (stable): https://github.com/paibyun9/LCM-a2a-spec#anchors-stable-references
