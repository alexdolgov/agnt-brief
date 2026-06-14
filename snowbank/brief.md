# Agentic Audit Brief: Snowbank

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Snowbank (`snowbank`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-14T06:58:57.219Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-9bd7
- Chains: avalanche
- Contract surface: 17 unique implementations (27 raw deployments)
- DeFi Llama TVL: $4,100,767.03
- On-chain TVL (included contracts): $36,054,640.10
- TVL by chain: Avalanche $36,054,640.10

## Project Description

Snowbank is an Avalanche-based OHM-style reserve currency protocol that issues the SB token, which is backed by a basket of assets. It includes staking mechanisms for SB holders; any auto-compounding functionality should be treated as inferred from contract names unless verified by current project documentation.

### Architecture

The TimeERC20Token serves as the core SB token, while TimeStaking handles staking rewards and AutoFarmV2_CrossChain provides auto-compounding functionality, likely interacting with the staking contract to reinvest rewards.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TimeERC20Token | token | avalanche | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | avalanche | [`0x864a0b...23f213`](./contracts/avalanche-43114/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | ⚠️ Unaudited |
| Distributor | operational_periphery | avalanche | [`0x5ed671...4d19fc`](./contracts/avalanche-43114/0x5ed6713a67298c4d826a3690cea628e20d4d19fc/) | ⚠️ Unaudited |
| ETHTimeBondDepository | unknown | avalanche | [`0x472c18...bfee9c`](./contracts/avalanche-43114/0x472c18c4079ecb68629f4fba1141172404bfee9c/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | 4 deployments: avalanche [`0x425c45...4404d8`](./contracts/avalanche-43114/0x425c45adfb53861e5db8f17d9b072ab60d4404d8/); avalanche `0x53942d...3f59a2`; avalanche `0x781655...fd755d`; avalanche `0xa3d2cf...417d6d` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | avalanche | [`0x561c56...c1ea7c`](./contracts/avalanche-43114/0x561c56b6ea927c157a9f51fcccfa50b777c1ea7c/) | ⚠️ Unaudited |
| SnowbankBondDepository | unknown | avalanche | 5 deployments: avalanche [`0x0d71d9...4517ff`](./contracts/avalanche-43114/0x0d71d9616f6844f12f1ce1516aa67817754517ff/); avalanche `0x4226b0...007174`; avalanche `0x555d01...83f43e`; avalanche `0x5e831e...caa480`; avalanche `0x8548a4...9b1432` | ⚠️ Unaudited |
| SnowbankFinalRedistribution | unknown | avalanche | [`0xafe654...476887`](./contracts/avalanche-43114/0xafe654c1b34e9f702bf8007bccd6481b90476887/) | ⚠️ Unaudited |
| SnowbankNoRFVBondDepository | unknown | avalanche | 2 deployments: avalanche [`0x4a916a...fa7ac0`](./contracts/avalanche-43114/0x4a916abcb24236cae854c51914b8374374fa7ac0/); avalanche `0x5030dc...8ec36e` | ⚠️ Unaudited |
| SnowbankProMaxFactory | registry | avalanche | 3 deployments: avalanche [`0xa420aa...ac3f95`](./contracts/avalanche-43114/0xa420aac325ee5b4e7b7b6008e73bb77452ac3f95/); avalanche `0xdbec2f...e0b224`; avalanche `0xfe5ab2...ff2380` | ⚠️ Unaudited |
| SnowbankProMaxFactoryStorage | registry | avalanche | [`0x6a019f...f3b3be`](./contracts/avalanche-43114/0x6a019fac4954af6019836d3769920122fbf3b3be/) | ⚠️ Unaudited |
| SPMSubsidyRouter | adapter | avalanche | [`0xbbf060...152706`](./contracts/avalanche-43114/0xbbf060a065c918022006699da8e300b0ca152706/) | ⚠️ Unaudited |
| StakingHelper | periphery | avalanche | [`0x3d371d...6387ce`](./contracts/avalanche-43114/0x3d371d925db78f8e46130af95756789ece6387ce/) | ⚠️ Unaudited |
| StakingWarmup | unknown | avalanche | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | ⚠️ Unaudited |
| TimeStaking | unknown | avalanche | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | ⚠️ Unaudited |
| wsSB | unknown | avalanche | [`0x31c4c0...3c87d4`](./contracts/avalanche-43114/0x31c4c046efad4b04b823a919cc0bdd0f663c87d4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0xc669dc...6f1430` | ❓ Unverified |

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
| avalanche | [`0x472c18...bfee9c`](./contracts/avalanche-43114/0x472c18c4079ecb68629f4fba1141172404bfee9c/) | ETHTimeBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0d71d9...4517ff`](./contracts/avalanche-43114/0x0d71d9616f6844f12f1ce1516aa67817754517ff/) | SnowbankBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xafe654...476887`](./contracts/avalanche-43114/0xafe654c1b34e9f702bf8007bccd6481b90476887/) | SnowbankFinalRedistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4a916a...fa7ac0`](./contracts/avalanche-43114/0x4a916abcb24236cae854c51914b8374374fa7ac0/) | SnowbankNoRFVBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa420aa...ac3f95`](./contracts/avalanche-43114/0xa420aac325ee5b4e7b7b6008e73bb77452ac3f95/) | SnowbankProMaxFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6a019f...f3b3be`](./contracts/avalanche-43114/0x6a019fac4954af6019836d3769920122fbf3b3be/) | SnowbankProMaxFactoryStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbbf060...152706`](./contracts/avalanche-43114/0xbbf060a065c918022006699da8e300b0ca152706/) | SPMSubsidyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3d371d...6387ce`](./contracts/avalanche-43114/0x3d371d925db78f8e46130af95756789ece6387ce/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | TimeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x31c4c0...3c87d4`](./contracts/avalanche-43114/0x31c4c046efad4b04b823a919cc0bdd0f663c87d4/) | wsSB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
