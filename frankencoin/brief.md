# Agentic Audit Brief: Frankencoin

## Project Overview

- Project: Frankencoin (`frankencoin`)
- Website: [https://frankencoin.com](https://frankencoin.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T20:46:49.319Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: ethereum
- Contract surface: 16 unique implementations (19 raw deployments)
- DeFi Llama TVL: $62,111,432.68
- On-chain TVL (included contracts): $1,109,832.57
- TVL by chain: Ethereum $1,109,832.57

## Project Description

Frankencoin is an over-collateralized, oracle-free decentralized stablecoin protocol for ZCHF, a stablecoin tracking the Swiss franc. Its evidenced CDP core centers on Frankencoin, MintingHub, PositionFactory, and Position-style collateralized borrowing/minting components, with related savings and bridge functionality where in scope. FolioProxy/Folio should not be described as the main entry point unless separately documented.

### Architecture

The FolioProxy acts as the main entry point, delegating to the Folio implementation which manages vaults and interacts with the Frankencoin token contract. TetherToken is used as a collateral type within the system.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 22; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 8/16 (50.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 19
- Audits discovered: 11
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): $1,109,832.57
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 2 aging, 4 stale, 5 unknown
- Tier 1 coverage: 50.0% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 8 | 50.0% | 2024-11 |
| Code4rena | Tier 1 | 5 | 31.3% | 2023-04 |
| Blockbite | Tier 2 | 4 | 25.0% | 2023-02 |
| unknown | Tier 2 | 4 | 25.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Equity | unknown | ethereum | n/a | [`0x1ba267...e341b2`](./contracts/ethereum-1/0x1ba26788dfde592fec8bcb0eaff472a42be341b2/) | ✅ Audited |
| FPSWrapper | unknown | ethereum | n/a | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | ✅ Audited |
| Frankencoin | unknown | ethereum | n/a | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | ✅ Audited |
| MintingHub | unknown | ethereum | n/a | 2 deployments: ethereum [`0x754676...265219`](./contracts/ethereum-1/0x7546762fdb1a6d9146b33960545c3f6394265219/); ethereum `0xde12b6...653557` | ✅ Audited |
| Position | unknown | ethereum | n/a | [`0x44bfc2...3467b9`](./contracts/ethereum-1/0x44bfc2a260f091f8365ba8b240cd9491903467b9/) | ✅ Audited |
| PositionRoller | unknown | ethereum | n/a | [`0xad0107...9ea6b6`](./contracts/ethereum-1/0xad0107d3da540fd54b1931735b65110c909ea6b6/) | ✅ Audited |
| Savings | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27d9ad...a17b38`](./contracts/ethereum-1/0x27d9ad987bde08a0d083ef7e0e4043c857a17b38/); ethereum `0x3bf301...dfb2ae` | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3b71ba...340403`](./contracts/ethereum-1/0x3b71ba73299f925a837836160c3e1fec74340403/); ethereum `0x3e445f...64f6c1` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | n/a | [`0x8e4318...c78cef`](./contracts/ethereum-1/0x8e4318e2cb1ae291254b187001a59a1f8ac78cef/) | ⚠️ Unaudited |
| SavingsVaultZCHF_2 | core_logic | ethereum | n/a | [`0xe5f130...abf6b0`](./contracts/ethereum-1/0xe5f130253ff137f9917c0107659a4c5262abf6b0/) | ⚠️ Unaudited |
| CCIPAdmin | unknown | ethereum | n/a | [`0x2527ec...5dfef8`](./contracts/ethereum-1/0x2527ec458c863073a303cf0a362bf78add5dfef8/) | ⚠️ Unaudited |
| CloneHelper | periphery | ethereum | n/a | [`0x55cd28...5f8bee`](./contracts/ethereum-1/0x55cd2820735db56ca0965be224d71994265f8bee/) | ⚠️ Unaudited |
| Folio | unknown | ethereum | unit-39097 | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | ⚠️ Unaudited |
| GovernanceSender | unknown | ethereum | n/a | [`0xfd2327...f876eb`](./contracts/ethereum-1/0xfd23272dfcb13dc3fabd8db851fcd4827af876eb/) | ⚠️ Unaudited |
| LeadrateSender | unknown | ethereum | n/a | [`0x4d4337...8ef28d`](./contracts/ethereum-1/0x4d433780a16d425c5db1f725a6d104233a8ef28d/) | ⚠️ Unaudited |
| TransferReference | unknown | ethereum | n/a | [`0xf98c22...8a1916`](./contracts/ethereum-1/0xf98c221661f51578f5e5236b189a493e2a8a1916/) | ⚠️ Unaudited |

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
| [Code4rena](https://code4rena.com/reports/2023-04-frankencoin) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | 2 | high |
| [ChainSecurity-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/ChainSecurity-audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 7 | high |
| [blockbite-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.pdf) | Blockbite | Audit | 2023-02 | stale | Direct | contract_name | 6 | high |
| [ChainSecurity_Frankencoin_Frankencoin_v2024.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | contract_name | 8 | high |
| [frankencoin-audit-report-2024-1.1.pdf (also discovered via alternate URL)](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/frankencoin-audit-report-2024-1.1.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 6 | high |
| [blockbite-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.md) | Blockbite | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [code4rena-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/code4rena-audit.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity](https://www.chainsecurity.com/security-audit/frankencoin-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [- [ChainSecurity Audit 2]()](https://www.chainsecurity.com/security-audit/frankencoin-v2024) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 6 | low |
| [- [ChainSecurity Audit 3]()](https://www.chainsecurity.com/security-audit/frankencoin-ccip-bridge) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BlockBite](https://frankencoin.com/AuditReport-Frankencoin.pdf) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe5f130...abf6b0`](./contracts/ethereum-1/0xe5f130253ff137f9917c0107659a4c5262abf6b0/) | SavingsVaultZCHF_2 | core_logic | $4.27 | Verified native implementation with $4.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55cd28...5f8bee`](./contracts/ethereum-1/0x55cd2820735db56ca0965be224d71994265f8bee/) | CloneHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | Folio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd2327...f876eb`](./contracts/ethereum-1/0xfd23272dfcb13dc3fabd8db851fcd4827af876eb/) | GovernanceSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d4337...8ef28d`](./contracts/ethereum-1/0x4d433780a16d425c5db1f725a6d104233a8ef28d/) | LeadrateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf98c22...8a1916`](./contracts/ethereum-1/0xf98c221661f51578f5e5236b189a493e2a8a1916/) | TransferReference | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, low=3
- Match method counts: extraction_exact=109

Zero-match audit list:

- [15627] code4rena-audit.md
- [15632] - [ChainSecurity Audit 3]()

Fork inheritance lineage and inherited audits are included when available.
