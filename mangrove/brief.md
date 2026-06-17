# Agentic Audit Brief: Mangrove

## Project Overview

- Project: Mangrove (`mangrove`)
- Website: [https://www.mangrove.exchange](https://www.mangrove.exchange)
- Lifecycle: active (Tier 0, 47.5% below peak)
- Generated: 2026-06-17T07:00:52.156Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, sei
- Contract surface: 44 unique implementations (97 raw deployments)
- DeFi Llama TVL: $4,258,566.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mangrove is an EVM-based order-book DEX and adaptive liquidity protocol that lets liquidity providers post programmable offers, restake otherwise idle liquidity, and run market-making or vault-based strategies across supported deployments.

### Architecture

The Mangrove core DEX provides the base order book, while Vaults and Strategies use it to manage liquidity and automate market making. Ghostbook extends order sharing across chains, and Oracles supply price data to vaults and strategies for asset valuation.

## Contract Surface Quality

- Indexed contracts: 147; live-surface contracts included: 97 (35 live, 62 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: aave-v2
- Unverified dependencies: 19/44.

## Audit Coverage Summary

- Verified implementations audited: 10/38 (26.3%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 44
- Raw deployments: 97
- Audits discovered: 6
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 0 unknown
- Tier 1 coverage: 18.4% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 7 | 18.4% | 2023-11 |
| unknown | Tier 2 | 3 | 7.9% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveKandelSeeder | unknown | base | n/a | 5 deployments: base [`0x095854...9b9b1d`](./contracts/base-8453/0x095854c8c4591fb0a413615b9a366b4dd69b9b1d/); base `0x3e6d5a...bec228`; base `0x4ff58b...ab0eb1`; base `0x556dc5...0a719a`; arbitrum `0x55b12d...58fb5a` | ✅ Audited |
| GeometricKandelExtra | unknown | base | n/a | [`0x274f47...4bc077`](./contracts/base-8453/0x274f471270251fe69e17eb1b45666676fe4bc077/) | ✅ Audited |
| Kandel | unknown | arbitrum | n/a | [`0xc88863...9878f0`](./contracts/arbitrum-42161/0xc88863ec3efe3bbecc48564ebc2f135ea19878f0/) | ✅ Audited |
| KandelLib | unknown | base | n/a | [`0x1d7c32...1427d0`](./contracts/base-8453/0x1d7c32b43409ac66a9f5666daf674e2ef21427d0/) | ✅ Audited |
| KandelSeeder | unknown | arbitrum | n/a | 3 deployments: base `0x808bc0...6a089a`; arbitrum [`0x4bb756...91b03d`](./contracts/arbitrum-42161/0x4bb7567303c8bde27a4b490b3e5f1593c891b03d/); arbitrum `0x89139b...35745d` | ✅ Audited |
| Mangrove | proxy | sei | unit-31378 | [`0xd9834d...b14bcd`](./contracts/sei-1329/0xd9834d7caa2acf81c40e7aac645cf9a57cb14bcd/) | ✅ Audited |
| Mangrove | unknown | arbitrum | n/a | 3 deployments: base `0x226135...725faa`; arbitrum [`0x109d9c...f93f61`](./contracts/arbitrum-42161/0x109d9cdfa4ac534354873ef634ef63c235f93f61/); arbitrum `0x1dbf94...d9d227` | ✅ Audited |
| MangroveChainlinkOracleFactory | operational_periphery | arbitrum | n/a | 2 deployments: base `0x9d05c7...9e5712`; arbitrum [`0x31c47e...1f2587`](./contracts/arbitrum-42161/0x31c47e3f442f521e1c65b5b626ac2e978c1f2587/) | ✅ Audited |
| MangroveOrder | unknown | arbitrum | n/a | 5 deployments: sei `0x5ba076...75928b`; base `0xa3c363...2adf36`; arbitrum [`0x0ea85f...28e3fa`](./contracts/arbitrum-42161/0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa/); arbitrum `0x50793d...d2ffcc`; blast `0x83251e...32d80e` | ✅ Audited |
| MangroveVaultFactory | registry | base | n/a | 4 deployments: sei `0xd6cc0b...ba369e`; base [`0x26a0e4...1dafa5`](./contracts/base-8453/0x26a0e433f89317ca5585945198a5f0760c1dafa5/); base `0xda5ecd...8cce79`; arbitrum `0x6b82ce...dab41a` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BalancerV2Swapper | adapter | sei | n/a | [`0x369022...685dd0`](./contracts/sei-1329/0x369022670f2c623ee6894ae4053ef54c2c685dd0/) | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | base | n/a | [`0x4778c5...0b41fe`](./contracts/base-8453/0x4778c54e6380bbc6ef9647f2a31528b0640b41fe/) | ⚠️ Unaudited |
| ERC4626RouterDeployer | adapter | base | n/a | [`0x5f4d59...ee7b34`](./contracts/base-8453/0x5f4d596c58a1d171196923fd8c45a09e9dee7b34/) | ⚠️ Unaudited |
| ERC4626VaultV2Deployer | core_logic | sei | n/a | [`0x6d5e02...c6b69a`](./contracts/sei-1329/0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a/) | ⚠️ Unaudited |
| MangroveChainlinkOracleFactoryV2 | operational_periphery | base | n/a | [`0x656a6a...960123`](./contracts/base-8453/0x656a6ac038d1686d4f80427ddaf59b352f960123/) | ⚠️ Unaudited |
| MangroveCleanerV2 | unknown | base | n/a | [`0xb922a4...b75eae`](./contracts/base-8453/0xb922a4560bedcd22450574453e178e8a12b75eae/) | ⚠️ Unaudited |
| MangroveDiaOracleFactory | operational_periphery | base | n/a | 2 deployments: base [`0x0cf194...dd87a3`](./contracts/base-8453/0x0cf19437dc140308d8f87fb824c61c9b9fdd87a3/); base `0x529756...d39560` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | registry | base | n/a | 2 deployments: base [`0x5975ba...5e20fa`](./contracts/base-8453/0x5975ba297795296f9ab99014807d853fe85e20fa/); base `0x92db74...c052b8` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | base | n/a | 11 deployments: sei `0x127a5a...81e8b6`; base [`0x02bda8...d0af4c`](./contracts/base-8453/0x02bda8c9051cdcf273609786cb24ec242dd0af4c/); base `0x15f02f...bd549f`; base `0xbd7189...b5a918`; base `0xfd4fcc...1fe574`; arbitrum `0x426537...d0b2c1`; arbitrum `0x46708d...dfafea`; arbitrum `0x6b04fb...c673ca`; arbitrum `0xc8857c...366959`; arbitrum `0xe2beb6...36dca9`; arbitrum `0xfff6f0...c20fca` | ⚠️ Unaudited |
| MangrovePoints | unknown | arbitrum | n/a | [`0x26e9e3...b4bfd4`](./contracts/arbitrum-42161/0x26e9e34839b5f150b66ea30cd8b503ffa1b4bfd4/) | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | sei | n/a | 4 deployments: sei [`0x44536a...b287b1`](./contracts/sei-1329/0x44536a066e9c736f2d90b2999275cffd26b287b1/); sei `0x78793b...a7328c`; sei `0xbce560...2f314a`; sei `0xfe7d44...2296e3` | ⚠️ Unaudited |
| MgvCleaner | unknown | arbitrum | n/a | [`0x55b196...9ed24c`](./contracts/arbitrum-42161/0x55b196d0d51840b99c7973d1b8d6d036b69ed24c/) | ⚠️ Unaudited |
| MgvOracle | operational_periphery | base | n/a | 2 deployments: base [`0xa3749d...08a7d0`](./contracts/base-8453/0xa3749d35103ad916c4753f89a1bf065ab608a7d0/); arbitrum `0xb1a49c...fb448c` | ⚠️ Unaudited |
| MgvOracleBaseFee | operational_periphery | arbitrum | n/a | [`0x84c931...354723`](./contracts/arbitrum-42161/0x84c931166fb306c79165fdc38b88dad24e354723/) | ⚠️ Unaudited |
| MgvPriceOracle | operational_periphery | sei | n/a | 3 deployments: sei [`0x10f9e2...bc6e2f`](./contracts/sei-1329/0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f/); base `0x8fb396...560ffd`; arbitrum `0xb81d09...4fd38c` | ⚠️ Unaudited |
| MgvReader | unknown | arbitrum | n/a | 4 deployments: sei `0xfeafb3...87499e`; base `0xe5b118...fb50d3`; arbitrum [`0x7e108d...0d1875`](./contracts/arbitrum-42161/0x7e108d7c9cadb03e026075bf242ac2353d0d1875/); arbitrum `0x920474...08e418` | ⚠️ Unaudited |
| MgvRewardsDistributor | operational_periphery | sei | n/a | [`0xdb6a3a...0dbb10`](./contracts/sei-1329/0xdb6a3a20743f5878732ef73623a51033c80dbb10/) | ⚠️ Unaudited |
| MintHelperV1 | periphery | sei | n/a | 3 deployments: sei [`0x1ae538...5e0716`](./contracts/sei-1329/0x1ae53888ce926ca468c9574dd2cb885b005e0716/); base `0x2ae6f9...67cda1`; arbitrum `0xc39b5f...5cd440` | ⚠️ Unaudited |
| MockTokenFactory | registry | base | n/a | [`0x789a28...603151`](./contracts/base-8453/0x789a28a6fcc5682365e5144e05c04d4af4603151/) | ⚠️ Unaudited |
| OracleCombinerFactory | operational_periphery | base | n/a | 2 deployments: base [`0xb898c4...f3efed`](./contracts/base-8453/0xb898c4a986a1e4fd31b9818772f9ec16dbf3efed/); base `0xf9d160...5f4fa7` | ⚠️ Unaudited |
| OracleLib | operational_periphery | sei | n/a | 2 deployments: sei [`0x555557...00acfd`](./contracts/sei-1329/0x5555571f9cbec32d6a8dcb5042b73cddd000acfd/); sei `0xb9d022...cc5b1d` | ⚠️ Unaudited |
| RouterProxyFactory | adapter | base | n/a | 2 deployments: base [`0x2926cc...af54e9`](./contracts/base-8453/0x2926cc3977f93a51465f9742c548e67220af54e9/); arbitrum `0x396614...77e0f1` | ⚠️ Unaudited |
| SmartKandelSeeder | unknown | arbitrum | n/a | 2 deployments: base `0x614fe2...5d770a`; arbitrum [`0x43bb29...3ea7b7`](./contracts/arbitrum-42161/0x43bb29f47b7b14f252fba32d686f4902823ea7b7/) | ⚠️ Unaudited |
| TakaraKandelSeeder | unknown | sei | n/a | 7 deployments: sei [`0x2f0c90...def08d`](./contracts/sei-1329/0x2f0c903973501859b9ebba0c6c6afffb07def08d/); sei `0x76aa9e...027eaf`; sei `0xa04bc2...8378ee`; sei `0xaccc07...4ce055`; sei `0xb9028a...6aecc4`; sei `0xdcc3d2...96af2c`; sei `0xf150ab...5e3f60` | ⚠️ Unaudited |
| TakaraRouterProxyDeployer | adapter | sei | n/a | 3 deployments: sei [`0x1feae2...94cfbf`](./contracts/sei-1329/0x1feae24e399cdee3ad009570b6c1418b5494cfbf/); sei `0x7964be...c8663b`; sei `0xf63535...ce6c5b` | ⚠️ Unaudited |
| UniswapV3Swapper | adapter | arbitrum | n/a | 2 deployments: base `0xaf31be...21ea3f`; arbitrum [`0x22ba67...1099fa`](./contracts/arbitrum-42161/0x22ba67eb361ec40e0949ed034f3ce08af51099fa/) | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | sei | n/a | 2 deployments: sei [`0x85e438...c9724c`](./contracts/sei-1329/0x85e438c92773ad8501ec465da4f64bfb53c9724c/); sei `0xbb4b6b...4b7f10` | ⚠️ Unaudited |
| VaultV2Deployer | core_logic | sei | n/a | [`0x4476bd...3d7c60`](./contracts/sei-1329/0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | sei | n/a | `0x4ca024...134ff7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x60251d...20da98` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x928387...2d0c31` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xd5843e...a30047` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf87e18...a7f4f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f2d0a...46dc91` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf](https://github.com/mangrovedao/audits/blob/main/core/v1/ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 9 | high |
| [ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf) | ChainSecurity | Audit | 2023-03 | stale | Direct | contract_name | 5 | high |
| [ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 15 | high |
| [NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf) | Nethermind | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [NM_0339_Mangrove_Vault_FINAL.pdf](https://github.com/mangrovedao/audits/blob/main/vaults/NM_0339_Mangrove_Vault_FINAL.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4778c5...0b41fe`](./contracts/base-8453/0x4778c54e6380bbc6ef9647f2a31528b0640b41fe/) | ERC4626KandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f4d59...ee7b34`](./contracts/base-8453/0x5f4d596c58a1d171196923fd8c45a09e9dee7b34/) | ERC4626RouterDeployer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x6d5e02...c6b69a`](./contracts/sei-1329/0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a/) | ERC4626VaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x656a6a...960123`](./contracts/base-8453/0x656a6ac038d1686d4f80427ddaf59b352f960123/) | MangroveChainlinkOracleFactoryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb922a4...b75eae`](./contracts/base-8453/0xb922a4560bedcd22450574453e178e8a12b75eae/) | MangroveCleanerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cf194...dd87a3`](./contracts/base-8453/0x0cf19437dc140308d8f87fb824c61c9b9fdd87a3/) | MangroveDiaOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5975ba...5e20fa`](./contracts/base-8453/0x5975ba297795296f9ab99014807d853fe85e20fa/) | MangroveERC4626KandelVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02bda8...d0af4c`](./contracts/base-8453/0x02bda8c9051cdcf273609786cb24ec242dd0af4c/) | MangroveGhostBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26e9e3...b4bfd4`](./contracts/arbitrum-42161/0x26e9e34839b5f150b66ea30cd8b503ffa1b4bfd4/) | MangrovePoints | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x44536a...b287b1`](./contracts/sei-1329/0x44536a066e9c736f2d90b2999275cffd26b287b1/) | MangroveVaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55b196...9ed24c`](./contracts/arbitrum-42161/0x55b196d0d51840b99c7973d1b8d6d036b69ed24c/) | MgvCleaner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa3749d...08a7d0`](./contracts/base-8453/0xa3749d35103ad916c4753f89a1bf065ab608a7d0/) | MgvOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x84c931...354723`](./contracts/arbitrum-42161/0x84c931166fb306c79165fdc38b88dad24e354723/) | MgvOracleBaseFee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x10f9e2...bc6e2f`](./contracts/sei-1329/0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f/) | MgvPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7e108d...0d1875`](./contracts/arbitrum-42161/0x7e108d7c9cadb03e026075bf242ac2353d0d1875/) | MgvReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xdb6a3a...0dbb10`](./contracts/sei-1329/0xdb6a3a20743f5878732ef73623a51033c80dbb10/) | MgvRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1ae538...5e0716`](./contracts/sei-1329/0x1ae53888ce926ca468c9574dd2cb885b005e0716/) | MintHelperV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x789a28...603151`](./contracts/base-8453/0x789a28a6fcc5682365e5144e05c04d4af4603151/) | MockTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb898c4...f3efed`](./contracts/base-8453/0xb898c4a986a1e4fd31b9818772f9ec16dbf3efed/) | OracleCombinerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x555557...00acfd`](./contracts/sei-1329/0x5555571f9cbec32d6a8dcb5042b73cddd000acfd/) | OracleLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2926cc...af54e9`](./contracts/base-8453/0x2926cc3977f93a51465f9742c548e67220af54e9/) | RouterProxyFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x43bb29...3ea7b7`](./contracts/arbitrum-42161/0x43bb29f47b7b14f252fba32d686f4902823ea7b7/) | SmartKandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2f0c90...def08d`](./contracts/sei-1329/0x2f0c903973501859b9ebba0c6c6afffb07def08d/) | TakaraKandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1feae2...94cfbf`](./contracts/sei-1329/0x1feae24e399cdee3ad009570b6c1418b5494cfbf/) | TakaraRouterProxyDeployer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x85e438...c9724c`](./contracts/sei-1329/0x85e438c92773ad8501ec465da4f64bfb53c9724c/) | VaultsV2Feed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4476bd...3d7c60`](./contracts/sei-1329/0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60/) | VaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=56

Zero-match audit list:

- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf

Fork inheritance lineage and inherited audits are included when available.
