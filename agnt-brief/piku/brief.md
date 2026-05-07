# Agentic Brief: Piku

## Project Overview

- **Project:** Piku (piku)
- **Website:** piku.co
- **Category:** Yield
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $16,784,178 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 5 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Piku has 4 deployed contract rows in current topography. This brief renders the 4 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 4 contracts across 1 chains. 1 have TP audit coverage (25.0%); 3 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC20IssuanceUpgradeable_Blacklist_v1 | proxy | proxy | unmatched | [0x9e40b6...0370](https://etherscan.io/address/0x9e40b6be5affc984f36cf118c778f0a83be20370) |
| InverterBeaconProxy_v1 | proxy | proxy | audited (TP) | [0x433471...3552](https://etherscan.io/address/0x433471901ba1a8bde764e8421790c7d9bab33552) |
| LM_Oracle_Permissioned_v1 | oracle | oracle | likely in scope | [0x62c49b...4470](https://etherscan.io/address/0x62c49b6138d9926fcf86bb15b66193fcc9004470) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x098697...5fe6](https://etherscan.io/address/0x098697ba3fee4ea76294c5d6a466a4e3b3e95fe6) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1. 1 follow EIP-1967 / UUPS patterns; 1 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xb8eaa4...8508, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 4 | 1 | 3 | 25.0% |
| **Total** | 4 | 1 | 3 | 25.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Macro | 0xmacro.com/library/audits/inverter-1 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://0xmacro.com/library/audits/inverter-1](https://0xmacro.com/library/audits/inverter-1) - audit_report_link
- [https://1348667451-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F0bjHfif1xj95cheaAKP7%2Fuploads%2Fj2MGBiI7ljolQKmn1pKY%2Faudit-report-fm-oracle-redeeming-.pdf?alt=media&token=1040dd51-3d68-4aeb-8458-538c46b0053c](https://1348667451-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F0bjHfif1xj95cheaAKP7%2Fuploads%2Fj2MGBiI7ljolQKmn1pKY%2Faudit-report-fm-oracle-redeeming-.pdf?alt=media&token=1040dd51-3d68-4aeb-8458-538c46b0053c) - audit_report_link
- [https://docs.piku.co/piku/piku/security-and-risks.md](https://docs.piku.co/piku/piku/security-and-risks.md) - audit_report_link
- [https://docs.piku.co/piku/piku/security-and-risks/audits.md](https://docs.piku.co/piku/piku/security-and-risks/audits.md) - audit_report_link
- [https://drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view](https://drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view) - audit_report_link
- [https://github.com/hats-finance/Inverter-Network-0xe47e52c4fea05e555920f1dcdcc6fb8eca103eeb/blob/main/report.md](https://github.com/hats-finance/Inverter-Network-0xe47e52c4fea05e555920f1dcdcc6fb8eca103eeb/blob/main/report.md) - audit_report_link
- [https://github.com/InverterNetwork/contracts/blob/main/audits/2024-06-19-macro.pdf](https://github.com/InverterNetwork/contracts/blob/main/audits/2024-06-19-macro.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Macro - 0xmacro.com/library/audits/inverter-1

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/piku.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $0.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:39:35.175Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
