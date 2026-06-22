# Agentic Audit Brief: DeHive

⚠️ Lifecycle status: DECLINING - TVL dropped 7.4% over 90 days

## Project Overview

- Project: DeHive (`dehive`)
- Lifecycle: declining (Tier 0, 99.6% below peak)
- Generated: 2026-06-21T09:20:43.142Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, ethereum, gnosis, polygon
- Contract surface: 6 unique implementations (8 raw deployments)
- DeFi Llama TVL: $114,512.20
- On-chain TVL (included contracts): $342,965.15
- TVL by chain: Ethereum $297,687.75 | Bsc $27,370.06 | Polygon $17,907.33

## Project Description

DeHive is a DeFi protocol that offers tokenized index products (ClusterTokens) and yield-optimization strategies. Users can gain diversified exposure to curated crypto assets and earn yield through staking and automated farming strategies.

### Architecture

All contracts belong to a single DeHive family, sharing a common proxy infrastructure (UtilProxy) that routes calls to various logic implementations. ClusterTokens represent index products, while StakingPools, StakingDHV, and ImpulseStaking contracts manage staking and yield strategies, often interacting with external DEX pairs (UniswapV2Pair, PancakePair) and cross-chain tokens (AnyswapV5ERC20).

## Contract Surface Quality

- Indexed contracts: 358; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 155 inactive, 195 singleton, 0 uninitialized.
- Deployment units: 0/96 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 1/5 (20.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 8
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $342,965.15
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $342,965.15 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 1 | 20.0% | 2021-08 |
| unknown | Tier 2 | 1 | 20.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClusterToken | token | bsc | n/a | 2 deployments: bsc [`0x0a6844...e38ed5`](./contracts/bsc-56/0x0a684421ef48b431803bfd75f38675eab1e38ed5/); polygon `0x4964b3...6af0f0` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DHVToken | token | ethereum | n/a | [`0x62dc48...d34b2a`](./contracts/ethereum-1/0x62dc4817588d53a056cbbd18231d91ffccd34b2a/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | bsc | n/a | 2 deployments: bsc [`0x58759d...5b58d7`](./contracts/bsc-56/0x58759dd469ae5631c42cf8a473992335575b58d7/); polygon `0x5fcb9d...f97b26` | ⚠️ Unaudited |
| ClusterTokenV2 | token | gnosis | n/a | [`0xf557b2...363bc0`](./contracts/gnosis-100/0xf557b2b73b872e6d2f43826f9d77b7402a363bc0/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x72ba00...9a7ca9`](./contracts/bsc-56/0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0xfbdd19...5d01b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeHive-Hacken-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Hacken-Audit.pdf) | Hacken | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |
| [DeHive-Zokyo-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Zokyo-Audit.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x62dc48...d34b2a`](./contracts/ethereum-1/0x62dc4817588d53a056cbbd18231d91ffccd34b2a/) | DHVToken | token | $297,687.75 | Verified native implementation with $297,687.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xf557b2...363bc0`](./contracts/gnosis-100/0xf557b2b73b872e6d2f43826f9d77b7402a363bc0/) | ClusterTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=105

Fork inheritance lineage and inherited audits are included when available.
