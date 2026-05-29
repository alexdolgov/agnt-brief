# Agentic Audit Brief: OPEN Ticketing Ecosystem

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: OPEN Ticketing Ecosystem (`open-ticketing-ecosystem`)
- Website: [https://onopen.xyz](https://onopen.xyz)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-29T11:36:00.221Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: base, ethereum, polygon
- Contract surface: 24 unique implementations (153 raw deployments)
- DeFi Llama TVL: $1,343,702.63
- On-chain TVL (included contracts): $3,341,925.29
- TVL by chain: Ethereum $3,174,099.62 | Polygon $167,825.67

## Project Description

The OPEN Ticketing Ecosystem is a decentralized event ticketing protocol that enables event creation, ticket sales, and on-chain revenue distribution. It uses a modular architecture with factories, registries, and economic models to manage events and fuel (gas) costs across multiple chains.

### Architecture

The Event Management family relies on the Registry and Auth for access control, while the Economics & Fuel family uses the PriceOracle for conversions and the Token family for fee payments. All families share the Auth contract for permissioned operations, and the EconomicsFactory likely deploys Economics instances tied to events.

## Audit Coverage Summary

- Verified implementations audited: 0/24 (0.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 153
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,341,925.29
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $3,341,925.29 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OPNToken | token | ethereum | [`0xc28eb2...eb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | ⚠️ Unaudited |
| GovernanceLockedRevenueDistributionToken | token | ethereum | [`0x686e85...03fc88`](./contracts/ethereum-1/0x686e8500b6be8812eb198aabbbfa14c95c03fc88/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0x7844f7...78c2d5`](./contracts/polygon-137/0x7844f79fc841e4f92d974c417031c76f8578c2d5/) | ⚠️ Unaudited |
| Auth | unknown | polygon | 2 deployments: polygon [`0x821bac...a24700`](./contracts/polygon-137/0x821bacd7aac670ab7d80bcf74e517620d1a24700/); polygon `0xecb8f9...2a62d7` | ⚠️ Unaudited |
| Economics | unknown | polygon | 2 deployments: polygon [`0x28ebda...f7839a`](./contracts/polygon-137/0x28ebda846c8c380543189bcb87fafc5beef7839a/); polygon `0xe93ef1...8959f4` | ⚠️ Unaudited |
| EconomicsFactory | registry | polygon | 4 deployments: polygon [`0x03114b...48bbab`](./contracts/polygon-137/0x03114bc4c9ed962a28ee3880c31e6d01ad48bbab/); polygon `0x845350...f65301`; polygon `0x8fc745...3b45d3`; polygon `0xa039ce...721ed9` | ⚠️ Unaudited |
| EconomicsImplementation | unknown | polygon | 3 deployments: polygon [`0x65076e...9c1eee`](./contracts/polygon-137/0x65076e3e3b0cfef59f5f51c13621e729e99c1eee/); polygon `0x752bf4...e7f5ab`; polygon `0x88421b...e7dcfb` | ⚠️ Unaudited |
| EconomicsMigrator | periphery | polygon | 2 deployments: polygon [`0x3da76e...bf9f53`](./contracts/polygon-137/0x3da76ef75a7ebdb101afc7ec47b13f5c8cbf9f53/); polygon `0xf654f9...045264` | ⚠️ Unaudited |
| EventFactory | registry | polygon | [`0xac1ffe...ed26f4`](./contracts/polygon-137/0xac1ffeea39e3db60599bdf6697988aa5f0ed26f4/) | ⚠️ Unaudited |
| EventImplementation | unknown | polygon | 7 deployments: polygon [`0x3f2fba...2f62bf`](./contracts/polygon-137/0x3f2fba6028f833e17c8087c385a4ef4fc52f62bf/); polygon `0x502263...86a2dc`; polygon `0x72e569...00afb3`; polygon `0x79fb70...9f4e08`; polygon `0xafef8a...9da1ef`; polygon `0xbaf02f...722bb0`; polygon `0xfe5625...6c4fc0` | ⚠️ Unaudited |
| FuelCollector | unknown | polygon | 4 deployments: polygon [`0x56ebd9...01a8f3`](./contracts/polygon-137/0x56ebd904aa2cc5696f9cb05fa2d2587db501a8f3/); polygon `0x5c12ee...e6812a`; polygon `0x90fe3f...1082f3`; polygon `0x95b751...7a18e1` | ⚠️ Unaudited |
| FuelDistributor | operational_periphery | polygon | [`0xba241c...1a0c1b`](./contracts/polygon-137/0xba241cd4f7c0e2419fe25fb0a5b50d122c1a0c1b/) | ⚠️ Unaudited |
| FuelRouterDT | adapter | polygon | 37 deployments: polygon [`0x00b8c9...898595`](./contracts/polygon-137/0x00b8c99a85c222745863740ee2413ef366898595/); polygon `0x01148c...dc0313`; polygon `0x052d14...06fab3`; polygon `0x149b02...869d71`; polygon `0x187217...c06052`; polygon `0x276afa...b1450d`; polygon `0x29aae8...08fa92`; polygon `0x351271...ba6783`; polygon `0x3f69cf...38c54e`; polygon `0x404231...362b11`; polygon `0x47ce4a...f935ff`; polygon `0x483f49...0f4dbe`; polygon `0x4b657a...3a7667`; polygon `0x56df84...f8ec12`; polygon `0x5b77d9...913d95`; polygon `0x5b8856...c9daad`; polygon `0x665f19...17b10b`; polygon `0x6789fb...ae755b`; polygon `0x6c73f7...852708`; polygon `0x6e8777...eca788`; polygon `0x72267a...96d9f0`; polygon `0x72d9fd...985d74`; polygon `0x7ecbc2...23b8be`; polygon `0x853d5f...ab5aef`; polygon `0x93da4d...ad0163`; polygon `0x940f86...14b3cb`; polygon `0x980531...c1b680`; polygon `0xa358a2...f28c0e`; polygon `0xae2767...8b8582`; polygon `0xc533c7...64791b`; polygon `0xd48bbc...c0812b`; polygon `0xdcbc8b...f85184`; polygon `0xe25c3e...bc87b6`; polygon `0xe600c3...951fe9`; polygon `0xf42564...465fd6`; polygon `0xf63203...6ada76`; polygon `0xf8226e...9fc2d6` | ⚠️ Unaudited |
| FuelRouterWL | adapter | polygon | 65 deployments: polygon [`0x000ebb...3ccab8`](./contracts/polygon-137/0x000ebb6a25aa2f2f18bc1155f0c5701e343ccab8/); polygon `0x07185e...a9ca25`; polygon `0x09dca7...be02ae`; polygon `0x09de05...f6eeb8`; polygon `0x0ad880...28f8c0`; polygon `0x105e33...d01563`; polygon `0x110aa1...673e22`; polygon `0x1166f0...dd05a3`; polygon `0x122bd0...7de330`; polygon `0x182c9e...7d9708`; polygon `0x1cc11c...2a5634`; polygon `0x1e30e0...c2fd7d`; polygon `0x1eab87...54278c`; polygon `0x1f191a...64cf63`; polygon `0x2f5d4b...8d9826`; polygon `0x30e744...cd1ca8`; polygon `0x3dd580...593315`; polygon `0x44a868...48b144`; polygon `0x46566e...b74dfe`; polygon `0x49afd7...54c0bf`; polygon `0x4a395f...7db2fd`; polygon `0x4b05d1...07f685`; polygon `0x4ce387...41f76d`; polygon `0x52b1d9...9dd6fc`; polygon `0x548385...f36715`; polygon `0x566413...e327bd`; polygon `0x56ee54...051507`; polygon `0x6116d9...30259d`; polygon `0x628af6...8fa455`; polygon `0x63f677...99371b`; polygon `0x641216...5c9531`; polygon `0x67dbf2...5a2fe1`; polygon `0x6eafb6...2602cb`; polygon `0x6f75b3...5148dc`; polygon `0x727c7e...5e14b7`; polygon `0x7282f9...364b03`; polygon `0x7366a9...ec36ef`; polygon `0x7810a6...fe69fc`; polygon `0x793b26...e38760`; polygon `0x7b73be...ebe120`; polygon `0x7d16d8...4c56e9`; polygon `0x7f7e75...ec4404`; polygon `0x7f8391...fbb08b`; polygon `0x86c987...ed6e7e`; polygon `0x98e66a...9d9dfe`; polygon `0x9b74dc...a38580`; polygon `0x9e0710...634ecc`; polygon `0xa4f1da...c6c4ac`; polygon `0xb046b2...e5fe41`; polygon `0xb52ad6...25840a`; polygon `0xb72f87...8b442a`; polygon `0xbe9d1e...273a21`; polygon `0xc4e175...0864e0`; polygon `0xcb60b5...2ae197`; polygon `0xcbec39...e46a67`; polygon `0xd9e49e...5fded0`; polygon `0xdb4c08...cd6fc6`; polygon `0xe4c820...6baaa7`; polygon `0xe68e95...65e470`; polygon `0xe6a405...3ba92e`; polygon `0xebe143...27f17a`; polygon `0xf13f64...b0a62f`; polygon `0xf253b0...94b452`; polygon `0xf6b1b1...bd9c72`; polygon `0xf8e408...38ccbc` | ⚠️ Unaudited |
| Memories | unknown | polygon | 2 deployments: polygon [`0x75099a...b72b54`](./contracts/polygon-137/0x75099a54f72ef1ae33f89e57157de8c205b72b54/); polygon `0x8b76a9...c208c1` | ⚠️ Unaudited |
| OPNControllerDAO | governance | ethereum | 2 deployments: ethereum [`0xb85ef7...91484f`](./contracts/ethereum-1/0xb85ef7cba61ea534c058e930aa5a4cab6d91484f/); ethereum `0xe11201...c9c992` | ⚠️ Unaudited |
| OPNMigration | operational_periphery | ethereum | [`0xb4cfd7...dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | ⚠️ Unaudited |
| OPNMintManager | governance | ethereum | 2 deployments: ethereum [`0xa5cbf4...bfe97d`](./contracts/ethereum-1/0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d/); polygon `0xc4f9e4...befa06` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | [`0x9a6d24...a31dbe`](./contracts/base-8453/0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | polygon | [`0xbf7052...228af9`](./contracts/polygon-137/0xbf705239c90211bff2e4cf513c01209cda228af9/) | ⚠️ Unaudited |
| Registry | registry | polygon | 2 deployments: polygon [`0x27b50c...534ec6`](./contracts/polygon-137/0x27b50ca961480b35005d452e288600f6e4534ec6/); polygon `0x4c3ad9...95d558` | ⚠️ Unaudited |
| RouterRegistry | adapter | polygon | 3 deployments: polygon [`0x677519...be7da7`](./contracts/polygon-137/0x677519aa676225728df56d503cc8d21394be7da7/); polygon `0x809519...0679e4`; polygon `0xec7578...c7472e` | ⚠️ Unaudited |
| StakingBalanceOracle | operational_periphery | polygon | [`0xedbdfe...7bc222`](./contracts/polygon-137/0xedbdfe07af988906cc031a4fbfcbf6a23c7bc222/) | ⚠️ Unaudited |
| TopUp | unknown | polygon | 7 deployments: polygon [`0x132548...d7a476`](./contracts/polygon-137/0x1325483a6d3e539c3b81b174b8eec78b00d7a476/); polygon `0x238ceb...2d6829`; polygon `0x587eed...2fd5a0`; polygon `0x748df3...4c3eda`; polygon `0x7c48a6...b5d690`; polygon `0x7f9a79...26ca4e`; polygon `0xee3ddd...278bb5` | ⚠️ Unaudited |

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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc28eb2...eb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | OPNToken | token | $2,669,303.67 | Verified native implementation with $2,669,303.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x686e85...03fc88`](./contracts/ethereum-1/0x686e8500b6be8812eb198aabbbfa14c95c03fc88/) | GovernanceLockedRevenueDistributionToken | token | $504,795.95 | Verified native implementation with $504,795.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x28ebda...f7839a`](./contracts/polygon-137/0x28ebda846c8c380543189bcb87fafc5beef7839a/) | Economics | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03114b...48bbab`](./contracts/polygon-137/0x03114bc4c9ed962a28ee3880c31e6d01ad48bbab/) | EconomicsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65076e...9c1eee`](./contracts/polygon-137/0x65076e3e3b0cfef59f5f51c13621e729e99c1eee/) | EconomicsImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3da76e...bf9f53`](./contracts/polygon-137/0x3da76ef75a7ebdb101afc7ec47b13f5c8cbf9f53/) | EconomicsMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00b8c9...898595`](./contracts/polygon-137/0x00b8c99a85c222745863740ee2413ef366898595/) | FuelRouterDT | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000ebb...3ccab8`](./contracts/polygon-137/0x000ebb6a25aa2f2f18bc1155f0c5701e343ccab8/) | FuelRouterWL | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x75099a...b72b54`](./contracts/polygon-137/0x75099a54f72ef1ae33f89e57157de8c205b72b54/) | Memories | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb85ef7...91484f`](./contracts/ethereum-1/0xb85ef7cba61ea534c058e930aa5a4cab6d91484f/) | OPNControllerDAO | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4cfd7...dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | OPNMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5cbf4...bfe97d`](./contracts/ethereum-1/0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d/) | OPNMintManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbf7052...228af9`](./contracts/polygon-137/0xbf705239c90211bff2e4cf513c01209cda228af9/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x677519...be7da7`](./contracts/polygon-137/0x677519aa676225728df56d503cc8d21394be7da7/) | RouterRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xedbdfe...7bc222`](./contracts/polygon-137/0xedbdfe07af988906cc031a4fbfcbf6a23c7bc222/) | StakingBalanceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x132548...d7a476`](./contracts/polygon-137/0x1325483a6d3e539c3b81b174b8eec78b00d7a476/) | TopUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9476] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9477] 0002-metadata-manifest-and-pull-command.md
- [9478] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
