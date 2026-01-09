# Understand LCM in 5 minutes

> Decision-Time Proof Infrastructure  
> **Proof. Not Promise.**

---

## 1️⃣ What problem does LCM solve?

AI systems increasingly make autonomous decisions.
But when asked **“why did you decide this?”**, most systems can only answer with:
logs, explanations, or promises.

That is no longer enough.

**LCM exists to make decisions provable.**

LCM is:
- not a feature
- not an SDK
- not a policy engine

**LCM is a decision-time–separated proof system.**

---

## 2️⃣ The core idea: Decision-Time Split

LCM enforces a **hard architectural split**:

| Layer | Name | Responsibility |
|------|------|----------------|
| Pre | Gate | Decide intent only |
| Post | Ledger | Generate cryptographic proof |

**Invariant**
- Gate never sees evidence
- Ledger never changes intent

If you break this rule, you are no longer running LCM.

---

## 3️⃣ Try the Gate (Pre) — CanonicalDecision@pre

```bash
curl http://18.118.171.174/a2a/eval
Example response:

json
Copy code
{
  "decision": "allow",
  "reason_code": "EVIDENCE_HASH_MATCH"
}
This response is:

deterministic

machine-verifiable

free of ambiguous reasoning

4️⃣ What happens in Ledger (Post)?
Ledger binds the decision to evidence using:

hashes

signatures

timestamps

This creates a third-party verifiable proof.

Humans can read it.
Machines can verify it.
Auditors can reproduce it.

5️⃣ Why this matters
In autonomous systems:

explanations are mutable

logs are internal

promises are unverifiable

Only proof survives external scrutiny.

LCM ensures:

A system that cannot prove why it decided
was never safe to deploy.

What to do next
🔎 Explore the live API: http://18.118.171.174/docs

🧪 Call the canonical demo: http://18.118.171.174/a2a/eval

📖 Read the architecture spec: https://github.com/paibyun9/LCM-a2a-spec

Proof. Not Promise.
