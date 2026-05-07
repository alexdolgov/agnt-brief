# Agentic Brief: Brotocol

## Project Overview

- **Project:** Brotocol (brotocol)
- **Website:** brotocol.xyz
- **Category:** Bridge Aggregator
- **Chains (topography):** 1, 56, 8453, 42161, 43114, 59144
- **Chains (DeFiLlama):** 1, 56, 34443
- **TVL:** $37,656,672 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 10 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Brotocol has 41 deployed contract rows in current topography. This brief renders the 40 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 40 contracts across 6 chains. 5 have TP audit coverage (12.5%); 35 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeRegistry | bridge | bridge | audited (TP) | [0x13b72a...6673](https://etherscan.io/address/0x13b72a19e221275d3d18ed4d9235f8f859626673) |
| BridgeToken | token | token | likely in scope | [0x2aed35...8430](https://etherscan.io/address/0x2aed35a18bc02472519ca6f25b70a8e9fe938430) |
| BridgeToken | token | token | likely in scope | [0x31761a...3b0b](https://etherscan.io/address/0x31761a152f1e96f966c041291644129144233b0b) |
| BridgeToken | token | token | likely in scope | [0x80074f...b7cd](https://etherscan.io/address/0x80074f342764027f5c4e2f7cd7d0ded611dfb7cd) |
| BridgeToken | token | token | likely in scope | [0xd31a59...b89c](https://etherscan.io/address/0xd31a59c85ae9d8edefec411d448f90841571b89c) |
| SPX | core | core | unmatched | [0xe0f63a...c56c](https://etherscan.io/address/0xe0f63a424a4439cbe457d80e4f4b51ad25b2c56c) |
| unnamed | unknown | unknown | unmatched | [0x65dfac...4090](https://etherscan.io/address/0x65dfacfd08afdd1cc02caf3de411661603394090) |
| unnamed | unknown | unknown | unmatched | [0x73f0f5...7138](https://etherscan.io/address/0x73f0f50815ca4698d8e722cf1d054d223a217138) |
| unnamed | unknown | unknown | unmatched | [0x7d4de6...1d9d](https://etherscan.io/address/0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d) |
| unnamed | unknown | unknown | unmatched | [0xa6420e...31bb](https://etherscan.io/address/0xa6420eba9b8c514a5793429ba2873274a63531bb) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeEndpointWithSwap | router | router | audited (TP) | [0x529871...0092](https://bscscan.com/address/0x5298718429046b1d38106864bbfdc9326c840092) |
| BridgeRegistry | bridge | bridge | audited (TP) | [0xffda60...e7f5](https://bscscan.com/address/0xffda60ed91039dd4de20492934bc163e0f61e7f5) |
| BridgeToken | token | token | likely in scope | [0x0f38ed...ce03](https://bscscan.com/address/0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03) |
| BridgeToken | token | token | likely in scope | [0x2e512b...cbc8](https://bscscan.com/address/0x2e512ba02454fc48269a9589512239d64602cbc8) |
| BridgeToken | token | token | likely in scope | [0x305a85...6ee9](https://bscscan.com/address/0x305a85e892e89fa0a2bcd92337682d55559a6ee9) |
| BridgeToken | token | token | likely in scope | [0x5879cd...b231](https://bscscan.com/address/0x5879cdd0a4880d5dc37c5aa8ee0d1f319711b231) |
| BridgeToken | token | token | likely in scope | [0x916a82...c81d](https://bscscan.com/address/0x916a82e34430804d9b65e0b5ae7d07ae7439c81d) |
| MigrateToken | token | token | likely in scope | [0xd15b99...520d](https://bscscan.com/address/0xd15b997505739c02564de7f0e010b42b2f81520d) |
| MultisigWallet | governance | governance | unmatched | [0x430637...d41e](https://bscscan.com/address/0x4306374f07382b36aae832a50831c8c5b26cd41e) |
| TeamToken | token | token | likely in scope | [0x9bf543...fe3c](https://bscscan.com/address/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c) |
| Token | token | token | likely in scope | [0x795d27...03f3](https://bscscan.com/address/0x795d2710e383f33fbebe980a155b29757b6703f3) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeEndpointWithSwap | router | router | audited (TP) | [0x18c05e...8fa7](https://basescan.org/address/0x18c05ec3799eb15fe49a141ce844e55514438fa7) |
| BridgeToken | token | token | likely in scope | [0x9e801c...4072](https://basescan.org/address/0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeRegistry | bridge | bridge | audited (TP) | [0x88af5f...d66c](https://arbiscan.io/address/0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c) |
| BridgeToken | token | token | likely in scope | [0x707272...57e2](https://arbiscan.io/address/0x70727228db8c7491bf0ad42c180dbf8d95b257e2) |
| BridgeToken | token | token | likely in scope | [0x7a087e...afe0](https://arbiscan.io/address/0x7a087e75807f2e5143c161a817e64df6dc5eafe0) |
| BridgeToken | token | token | likely in scope | [0xa831a4...3f37](https://arbiscan.io/address/0xa831a4e181f25d3b35949e582ff27cc44e703f37) |
| BridgeToken | token | token | likely in scope | [0xcd5ed0...a378](https://arbiscan.io/address/0xcd5ed0b0b1e107d331833715932b4a596bfba378) |
| BridgeToken | token | token | likely in scope | [0xdfd066...af71](https://arbiscan.io/address/0xdfd0660032c2d0d38a9092a43d1669d6568caf71) |
| MultisigWallet | governance | governance | unmatched | [0xf162b6...cf44](https://arbiscan.io/address/0xf162b6467eaf066a513a4b9235009d60c1facf44) |
| PepeToken | token | token | likely in scope | [0x25d887...bb00](https://arbiscan.io/address/0x25d887ce7a35172c62febfd67a1856f20faebb00) |
| unnamed | unknown | unknown | unmatched | [0x7a5912...5baf](https://arbiscan.io/address/0x7a5912c6a188d7217db285c890be61d8503a5baf) |
| unnamed | unknown | unknown | unmatched | [0xab01bb...60c5](https://arbiscan.io/address/0xab01bbc2ee103d227f2eee50b230506508b560c5) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0x49d5c2...0bab](https://snowtrace.io/address/0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab) |
| ERC20BridgeToken | token | token | likely in scope | [0x5e0e90...fb59](https://snowtrace.io/address/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59) |
| unnamed | unknown | unknown | unmatched | [0x62f7d5...e79c](https://snowtrace.io/address/0x62f7d5f4adf9521cfc609ba452839dcb4e81e79c) |
| unnamed | unknown | unknown | unmatched | [0xd96f5d...a060](https://snowtrace.io/address/0xd96f5d515a679d4a5343eed73d26535a3326a060) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0x24a44c...29a7](https://lineascan.build/address/0x24a44c95452df9fec1876f7b907e2dd2adaa29a7) |
| BridgeToken | token | token | likely in scope | [0xce83dd...70cb](https://lineascan.build/address/0xce83dd21264323c1d7d246f347db84a8180970cb) |
| MultisigWallet | governance | governance | unmatched | [0x3280a4...9f37](https://lineascan.build/address/0x3280a4031d7990d1905d7823e7725cb9ad649f37) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x4687f8...1ae1. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 40 | 5 | 35 | 12.5% |
| **Total** | 40 | 5 | 35 | 12.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | XLink Bridge Endpoint Audit 2024 06 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | XLink EVM Endpoint Audit 2025 04 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | XLINK Solana Endpoint Audit 2025 05 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf](https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf) - audit_report_link
- [https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf](https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf) - audit_report_link
- [https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf](https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf) - audit_report_link
- [https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf](https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf) - audit_report_link
- [https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf](https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf) - audit_report_link
- [https://docs.brotocol.xyz/developers/brotocol-contracts/security-audits.md](https://docs.brotocol.xyz/developers/brotocol-contracts/security-audits.md) - audit_report_link
- [https://github.com/Brotocol-xyz/xlink/blob/main/site/documentation/contracts/ethereum-contract-addresses.md](https://github.com/Brotocol-xyz/xlink/blob/main/site/documentation/contracts/ethereum-contract-addresses.md) - audit_report_link
- [https://github.com/Brotocol-xyz/xlink/blob/main/site/documentation/integrations/contract-deployment.md](https://github.com/Brotocol-xyz/xlink/blob/main/site/documentation/integrations/contract-deployment.md) - audit_report_link
- [https://github.com/xlink-network/xlink-docs/blob/main/developers/security-audits.md](https://github.com/xlink-network/xlink-docs/blob/main/developers/security-audits.md) - audit_report_link
- [https://github.com/xlink-network/xlink-docs/blob/main/docs/developers/supported-blockchains-and-tokens.md](https://github.com/xlink-network/xlink-docs/blob/main/docs/developers/supported-blockchains-and-tokens.md) - audit_report_link
- [https://github.com/xlink-network/xlink-docs/blob/main/docs/features/explorer/README.md](https://github.com/xlink-network/xlink-docs/blob/main/docs/features/explorer/README.md) - audit_report_link
- [https://github.com/xlink-network/xlink-docs/blob/main/docs/getting-started/README.md](https://github.com/xlink-network/xlink-docs/blob/main/docs/getting-started/README.md) - audit_report_link
- [https://github.com/xlink-network/xlink-docs/blob/main/docs/introduction/getting-started/prerequisites/how-to-connect-your-wallet.md](https://github.com/xlink-network/xlink-docs/blob/main/docs/introduction/getting-started/prerequisites/how-to-connect-your-wallet.md) - audit_report_link
- [https://github.com/xlink-network/xlink-docs/blob/main/docs/introduction/getting-started/prerequisites/README.md](https://github.com/xlink-network/xlink-docs/blob/main/docs/introduction/getting-started/prerequisites/README.md) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - XLink Bridge Endpoint Audit 2024 06
- unknown - discovery-ingest-placeholder - XLink EVM Endpoint Audit 2025 04
- unknown - discovery-ingest-placeholder - XLINK Solana Endpoint Audit 2025 05

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/brotocol.json
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

- **Generated at:** 2026-05-05T20:40:34.832Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
