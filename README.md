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

## Quickstart (3 curls)

### 1) Register (valid → 201)
```bash
curl -X POST https://api.lcm.ai/a2a/register \
  -H 'content-type: application/json' \
  -d @a2a-v5/registration/registration_trial.pass.json
2) Register (invalid → 422)
bash
Copy code
curl -X POST https://api.lcm.ai/a2a/register \
  -H 'content-type: application/json' \
  -d @a2a-v5/registration/registration_partner.fail.json
3) Verify API key (200 / 401)
bash
Copy code
curl -X GET https://api.lcm.ai/a2a/keys/verify \
  -H "authorization: Bearer <LCM_API_KEY>"
Expected:

201 → registration accepted

422 → schema mismatch (with exact error path)

200 → valid key

401 → invalid key

## Normative Language (Binding Rules)

The key words **MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**,  
**SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, and **OPTIONAL** in this
document are to be interpreted as described in RFC 2119.

### Registration
- A registration payload **MUST** conform exactly to the published JSON Schema.
- Any deviation **MUST** be rejected with **HTTP 422** and a machine-readable error.
- Successful registration **MUST** issue an API key exactly once.

### API Key (Passport)
- LCM **MUST NOT** store raw API keys.
- Only `api_key_hash` **MUST** be stored server-side.
- Clients **MUST** treat the API key as a secret credential.

### Authorization
- Requests **MUST** present the API key via `Authorization: Bearer <key>`.
- Invalid or missing keys **MUST** result in **HTTP 401**.

### Rate Limits
- Rate limits **MUST** be enforced per API key.
- When exceeded, LCM **MUST** return **HTTP 429** with deterministic retry metadata.

Any implementation that does not follow the above rules is **Non-LCM-compatible**.

## Copy-paste summary (for partner docs)

- **All A2A registration payloads MUST conform to the LCM schema**:
  https://github.com/paibyun9/LCM-a2a-spec/tree/main/a2a-v5/registration
- **Any deviation in schema, error shape, or flow is Non-LCM-compatible**.
- **Clients MAY validate locally using `make registration-test` before sending requests**.


## Normative requirement (for internal platform docs)

> **All A2A registration payloads MUST conform to the LCM A2A Specification (schema, error contracts, and flow) to be considered compatible.**

Canonical spec:
https://github.com/paibyun9/LCM-a2a-spec/tree/main/a2a-v5/registration


---

## LCM-compatible (official term)

**LCM-compatible** means an implementation that **fully conforms** to all of the following:

1. The official LCM A2A JSON Schema (registration payload)
2. The official LCM error contracts (422, 401, 429, etc.)
3. The official LCM registration and authorization flow

Any implementation that deviates from **any** of the above is **Non-LCM-compatible**.

### Normative statement

> An implementation **MUST** be LCM-compatible to be considered compliant with the LCM A2A protocol.

### Badge usage (recommended)

Partners and platforms MAY describe their integration as:

> **“LCM-compatible”**

only if all compatibility requirements are met.

Canonical definition:
https://github.com/paibyun9/LCM-a2a-spec

---

