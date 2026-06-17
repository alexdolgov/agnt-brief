# Agentic Audit Brief: Lets Get HAI

## Project Overview

- Project: Lets Get HAI (`lets-get-hai`)
- Website: [https://www.letsgethai.com](https://www.letsgethai.com)
- Lifecycle: active (Tier 0, 79.2% below peak)
- Generated: 2026-06-17T07:00:36.053Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: optimism
- Contract surface: 25 unique implementations (37 raw deployments)
- DeFi Llama TVL: $985,111.59
- On-chain TVL (included contracts): $13,480,968.69
- TVL by chain: Optimism $13,480,968.69

## Project Description

Lets Get HAI is a collateralized debt position protocol on Optimism centered on the HAI/SystemCoin stablecoin. Its in-scope protocol surface is the CDP system, including SAFEEngine, CoinJoin and collateral join components, OracleRelayer, TaxCollector, AccountingEngine, LiquidationEngine, auction and settlement-related contracts, and the system coin. External assets, third-party liquidity pools, oracle feeds, bridges, and integrations such as WETH, OP, Uniswap or Balancer pools, Pyth feeds, and other upstream infrastructure should be treated as dependencies rather than native product families or project-owned TVL.

### Architecture

The Lets Get HAI family relies on the CONTRACTS family for governance and token distribution, while the EXTERNAL CONTRACTS family provides liquidity pools for the system coin. The ProtocolToken and SystemCoin are central assets that flow between these families, with the CollateralJoinFactory bridging collateral into the CDP system.

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 37 (37 live, 0 unknown).
- Excluded by liveness: 30 inactive, 1 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 2/56.

## Audit Coverage Summary

- Verified implementations audited: 16/24 (66.7%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 25
- Raw deployments: 37
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $12,603,575.03
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 1 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 11 | 45.8% | 2023-11 |
| dMakers | Tier 2 | 7 | 29.2% | n/a |
| Ackee Blockchain | Tier 2 | 4 | 16.7% | 2025-04 |
| Electisec | Tier 2 | 1 | 4.2% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProtocolToken | token | optimism | n/a | [`0xf467c7...1e1404`](./contracts/optimism-10/0xf467c7d5a4a9c4687ffc7986ac6ad5a4c81e1404/) | ✅ Audited |
| AccountingEngine | core_logic | optimism | n/a | [`0xa49007...65bd10`](./contracts/optimism-10/0xa4900795ebffadc12790f05f7c4ac42cd765bd10/) | ✅ Audited |
| AccountingJob | unknown | optimism | n/a | [`0xc256c3...729ef0`](./contracts/optimism-10/0xc256c3aa404ab74ce050bcf8a05256b6a1729ef0/) | ✅ Audited |
| CoinJoin | operational_periphery | optimism | n/a | [`0x30ce72...7c6ea3`](./contracts/optimism-10/0x30ce72230a47a0967b7e52a1bae0178dbd7c6ea3/) | ✅ Audited |
| HaiProxyFactory | registry | optimism | n/a | [`0xbafbcd...e03a27`](./contracts/optimism-10/0xbafbcdbfbb1569722253ed4d491d2fb3b5e03a27/) | ✅ Audited |
| LiquidationEngine | core_logic | optimism | n/a | [`0x8be588...891b56`](./contracts/optimism-10/0x8be588895be9b75f9a9daee185e0c2ad89891b56/) | ✅ Audited |
| OracleJob | operational_periphery | optimism | n/a | [`0xf4f182...f9fc22`](./contracts/optimism-10/0xf4f18205d8d46638489865e42c0a71a3d4f9fc22/) | ✅ Audited |
| OracleRelayer | operational_periphery | optimism | n/a | [`0x627040...fdb3a6`](./contracts/optimism-10/0x6270403b908505f02da05be5c1956abb59fdb3a6/) | ✅ Audited |
| RewardDistributor | operational_periphery | optimism | n/a | [`0xfed2eb...ac3d4d`](./contracts/optimism-10/0xfed2eb6325432f0bf7110dce2ccc5ff811ac3d4d/) | ✅ Audited |
| SAFEEngine | core_logic | optimism | n/a | [`0x9ff826...75a700`](./contracts/optimism-10/0x9ff826860689483181c5fac9628fd2f70275a700/) | ✅ Audited |
| StakingManager | governance | optimism | n/a | 3 deployments: optimism [`0x1250f2...e6bc90`](./contracts/optimism-10/0x1250f2326f04ac61ee5aed92fef74bcac6e6bc90/); optimism `0x13531b...fcd1d9`; optimism `0x70bf15...279e93` | ✅ Audited |
| StakingToken | token | optimism | n/a | 3 deployments: optimism [`0xaa46f6...62be0a`](./contracts/optimism-10/0xaa46f6e234d52cc8c3b387a44584a9fb1a62be0a/); optimism `0xcb7e5b...d1980f`; optimism `0xf632d7...881fc3` | ✅ Audited |
| SystemCoin | token | optimism | n/a | [`0x10398a...10dc71`](./contracts/optimism-10/0x10398abc267496e49106b07dd6be13364d10dc71/) | ✅ Audited |
| TaxCollector | core_logic | optimism | n/a | [`0x62b82c...1973c3`](./contracts/optimism-10/0x62b82cce08f8f2d808348409e9418c65eb1973c3/) | ✅ Audited |
| WrappedToken | token | optimism | n/a | [`0x70f371...b1bb6a`](./contracts/optimism-10/0x70f3713512089736661f928b291d1443c8b1bb6a/) | ✅ Audited |
| WrappedTokenV2 | token | optimism | n/a | [`0x20a7ea...b5ddd6`](./contracts/optimism-10/0x20a7eaf4a922df50b312ef61aea8b6e1deb5ddd6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyERC20 | token | optimism | n/a | [`0x8c6f28...1ec8d9`](./contracts/optimism-10/0x8c6f28f2f1a3c87f0f938b96d27520d9751ec8d9/) | ⚠️ Unaudited |
| Pool | core_logic | optimism | n/a | 2 deployments: optimism [`0xbded65...ea6b86`](./contracts/optimism-10/0xbded651c03e2bc332aa49c1ffca391eaa3ea6b86/); optimism `0xf4638d...447238` | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HaiGovernor | governance | optimism | n/a | [`0xe807f3...a23777`](./contracts/optimism-10/0xe807f3282f3391d237ba8b9becb0d8ea3ba23777/) | ⚠️ Unaudited |
| PessimisticVeloSingleOracle | operational_periphery | optimism | n/a | 5 deployments: optimism [`0x2d442a...e26585`](./contracts/optimism-10/0x2d442a71e7dc14068168a7e0680abcc043e26585/); optimism `0x557c24...a19e6c`; optimism `0x898e74...d1c91a`; optimism `0x8cb126...9d7bcb`; optimism `0xdfeb54...ff5448` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0x1a3cbf...c66091`](./contracts/optimism-10/0x1a3cbf11da1b799c521a655a258c45c852c66091/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | optimism | n/a | 4 deployments: optimism [`0x629b03...3c0958`](./contracts/optimism-10/0x629b03d018efd7871e5a72c929d88e29d03c0958/); optimism `0xcabaac...a25224`; optimism `0xdaa95c...0d94d7`; optimism `0xefa456...9ecb75` | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | n/a | `0x6c797b...a0c200` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [HaiVELO V2 Electisec.pdf](https://github.com/hai-on-op/audit-reports/blob/main/HaiVELO%20V2%20Electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [ackee_HAI_new-core-features_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/ackee_HAI_new-core-features_report.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | contract_name | 8 | high |
| [dMakers_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/dMakers_HAI_audit_report.pdf) | dMakers | Audit | n/a | unknown | Direct | contract_name | 7 | medium |
| [solidified_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/solidified_HAI_audit_report.pdf) | Solidified | Audit | 2023-11 | stale | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | $293.04 | Verified native implementation with $293.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe807f3...a23777`](./contracts/optimism-10/0xe807f3282f3391d237ba8b9becb0d8ea3ba23777/) | HaiGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=56

Zero-match audit list:

- [3166] 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf

Fork inheritance lineage and inherited audits are included when available.
