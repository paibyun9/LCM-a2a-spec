# LCM A2A Spec (SSOT)

This repo is the single source of truth for external Agent developers integrating with LCM.

## What to use
- Schema: `a2a-v5/registration/a2a_registration.schema.json`
- Examples:
  - PASS: `registration_trial.pass.json`, `registration_pro.pass.json`, `registration_partner.pass.json`
  - FAIL (expected): `registration_partner.fail.json`

## Validate locally (no install)
From repo root:

make registration-test
