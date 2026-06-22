# Agentic Audit Brief: Arbitrum Exchange

⚠️ Lifecycle status: DEAD - TVL dropped 14.6% over 90 days

## Project Overview

- Project: Arbitrum Exchange (`arbitrum-exchange`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T22:32:02.828Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum
- Contract surface: 6 unique implementations (8 raw deployments)
- DeFi Llama TVL: $11,865.00
- On-chain TVL (included contracts): $3,205.87
- TVL by chain: Arbitrum $3,205.87

## Project Description

Arbitrum Exchange is a decentralized exchange (DEX) on Arbitrum One that enables users to trade tokens, provide liquidity, and earn yield through staking and farming mechanisms. It features a factory for creating liquidity pools, flexible and standard pool contracts, and a native ARX token for incentives.

### Architecture

The ArbDexFactory deploys and registers ARXPool and ARXFlexiblePool contracts, which hold liquidity and facilitate swaps. The ArxToken is distributed as rewards through MasterChef and SmartChefInitializable staking contracts, incentivizing liquidity provision across the pools.

## Contract Surface Quality

- Indexed contracts: 207; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 199 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArxToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x94e0e9...002486`](./contracts/arbitrum-42161/0x94e0e99759753d4ad17e508cf7ee25d2ea002486/); arbitrum `0xd5954c...8aee84` | ✅ Audited |
| ARXPool | core_logic | arbitrum | n/a | [`0xee1d57...2fbfc8`](./contracts/arbitrum-42161/0xee1d57ace6350d70e8161632769d29d34b2fbfc8/) | ✅ Audited |
| MasterChef | unknown | arbitrum | n/a | [`0xd2bcfd...053a06`](./contracts/arbitrum-42161/0xd2bcfd6b84e778d2de5bb6a167ecbbef5d053a06/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbiDexRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x3e4829...914975`](./contracts/arbitrum-42161/0x3e48298a5fe88e4d62985dff65dee39a25914975/); arbitrum `0x7238fb...e57aac` | ⚠️ Unaudited |
| ArbiDexZapV1 | adapter | arbitrum | n/a | [`0x97c397...e85f21`](./contracts/arbitrum-42161/0x97c397b23836ebaa1f5602894caa469537e85f21/) | ⚠️ Unaudited |
| SmartChefInitializable | unknown | arbitrum | n/a | [`0x75bca5...30265a`](./contracts/arbitrum-42161/0x75bca51be93e97ff7d3198506f368b472730265a/) | ⚠️ Unaudited |

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
| [ARBITRUM EXCHANGE Full AUDIT Report.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/03c1a811a69f8e459264c22d140cba99b3a518da/ARBITRUM%20EXCHANGE%20Full%20AUDIT%20Report.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3e4829...914975`](./contracts/arbitrum-42161/0x3e48298a5fe88e4d62985dff65dee39a25914975/) | ArbiDexRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97c397...e85f21`](./contracts/arbitrum-42161/0x97c397b23836ebaa1f5602894caa469537e85f21/) | ArbiDexZapV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75bca5...30265a`](./contracts/arbitrum-42161/0x75bca51be93e97ff7d3198506f368b472730265a/) | SmartChefInitializable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=37

Fork inheritance lineage and inherited audits are included when available.
