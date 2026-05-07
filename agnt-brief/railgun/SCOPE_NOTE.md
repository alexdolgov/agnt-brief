# Agentic Brief: Railgun

## Project Overview

- **Project:** Railgun (railgun)
- **Website:** railgun.org
- **Category:** Privacy
- **Chains (topography):** 1, 56, 137, 42161
- **Chains (DeFiLlama):** 1, 56, 137, 42161
- **TVL:** $372,378,570 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 2 audits; most recent 2026-04-30 (5 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Railgun has 13 deployed contract rows in current topography. This brief renders the 13 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 13 contracts across 4 chains. 3 have TP audit coverage (23.1%); 10 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| PausableUpgradableProxy | proxy | proxy | unmatched | [0xfa7093...a4b9](https://etherscan.io/address/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9) |
| RailToken | token | token | likely in scope | [0xe76c6c...a33d](https://etherscan.io/address/0xe76c6c83af64e4c60245d8c7de953df673a7a33d) |
| Staking | staking | staking | audited (TP) | [0xee6a64...ee20](https://etherscan.io/address/0xee6a649aa3766bd117e12c161726b693a1b2ee20) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| PausableUpgradableProxy | proxy | proxy | unmatched | [0x590162...8a10](https://bscscan.com/address/0x590162bf4b50f6576a459b75309ee21d92178a10) |
| RailgunSmartWallet | core | core | unmatched | [0x2c5b94...f05d](https://bscscan.com/address/0x2c5b94966f220f8f71f7387171dc33c0eaaef05d) |
| RailTokenFixedSupply | token | token | likely in scope | [0x3f847b...737f](https://bscscan.com/address/0x3f847b01d4d498a293e3197b186356039ecd737f) |
| Staking | staking | staking | audited (TP) | [0x753f0f...41dc](https://bscscan.com/address/0x753f0f9ba003dda95eb9284533cf5b0f19e441dc) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| PausableUpgradableProxy | proxy | proxy | unmatched | [0x19b620...8c71](https://polygonscan.com/address/0x19b620929f97b7b990801496c3b361ca5def8c71) |
| RailgunSmartWallet | core | core | unmatched | [0x2c5b94...f05d](https://polygonscan.com/address/0x2c5b94966f220f8f71f7387171dc33c0eaaef05d) |
| RailTokenFixedSupply | token | token | likely in scope | [0x92a9c9...714f](https://polygonscan.com/address/0x92a9c92c215092720c731c96d4ff508c831a714f) |
| Staking | staking | staking | audited (TP) | [0x9ac2ba...ddc1](https://polygonscan.com/address/0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| PausableUpgradableProxy | proxy | proxy | unmatched | [0xfa7093...a4b9](https://arbiscan.io/address/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9) |
| unnamed | unknown | unknown | unmatched | [0x2e1494...a40c](https://arbiscan.io/address/0x2e14949ce0133ccfd4c0cbe707ba878015a7a40c) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 56, 137. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x76eb57...4624, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 13 | 3 | 10 | 23.1% |
| **Total** | 13 | 3 | 10 | 23.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Hacken | 2021 11 02%20Hacken | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 5 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) - audit_report_link
- [https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) - audit_report_link
- [https://github.com/Railgun-Community/community-faqs/blob/main/common/broken-reference/README.md](https://github.com/Railgun-Community/community-faqs/blob/main/common/broken-reference/README.md) - audit_report_link
- [https://github.com/satoshilabs/slips/blob/master/slip-0044.md](https://github.com/satoshilabs/slips/blob/master/slip-0044.md) - audit_report_link

### Audit Reports (full list)

- unknown - Hacken - 2021 11 02%20Hacken

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/railgun.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $59,340,820.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:35:40.093Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $59,340,820.
