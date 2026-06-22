# Agentic Audit Brief: Paladin Finance

⚠️ Lifecycle status: DEAD - TVL dropped 41.8% over 90 days

## Project Overview

- Project: Paladin Finance (`paladin-finance`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-20T00:31:27.651Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 31 unique implementations (46 raw deployments)
- DeFi Llama TVL: $22,236.00
- On-chain TVL (included contracts): $157,600,621.38
- TVL by chain: Ethereum $157,600,621.38

## Project Description

Paladin Finance is a DeFi protocol that enables users to maximize yield and governance power through liquid staking, vote aggregation, and lending. It offers products for staking AAVE tokens, participating in governance votes, and managing collateralized debt positions.

### Architecture

Paladin Vote's staked AAVE tokens (StakedAaveV3) are used across the protocol as collateral or yield-bearing assets, linking governance with Dullahan's vault strategies and Warlord's risk management. The ControllerProxy and ChainlinkSourcesRegistry provide shared infrastructure for access control and price feeds.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 46 (6 live, 40 unknown).
- Excluded by liveness: 34 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 4/10 live.
- Detected codebases: none
- Unverified dependencies: 2/42.

## Audit Coverage Summary

- Verified implementations audited: 10/31 (32.3%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 31
- Raw deployments: 46
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $157,561,233.80
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $157,561,233.80 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 10 | 32.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PalPoolStkAave | core_logic | ethereum | n/a | [`0xcdc3dd...22216d`](./contracts/ethereum-1/0xcdc3dd86c99b58749de0f697dfc1abe4be22216d/) | ✅ Audited |
| PalToken | token | ethereum | n/a | 7 deployments: ethereum [`0x24e79e...cdb0e0`](./contracts/ethereum-1/0x24e79e946dea5482212c38aab2d0782f04cdb0e0/); ethereum `0x7ffad0...7d7245`; ethereum `0x8f5c44...d010b4`; ethereum `0x9757b7...785706`; ethereum `0xa4dd29...c9d650`; ethereum `0xb28305...12376f`; ethereum `0xcd1ce6...1dfdff` | ✅ Audited |
| PalPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x7835d9...44bb74`](./contracts/ethereum-1/0x7835d976516f82ca8a3ed2942c4c6f9c4e44bb74/); ethereum `0x7ba283...315978`; ethereum `0xa8afa6...e76632`; ethereum `0xb7a5e6...384a25` | ✅ Audited |
| DullahanVault | core_logic | ethereum | n/a | [`0x167c60...fa2ae7`](./contracts/ethereum-1/0x167c606be99dbf5a8af61e1983e5b309e8fa2ae7/) | ✅ Audited |
| AddressRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x90e0f4...98b75f`](./contracts/ethereum-1/0x90e0f42f5c6cdcc77bc68a545f27e56e4398b75f/); ethereum `0xee4fdb...976c13` | ✅ Audited |
| DullahanPod | unknown | ethereum | n/a | [`0xc2f3b8...40a947`](./contracts/ethereum-1/0xc2f3b8ed2f461d9a8a6ff9b67e2759f64540a947/) | ✅ Audited |
| DullahanPodManager | governance | ethereum | n/a | [`0xf3decc...62fe56`](./contracts/ethereum-1/0xf3decc68c4ff828456696287b12e5ac0fa62fe56/) | ✅ Audited |
| DullahanRewardsStaking | unknown | ethereum | n/a | [`0x990f58...111545`](./contracts/ethereum-1/0x990f58570b4c7b8b7ae3bc28efeb2724be111545/) | ✅ Audited |
| PaladinController | governance | ethereum | n/a | 3 deployments: ethereum [`0x951cab...4dcbbd`](./contracts/ethereum-1/0x951cab249ca907313c9a510ae1b7a0dfb24dcbbd/); ethereum `0xbbfa3b...bc0623`; ethereum `0xd67900...a6fe0f` | ✅ Audited |
| SnapshotDelegator | unknown | ethereum | n/a | [`0xd53d7e...664b87`](./contracts/ethereum-1/0xd53d7e4a1e5d79083592e436570b34023f664b87/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedAaveV3 | token | ethereum | unit-40734 | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| WarStaker | core_logic | ethereum | n/a | [`0xa86c53...74758a`](./contracts/ethereum-1/0xa86c53af3aadf20be5d7a8136acfdbc4b074758a/) | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | ethereum | unit-40731 | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| DoomsdayController | governance | ethereum | n/a | [`0x750626...01cf20`](./contracts/ethereum-1/0x75062630838c18fd155dc638f99e09127701cf20/) | ⚠️ Unaudited |
| DullahanDiscountCalculator | unknown | ethereum | n/a | [`0xc23a7e...41a10e`](./contracts/ethereum-1/0xc23a7e7c463bad1ae1fd9d962b04bbcb9441a10e/) | ⚠️ Unaudited |
| DullahanRegistry | registry | ethereum | n/a | [`0xec7d50...93e2a0`](./contracts/ethereum-1/0xec7d50d40917cf5c25a8aaae0093db165f93e2a0/) | ⚠️ Unaudited |
| DullahanZapDeposit | adapter | ethereum | n/a | [`0x653050...8649c6`](./contracts/ethereum-1/0x653050f11b5f20213c9d1ee62cc02a76518649c6/) | ⚠️ Unaudited |
| HolyPalMultiplier | unknown | ethereum | n/a | [`0xb5b51a...abaadc`](./contracts/ethereum-1/0xb5b51a7da57fe6db797abd787ddfd923daabaadc/) | ⚠️ Unaudited |
| IndexMultiplier | unknown | ethereum | n/a | [`0xdcaa23...c73a44`](./contracts/ethereum-1/0xdcaa23fec70e0e867cd8cd77c9eaaf34e7c73a44/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xb76289...517e13`](./contracts/ethereum-1/0xb76289b5e22bd8acc7ab4d35d3c58a1830517e13/) | ⚠️ Unaudited |
| LendToAaveMigrator | periphery | ethereum | unit-40732 | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| LightQuestBoard | unknown | ethereum | n/a | [`0xcbd27b...be471b`](./contracts/ethereum-1/0xcbd27bf506ab5580ef86fe6a169449bc24be471b/) | ⚠️ Unaudited |
| PalZap | adapter | ethereum | n/a | [`0xe0fb13...54aa62`](./contracts/ethereum-1/0xe0fb13edc73fe156a636bc532fc2e56f9d54aa62/) | ⚠️ Unaudited |
| WarAuraLocker | unknown | ethereum | n/a | [`0x7b90e0...207a3b`](./contracts/ethereum-1/0x7b90e043aac79adea0dbb0690e3c832757207a3b/) | ⚠️ Unaudited |
| WarController | governance | ethereum | n/a | [`0xfdeac9...f13dbb`](./contracts/ethereum-1/0xfdeac9f9e4a5a7340ac57b47c67d383fb4f13dbb/) | ⚠️ Unaudited |
| WarCvxCrvFarmer | unknown | ethereum | n/a | [`0x857ba4...eda619`](./contracts/ethereum-1/0x857ba41f7957a8d8a4c8a61820cad8b119eda619/) | ⚠️ Unaudited |
| WardenPledge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7afc5d...6c934d`](./contracts/ethereum-1/0x7afc5dc212a658b329e4d14e7d45d325c66c934d/); ethereum `0xaa0e43...bf75d4`; ethereum `0xbeeea8...43c3b7` | ⚠️ Unaudited |
| WarRatiosV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcd7219...26cd48`](./contracts/ethereum-1/0xcd7219ce5d6248c99693fa8239e680bd6c26cd48/); ethereum `0xe40004...f85f94` | ⚠️ Unaudited |
| WarToken | token | ethereum | n/a | [`0xa8258d...f0cbc1`](./contracts/ethereum-1/0xa8258dee2a677874a48f5320670a869d74f0cbc1/) | ⚠️ Unaudited |
| WarZap | adapter | ethereum | n/a | [`0xf74774...9c35af`](./contracts/ethereum-1/0xf747744518099f44936d6d58041de6cd199c35af/) | ⚠️ Unaudited |
| WrappedStakedWar | unknown | ethereum | n/a | [`0x8fef29...f4888a`](./contracts/ethereum-1/0x8fef29604d16987e2a0c8ae1dfba47495ff4888a/) | ⚠️ Unaudited |

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
| [Paladin Dullahan Security Analysis by Pessimistic.pdf](https://github.com/PaladinFinance/Dullahan/blob/main/audit/Paladin%20Dullahan%20Security%20Analysis%20by%20Pessimistic.pdf) | Paladin | Audit | 2023-04 | stale | Direct | contract_name | 4 | high |
| [Paladin Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/914e35fdfc879451a61d2a3969f3be839b8c808f/Paladin%20Security%20Analysis%20by%20Pessimistic.pdf) | Paladin | Audit | 2021-10 | stale | Direct | contract_name | 18 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa86c53...74758a`](./contracts/ethereum-1/0xa86c53af3aadf20be5d7a8136acfdbc4b074758a/) | WarStaker | core_logic | $1,679.17 | Verified native implementation with $1,679.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x750626...01cf20`](./contracts/ethereum-1/0x75062630838c18fd155dc638f99e09127701cf20/) | DoomsdayController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc23a7e...41a10e`](./contracts/ethereum-1/0xc23a7e7c463bad1ae1fd9d962b04bbcb9441a10e/) | DullahanDiscountCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec7d50...93e2a0`](./contracts/ethereum-1/0xec7d50d40917cf5c25a8aaae0093db165f93e2a0/) | DullahanRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653050...8649c6`](./contracts/ethereum-1/0x653050f11b5f20213c9d1ee62cc02a76518649c6/) | DullahanZapDeposit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5b51a...abaadc`](./contracts/ethereum-1/0xb5b51a7da57fe6db797abd787ddfd923daabaadc/) | HolyPalMultiplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcaa23...c73a44`](./contracts/ethereum-1/0xdcaa23fec70e0e867cd8cd77c9eaaf34e7c73a44/) | IndexMultiplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbd27b...be471b`](./contracts/ethereum-1/0xcbd27bf506ab5580ef86fe6a169449bc24be471b/) | LightQuestBoard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0fb13...54aa62`](./contracts/ethereum-1/0xe0fb13edc73fe156a636bc532fc2e56f9d54aa62/) | PalZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b90e0...207a3b`](./contracts/ethereum-1/0x7b90e043aac79adea0dbb0690e3c832757207a3b/) | WarAuraLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdeac9...f13dbb`](./contracts/ethereum-1/0xfdeac9f9e4a5a7340ac57b47c67d383fb4f13dbb/) | WarController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857ba4...eda619`](./contracts/ethereum-1/0x857ba41f7957a8d8a4c8a61820cad8b119eda619/) | WarCvxCrvFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7afc5d...6c934d`](./contracts/ethereum-1/0x7afc5dc212a658b329e4d14e7d45d325c66c934d/) | WardenPledge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd7219...26cd48`](./contracts/ethereum-1/0xcd7219ce5d6248c99693fa8239e680bd6c26cd48/) | WarRatiosV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8258d...f0cbc1`](./contracts/ethereum-1/0xa8258dee2a677874a48f5320670a869d74f0cbc1/) | WarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf74774...9c35af`](./contracts/ethereum-1/0xf747744518099f44936d6d58041de6cd199c35af/) | WarZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fef29...f4888a`](./contracts/ethereum-1/0x8fef29604d16987e2a0c8ae1dfba47495ff4888a/) | WrappedStakedWar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=35

Fork inheritance lineage and inherited audits are included when available.
