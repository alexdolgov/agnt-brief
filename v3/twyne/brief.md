# Agentic Audit Brief: Twyne

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 15 (3 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Twyne (`twyne`)
- Website: [https://twyne.xyz/](https://twyne.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 78 unique implementations (114 raw deployments)
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

- UnnamedContract (`0xe36329...53337e`, chain 1)
- ERC1967Proxy (`0x0acd3a...a858ac`, chain 1)
- ERC1967Proxy (`0xa1517c...d3a332`, chain 1)

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
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 4 of 78 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/67
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 78
- Raw deployments: 114
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
| CollateralVaultFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395098 | `0xa1517c...d3a332` | ✅ Audited |
| VaultManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395097 | `0x0acd3a...a858ac` | ✅ Audited |

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3ATokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0af56a...e5fd1c` | ⚠️ Unaudited |
| AaveV3ATokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x106ac7...fe8def` | ⚠️ Unaudited |
| AaveV3ATokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10e67b...ac5cb1` | ⚠️ Unaudited |
| AaveV3ATokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x223d40...8139ef`; ethereum `0xfaba8f...3e1881` | ⚠️ Unaudited |
| AaveV3CollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07acb5...73d085` | ⚠️ Unaudited |
| AaveV3DeleverageOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395085 | `0x229fe1...605e91` | ⚠️ Unaudited |
| AaveV3LeverageOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395088 | `0x451949...093a4c` | ⚠️ Unaudited |
| AaveV3TeleportOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395092 | `0x868a21...62bd78` | ⚠️ Unaudited |
| AccountLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03fccb...aee47f` | ⚠️ Unaudited |
| BalanceForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c962c...82c1a9` | ⚠️ Unaudited |
| Borrowing | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52bf1...0eb317` | ⚠️ Unaudited |
| BridgeHookTarget | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x04bd0f...d850c8`; ethereum `0x461865...dd405a`; ethereum `0xd0f204...140d06`; ethereum `0xfff8ea...02148b` | ⚠️ Unaudited |
| CapRiskStewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d5bb...88456e` | ⚠️ Unaudited |
| CollateralVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x42ccba...7a4c05`; ethereum `0x434cc8...831b66`; ethereum `0x92432b...01521f` | ⚠️ Unaudited |
| CollateralVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395089 | `0x6076d1...bfc04d` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x04edc5...c1ae34`; ethereum `0x1367b1...938419`; ethereum `0x2b93e9...0d3c06`; ethereum `0x8d29a2...3fe51e` | ⚠️ Unaudited |
| EdgeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39eaf0...c4ec96` | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d1d1...167c89` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1e75...c8af86` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef39d6...de702a` | ⚠️ Unaudited |
| EulerCollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x04f48f...675ae2`; ethereum `0x0df4a4...775a97`; ethereum `0x1d22ed...a8f6c4`; ethereum `0x2a2027...23a531`; ethereum `0x2f6b56...4ae796`; ethereum `0x3bee82...253c7c`; ethereum `0x4fce64...242098`; ethereum `0x597c15...a3f754`; ethereum `0x9a0374...f8e0c2`; ethereum `0xba4fed...300194`; ethereum `0xea5f4c...1a4e38`; ethereum `0xf46910...5ef5b0` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b53e9...aa3502`; ethereum `0xf6e0ae...973c51` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d776c...da4f5b`; ethereum `0xcf050c...3f048b` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x310226...b9d60b`; ethereum `0xdcc611...25c3f3` | ⚠️ Unaudited |
| EulerCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x718981...ca8557`; ethereum `0x8d2279...c34a5b` | ⚠️ Unaudited |
| EulerEarnFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d96fa...a724a1` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x725739...576a54` | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91bb67...318017` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1445...181ca4` | ⚠️ Unaudited |
| EulerKinkIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x427739...fb8694` | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae433...9593cb` | ⚠️ Unaudited |
| EulerRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7a67...ffa185` | ⚠️ Unaudited |
| EulerRouter | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395094 | `0xb001f0...af8648` | ⚠️ Unaudited |
| EulerRouterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x928b7d...61cad9` | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ff123...055ae5`; ethereum `0x65fc60...299dad` | ⚠️ Unaudited |
| EulerWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa680fe...5f452f` | ⚠️ Unaudited |
| EVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395096 | 2 deployments: ethereum `0x2ff808...c85106`; ethereum `0xb5eb1d...ff647a` | ⚠️ Unaudited |
| EVKFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9775dc...3f1427` | ⚠️ Unaudited |
| FactoryGovernor | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98a5f...65faea` | ⚠️ Unaudited |
| FeeFlowController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x675ef9...0449c9` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c70a...8ed40a` | ⚠️ Unaudited |
| GovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55d631...3e33ef`; ethereum `0xf67d8e...c04b77` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b70d...f1722d` | ⚠️ Unaudited |
| HealthStatViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0dd906...cbdbd4`; ethereum `0x2c4bd0...5a55cb` | ⚠️ Unaudited |
| Initialize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54c44...8174ed` | ⚠️ Unaudited |
| IRMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e83e...ff0037` | ⚠️ Unaudited |
| LeverageOperator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395087 | `0x335ab8...cf29b3` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2577b...1d7308` | ⚠️ Unaudited |
| OracleLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35fcde...14f661`; ethereum `0xced1a4...85be32` | ⚠️ Unaudited |
| ProtocolConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff06f2...752c5c` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001969...434249` | ⚠️ Unaudited |
| RiskManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230ae7...d42421` | ⚠️ Unaudited |
| SequenceRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84101f...eaa392` | ⚠️ Unaudited |
| SnapshotRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x020979...a86f0f`; ethereum `0x0d69ea...41bf49`; ethereum `0x51cadf...54de9a` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544410...685e65` | ⚠️ Unaudited |
| SwapVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ddacd...c2b807` | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3020f1...e7144a` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9eba7c...622f91`; ethereum `0xe04157...a85ead` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb998...cd6b62` | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90534e...ecd6bb` | ⚠️ Unaudited |
| UtilsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2312d5...6c9f51`; ethereum `0x8ff75e...105c83` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002c3e...41bf00` | ⚠️ Unaudited |
| VaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ebbf0...ed680e`; ethereum `0x3f42b4...0eaa4d` | ⚠️ Unaudited |
| VaultManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395086 | `0x318ee4...ac8935` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x44134f...ee1a40`; ethereum `0x7521da...032e9c`; ethereum `0xa25ba3...7c0a06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b2bd...2196d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d5c8...ae5b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c8bd...48cb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e102...88befb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395090 | `0x75029a...04b561` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395091 | `0x7613d2...89815f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395093 | `0x87b808...418ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bb6c...042c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a5b0...b42d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395095 | `0xe36329...53337e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32677...082079` | ❓ Unverified |

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
| 2025-04_Invariant_Testing_Engagement_Twyne_v1.pdf | VaultManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0acd3a...a858ac` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf | AaveV3ATokenWrapper | unmatched — not counted | — | mentioned as focus of review | no |
| spaces/3KnzajNTqFNdyZr2k3l3/uploads/1BUrZGcTaMl5rFRH00ph/Twyne - Aave integration.pdf | AaveV3CollateralVault | unmatched — not counted | — | mentioned as focus of review | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3ATokenWrapper | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3ATokenWrapperOracle | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3CollateralVault | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | AaveV3Wrapper | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | CollateralVaultBase | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | CollateralVaultFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xa1517c...d3a332` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-Twyne-AAVE.pdf | CustomERC4626StataTokenUpgradeable | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | EulerCollateralVault | unmatched — not counted | — | — | no |
| 2025-11-Twyne-AAVE.pdf | VaultManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0acd3a...a858ac` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Twyne - Aave integration.pdf | AaveV3ATokenWrapper | unmatched — not counted | — | mentioned as focus of review | no |
| Twyne - Aave integration.pdf | AaveV3CollateralVault | unmatched — not counted | — | mentioned as focus of review | no |
| report 1 | AaveV3CollateralVault | unmatched — not counted | — | listed in scope | no |
| report 1 | CollateralVaultBase | unmatched — not counted | — | listed in scope | no |
| report 1 | IntermediateVault | unmatched — not counted | — | listed in scope | no |
| report 1 | VaultManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0acd3a...a858ac` — deployed 2025-08-28 13:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ethereum | `0x2ff808...c85106` | EVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 11 |

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
