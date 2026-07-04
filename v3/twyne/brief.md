# Agentic Audit Brief: Twyne

## Project Overview

- Project: Twyne (`twyne`)
- Website: [https://twyne.xyz/](https://twyne.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.215Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 65 unique implementations (104 raw deployments)
- DeFi Llama TVL: $5,572,575.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 58 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 8 functional families. Its contracts share 32 common project-authored base contract(s) (evcutil, vaultmodule, assettransfers). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 104 (97 live, 7 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/58 (19.0%)
- Deployed-live implementations: 58 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/58
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 65
- Raw deployments: 104
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 4 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 13.8% | 2025-12 |
| yAudit | Tier 2 | 7 | 12.1% | 2025-12 |
| Enigma Ventures | Tier 2 | 2 | 3.4% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3ATokenWrapper | unknown | ethereum | n/a | [`0x0af56a...e5fd1c`](./contracts/ethereum-1/0x0af56afbddcb140323445bd7211ba90e54e5fd1c/) | ✅ Audited |
| AaveV3ATokenWrapper | token | ethereum | n/a | [`0x106ac7...fe8def`](./contracts/ethereum-1/0x106ac75d7cc134af2f98ac4715f9b4289ffe8def/) | ✅ Audited |
| AaveV3ATokenWrapper | token | ethereum | n/a | [`0x10e67b...ac5cb1`](./contracts/ethereum-1/0x10e67b758f43529d2634aaf7bd6f59a1a9ac5cb1/) | ✅ Audited |
| AaveV3ATokenWrapper | token | ethereum | n/a | 2 deployments: ethereum [`0x223d40...8139ef`](./contracts/ethereum-1/0x223d402b82d6b5c4f0b9bc0348960098228139ef/); ethereum `0xfaba8f...3e1881` | ✅ Audited |
| AaveV3CollateralVault | core_logic | ethereum | n/a | [`0x07acb5...73d085`](./contracts/ethereum-1/0x07acb5854090216585c28f5a230f1bb57e73d085/) | ✅ Audited |
| AaveV3DeleverageOperator | unknown | ethereum | n/a | [`0x229fe1...605e91`](./contracts/ethereum-1/0x229fe10bc00bbe99ac99703647d4f74f31605e91/) | ✅ Audited |
| AaveV3LeverageOperator | unknown | ethereum | n/a | [`0x451949...093a4c`](./contracts/ethereum-1/0x451949bde57abe2f5dbd4758cd50c6dcfc093a4c/) | ✅ Audited |
| AaveV3TeleportOperator | unknown | ethereum | n/a | [`0x868a21...62bd78`](./contracts/ethereum-1/0x868a21426852a775395d4b90de23b3e3e662bd78/) | ✅ Audited |
| CollateralVaultFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x42ccba...7a4c05`](./contracts/ethereum-1/0x42ccba95b6e0cb0c8405d347bc9d999d2c7a4c05/); ethereum `0x434cc8...831b66`; ethereum `0x6076d1...bfc04d`; ethereum `0x92432b...01521f` | ✅ Audited |
| EulerCollateralVault | core_logic | ethereum | n/a | 16 deployments: ethereum [`0x04f48f...675ae2`](./contracts/ethereum-1/0x04f48fc36185aea0d2f2567dbe02ee626d675ae2/); ethereum `0x0df4a4...775a97`; ethereum `0x1d22ed...a8f6c4`; ethereum `0x2a2027...23a531`; ethereum `0x2b53e9...aa3502`; ethereum `0x2d776c...da4f5b`; ethereum `0x2f6b56...4ae796`; ethereum `0x310226...b9d60b`; ethereum `0x3bee82...253c7c`; ethereum `0x4fce64...242098`; ethereum `0x597c15...a3f754`; ethereum `0x8d2279...c34a5b`; ethereum `0x9a0374...f8e0c2`; ethereum `0xba4fed...300194`; ethereum `0xea5f4c...1a4e38`; ethereum `0xf46910...5ef5b0` | ✅ Audited |
| VaultManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x318ee4...ac8935`](./contracts/ethereum-1/0x318ee40f3e47261efad169c1c3affa2cd3ac8935/); ethereum `0x44134f...ee1a40`; ethereum `0x7521da...032e9c`; ethereum `0xa25ba3...7c0a06` | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountLens | periphery | ethereum | n/a | [`0x03fccb...aee47f`](./contracts/ethereum-1/0x03fccb0bf0770d6131f07de1d96b728604aee47f/) | ⚠️ Unaudited |
| BalanceForwarder | unknown | ethereum | n/a | [`0x4c962c...82c1a9`](./contracts/ethereum-1/0x4c962ccafed516c4ade82650aa3fba9e0982c1a9/) | ⚠️ Unaudited |
| Borrowing | core_logic | ethereum | n/a | [`0xf52bf1...0eb317`](./contracts/ethereum-1/0xf52bf182c5c5b053c827ccecb4016f985a0eb317/) | ⚠️ Unaudited |
| BridgeHookTarget | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x04bd0f...d850c8`](./contracts/ethereum-1/0x04bd0f950e6ea6656243fc115df3006cdfd850c8/); ethereum `0x461865...dd405a`; ethereum `0xd0f204...140d06`; ethereum `0xfff8ea...02148b` | ⚠️ Unaudited |
| CapRiskStewardFactory | registry | ethereum | n/a | [`0xd9d5bb...88456e`](./contracts/ethereum-1/0xd9d5bb195b1fb27dad5a36fdbb5abbae9e88456e/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x04edc5...c1ae34`](./contracts/ethereum-1/0x04edc51c6a821af4d7981e6fb6e9e5668bc1ae34/); ethereum `0x1367b1...938419`; ethereum `0x2b93e9...0d3c06`; ethereum `0x8d29a2...3fe51e` | ⚠️ Unaudited |
| EdgeFactory | registry | ethereum | n/a | [`0x39eaf0...c4ec96`](./contracts/ethereum-1/0x39eaf0b106993fc241c4774921a0033e20c4ec96/) | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | ethereum | n/a | [`0xa9d1d1...167c89`](./contracts/ethereum-1/0xa9d1d1d13738a3c9d31ea32e118354221f167c89/) | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | n/a | [`0x5b1e75...c8af86`](./contracts/ethereum-1/0x5b1e75004bff7a59cf7a52b2dc484baa16c8af86/) | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | ethereum | n/a | [`0xef39d6...de702a`](./contracts/ethereum-1/0xef39d6493884c4c84d38a4bff879ce16cede702a/) | ⚠️ Unaudited |
| EulerEarnFactory | registry | ethereum | n/a | [`0x9d96fa...a724a1`](./contracts/ethereum-1/0x9d96fa373368fc235a32434863dd4d34eda724a1/) | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | ethereum | n/a | [`0x725739...576a54`](./contracts/ethereum-1/0x7257395d794677bc6f7e8e4cd150a71dce576a54/) | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | ethereum | n/a | [`0x91bb67...318017`](./contracts/ethereum-1/0x91bb674fcc7ca44ecf97d8330738f8c806318017/) | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | ethereum | n/a | [`0xff1445...181ca4`](./contracts/ethereum-1/0xff144562f9996adff0f2fec080bd464b3e181ca4/) | ⚠️ Unaudited |
| EulerKinkIRMFactory | registry | ethereum | n/a | [`0x427739...fb8694`](./contracts/ethereum-1/0x42773937c5b97521a87f001afdbce53976fb8694/) | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | ethereum | n/a | [`0x9ae433...9593cb`](./contracts/ethereum-1/0x9ae43357a0fb4127a13cd55ccfe3d835c89593cb/) | ⚠️ Unaudited |
| EulerRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x5d7a67...ffa185`](./contracts/ethereum-1/0x5d7a67418ee94259fd3a6091e2cc0baeedffa185/); ethereum `0xb001f0...af8648` | ⚠️ Unaudited |
| EulerRouterFactory | adapter | ethereum | n/a | [`0x928b7d...61cad9`](./contracts/ethereum-1/0x928b7d2ccea72268a051a2807f7fd9585861cad9/) | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ff123...055ae5`](./contracts/ethereum-1/0x4ff123522a8d60087774f4a72765e4b592055ae5/); ethereum `0x65fc60...299dad` | ⚠️ Unaudited |
| EulerWrapper | unknown | ethereum | n/a | [`0xa680fe...5f452f`](./contracts/ethereum-1/0xa680feda11fbbb18a759a60756b2e7b51a5f452f/) | ⚠️ Unaudited |
| EVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ff808...c85106`](./contracts/ethereum-1/0x2ff808ea1716d77cae91d85feeeef74baac85106/); ethereum `0xb5eb1d...ff647a` | ⚠️ Unaudited |
| EVKFactoryPerspective | registry | ethereum | n/a | [`0x9775dc...3f1427`](./contracts/ethereum-1/0x9775dc2bc7e8164f7f81caccf25603f1423f1427/) | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | n/a | [`0xf98a5f...65faea`](./contracts/ethereum-1/0xf98a5fb86cdd03932b813cbc3840f150a965faea/) | ⚠️ Unaudited |
| FeeFlowController | governance | ethereum | n/a | [`0x675ef9...0449c9`](./contracts/ethereum-1/0x675ef95c9ebd651015b97ee7c1327d2eb20449c9/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x77c70a...8ed40a`](./contracts/ethereum-1/0x77c70a543d78a4d5df3f7e217fa648a3308ed40a/) | ⚠️ Unaudited |
| GovernedPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55d631...3e33ef`](./contracts/ethereum-1/0x55d631c04077d791020e0416d7a27509a43e33ef/); ethereum `0xf67d8e...c04b77` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | ethereum | n/a | [`0x71b70d...f1722d`](./contracts/ethereum-1/0x71b70dbc89720fca6773474239d5d4b239f1722d/) | ⚠️ Unaudited |
| HealthStatViewer | periphery | ethereum | n/a | 2 deployments: ethereum [`0x0dd906...cbdbd4`](./contracts/ethereum-1/0x0dd9065c998e75657bce6c3a11d7f5aba5cbdbd4/); ethereum `0x2c4bd0...5a55cb` | ⚠️ Unaudited |
| Initialize | unknown | ethereum | n/a | [`0xc54c44...8174ed`](./contracts/ethereum-1/0xc54c4429592262d40c760ca65d6b5fc8bb8174ed/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | n/a | [`0x65e83e...ff0037`](./contracts/ethereum-1/0x65e83e6f11c28c2baee42c01be57575d8dff0037/) | ⚠️ Unaudited |
| LeverageOperator | unknown | ethereum | n/a | [`0x335ab8...cf29b3`](./contracts/ethereum-1/0x335ab81f1c3d9f72639004d3e982902458cf29b3/) | ⚠️ Unaudited |
| Liquidation | unknown | ethereum | n/a | [`0xa2577b...1d7308`](./contracts/ethereum-1/0xa2577b2584fd824fe5feb4950b7bd3f2f51d7308/) | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x35fcde...14f661`](./contracts/ethereum-1/0x35fcde75567efd3974d02daea93ed98e0714f661/); ethereum `0xced1a4...85be32` | ⚠️ Unaudited |
| ProtocolConfig | governance | ethereum | n/a | [`0xff06f2...752c5c`](./contracts/ethereum-1/0xff06f28cf0c44cf1e8f03e6835bb2f3a2a752c5c/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0x001969...434249`](./contracts/ethereum-1/0x001969e33df5a9360d5bfc8219539a1616434249/) | ⚠️ Unaudited |
| RiskManager | governance | ethereum | n/a | [`0x230ae7...d42421`](./contracts/ethereum-1/0x230ae761f2d507e4135fb356a25f64cd9ed42421/) | ⚠️ Unaudited |
| SequenceRegistry | registry | ethereum | n/a | [`0x84101f...eaa392`](./contracts/ethereum-1/0x84101fdec409e6446263c4738c3ae11166eaa392/) | ⚠️ Unaudited |
| SnapshotRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x020979...a86f0f`](./contracts/ethereum-1/0x0209798a20d1ee69bbac4c16f095e4e03ba86f0f/); ethereum `0x0d69ea...41bf49`; ethereum `0x51cadf...54de9a` | ⚠️ Unaudited |
| Swapper | adapter | ethereum | n/a | [`0x544410...685e65`](./contracts/ethereum-1/0x544410023cbccb2b141f13a7cee9d594e6685e65/) | ⚠️ Unaudited |
| SwapVerifier | periphery | ethereum | n/a | [`0x8ddacd...c2b807`](./contracts/ethereum-1/0x8ddacdea0bb99c378ff52e0c1c45952386c2b807/) | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | ethereum | n/a | [`0x3020f1...e7144a`](./contracts/ethereum-1/0x3020f1ef3d456c43c071e605e551b0416ee7144a/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x9eba7c...622f91`](./contracts/ethereum-1/0x9eba7c5827b2a7cfa8a4dc69b23f22e46f622f91/); ethereum `0xe04157...a85ead` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0xcdb998...cd6b62`](./contracts/ethereum-1/0xcdb9980eea4f7b4569862c49d9f7025157cd6b62/) | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | ethereum | n/a | [`0x90534e...ecd6bb`](./contracts/ethereum-1/0x90534ead5021a0c0698afd91091811c1dbecd6bb/) | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x2312d5...6c9f51`](./contracts/ethereum-1/0x2312d5264989256a0dade8763147a2a8b16c9f51/); ethereum `0x8ff75e...105c83` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x002c3e...41bf00`](./contracts/ethereum-1/0x002c3eb2cb56fb252a5d1a88f27df27f0941bf00/) | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1ebbf0...ed680e`](./contracts/ethereum-1/0x1ebbf0a23a72806878eb1318fc45e7cdbced680e/); ethereum `0x3f42b4...0eaa4d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x36b2bd...2196d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37d5c8...ae5b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45c8bd...48cb98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59e102...88befb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3bb6c...042c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a5b0...b42d52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32677...082079` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [reports.yaudit.dev//2025-04-Twyne](https://reports.yaudit.dev//2025-04-Twyne) | yAudit | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [reports.electisec.com/2025-04-Twyne](https://reports.electisec.com/2025-04-Twyne) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf) | Enigma Ventures | Audit | 2025-04 | aging | Direct | contract_name | 2 | n/a |
| [reports.yaudit.dev/2025-11-Twyne-AAVE](https://reports.yaudit.dev/2025-11-Twyne-AAVE) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/2025-12-Twyne-AAVE-Operators](https://reports.yaudit.dev/2025-12-Twyne-AAVE-Operators) | yAudit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf](https://487956288-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3KnzajNTqFNdyZr2k3l3%2Fuploads%2F1BUrZGcTaMl5rFRH00ph%2FTwyne%20-%20Aave%20integration.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 9 | high |
| [2025-11-Twyne-AAVE.pdf](https://reports.yaudit.dev/pdf/2025-11-Twyne-AAVE.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 7 | n/a |
| [seceureka.com](https://seceureka.com/) | SecEureka | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=9, extraction_exact=9

Zero-match audit list:

- [2815] reports.yaudit.dev//2025-04-Twyne
- [2816] reports.electisec.com/2025-04-Twyne
- [2818] reports.yaudit.dev/2025-11-Twyne-AAVE
- [2820] reports.yaudit.dev/2025-12-Twyne-AAVE-Operators
- [15127] seceureka.com

Fork inheritance lineage and inherited audits are included when available.
