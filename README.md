LCM — Decision-Time Separated Proof System

Architecture Epoch: V5 — Decision-Time Split (Gate / Ledger) [LOCKED]
Proof. Not Promise.

LCM is not a feature.
It is a decision-time–separated proof system that enables AI systems to act responsibly, verifiably, and at scale.

This repository provides a live, externally verifiable demo of the LCM architecture.

🔑 Core Idea (Why LCM)

Decision ≠ Result

Every automated decision must ship with proof, not just an outcome.

LCM enforces this by splitting decision time into two explicit phases:

Pre (Gate) — Can this decision be made?

Post (Ledger) — Can this decision be proven, audited, and explained?

This separation is not conceptual.
It is enforced at the API, schema, and routing level.

🧱 Architecture (V5 — LOCKED)
Decision-Time Split
Phase	Route	Purpose
Pre / Gate	/a2a/pre/*	Canonical, UI-safe decision
Post / Ledger	/a2a/post/*	Full audit, trace, evidence
Schemas

CanonicalDecision (Pre)
→ Minimal, stable, UX-safe

LedgerDecision (Post)
→ Full trace, evidence, regulator-ready

🚀 Live Public Demo (External)

This is not a mock.
These endpoints are live and externally accessible.

1️⃣ Canonical Decision (One-Line Proof)

Copy → Paste → Instant Trust

curl -s http://18.118.171.174/a2a/eval | python3 -m json.tool


Expected (CanonicalDecision):

{
  "decision": "allow",
  "reason_code": "EVIDENCE_HASH_MATCH"
}


Stable JSON

UI-safe

Contract-first

No admin keys required

2️⃣ Browser Demo (Human-Readable)

Open in any browser:

http://18.118.171.174/demo


Shows /a2a/eval

Human-friendly

Zero setup

Perfect for external reviewers, investors, or auditors

🧪 Local Run (Optional)

If you want to run it locally:

cd lcm_proof_ux
uvicorn main:app --reload --port 8000


Health check:

curl -s http://127.0.0.1:8000/ | python3 -m json.tool


Expected:

{
  "ok": true,
  "service": "lcm-proof-ux",
  "version": "0.3.0"
}

🔍 Canonical vs Full Response
Canonical (Default — UI-First)
curl -s http://18.118.171.174/a2a/eval | python3 -m json.tool

Full (Audit / Debug)
curl -s http://18.118.171.174/a2a/eval_full | python3 -m json.tool


✔ Same decision
✔ Different verbosity
✔ Same contract

📜 Design Principles

Decision ≠ Result
→ Every decision must carry proof

Canonical by default
→ Safe for UI, agents, and automation

Full on demand
→ Auditors, regulators, forensic analysis

OpenAPI as contract
→ Humans and machines onboard equally

🧠 What Makes LCM Different

Most systems say:

“Trust us.”

LCM says:

“Verify this.”

Proof is structural

Verification is external

Trust is earned at decision time

🧾 CTO Checklist (Reality Check)

 Server runs

 One-line external demo works

 Pre / Post routes separated

 CanonicalDecision enforced

 Nginx + public access verified

 External curl works (no VPN, no keys)

🏁 Final Statement

LCM is not a promise.
It is a proof system.

If an AI cannot explain why it decided,
then it was never trustworthy to begin with.

Proof. Not Promise.