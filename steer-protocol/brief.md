# Agentic Audit Brief: Steer Protocol

## Project Overview

- Project: Steer Protocol (`steer-protocol`)
- Website: [https://app.steer.finance?af=defillama](https://app.steer.finance?af=defillama)
- Lifecycle: active (Tier 0, 64.9% below peak)
- Generated: 2026-05-31T10:42:48.350Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum
- Contract surface: 43 unique implementations (71 raw deployments)
- DeFi Llama TVL: $20,474,767.66
- On-chain TVL (included contracts): $3,257,998.70
- TVL by chain: Arbitrum $3,257,998.70

## Project Description

Steer Protocol is a liquidity management platform that automates and optimizes liquidity provision for decentralized exchanges. It uses smart vaults and strategies to manage concentrated liquidity positions, aiming to maximize yields for liquidity providers.

### Architecture

The Orchestrator coordinates the core vault logic, while registries (Vault, Strategy, Bundle, Keeper) manage the components and permissions. The SteerPeriphery provides user-facing interactions, and the GasVault handles transaction fee management, all sharing the STEER token for governance and incentives.

## Audit Coverage Summary

- Verified implementations audited: 0/31 (0.0%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 43
- Raw deployments: 71
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,257,998.70
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | arbitrum | [`0x1c43d0...6cd04e`](./contracts/arbitrum-42161/0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e/) | ⚠️ Unaudited |
| GasVault | core_logic | arbitrum | 2 deployments: arbitrum [`0x16ba71...d7668e`](./contracts/arbitrum-42161/0x16ba7102271dc83fff2f709691c2b601dad7668e/); arbitrum `0x254d37...9e1ada` | ⚠️ Unaudited |
| BundleRegistry | registry | arbitrum | 2 deployments: arbitrum [`0x279228...dc39c4`](./contracts/arbitrum-42161/0x279228aafd13bb4642abb772a248c78555dc39c4/); arbitrum `0xca19be...c0edc4` | ⚠️ Unaudited |
| CamelotMultiPositionLiquidityManager | governance | arbitrum | [`0xa2c286...22026f`](./contracts/arbitrum-42161/0xa2c286bd8e5d2cba08674acd202b37d9f922026f/) | ⚠️ Unaudited |
| CamelotSinglePositionLiquidityManager | governance | arbitrum | [`0x9a9e78...1078b2`](./contracts/arbitrum-42161/0x9a9e78387c21d88138481da872e1dbaef71078b2/) | ⚠️ Unaudited |
| CamelotWhitelistedMultiLiquidityManager | governance | arbitrum | [`0xe86842...fe8e68`](./contracts/arbitrum-42161/0xe868427c366ba8f1037b20faafe7f3da3bfe8e68/) | ⚠️ Unaudited |
| CamelotWhitelistedSingleLiquidityManager | governance | arbitrum | [`0xc7350b...2b12bd`](./contracts/arbitrum-42161/0xc7350b9d93cbb7c5b54ce7a877e76baecd2b12bd/) | ⚠️ Unaudited |
| Core | unknown | arbitrum | 2 deployments: arbitrum [`0x660257...93b158`](./contracts/arbitrum-42161/0x66025704d21c154cf1709ca759d4ddb62293b158/); arbitrum `0xb2f009...1613ea` | ⚠️ Unaudited |
| DynamicJobs | unknown | arbitrum | 2 deployments: arbitrum [`0x981c9a...b0075f`](./contracts/arbitrum-42161/0x981c9af8723a8aa5d85338a8bcf35a9710b0075f/); arbitrum `0xb27a61...1f779b` | ⚠️ Unaudited |
| GlobalReentrancyLock | unknown | arbitrum | 2 deployments: arbitrum [`0x147138...875079`](./contracts/arbitrum-42161/0x147138a3c8ecd229b9306b7b2efc1b261d875079/); arbitrum `0x90eaa6...10539a` | ⚠️ Unaudited |
| HorizaMultiPositionLiquidityManager | governance | arbitrum | [`0x7a4ed7...bfb2a5`](./contracts/arbitrum-42161/0x7a4ed72731e682ea5f6f24dd1d62b43c52bfb2a5/) | ⚠️ Unaudited |
| HorizaSinglePositionLiquidityManager | governance | arbitrum | [`0x8bd01b...4fa08a`](./contracts/arbitrum-42161/0x8bd01b4ece9a81fb93e899d435ce700a1c4fa08a/) | ⚠️ Unaudited |
| HorizaWhitelistedMultiLiquidityManager | governance | arbitrum | [`0x5d32bd...18e153`](./contracts/arbitrum-42161/0x5d32bddb8128aa2827761f24b06037c21c18e153/) | ⚠️ Unaudited |
| HorizaWhitelistedSingleLiquidityManager | governance | arbitrum | [`0x42d131...3caf6d`](./contracts/arbitrum-42161/0x42d1316c1ce4e0f143c12771004afb91a03caf6d/) | ⚠️ Unaudited |
| KeeperRegistry | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x8fb2cd...c971e2`](./contracts/arbitrum-42161/0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2/); arbitrum `0xf4de41...47513b` | ⚠️ Unaudited |
| MultiPositionLiquidityManager | governance | arbitrum | 2 deployments: arbitrum [`0xc1ecd1...15081c`](./contracts/arbitrum-42161/0xc1ecd10398a6d7036ccee1f50551ff169715081c/); arbitrum `0xe1c56f...bced66` | ⚠️ Unaudited |
| Orchestrator | unknown | arbitrum | 2 deployments: arbitrum [`0x2822ee...4e14b5`](./contracts/arbitrum-42161/0x2822ee30383eabcba817ab4a7a592f4a194e14b5/); arbitrum `0x38a071...da0c77` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 2 deployments: arbitrum [`0x2b4f9a...92d710`](./contracts/arbitrum-42161/0x2b4f9ae93516f3a0eecca4c2a8b6a6727692d710/); arbitrum `0x99eca0...99f59b` | ⚠️ Unaudited |
| QuoterV2 | periphery | arbitrum | 2 deployments: arbitrum [`0x2ca933...14d566`](./contracts/arbitrum-42161/0x2ca933639900b88346edb1d1ddf58a752314d566/); arbitrum `0xf71bb6...cb3d30` | ⚠️ Unaudited |
| SinglePositionLiquidityManager | governance | arbitrum | [`0x3b4145...51cc2d`](./contracts/arbitrum-42161/0x3b41454cb7858b6d0535e61bae9362af0151cc2d/) | ⚠️ Unaudited |
| SingleStakingRewardsFactory | registry | arbitrum | [`0x811d4e...df0799`](./contracts/arbitrum-42161/0x811d4e743ef3343de606d9e477592ee54cdf0799/) | ⚠️ Unaudited |
| SmartRewardsDistributor | operational_periphery | arbitrum | [`0x7bb3b1...cfaabb`](./contracts/arbitrum-42161/0x7bb3b13d7ac186cda714fdbfcb1b276252cfaabb/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | 14 deployments: arbitrum [`0x004a73...ce4922`](./contracts/arbitrum-42161/0x004a733aa20ea2caddba6af62bb56aa96dce4922/); arbitrum `0x0635b7...bf5ca8`; arbitrum `0x0b6194...1c43e0`; arbitrum `0x1e6a35...6e863b`; arbitrum `0x233918...ded41f`; arbitrum `0x25ef10...173763`; arbitrum `0x3338b8...8475bb`; arbitrum `0x3dc572...bd7f38`; arbitrum `0x6519a9...bf36cf`; arbitrum `0x78fe84...eadd52`; arbitrum `0xacdc6f...df546f`; arbitrum `0xb10ab1...0b37f1`; arbitrum `0xc3b5fd...5f4e4b`; arbitrum `0xff46e1...8576a4` | ⚠️ Unaudited |
| StakingRewards | unknown | arbitrum | [`0x301389...83eb21`](./contracts/arbitrum-42161/0x30138931beab8ee0233f8a094660c60a4383eb21/) | ⚠️ Unaudited |
| SteerPeriphery | periphery | arbitrum | 3 deployments: arbitrum [`0x37fef4...489ed9`](./contracts/arbitrum-42161/0x37fef4504ee86d1469858c166deb5f7a22489ed9/); arbitrum `0x806c22...4b903f`; arbitrum `0xab36d3...cc6576` | ⚠️ Unaudited |
| StrategyRegistry | registry | arbitrum | 2 deployments: arbitrum [`0x09eb27...be7d1d`](./contracts/arbitrum-42161/0x09eb271b444d1db7163c8555919de85b20be7d1d/); arbitrum `0xd96481...0d1bb2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 2 deployments: arbitrum [`0x31e4ee...d48983`](./contracts/arbitrum-42161/0x31e4ee367d4f2685bafcab9566e9c87e60d48983/); arbitrum `0x81a765...0a2c5e` | ⚠️ Unaudited |
| VaultRegistry | registry | arbitrum | 2 deployments: arbitrum [`0x116dba...32014c`](./contracts/arbitrum-42161/0x116dba5dce9ccda828218b7eb46406810632014c/); arbitrum `0x9f5b09...8877dc` | ⚠️ Unaudited |
| WhitelistedMultiLiquidityManager | governance | arbitrum | [`0x0c5c5b...9a60ce`](./contracts/arbitrum-42161/0x0c5c5beb833fd382b04e039f151942dc3d9a60ce/) | ⚠️ Unaudited |
| WhitelistedSingleLiquidityManager | governance | arbitrum | [`0xdca325...e4bef1`](./contracts/arbitrum-42161/0xdca3251ebe8f85458e8d95813bcb816460e4bef1/) | ⚠️ Unaudited |
| WhitelistRegistry | registry | arbitrum | [`0xa1dd21...0c02e9`](./contracts/arbitrum-42161/0xa1dd21fbd9e1f0bf28d41f18bdc22326e50c02e9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x122126...4c06c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x122e6d...a5abe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x253b89...cefab0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x44379e...03ca07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x657bb5...6f6163` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6d611e...aaa9d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x73f478...f42261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x76fcf4...9d0c43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc113f...881e63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1b49b...bce0ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe489df...192ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfebd20...f5c1a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1c43d0...6cd04e`](./contracts/arbitrum-42161/0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e/) | Token | token | $3,256,409.59 | Verified native implementation with $3,256,409.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa2c286...22026f`](./contracts/arbitrum-42161/0xa2c286bd8e5d2cba08674acd202b37d9f922026f/) | CamelotMultiPositionLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9a9e78...1078b2`](./contracts/arbitrum-42161/0x9a9e78387c21d88138481da872e1dbaef71078b2/) | CamelotSinglePositionLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe86842...fe8e68`](./contracts/arbitrum-42161/0xe868427c366ba8f1037b20faafe7f3da3bfe8e68/) | CamelotWhitelistedMultiLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7350b...2b12bd`](./contracts/arbitrum-42161/0xc7350b9d93cbb7c5b54ce7a877e76baecd2b12bd/) | CamelotWhitelistedSingleLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x660257...93b158`](./contracts/arbitrum-42161/0x66025704d21c154cf1709ca759d4ddb62293b158/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x981c9a...b0075f`](./contracts/arbitrum-42161/0x981c9af8723a8aa5d85338a8bcf35a9710b0075f/) | DynamicJobs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x147138...875079`](./contracts/arbitrum-42161/0x147138a3c8ecd229b9306b7b2efc1b261d875079/) | GlobalReentrancyLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a4ed7...bfb2a5`](./contracts/arbitrum-42161/0x7a4ed72731e682ea5f6f24dd1d62b43c52bfb2a5/) | HorizaMultiPositionLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8bd01b...4fa08a`](./contracts/arbitrum-42161/0x8bd01b4ece9a81fb93e899d435ce700a1c4fa08a/) | HorizaSinglePositionLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d32bd...18e153`](./contracts/arbitrum-42161/0x5d32bddb8128aa2827761f24b06037c21c18e153/) | HorizaWhitelistedMultiLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42d131...3caf6d`](./contracts/arbitrum-42161/0x42d1316c1ce4e0f143c12771004afb91a03caf6d/) | HorizaWhitelistedSingleLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1ecd1...15081c`](./contracts/arbitrum-42161/0xc1ecd10398a6d7036ccee1f50551ff169715081c/) | MultiPositionLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2822ee...4e14b5`](./contracts/arbitrum-42161/0x2822ee30383eabcba817ab4a7a592f4a194e14b5/) | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b4145...51cc2d`](./contracts/arbitrum-42161/0x3b41454cb7858b6d0535e61bae9362af0151cc2d/) | SinglePositionLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x811d4e...df0799`](./contracts/arbitrum-42161/0x811d4e743ef3343de606d9e477592ee54cdf0799/) | SingleStakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7bb3b1...cfaabb`](./contracts/arbitrum-42161/0x7bb3b13d7ac186cda714fdbfcb1b276252cfaabb/) | SmartRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x004a73...ce4922`](./contracts/arbitrum-42161/0x004a733aa20ea2caddba6af62bb56aa96dce4922/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x301389...83eb21`](./contracts/arbitrum-42161/0x30138931beab8ee0233f8a094660c60a4383eb21/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37fef4...489ed9`](./contracts/arbitrum-42161/0x37fef4504ee86d1469858c166deb5f7a22489ed9/) | SteerPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09eb27...be7d1d`](./contracts/arbitrum-42161/0x09eb271b444d1db7163c8555919de85b20be7d1d/) | StrategyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x116dba...32014c`](./contracts/arbitrum-42161/0x116dba5dce9ccda828218b7eb46406810632014c/) | VaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c5c5b...9a60ce`](./contracts/arbitrum-42161/0x0c5c5beb833fd382b04e039f151942dc3d9a60ce/) | WhitelistedMultiLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdca325...e4bef1`](./contracts/arbitrum-42161/0xdca3251ebe8f85458e8d95813bcb816460e4bef1/) | WhitelistedSingleLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa1dd21...0c02e9`](./contracts/arbitrum-42161/0xa1dd21fbd9e1f0bf28d41f18bdc22326e50c02e9/) | WhitelistRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
