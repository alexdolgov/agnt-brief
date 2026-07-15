# Agentic Audit Brief: SYNO Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SYNO Finance (`syno-finance`)
- Website: [https://syno.finance/](https://syno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism
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
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
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
| AggregatorV3SynonymPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e0cbe...2f07f4` | ⚠️ Unaudited |
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6510d7...087631` | ⚠️ Unaudited |
| ChainedPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0671fe...5eda58` | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257823 | `0x6e0e8c...cf4d04` | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00187b...742c3a` | ⚠️ Unaudited |
| CommonOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f81d...4d9285` | ⚠️ Unaudited |
| Hub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c01ce...858509` | ⚠️ Unaudited |
| HubAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c59ad...492649` | ⚠️ Unaudited |
| HubHelperViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a4740...f3f0d2` | ⚠️ Unaudited |
| HubOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fc4a...c4ae12` | ⚠️ Unaudited |
| HubPriceUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01056a...1d56af` | ⚠️ Unaudited |
| HubStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47e96f...f12f36` | ⚠️ Unaudited |
| InterestLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f15c...f40f71` | ⚠️ Unaudited |
| LiquidationCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76e766...4dbcf3` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f578c...8f6aba` | ⚠️ Unaudited |
| LiquidatorFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1849cc...b1a3de` | ⚠️ Unaudited |
| MigrationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08913a...4772dc` | ⚠️ Unaudited |
| MoneyMarketSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0d5d40...a1eb1c` | ⚠️ Unaudited |
| PiecewiseInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x099c0e...cb202c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33dd40...d0e84b` | ⚠️ Unaudited |
| PythSynonymPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48a7cb...9b82e0` | ⚠️ Unaudited |
| rCT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe29578...f02443` | ⚠️ Unaudited |
| RewardAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2f81d5...f3be61` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02dffe...3fa40d` | ⚠️ Unaudited |
| Spoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb913...4d49c3` | ⚠️ Unaudited |
| Spoke | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257827 | `0xc2ed21...30a246` | ⚠️ Unaudited |
| Spoke | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257828 | `0xdb4b82...96887d` | ⚠️ Unaudited |
| SpokeAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ad4b...19bf2a` | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x350e13...35312d` | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257829 | `0xe29578...f02443` | ⚠️ Unaudited |
| sSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0db592...408bbc` | ⚠️ Unaudited |
| SSynoSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x047dee...673408` | ⚠️ Unaudited |
| SYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14ca27...40075e` | ⚠️ Unaudited |
| SynoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3008ba...d7a387` | ⚠️ Unaudited |
| SynonymPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x091fa3...76176e` | ⚠️ Unaudited |
| TokenBridgeUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ad785...7475fa` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x67de83...0c2aaa` | ⚠️ Unaudited |
| tSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc2ed21...30a246` | ⚠️ Unaudited |
| TunnelMessageBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x411ac3...d7f0c5` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03523d...3596df` | ⚠️ Unaudited |
| vlSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1380a5...69e44f` | ⚠️ Unaudited |
| VlSynoSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d7720...66bd13` | ⚠️ Unaudited |
| WormholeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe291a3...aadf70` | ⚠️ Unaudited |
| WormholeTunnel | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03e4c6...766f90` | ⚠️ Unaudited |
| WormholeTunnel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-257818 | `0x54c767...a14599` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257821 | `0x67de83...0c2aaa` | ❓ Unverified |

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
