# Agentic Audit Brief: Boros

## Project Overview

- Project: Boros (`boros`)
- Website: [https://boros.pendle.finance/markets](https://boros.pendle.finance/markets)
- Lifecycle: active (Tier 0, 16.9% below peak)
- Generated: 2026-06-18T21:13:54.479Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5cc8
- Chains: arbitrum
- Contract surface: 21 unique implementations (23 raw deployments)
- DeFi Llama TVL: $9,749,792.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Boros is Pendle's Arbitrum-based interest-rate and funding-rate derivatives platform for leveraged funding-rate or yield exposure, enabling users to speculate on rate shifts or hedge perpetuals funding-rate exposure through its market hub, router, and AMM components.

### Architecture

The MarketHubEntry serves as the main entry point for user interactions, while the Router handles trade execution and liquidity aggregation. Both contracts are upgradeable proxies, indicating a shared upgrade management pattern.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 23 (22 live, 1 unknown).
- Excluded by liveness: 0 inactive, 7 singleton, 0 uninitialized.
- Deployment units: 9/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/21 (28.6%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 23
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 5 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 9.5% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 6 | 28.6% | 2025-07 |
| ChainSecurity | Tier 1 | 2 | 9.5% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AMMModule | unknown | arbitrum | n/a | [`0x8c8436...14e2d3`](./contracts/arbitrum-42161/0x8c8436f76618be610a2e9b630b7687f13714e2d3/) | ✅ Audited |
| AuthModule | unknown | arbitrum | n/a | [`0x9c2aba...122bf8`](./contracts/arbitrum-42161/0x9c2aba7dc0fdaa6101db31d57cac470931122bf8/) | ✅ Audited |
| MarketHubEntry | unknown | arbitrum | unit-39110 | [`0x108080...12adad`](./contracts/arbitrum-42161/0x1080808080f145b14228443212e62447c112adad/) | ✅ Audited |
| MiscModule | unknown | arbitrum | n/a | [`0x66bbfd...ba5b31`](./contracts/arbitrum-42161/0x66bbfda304b462acc436a645ae8ece2087ba5b31/) | ✅ Audited |
| Router | adapter | arbitrum | unit-39118 | [`0x808080...52def6`](./contracts/arbitrum-42161/0x8080808080dab95efed788a9214e400ba552def6/) | ✅ Audited |
| TradeModule | unknown | arbitrum | n/a | [`0x21bfd0...f6ad3f`](./contracts/arbitrum-42161/0x21bfd0f5502d8843d099f89d7424aceefaf6ad3f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminModule | unknown | arbitrum | unit-39115 | [`0x353c6b...17518b`](./contracts/arbitrum-42161/0x353c6ba99500f9f5a7937af7bf26c8e40817518b/) | ⚠️ Unaudited |
| AMMFactory | registry | arbitrum | unit-39114 | [`0x3205e9...f0f23c`](./contracts/arbitrum-42161/0x3205e972714b52512c837ae6f5fcfdeb07f0f23c/) | ⚠️ Unaudited |
| ConditionalModule | unknown | arbitrum | n/a | [`0xfe4bfb...c42688`](./contracts/arbitrum-42161/0xfe4bfbab3f0d7f703ad6fdba56c4ef3559c42688/) | ⚠️ Unaudited |
| DepositBoxFactory | registry | arbitrum | unit-39123 | [`0xdeb0fa...60e12c`](./contracts/arbitrum-42161/0xdeb0fac888c33e3e7394c095fe3c4e3de760e12c/) | ⚠️ Unaudited |
| DepositModule | unknown | arbitrum | n/a | [`0x17a22b...882cd3`](./contracts/arbitrum-42161/0x17a22bdb5c28fff7f10e7be3c35cd82d6a882cd3/) | ⚠️ Unaudited |
| Explorer | unknown | arbitrum | unit-39116 | [`0x408080...f93197`](./contracts/arbitrum-42161/0x40808080804111c374c8f1dc78b13fb57df93197/) | ⚠️ Unaudited |
| FIndexOracle | unknown | arbitrum | n/a | [`0x3011df...2144b9`](./contracts/arbitrum-42161/0x3011dfd5736aeb5629d5db178a61b0094e2144b9/) | ⚠️ Unaudited |
| MarketFactory | registry | arbitrum | unit-39113 | [`0x308080...1ecee0`](./contracts/arbitrum-42161/0x3080808080ee6a795c1a6ff388195aa5f11ecee0/) | ⚠️ Unaudited |
| MarketOrderAndOtc | unknown | arbitrum | n/a | [`0x1d24ba...6e52c1`](./contracts/arbitrum-42161/0x1d24ba5e778d715708d87b2c718e81f1f16e52c1/) | ⚠️ Unaudited |
| MarketRiskManagement | unknown | arbitrum | n/a | [`0xda1ccb...a73a7d`](./contracts/arbitrum-42161/0xda1ccbc1a234080216938d003ec6946ac4a73a7d/) | ⚠️ Unaudited |
| MultiTokenMerkleDistributor | operational_periphery | arbitrum | unit-39119 (3 proxies) | 3 deployments: arbitrum [`0xd08080...c2d65b`](./contracts/arbitrum-42161/0xd0808080803c59dbf8825290bca8979786c2d65b/); arbitrum `0xd18080...21df71`; arbitrum `0xd28080...be1058` | ⚠️ Unaudited |
| OTCModule | unknown | arbitrum | n/a | [`0xc364c8...b5f9a8`](./contracts/arbitrum-42161/0xc364c86d3a4ff22f071dc0b2274c5fe680b5f9a8/) | ⚠️ Unaudited |
| PendleAccessController | governance | arbitrum | unit-39112 | [`0x208080...01e5ea`](./contracts/arbitrum-42161/0x2080808080262c1706598c9dbdd3a0cd3601e5ea/) | ⚠️ Unaudited |
| PositiveAMM | unknown | arbitrum | n/a | [`0xb57c34...9ee45a`](./contracts/arbitrum-42161/0xb57c34fbcb272510303675397055942b019ee45a/) | ⚠️ Unaudited |
| SwapExecutor | unknown | arbitrum | unit-39121 | [`0xd8d82d...7a1780`](./contracts/arbitrum-42161/0xd8d82d566f251e0280f3b5c91c58c8a7bb7a1780/) | ⚠️ Unaudited |

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
| [ChainSecurity-Markets.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Markets.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [ChainSecurity-Router and AMM.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Router%20and%20AMM.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [Pendle-Spearbit-Security-Review-August-2025.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/Spearbit/Pendle-Spearbit-Security-Review-August-2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Market_%26_MarketHub_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Router_%26_AMM_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xdeb0fa...60e12c`](./contracts/arbitrum-42161/0xdeb0fac888c33e3e7394c095fe3c4e3de760e12c/) | DepositBoxFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17a22b...882cd3`](./contracts/arbitrum-42161/0x17a22bdb5c28fff7f10e7be3c35cd82d6a882cd3/) | DepositModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3011df...2144b9`](./contracts/arbitrum-42161/0x3011dfd5736aeb5629d5db178a61b0094e2144b9/) | FIndexOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d24ba...6e52c1`](./contracts/arbitrum-42161/0x1d24ba5e778d715708d87b2c718e81f1f16e52c1/) | MarketOrderAndOtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xda1ccb...a73a7d`](./contracts/arbitrum-42161/0xda1ccbc1a234080216938d003ec6946ac4a73a7d/) | MarketRiskManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc364c8...b5f9a8`](./contracts/arbitrum-42161/0xc364c86d3a4ff22f071dc0b2274c5fe680b5f9a8/) | OTCModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb57c34...9ee45a`](./contracts/arbitrum-42161/0xb57c34fbcb272510303675397055942b019ee45a/) | PositiveAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=8

Zero-match audit list:

- [2066] Pendle-Spearbit-Security-Review-August-2025.pdf

Fork inheritance lineage and inherited audits are included when available.
