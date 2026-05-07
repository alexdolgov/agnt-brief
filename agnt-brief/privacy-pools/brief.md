# Agentic Brief: Privacy Pools

## Project Overview

- **Project:** Privacy Pools (privacy-pools)
- **Website:** privacypools.com
- **Category:** Privacy
- **Chains (topography):** 1, 10, 42161
- **Chains (DeFiLlama):** 1, 10, 42161
- **TVL:** $16,716,084 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Privacy Pools has 5 deployed contract rows in current topography. This brief renders the 5 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 5 contracts across 3 chains. 2 have TP audit coverage (40.0%); 3 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Entrypoint | core | core | audited (TP) | [0x15e355...1a2c](https://etherscan.io/address/0x15e355024de1cdc74addea7ebdf98418ba5b1a2c) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x681880...6b46](https://etherscan.io/address/0x6818809eefce719e480a7526d76bd3e561526b46) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Entrypoint | core | core | audited (TP) | [0x1cabfd...b364](https://optimistic.etherscan.io/address/0x1cabfda9a9c14d16302dd7c8f4b6e2a57aa7b364) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x441922...d15e](https://optimistic.etherscan.io/address/0x44192215fed782896be2ce24e0bfbf0bf825d15e) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x441922...d15e](https://arbiscan.io/address/0x44192215fed782896be2ce24e0bfbf0bf825d15e) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1, 10. 2 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x1f4fe2...e187, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 5 | 2 | 3 | 40.0% |
| **Total** | 5 | 2 | 3 | 40.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/circuits_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/circuits_audit_oxorio.md) - audit_report_link
- [https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md) - audit_report_link
- [https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_oxorio.md) - audit_report_link
- [https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/entrypoint_upgrade_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/entrypoint_upgrade_audit_oxorio.md) - audit_report_link
- [https://github.com/0xbow-io/privacy-pools-core/blob/main/SECURITY.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/SECURITY.md) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Coinbase-Verified-Pools-Spearbit-Security-Review-September-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Coinbase-Verified-Pools-Spearbit-Security-Review-September-2024.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/PrivacyRaven%3A%20Comprehensive%20Privacy%20Testing%20for%20Deep%20Learning/PrivacyRaven_OpenMined.pdf](https://github.com/trailofbits/publications/blob/master/presentations/PrivacyRaven%3A%20Comprehensive%20Privacy%20Testing%20for%20Deep%20Learning/PrivacyRaven_OpenMined.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-10-balancerlabs-managedpoolsmartcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-balancerlabs-managedpoolsmartcontracts-securityreview.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/privacy-pools.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $16,813.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:42:34.593Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $16,813.
