# Agentic Audit Brief: Rank Trading

## Project Overview

- Project: Rank Trading (`rank-trading`)
- Website: [https://rank.trading/](https://rank.trading/)
- Lifecycle: active (Tier 0, 69.1% below peak)
- Generated: 2026-06-19T06:14:34.860Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: bsc
- Contract surface: 8 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,951,466.64
- On-chain TVL (included contracts): $1,189,293.39
- TVL by chain: Bsc $1,189,293.39

## Project Description

Rank Trading is a BSC-based decentralized quant and algorithmic trading platform focused on automated trading strategies, trader and AI-agent marketplace functionality, and strategy vaults. Its native RAN token supports platform utility such as staking and potential revenue-share features, but staking is not the sole product focus and liquidity locking should not be characterized as a core Rank Trading service unless separately documented by the project.

### Architecture

The protocol consists of a single product family where the RankToken serves as the yield-bearing asset, and the UNCX_LiquidityLocker_UniV3 contract secures liquidity. Both contracts are deployed by the same cluster, indicating shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 15 (14 live, 1 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 8
- Raw deployments: 15
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $343.39
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 2 | 40.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RankToken | token | bsc | n/a | [`0x978ab3...cbf952`](./contracts/bsc-56/0x978ab3d5a5c39bcbb2a15f2ad324187dd7cbf952/) | ✅ Audited |
| RankFactory | registry | bsc | n/a | 8 deployments: bsc [`0x1563c9...447227`](./contracts/bsc-56/0x1563c9837f9b71ba6f69342276deda6158447227/); bsc `0x185f8b...31c82e`; bsc `0x276ee9...a17eb8`; bsc `0x8e9fc0...a90601`; bsc `0x95defc...b573f3`; bsc `0xab5389...40e452`; bsc `0xcbabba...b5a679`; bsc `0xf86ada...5b70db` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPool | core_logic | bsc | unit-27598 | [`0xd6a07b...cd1074`](./contracts/bsc-56/0xd6a07b8065f9e8386a9a5bba6a754a10a9cd1074/) | ⚠️ Unaudited |
| FullRangeConvertorV2 | adapter | bsc | n/a | [`0xf8ec48...c51066`](./contracts/bsc-56/0xf8ec48e0022f4b59f120579dba3b472580c51066/) | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | bsc | n/a | [`0xfe88da...bf1557`](./contracts/bsc-56/0xfe88dab083964c56429baa01f37ec2265abf1557/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x582c5a...31a3b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd041c5...e441c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2b1c1...bb53f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hashlock.com/audits/rank-trading) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [View Report](https://hashlock.com/wp-content/uploads/2025/02/RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-01 | aging | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xf8ec48...c51066`](./contracts/bsc-56/0xf8ec48e0022f4b59f120579dba3b472580c51066/) | FullRangeConvertorV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=12

Zero-match audit list:

- [2836] DL audit link

Fork inheritance lineage and inherited audits are included when available.
