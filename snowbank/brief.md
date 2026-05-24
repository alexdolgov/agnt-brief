# Agentic Audit Brief: Snowbank

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Snowbank (`snowbank`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-05-24T01:58:48.565Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche
- Contract surface: 108 unique implementations (116 raw deployments)
- DeFi Llama TVL: $3,767,022.64
- On-chain TVL (included contracts): $36,054,640.10
- TVL by chain: Avalanche $36,054,640.10

## Project Description

Snowbank is a reserve currency protocol on Avalanche that issues the SB token, which is backed by a basket of assets. It provides staking and auto-compounding mechanisms to incentivize long-term holding and grow the treasury.

### Architecture

The TimeERC20Token serves as the core SB token, while TimeStaking handles staking rewards and AutoFarmV2_CrossChain provides auto-compounding functionality, likely interacting with the staking contract to reinvest rewards.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 96
- Unique implementations: 108
- Raw deployments: 116
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $36,054,640.10
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $36,054,640.10 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TimeERC20Token | token | avalanche | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | avalanche | [`0x864a0b...23f213`](./contracts/avalanche-43114/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | ⚠️ Unaudited |
| Distributor | operational_periphery | avalanche | [`0x5ed671...4d19fc`](./contracts/avalanche-43114/0x5ed6713a67298c4d826a3690cea628e20d4d19fc/) | ⚠️ Unaudited |
| SnowbankBondDepository | unknown | avalanche | 5 deployments: avalanche [`0x0d71d9...4517ff`](./contracts/avalanche-43114/0x0d71d9616f6844f12f1ce1516aa67817754517ff/); avalanche `0x4226b0...007174`; avalanche `0x555d01...83f43e`; avalanche `0x5e831e...caa480`; avalanche `0x8548a4...9b1432` | ⚠️ Unaudited |
| SnowbankNoRFVBondDepository | unknown | avalanche | 2 deployments: avalanche [`0x4a916a...fa7ac0`](./contracts/avalanche-43114/0x4a916abcb24236cae854c51914b8374374fa7ac0/); avalanche `0x5030dc...8ec36e` | ⚠️ Unaudited |
| SnowbankProMaxFactory | registry | avalanche | 3 deployments: avalanche [`0xa420aa...ac3f95`](./contracts/avalanche-43114/0xa420aac325ee5b4e7b7b6008e73bb77452ac3f95/); avalanche `0xdbec2f...e0b224`; avalanche `0xfe5ab2...ff2380` | ⚠️ Unaudited |
| SnowbankProMaxFactoryStorage | registry | avalanche | [`0x6a019f...f3b3be`](./contracts/avalanche-43114/0x6a019fac4954af6019836d3769920122fbf3b3be/) | ⚠️ Unaudited |
| SPMSubsidyRouter | adapter | avalanche | [`0xbbf060...152706`](./contracts/avalanche-43114/0xbbf060a065c918022006699da8e300b0ca152706/) | ⚠️ Unaudited |
| StakingHelper | periphery | avalanche | [`0x3d371d...6387ce`](./contracts/avalanche-43114/0x3d371d925db78f8e46130af95756789ece6387ce/) | ⚠️ Unaudited |
| StakingWarmup | unknown | avalanche | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | ⚠️ Unaudited |
| TimelockController_RewardsDistributor2 | operational_periphery | avalanche | 2 deployments: avalanche [`0x4b6ed3...b2f68f`](./contracts/avalanche-43114/0x4b6ed34fa26a0a86fde513e7d3239dc85ab2f68f/); avalanche `0x562bdc...e42cbe` | ⚠️ Unaudited |
| TimeStaking | unknown | avalanche | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (96)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x036f2f...44472f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0880ae...8ea2b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b14cf...ca0c5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c98e5...7c0931` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e9bfb...f1c615` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x107898...2f6d38` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x12196f...73edfb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x143d7b...67479d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x15a7db...d9af97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x166e27...23fce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x173b92...31761e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1e99f6...154e2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f784f...bcc0d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22496a...d3187c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x24b832...3eede3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x260c93...c9333b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x260e7d...4de0a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ca290...51ec1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d894f...5d18d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ee0f5...47dfb1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x31e291...0eda44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x38d409...21c8a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x39ea1b...64be60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3aace1...bf7b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4460d4...e6185b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x452d65...625183` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x48620b...32c6fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4dd60d...95b478` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ff8d0...37dcc4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x50c551...a2fab1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x554df3...c1552f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x56b890...f3eb12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x579cca...dac235` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5aefdb...631218` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5ca61a...7e4887` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x608480...b19c5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62d9db...a46337` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x631a14...05a6da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x686e4f...092fbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x703730...5c58ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x718e4d...67c576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x71970c...796696` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7347c5...2aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74fa2b...a16c62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x757858...8e2864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x78d5f2...4c904f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7997f3...e8a600` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7adba1...d47cca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7f5d70...f795ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x868fe2...b07fcd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8b0889...6bc832` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x92453c...bb5105` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x93e6dc...0d526a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x99c1de...98d27e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa039d2...158a3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1737e...56c44a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa20283...9d814d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa30278...064da5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa40b92...230057` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa55dc6...88da66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa5bb4c...6bb503` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa5efee...841714` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa7eac0...4f8f23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa881b9...de3617` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa993ae...f6dcbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaac353...9b60b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaae582...fc3b5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae9720...4868e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb278ef...1b0347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6dddf...947499` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb72ef7...4b466f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb15fb...5ad69e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb3904...c7d726` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbe487a...d187a6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc388d5...417d49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc3ba68...23c13b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc4d81c...6be2e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd218c1...174048` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2adf2...9ce708` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd60d41...5142f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd784dd...f67fc3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd8b9e9...223bed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda4f3e...e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe2babe...452460` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe442be...6bd605` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb9dba...a978a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeca70a...9c3556` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee02ea...ccf3c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee7fbb...80f365` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1bed9...7063ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf23a3b...2b6cd6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf5a5cd...f9f8be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf843b0...927fe7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf977e0...6a3cb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfac251...28c0c8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | TimeERC20Token | token | $36,054,640.10 | Verified native implementation with $36,054,640.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x864a0b...23f213`](./contracts/avalanche-43114/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5ed671...4d19fc`](./contracts/avalanche-43114/0x5ed6713a67298c4d826a3690cea628e20d4d19fc/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0d71d9...4517ff`](./contracts/avalanche-43114/0x0d71d9616f6844f12f1ce1516aa67817754517ff/) | SnowbankBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4a916a...fa7ac0`](./contracts/avalanche-43114/0x4a916abcb24236cae854c51914b8374374fa7ac0/) | SnowbankNoRFVBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa420aa...ac3f95`](./contracts/avalanche-43114/0xa420aac325ee5b4e7b7b6008e73bb77452ac3f95/) | SnowbankProMaxFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6a019f...f3b3be`](./contracts/avalanche-43114/0x6a019fac4954af6019836d3769920122fbf3b3be/) | SnowbankProMaxFactoryStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbbf060...152706`](./contracts/avalanche-43114/0xbbf060a065c918022006699da8e300b0ca152706/) | SPMSubsidyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3d371d...6387ce`](./contracts/avalanche-43114/0x3d371d925db78f8e46130af95756789ece6387ce/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4b6ed3...b2f68f`](./contracts/avalanche-43114/0x4b6ed34fa26a0a86fde513e7d3239dc85ab2f68f/) | TimelockController_RewardsDistributor2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | TimeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 61 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
