# LCM A2A Registration (SSOT)

This folder is the single source of truth for external agents integrating with LCM.

## 1) Schema
- `a2a_registration.schema.json`

## 2) Examples
- PASS: `registration_trial.pass.json`, `registration_pro.pass.json`, `registration_partner.pass.json`
- FAIL: `registration_partner.fail.json` (expected to fail)

## 3) Validate locally (no install)
From repo root:

make registration-test
