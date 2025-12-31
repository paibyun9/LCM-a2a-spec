# LCM A2A Verification Process (Normative)

This document defines the **only authoritative process** for issuing and maintaining
the **LCM-compatible (Verified)** designation.

This is a **normative contract**, not a guideline.

---

## 1. Authority

- **LCM** is the sole authority that MAY issue the **LCM-compatible (Verified)** designation.
- Self-claims or third-party claims MUST NOT be treated as Verified.

---

## 2. Eligibility Requirements

An implementation MUST satisfy **all** of the following to be eligible:

1. **Schema Compliance**
   - Registration payload MUST conform exactly to  
     `a2a-v5/registration/a2a_registration.schema.json`.

2. **Error Contract Compliance**
   - Error responses MUST conform to  
     `a2a-v5/registration/error_response.schema.json`.

3. **Registration Flow Compliance**
   - Validate → Issue Key → Record schema version.
   - API key MUST be issued once and stored only as a hash.

4. **Rate Limit Semantics**
   - Per-key deterministic rate limits MUST be enforced as defined in the spec.

---

## 3. Verification Grant

- When all requirements are met, LCM MAY issue a **verification token** or confirmation.
- Only after issuance MAY an implementation use the  
  **LCM-compatible (Verified)** badge.

---

## 4. Revocation

LCM MUST revoke Verified status if any of the following occur:

- Schema deviation
- Error contract deviation
- Policy or flow bypass
- Misrepresentation of verification status

Revocation is immediate and final unless re-verified.

---

## 5. Prohibited Usage

- Unverified implementations MUST NOT use:
  - The **LCM-compatible (Verified)** badge
  - Language implying official verification

Such usage is classified as **Non-LCM-compatible**.

---

## 6. External Reference

Platforms, marketplaces, and partners SHOULD require:

> “Only implementations designated **LCM-compatible (Verified)** by LCM are permitted.”

