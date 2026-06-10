# Agentic Audit Brief: Rank Trading

## Project Overview

- Project: Rank Trading (`rank-trading`)
- Website: [https://rank.trading/](https://rank.trading/)
- Lifecycle: active (Tier 0, 69.1% below peak)
- Generated: 2026-06-10T20:59:09.464Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 13 unique implementations (31 raw deployments)
- DeFi Llama TVL: $2,326,890.56
- On-chain TVL (included contracts): $1,188,950.00
- TVL by chain: Bsc $1,188,950.00

## Project Description

Rank Trading is a BSC-based decentralized quant and algorithmic trading platform focused on automated trading strategies, trader and AI-agent marketplace functionality, and strategy vaults. Its native RAN token supports platform utility such as staking and potential revenue-share features, but staking is not the sole product focus and liquidity locking should not be characterized as a core Rank Trading service unless separately documented by the project.

### Architecture

The protocol consists of a single product family where the RankToken serves as the yield-bearing asset, and the UNCX_LiquidityLocker_UniV3 contract secures liquidity. Both contracts are deployed by the same cluster, indicating shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 3/10 (30.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 13
- Raw deployments: 31
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 3 | 30.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RankToken | token | bsc | [`0x978ab3...cbf952`](./contracts/bsc-56/0x978ab3d5a5c39bcbb2a15f2ad324187dd7cbf952/) | ✅ Audited |
| RankFactory | registry | bsc | 10 deployments: bsc [`0x1563c9...447227`](./contracts/bsc-56/0x1563c9837f9b71ba6f69342276deda6158447227/); bsc `0x185f8b...31c82e`; bsc `0x276ee9...a17eb8`; bsc `0x6e9d30...286a3f`; bsc `0x7cd6ea...e7dc19`; bsc `0x8e9fc0...a90601`; bsc `0x95defc...b573f3`; bsc `0xab5389...40e452`; bsc `0xcbabba...b5a679`; bsc `0xf86ada...5b70db` | ✅ Audited |
| RankStrategy | core_logic | bsc | [`0xf9b185...1aaffd`](./contracts/bsc-56/0xf9b1859266b21dfc02c8bd31e11103f97a1aaffd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Erc20Simple | token | bsc | [`0x7d322e...8a9cc5`](./contracts/bsc-56/0x7d322eb2f7149de1613f4310a73254abd08a9cc5/) | ⚠️ Unaudited |
| ExposedV3Math | unknown | bsc | 3 deployments: bsc [`0x15022f...d23a54`](./contracts/bsc-56/0x15022f35ce0837b3b524ec699ec8258a8fd23a54/); bsc `0x6c7a2f...873f9c`; bsc `0xc98f2a...caa232` | ⚠️ Unaudited |
| FeeResolver | unknown | bsc | [`0xe9b5f4...b4b21f`](./contracts/bsc-56/0xe9b5f4b3d4796bf57dd9f23af09f310e19b4b21f/) | ⚠️ Unaudited |
| FullRangeConvertor | adapter | bsc | 3 deployments: bsc [`0x247358...9d538c`](./contracts/bsc-56/0x247358c446bf11ae2b54b96faf0e04c8089d538c/); bsc `0x4a8d60...83a953`; bsc `0x955fae...c91db5` | ⚠️ Unaudited |
| FullRangeConvertorV2 | adapter | bsc | 2 deployments: bsc [`0xf67875...55cd71`](./contracts/bsc-56/0xf678750ec4b7b8c9b2f414913de5b3781055cd71/); bsc `0xf8ec48...c51066` | ⚠️ Unaudited |
| MigrateV3NFT | token | bsc | 5 deployments: bsc [`0x2df9b3...8620ab`](./contracts/bsc-56/0x2df9b322666f89418d4b5b0432aef891128620ab/); bsc `0x51907a...ba3201`; bsc `0x6113e8...7892c5`; bsc `0x8a3c8b...54d88c`; bsc `0xe4c7d0...13a52c` | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | bsc | [`0xfe88da...bf1557`](./contracts/bsc-56/0xfe88dab083964c56429baa01f37ec2265abf1557/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | `0x3d413f...ad7a36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb8b00...fb62ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0c497...200ec3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hashlock.com/audits/rank-trading) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [View Report](https://hashlock.com/wp-content/uploads/2025/02/RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-01 | aging | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7d322e...8a9cc5`](./contracts/bsc-56/0x7d322eb2f7149de1613f4310a73254abd08a9cc5/) | Erc20Simple | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15022f...d23a54`](./contracts/bsc-56/0x15022f35ce0837b3b524ec699ec8258a8fd23a54/) | ExposedV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe9b5f4...b4b21f`](./contracts/bsc-56/0xe9b5f4b3d4796bf57dd9f23af09f310e19b4b21f/) | FeeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x247358...9d538c`](./contracts/bsc-56/0x247358c446bf11ae2b54b96faf0e04c8089d538c/) | FullRangeConvertor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf67875...55cd71`](./contracts/bsc-56/0xf678750ec4b7b8c9b2f414913de5b3781055cd71/) | FullRangeConvertorV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2df9b3...8620ab`](./contracts/bsc-56/0x2df9b322666f89418d4b5b0432aef891128620ab/) | MigrateV3NFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

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
