# Agentic Audit Brief: SYNO Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SYNO Finance (`syno-finance`)
- Website: [https://syno.finance/](https://syno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, scroll
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $375,912.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for SYNO Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/45
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorV3SynonymPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e0cbe3860c54038efa91d80ce62ec82ca2f07f4` | ⚠️ Unaudited |
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6510d7705df7ad4923b9699a1af4c72894087631` | ⚠️ Unaudited |
| ChainedPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0671fef91a8ee34c1b5eb5e98fa90063105eda58` | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257823 | `0x6e0e8c78d7b894beff66ade8b27b089a53cf4d04` | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00187bac5bc1097c4e65b47da8978b3e1f742c3a` | ⚠️ Unaudited |
| CommonOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f81ddd95bb0689fa3f43c9128d01b7b54d9285` | ⚠️ Unaudited |
| Hub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c01cecf2c8fa6cf6cdedfe2568fdbbf62858509` | ⚠️ Unaudited |
| HubAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c59ad468dfac8528036c5a5b9c306ae13492649` | ⚠️ Unaudited |
| HubHelperViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a47405de652fce6b34d919e1bb06e5bfef3f0d2` | ⚠️ Unaudited |
| HubOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fc4a4856cf4fc41b4f39559f382f81d0c4ae12` | ⚠️ Unaudited |
| HubPriceUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01056ae89c53de4bbd6db29c0e9d9d08391d56af` | ⚠️ Unaudited |
| HubStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47e96ffedb40b1b4f721d5f56d91cf3a54f12f36` | ⚠️ Unaudited |
| InterestLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f15cbf4dc0f41d0d16a89abcbb01308ff40f71` | ⚠️ Unaudited |
| LiquidationCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76e766336068b0f699d24002c368a4891a4dbcf3` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f578c4bc4d4f43902f24feda90e430f778f6aba` | ⚠️ Unaudited |
| LiquidatorFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1849cc9ecfcaa09ba4279a283745c9f6a2b1a3de` | ⚠️ Unaudited |
| MigrationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08913a7dedf488ab91a9dbbe2fc03020484772dc` | ⚠️ Unaudited |
| MoneyMarketSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0d5d409afc67a2715f3e61968ff3b0e608a1eb1c` | ⚠️ Unaudited |
| PiecewiseInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x099c0e514129a94d26decba743ea293ebbcb202c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33dd4040ab48ffbf5b208909efe5ee301ed0e84b` | ⚠️ Unaudited |
| PythSynonymPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48a7cbc91354333eb1c0d54c3d2f149f9d9b82e0` | ⚠️ Unaudited |
| rCT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe29578c5aef73b045d0baabee52b223d5cf02443` | ⚠️ Unaudited |
| RewardAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2f81d55a3f306c11a640bad7ee0f051eaaf3be61` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02dffe40fafa4dcd8867240610c88619d93fa40d` | ⚠️ Unaudited |
| Spoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb91374624a5ec81ef205db379861b7154d49c3` | ⚠️ Unaudited |
| Spoke | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257827 | `0xc2ed21709d6d8d8ba24e9b1e8165604f6130a246` | ⚠️ Unaudited |
| Spoke | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257828 | `0xdb4b829d5596405023e7efbcfdb4ce156096887d` | ⚠️ Unaudited |
| SpokeAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ad4b3bb2f0a24515391377a69b7fb2a919bf2a` | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x350e13f38b0665f776545d83bc38d7ab1e35312d` | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257829 | `0xe29578c5aef73b045d0baabee52b223d5cf02443` | ⚠️ Unaudited |
| sSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0db592b2cc4b05cffa6224a4ee04c9d168408bbc` | ⚠️ Unaudited |
| SSynoSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x047deeb2fac901442a0e8535bb08f59390673408` | ⚠️ Unaudited |
| SYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14ca27a509397323d2d6c2f84b7abc65f240075e` | ⚠️ Unaudited |
| SynoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3008bae2e2e3d41d58710ff364d101d6dfd7a387` | ⚠️ Unaudited |
| SynonymPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x091fa3704f80f60cac654d15cf14e5c51a76176e` | ⚠️ Unaudited |
| TokenBridgeUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ad78518eef039d97fa6523c215bd7aded7475fa` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x67de8310f082cc3e7fffdd4e13d39312860c2aaa` | ⚠️ Unaudited |
| tSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc2ed21709d6d8d8ba24e9b1e8165604f6130a246` | ⚠️ Unaudited |
| TunnelMessageBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x411ac3fadf6f428efc40eabf5e85eba6ded7f0c5` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03523dcd92207880ff66ead9ee63c5000b3596df` | ⚠️ Unaudited |
| vlSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1380a59ce7adaf50d351f750a3fb4747a469e44f` | ⚠️ Unaudited |
| VlSynoSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d77203f67aac70450239dcb58bb962adf66bd13` | ⚠️ Unaudited |
| WormholeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe291a3a0466d2aa189f6c773701fdf391daadf70` | ⚠️ Unaudited |
| WormholeTunnel | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03e4c6bc38264f993759c09678ebceb91c766f90` | ⚠️ Unaudited |
| WormholeTunnel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-257818 | `0x54c767a5198fdca089112026285f333c0fa14599` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257821 | `0x67de8310f082cc3e7fffdd4e13d39312860c2aaa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Synonym-audit-report.pdf](https://raw.githubusercontent.com/runtimeverification/publications/main/reports/smart-contracts/Synonym-audit-report.pdf) | Runtime Verification | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21464] Synonym-audit-report.pdf — no match: All contracts listed in the Scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Synonym-audit-report.pdf | BaseInterestRate | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | LinearInterestRate | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | PiecewiseInterestRate | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Hub | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubHelperViews | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubInterestUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubPriceUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubState | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Spoke | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SpokeGetters | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SpokeState | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SpokeUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | LiquidationCalculator | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | TokenReceiverWithCCTP | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubSpokeEvents | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubSpokeStructs | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IAssetRegistry | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IERC20decimals | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IHub | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IHubPriceUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | InterestRateCalculator | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | ILiquidationCalculator | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Disclaimer | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Interest | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | DelegateAddress | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | rCT | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | RewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SYNO | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | TokenConverter | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | tSYNO | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | vlSyno | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 32 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21464] Synonym-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
