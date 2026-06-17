# Agentic Audit Brief: Jones DAO

## Project Overview

- Project: Jones DAO (`jones-dao`)
- Website: [https://jonesdao.io](https://jonesdao.io)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:42.992Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, ethereum
- Contract surface: 49 unique implementations (55 raw deployments)
- DeFi Llama TVL: $1,318,309.60
- On-chain TVL (included contracts): $516,507,972.41
- TVL by chain: Ethereum $452,535,989.24 | Arbitrum $63,971,983.18

## Project Description

Jones DAO is an active yield, strategy, and liquidity vault protocol currently centered on Arbitrum and Ethereum/Mainnet. Its protocol-owned surface should be limited to live Jones-owned vault and strategy contracts; upstream protocols, standard tokens, bridges, routers, safes, admin/beacon infrastructure, and other dependencies should be tracked separately. Historical, experimental, or detected deployments on Base, Berachain, Blast, or other chains should not be presented as current core product surface unless independently verified as active Jones-supported products.

### Architecture

The families share governance via Gnosis Safe and ProxyAdmin, and use common infrastructure like WhitelistController, Factory, and UpgradeableBeacon for access control and upgradeability. Options vaults feed into hedging strategies, while liquidity management vaults use swappers and price helpers across multiple DEXs, and cross-chain wrappers enable asset mobility between Arbitrum and mainnet.

## Contract Surface Quality

- Indexed contracts: 1369; live-surface contracts included: 55 (54 live, 1 unknown).
- Excluded by liveness: 984 inactive, 330 singleton, 0 uninitialized.
- Deployment units: 6/188 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 8/41.

## Audit Coverage Summary

- Verified implementations audited: 6/46 (13.0%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 49
- Raw deployments: 55
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $67,281,808.33
- Latest audit: 2023-03 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 6 | 13.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuraVirtualVault | core_logic | ethereum | n/a | [`0x25e8f9...c27326`](./contracts/ethereum-1/0x25e8f96c443b392ff9cdb9159b02f0040ec27326/) | ✅ Audited |
| JonesERC20VaultV3 | core_logic | arbitrum | n/a | [`0x8883e5...73f3f5`](./contracts/arbitrum-42161/0x8883e5bb2920bbe766a2c9e86ad9aa45a573f3f5/) | ✅ Audited |
| AuraCompounderStrategy | adapter | ethereum | unit-26407 | [`0x7629fc...121f2c`](./contracts/ethereum-1/0x7629fc134e5a7febef6340438d96881c8d121f2c/) | ✅ Audited |
| AuraCompounderVault | adapter | ethereum | n/a | [`0x198d73...34cd1f`](./contracts/ethereum-1/0x198d7387fa97a73f05b8578cdeff8f2a1f34cd1f/) | ✅ Audited |
| JonesGlpCompoundRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7241bc...4a3af6`](./contracts/arbitrum-42161/0x7241bc8035b65865156ddb5edef3eb32874a3af6/); arbitrum `0xe66998...8458e0` | ✅ Audited |
| JonesWETHVaultV3Adapter | adapter | arbitrum | n/a | [`0xbcb55b...6f3c2d`](./contracts/arbitrum-42161/0xbcb55bdb669e756e982169c19c20c987c26f3c2d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-26483 | [`0x6c2c06...13ee55`](./contracts/arbitrum-42161/0x6c2c06790b3e3e3c38e12ee22f8183b37a13ee55/) | ⚠️ Unaudited |
| cvxCrvToken | token | ethereum | n/a | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | ⚠️ Unaudited |
| SynapseERC20 | token | arbitrum | n/a | [`0x8d9ba5...e65fb1`](./contracts/arbitrum-42161/0x8d9ba570d6cb60c7e3e0f31343efe75ab8e65fb1/) | ⚠️ Unaudited |
| ArbRdpxTokenV2 | token | arbitrum | unit-26438 | [`0x32eb79...92a212`](./contracts/arbitrum-42161/0x32eb7902d4134bf98a28b963d26de779af92a212/) | ⚠️ Unaudited |
| JonesToken | token | arbitrum | n/a | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | ⚠️ Unaudited |
| AuraToken | token | ethereum | n/a | [`0xc0c293...903dbf`](./contracts/ethereum-1/0xc0c293ce456ff0ed870add98a0828dd4d2903dbf/) | ⚠️ Unaudited |
| BaseRewardPool | core_logic | ethereum | n/a | [`0x5e5ea2...96efcc`](./contracts/ethereum-1/0x5e5ea2048475854a5702f5b8468a51ba1296efcc/) | ⚠️ Unaudited |
| MetavaultRefund | core_logic | arbitrum | n/a | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | ⚠️ Unaudited |
| RdpxEthBullVault | core_logic | arbitrum | n/a | [`0x64f6c7...de5393`](./contracts/arbitrum-42161/0x64f6c761d855a6eff9ef8b025b0258bddede5393/) | ⚠️ Unaudited |
| ArbEthSSOVV2 | unknown | arbitrum | n/a | [`0x711da6...529c70`](./contracts/arbitrum-42161/0x711da677a0d61ee855dad4241b552a706f529c70/) | ⚠️ Unaudited |
| ArbMonthlyCallsSsovV3 | unknown | arbitrum | n/a | [`0xdf3d96...cc6148`](./contracts/arbitrum-42161/0xdf3d96299275e2fb40124b8ad9d270acfdcc6148/) | ⚠️ Unaudited |
| ArbStip | unknown | arbitrum | n/a | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ⚠️ Unaudited |
| AuraLocker | unknown | ethereum | n/a | [`0x3fa73f...9bbcac`](./contracts/ethereum-1/0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac/) | ⚠️ Unaudited |
| AuraStakingProxy | proxy | ethereum | n/a | [`0xd9e863...f89c6c`](./contracts/ethereum-1/0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c/) | ⚠️ Unaudited |
| Claimer | operational_periphery | arbitrum | n/a | [`0xc4e751...bf90f1`](./contracts/arbitrum-42161/0xc4e751f599fe515876346824ebb6995bb8bf90f1/) | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | arbitrum | n/a | [`0xa99096...ce68c8`](./contracts/arbitrum-42161/0xa99096428f1bd2065dcaa141c59c46729cce68c8/) | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0xead792...d1b827`](./contracts/ethereum-1/0xead792b55340aa20181a80d6a16db6a0ecd1b827/) | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | ethereum | n/a | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | ⚠️ Unaudited |
| DopexBridgoorNFT | token | arbitrum | n/a | [`0x4ee9fe...b7d955`](./contracts/arbitrum-42161/0x4ee9fe9500e7c4fe849add9b14beec5ec5b7d955/) | ⚠️ Unaudited |
| DopexSantasNFT | token | arbitrum | n/a | [`0xe5953c...156e5d`](./contracts/arbitrum-42161/0xe5953cd5c1046c5428aba3a1e8797218e5156e5d/) | ⚠️ Unaudited |
| DpxEthBullVault | core_logic | arbitrum | n/a | [`0x7aa12d...ff9c19`](./contracts/arbitrum-42161/0x7aa12db079c901400e22a5b912204dc575ff9c19/) | ⚠️ Unaudited |
| DpxEthLpFarm | unknown | arbitrum | n/a | [`0x1f80c9...e58a28`](./contracts/arbitrum-42161/0x1f80c96ca521d7247a818a09b0b15c38e3e58a28/) | ⚠️ Unaudited |
| DPXVotingEscrow | operational_periphery | arbitrum | n/a | [`0x80789d...5d9f16`](./contracts/arbitrum-42161/0x80789d252a288e93b01d82373d767d71a75d9f16/) | ⚠️ Unaudited |
| EthMonthlyCallsSsovV3 | unknown | arbitrum | n/a | [`0x7af639...49c83e`](./contracts/arbitrum-42161/0x7af6399e4dd8c1d5b7c53dc2c6ad04b39049c83e/) | ⚠️ Unaudited |
| EthWeeklyCallsSsovV3 | unknown | arbitrum | n/a | [`0x9cc9be...0e6ea0`](./contracts/arbitrum-42161/0x9cc9beffe64868cb4b97890a19219449890e6ea0/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-26560 (2 proxies) | 2 deployments: arbitrum [`0xdd0556...d90774`](./contracts/arbitrum-42161/0xdd0556ddcfe7cdab3540e7f09cb366f498d90774/); arbitrum `0xfa82f1...ca0b1f` | ⚠️ Unaudited |
| HyperClaimer | operational_periphery | blast | n/a | [`0xb13643...bc2b2a`](./contracts/blast-81457/0xb1364361dc71641defc57a0b1f06afb5e0bc2b2a/) | ⚠️ Unaudited |
| JonesAsset | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/); arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| MillinerV2 | unknown | arbitrum | n/a | [`0xb94d19...0fd756`](./contracts/arbitrum-42161/0xb94d1959084081c5a11c460012ab522f5a0fd756/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | n/a | [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x3db8cf...bf5cb0`](./contracts/arbitrum-42161/0x3db8cf0c3a0548667d906251eee8cf17a8bf5cb0/) | ⚠️ Unaudited |
| RamsesClaimer | operational_periphery | arbitrum | n/a | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | ⚠️ Unaudited |
| RdpxEthLpFarm | unknown | arbitrum | n/a | [`0xeb0f03...ca29eb`](./contracts/arbitrum-42161/0xeb0f03a203f25f08c7aff0e1b1c2e0ee25ca29eb/) | ⚠️ Unaudited |
| RdpxMonthlyCallsSsovV3 | unknown | arbitrum | n/a | [`0xd74c61...5efb4e`](./contracts/arbitrum-42161/0xd74c61ca8917be73377d74a007e6f002c25efb4e/) | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | ethereum | n/a | [`0xb188b1...9fec59`](./contracts/ethereum-1/0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59/) | ⚠️ Unaudited |
| StEthWeeklyCallsSsovV3 | unknown | arbitrum | n/a | [`0xfca61e...8df678`](./contracts/arbitrum-42161/0xfca61e79f38a7a82c62f469f55a9df54cb8df678/) | ⚠️ Unaudited |
| ThrusterPool | core_logic | blast | n/a | [`0xd99593...aed256`](./contracts/blast-81457/0xd99593149a794496c601f789daa1203d03aed256/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | n/a | 2 deployments: base [`0x74fb98...876444`](./contracts/base-8453/0x74fb986919e8af115fc314c5582b9bda7b876444/); base `0xf572c7...455c6d` | ⚠️ Unaudited |
| UniversalMainnetSwapper | adapter | ethereum | n/a | [`0xc9dd81...4b4859`](./contracts/ethereum-1/0xc9dd81508af5c47b7d54ba29a027cc1a514b4859/) | ⚠️ Unaudited |
| veDPXYieldDistributor | operational_periphery | arbitrum | n/a | [`0xcbbfb7...d9775f`](./contracts/arbitrum-42161/0xcbbfb7e0e6782df0d3e91f8d785a5bf9e8d9775f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CompounderStrategy | adapter | blast | unit-26591 | `0xf0c06b...914b6c` | ❓ Unverified |
| MillinerV3 | unknown | arbitrum | unit-26505 | `0x8127ff...c72690` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1a26c...0d470f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit report](https://sourcehat.com/audits/JonesDAO) | SourceHat | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [third audit report (latest)](https://sourcehat.com/audits/JonesDAOGLPVaults) | SourceHat | Audit | 2023-01 | stale | Direct | contract_name | 2 | high |
| [**Advanced Strategy Vaults:** [third audit report (latest)](https://solidity.finance/audits/JonesDAOGLPVaults/), [second audit report](< >), [first audit report](<https://solidity.finance/audits/JonesDAOVaults/ >)](https://sourcehat.com/audits/JonesDAOVaultsV2) | SourceHat | Audit | 2023-01 | stale | Direct | contract_name | 2 | high |
| [**Advanced Strategy Vaults:** [third audit report (latest)](https://solidity.finance/audits/JonesDAOGLPVaults/), [second audit report](<https://solidity.finance/audits/JonesDAOVaultsV2/ >), [first audit report](< >)](https://sourcehat.com/audits/JonesDAOVaults) | SourceHat | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [audit report](https://sourcehat.com/audits/JonesAURA) | SourceHat | Audit | 2023-03 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | cvxCrvToken | token | $2,431,712.98 | Verified native implementation with $2,431,712.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e5ea2...96efcc`](./contracts/ethereum-1/0x5e5ea2048475854a5702f5b8468a51ba1296efcc/) | BaseRewardPool | core_logic | $4,545.69 | Verified native implementation with $4,545.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | MetavaultRefund | core_logic | $4,087.66 | Verified native implementation with $4,087.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x64f6c7...de5393`](./contracts/arbitrum-42161/0x64f6c761d855a6eff9ef8b025b0258bddede5393/) | RdpxEthBullVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xead792...d1b827`](./contracts/ethereum-1/0xead792b55340aa20181a80d6a16db6a0ecd1b827/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7aa12d...ff9c19`](./contracts/arbitrum-42161/0x7aa12db079c901400e22a5b912204dc575ff9c19/) | DpxEthBullVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7af639...49c83e`](./contracts/arbitrum-42161/0x7af6399e4dd8c1d5b7c53dc2c6ad04b39049c83e/) | EthMonthlyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/) | JonesAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9dd81...4b4859`](./contracts/ethereum-1/0xc9dd81508af5c47b7d54ba29a027cc1a514b4859/) | UniversalMainnetSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 9 |
| standard_library | 6 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=120

Zero-match audit list:

- [11591] **Advanced Strategy Vaults:** [third audit report (latest)](https://solidity.finance/audits/JonesDAOGLPVaults/), [second audit report](<https://solidity.finance/audits/JonesDAOVaultsV2/ >), [first audit report](< >)

Fork inheritance lineage and inherited audits are included when available.
