# Agentic Brief: Ankr

## Project Overview

- **Project:** Ankr (ankr)
- **Website:** ankr.com
- **Category:** Liquid Staking
- **Chains (topography):** 1, 56, 100, 250, 43114
- **Chains (DeFiLlama):** 1, 56, 100, 250, 43114
- **TVL:** $121,905,817 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 16 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Ankr has 14 deployed contract rows in current topography. This brief renders the 13 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 13 contracts across 5 chains. 1 have TP audit coverage (7.7%); 12 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0xe95a20...c3cb](https://etherscan.io/address/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb) |
| AETH_R21 | core | core | unmatched | [0xe672e0...da64](https://etherscan.io/address/0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| aBNBc_R1 | core | core | audited (TP) | [0x2c00ce...c26e](https://bscscan.com/address/0x2c00ce1a935ff8c9e78580533e2e17c36281c26e) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x52f24a...8827](https://bscscan.com/address/0x52f24a5e03aee338da5fd9df68d2b6fae1178827) |

### gnosis (chain_id 100)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ProviderRegistry | registry | registry | unmatched | [0x6c6f91...3929](https://gnosisscan.io/address/0x6c6f910a79639dcc94b4feef59ff507c2e843929) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xfd0f61...34d6](https://gnosisscan.io/address/0xfd0f61255913825da1c194b985f04982966c34d6) |
| unnamed | unknown | unknown | unmatched | [0x26dcfb...480c](https://gnosisscan.io/address/0x26dcfbfa8bc267b250432c01c982eaf81cc5480c) |
| unnamed | unknown | unknown | unmatched | [0x4069d8...7362](https://gnosisscan.io/address/0x4069d8a3de3a72eca86ca5e0a4b94619085e7362) |
| unnamed | unknown | unknown | unmatched | [0x8a2f83...e27a](https://gnosisscan.io/address/0x8a2f83347f0e59faefe2320b7422f8aa432ce27a) |
| unnamed | unknown | unknown | unmatched | [0xb6fcfc...db0f](https://gnosisscan.io/address/0xb6fcfcc497271d837c050ec912004bca0d70db0f) |

### fantom (chain_id 250)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0xcfc785...5179](https://ftmscan.com/address/0xcfc785741dc0e98ad4c9f6394bb9d43cd1ef5179) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FutureCertAVAX_R3 | core | core | unmatched | [0xfc8d81...d0b5](https://snowtrace.io/address/0xfc8d81a01ded207ad3deb4fe91437cae52ded0b5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc33448...27f6](https://snowtrace.io/address/0xc3344870d52688874b06d844e0c36cc39fc727f6) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 4 proxies on 1, 56, 100, 43114. 3 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x2ffc59...33c0, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 13 | 1 | 12 | 7.7% |
| **Total** | 13 | 1 | 12 | 7.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Veridise | smart contract security audit ankrbnb veridise feb 2023 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/liquid-staking/eth/security.mdx](https://github.com/Ankr-network/ankr-docs/blob/main/pages/liquid-staking/eth/security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/_meta.json](https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/_meta.json) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/blockchain-and-evm-security.mdx](https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/blockchain-and-evm-security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/off-chain-security.mdx](https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/off-chain-security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/on-chain-security.mdx](https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/on-chain-security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/system-smart-contracts.mdx](https://github.com/Ankr-network/ankr-docs/blob/main/pages/scaling-services-sidechains/bnb-sidechain/security/system-smart-contracts.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pages/staking-extra/audit-reports.mdx](https://github.com/Ankr-network/ankr-docs/blob/main/pages/staking-extra/audit-reports.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/ankr_bridge_security_audit.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/ankr_bridge_security_audit.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/ankr_delegated_staking_audit_veridise.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/ankr_delegated_staking_audit_veridise.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_aeth_beosin.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_aeth_beosin.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_ankreth_salus.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_ankreth_salus.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_avax_beosin.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_avax_beosin.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_bnb_peckshield.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_bnb_peckshield.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_bnb.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_bnb.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_flow_halborn.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_flow_halborn.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_ftm.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_ftm.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_matic.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit_matic.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/smart_contract_security_audit.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/stkr_smart_contract_auditing_report.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/stkr_smart_contract_auditing_report.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/blob/main/pdf/system_smart_contracts_security_audit.pdf](https://github.com/Ankr-network/ankr-docs/blob/main/pdf/system_smart_contracts_security_audit.pdf) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/_meta.json](https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/_meta.json) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/blockchain-and-evm-security.mdx](https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/blockchain-and-evm-security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/off-chain-security.mdx](https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/off-chain-security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/on-chain-security.mdx](https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/on-chain-security.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/system-smart-contracts.mdx](https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/scaling-services-sidechains/bnb-sidechain/security/system-smart-contracts.mdx) - audit_report_link
- [https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/staking-extra/audit-reports.mdx](https://github.com/Ankr-network/ankr-docs/raw/refs/heads/main/pages/staking-extra/audit-reports.mdx) - audit_report_link
- [https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/stkr_smart_contract_auditing_report.pdf](https://www.ankr.com/docs/pdf/stkr_smart_contract_auditing_report.pdf) - audit_report_link
- [https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Veridise - smart contract security audit ankrbnb veridise feb 2023

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/ankr.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $23.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:38:35.073Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $23.
