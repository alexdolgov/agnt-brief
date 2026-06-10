# Agentic Audit Brief: Mendi Finance

⚠️ Lifecycle status: DEAD - TVL dropped 34.1% over 90 days

## Project Overview

- Project: Mendi Finance (`mendi-finance`)
- Website: [https://malda.xyz/](https://malda.xyz/)
- Lifecycle: dead (Tier 1, sunsetting)
- Generated: 2026-06-10T20:59:07.456Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: linea
- Contract surface: 39 unique implementations (122 raw deployments)
- DeFi Llama TVL: $2,009,233.43
- On-chain TVL (included contracts): $79,070,837.41
- TVL by chain: Linea $79,070,837.41

## Project Description

Mendi Finance began as a Compound-style decentralized lending protocol on Linea, with cToken-style markets, a Comptroller for risk management, and reward distribution mechanisms. The project later rebranded/evolved into Malda, a unified cross-chain lending protocol positioning itself around zkProof-based cross-chain functionality. The current brief should distinguish the legacy Linea-only Mendi deployment from the broader Malda cross-chain lending system, and note that Malda has since been sunset and open-sourced.

### Architecture

The Comptroller manages all lending markets and coordinates reward distribution. Reward-related contracts (RewardManagerV2, RewardDistributor, StakedDistributor, OwnedDistributor, RewardHolder) work together to distribute incentives to users, while LPDepositor contracts facilitate liquidity provision.

## Audit Coverage Summary

- Verified implementations audited: 3/28 (10.7%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 39
- Raw deployments: 122
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $79,070,837.41
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 3.6% (Sherlock)
- Note: This protocol is classified as [dead]. ASD of $79,070,837.41 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Veridise | Tier 2 | 3 | 10.7% | 2025-04 |
| Sherlock | Tier 1 | 1 | 3.6% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| JumpRateModelV4 | operational_periphery | linea | 3 deployments: linea [`0x23b9cb...780cb7`](./contracts/linea-59144/0x23b9cb6f49100c54fa2a13ba0f85832b38780cb7/); linea `0x62c31a...5c02d0`; linea `0x85a58a...93ea19` | ✅ Audited |
| MixedPriceOracleV3 | operational_periphery | linea | [`0x395abf...1ac5f2`](./contracts/linea-59144/0x395abf58d87067b10637201241d10e16361ac5f2/) | ✅ Audited |
| RewardDistributor | operational_periphery | linea | 2 deployments: linea [`0x052932...8b7ca5`](./contracts/linea-59144/0x052932456a8fd199cd33be91312638a35c8b7ca5/); linea `0x3b9b93...013d40` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Upgradable | token | linea | 22 deployments: linea [`0x022e3a...6d799b`](./contracts/linea-59144/0x022e3af748ae14388b5a5a93ffc20966146d799b/); linea `0x0a3b1e...fd5f0b`; linea `0x0b3a1b...4cbbe4`; linea `0x109f4a...29362a`; linea `0x1ce302...f9c920`; linea `0x1f27f8...9869aa`; linea `0x268eb0...e929b4`; linea `0x333d8b...e1b30d`; linea `0x5a731d...865456`; linea `0x6e0c50...f6c4f7`; linea `0x801c4c...29216f`; linea `0x815c08...0b2cd7`; linea `0x883100...bcd40d`; linea `0x8a90d2...074a67`; linea `0x8ce989...817045`; linea `0x9b4971...0753b5`; linea `0x9be5e2...88a40f`; linea `0xad7f33...fee6f3`; linea `0xb52f4c...3129a5`; linea `0xceed85...86a782`; linea `0xd910ea...5644ac`; linea `0xf669c3...300e89` | ⚠️ Unaudited |
| Api3AggregatorAdaptor | unknown | linea | 3 deployments: linea [`0x14d8ca...c6d6ca`](./contracts/linea-59144/0x14d8ca4d05cfd1ea4739abab06b28d8dc7c6d6ca/); linea `0x392728...9a80a5`; linea `0xd707bd...6c84ba` | ⚠️ Unaudited |
| Api3AggregatorDeviationAdaptor | unknown | linea | [`0x6fecd2...b1ab9b`](./contracts/linea-59144/0x6fecd2f4798d37fbe64bfde1ebecae3b3fb1ab9b/) | ⚠️ Unaudited |
| BasicLens | periphery | linea | 2 deployments: linea [`0x523546...92b69b`](./contracts/linea-59144/0x52354609af7a8fdd1fbcf9d4d52d25b26492b69b/); linea `0xa9822b...e28f27` | ⚠️ Unaudited |
| Comptroller | unknown | linea | 2 deployments: linea [`0x1a1166...c3d9e3`](./contracts/linea-59144/0x1a11669ecf91692440da95cc8a12de80b1c3d9e3/); linea `0x1b4d3b...b93103` | ⚠️ Unaudited |
| LGEDepositor | unknown | linea | [`0x8f1b13...49f14d`](./contracts/linea-59144/0x8f1b13497326857011b0b9a2b066054e1849f14d/) | ⚠️ Unaudited |
| LiquidityGenerator | unknown | linea | [`0x55231f...9e9144`](./contracts/linea-59144/0x55231f67b289815483a037d459877d85819e9144/) | ⚠️ Unaudited |
| LPDepositor | unknown | linea | 5 deployments: linea [`0x7b6763...a5939c`](./contracts/linea-59144/0x7b676378fd66a2bb6650df1fdf847d3988a5939c/); linea `0x7d4483...1cfbba`; linea `0x9cfbfc...98fc23`; linea `0xbfd1b0...0a5e64`; linea `0xc321e5...29ce68` | ⚠️ Unaudited |
| Mendi | unknown | linea | [`0x43e880...44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | linea | 5 deployments: linea [`0x375654...55a50e`](./contracts/linea-59144/0x375654490163c50ef334a42cd0b38c5c3f55a50e/); linea `0x688ff5...26dea1`; linea `0xdaf3ba...3d6725`; linea `0xe5bcd7...dd90ea`; linea `0xea5747...b7eb52` | ⚠️ Unaudited |
| MixedPriceOracle | operational_periphery | linea | [`0xccbea2...cffec2`](./contracts/linea-59144/0xccbea2d7e074744ab46e28a043f85038bccffec2/) | ⚠️ Unaudited |
| MixedPriceOracleV2 | operational_periphery | linea | 8 deployments: linea [`0x4a0231...9cdc9c`](./contracts/linea-59144/0x4a0231404ad94541676d872fa9577e3e179cdc9c/); linea `0x7a6ef4...0fdcc1`; linea `0xc23f48...e24433`; linea `0xd04f7a...bff23f`; linea `0xd2ed95...8fa012`; linea `0xd3e706...5bc1d3`; linea `0xe8de3a...78a27a`; linea `0xec598a...49d8fe` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | linea | 10 deployments: linea [`0x5df210...2bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/); linea `0x5f9668...c38d61`; linea `0x716f2d...1053f5`; linea `0x957491...691fa7`; linea `0x9b9274...7a7c40`; linea `0xa4fc54...d38e43`; linea `0xb43221...d69b95`; linea `0xe17d41...acf662`; linea `0xec45fe...53a5e2`; linea `0xeda946...8fc474` | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | 2 deployments: linea [`0x2f9386...bc733c`](./contracts/linea-59144/0x2f9386f0c8ebeed27873a2a64c7f243af9bc733c/); linea `0x54b41d...d3bc8c` | ⚠️ Unaudited |
| PythPriceOracle | operational_periphery | linea | 4 deployments: linea [`0x0d4173...db3636`](./contracts/linea-59144/0x0d4173a9dbf32bf7f9d9f5907b6476ad53db3636/); linea `0xa6b761...3a0df3`; linea `0xcc16cf...e2c749`; linea `0xe15903...4f1230` | ⚠️ Unaudited |
| ReserveManager | governance | linea | 2 deployments: linea [`0x7c2e7b...1a49e4`](./contracts/linea-59144/0x7c2e7b17ad0346e0305232f845c40fb7a91a49e4/); linea `0xa16602...d5c5a8` | ⚠️ Unaudited |
| ReserveManagerV2 | governance | linea | 2 deployments: linea [`0x384be0...1546ea`](./contracts/linea-59144/0x384be093d35feedb74eb9133863caf059c1546ea/); linea `0x9a71e9...2b751f` | ⚠️ Unaudited |
| RewardHolder | unknown | linea | 8 deployments: linea [`0x162218...ecc222`](./contracts/linea-59144/0x1622180cd1ec6e8d60744772e6b2cc1ce9ecc222/); linea `0x246db9...8d46da`; linea `0x4664c7...3a26ed`; linea `0x5f6f83...08c832`; linea `0x90c9cd...27fc8c`; linea `0x9589ff...341934`; linea `0xb05619...12a673`; linea `0xd114e0...bc923e` | ⚠️ Unaudited |
| RewardManager | governance | linea | [`0x951e3e...1e79dc`](./contracts/linea-59144/0x951e3e4ba025292ee04601b1969844771f1e79dc/) | ⚠️ Unaudited |
| RewardManagerV2 | governance | linea | 2 deployments: linea [`0x04a716...ab7bd5`](./contracts/linea-59144/0x04a716725e43f6618b11d280bfa12491d9ab7bd5/); linea `0x1ac9d6...5f6101` | ⚠️ Unaudited |
| SimplePriceOracle | operational_periphery | linea | [`0x75f0ad...901219`](./contracts/linea-59144/0x75f0adc23ec4ceb70cc0257de830163a48901219/) | ⚠️ Unaudited |
| StakedDistributor | operational_periphery | linea | 12 deployments: linea [`0x07d392...f26673`](./contracts/linea-59144/0x07d3929d35a2bbb433b9b6bcd999f6abd9f26673/); linea `0x150b1e...4921ca`; linea `0x5bb5c0...490fea`; linea `0x62ffc7...d4820c`; linea `0x686fc5...c94c6e`; linea `0x7f13ef...e526f8`; linea `0x8e8bdf...eaa113`; linea `0xbdea2a...cbd12c`; linea `0xc2ecfe...10fee9`; linea `0xcb0112...739b3d`; linea `0xcf8ded...284486`; linea `0xe4e5e5...618dee` | ⚠️ Unaudited |
| TimelockController | governance | linea | 2 deployments: linea [`0x6c81d7...b26902`](./contracts/linea-59144/0x6c81d7fe6072ce519c1a5b966d62545f07b26902/); linea `0xae73a4...a3e8a7` | ⚠️ Unaudited |
| VesterCliff | operational_periphery | linea | 3 deployments: linea [`0x2938b0...495741`](./contracts/linea-59144/0x2938b0932ef3fd7a58a9fc077398cad981495741/); linea `0x6cdf38...30b138`; linea `0xe79840...26bea5` | ⚠️ Unaudited |
| VesterSale | operational_periphery | linea | 4 deployments: linea [`0x4ff038...d0e45b`](./contracts/linea-59144/0x4ff0389fd01f4afee2048ea1550b6bc166d0e45b/); linea `0xbb4bba...c2c311`; linea `0xd63b16...41cd83`; linea `0xf90af8...3a702f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | linea | `0x23c603...34b2b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2b2b78...1699c6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7fab16...532492` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8208dd...9d242d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x87f99c...a99788` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xacf19d...871e5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xaef45c...596835` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb1c144...cf1fe1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb20b9a...8ba9a5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc21b80...b18173` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf40175...edc271` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [malda-lending-sherlock-audit-report]() (also discovered via alternate URL)](https://github.com/malda-protocol/malda-lending/blob/main/audit/2025_10_06_Sherlock_Competition.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [* [malda-lending report]()](https://github.com/malda-protocol/malda-lending/blob/main/audit/VAR_Malda_250120_malda_lending_V5.pdf) | Veridise | Audit | 2025-04 | aging | Direct | contract_name | 6 | high |
| [Audit Reports](https://ionian.gitbook.io/malda/malda-protocol/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* [malda-zk-coprocessor report]()](https://github.com/malda-protocol/malda-zk-coprocessor/blob/main/audit/VAR_Malda_250120_malda_zkcoprocessor.pdf) | Veridise | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x022e3a...6d799b`](./contracts/linea-59144/0x022e3af748ae14388b5a5a93ffc20966146d799b/) | CErc20Upgradable | token | $79,070,837.41 | Verified native implementation with $79,070,837.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x523546...92b69b`](./contracts/linea-59144/0x52354609af7a8fdd1fbcf9d4d52d25b26492b69b/) | BasicLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1a1166...c3d9e3`](./contracts/linea-59144/0x1a11669ecf91692440da95cc8a12de80b1c3d9e3/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8f1b13...49f14d`](./contracts/linea-59144/0x8f1b13497326857011b0b9a2b066054e1849f14d/) | LGEDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x55231f...9e9144`](./contracts/linea-59144/0x55231f67b289815483a037d459877d85819e9144/) | LiquidityGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7b6763...a5939c`](./contracts/linea-59144/0x7b676378fd66a2bb6650df1fdf847d3988a5939c/) | LPDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x43e880...44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | Mendi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x375654...55a50e`](./contracts/linea-59144/0x375654490163c50ef334a42cd0b38c5c3f55a50e/) | MendiLoyaltyPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xccbea2...cffec2`](./contracts/linea-59144/0xccbea2d7e074744ab46e28a043f85038bccffec2/) | MixedPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4a0231...9cdc9c`](./contracts/linea-59144/0x4a0231404ad94541676d872fa9577e3e179cdc9c/) | MixedPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5df210...2bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/) | OwnedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7c2e7b...1a49e4`](./contracts/linea-59144/0x7c2e7b17ad0346e0305232f845c40fb7a91a49e4/) | ReserveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x162218...ecc222`](./contracts/linea-59144/0x1622180cd1ec6e8d60744772e6b2cc1ce9ecc222/) | RewardHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x951e3e...1e79dc`](./contracts/linea-59144/0x951e3e4ba025292ee04601b1969844771f1e79dc/) | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x07d392...f26673`](./contracts/linea-59144/0x07d3929d35a2bbb433b9b6bcd999f6abd9f26673/) | StakedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2938b0...495741`](./contracts/linea-59144/0x2938b0932ef3fd7a58a9fc077398cad981495741/) | VesterCliff | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4ff038...d0e45b`](./contracts/linea-59144/0x4ff0389fd01f4afee2048ea1550b6bc166d0e45b/) | VesterSale | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Zero-match audit list:

- [2932] Audit Reports
- [2933] * [malda-zk-coprocessor report]()

Fork inheritance lineage and inherited audits are included when available.
