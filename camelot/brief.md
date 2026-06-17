# Agentic Audit Brief: Camelot

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: active (Tier 0, 81.9% below peak)
- Generated: 2026-06-17T07:00:42.702Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum
- Contract surface: 30 unique implementations (45 raw deployments)
- DeFi Llama TVL: $22,855,394.00
- On-chain TVL (included contracts): $6,402,979.58
- TVL by chain: Arbitrum $6,402,979.58

## Project Description

Camelot is a decentralized exchange and liquidity hub for Arbitrum and supported Orbit chains. Its original/Camelot V2 infrastructure is based on classic UniswapV2-style AMM pools, while Camelot V3 uses Algebra-based concentrated-liquidity infrastructure; adapters and periphery contracts may connect to Algebra deployments. The protocol enables token swaps, liquidity provision, staking, farming, launchpad features, and yield-boosting mechanisms. If the audit brief is limited to Arbitrum One contracts, that scope limitation should be stated explicitly.

### Architecture

The Camelot and Camelot V3 families share a common Algebra-based AMM architecture but use separate factory and periphery contracts. The original Camelot family includes yield farming and staking contracts that interact with the GRAIL token, while Camelot V3 introduces StakedUSDX and its own staking dynamics. Both families rely on shared adapter and router patterns for integration.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 45 (45 live, 0 unknown).
- Excluded by liveness: 144 inactive, 19 singleton, 0 uninitialized.
- Deployment units: 4/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/24 (12.5%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 30
- Raw deployments: 45
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $391,936.07
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 3 | 12.5% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GrailTokenV2 | token | arbitrum | n/a | [`0x3d9907...0982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | ✅ Audited |
| CamelotFactory | registry | arbitrum | n/a | [`0x6eccab...43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | ✅ Audited |
| XGrailToken | token | arbitrum | n/a | [`0x3caae2...3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedUSDX | token | arbitrum | n/a | [`0x7788a3...d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-20036 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlgebraAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x148688...c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/); arbitrum `0x46fca9...1780aa` | ⚠️ Unaudited |
| AlgebraFactory | registry | arbitrum | n/a | 3 deployments: arbitrum [`0x1a3c9b...1fd35b`](./contracts/arbitrum-42161/0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b/); arbitrum `0x6b692b...4e5bb8`; arbitrum `0xbefc4b...7a2f37` | ⚠️ Unaudited |
| AlgebraStaticQuoter | periphery | arbitrum | n/a | [`0x4efc8a...f39e07`](./contracts/arbitrum-42161/0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07/) | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x28901c...05d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/); arbitrum `0x64c086...2947f3`; arbitrum `0xd15996...db989f` | ⚠️ Unaudited |
| AlgebraV2StaticQuoter | periphery | arbitrum | n/a | [`0xe04538...c5594f`](./contracts/arbitrum-42161/0xe04538e23c58022cb8bce506e7d01e04fac5594f/) | ⚠️ Unaudited |
| CamelotAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x79ab95...b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/); arbitrum `0xabc401...688dab` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x17bcb7...105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/); arbitrum `0x99d4e8...ddec5e`; arbitrum `0xe9f622...845152` | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/); arbitrum `0xd4f3dc...47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | arbitrum | n/a | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | ⚠️ Unaudited |
| FairAuction | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0ca4fc...f6c20b`](./contracts/arbitrum-42161/0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b/); arbitrum `0x149ace...87975b`; arbitrum `0x2eb79e...36ffe1` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-20039 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Launchpad | unknown | arbitrum | n/a | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | unit-20031 | [`0x00c7f3...4dcd15`](./contracts/arbitrum-42161/0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x368435...babbc8`](./contracts/arbitrum-42161/0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8/); arbitrum `0xa602e7...dce9d8`; arbitrum `0xacdcc3...890db3` | ⚠️ Unaudited |
| ProtocolEarnings | unknown | arbitrum | n/a | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0fc730...4fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/); arbitrum `0xfe24b2...688f7b` | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | unit-20034 | [`0x1f721e...339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x4ee153...675f53`](./contracts/arbitrum-42161/0x4ee15342d6deb297c3a2aa7cffd451f788675f53/); arbitrum `0xa55582...839ef5` | ⚠️ Unaudited |
| USDX | unknown | arbitrum | n/a | [`0xf3527e...a66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x279fa5...ade413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77025d...405aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dbc6c...3fdde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa8a6...6184fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e01e...4606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2b2a9...273bd6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7788a3...d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | StakedUSDX | token | $391,936.07 | Verified native implementation with $391,936.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x148688...c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/) | AlgebraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28901c...05d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/) | AlgebraV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79ab95...b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/) | CamelotAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17bcb7...105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/) | CamelotYakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ca4fc...f6c20b`](./contracts/arbitrum-42161/0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b/) | FairAuction | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x368435...babbc8`](./contracts/arbitrum-42161/0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ProtocolEarnings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ee153...675f53`](./contracts/arbitrum-42161/0x4ee15342d6deb297c3a2aa7cffd451f788675f53/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf3527e...a66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | USDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=12

Fork inheritance lineage and inherited audits are included when available.
