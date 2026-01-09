# LCM — Decision-Time Separated Proof System

> **Architecture Epoch: V5 — Decision-Time Split (Gate / Ledger) [LOCKED]**  
> Routes: `/a2a/pre/*` = Gate, `/a2a/post/*` = Ledger  
> Schemas: Pre = `CanonicalDecision`, Post = `LedgerDecision`  
> Rule: ambiguous code = ❌ delete

---

LCM defines a hard boundary between **making a decision** and **proving that decision**.

This repository exposes a **live, externally verifiable implementation**
of that architecture.

---

## Step 1. Server Run (Health)

### Live (AWS)

```bash
curl -i http://18.118.171.174/health
Expected:

json
Copy code
{
  "ok": true,
  "system": "LCM PayAssistant",
  "status": "alive"
}
This confirms:

Server is running

Public access is enabled

Health is machine-verifiable

Step 2. One-line Demo (CanonicalDecision)
Copy → Paste → Trust

bash
Copy code
curl -s http://18.118.171.174/a2a/eval | python3 -m json.tool
Expected (canonical, UI-safe):

json
Copy code
{
  "decision": "allow",
  "reason_code": "EVIDENCE_HASH_MATCH"
}
Properties:

Deterministic

Stable schema

Safe for UI, agents, and automation

Step 3. Canonical vs Ledger (Decision-Time Separation)
Canonical (Gate)
Minimal

Stable

Externally consumable

No internal detail leakage

http
Copy code
GET /a2a/eval
Ledger (Post) — LOCKED
Evidence

Trace

Audit material

Time-indexed proof

h
Copy code
/a2a/post/*
Ledger endpoints are structurally reserved and will be enabled
only when proof material is immutable.

Step 4. Human Verification (Browser Demo)
Open in any browser:

arduino
Copy code
http://18.118.171.174/demo
This page:

Calls /a2a/eval

Renders canonical JSON

Requires no credentials

Designed for:

External reviewers

Auditors

Non-technical stakeholders

Step 5. External Verification (No Trust Required)
All steps above can be verified by:

Any machine

Any human

Without credentials

Without prior context

This is proof by construction, not promise.

Design Principles
Decision ≠ Result

Proof is not optional

Canonical by default

Ledger by necessity

Open verification beats internal assurance

CTO Checklist
 Public endpoint reachable

 Canonical decision stable

 Decision-time separation enforced

 Browser verification available

 External reproduction possible

 No ambiguous contracts

📜 The LCM Manifesto
LCM is not a feature.
It is not an SDK.
It is not a policy engine.

It is a decision-time–separated proof system.

In a world where AI systems act autonomously,
trust is no longer granted — it must be proven.

“If a system cannot explain why it decided, it was never safe to deploy.”

Proof. Not Promise.
Live Endpoints
Canonical Decision:
http://18.118.171.174/a2a/eval

Browser Demo:
http://18.118.171.174/demo

Status
SCORP LOCKED.
This document defines the system boundary.
Changes require a new architecture epoch.

