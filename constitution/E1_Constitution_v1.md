## @E1 Constitution — v1.0 (ACTIVE)

Status: **Authoritative (LOCKED)**  
Canonical Language: **English**  
Last Updated: **2026-01-29**

---

## Definitions

- **Vendor**: An entity that registers and provides authoritative policies to LCM.
- **User**: An individual or organization that interacts with LCM directly or indirectly.
- **LCM**: The middleware system that relays vendor-provided policies and resulting outcomes.
- **Event**: A transaction, request, or occurrence to which a vendor policy is applied.
- **Policy**: A set of rules and conditions defined and maintained by a Vendor.


## E1-1. Single Adjudicator Declaration  

**Vendor Policy Relay**

LCM is not, and shall not be, the adjudicating authority of any policy under any circumstance.

All decisions concerning refunds, cancellations, contracts, rights, and obligations are made exclusively by the Vendor that registered the applicable policy.

LCM operates solely as a neutral middleware that relays vendor-provided policies and resulting outcomes as-is. LCM does not interpret, modify, relax, override, supplement, or re-adjudicate any policy or decision.

By using LCM or any LCM-issued API via any interface or agent, the user, agent, or organization acknowledges and agrees that all results delivered by LCM are relay outcomes derived from vendor policies, and not determinations made by LCM.

In the event of any dispute or misunderstanding, the Vendor’s policy remains the sole source of authority, and LCM shall not be deemed a decision-maker, arbitrator, or judge.

## E1-2. Pre / Post / Gray Zone 0 Definition

All decisions within LCM are governed by a strict Pre and Post boundary, with no intermediate decision space.

**Pre** refers to the state in which all applicable policies, rules, and conditions are fully defined and fixed prior to any LCM processing. All determinations of eligibility, permission, or validity originate exclusively from this Pre-defined policy state.

**Post** refers to the state in which outcomes produced by the application of Pre-defined policies are delivered, recorded, or executed outside of LCM. LCM does not alter, reconsider, or intervene in outcomes once they have entered the Post state.

**Gray Zone 0** means that no intermediate, discretionary, contextual, or human-judgment-based decision space exists between Pre and Post. LCM does not, and shall not, evaluate intent, fairness, hardship, special circumstances, or exceptions at any point.

Any request, condition, or scenario that cannot be conclusively resolved within the Pre-defined policy state is not escalated, adjusted, or interpreted; it shall result in a deterministic outcome based solely on the applicable policy or be subject to automatic rejection.

## E1-3. Policy Snapshot & Non-Retroactivity

All decisions processed by LCM are irrevocably bound to the version of the Vendor’s policy that was effective at the exact time the relevant event occurred.

For each transaction, request, or event, LCM applies a policy snapshot representing the Vendor policy that was valid and active at the moment of occurrence. This snapshot constitutes the sole and exclusive basis for determining outcomes.

Any subsequent modification, update, replacement, or withdrawal of a Vendor policy shall have no retroactive effect on transactions or events that occurred prior to such change. Past outcomes shall not be reconsidered, reinterpreted, or reprocessed under any subsequent policy version.

Policy updates apply only to events occurring on or after the effective time of the updated policy. LCM does not compare, optimize, or select between different policy versions for any purpose.

By using LCM or any LCM-issued API, the user, agent, or organization acknowledges and agrees that policy snapshot fixation and non-retroactivity are fundamental operating principles of LCM, and that no claim may be made based on policy versions other than the one captured at the time of the event.

## E1-4. Vendor Obligations & Policy Provisioning

**API Eligibility & Continuity Requirements**

Access to any LCM-issued API is conditional upon the Vendor’s continuous fulfillment of the policy provisioning obligations defined in this section.

To be eligible for API issuance, a Vendor must provide LCM with complete, accurate, and authoritative policy information, including but not limited to refund, cancellation, contract, entitlement, and limitation policies, through officially designated sources or URLs.

The Vendor is solely responsible for ensuring that all provided policy information remains current, valid, and synchronized with the Vendor’s operative policies at all times. LCM does not verify, infer, or reconcile discrepancies between provided policies and the Vendor’s actual practices.

Any failure to provide, maintain, or update required policy information shall render the Vendor ineligible for continued API usage. In such cases, the Vendor may either update the required policy information to restore eligibility or voluntarily discontinue use of the LCM API.

