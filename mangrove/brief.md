# Agentic Audit Brief: Mangrove

## Project Overview

- Project: Mangrove (`mangrove`)
- Website: [https://www.mangrove.exchange](https://www.mangrove.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.357Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, blast, sei
- Contract surface: 61 unique implementations (121 raw deployments)
- DeFi Llama TVL: $4,232,928.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 59 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on foundry.

### Architecture

The protocol comprises 6 functional families. Its contracts share 14 common project-authored base contract(s) (abstractkandelseeder, imgvmonitor, accesscontrolled). Dominant framework: foundry.

## Contract Surface Quality

- Indexed contracts: 148; live-surface contracts included: 121 (91 live, 30 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/31 (19.4%)
- Deployed-live implementations: 33 of 61 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/34
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 61
- Raw deployments: 121
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 16.1% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 11.8% | 2023-11 |
| Code4rena | Tier 1 | 4 | 11.8% | 2024-02 |
| unknown | Tier 2 | 1 | 2.9% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KandelSeeder | unknown | sei | n/a | 4 deployments: sei [`0x075420...5124a3`](./contracts/sei-1329/0x075420cb1f213857fcbaf2c9dbfc6ca6295124a3/); base `0x808bc0...6a089a`; arbitrum `0x4bb756...91b03d`; arbitrum `0x89139b...35745d` | ✅ Audited |
| Mangrove | proxy | sei | n/a | [`0xd9834d...b14bcd`](./contracts/sei-1329/0xd9834d7caa2acf81c40e7aac645cf9a57cb14bcd/) | ✅ Audited |
| Mangrove | unknown | arbitrum | n/a | 2 deployments: base `0x226135...725faa`; arbitrum [`0x109d9c...f93f61`](./contracts/arbitrum-42161/0x109d9cdfa4ac534354873ef634ef63c235f93f61/) | ✅ Audited |
| MangroveOrder | unknown | arbitrum | n/a | 7 deployments: sei `0x5ba076...75928b`; base `0xa3c363...2adf36`; arbitrum [`0x50793d...d2ffcc`](./contracts/arbitrum-42161/0x50793d97a0c905ea51c1c93f37fc73abe6d2ffcc/); blast [`0x50793d...d2ffcc`](./contracts/blast-81457/0x50793d97a0c905ea51c1c93f37fc73abe6d2ffcc/); blast `0x83251e...32d80e`; blast `0x920474...08e418`; blast `0xded8e2...b0a424` | ✅ Audited |
| MangroveVaultFactory | unknown | base | n/a | 4 deployments: sei `0xd6cc0b...ba369e`; base [`0x26a0e4...1dafa5`](./contracts/base-8453/0x26a0e433f89317ca5585945198a5f0760c1dafa5/); base `0xda5ecd...8cce79`; arbitrum `0x6b82ce...dab41a` | ✅ Audited |
| SmartRouter | adapter | base | n/a | 2 deployments: sei `0xcc9d10...ac12dd`; base [`0x1424d7...7fbe32`](./contracts/base-8453/0x1424d7428dc11623100df1a3d06088c2d87fbe32/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveKandelSeeder | unknown | base | n/a | 3 deployments: base [`0x3e6d5a...bec228`](./contracts/base-8453/0x3e6d5aa75617f1f2bcd2c1d9992fbb17a4bec228/); base `0x4ff58b...ab0eb1`; base `0x556dc5...0a719a` | ⚠️ Unaudited |
| BalancerV2Swapper | adapter | sei | n/a | [`0x369022...685dd0`](./contracts/sei-1329/0x369022670f2c623ee6894ae4053ef54c2c685dd0/) | ⚠️ Unaudited |
| CompoundVaultV2Deployer | unknown | sei | n/a | 2 deployments: sei [`0x889021...1b6ad3`](./contracts/sei-1329/0x88902102097570134b02a245f6629b32551b6ad3/); sei `0xd34e51...58cf0a` | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | sei | n/a | 3 deployments: sei [`0x0d5e4c...d902e6`](./contracts/sei-1329/0x0d5e4ca24edda06915264feadf4b9cce74d902e6/); sei `0x9c5ad9...58bb11`; base `0x4778c5...0b41fe` | ⚠️ Unaudited |
| ERC4626RouterDeployer | unknown | base | n/a | 3 deployments: sei `0xb37f7a...ee14d9`; sei `0xc698f8...121b72`; base [`0x5f4d59...ee7b34`](./contracts/base-8453/0x5f4d596c58a1d171196923fd8c45a09e9dee7b34/) | ⚠️ Unaudited |
| ERC4626RouterProxyDeployer | unknown | sei | n/a | [`0x84bf03...5ea71c`](./contracts/sei-1329/0x84bf03a254151afc147ad09cd85a3d5ab75ea71c/) | ⚠️ Unaudited |
| ERC4626VaultV2Deployer | core_logic | sei | n/a | [`0x6d5e02...c6b69a`](./contracts/sei-1329/0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a/) | ⚠️ Unaudited |
| GeometricKandelExtra | unknown | base | n/a | 2 deployments: sei `0x572fcd...0373cc`; base [`0x274f47...4bc077`](./contracts/base-8453/0x274f471270251fe69e17eb1b45666676fe4bc077/) | ⚠️ Unaudited |
| Kandel | unknown | arbitrum | n/a | [`0xc88863...9878f0`](./contracts/arbitrum-42161/0xc88863ec3efe3bbecc48564ebc2f135ea19878f0/) | ⚠️ Unaudited |
| KandelLib | unknown | blast | n/a | 6 deployments: sei `0x9a48cb...1a7ad2`; sei `0xbef21f...a1ba3a`; base `0x1d7c32...1427d0`; blast [`0x0ea85f...28e3fa`](./contracts/blast-81457/0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa/); blast `0x3660bd...762af9`; blast `0xd12594...466fcf` | ⚠️ Unaudited |
| MangroveCleanerV2 | unknown | blast | n/a | 2 deployments: base `0xb922a4...b75eae`; blast [`0x22ba67...1099fa`](./contracts/blast-81457/0x22ba67eb361ec40e0949ed034f3ce08af51099fa/) | ⚠️ Unaudited |
| MangroveDiaOracleFactory | unknown | sei | n/a | 3 deployments: sei [`0x035d53...4518a1`](./contracts/sei-1329/0x035d53d54aef1815e882fea7ef4795de214518a1/); base `0x0cf194...dd87a3`; base `0x529756...d39560` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | unknown | base | n/a | 3 deployments: sei `0xadbb10...6956a0`; base [`0x5975ba...5e20fa`](./contracts/base-8453/0x5975ba297795296f9ab99014807d853fe85e20fa/); base `0x92db74...c052b8` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | sei | n/a | 3 deployments: sei [`0x127a5a...81e8b6`](./contracts/sei-1329/0x127a5a5e086dce304875e392c8170b04bc81e8b6/); base `0x15f02f...bd549f`; arbitrum `0x46708d...dfafea` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | sei | n/a | 4 deployments: sei [`0x44536a...b287b1`](./contracts/sei-1329/0x44536a066e9c736f2d90b2999275cffd26b287b1/); sei `0x78793b...a7328c`; sei `0xbce560...2f314a`; sei `0xfe7d44...2296e3` | ⚠️ Unaudited |
| MgvPriceOracle | operational_periphery | sei | n/a | 2 deployments: sei [`0x10f9e2...bc6e2f`](./contracts/sei-1329/0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f/); arbitrum `0xb81d09...4fd38c` | ⚠️ Unaudited |
| MgvReader | unknown | blast | n/a | 5 deployments: sei `0xfeafb3...87499e`; base `0xe5b118...fb50d3`; arbitrum `0x920474...08e418`; blast [`0x26fd96...4ab3f8`](./contracts/blast-81457/0x26fd9643baf1f8a44b752b28f0d90aebd04ab3f8/); blast `0xaa1144...f592ee` | ⚠️ Unaudited |
| MgvRewardsDistributor | operational_periphery | sei | n/a | [`0xdb6a3a...0dbb10`](./contracts/sei-1329/0xdb6a3a20743f5878732ef73623a51033c80dbb10/) | ⚠️ Unaudited |
| MintHelperV1 | periphery | sei | n/a | 3 deployments: sei [`0x1ae538...5e0716`](./contracts/sei-1329/0x1ae53888ce926ca468c9574dd2cb885b005e0716/); base `0x2ae6f9...67cda1`; arbitrum `0xc39b5f...5cd440` | ⚠️ Unaudited |
| MockTokenFactory | registry | base | n/a | [`0x789a28...603151`](./contracts/base-8453/0x789a28a6fcc5682365e5144e05c04d4af4603151/) | ⚠️ Unaudited |
| OracleCombinerFactory | unknown | base | n/a | 3 deployments: sei `0xfd8e85...fbeb19`; base [`0xb898c4...f3efed`](./contracts/base-8453/0xb898c4a986a1e4fd31b9818772f9ec16dbf3efed/); base `0xf9d160...5f4fa7` | ⚠️ Unaudited |
| OracleLib | operational_periphery | sei | n/a | 2 deployments: sei [`0x555557...00acfd`](./contracts/sei-1329/0x5555571f9cbec32d6a8dcb5042b73cddd000acfd/); sei `0xb9d022...cc5b1d` | ⚠️ Unaudited |
| RouterProxyFactory | unknown | base | n/a | 4 deployments: sei `0x91d001...516d93`; base [`0x2926cc...af54e9`](./contracts/base-8453/0x2926cc3977f93a51465f9742c548e67220af54e9/); arbitrum `0x396614...77e0f1`; blast `0x79c3f2...8b7131` | ⚠️ Unaudited |
| SmartKandelSeeder | unknown | arbitrum | n/a | 2 deployments: base `0x614fe2...5d770a`; arbitrum [`0x43bb29...3ea7b7`](./contracts/arbitrum-42161/0x43bb29f47b7b14f252fba32d686f4902823ea7b7/) | ⚠️ Unaudited |
| TakaraKandelSeeder | unknown | sei | n/a | 7 deployments: sei [`0x2f0c90...def08d`](./contracts/sei-1329/0x2f0c903973501859b9ebba0c6c6afffb07def08d/); sei `0x76aa9e...027eaf`; sei `0xa04bc2...8378ee`; sei `0xaccc07...4ce055`; sei `0xb9028a...6aecc4`; sei `0xdcc3d2...96af2c`; sei `0xf150ab...5e3f60` | ⚠️ Unaudited |
| TakaraRouterProxyDeployer | adapter | sei | n/a | 3 deployments: sei [`0x1feae2...94cfbf`](./contracts/sei-1329/0x1feae24e399cdee3ad009570b6c1418b5494cfbf/); sei `0x7964be...c8663b`; sei `0xf63535...ce6c5b` | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | sei | n/a | 2 deployments: sei [`0x85e438...c9724c`](./contracts/sei-1329/0x85e438c92773ad8501ec465da4f64bfb53c9724c/); sei `0xbb4b6b...4b7f10` | ⚠️ Unaudited |
| VaultV2Deployer | core_logic | sei | n/a | [`0x4476bd...3d7c60`](./contracts/sei-1329/0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sei | n/a | `0x1efad8...46b690` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3119fd...eb1957` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3ac5ec...a301b0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4bb7f3...7d7726` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4ca024...134ff7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5417bf...380a34` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x60251d...20da98` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7875bd...e448f2` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x928387...2d0c31` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xa70b4a...05c2bb` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xc9c403...a67f84` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xd5843e...a30047` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf87e18...a7f4f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f2d0a...46dc91` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x05f20e...f88262` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0f216b...4c8ef4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3870da...b41e9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x43bb29...3ea7b7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x55b196...9ed24c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5c1476...d3a4ba` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6a6f6e...c025ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa3b5b7...5d53c8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa48b36...7a87c5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa52ba5...9ed2e2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc0b3e7...f16120` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc88863...9878f0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcf4ec1...76d60b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf](https://github.com/mangrovedao/audits/blob/main/core/v1/ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf) | ChainSecurity | Audit | 2023-03 | stale | Direct | contract_name | 1 | n/a |
| [ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf) | Nethermind | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [NM_0339_Mangrove_Vault_FINAL.pdf](https://github.com/mangrovedao/audits/blob/main/vaults/NM_0339_Mangrove_Vault_FINAL.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf](https://github.com/mangrovedao/audits/blob/main/core/v0/ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | 2 | n/a |
| [2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf) | Code4rena | Contest | 2024-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x0d5e4c...d902e6`](./contracts/sei-1329/0x0d5e4ca24edda06915264feadf4b9cce74d902e6/) | ERC4626KandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f4d59...ee7b34`](./contracts/base-8453/0x5f4d596c58a1d171196923fd8c45a09e9dee7b34/) | ERC4626RouterDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x84bf03...5ea71c`](./contracts/sei-1329/0x84bf03a254151afc147ad09cd85a3d5ab75ea71c/) | ERC4626RouterProxyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x6d5e02...c6b69a`](./contracts/sei-1329/0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a/) | ERC4626VaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x274f47...4bc077`](./contracts/base-8453/0x274f471270251fe69e17eb1b45666676fe4bc077/) | GeometricKandelExtra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc88863...9878f0`](./contracts/arbitrum-42161/0xc88863ec3efe3bbecc48564ebc2f135ea19878f0/) | Kandel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0ea85f...28e3fa`](./contracts/blast-81457/0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa/) | KandelLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x22ba67...1099fa`](./contracts/blast-81457/0x22ba67eb361ec40e0949ed034f3ce08af51099fa/) | MangroveCleanerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x035d53...4518a1`](./contracts/sei-1329/0x035d53d54aef1815e882fea7ef4795de214518a1/) | MangroveDiaOracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5975ba...5e20fa`](./contracts/base-8453/0x5975ba297795296f9ab99014807d853fe85e20fa/) | MangroveERC4626KandelVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x127a5a...81e8b6`](./contracts/sei-1329/0x127a5a5e086dce304875e392c8170b04bc81e8b6/) | MangroveGhostBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x44536a...b287b1`](./contracts/sei-1329/0x44536a066e9c736f2d90b2999275cffd26b287b1/) | MangroveVaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x10f9e2...bc6e2f`](./contracts/sei-1329/0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f/) | MgvPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x26fd96...4ab3f8`](./contracts/blast-81457/0x26fd9643baf1f8a44b752b28f0d90aebd04ab3f8/) | MgvReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xdb6a3a...0dbb10`](./contracts/sei-1329/0xdb6a3a20743f5878732ef73623a51033c80dbb10/) | MgvRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1ae538...5e0716`](./contracts/sei-1329/0x1ae53888ce926ca468c9574dd2cb885b005e0716/) | MintHelperV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x789a28...603151`](./contracts/base-8453/0x789a28a6fcc5682365e5144e05c04d4af4603151/) | MockTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb898c4...f3efed`](./contracts/base-8453/0xb898c4a986a1e4fd31b9818772f9ec16dbf3efed/) | OracleCombinerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x555557...00acfd`](./contracts/sei-1329/0x5555571f9cbec32d6a8dcb5042b73cddd000acfd/) | OracleLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2926cc...af54e9`](./contracts/base-8453/0x2926cc3977f93a51465f9742c548e67220af54e9/) | RouterProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x43bb29...3ea7b7`](./contracts/arbitrum-42161/0x43bb29f47b7b14f252fba32d686f4902823ea7b7/) | SmartKandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2f0c90...def08d`](./contracts/sei-1329/0x2f0c903973501859b9ebba0c6c6afffb07def08d/) | TakaraKandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1feae2...94cfbf`](./contracts/sei-1329/0x1feae24e399cdee3ad009570b6c1418b5494cfbf/) | TakaraRouterProxyDeployer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x85e438...c9724c`](./contracts/sei-1329/0x85e438c92773ad8501ec465da4f64bfb53c9724c/) | VaultsV2Feed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4476bd...3d7c60`](./contracts/sei-1329/0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60/) | VaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf

Fork inheritance lineage and inherited audits are included when available.
