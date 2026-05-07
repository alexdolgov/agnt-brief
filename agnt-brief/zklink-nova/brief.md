# Agentic Brief: zkLink Nova

## Project Overview

- **Project:** zkLink Nova (zklink-nova)
- **Website:** zklink.io
- **Category:** Chain
- **Chains (topography):** 1, 10, 8453, 42161, 59144, 81457
- **Chains (DeFiLlama):** 1, 10, 169, 324, 5000, 8453, 42161, 59144, 81457
- **TVL:** $124,643,836 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 7 audits; most recent 2026-05-01 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

zkLink Nova has 21 deployed contract rows in current topography. This brief renders the 18 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 18 contracts across 6 chains. 4 have TP audit coverage (22.2%); 14 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x5fd9f7...15cf](https://etherscan.io/address/0x5fd9f73286b7e8683bab45019c94553b93e015cf) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xad16ed...b6b6](https://etherscan.io/address/0xad16edcf7deb7e90096a259c81269d811544b6b6) |
| unnamed | unknown | unknown | unmatched | [0x825267...aeb5](https://etherscan.io/address/0x825267e0fa5cae92f98540828a54198dcb3eaeb5) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x46c8d0...fa1b](https://optimistic.etherscan.io/address/0x46c8d02e93d5a03899dfa7cf8a40a07589a3fa1b) |
| L1ERC20Bridge | token | token | audited (TP) | [0x21fe89...c3b8](https://optimistic.etherscan.io/address/0x21fe89ffb96d4092b42c8ab35dcfeee50a86c3b8) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x5bd512...6eaa](https://optimistic.etherscan.io/address/0x5bd51296423a9079b931414c1de65e7057326eaa) |
| ZkLink | core | core | audited (TP) | [0xe71a6c...b86e](https://optimistic.etherscan.io/address/0xe71a6cfb42d0398f6d6aed8a19987c83bbe3b86e) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0xe473ce...64dd](https://basescan.org/address/0xe473ce141b1416fe526eb63cf7433b7b8d7264dd) |
| L1ERC20Bridge | token | token | audited (TP) | [0xa89aa7...e715](https://basescan.org/address/0xa89aa7e3d34516eab7129e401215d5d1239ce715) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x80d12a...74d5](https://basescan.org/address/0x80d12a78efe7604f00ed07ab2f16f643301674d5) |
| ZkLink | core | core | audited (TP) | [0x08ca91...e388](https://basescan.org/address/0x08ca9154da9318323d3f6dfd872f5cdc4c85e388) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xfb0ad0...5585](https://arbiscan.io/address/0xfb0ad0b3c2605a7ca33d6badd0c685e11b8f5585) |
| unnamed | unknown | unknown | unmatched | [0xff73a1...420a](https://arbiscan.io/address/0xff73a1a1d27951a005eb23276dc99cb7f8d5420a) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminFacet | controller | controller | unmatched | [0x73b076...f049](https://lineascan.build/address/0x73b076425025a3bf059001d5be0e21384c8cf049) |
| DiamondProxy | proxy | proxy | unmatched | [0x5cb18b...df05](https://lineascan.build/address/0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x62ce24...30f8](https://lineascan.build/address/0x62ce247f34dc316f93d3830e4bf10959fce630f8) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8df0c2...500b](https://blastscan.io/address/0x8df0c2ba3916bf4789c50dec5a79b2fc719f500b) |
| unnamed | unknown | unknown | unmatched | [0x29ba92...78fd](https://blastscan.io/address/0x29ba92fe724bed5c5ebfd0099f2f64a6dc5078fd) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 10 proxies on 1, 10, 8453, 42161, 59144, 81457. 9 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x344a90...6de9, 0x34788d...9ba9, 0xc0db5c...b050, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 18 | 4 | 14 | 22.2% |
| **Total** | 18 | 4 | 14 | 22.2% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | Secure3 zklink Nova 2024.3 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | Secure3 zkLink Nova mergeToken 2024.4 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://blog.openzeppelin.com/december-diff-and-governance-audit](https://blog.openzeppelin.com/december-diff-and-governance-audit) - audit_report_link
- [https://docs.zklink.io/additional-resources/audits.md](https://docs.zklink.io/additional-resources/audits.md) - audit_report_link
- [https://docs.zklink.io/additional-resources/bug-bounty](https://docs.zklink.io/additional-resources/bug-bounty) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/ABDK_zkLink_Nova_2024.3.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/Secure3_zklink_Nova_2024.3.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/Secure3_zkLink%2520Nova%2520Arbitrator%2520Upgrade_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%2520Nova/Secure3_zkLink%2520Nova%2520Arbitrator%2520Upgrade_2024.4.pdf) - audit_report_link
- [https://github.com/zkLinkProtocol/zklink-intent-url/blob/dev/docs/develop.md](https://github.com/zkLinkProtocol/zklink-intent-url/blob/dev/docs/develop.md) - audit_report_link
- [https://static.zk.link/audit/ABDK_zkLink_Circuits_v_2_0.pdf](https://static.zk.link/audit/ABDK_zkLink_Circuits_v_2_0.pdf) - audit_report_link
- [https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_4_0.pdf](https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_4_0.pdf) - audit_report_link
- [https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_6_0.pdf](https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_6_0.pdf) - audit_report_link
- [https://static.zk.link/audit/ABDK_zkLink_Solidity_v_1_0.pdf](https://static.zk.link/audit/ABDK_zkLink_Solidity_v_1_0.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - Secure3 zklink Nova 2024.3
- unknown - discovery-ingest-placeholder - Secure3 zkLink Nova mergeToken 2024.4

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/zklink-nova.json
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
- **Per-contract TVL:** not persisted; protocol-level TVL only.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:40:14.944Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
