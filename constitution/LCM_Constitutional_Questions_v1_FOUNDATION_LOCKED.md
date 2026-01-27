LCM Constitutional Questions — LOCKED
v1 — FOUNDATION
Status: LOCKED
Canonical source: LCM-a2a-spec
Any modification requires v2.

ANNEX A — LOCKED ZONES (Cross-Repository)

This annex defines non-negotiable, immutable zones that apply uniformly across all LCM repositories.

Any modification within these zones invalidates LCM compliance.

A.1 Core Constitutional Invariants (GLOBAL)
Invariant Description Mutable
Default Closed Any undefined input, intent, or policy results in CLOSED ❌
Gray Zone = 0 No partial, inferred, or ambiguous behavior allowed ❌
No Interpretation LCM does not infer, judge, or contextualize ❌
Proof Only Output Outputs contain structured proof only ❌
Failure as Proof Errors are not handled; they are emitted as proof ❌
Isolation over Control Unsafe execution is isolated, not mitigated ❌
A.2 Execution Entry & Control Flow
Component Rule Applies To
Single Execution Entry All execution must enter via the defined entry point only All repos
No Side Entry Any execution bypassing the entry is CLOSED All repos
Pre/Post Split Intent declaration and proof emission must be separated All repos
Decision ≠ Judgment Decisions are routing signals, not interpretations All repos
A.3 Output Discipline (A-2 Principle)
Rule Enforcement
stdout = Proof Only No logs, debug, or human text allowed
stderr = Debug Only Operational logs must never contaminate proof
Deterministic Shape Output schema must not vary by context
A.4 FAIL_SAFE & Resource Protection
Aspect Constitutional Rule
Infinite Execution Must trigger FAIL_SAFE
Non-Terminating Logic Must be isolated and terminated
Timeouts Enforced via isolation, not timers
Recovery Attempts Explicitly forbidden
ANNEX B — Repository-Specific LOCKED Scope
B.1 LCM-server-private (Execution Core)
LOCKED

Execution entry (/message)

Policy routing logic (decision branching only)

FAIL_SAFE isolation mechanism

stdout/stderr separation

ANCHOR (server start)

EXTENSIBLE

New policy definitions

New execution side-effects (payments, adapters)

Worker pool scaling strategy

Infrastructure configuration

B.2 LCM-a2a-spec (Public SSOT)
LOCKED

Intent and policy identifiers

Default Closed semantics

Constitutional Questions (this document)

Proof schema definitions

EXTENSIBLE

New intent categories

New agent integration examples

Adapter mappings (non-semantic)

B.3 lcm-proof-ux (Proof Interface)
LOCKED

Proof-only rendering principle

No explanation / no narration

Deterministic visual output

EXTENSIBLE

Visualization themes

Layout improvements

Accessibility enhancements

ANNEX C — Modification Rules

No LOCKED section may be altered under any circumstance.

All changes require explicit classification as EXTENSIBLE.

Any change affecting LOCKED semantics mandates a new constitutional version.

Version increments are additive; previous versions remain valid and immutable.

CONSTITUTIONAL CLOSING

LCM does not evolve by interpretation.
LCM evolves only by explicit extension above a locked foundation.

FINAL STATUS

Constitution: LOCKED

Version: v1 — FOUNDATION

Scope: All LCM repositories

Audience: Machines first. Humans optional.
