# Payment / Refund Adapter

## Classification
- Type: E3
- Scope: Adapter / Integration

## Purpose
- Provide a standardized adapter interface for payment and refund systems
  without altering LCM execution or proof semantics.

## Constitutional Safety Check
- Does this extension change execution behavior? NO
- Does this extension modify proof output? NO
- Can LCM run without this extension? YES

## Boundaries
- This adapter MUST NOT:
  - Make policy decisions
  - Interpret user intent
  - Modify FAIL_SAFE behavior
  - Alter Default Closed semantics

## Expected Usage
- External systems may map:
  - payment_request → LCM /message
  - refund_request → LCM /message
- LCM returns proof-only decisions.

## Failure Mode
- If removed:
  - Payment/refund integrations are unavailable
  - LCM core remains fully operational

## Status
- ACTIVE
