# LCM — Decision-Time Separated Proof System

> **Architecture Epoch: V5 — Decision-Time Split (Gate / Ledger) [LOCKED]**  
> Proof. Not Promise.

LCM is not a feature.  
It is a **decision-time–separated proof system** that enables AI systems to act
**responsibly, verifiably, and at scale**.

This repository provides a **live, externally verifiable public demo**
running on AWS.

---

## 🚀 Live Public Demo (AWS)

### Canonical Decision (One-Line Proof)

```bash
curl -s http://18.118.171.174/a2a/eval | python3 -m json.tool
Expected:

json
Copy code
{
  "decision": "allow",
  "reason_code": "EVIDENCE_HASH_MATCH"
}
Browser Demo
Open:

arduino
Copy code
http://18.118.171.174/demo
🔑 Core Idea
Decision ≠ Result
Every automated decision must ship with proof, not just an outcome.

🧾 Reality Check
 Public endpoint reachable

 One-line curl demo works

 Browser demo available

 External verification possible

📍 Live URLs
Canonical API: http://18.118.171.174/a2a/eval

Browser Demo: http://18.118.171.174/demo

