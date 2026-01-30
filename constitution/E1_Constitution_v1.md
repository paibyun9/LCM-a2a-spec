# E1 Constitution — v1.0 (ACTIVE)

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
(Vendor Policy Relay)

**Canonical Version – English (Authoritative)**

LCM is not, and shall not be, the adjudicating authority of any policy under any circumstance.

All decisions concerning refunds, cancellations, contracts, rights, and obligations are made exclusively by the Vendor that registered the applicable policy.

LCM operates solely as a neutral middleware that relays vendor-provided policies and resulting outcomes as-is. LCM does not interpret, modify, relax, override, supplement, or re-adjudicate any policy or decision.

By using LCM or any LCM-issued API via any interface or agent, the user, agent, or organization acknowledges and agrees that all results delivered by LCM are relay outcomes derived from vendor policies, and not determinations made by LCM.

In the event of any dispute or misunderstanding, the Vendor’s policy remains the sole source of authority, and LCM shall not be deemed a decision-maker, arbitrator, or judge.


## E1-2. Pre / Post / Gray Zone 0 Definition

**Canonical Version – English (Authoritative)**

All decisions within LCM are governed by a strict Pre and Post boundary, with no intermediate decision space.

**Pre** refers to the state in which all applicable policies, rules, and conditions are fully defined and fixed prior to any LCM processing. All determinations of eligibility, permission, or validity originate exclusively from this Pre-defined policy state.

**Post** refers to the state in which outcomes produced by the application of Pre-defined policies are delivered, recorded, or executed outside of LCM. LCM does not alter, reconsider, or intervene in outcomes once they have entered the Post state.

**Gray Zone 0** means that no intermediate, discretionary, contextual, or human-judgment-based decision space exists between Pre and Post. LCM does not, and shall not, evaluate intent, fairness, hardship, special circumstances, or exceptions at any point.

Any request, condition, or scenario that cannot be conclusively resolved within the Pre-defined policy state is not escalated, adjusted, or interpreted; it shall result in a deterministic outcome based solely on the applicable policy or be subject to automatic rejection.

## E1-3. Policy Snapshot & Non-Retroactivity

**Canonical Version – English (Authoritative)**

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

Canonical Notes (non-substantive)

This English version is the sole authoritative and controlling text of E1-4.

Any translations are provided for reference only and shall have no legal effect.

Canonical Notes are informational only and do not modify or supplement the authoritative text.

### Canonical Notes (non-substantive)

This English version is the sole authoritative and controlling text of E1-4.

Any translations are provided for reference only and shall have no legal effect.

Canonical Notes are informational only and do not modify or supplement the authoritative text.


