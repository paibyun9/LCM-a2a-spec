# LCM A2A Spec (SSOT)

**External entry point:** https://github.com/paibyun9/LCM-a2a-spec
**Do not use any other repo links for A2A integration docs.**

# LCM A2A Spec (SSOT)

This repo is the single source of truth for external Agent developers integrating with LCM.

## What to use

## Error Catalog (machine-readable)
LCM always returns a machine-readable JSON error body for failed requests.
This repo contains the canonical error response schema + examples (401/422/429).
- Schema: `a2a-v5/registration/a2a_registration.schema.json`
- Examples:
  - PASS: `registration_trial.pass.json`, `registration_pro.pass.json`, `registration_partner.pass.json`
  - FAIL (expected): `registration_partner.fail.json`

## Validate locally (no install)
From repo root:

make registration-test

## Registration Flow (3 steps)

1. **Validate (The Gatekeeper)**  
   Incoming registration JSON is strictly validated against `a2a_registration.schema.json`.  
   Any mismatch returns **422 Unprocessable Entity** with precise error details.

2. **Issue Key (The Passport)**  
   On successful validation, partner metadata is stored and a unique `lcm_api_key` is issued.  
   The key is shown **only once at creation time**.

3. **Record (The Ledger)**  
   The schema version used for registration is permanently recorded for audit and compatibility.


## External Access

This repository is the **only official entry point** for external Agents integrating with LCM.  
All A2A onboarding, validation, and integration guidance **must refer to this repository**.

## Trial placement
Trial is the same registration flow, but with the lightest required fields.
Use plan="trial" and only provide the Trial-minimum required properties; all other fields may be omitted.
Validation still uses the same schema; differences are enforced via plan-based required rules.


## Policy Enforcement (OPA)

OPA policies are **not** evaluated during registration.
They are enforced **on every API call after registration**, using the issued `lcm_api_key`.

Registration validates structure and intent.
OPA validates **runtime behavior, safety, and execution conditions** per request.

- 429 (Rate limited): a2a-v5/registration/error_429_rate_limited.example.json
