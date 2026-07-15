# Agentic Audit Brief: Royco Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Royco Protocol (`royco-protocol`)
- Website: [https://www.royco.org](https://www.royco.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, ethereum, hyperliquid, sonic
- Contract surface: 23 unique implementations (42 raw deployments)
- Coverage basis: 3/5 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,653,016.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Royco Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, avalanche, base, ethereum, hyperliquid, sonic. Structural roles: 2 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdaptiveCurveYDM (`0x071b0f...e3dfac`, chain 1)
- ERC1967Proxy (`0x63da12...f2581b`, chain 1)
- RoycoFactory (`0xd567cc...0bb71d`, chain 1)
- TransparentUpgradeableProxy (`0xd3f8ed...7a6c2d`, chain 1)
- VaultProxy (`0xcd9f59...0d2a32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 5 of 23 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/21
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 23
- Raw deployments: 42
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 5 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 60.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 3 | 14.3% | 2026-03 |
| Enigma Ventures | Tier 2 | 1 | 4.8% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConcreteAsyncVaultImpl | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391709 | `0xcd9f59...0d2a32` | ✅ Audited |
| MultisigStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391711 | `0xd3f8ed...7a6c2d` | ✅ Audited |
| RoycoEntryPoint | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391712 | `0x63da12...f2581b` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x80f0b2...e6bac9`; sonic `0x830129...b0416e` | ⚠️ Unaudited |
| AdaptiveCurveYDM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391707 | `0x071b0f...e3dfac` | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x90983e...16a396`; sonic `0x90983e...16a396` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74d1fa...bad5cc`; sonic `0x74d1fa...bad5cc` | ⚠️ Unaudited |
| ConcretePredepositVaultImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1119e...903d8d` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60ebb5...42b0b8` | ⚠️ Unaudited |
| PredepostVaultOApp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb03c43...ea8f04` | ⚠️ Unaudited |
| RecipeMarketHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: ethereum `0x783251...d937c0`; sonic `0xfcc593...95bdbd`; hyperliquid `0x6af057...6787fd`; base `0x783251...d937c0`; arbitrum `0x783251...d937c0` | ⚠️ Unaudited |
| RoycoFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7cc6fb...27253c` | ⚠️ Unaudited |
| RoycoFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391708 | `0xd567cc...0bb71d` | ⚠️ Unaudited |
| RoycoFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x7cc6fb...27253c` | ⚠️ Unaudited |
| RoycoFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x7cc6fb...27253c` | ⚠️ Unaudited |
| Safe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-391710 | `0x170ff0...4af6c8` | ⚠️ Unaudited |
| VaultMarketHub | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xa97ecc...769280`; arbitrum `0xa97ecc...769280` | ⚠️ Unaudited |
| WeirollWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x40a1c0...309dc0`; sonic `0x40a1c0...309dc0`; base `0x40a1c0...309dc0`; arbitrum `0x40a1c0...309dc0` | ⚠️ Unaudited |
| WeirollWalletHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x07899a...7c9911`; sonic `0x07899a...7c9911`; hyperliquid `0x07899a...7c9911`; base `0x07899a...7c9911`; arbitrum `0x07899a...7c9911` | ⚠️ Unaudited |
| WhitelistUserDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c4952...342f13` | ⚠️ Unaudited |
| WrappedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3c44c2...eb3e66`; sonic `0xb0a396...e2bf33`; base `0x3c44c2...eb3e66`; base `0xb0a396...e2bf33`; arbitrum `0x3c44c2...eb3e66` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x40a1c0...309dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x595ee7...e301fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 49 | high |
| [Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | Enigma Ventures | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 13 | high |
| [docs.makina.finance/contracts/security](https://docs.makina.finance/contracts/security) | Enigma Ventures | Audit | 2026-05 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11653] hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026 — no match: Extracted contract names from scope description and findings sections. Audit date inferred from 'Jan 2026' in title.
- [11654] hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 — no match: Extracted contract names from scope section and findings. Audit date inferred from 'March 2026' in header.
- [11655] hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026 — matched: Extracted contract names from scope description and finding paths. Audit date inferred from 'Apr 2026' in title, using last day of month.
- [11656] cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf — matched: All contracts listed in the scope section of the audit report were extracted. The audit date is from the cover page.
- [11657] Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf — matched: All contracts listed in the Scope section of the report. Audit date from engagement end date (September 16th, 2025).
- [11658] docs.makina.finance/contracts/security — no match: The provided text is a summary page listing audit reports but does not contain a detailed scope section with contract names or file paths. Only high-level project names like 'Makina-Core' and 'Makina-Periphery' are mentioned, which are not specific contract names.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026 | RoycoAccountant | unmatched — not counted | — | listed in scope and findings | no |
| hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026 | RoycoVaultTranche | unmatched — not counted | — | listed in findings | no |
| hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026 | AaveV3_JT_Kernel | unmatched — not counted | — | listed in findings | no |
| hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026 | RoycoKernel | unmatched — not counted | — | listed in findings | no |
| hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026 | ERC4626_ST_Kernel | unmatched — not counted | — | listed in findings | no |
| hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 | RoycoAccountant | unmatched — not counted | — | listed in scope and findings | no |
| hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 | RoycoKernel | unmatched — not counted | — | listed in scope and findings | no |
| hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 | MaplePoolV2_ST_JT_ExitSharePriceToChainlinkOracle_Kernel | unmatched — not counted | — | finding ROYCO3-13 | no |
| hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 | RoycoVaultTranche | unmatched — not counted | — | finding ROYCO3-3 | no |
| hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 | AdaptiveCurveYDM_V1 | unmatched — not counted | — | finding ROYCO3-9 | no |
| hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026 | AdaptiveCurveYDM_V2 | unmatched — not counted | — | finding ROYCO3-9 | no |
| hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026 | RoycoEntryPoint | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x63da12...f2581b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026 | MaplePoolV2_ST_JT_ExitSharePriceToChainlinkOracle_Kernel | unmatched — not counted | — | Finding ROYCO4-2 path | no |
| hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026 | Identical_ERC20_ST_JT_ChainlinkToAdminOracle_SoulBoundTrancheShares_Kernel | unmatched — not counted | — | Finding ROYCO4-4 path | no |
| hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026 | RoycoKernel | unmatched — not counted | — | Finding ROYCO4-11 path | no |
| hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026 | RoycoAccountant | unmatched — not counted | — | Finding ROYCO4-8 path | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | UpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | VaultProxy | own proxy deployment | VaultProxy (proxy) (selected) `0xcd9f59...0d2a32` — deployed 2026-01-06 17:11:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteAsyncVaultImpl | own proxy deployment | VaultProxy (proxy) (selected) `0xcd9f59...0d2a32` — deployed 2026-01-06 17:11:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteBridgedVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IAllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteBridgedAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteTokenizedVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IStrategyTemplate | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IUpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IVaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AccessControlLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AsyncVaultHelperLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Conversion | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | StateInitLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | StateSetterLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteAsyncVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcretePredepositVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Time | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | TwoWayFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | UserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IBaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IPredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IUserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | BaseStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | MultisigStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PeripheryRolesLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PositionAccountingLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PositionAccountingStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PredepostVaultOAppStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | SimpleStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ShareDistributor | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | MultisigStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd3f8ed...7a6c2d` — deployed 2026-01-06 17:20:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | SimpleStrategy | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | UpgradeableVault | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteFactory | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | VaultProxy | own proxy deployment | VaultProxy (proxy) (selected) `0xcd9f59...0d2a32` — deployed 2026-01-06 17:11:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Conversion | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | StateSetterLib | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Time | unmatched — not counted | — | listed in scope | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | AllocateModule | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 77 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: unique_name=4

Zero-match audit list:

- [11653] hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026
- [11654] hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026
- [11658] docs.makina.finance/contracts/security

Fork inheritance lineage and inherited audits are included when available.
