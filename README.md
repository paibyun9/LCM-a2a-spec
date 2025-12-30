# LCM A2A Spec (SSOT)

This repo is the **single source of truth** for LCM external Agent integration.

## A2A Registration (Schema + Examples)
- Schema: `a2a-v5/registration/a2a_registration.schema.json`
- Examples:
  - PASS: `registration_trial.pass.json`
  - PASS: `registration_pro.pass.json`
  - PASS: `registration_partner.pass.json`
  - FAIL (expected): `registration_partner.fail.json`

## Validate locally (no install)
```bash
make registration-test
