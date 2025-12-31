# LCM A2A Partner Contract (v1)

This document is the canonical, linkable contract for integrating with LCM via A2A.

## Contract scope
- This contract defines the **Registration payload** and **runtime enforcement semantics**.
- Implementations are **LCM-compatible** only if they follow the MUST/MUST NOT rules below.

## 1) Registration payload (Gatekeeper) — MUST
- MUST send a JSON payload that validates against:
  - `a2a-v5/registration/a2a_registration.schema.json`
- MUST use the provided PASS/FAIL examples as the reference behavior:
  - PASS: `registration_trial.pass.json`, `registration_pro.pass.json`, `registration_partner.pass.json`
  - FAIL (expected): `registration_partner.fail.json`

## 2) Registration flow — MUST
- MUST validate payload first (reject mismatches with HTTP 422).
- MUST issue an API key only after validation.
- MUST record the schema version used for registration (`schema_version`) for audit/compatibility.

## 3) Key semantics (Passport) — MUST / MUST NOT
- MUST treat the API key as a **Bearer token**.
- MUST store only `api_key_hash` (never store the raw `api_key`).
- MUST show the raw `api_key` only once at creation time.

## 4) Runtime enforcement (OPA) — MUST
- MUST enforce OPA policy **per call** (post-registration).
- OPA enforcement is separate from registration validation; registration is schema-gated.

## 5) Rate limits — MUST
- MUST enforce limits **per API key**.
- When blocked, MUST return HTTP 429 with deterministic retry fields:
  - `retry_after_ms`, `window_ms`, `max`
- Trial default semantics (as currently specified in this repo):
  - maximum 4 successful requests per 10s window; 5th is blocked with HTTP 429

## 6) Error contract — MUST
- MUST return machine-readable errors using:
  - `a2a-v5/registration/error_response.schema.json`
- MUST provide these behaviors:
  - 422 schema mismatch: `error_422_schema_mismatch.example.json`
  - 401 invalid key: `error_401_invalid_key.example.json`
  - 429 rate limited: `error_429_rate_limited.example.json`

## 7) Compatibility boundary
- Any implementation that does not follow this contract is **Non-LCM-compatible**.
