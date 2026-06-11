# Agentic Audit Brief: Lets Get HAI

## Project Overview

- Project: Lets Get HAI (`lets-get-hai`)
- Website: [https://www.letsgethai.com](https://www.letsgethai.com)
- Lifecycle: active (Tier 0, 79.2% below peak)
- Generated: 2026-06-11T00:41:46.366Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: optimism
- Contract surface: 54 unique implementations (68 raw deployments)
- DeFi Llama TVL: $1,195,115.22
- On-chain TVL (included contracts): $13,510,804.18
- TVL by chain: Optimism $13,510,804.18

## Project Description

Lets Get HAI is a collateralized debt position protocol on Optimism centered on the HAI/SystemCoin stablecoin. Its in-scope protocol surface is the CDP system, including SAFEEngine, CoinJoin and collateral join components, OracleRelayer, TaxCollector, AccountingEngine, LiquidationEngine, auction and settlement-related contracts, and the system coin. External assets, third-party liquidity pools, oracle feeds, bridges, and integrations such as WETH, OP, Uniswap or Balancer pools, Pyth feeds, and other upstream infrastructure should be treated as dependencies rather than native product families or project-owned TVL.

### Architecture

The Lets Get HAI family relies on the CONTRACTS family for governance and token distribution, while the EXTERNAL CONTRACTS family provides liquidity pools for the system coin. The ProtocolToken and SystemCoin are central assets that flow between these families, with the CollateralJoinFactory bridging collateral into the CDP system.

## Audit Coverage Summary

- Verified implementations audited: 41/53 (77.4%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 54
- Raw deployments: 68
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $12,633,410.51
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 1 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 35 | 66.0% | 2023-11 |
| dMakers | Tier 2 | 11 | 20.8% | n/a |
| Ackee Blockchain | Tier 2 | 5 | 9.4% | 2025-04 |
| Electisec | Tier 2 | 1 | 1.9% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (41)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProtocolToken | token | optimism | [`0xf467c7...1e1404`](./contracts/optimism-10/0xf467c7d5a4a9c4687ffc7986ac6ad5a4c81e1404/) | ✅ Audited |
| AccountingEngine | core_logic | optimism | [`0xa49007...65bd10`](./contracts/optimism-10/0xa4900795ebffadc12790f05f7c4ac42cd765bd10/) | ✅ Audited |
| AccountingJob | unknown | optimism | [`0xc256c3...729ef0`](./contracts/optimism-10/0xc256c3aa404ab74ce050bcf8a05256b6a1729ef0/) | ✅ Audited |
| BasicActions | unknown | optimism | [`0xd36b1b...da7bb0`](./contracts/optimism-10/0xd36b1bd5445374ceb7fe4148a719584234da7bb0/) | ✅ Audited |
| CoinJoin | operational_periphery | optimism | [`0x30ce72...7c6ea3`](./contracts/optimism-10/0x30ce72230a47a0967b7e52a1bae0178dbd7c6ea3/) | ✅ Audited |
| CollateralAuctionHouseFactory | registry | optimism | [`0x81c5c2...94b427`](./contracts/optimism-10/0x81c5c2da8c1a74c6077b03ad69ca04b74b94b427/) | ✅ Audited |
| CollateralBidActions | unknown | optimism | [`0xbfac17...fc694d`](./contracts/optimism-10/0xbfac170711dfe2043f47b34f118e9fcda8fc694d/) | ✅ Audited |
| CollateralJoinFactory | registry | optimism | [`0xfe7987...536143`](./contracts/optimism-10/0xfe7987b1ee45a8d592b15e8e924d50bfc8536143/) | ✅ Audited |
| DebtAuctionHouse | unknown | optimism | [`0x7cde0d...f617b3`](./contracts/optimism-10/0x7cde0d7296725afb80ea091eca8d06a377f617b3/) | ✅ Audited |
| DebtBidActions | unknown | optimism | [`0xfc55b8...9f8117`](./contracts/optimism-10/0xfc55b886a2619bd8645549f7cb672872479f8117/) | ✅ Audited |
| DelayedOracleFactory | operational_periphery | optimism | [`0x41a600...97b3bb`](./contracts/optimism-10/0x41a600e03eaa8d208b9230a219e0c4594897b3bb/) | ✅ Audited |
| DenominatedOracleFactory | operational_periphery | optimism | [`0xc3a003...67fd35`](./contracts/optimism-10/0xc3a0035bcd3fcbb84a4874b19f7170bfe167fd35/) | ✅ Audited |
| GlobalSettlement | unknown | optimism | [`0x75880a...864218`](./contracts/optimism-10/0x75880aca7230462a630ad65ad5444cb1e1864218/) | ✅ Audited |
| GlobalSettlementActions | unknown | optimism | [`0xa0a788...845fa1`](./contracts/optimism-10/0xa0a78899cd5c093f563ef22e86b68bbc44845fa1/) | ✅ Audited |
| HaiProxyFactory | registry | optimism | [`0xbafbcd...e03a27`](./contracts/optimism-10/0xbafbcdbfbb1569722253ed4d491d2fb3b5e03a27/) | ✅ Audited |
| HaiSafeManager | governance | optimism | [`0xb0ff82...5106c3`](./contracts/optimism-10/0xb0ff82d8322f6fa9c28ec46ef0a5c343e95106c3/) | ✅ Audited |
| HardcodedOracle | operational_periphery | optimism | [`0x8c212b...be0d39`](./contracts/optimism-10/0x8c212bcae328669c8b045d467cb78b88e0be0d39/) | ✅ Audited |
| LiquidationEngine | core_logic | optimism | [`0x8be588...891b56`](./contracts/optimism-10/0x8be588895be9b75f9a9daee185e0c2ad89891b56/) | ✅ Audited |
| LiquidationJob | unknown | optimism | [`0x5ef157...1b3638`](./contracts/optimism-10/0x5ef15750b5672cd6217e4e184cead440cb1b3638/) | ✅ Audited |
| OracleJob | operational_periphery | optimism | [`0xf4f182...f9fc22`](./contracts/optimism-10/0xf4f18205d8d46638489865e42c0a71a3d4f9fc22/) | ✅ Audited |
| OracleRelayer | operational_periphery | optimism | [`0x627040...fdb3a6`](./contracts/optimism-10/0x6270403b908505f02da05be5c1956abb59fdb3a6/) | ✅ Audited |
| PIDController | governance | optimism | [`0x6f9aec...72f609`](./contracts/optimism-10/0x6f9aec3c0df4df7a0da66453a38b8c767972f609/) | ✅ Audited |
| PIDRateSetter | unknown | optimism | [`0x1f76f2...434d2f`](./contracts/optimism-10/0x1f76f20c9d9075dc160d0e47cd214df0b7434d2f/) | ✅ Audited |
| PostSettlementSurplusAuctionHouse | unknown | optimism | [`0x1fa281...956d66`](./contracts/optimism-10/0x1fa281ea8d0e9db78beaa1f5b1a452058f956d66/) | ✅ Audited |
| PostSettlementSurplusBidActions | unknown | optimism | [`0x48c341...463640`](./contracts/optimism-10/0x48c3416097529944946d08486f10185f18463640/) | ✅ Audited |
| RewardDistributor | operational_periphery | optimism | [`0xfed2eb...ac3d4d`](./contracts/optimism-10/0xfed2eb6325432f0bf7110dce2ccc5ff811ac3d4d/) | ✅ Audited |
| RewardedActions | unknown | optimism | [`0xb688d7...81cde7`](./contracts/optimism-10/0xb688d73b58e5004341f855f3e71177316281cde7/) | ✅ Audited |
| RewardPoolFactory | registry | optimism | [`0xa6dcda...81b7ea`](./contracts/optimism-10/0xa6dcda89deaca9e18e3e747b2101d6dad781b7ea/) | ✅ Audited |
| SAFEEngine | core_logic | optimism | [`0x9ff826...75a700`](./contracts/optimism-10/0x9ff826860689483181c5fac9628fd2f70275a700/) | ✅ Audited |
| SettlementSurplusAuctioneer | unknown | optimism | [`0x7edad0...3afe43`](./contracts/optimism-10/0x7edad06b56bbec6a1c5dd95b8d00aebc803afe43/) | ✅ Audited |
| StabilityFeeTreasury | operational_periphery | optimism | [`0xe9e54c...3c4f6f`](./contracts/optimism-10/0xe9e54c55d41d6622933f9f736e0c55484b3c4f6f/) | ✅ Audited |
| StakingManager | governance | optimism | 3 deployments: optimism [`0x1250f2...e6bc90`](./contracts/optimism-10/0x1250f2326f04ac61ee5aed92fef74bcac6e6bc90/); optimism `0x13531b...fcd1d9`; optimism `0x70bf15...279e93` | ✅ Audited |
| StakingToken | token | optimism | 3 deployments: optimism [`0xaa46f6...62be0a`](./contracts/optimism-10/0xaa46f6e234d52cc8c3b387a44584a9fb1a62be0a/); optimism `0xcb7e5b...d1980f`; optimism `0xf632d7...881fc3` | ✅ Audited |
| SurplusAuctionHouse | unknown | optimism | [`0x096125...1778e9`](./contracts/optimism-10/0x096125fa7e2181dba78136782365a39c3a1778e9/) | ✅ Audited |
| SurplusBidActions | unknown | optimism | [`0x632229...925cec`](./contracts/optimism-10/0x632229a0a849bde3a1f1200cf23118b33a925cec/) | ✅ Audited |
| SystemCoin | token | optimism | [`0x10398a...10dc71`](./contracts/optimism-10/0x10398abc267496e49106b07dd6be13364d10dc71/) | ✅ Audited |
| TaxCollector | core_logic | optimism | [`0x62b82c...1973c3`](./contracts/optimism-10/0x62b82cce08f8f2d808348409e9418c65eb1973c3/) | ✅ Audited |
| TokenDistributor | operational_periphery | optimism | [`0xcb9654...cc9e02`](./contracts/optimism-10/0xcb96543b9f3657be103ba6371aaed8a711cc9e02/) | ✅ Audited |
| UniV3RelayerFactory | registry | optimism | [`0xb6a352...3948c1`](./contracts/optimism-10/0xb6a352636588d833d2795e67eaafdc5b6f3948c1/) | ✅ Audited |
| WrappedToken | token | optimism | [`0x70f371...b1bb6a`](./contracts/optimism-10/0x70f3713512089736661f928b291d1443c8b1bb6a/) | ✅ Audited |
| WrappedTokenV2 | token | optimism | [`0x20a7ea...b5ddd6`](./contracts/optimism-10/0x20a7eaf4a922df50b312ef61aea8b6e1deb5ddd6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyERC20 | token | optimism | [`0x8c6f28...1ec8d9`](./contracts/optimism-10/0x8c6f28f2f1a3c87f0f938b96d27520d9751ec8d9/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | optimism | [`0x146b02...c150ec`](./contracts/optimism-10/0x146b020399769339509c98b7b353d19130c150ec/) | ⚠️ Unaudited |
| Pool | core_logic | optimism | 2 deployments: optimism [`0xbded65...ea6b86`](./contracts/optimism-10/0xbded651c03e2bc332aa49c1ffca391eaa3ea6b86/); optimism `0xf4638d...447238` | ⚠️ Unaudited |
| GovernanceToken | token | optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HaiDelegatee | unknown | optimism | [`0x2c6c63...aa2b63`](./contracts/optimism-10/0x2c6c638b93ba5a11dbd419305f14749fc8aa2b63/) | ⚠️ Unaudited |
| HaiGovernor | governance | optimism | [`0xe807f3...a23777`](./contracts/optimism-10/0xe807f3282f3391d237ba8b9becb0d8ea3ba23777/) | ⚠️ Unaudited |
| HypERC20 | token | optimism | [`0xbdf4a4...1f1152`](./contracts/optimism-10/0xbdf4a4cc124d9a83a5774574fcbe45dc5d1f1152/) | ⚠️ Unaudited |
| MerkleDistributorFactory | operational_periphery | optimism | 3 deployments: optimism [`0x3975ff...ac5980`](./contracts/optimism-10/0x3975ff822af38552fac62a975d4d4e0ea5ac5980/); optimism `0x524fe1...2abcc6`; optimism `0xfc4fd0...12ea56` | ⚠️ Unaudited |
| PessimisticVeloSingleOracle | operational_periphery | optimism | 5 deployments: optimism [`0x2d442a...e26585`](./contracts/optimism-10/0x2d442a71e7dc14068168a7e0680abcc043e26585/); optimism `0x557c24...a19e6c`; optimism `0x898e74...d1c91a`; optimism `0x8cb126...9d7bcb`; optimism `0xdfeb54...ff5448` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | [`0x1a3cbf...c66091`](./contracts/optimism-10/0x1a3cbf11da1b799c521a655a258c45c852c66091/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | optimism | 4 deployments: optimism [`0x629b03...3c0958`](./contracts/optimism-10/0x629b03d018efd7871e5a72c929d88e29d03c0958/); optimism `0xcabaac...a25224`; optimism `0xdaa95c...0d94d7`; optimism `0xefa456...9ecb75` | ⚠️ Unaudited |
| WETH9 | token | optimism | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | `0x6c797b...a0c200` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [HaiVELO V2 Electisec.pdf](https://github.com/hai-on-op/audit-reports/blob/main/HaiVELO%20V2%20Electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [ackee_HAI_new-core-features_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/ackee_HAI_new-core-features_report.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | contract_name | 9 | high |
| [dMakers_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/dMakers_HAI_audit_report.pdf) | dMakers | Audit | n/a | unknown | Direct | contract_name | 11 | medium |
| [solidified_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/solidified_HAI_audit_report.pdf) | Solidified | Audit | 2023-11 | stale | Direct | contract_name | 35 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | $293.04 | Verified native implementation with $293.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2c6c63...aa2b63`](./contracts/optimism-10/0x2c6c638b93ba5a11dbd419305f14749fc8aa2b63/) | HaiDelegatee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe807f3...a23777`](./contracts/optimism-10/0xe807f3282f3391d237ba8b9becb0d8ea3ba23777/) | HaiGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3975ff...ac5980`](./contracts/optimism-10/0x3975ff822af38552fac62a975d4d4e0ea5ac5980/) | MerkleDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 3 |

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
