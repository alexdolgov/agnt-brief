# Agentic Audit Brief: Native

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Native (`native`)
- Website: [https://native.org](https://native.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $49,087,004.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Native. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across arbitrum, base, bsc, ethereum. Structural roles: 8 supporting, 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: supporting (8), core (4)
- Contract kinds: contract (12)
- Detected standards: ownable (12), ownable2step (12), multicall (8), pausable (8)
- Frameworks: openzeppelin (12), permit2 (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 12; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248517 | `0xe3d41d...f5f2ef` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248522 | `0xba8db0...4cc05d` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-248524 | `0x74a4cd...4a1367` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-248520 | `0xba1cf8...5eff09` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248515 | `0x8a2ddc...eb2a00` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248516 | `0xa540ec...854f22` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248521 | `0x0f9f23...52d2cf` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248523 | `0xf064b0...28a968` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-248525 | `0xaec634...a5f576` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-248526 | `0xd54772...78dcb8` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-248518 | `0x0fc85a...ae3eab` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-248519 | `0x7d1c48...c3341b` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf (also discovered via alternate URL)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FLeVxGNxqMaI9b0Jtikux%2FNative_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf?alt=media) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2F4AzmcJJ2mjjuznQA30nS%2F2025.06.18%20-%20Final%20-%20native%20Private%20Bug%20Bounty%20Audit%20Report.pdf?alt=media) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf (also discovered via alternate URL)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FBIa5rllzsBWJ3y7fGicH%2FQuantstamp-Audit-Report-Native-V2.pdf?alt=media) | Quantstamp | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2Fy74TpGvBHzpRiakXs7wy%2FNative%20Audit%20-%20Halborn.pdf?alt=media) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf](https://2554447728-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1KSTkRlEw1XexgySFans%2Fuploads%2FWCaQWlFu2OvUPPhd1ayY%2FVeridise.pdf) | Veridise | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf](https://2554447728-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1KSTkRlEw1XexgySFans%2Fuploads%2Fxduwjo5uN8PMjy7lz3UL%2FSalus.pdf) | Salus | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [nat-001.pdf](https://symbolic.software/pdf/nat-001.pdf) | Symbolic Software | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b](https://omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf](https://2236132028-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FpSkHM5aAd9BYFQOyJU1B%2F2025.06.18%20-%20Final%20-%20native%20Private%20Bug%20Bounty%20Audit%20Report.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20856] spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf — no match: Only one contract in scope: PendleNativeLPSY. Audit date from delivery date.
- [20857] spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf — no match: Scope section explicitly lists 8 files. Audit date is May 23-May 29, 2025, so end date is May 29.
- [20858] spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf — no match: Scope files explicitly listed in report; audit date is the final report date (2025-01-06).
- [20859] spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf — no match: Scope section explicitly lists 8 contracts with file paths. Audit date is the end date of the engagement period (March 8, 2024 - April 5, 2024).
- [20860] spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf — no match: Scope explicitly lists contracts/ (including libraries, Aqua, Compound) and four Native contracts. Additional contracts mentioned in findings are included.
- [20861] spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf — no match: All contracts listed in Appendix-1 Files in Scope. Audit date from 'Date Feb 09 2024' in header.
- [20862] nat-001.pdf — no match: All contracts listed in Audit Scope section (2.3) and Smart Contracts section (2.1.2) are included. Date from cover page.
- [20863] omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [20865] spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf — no match: Scope section explicitly lists 8 files. Audit date is May 23-May 29, 2025, so end date is 2025-05-29.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf | PendleNativeLPSY | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | CreditVault | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeLPToken | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRFQPool | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRouter | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | IQuote | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ExternalSwap | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | CreditVault | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | LPToken | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | NativeRFQPool | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | NativeRouter | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | TStorage | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ExternalSwapRouter | unmatched — not counted | — | mentioned in finding NATv2-14 | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | IQuote | unmatched — not counted | — | mentioned in finding NATv2-18 | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | NativeRouter | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaVaultLogic | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaVault | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | NativeRfqPool | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaLpToken | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | NativePoolFactory | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaVaultSignatureCheck | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | ChainlinkPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativeRfqPool | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativeRouter | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativePool | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativePoolFactory | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaVault | unmatched — not counted | — | listed in scope section 3.2 (contracts/Aqua/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaVaultLogic | unmatched — not counted | — | listed in scope section 3.2 (contracts/libraries/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaVaultStorage | unmatched — not counted | — | mentioned in finding V-AQU-VUL-008 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaLpToken | unmatched — not counted | — | mentioned in finding V-AQU-VUL-011 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | CToken | unmatched — not counted | — | listed in scope section 3.2 (contracts/Compound/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | BaseJumpRateModelV2 | unmatched — not counted | — | listed in scope section 3.2 (contracts/Compound/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | PriceOracle | unmatched — not counted | — | mentioned in finding V-AQU-VUL-008 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | Comptroller | unmatched — not counted | — | mentioned in finding V-AQU-VUL-002 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | NativeRouter | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | NativePoolFactory | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | NativeRfqPool | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | AquaLpToken | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | AquaVault | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | AquaVaultSignatureCheck | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | ChainlinkPriceOracle | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| nat-001.pdf | NativeRouter | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | ExternalSwapRouterUpgradeable | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | PeripheryPayments | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | NativePoolFactory | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | NativePool | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | NativePriceDecoupledLiquidityPool | unmatched — not counted | — | Listed in Audit Scope (High Priority). | no |
| nat-001.pdf | NativePMMLiquidityPool | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeLPRewards | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeTreasury | unmatched — not counted | — | Listed in Audit Scope (Lower Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeUniswapV2LiquidityPool | unmatched — not counted | — | Listed in Audit Scope (Lower Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeFixedPriceLiquidityPool | unmatched — not counted | — | Listed in Audit Scope (Lower Priority) and described in Liquidity Pool Contracts section. | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | BytesLib | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | ConstantSumPricer | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | CallbackValidation | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | FullMath | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | GenericERC20 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | LowGasSafeMath | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Multicall | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | NoDelegateCall | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Order | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Pool | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PoolFactory | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PoolDeployer | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PeripheryPayments | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PeripheryValidation | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PeripheryImmutableState | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Router | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Registry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | SafeCast | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | UniswapV2Pricer | unmatched — not counted | — | listed in scope table | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | CreditVault | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeLPToken | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRFQPool | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRouter | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | IQuote | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ExternalSwap | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 85 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: n/a

Zero-match audit list:

- [20856] spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf
- [20857] spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf
- [20858] spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf
- [20859] spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf
- [20860] spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf
- [20861] spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf
- [20862] nat-001.pdf
- [20863] omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b
- [20865] spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
