# Agentic Audit Brief: MatrixDock

## Project Overview

- Project: MatrixDock (`matrixdock`)
- Website: [https://www.matrixdock.com/home](https://www.matrixdock.com/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.461Z
- Pipeline run: v2-2026-07-04-7d91d2
- Chains: bsc, ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- DeFi Llama TVL: $82,213,089.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 17 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (delayedupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **TermMax** (`termmax`) in the STBT, STBTv2, StbtTimelockController, UpgradeableSTBT subsystem.
11 audits inherited from `termmax`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/22 (27.3%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/24
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 20 (9 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 7 stale, 10 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 18.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 5 | 20.8% | 2023-08 |
| Zellic | Tier 2 | 5 | 20.8% | 2023-06 |
| ABDK | Tier 2 | 4 | 16.7% | 2025-12 |
| HashCloak | Tier 2 | 4 | 16.7% | n/a |
| Spearbit | Tier 1 | 4 | 16.7% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Minter | unknown | ethereum | n/a | [`0x344363...1a0e2f`](./contracts/ethereum-1/0x344363f85a25837b154dd1c03117fef0341a0e2f/) | ✅ Audited |
| STBT | unknown | ethereum | n/a | [`0x24f5b8...0fc948`](./contracts/ethereum-1/0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948/) | ✅ Audited |
| StbtTimelockController | unknown | ethereum | n/a | [`0x0eb8f1...7b6f47`](./contracts/ethereum-1/0x0eb8f11ec17c160b0d51586b0e420faff07b6f47/) | ✅ Audited |
| STBTv2 | unknown | ethereum | n/a | [`0x3f0868...5a37aa`](./contracts/ethereum-1/0x3f0868fd7b0844e374277ebc9a3e4979465a37aa/) | ✅ Audited |
| UpgradeableSTBT | unknown | ethereum | n/a | [`0x32a67b...60528f`](./contracts/ethereum-1/0x32a67bf4815b4f28e879fd09671ef74ebd60528f/) | ✅ Audited |
| WSTBT | unknown | ethereum | n/a | [`0x288a80...bc4c83`](./contracts/ethereum-1/0x288a8005c53632d920045b7c7c2e54a3f1bc4c83/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BullionEnumerableNFT | unknown | ethereum | n/a | [`0x62bee1...cc368c`](./contracts/ethereum-1/0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c/) | ⚠️ Unaudited |
| BullionNFT | unknown | ethereum | n/a | [`0x52a6dd...d2f9dc`](./contracts/ethereum-1/0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc/) | ⚠️ Unaudited |
| CCWSTBTMessager | unknown | bsc | n/a | [`0x2a918b...0bbf18`](./contracts/bsc-56/0x2a918b3a032174dd89c3d9e7f27ea0d7710bbf18/) | ⚠️ Unaudited |
| CustomerManager | unknown | ethereum | n/a | [`0x0978aa...e3f004`](./contracts/ethereum-1/0x0978aa6ed342ff8327e97415653f5af790e3f004/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0630f6...19c755`](./contracts/bsc-56/0x0630f63329e3c4b675d8ba1b82c330f46319c755/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0654cf...39ec76`](./contracts/bsc-56/0x0654cf3aa9dd54d5ffe3a6c21bb9205a3a39ec76/) | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | ethereum | n/a | [`0x20377b...5e28ab`](./contracts/ethereum-1/0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab/) | ⚠️ Unaudited |
| MTokenMain | unknown | ethereum | n/a | [`0x123ffe...58d9e1`](./contracts/ethereum-1/0x123ffe0a3c62878dcbee2742227dc8990058d9e1/) | ⚠️ Unaudited |
| MTokenMessager | unknown | ethereum | n/a | [`0x24ce2a...028c7e`](./contracts/ethereum-1/0x24ce2a00eb05b33b206b4057598f97ddc3028c7e/) | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | ethereum | n/a | [`0x102874...5fb878`](./contracts/ethereum-1/0x102874ca109a5a7e94a0385f1380cebc905fb878/) | ⚠️ Unaudited |
| MTokenMessenger | unknown | ethereum | n/a | [`0x0be916...8f68c5`](./contracts/ethereum-1/0x0be91692750982b4ba92dabc3985c548098f68c5/) | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | ethereum | n/a | [`0xb350d8...a6386f`](./contracts/ethereum-1/0xb350d8decc3adf68c3856d46ab42976ca7a6386f/) | ⚠️ Unaudited |
| MTokenMinter | unknown | ethereum | n/a | [`0x5fd20e...296cef`](./contracts/ethereum-1/0x5fd20e49239aaedb8490c07a622c129a39296cef/) | ⚠️ Unaudited |
| MTokenSide | unknown | bsc | n/a | [`0x1d0ba3...245010`](./contracts/bsc-56/0x1d0ba3daa950415b1f36c6fa6b98571325245010/) | ⚠️ Unaudited |
| OKXSwapAdapter | unknown | bsc | n/a | [`0x08190f...25c8ee`](./contracts/bsc-56/0x08190f1cf3f2f067d5749dce1b27decd6e25c8ee/) | ⚠️ Unaudited |
| TERPOC | unknown | ethereum | n/a | [`0x2022be...6a877d`](./contracts/ethereum-1/0x2022be364c2c0b46bb693d154bfb8eb5476a877d/) | ⚠️ Unaudited |
| XAUMDCAMinter | unknown | bsc | n/a | [`0x3681af...3289e2`](./contracts/bsc-56/0x3681afa163e6263447abf565936a7225583289e2/) | ⚠️ Unaudited |
| XAUMDCARouter | unknown | bsc | n/a | [`0x31b19c...f57775`](./contracts/bsc-56/0x31b19c0cedd24f5a0dd6471649b5698a85f57775/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf) | HashCloak | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf) | HashCloak | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [TermMax-ABDK-audit-report-Phase1-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase1-v2.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [TermMax-ABDK-audit-report-Phase2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase2.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [Matrixdock-STBT - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/Matrixdock-STBT%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | 3 | high |
| [Minter - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/Minter%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [TProtocol audit report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/TProtocol%20audit%20report.pdf) | TProtocol | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [WSTBT - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/WSTBT%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [blocksec_matrixdock_v1.0-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixdock_v1.0-signed.pdf) | BlockSec | Audit | 2023-06 | stale | Direct | contract_name | 2 | high |
| [blocksec_matrixdock_v1.1-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixdock_v1.1-signed.pdf) | BlockSec | Audit | 2023-08 | stale | Direct | contract_name | 2 | high |
| [blocksec_matrixport_stbt_v1.1-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixport_stbt_v1.1-signed.pdf) | BlockSec | Audit | 2023-01 | stale | Direct | contract_name | 3 | high |
| [he-yue-shen-ji.md (also discovered via alternate URL)](https://matrixdock.gitbook.io/matrixdock-docs/huang-jin-dai-bi-xaum/zhi-neng-he-yue/he-yue-shen-ji.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract-audit.md (also discovered via alternate URL)](https://matrixdock.gitbook.io/matrixdock-docs/english/gold-token-xaum/smart-contract/contract-audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TermMax-ABDK-audit-report-TMX-v-1-0.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-TMX-v-1-0.pdf) | ABDK | Audit | 2025-12 | fresh | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [TermMax-ABDK-audit-report-Phase3-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase3-v2.pdf) | ABDK | Audit | 2025-10 | fresh | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |
| [TermMax-Cantina-competition-20250320.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-Cantina-competition-20250320.pdf) | Spearbit | Audit | 2025-03 | aging | Inherited from TermMax — forked code, scoped to STBT, StbtTimelockController, STBTv2, UpgradeableSTBT | inherited | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x62bee1...cc368c`](./contracts/ethereum-1/0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c/) | BullionEnumerableNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52a6dd...d2f9dc`](./contracts/ethereum-1/0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc/) | BullionNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a918b...0bbf18`](./contracts/bsc-56/0x2a918b3a032174dd89c3d9e7f27ea0d7710bbf18/) | CCWSTBTMessager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0978aa...e3f004`](./contracts/ethereum-1/0x0978aa6ed342ff8327e97415653f5af790e3f004/) | CustomerManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20377b...5e28ab`](./contracts/ethereum-1/0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab/) | FallbackReserveFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x123ffe...58d9e1`](./contracts/ethereum-1/0x123ffe0a3c62878dcbee2742227dc8990058d9e1/) | MTokenMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ce2a...028c7e`](./contracts/ethereum-1/0x24ce2a00eb05b33b206b4057598f97ddc3028c7e/) | MTokenMessager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x102874...5fb878`](./contracts/ethereum-1/0x102874ca109a5a7e94a0385f1380cebc905fb878/) | MTokenMessagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0be916...8f68c5`](./contracts/ethereum-1/0x0be91692750982b4ba92dabc3985c548098f68c5/) | MTokenMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb350d8...a6386f`](./contracts/ethereum-1/0xb350d8decc3adf68c3856d46ab42976ca7a6386f/) | MTokenMessengerLZ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fd20e...296cef`](./contracts/ethereum-1/0x5fd20e49239aaedb8490c07a622c129a39296cef/) | MTokenMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d0ba3...245010`](./contracts/bsc-56/0x1d0ba3daa950415b1f36c6fa6b98571325245010/) | MTokenSide | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08190f...25c8ee`](./contracts/bsc-56/0x08190f1cf3f2f067d5749dce1b27decd6e25c8ee/) | OKXSwapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2022be...6a877d`](./contracts/ethereum-1/0x2022be364c2c0b46bb693d154bfb8eb5476a877d/) | TERPOC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3681af...3289e2`](./contracts/bsc-56/0x3681afa163e6263447abf565936a7225583289e2/) | XAUMDCAMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31b19c...f57775`](./contracts/bsc-56/0x31b19c0cedd24f5a0dd6471649b5698a85f57775/) | XAUMDCARouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=12, inherited_name_remap=44

Zero-match audit list:

- [20821] TProtocol audit report.pdf
- [20826] he-yue-shen-ji.md
- [20829] contract-audit.md

Fork inheritance lineage and inherited audits are included when available.