LCM does not impose penalties, remedies, or discretionary enforcement actions in response to policy provisioning failures. API eligibility is determined solely by objective compliance with the provisioning requirements set forth herein.

By obtaining or using any LCM-issued API, the Vendor acknowledges and agrees that policy provisioning obligations are ongoing conditions of use, and that API access is neither unconditional nor guaranteed absent continuous compliance.


## E1-5. System State, Suspension, and Termination

**State-Based Operation Principle**

All interactions with LCM, including API access and request processing, are governed by explicit and observable system states.

LCM does not suspend, restrict, penalize, or terminate Vendors, Users, or Agents based on discretionary judgment, intent, or evaluation. Any limitation of functionality occurs solely as a result of a state transition triggered by objective conditions defined within this Constitution or applicable Vendor policies.

A system state may change due to, but is not limited to, loss of eligibility, incomplete or outdated policy provisioning, failure to meet technical requirements, or voluntary discontinuation by the Vendor.

State transitions are non-punitive, non-retaliatory, and non-discretionary. LCM does not issue warnings, impose sanctions, or negotiate reinstatement absent the restoration of objective eligibility conditions.

By using LCM or any LCM-issued API, the Vendor, User, or Agent acknowledges and agrees that all limitations, suspensions, or terminations are expressions of system state only, and do not constitute enforcement actions, judgments, or penalties by LCM.

## E1-6. Non-Adjudication and Limitation of Liability

**LCM Non-Responsibility Principle**


LCM does not exercise discretion or assume responsibility for the substance, legality, or policy-derived real-world consequences of any Vendor policy or resulting outcome.

All outcomes delivered through LCM are deterministic expressions of Vendor-defined policies and objective system states. LCM does not warrant the fairness, suitability, or commercial viability of such outcomes for any purpose.

LCM shall not be liable for any loss, claim, or dispute arising from the application of Vendor policies, including but not limited to economic loss, opportunity cost, or data-related liabilities.

LCM does not act as an agent, fiduciary, or guarantor for any party. It provides no legal, financial, or professional advice regarding the policies it relays.

By using LCM or any LCM-issued API, the Vendor, User, or Agent acknowledges and agrees that LCM’s role is strictly limited to policy relay and state-transition processing, and that all liability for decisions and outcomes rests solely with the originating Vendor and the applicable policy.

## E1-7. System State Disclosure and Signaling

**State Visibility Principle**

LCM communicates its operational condition exclusively through explicit and standardized system state indicators.

LCM does not explain, justify, or contextualize system states beyond their formal designation. State indicators are descriptive only and do not constitute advice, reasoning, or decision rationale.

Each system state reflects the current eligibility, availability, or operability of LCM functions, determined solely by the objective conditions and state-transition rules defined within this Constitution.

System state indicators provided via dashboards, logs, or API responses are intended to convey the present state of the system only. Such indicators shall not be interpreted as recommendations, warnings, or assurances of future availability.

By using LCM or any LCM-issued API, the Vendor, User, or Agent acknowledges and agrees that system state visibility is provided for technical transparency only, and that no inference or claim may be derived beyond the explicitly signaled state.

## E1-8. API Issuance as a Consequence of Contractual Assent

**API Eligibility and Agreement Principle**

Access to LCM APIs is not automatic and does not arise by default. API issuance is granted solely as a consequence of explicit contractual assent to the E1 Constitution and all applicable governing terms.

No Vendor, User, or Agent is entitled to receive or retain an LCM-issued API key absent affirmative agreement to all required contractual conditions in effect at the time of issuance.

API access reflects an active contractual relationship and a corresponding eligibility state. The issuance, activation, suspension, or revocation of an API key constitutes a state-based outcome and does not represent an endorsement or authorization of any underlying business activity.

Any use of an LCM-issued API without valid contractual assent, or following the withdrawal of such assent, is unauthorized and shall result in an immediate state transition to ineligibility without prior notice.

By requesting, receiving, or using an LCM-issued API, the Vendor, User, or Agent acknowledges that API access is strictly conditioned upon continuing contractual assent, and that the withdrawal of such assent results solely in the loss of API eligibility without further liability on the part of LCM.

### Canonical Notes (non-substantive)

This English version is the sole authoritative and controlling text of E1-8.

Any translations are provided for reference only and shall have no legal effect.

Canonical Notes are informational only and do not modify or supplement the authoritative text.


