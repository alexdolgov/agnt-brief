# Agentic Audit Brief: Snowbank

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Snowbank (`snowbank`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T06:14:39.491Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: avalanche
- Contract surface: 6 unique implementations (9 raw deployments)
- DeFi Llama TVL: $4,100,767.03
- On-chain TVL (included contracts): $36,054,640.10
- TVL by chain: Avalanche $36,054,640.10

## Project Description

Snowbank is an Avalanche-based OHM-style reserve currency protocol that issues the SB token, which is backed by a basket of assets. It includes staking mechanisms for SB holders; any auto-compounding functionality should be treated as inferred from contract names unless verified by current project documentation.

### Architecture

The TimeERC20Token serves as the core SB token, while TimeStaking handles staking rewards and AutoFarmV2_CrossChain provides auto-compounding functionality, likely interacting with the staking contract to reinvest rewards.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TimeERC20Token | token | avalanche | n/a | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | ⚠️ Unaudited |
| ETHTimeBondDepository | unknown | avalanche | n/a | [`0x472c18...bfee9c`](./contracts/avalanche-43114/0x472c18c4079ecb68629f4fba1141172404bfee9c/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | 4 deployments: avalanche [`0x425c45...4404d8`](./contracts/avalanche-43114/0x425c45adfb53861e5db8f17d9b072ab60d4404d8/); avalanche `0x53942d...3f59a2`; avalanche `0x781655...fd755d`; avalanche `0xa3d2cf...417d6d` | ⚠️ Unaudited |
| SnowbankFinalRedistribution | unknown | avalanche | n/a | [`0xafe654...476887`](./contracts/avalanche-43114/0xafe654c1b34e9f702bf8007bccd6481b90476887/) | ⚠️ Unaudited |
| StakingWarmup | unknown | avalanche | n/a | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | ⚠️ Unaudited |
| TimeStaking | unknown | avalanche | n/a | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | TimeERC20Token | token | $36,054,640.10 | Verified native implementation with $36,054,640.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x472c18...bfee9c`](./contracts/avalanche-43114/0x472c18c4079ecb68629f4fba1141172404bfee9c/) | ETHTimeBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xafe654...476887`](./contracts/avalanche-43114/0xafe654c1b34e9f702bf8007bccd6481b90476887/) | SnowbankFinalRedistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | TimeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
