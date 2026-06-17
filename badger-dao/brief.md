# Agentic Audit Brief: Badger DAO

⚠️ Lifecycle status: SUNSETTING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Badger DAO (`badger-dao`)
- Website: [https://badger.com/](https://badger.com/)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-17T07:00:41.458Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 27 unique implementations (43 raw deployments)
- DeFi Llama TVL: $7,766,530.18
- On-chain TVL (included contracts): $396.94
- TVL by chain: Ethereum $396.94

## Project Description

Badger DAO is a yield aggregator that enables users to deposit assets into automated vaults and pools to earn optimized yield across multiple DeFi protocols. It also provides tokenized representations of yield-bearing positions and cross-chain Bitcoin (tBTC) integration.

### Architecture

All contracts belong to a single product family, sharing infrastructure such as reward distributors (e.g., NyanRewards, ApeRewards) and token wrappers (e.g., StakedBPT, ERC20Peg) that interact with core vaults and pools. Cross-chain components like L2TBTC and AutoFarmV2_CrossChain extend yield strategies to layer-2 networks.

## Contract Surface Quality

- Indexed contracts: 69; live-surface contracts included: 43 (38 live, 5 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 15/29 live.
- Detected codebases: none
- Dependencies extracted: 13; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/25 (20.0%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 27
- Raw deployments: 43
- Audits discovered: 8
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $396.94
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: 4.0% (Code4rena)
- Note: This protocol is classified as [sunsetting]. ASD of $396.94 represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 16.0% | 2022-01 |
| Code4rena | Tier 1 | 1 | 4.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BadgerSettPeak | unknown | ethereum | unit-19452 | [`0x41671b...6be6e3`](./contracts/ethereum-1/0x41671ba1abcba387b9b2b752c205e22e916be6e3/) | ✅ Audited |
| BadgerYearnWbtcPeak | unknown | ethereum | unit-19458 | [`0x825218...c50627`](./contracts/ethereum-1/0x825218bed8be0b30be39475755acee0250c50627/) | ✅ Audited |
| Core | unknown | ethereum | unit-19446 | [`0x2a8fac...3418a8`](./contracts/ethereum-1/0x2a8facc9d49fbc3ecff569847833c380a13418a8/) | ✅ Audited |
| WrappedIbbtcEth | unknown | ethereum | unit-19460 | [`0x8751d4...f04c15`](./contracts/ethereum-1/0x8751d4196027d4e6da63716fa7786b5174f04c15/) | ✅ Audited |
| Zap | adapter | ethereum | unit-19464 | [`0xe8e400...c07734`](./contracts/ethereum-1/0xe8e40093017a3a55b5c2bc3e9ca6a4d208c07734/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TheVault | core_logic | ethereum | unit-19449 (2 proxies) | 2 deployments: ethereum [`0x37d9d2...0fcbd8`](./contracts/ethereum-1/0x37d9d2c6035b744849c15f1bfee8f268a20fcbd8/); ethereum `0xba485b...107407` | ⚠️ Unaudited |
| Agent | unknown | ethereum | unit-19462 | [`0x8de82c...d0ef9b`](./contracts/ethereum-1/0x8de82c4c968663a0284b01069dde6ef231d0ef9b/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| BadgerTreeV2 | unknown | ethereum | unit-19454 | [`0x660802...6d787a`](./contracts/ethereum-1/0x660802fc641b154aba66a62137e71f331b6d787a/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0xd366e0...022ad0`](./contracts/ethereum-1/0xd366e016ae0677cdce93472e603b75051e022ad0/) | ⚠️ Unaudited |
| CdpManager | unknown | ethereum | n/a | [`0xc4cbae...711774`](./contracts/ethereum-1/0xc4cbae499bb4ca41e78f52f07f5d98c375711774/) | ⚠️ Unaudited |
| DiggSett | unknown | ethereum | unit-19457 | [`0x7e7e11...c38e1a`](./contracts/ethereum-1/0x7e7e112a68d8d2e221e11047a72ffc1065c38e1a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-19441 (2 proxies) | 2 deployments: ethereum [`0x042b32...4b9276`](./contracts/ethereum-1/0x042b32ac6b453485e357938bdc38e0340d4b9276/); ethereum `0xd0a7a8...158e9e` | ⚠️ Unaudited |
| Kernel | unknown | ethereum | unit-19448 | [`0x33d533...d3a639`](./contracts/ethereum-1/0x33d53383314190b0b885d1b6913b5a50e2d3a639/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-19469 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| SettV1_1h | unknown | ethereum | unit-19442 (3 proxies) | 3 deployments: ethereum [`0x1862a1...ef24a5`](./contracts/ethereum-1/0x1862a18181346ebd9edaf800804f89190def24a5/); ethereum `0x758a43...f2544d`; ethereum `0x881285...f2a9f6` | ⚠️ Unaudited |
| SettV1h | unknown | ethereum | unit-19443 (4 proxies) | 4 deployments: ethereum [`0x19d97d...dffc28`](./contracts/ethereum-1/0x19d97d8fa813ee2f51ad4b4e04ea08baf4dffc28/); ethereum `0x6def55...8c1545`; ethereum `0xb9d076...940334`; ethereum `0xd04c48...d998ec` | ⚠️ Unaudited |
| SettV4 | unknown | arbitrum | unit-19467 (5 proxies) | 5 deployments: arbitrum [`0x459189...f7ddeb`](./contracts/arbitrum-42161/0x4591890225394bf66044347653e112621af7ddeb/); arbitrum `0x60129b...623546`; arbitrum `0xba418c...d71843`; arbitrum `0xe9c12f...20389c`; arbitrum `0xfc1320...8ac041` | ⚠️ Unaudited |
| SettV4h | unknown | ethereum | unit-19444 (5 proxies) | 5 deployments: ethereum [`0x27e98f...71e3b5`](./contracts/ethereum-1/0x27e98fc7d05f54e544d16f58c194c2d7ba71e3b5/); ethereum `0x2b5455...5819c0`; ethereum `0x53c8e1...a68e40`; ethereum `0xae96ff...8e40af`; ethereum `0xfd05d3...7e6305` | ⚠️ Unaudited |
| SimpleWrapperGatedUpgradeable | unknown | ethereum | unit-19453 | [`0x4b92d1...8cd4d5`](./contracts/ethereum-1/0x4b92d19c11435614cd49af1b589001b7c08cd4d5/) | ⚠️ Unaudited |
| SortedCdps | unknown | ethereum | n/a | [`0x591acb...529be3`](./contracts/ethereum-1/0x591acb5ae192c147948c12651a0a5f24f0529be3/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9c30e4...ed894e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Badger Vaults 1.5 - Quantstamp - Jan 2022.pdf](https://github.com/Badger-Finance/badger-vaults-1.5/blob/main/security/audits/Badger%20Vaults%201.5%20-%20Quantstamp%20-%20Jan%202022.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://code4rena.com/reports/2021-10-badgerdao) | Code4rena | Contest | 2021-10 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://code4rena.com/reports/2021-09-bvecvx) | Code4rena | Contest | 2021-09 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://badger.com/images/uploads/quantstamp-badger-ib-btc.pdf) | Quantstamp | Audit | 2021-08 | stale | Direct | contract_name | 4 | high |
| [DL audit link](https://badger.com/images/uploads/defi-yield-badger-finance.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://badger.com/images/uploads/zokyo-badger-sc-audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://code4rena.com/audits/2022-06-badger-vested-aura-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [View report](https://code4rena.com/reports/2022-06-badger) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x37d9d2...0fcbd8`](./contracts/ethereum-1/0x37d9d2c6035b744849c15f1bfee8f268a20fcbd8/) | TheVault | core_logic | $396.94 | Verified native implementation with $396.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4cbae...711774`](./contracts/ethereum-1/0xc4cbae499bb4ca41e78f52f07f5d98c375711774/) | CdpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x459189...f7ddeb`](./contracts/arbitrum-42161/0x4591890225394bf66044347653e112621af7ddeb/) | SettV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27e98f...71e3b5`](./contracts/ethereum-1/0x27e98fc7d05f54e544d16f58c194c2d7ba71e3b5/) | SettV4h | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b92d1...8cd4d5`](./contracts/ethereum-1/0x4b92d19c11435614cd49af1b589001b7c08cd4d5/) | SimpleWrapperGatedUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 3 |
| standard_library | 7 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=23

Zero-match audit list:

- [3362] Badger Vaults 1.5 - Quantstamp - Jan 2022.pdf
- [3364] DL audit link
- [3366] DL audit link
- [3367] DL audit link
- [12497] DL audit link
- [12498] View report

Fork inheritance lineage and inherited audits are included when available.
