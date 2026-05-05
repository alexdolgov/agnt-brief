# Agentic Brief: Inception

## Project Overview

- **Project:** Inception (inception)
- **Website:** inceptionlrt.com
- **Category:** Liquid Restaking
- **Chains (topography):** 1, 10, 8453, 42161, 81457
- **Chains (DeFiLlama):** 1
- **TVL:** $6,265,584 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2024-12-04
- **Audit history:** 6 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** mid_tvl_commercial_target

Inception has 11 deployed contract rows in current topography. This brief renders the 11 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 11 contracts across 5 chains. 5 have TP audit coverage (45.5%); 6 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| InceptionVault_EL | vault_pool | vault_pool | likely in scope | [0x99d648...cd5b](https://etherscan.io/address/0x99d64871c9848fda3b3ff1ec2fc84033401ccd5b) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xfe7153...5d5e](https://etherscan.io/address/0xfe715358368416e01d3a961d3a037b7359735d5e) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| XERC20 | token | token | audited (TP) | [0xd08c3f...4959](https://optimistic.etherscan.io/address/0xd08c3f25862077056cb1b710937576af899a4959) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| InitializableTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0xb65593...944e](https://basescan.org/address/0xb655932ee66a3c609d57cc24309a0e2c594c944e) |
| XERC20 | token | token | audited (TP) | [0x1aa53b...9f12](https://basescan.org/address/0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| XERC20 | token | token | audited (TP) | [0xd08c3f...4959](https://arbiscan.io/address/0xd08c3f25862077056cb1b710937576af899a4959) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| InceptionBridge | bridge | bridge | audited (TP) | [0xb81e55...1f1e](https://blastscan.io/address/0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e) |
| InceptionRatioFeed | oracle | oracle | unmatched | [0xfd07fd...4336](https://blastscan.io/address/0xfd07fd5ebea6f24888a397997e262179bf494336) |
| InETHRateProvider | core | core | unmatched | [0xc06609...a2b6](https://blastscan.io/address/0xc0660932c5dcad4a1409b7975d147203b1e9a2b6) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa9f8c7...80ff](https://blastscan.io/address/0xa9f8c770661bee8df2d026edb1cb6ff763c780ff) |
| unnamed | unknown | unknown | unmatched | [0x80d69e...02e2](https://blastscan.io/address/0x80d69e79258fe9d056c822461c4eb0b4ca8802e2) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 3 proxies on 1, 8453, 81457. 3 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xa83b09...3223, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 11 | 5 | 6 | 45.5% |
| **Total** | 11 | 5 | 6 | 45.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-05-20 | Veridise | The engagement was scoped to provide a security assessment of Bridge’s smart contracts. | unspecified | direct | [report](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) |
| unknown | OXORIO | Inception MellowV2 Symbiotic Oxorio | unspecified | direct | not available |
| unknown | Halborn | InceptionBridge Halborn | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

5 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://docs.inceptionlrt.com/resources/audit-reports.md](https://docs.inceptionlrt.com/resources/audit-reports.md) - audit_report_link
- [https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf) - audit_report_link
- [https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) - audit_report_link
- [https://github.com/inceptionlrt/smart-contracts/blob/feat/halborn_symbiotic_script/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/feat/halborn_symbiotic_script/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf) - audit_report_link
- [https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf) - audit_report_link
- [https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf) - audit_report_link
- [https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf) - audit_report_link
- [https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf) - audit_report_link

### Audit Reports (full list)

- 2024-05-20 - Veridise - The engagement was scoped to provide a security assessment of Bridge’s smart contracts. - https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf
- unknown - OXORIO - Inception MellowV2 Symbiotic Oxorio
- unknown - Halborn - InceptionBridge Halborn

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/inception.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $1,242.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:42:07.851Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $1,242.
