# Agentic Audit Brief: SuperEarn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SuperEarn (`superearn`)
- Website: [https://superearn.io/](https://superearn.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, kaia
- Contract surface: 51 unique implementations (53 raw deployments)
- Coverage basis: 10/32 confirmed own live verified implementations (31.3%); conservative 31.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,825,196.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SuperEarn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 41 contract row(s) across ethereum, kaia. Structural roles: 18 core, 15 unclassified, 7 supporting, 1 infra. 20 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 41
- Structural roles: core (18), unclassified (15), supporting (7), infra (1)
- Contract kinds: contract (37), unclassified (3), abstract (1)
- Detected standards: erc1967proxy (13), accesscontrol (2), erc165 (2)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (20), chainlink (3)
- Upgradeable-pattern rows: 20

## Fork Analysis

0 of 46 contracts are derived from known codebases. 46 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MultiMorphoDirectAssetsProvider (`0x13cee5...2f3785`, chain 1)
- MultiMorphoDirectAssetsProvider (`0xd49162...5b8fb5`, chain 1)
- PendlePTDiamond (`0x3311d2...6bfde8`, chain 1)
- PendlePTDiamond (`0x609c17...dd2387`, chain 1)
- PendlePTDiamond (`0xa5540e...58e295`, chain 1)
- PendleReUSDAssetsProvider (`0xdb0c13...71fb30`, chain 1)
- PendleSNUSDAssetsProviderV2 (`0x20e985...fc4adc`, chain 1)
- PendleUSDGAssetsProviderV2 (`0x2572e1...aedc40`, chain 1)
- StrategyMorphoV1Vault (`0x1f5b38...ef5a61`, chain 1)
- StrategyMorphoV2Vault (`0xa41432...8ea19d`, chain 1)
- StUSDSAssetsProvider (`0x84e63d...7a622c`, chain 1)
- TransparentUpgradeableProxy (`0x1c097d...7ec83c`, chain 1)
- TransparentUpgradeableProxy (`0x1d68a6...52d8de`, chain 1)
- TransparentUpgradeableProxy (`0x3e92a9...9becc7`, chain 1)
- TransparentUpgradeableProxy (`0x50519a...10f455`, chain 1)
- TransparentUpgradeableProxy (`0x72301d...724199`, chain 1)
- TransparentUpgradeableProxy (`0x8c82b2...faa3b2`, chain 1)
- TransparentUpgradeableProxy (`0x947ae1...2a59eb`, chain 1)
- TransparentUpgradeableProxy (`0xc693a8...c03f77`, chain 1)
- TransparentUpgradeableProxy (`0xcece82...496faa`, chain 1)
- TransparentUpgradeableProxy (`0xd064f8...faf929`, chain 1)
- TransparentUpgradeableProxy (`0xdcc82a...16a514`, chain 1)
- TransparentUpgradeableProxy (`0xe2c308...3b5ab4`, chain 1)
- TransparentUpgradeableProxy (`0xf74550...0525e8`, chain 1)
- UnnamedContract (`0x104562...90d575`, chain 8217)
- UnnamedContract (`0x1cfd5d...58f672`, chain 8217)
- UnnamedContract (`0x2e4e57...5bf5d6`, chain 8217)
- UnnamedContract (`0x3b37db...1fc95b`, chain 8217)
- UnnamedContract (`0x40fb0f...43cd0f`, chain 8217)
- UnnamedContract (`0x4bfc17...c2b021`, chain 8217)
- UnnamedContract (`0x4e4654...6f9a33`, chain 8217)
- UnnamedContract (`0x55ced8...c38f55`, chain 8217)
- UnnamedContract (`0x6090d8...5652bf`, chain 8217)
- UnnamedContract (`0x650a4c...d9e5f5`, chain 8217)
- UnnamedContract (`0x723d34...dbd8f3`, chain 8217)
- UnnamedContract (`0x743789...c2006c`, chain 8217)
- UnnamedContract (`0x7876a2...21dfda`, chain 8217)
- UnnamedContract (`0x8c82b2...faa3b2`, chain 8217)
- UnnamedContract (`0x8e53cd...58f200`, chain 8217)
- UnnamedContract (`0x8f19e6...385822`, chain 8217)
- UnnamedContract (`0xc090e8...5f2675`, chain 8217)
- UnnamedContract (`0xd8acff...569e68`, chain 8217)
- UnnamedContract (`0xea8e18...6ec786`, chain 8217)
- Vyper_contract (`0x0becde...2691fe`, chain 1)
- Vyper_contract (`0x7eec57...aa878b`, chain 1)
- Vyper_contract (`0x9e3e70...f70df2`, chain 1)

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (34 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/51 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/32 (31.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 51 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Deployed-live implementations: 51 of 51 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/32
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 51
- Raw deployments: 53
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 21.9% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 9 | 28.1% | 2026-04 |
| Spearbit | Tier 1 | 7 | 21.9% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetPriceConverter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393396 | `0x57b71d...870c20` | ✅ Audited |
| BridgeAccountant | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393417 | `0x40fb0f...43cd0f` | ✅ Audited |
| CrosschainAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393398 | `0xc090e8...5f2675` | ✅ Audited |
| RemoteVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393404 | `0x8c82b2...faa3b2` | ✅ Audited |
| StrategyMorphoV1Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393364 | `0x1f5b38...ef5a61` | ✅ Audited |
| SuperEarnMessageAgent | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393409 | `0x4afd6a...a1bd3e` | ✅ Audited |
| UniversalSwapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393402 | `0x91caae...6eb65d` | ✅ Audited |
| USDCToCUSDOSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393415 | `0xf74550...0525e8` | ✅ Audited |
| USDCToSNUSDCurveSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393406 | `0xdcc82a...16a514` | ✅ Audited |
| USDOKycedCA | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393400 | `0xc693a8...c03f77` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CooldownVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393408 | `0x1c097d...7ec83c` | ⚠️ Unaudited |
| CooldownVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393407 | `0x8e53cd...58f200` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393393 | `0x1d68a6...52d8de` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393394 | `0x3e92a9...9becc7` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393397 | `0x50519a...10f455` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393413 | `0x72301d...724199` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393395 | `0x947ae1...2a59eb` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393405 | `0xcece82...496faa` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393401 | `0xe2c308...3b5ab4` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393403 | `0xd064f8...faf929` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393363 | `0x13cee5...2f3785` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393372 | `0xd49162...5b8fb5` | ⚠️ Unaudited |
| PendlePTYearnFacet | unknown | project_anchor | own_supporting | 3 | ethereum | unit-393399 (3 proxies) | 3 deployments: ethereum `0x3311d2...6bfde8`; ethereum `0x609c17...dd2387`; ethereum `0xa5540e...58e295` | ⚠️ Unaudited |
| PendleReUSDAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393373 | `0xdb0c13...71fb30` | ⚠️ Unaudited |
| PendleSNUSDAssetsProviderV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393365 | `0x20e985...fc4adc` | ⚠️ Unaudited |
| PendleUSDGAssetsProviderV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393366 | `0x2572e1...aedc40` | ⚠️ Unaudited |
| StrategyMorphoV2Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393371 | `0xa41432...8ea19d` | ⚠️ Unaudited |
| StUSDSAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393369 | `0x84e63d...7a622c` | ⚠️ Unaudited |
| SuperEarnRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393410 | `0xd8acff...569e68` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393361 | `0x0becde...2691fe` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393368 | `0x7eec57...aa878b` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393370 | `0x9e3e70...f70df2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393374 | `0x104562...90d575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393375 | `0x1cfd5d...58f672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393376 | `0x2e4e57...5bf5d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393377 | `0x3b37db...1fc95b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393378 | `0x40fb0f...43cd0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393379 | `0x4bfc17...c2b021` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393380 | `0x4e4654...6f9a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393381 | `0x55ced8...c38f55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393382 | `0x6090d8...5652bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393383 | `0x650a4c...d9e5f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393384 | `0x723d34...dbd8f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393385 | `0x743789...c2006c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393386 | `0x7876a2...21dfda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393387 | `0x8c82b2...faa3b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393388 | `0x8e53cd...58f200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393389 | `0x8f19e6...385822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393390 | `0xc090e8...5f2675` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393391 | `0xd8acff...569e68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393392 | `0xea8e18...6ec786` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [superearn-audit-reports (GitHub directory)](https://github.com/superearn-io/superearn-audit-reports) | Spearbit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026.05.21-spearbit.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.05.21-spearbit.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 8 | 6 | 0 | 33 | high |
| [2026.04.28-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.04.28-certik.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2026.04.07-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.04.07-certik.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 9 | high |
| [2026.02.19-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.02.19-certik.pdf) | CertiK | Audit | 2026-02 | fresh | Direct | contract_name | matched | 9 | 6 | 0 | 15 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3925] superearn-audit-reports (GitHub directory) — no match: The provided text is a GitHub repository page listing PDF files, not the actual audit report content. No contract names or audit details are extractable.
- [11865] 2026.05.21-spearbit.pdf — matched: Extracted all contracts from the scope section (Section 2.1) and file paths. Audit date from cover page.
- [11866] 2026.04.28-certik.pdf — matched: Audit scope explicitly lists CustomVault.sol and CustomYearnStrategy.sol. Audit date is 'Apr 27th, 2026' from cover page.
- [11867] 2026.04.07-certik.pdf — matched: Extracted 12 contract names from scope and findings. Audit date from cover page: 'CertiK Assessed on Apr 7th, 2026' and final report published on 04/07/2026.
- [11868] 2026.02.19-certik.pdf — matched: Extracted contract names from the audit scope section (Appendix), file paths in findings, and the list of upgradeable contracts in SUA-47. The audit date is from the cover page: 'CertiK Assessed on Feb 19th, 2026' and the timeline: 'Final report published on 02/19/2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026.05.21-spearbit.pdf | BaseCooldownStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | CooldownVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1c097d...7ec83c` — deployed 2026-04-02 09:42:35+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x4e4654...6f9a33` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8e53cd...58f200` — deployed 2025-12-04 10:11:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.05.21-spearbit.pdf | CooldownVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | HealthCheck | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | StrategyERC7540Vault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | StrategyMorphoV1Vault | own contract | StrategyMorphoV1Vault (selected) `0x1f5b38...ef5a61` — deployed 2026-03-05 10:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | IBaseFeeOracle | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICooldownVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IStrategyCooldownAware | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ISuperEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SuperEarnRouter | ambiguous — not counted | UnnamedContract (alternative) `0x743789...c2006c` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8acff...569e68` — deployed 2025-12-04 10:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.05.21-spearbit.pdf | SuperEarnAccessControl | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | BridgeAccountant | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40fb0f...43cd0f` — deployed 2025-12-04 11:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | BridgeQueue | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | CrosschainAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc090e8...5f2675` — deployed 2025-12-04 11:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | SuperEarnMessageAgent | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4afd6a...a1bd3e` — deployed 2025-12-04 11:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | OriginVault | own contract | UnnamedContract (selected) `0x3b37db...1fc95b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2...faa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | SuperearnERC7540 | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IBridgeAccountant | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICrosschainAdapter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICrosschainVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IOriginVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRemoteVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRunespearAgent | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRunespearReceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ISwapQuoter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | AssetPriceConverter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x57b71d...870c20` — deployed 2025-12-04 11:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | OraklAssetPriceConverter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | VaultStateHelper | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearLib | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearProtocol | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearReceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearSender | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearTransceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SuperEarnV2Protocol | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SwapQuoter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | UniversalSwapRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x91caae...6eb65d` — deployed 2026-02-12 09:34:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.28-certik.pdf | CustomVault | own contract | UnnamedContract (selected) `0x7876a2...21dfda` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.28-certik.pdf | CustomYearnStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.04.07-certik.pdf | CustomStrategy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xcece82...496faa` — deployed 2026-04-22 11:02:47+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x947ae1...2a59eb` — deployed 2026-05-04 07:50:59+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x72301d...724199` — deployed 2026-04-08 11:53:23+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e92a9...9becc7` — deployed 2026-05-04 11:07:47+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2c308...3b5ab4` — deployed 2026-05-05 17:48:35+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x50519a...10f455` — deployed 2026-04-02 13:51:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | PendlePTDiamond | ambiguous — not counted | PendlePTDiamond (proxy) (alternative) `0x3311d2...6bfde8` — deployed 2026-04-02 11:09:59+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0xa5540e...58e295` — deployed 2026-04-02 11:10:11+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0x609c17...dd2387` — deployed 2026-04-02 11:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | USDTToSUSDeSwapper | unmatched — not counted | — | Listed in scope and findings (SA2-56, SA2-57) | no |
| 2026.04.07-certik.pdf | USDCToSNUSDCurveSwapper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdcc82a...16a514` — deployed 2026-04-02 11:07:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | USDCToCUSDOSwapper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf74550...0525e8` — deployed 2026-04-02 11:07:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | PendlePTCoreFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57, SA2-10, SA2-06, SA2-11, SA2-12, SA2-14) | no |
| 2026.04.07-certik.pdf | PendlePTCooldownFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | PendlePTExecutionFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | PendlePTYearnFacet | ambiguous — not counted | PendlePTDiamond (proxy) (alternative) `0x3311d2...6bfde8` — deployed 2026-04-02 11:09:59+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0xa5540e...58e295` — deployed 2026-04-02 11:10:11+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0x609c17...dd2387` — deployed 2026-04-02 11:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | DiamondCutFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2...faa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | PendlePTEmergencyExecutionFacet | unmatched — not counted | — | Mentioned as outside scope but reviewed in Review Notes | no |
| 2026.02.19-certik.pdf | CooldownVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1c097d...7ec83c` — deployed 2026-04-02 09:42:35+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x4e4654...6f9a33` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8e53cd...58f200` — deployed 2025-12-04 10:11:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.02.19-certik.pdf | OriginVault | own contract | UnnamedContract (selected) `0x3b37db...1fc95b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | OriginVaultBase | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-48) | no |
| 2026.02.19-certik.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2...faa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | CrosschainAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc090e8...5f2675` — deployed 2025-12-04 11:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | SuperEarnAccessControl | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47) | no |
| 2026.02.19-certik.pdf | BridgeAccountant | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40fb0f...43cd0f` — deployed 2025-12-04 11:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | SuperEarnMessageAgent | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4afd6a...a1bd3e` — deployed 2025-12-04 11:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | AssetPriceConverter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x57b71d...870c20` — deployed 2025-12-04 11:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | OraklAssetPriceConverter | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-48) | no |
| 2026.02.19-certik.pdf | USDOKycedCA | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc693a8...c03f77` — deployed 2025-12-30 08:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | RunespearReceiver | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-25, SUA-29) | no |
| 2026.02.19-certik.pdf | RunespearSender | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-30) | no |
| 2026.02.19-certik.pdf | RunespearTransceiver | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-25) | no |
| 2026.02.19-certik.pdf | HealthCheck | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-08) | no |
| 2026.02.19-certik.pdf | BaseCooldownStrategy | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-23, SUA-26) | no |
| 2026.02.19-certik.pdf | StrategyOriginVault | own contract | UnnamedContract (selected) `0x650a4c...d9e5f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | StrategyUSDOExpressV2 | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-23, SUA-41) | no |
| 2026.02.19-certik.pdf | StrategyMorphoV1Vault | own contract | StrategyMorphoV1Vault (selected) `0x1f5b38...ef5a61` — deployed 2026-03-05 10:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | BridgeQueue | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-12, SUA-15) | no |
| 2026.02.19-certik.pdf | RunespearLib | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-25, SUA-30) | no |
| 2026.02.19-certik.pdf | VaultStateHelper | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-55) | no |
| 2026.02.19-certik.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-24) | no |
| 2026.02.19-certik.pdf | TimelockExecutionLib | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-31) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1c097d...7ec83c` | CooldownVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e53cd...58f200` | CooldownVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d68a6...52d8de` | CrosschainKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e92a9...9becc7` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50519a...10f455` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72301d...724199` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947ae1...2a59eb` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcece82...496faa` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2c308...3b5ab4` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd064f8...faf929` | LightKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13cee5...2f3785` | MultiMorphoDirectAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd49162...5b8fb5` | MultiMorphoDirectAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa41432...8ea19d` | StrategyMorphoV2Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84e63d...7a622c` | StUSDSAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd8acff...569e68` | SuperEarnRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0becde...2691fe` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7eec57...aa878b` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e3e70...f70df2` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (15 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 52 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=21

Zero-match audit list:

- [3925] superearn-audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
