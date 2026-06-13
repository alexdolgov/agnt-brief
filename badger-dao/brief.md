# Agentic Audit Brief: Badger DAO

⚠️ Lifecycle status: SUNSETTING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Badger DAO (`badger-dao`)
- Website: [https://badger.com/](https://badger.com/)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-13T00:40:47.237Z
- Pipeline run: v2-pipeline-2026-06-13-546062-e35d
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 40 unique implementations (69 raw deployments)
- DeFi Llama TVL: $7,766,530.18
- On-chain TVL (included contracts): $396.94
- TVL by chain: Ethereum $396.94

## Project Description

Badger DAO is a yield aggregator that enables users to deposit assets into automated vaults and pools to earn optimized yield across multiple DeFi protocols. It also provides tokenized representations of yield-bearing positions and cross-chain Bitcoin (tBTC) integration.

### Architecture

All contracts belong to a single product family, sharing infrastructure such as reward distributors (e.g., NyanRewards, ApeRewards) and token wrappers (e.g., StakedBPT, ERC20Peg) that interact with core vaults and pools. Cross-chain components like L2TBTC and AutoFarmV2_CrossChain extend yield strategies to layer-2 networks.

## Audit Coverage Summary

- Verified implementations audited: 8/37 (21.6%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 40
- Raw deployments: 69
- Audits discovered: 8
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $396.94
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: 8.1% (Code4rena)
- Note: This protocol is classified as [sunsetting]. ASD of $396.94 represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 5 | 13.5% | 2022-01 |
| Code4rena | Tier 1 | 3 | 8.1% | 2022-06 |
| unknown | Tier 2 | 1 | 2.7% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BadgerSettPeak | unknown | ethereum | [`0x41671b...6be6e3`](./contracts/ethereum-1/0x41671ba1abcba387b9b2b752c205e22e916be6e3/) | ✅ Audited |
| BadgerYearnWbtcPeak | unknown | ethereum | [`0x825218...c50627`](./contracts/ethereum-1/0x825218bed8be0b30be39475755acee0250c50627/) | ✅ Audited |
| Controller | unknown | ethereum | 6 deployments: ethereum [`0x303926...ac3ec8`](./contracts/ethereum-1/0x30392694c25fbbe5c026cf846e9b6525a2ac3ec8/); ethereum `0x3f6134...43ba0b`; ethereum `0x63cf44...4d9682`; ethereum `0x9b4efa...0f8609`; ethereum `0xd35ff2...670250`; arbitrum `0x381144...b617cd` | ✅ Audited |
| Core | unknown | ethereum | [`0x2a8fac...3418a8`](./contracts/ethereum-1/0x2a8facc9d49fbc3ecff569847833c380a13418a8/) | ✅ Audited |
| GnosisSafe | governance | ethereum | 4 deployments: ethereum [`0x042b32...4b9276`](./contracts/ethereum-1/0x042b32ac6b453485e357938bdc38e0340d4b9276/); ethereum `0x86cbd0...8c8275`; ethereum `0xb65cef...999e77`; ethereum `0xd0a7a8...158e9e` | ✅ Audited |
| MyStrategy | unknown | ethereum | 2 deployments: ethereum [`0x3c0989...0e63b5`](./contracts/ethereum-1/0x3c0989ef27e3e3fab87a2d7c38b35880c90e63b5/); ethereum `0x3ff634...66cea9` | ✅ Audited |
| WrappedIbbtcEth | unknown | ethereum | [`0x8751d4...f04c15`](./contracts/ethereum-1/0x8751d4196027d4e6da63716fa7786b5174f04c15/) | ✅ Audited |
| Zap | adapter | ethereum | [`0xe8e400...c07734`](./contracts/ethereum-1/0xe8e40093017a3a55b5c2bc3e9ca6a4d208c07734/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TheVault | core_logic | ethereum | 2 deployments: ethereum [`0x37d9d2...0fcbd8`](./contracts/ethereum-1/0x37d9d2c6035b744849c15f1bfee8f268a20fcbd8/); ethereum `0xba485b...107407` | ⚠️ Unaudited |
| Agent | unknown | ethereum | [`0x8de82c...d0ef9b`](./contracts/ethereum-1/0x8de82c4c968663a0284b01069dde6ef231d0ef9b/) | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| BadgerTreeV2 | unknown | polygon | 3 deployments: ethereum `0x660802...6d787a`; polygon [`0x2c798f...51376b`](./contracts/polygon-137/0x2c798fafd37c7dcdcac2498e19432898bc51376b/); arbitrum `0x635eb2...e115a6` | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | [`0xd366e0...022ad0`](./contracts/ethereum-1/0xd366e016ae0677cdce93472e603b75051e022ad0/) | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | ⚠️ Unaudited |
| CdpManager | unknown | ethereum | [`0xc4cbae...711774`](./contracts/ethereum-1/0xc4cbae499bb4ca41e78f52f07f5d98c375711774/) | ⚠️ Unaudited |
| DiggSett | unknown | ethereum | [`0x7e7e11...c38e1a`](./contracts/ethereum-1/0x7e7e112a68d8d2e221e11047a72ffc1065c38e1a/) | ⚠️ Unaudited |
| GlobalAccessControl | governance | ethereum | [`0x9c58b0...bae35a`](./contracts/ethereum-1/0x9c58b0d88578cd75154bdb7c8b013f7157bae35a/) | ⚠️ Unaudited |
| GovernanceTimelock | governance | ethereum | [`0x21cf9b...bc0893`](./contracts/ethereum-1/0x21cf9b77f88adf8f8c98d7e33fe601dc57bc0893/) | ⚠️ Unaudited |
| IbbtcVaultZap | adapter | ethereum | [`0x87c3ef...efa493`](./contracts/ethereum-1/0x87c3ef099c6143e4687b060285bad201b9efa493/) | ⚠️ Unaudited |
| KeeperAccessControl | operational_periphery | ethereum | [`0x711a33...ab6cf6`](./contracts/ethereum-1/0x711a339c002386f9db409ca55b6a35a604ab6cf6/) | ⚠️ Unaudited |
| Kernel | unknown | ethereum | [`0x33d533...d3a639`](./contracts/ethereum-1/0x33d53383314190b0b885d1b6913b5a50e2d3a639/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x20dce4...1777bf`](./contracts/ethereum-1/0x20dce41acca85e8222d6861aa6d23b6c941777bf/); ethereum `0x7d0398...88c385`; ethereum `0x9215cb...cf69f9` | ⚠️ Unaudited |
| SettToRenIbbtcZap | adapter | ethereum | [`0x27fb47...3f3df1`](./contracts/ethereum-1/0x27fb47b9fb32b9cf660c4e0128be0f4e883f3df1/) | ⚠️ Unaudited |
| SettV1_1h | unknown | ethereum | 3 deployments: ethereum [`0x1862a1...ef24a5`](./contracts/ethereum-1/0x1862a18181346ebd9edaf800804f89190def24a5/); ethereum `0x758a43...f2544d`; ethereum `0x881285...f2a9f6` | ⚠️ Unaudited |
| SettV1h | unknown | ethereum | 4 deployments: ethereum [`0x19d97d...dffc28`](./contracts/ethereum-1/0x19d97d8fa813ee2f51ad4b4e04ea08baf4dffc28/); ethereum `0x6def55...8c1545`; ethereum `0xb9d076...940334`; ethereum `0xd04c48...d998ec` | ⚠️ Unaudited |
| SettV4 | unknown | arbitrum | 5 deployments: arbitrum [`0x459189...f7ddeb`](./contracts/arbitrum-42161/0x4591890225394bf66044347653e112621af7ddeb/); arbitrum `0x60129b...623546`; arbitrum `0xba418c...d71843`; arbitrum `0xe9c12f...20389c`; arbitrum `0xfc1320...8ac041` | ⚠️ Unaudited |
| SettV4h | unknown | ethereum | 5 deployments: ethereum [`0x27e98f...71e3b5`](./contracts/ethereum-1/0x27e98fc7d05f54e544d16f58c194c2d7ba71e3b5/); ethereum `0x2b5455...5819c0`; ethereum `0x53c8e1...a68e40`; ethereum `0xae96ff...8e40af`; ethereum `0xfd05d3...7e6305` | ⚠️ Unaudited |
| SimpleWrapperGatedUpgradeable | unknown | ethereum | [`0x4b92d1...8cd4d5`](./contracts/ethereum-1/0x4b92d19c11435614cd49af1b589001b7c08cd4d5/) | ⚠️ Unaudited |
| SortedCdps | unknown | ethereum | [`0x591acb...529be3`](./contracts/ethereum-1/0x591acb5ae192c147948c12651a0a5f24f0529be3/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| WarRoomGatedProxy | unknown | ethereum | [`0x6615e6...e96386`](./contracts/ethereum-1/0x6615e67b8b6b6375d38a0a3f937cd8c1a1e96386/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | fantom | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Badger Vaults 1.5 - Quantstamp - Jan 2022.pdf](https://github.com/Badger-Finance/badger-vaults-1.5/blob/main/security/audits/Badger%20Vaults%201.5%20-%20Quantstamp%20-%20Jan%202022.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://code4rena.com/reports/2021-10-badgerdao) | Code4rena | Contest | 2021-10 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://code4rena.com/reports/2021-09-bvecvx) | Code4rena | Contest | 2021-09 | stale | Direct | contract_name | 8 | high |
| [DL audit link](https://badger.com/images/uploads/quantstamp-badger-ib-btc.pdf) | Quantstamp | Audit | 2021-08 | stale | Direct | contract_name | 6 | high |
| [DL audit link](https://badger.com/images/uploads/defi-yield-badger-finance.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://badger.com/images/uploads/zokyo-badger-sc-audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 6 | high |
| [DL audit link](https://code4rena.com/audits/2022-06-badger-vested-aura-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [View report](https://code4rena.com/reports/2022-06-badger) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x37d9d2...0fcbd8`](./contracts/ethereum-1/0x37d9d2c6035b744849c15f1bfee8f268a20fcbd8/) | TheVault | core_logic | $396.94 | Verified native implementation with $396.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ApeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | CarbonRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4cbae...711774`](./contracts/ethereum-1/0xc4cbae499bb4ca41e78f52f07f5d98c375711774/) | CdpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21cf9b...bc0893`](./contracts/ethereum-1/0x21cf9b77f88adf8f8c98d7e33fe601dc57bc0893/) | GovernanceTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x711a33...ab6cf6`](./contracts/ethereum-1/0x711a339c002386f9db409ca55b6a35a604ab6cf6/) | KeeperAccessControl | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | PONGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27fb47...3f3df1`](./contracts/ethereum-1/0x27fb47b9fb32b9cf660c4e0128be0f4e883f3df1/) | SettToRenIbbtcZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x459189...f7ddeb`](./contracts/arbitrum-42161/0x4591890225394bf66044347653e112621af7ddeb/) | SettV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27e98f...71e3b5`](./contracts/ethereum-1/0x27e98fc7d05f54e544d16f58c194c2d7ba71e3b5/) | SettV4h | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b92d1...8cd4d5`](./contracts/ethereum-1/0x4b92d19c11435614cd49af1b589001b7c08cd4d5/) | SimpleWrapperGatedUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6615e6...e96386`](./contracts/ethereum-1/0x6615e67b8b6b6375d38a0a3f937cd8c1a1e96386/) | WarRoomGatedProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 3 |
| standard_library | 12 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=23

Zero-match audit list:

- [3362] Badger Vaults 1.5 - Quantstamp - Jan 2022.pdf
- [3366] DL audit link
- [12497] DL audit link

Fork inheritance lineage and inherited audits are included when available.
