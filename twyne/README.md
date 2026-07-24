# Agentic Audit Brief: Twyne

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 15 (3 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Twyne (`twyne`)
- Website: [https://twyne.xyz/](https://twyne.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 95 unique implementations (131 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,572,575.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Twyne. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 5 unclassified, 4 core, 2 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (5), core (4), supporting (2)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (1)
- Frameworks: foundry (5), openzeppelin-upgradeable (5), openzeppelin (4), permit2 (4), aave (3), chainlink (3)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe3632980f6d1a405211eaa698c125e4f3753337e`, chain 1)
- ERC1967Proxy (`0x0acd3a3c8ab6a5f7b5a594c88dfa28999da858ac`, chain 1)
- ERC1967Proxy (`0xa1517cce0be75700a8838ea1cee0dc383cd3a332`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (3 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 83 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 4 of 95 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/67
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 95
- Raw deployments: 131
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 11 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 3.0% | 2026-02 |
| Enigma Dark | Tier 2 | 1 | 1.5% | 2025-11 |
| Enigma Ventures | Tier 2 | 1 | 1.5% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralVaultFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395098 | `0xa1517cce0be75700a8838ea1cee0dc383cd3a332` | ✅ Audited |
| VaultManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395097 | `0x0acd3a3c8ab6a5f7b5a594c88dfa28999da858ac` | ✅ Audited |

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3ATokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0af56afbddcb140323445bd7211ba90e54e5fd1c` | ⚠️ Unaudited |
| AaveV3ATokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x106ac75d7cc134af2f98ac4715f9b4289ffe8def` | ⚠️ Unaudited |
| AaveV3ATokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10e67b758f43529d2634aaf7bd6f59a1a9ac5cb1` | ⚠️ Unaudited |
| AaveV3ATokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x223d402b82d6b5c4f0b9bc0348960098228139ef`; ethereum `0xfaba8f777996c0c28fe9e6554d84cb30ca3e1881` | ⚠️ Unaudited |
| AaveV3CollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07acb5854090216585c28f5a230f1bb57e73d085` | ⚠️ Unaudited |
| AaveV3DeleverageOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395085 | `0x229fe10bc00bbe99ac99703647d4f74f31605e91` | ⚠️ Unaudited |
| AaveV3LeverageOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395088 | `0x451949bde57abe2f5dbd4758cd50c6dcfc093a4c` | ⚠️ Unaudited |
| AaveV3TeleportOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395092 | `0x868a21426852a775395d4b90de23b3e3e662bd78` | ⚠️ Unaudited |
| AccountLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03fccb0bf0770d6131f07de1d96b728604aee47f` | ⚠️ Unaudited |
| BalanceForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c962ccafed516c4ade82650aa3fba9e0982c1a9` | ⚠️ Unaudited |
| Borrowing | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52bf182c5c5b053c827ccecb4016f985a0eb317` | ⚠️ Unaudited |
| BridgeHookTarget | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x04bd0f950e6ea6656243fc115df3006cdfd850c8`; ethereum `0x4618659e71155a9eeb3d1ba3166fac63f7dd405a`; ethereum `0xd0f204f0cbf8ff05574d6b72b80433b201140d06`; ethereum `0xfff8ea03bb799bc0ae5402d4c61a5f889402148b` | ⚠️ Unaudited |
| CapRiskStewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d5bb195b1fb27dad5a36fdbb5abbae9e88456e` | ⚠️ Unaudited |
| CollateralVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x42ccba95b6e0cb0c8405d347bc9d999d2c7a4c05`; ethereum `0x434cc844126cd6c5f35f5db16e03f6379a831b66`; ethereum `0x92432bfd3bf81ec55b093f6118063a9d3d01521f` | ⚠️ Unaudited |
| CollateralVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395089 | `0x6076d1ec9668883766c035579b3605d91ebfc04d` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x04edc51c6a821af4d7981e6fb6e9e5668bc1ae34`; ethereum `0x1367b12271a2ef075eb7aef36f637b16ff938419`; ethereum `0x2b93e9c78368cd3027d2ba540f7cd19a470d3c06`; ethereum `0x8d29a2267427a9a4f3be6e8562be4d63083fe51e` | ⚠️ Unaudited |
| EdgeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39eaf0b106993fc241c4774921a0033e20c4ec96` | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d1d1d13738a3c9d31ea32e118354221f167c89` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1e75004bff7a59cf7a52b2dc484baa16c8af86` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef39d6493884c4c84d38a4bff879ce16cede702a` | ⚠️ Unaudited |
| EulerCollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x04f48fc36185aea0d2f2567dbe02ee626d675ae2`; ethereum `0x0df4a4e1e24cba221e5c0eb2b8d5d88451775a97`; ethereum `0x1d22edbdb18e9afec0033a986d27ea1644a8f6c4`; ethereum `0x2a2027917a79f16f889c7371d8aae04bcc23a531`; ethereum `0x2f6b56265a7042ab9b0d01636621e7fd284ae796`; ethereum `0x3bee82b2f23a0627b414c69f5b266c6b1d253c7c`; ethereum `0x4fce64b1f3a71fc7338af182aefde39277242098`; ethereum `0x597c15326586c5f61c53358c1abf005137a3f754`; ethereum `0x9a03749aa56a7c01ae7cf9b5e76419fd7ef8e0c2`; ethereum `0xba4fedea26efa07225ef12e2f9c0556d5d300194`; ethereum `0xea5f4c9a2c267376522e5f11de49c2e5c61a4e38`; ethereum `0xf469108354896c1720ea61a718fccbe7b35ef5b0` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b53e9ae1105fa722f411d0e98baa7a602aa3502`; ethereum `0xf6e0ae2ca8cbe08db213a3cbed623fedf2973c51` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d776c44e3176b0b38d26e7d355dd25aa4da4f5b`; ethereum `0xcf050c5b9e71c2bfaf5799ef53fc2e97213f048b` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3102268c656dcd68eb515387984fb1edf0b9d60b`; ethereum `0xdcc611b9d4c5d49a08b1d36425334fbc0625c3f3` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x718981f04ca942e450a1c735342d70fbcaca8557`; ethereum `0x8d22792fa8072ef8b4d348eed8513d4426c34a5b` | ⚠️ Unaudited |
| EulerEarnFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d96fa373368fc235a32434863dd4d34eda724a1` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7257395d794677bc6f7e8e4cd150a71dce576a54` | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91bb674fcc7ca44ecf97d8330738f8c806318017` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff144562f9996adff0f2fec080bd464b3e181ca4` | ⚠️ Unaudited |
| EulerKinkIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42773937c5b97521a87f001afdbce53976fb8694` | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae43357a0fb4127a13cd55ccfe3d835c89593cb` | ⚠️ Unaudited |
| EulerRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7a67418ee94259fd3a6091e2cc0baeedffa185` | ⚠️ Unaudited |
| EulerRouter | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395094 | `0xb001f039d76ba48e577a17c04b6940db37af8648` | ⚠️ Unaudited |
| EulerRouterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x928b7d2ccea72268a051a2807f7fd9585861cad9` | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ff123522a8d60087774f4a72765e4b592055ae5`; ethereum `0x65fc602ea5af59c3c8f39fdb72f0d3312d299dad` | ⚠️ Unaudited |
| EulerWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa680feda11fbbb18a759a60756b2e7b51a5f452f` | ⚠️ Unaudited |
| EVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395096 | 2 deployments: ethereum `0x2ff808ea1716d77cae91d85feeeef74baac85106`; ethereum `0xb5eb1d005e389bef38161691e2083b4d86ff647a` | ⚠️ Unaudited |
| EVKFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9775dc2bc7e8164f7f81caccf25603f1423f1427` | ⚠️ Unaudited |
| FactoryGovernor | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98a5fb86cdd03932b813cbc3840f150a965faea` | ⚠️ Unaudited |
| FeeFlowController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x675ef95c9ebd651015b97ee7c1327d2eb20449c9` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c70a543d78a4d5df3f7e217fa648a3308ed40a` | ⚠️ Unaudited |
| GovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55d631c04077d791020e0416d7a27509a43e33ef`; ethereum `0xf67d8e802604560a1989c4935b11cf7767c04b77` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b70dbc89720fca6773474239d5d4b239f1722d` | ⚠️ Unaudited |
| HealthStatViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0dd9065c998e75657bce6c3a11d7f5aba5cbdbd4`; ethereum `0x2c4bd0a1287b24dd0ce3e53d247a5e78d45a55cb` | ⚠️ Unaudited |
| Initialize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54c4429592262d40c760ca65d6b5fc8bb8174ed` | ⚠️ Unaudited |
| IRMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e83e6f11c28c2baee42c01be57575d8dff0037` | ⚠️ Unaudited |
| LeverageOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395087 | `0x335ab81f1c3d9f72639004d3e982902458cf29b3` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2577b2584fd824fe5feb4950b7bd3f2f51d7308` | ⚠️ Unaudited |
| OracleLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35fcde75567efd3974d02daea93ed98e0714f661`; ethereum `0xced1a496deebdaf785487218568ad8dd8a85be32` | ⚠️ Unaudited |
| ProtocolConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff06f28cf0c44cf1e8f03e6835bb2f3a2a752c5c` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001969e33df5a9360d5bfc8219539a1616434249` | ⚠️ Unaudited |
| RiskManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230ae761f2d507e4135fb356a25f64cd9ed42421` | ⚠️ Unaudited |
| SequenceRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84101fdec409e6446263c4738c3ae11166eaa392` | ⚠️ Unaudited |
| SnapshotRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0209798a20d1ee69bbac4c16f095e4e03ba86f0f`; ethereum `0x0d69ea02c0879d91b4fc9f099d1b710b2241bf49`; ethereum `0x51cadf17943d56971b1ac46fbb09986ece54de9a` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544410023cbccb2b141f13a7cee9d594e6685e65` | ⚠️ Unaudited |
| SwapVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ddacdea0bb99c378ff52e0c1c45952386c2b807` | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3020f1ef3d456c43c071e605e551b0416ee7144a` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9eba7c5827b2a7cfa8a4dc69b23f22e46f622f91`; ethereum `0xe04157a3ba20976c582fcf6351beeac063a85ead` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb9980eea4f7b4569862c49d9f7025157cd6b62` | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90534ead5021a0c0698afd91091811c1dbecd6bb` | ⚠️ Unaudited |
| UtilsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2312d5264989256a0dade8763147a2a8b16c9f51`; ethereum `0x8ff75ebb27ae71ce16723b6da70f22c893105c83` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002c3eb2cb56fb252a5d1a88f27df27f0941bf00` | ⚠️ Unaudited |
| VaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ebbf0a23a72806878eb1318fc45e7cdbced680e`; ethereum `0x3f42b4abba4389c7c2262fbd800cd937ee0eaa4d` | ⚠️ Unaudited |
| VaultManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395086 | `0x318ee40f3e47261efad169c1c3affa2cd3ac8935` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x44134feb6b76a5382b107423fc4a78b23fee1a40`; ethereum `0x7521dab4aa9fd9aabf8eaf1a2d9396c2f8032e9c`; ethereum `0xa25ba3820927eac383594e4632637a38867c0a06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a7d8cb49530721d59d256db8807eb4720c1aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024e2e6191f549da4c6992f8020005eda7915581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bd815fb912a6a93d61a1408d506039a275fd741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0bba0173f62af9891784a2cf57ab2c0ec528f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d7781cf49e96977054d027bf51789b90630e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2b4c7f871f2713d26a0c275e8a4fcaebfeec4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b2bd4e17827e9deabdb3ad520ac597972196d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d5c87b7996063583c7e164c1d7fe27a6ae5b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c8bd6b4f43bc6db113eb904d33d7ab7948cb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47e6ff457828083a92265db4826f9c628fc361ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e102a255c4386cb9c88d7fb6d039694e88befb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a919b9a77ee391ab48208a93e0684c24f99b07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x675672ae732bb0b3edaf5fac8b9f52e98837c920` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395090 | `0x75029a47f28550c93ad5a3bbd2d9b5315204b561` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395091 | `0x7613d202af490c3d1ce1873b0a7022a34e89815f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395093 | `0x87b8081a3ace680f35125f469526ac10f5418ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9496d13716d31c1b237d7dc832d051de41bb7e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14e6763dfd1ed92b4a91ae16bee56cb6a1645d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa15368b5b8285955b19e3d3724d28908b8ac8538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bb6c2b632aa16265a69cf435c073ddbd042c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a5b08c40d1cf9264dcb32f079f8172cdb42d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5d1c85f23fa1a3a09136db7c21da653f360611f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae2714e4eff33b692d38ef0356c7986820a2156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7b35033dd95452bb5cd37860f61df54ca52fcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395095 | `0xe3632980f6d1a405211eaa698c125e4f3753337e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe615b74b234eb44c845dd05906d97e9f51b0087d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee8d78200ff809142d3f44c0e1ea5b13e44697f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf326779ab8acd664d2edc3b62bfe356699082079` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 32
- Live contracts: 3
- Unknown liveness contracts: 29
- Source-verified contracts: 15
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=9, source verified unclassified=4, unverified unclassified=17

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | ERC1967Proxy<br>`0x0acd3a3c8ab6a5f7b5a594c88dfa28999da858ac` | project_anchor | unknown | live | verified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0xa1517cce0be75700a8838ea1cee0dc383cd3a332` | project_anchor | unknown | live | verified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | CollateralVaultFactory<br>`0x6076d1ec9668883766c035579b3605d91ebfc04d` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | ERC1967Proxy<br>`0x0af56afbddcb140323445bd7211ba90e54e5fd1c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | EulerCollateralVault<br>`0x2b53e9ae1105fa722f411d0e98baa7a602aa3502` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | EulerCollateralVault<br>`0x2d776c44e3176b0b38d26e7d355dd25aa4da4f5b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | EulerCollateralVault<br>`0x3102268c656dcd68eb515387984fb1edf0b9d60b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | EulerCollateralVault<br>`0x8d22792fa8072ef8b4d348eed8513d4426c34a5b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | EVault<br>`0x2ff808ea1716d77cae91d85feeeef74baac85106` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | GenericFactory<br>`0xb5eb1d005e389bef38161691e2083b4d86ff647a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | candidate review | VaultManager<br>`0x318ee40f3e47261efad169c1c3affa2cd3ac8935` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0x718981f04ca942e450a1c735342d70fbcaca8557` | non_address_book | unknown | unknown | verified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0xcf050c5b9e71c2bfaf5799ef53fc2e97213f048b` | non_address_book | unknown | unknown | verified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0xdcc611b9d4c5d49a08b1d36425334fbc0625c3f3` | non_address_book | unknown | unknown | verified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0xf6e0ae2ca8cbe08db213a3cbed623fedf2973c51` | non_address_book | unknown | unknown | verified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee8d78200ff809142d3f44c0e1ea5b13e44697f0` | non_address_book | unknown | unknown | unverified | n/a | `0x05c859bf9424e7c40fed32a2b16ddb8433b44fbf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01a7d8cb49530721d59d256db8807eb4720c1aed` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x024e2e6191f549da4c6992f8020005eda7915581` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bd815fb912a6a93d61a1408d506039a275fd741` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13b0bba0173f62af9891784a2cf57ab2c0ec528f` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17d7781cf49e96977054d027bf51789b90630e97` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d2b4c7f871f2713d26a0c275e8a4fcaebfeec4e` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47e6ff457828083a92265db4826f9c628fc361ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a919b9a77ee391ab48208a93e0684c24f99b07a` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x675672ae732bb0b3edaf5fac8b9f52e98837c920` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9496d13716d31c1b237d7dc832d051de41bb7e03` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa14e6763dfd1ed92b4a91ae16bee56cb6a1645d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa15368b5b8285955b19e3d3724d28908b8ac8538` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5d1c85f23fa1a3a09136db7c21da653f360611f` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbae2714e4eff33b692d38ef0356c7986820a2156` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf7b35033dd95452bb5cd37860f61df54ca52fcf` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe615b74b234eb44c845dd05906d97e9f51b0087d` | non_address_book | unknown | unknown | unverified | n/a | `0xa94d9d3b3f2a69559e89ea05b91940166382e23a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [reports.yaudit.dev//2025-04-Twyne](https://reports.yaudit.dev//2025-04-Twyne) | yAudit | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [reports.electisec.com/2025-04-Twyne](https://reports.electisec.com/2025-04-Twyne) | unknown | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf) | Enigma Ventures | Audit | 2025-04 | aging | Direct | n/a | matched | 1 | 1 | 0 | 3 | n/a |
| [reports.yaudit.dev/2025-11-Twyne-AAVE](https://reports.yaudit.dev/2025-11-Twyne-AAVE) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [reports.yaudit.dev/2025-12-Twyne-AAVE-Operators](https://reports.yaudit.dev/2025-12-Twyne-AAVE-Operators) | yAudit | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf](https://487956288-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3KnzajNTqFNdyZr2k3l3%2Fuploads%2F1BUrZGcTaMl5rFRH00ph%2FTwyne%20-%20Aave%20integration.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2025-11-Twyne-AAVE.pdf](https://reports.yaudit.dev/pdf/2025-11-Twyne-AAVE.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [seceureka.com](https://seceureka.com/) | SecEureka | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Twyne - Aave integration.pdf](https://487956288-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3KnzajNTqFNdyZr2k3l3%2Fuploads%2FcTRisxaAtbMGmyPEr0Y0%2FTwyne%20-%20Aave%20integration.pdf) | Josselin Feist (SecEureka) | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [report 1](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-11_Invariant_Testing_Engagement_Twyne_Aave_integration.pdf) | Enigma Dark | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [report 2](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-11_Invariant_Testing_Engagement_Twyne_Aave_atokenwrapper.pdf) | Enigma Dark | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Twyne - Dynamic liquidation incentive.pdf](https://487956288-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3KnzajNTqFNdyZr2k3l3%2Fuploads%2FEEqdfEBeGopHAhrVakkl%2FTwyne%20-%20Dynamic%20liquidation%20incentive.pdf) | yAudit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [report](https://reports.yaudit.dev/2025-12-Twyne-liquidation-incentive) | yAudit | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [report](https://reports.yaudit.dev/2026-02-Twyne-2026-Q1) | yAudit | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Twyne PRs review (April 13th).pdf](https://487956288-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3KnzajNTqFNdyZr2k3l3%2Fuploads%2FvpVd5DvLLZhAixV5vqmP%2FTwyne%20PRs%20review%20(April%2013th).pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2815] reports.yaudit.dev//2025-04-Twyne — no match: The provided text is a navigation/footer snippet from yAudit reports page, containing no contract names, file paths, or scope details. Only the date 'April 2025' was found, interpreted as end of month.
- [2816] reports.electisec.com/2025-04-Twyne — no match: The provided text is not an audit report; it is a boilerplate for a Next.js application.
- [2817] 2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf — matched: No reason recorded
- [2818] reports.yaudit.dev/2025-11-Twyne-AAVE — no match: The provided text is a header/footer snippet from a report page, not the full report. No contracts or scope section are identifiable.
- [2820] reports.yaudit.dev/2025-12-Twyne-AAVE-Operators — no match: The provided text is a header/footer snippet from a yAudit report for 'Twyne AAVE Operators' dated December 2025, but no contract names or scope details are included.
- [2821] spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf — no match: Report states focus on AaveV3ATokenWrapper and AaveV3CollateralVault and related components. No explicit scope table; names extracted from executive summary.
- [15124] 2025-11-Twyne-AAVE.pdf — matched: No reason recorded
- [15127] seceureka.com — no match: The provided text is a personal profile page for Josselin Feist, not an audit report. No contracts, scope sections, or audit dates are present.
- [28322] Twyne - Aave integration.pdf — no match: Report states focus on AaveV3ATokenWrapper and AaveV3CollateralVault and related components. No explicit scope table, but these are the only named contracts in scope.
- [28323] report 1 — matched: Scope section lists 5 contracts under src/ directory. Audit date inferred from 'November, 2025' on cover page, using last day of month.
- [28324] report 2 — no match: Scope section lists two Solidity files under src/; audit date inferred from 'November, 2025' in header and engagement start date November 13 2025, using end of month.
- [28325] Twyne - Dynamic liquidation incentive.pdf — no match: No explicit scope section; contracts inferred from findings and code quality mentions.
- [28326] report — no match: The provided text is a minimal page header/footer with no contract names, file paths, or scope section. Only the month/year 'December 2025' was found, interpreted as end of month.
- [28327] report — no match: No scope section or contract names found in the provided text.
- [28328] Twyne PRs review (April 13th).pdf — no match: The report reviews PRs and mentions contract files like CollateralVaultBase.sol and AaveV3CollateralVault.sol, but does not provide a clear scope table or list of contracts in scope. The review focuses on changes across multiple PRs without explicitly naming all contracts audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf | CollateralVaultBase | unmatched — not counted | — | — | no |
| 2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf | EulerCollateralVault | unmatched — not counted | — | — | no |
| 2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf | HookAggregator | unmatched — not counted | — | — | no |
| 2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf | VaultManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0acd3a3c8ab6a5f7b5a594c88dfa28999da858ac` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf | AaveV3ATokenWrapper | unmatched — not counted | — | mentioned as focus of review | no |
| spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf | AaveV3CollateralVault | unmatched — not counted | — | mentioned as focus of review | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3ATokenWrapper | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3ATokenWrapperOracle | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3CollateralVault | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3Wrapper | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | CollateralVaultBase | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | CollateralVaultFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xa1517cce0be75700a8838ea1cee0dc383cd3a332` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-Twyne-AAVE.pdf | CustomERC4626StataTokenUpgradeable | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | EulerCollateralVault | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | VaultManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0acd3a3c8ab6a5f7b5a594c88dfa28999da858ac` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Twyne - Aave integration.pdf | AaveV3ATokenWrapper | unmatched — not counted | — | mentioned as focus of review | no |
| Twyne - Aave integration.pdf | AaveV3CollateralVault | unmatched — not counted | — | mentioned as focus of review | no |
| report 1 | AaveV3CollateralVault | unmatched — not counted | — | listed in scope | no |
| report 1 | CollateralVaultBase | unmatched — not counted | — | listed in scope | no |
| report 1 | IntermediateVault | unmatched — not counted | — | listed in scope | no |
| report 1 | VaultManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0acd3a3c8ab6a5f7b5a594c88dfa28999da858ac` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report 1 | TwyneFactory | unmatched — not counted | — | listed in scope | no |
| report 2 | AaveV3ATokenWrapper | unmatched — not counted | — | listed in scope | no |
| report 2 | CustomERC4626StataTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| Twyne - Dynamic liquidation incentive.pdf | EulerCollateralVault | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Twyne - Dynamic liquidation incentive.pdf | CollateralVaultBase | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Twyne - Dynamic liquidation incentive.pdf | HealthStatViewer | unmatched — not counted | — | mentioned in code quality section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2ff808ea1716d77cae91d85feeeef74baac85106` | EVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=8, medium=3
- Match method counts: unique_name=4

Zero-match audit list:

- [2815] reports.yaudit.dev//2025-04-Twyne
- [2816] reports.electisec.com/2025-04-Twyne
- [2818] reports.yaudit.dev/2025-11-Twyne-AAVE
- [2820] reports.yaudit.dev/2025-12-Twyne-AAVE-Operators
- [2821] spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf
- [15127] seceureka.com
- [28322] Twyne - Aave integration.pdf
- [28324] report 2
- [28325] Twyne - Dynamic liquidation incentive.pdf
- [28326] report
- [28327] report
- [28328] Twyne PRs review (April 13th).pdf

Fork inheritance lineage and inherited audits are included when available.
