# @E1 ANNEX — LOCKED ZONES (v1)
## Cross-Repository Constitutional Constraints

Status: Authoritative (LOCKED)  
Canonical Language: English  
Version: v1 — FOUNDATION  

---

This Annex defines non-negotiable, immutable zones that apply uniformly across all LCM repositories.
Any modification within these zones invalidates LCM compliance.

---

## ANNEX A — LOCKED ZONES (Cross-Repository)

### A.1 Core Constitutional Invariants (GLOBAL)

Invariant | Description | Status
--- | --- | ---
Default Closed | Any undefined input, intent, or policy results in CLOSED | LOCKED
Gray Zone = 0 | No partial, inferred, or ambiguous behavior allowed | LOCKED
No Interpretation | LCM does not infer, judge, or contextualize | LOCKED
Proof Only Output | Outputs contain structured proof only | LOCKED
Failure as Proof | Errors are emitted as proof, not handled | LOCKED
Isolation over Control | Unsafe execution is isolated, not mitigated | LOCKED

These invariants are not guidelines; they are execution constraints.

---

### A.2 Execution Entry & Control Flow

- Single Execution Entry: All execution must enter via the defined entry point only.
- No Side Entry: Any execution bypassing the entry is CLOSED.
- Pre/Post Split: Intent declaration and proof emission must be logically separated.
- Decision ≠ Judgment: Decisions are routing signals, not interpretations.

---

### A.3 Output Discipline (A-2 Principle)

- stdout = Proof Only
- stderr = Debug Only
- Deterministic Shape: Output schema must not vary by execution context.

---

### A.4 FAIL_SAFE & Resource Protection

- Infinite Execution triggers FAIL_SAFE and immediate termination.
- Non-terminating logic must be isolated and forcibly closed.
- Recovery attempts are explicitly forbidden.

---

## ANNEX B — Repository-Specific LOCKED Scope

### B.1 LCM-server-private (Execution Core)

LOCKED:
- Execution entry (/message)
- Policy routing logic
- FAIL_SAFE mechanism
- ANCHOR

EXTENSIBLE:
- Policy definitions
- Adapters
- Worker pool scaling

---

### B.2 LCM-a2a-spec (Public SSOT)

LOCKED:
- Intent/Policy identifiers
- E1 Constitution
- Proof schema definitions

EXTENSIBLE:
- New intent categories
- Integration examples

---

### B.3 lcm-proof-ux (Proof Interface)

LOCKED:
- Proof-only rendering
- No narration
- Deterministic visual output

EXTENSIBLE:
- Visualization themes
- Accessibility enhancements

---

## ANNEX C — Modification Rules

- No LOCKED section may be altered.
- All changes must be explicitly classified as EXTENSIBLE.
- Any change affecting LOCKED semantics mandates a new constitutional version (v2).
- Version increments are additive; previous versions remain immutable.

---

## Constitutional Closing

LCM does not evolve by interpretation.
LCM evolves only by explicit extension above a locked foundation.

---

Final Status:
- Constitution: LOCKED
- Version: v1 — FOUNDATION
- Audience: Machines first. Humans optional.
