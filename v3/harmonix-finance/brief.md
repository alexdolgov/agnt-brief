# Agentic Audit Brief: Harmonix Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Harmonix Finance (`harmonix-finance`)
- Website: [https://app.harmonix.fi](https://app.harmonix.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, hyperliquid
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,180,091.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Harmonix Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, hyperliquid. Structural roles: 2 supporting, 1 infra, 1 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (2), infra (1), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x1368ee...eebc42`, chain 999)
- ERC1967Proxy (`0xfde5b0...8d725c`, chain 999)
- TransparentUpgradeableProxy (`0xf12f87...9b00e3`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hyperliquid | Tier 2 | 1 | 33.3% | 2025-05 |
| Zenith | Tier 2 | 1 | 33.3% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FundContract | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387221 | `0xfde5b0...8d725c` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-387222 | `0x1368ee...eebc42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | arbitrum | unit-387220 | `0xf12f87...9b00e3` | ⚠️ Unaudited |

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
| [Harmonix Finance - Zenith Audit Report.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Harmonix%20Finance%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [HarmonixFinance-Hyperliquid-Security-Review.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/HarmonixFinance-Hyperliquid-Security-Review.pdf) | Hyperliquid | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [Verichains Public Report - HarmonixFinance.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20HarmonixFinance.pdf) | Verichains | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Verichains Public Report - Kelp Delta.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20Kelp%20Delta.pdf) | Verichains | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14729] Harmonix Finance - Zenith Audit Report.pdf — matched: Scope section explicitly lists three files: balanceContract.sol, fundContract.sol, fundStorage.sol. Audit dates: September 19 to September 24, 2025.
- [14730] HarmonixFinance-Hyperliquid-Security-Review.pdf — matched: Scope section explicitly lists three contracts: BalanceContract, FundContract, FundStorage. Audit date is 9 May 2025 from the cover page.
- [14731] Verichains Public Report - HarmonixFinance.pdf — no match: All contracts listed in the scope table (Section 1.2) are extracted. The audit date is from the cover page and executive summary.
- [14732] Verichains Public Report - Kelp Delta.pdf — no match: Extracted 9 contracts from scope table and findings. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Harmonix Finance - Zenith Audit Report.pdf | balanceContract | unmatched — not counted | — | listed in scope table | no |
| Harmonix Finance - Zenith Audit Report.pdf | fundContract | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xfde5b0...8d725c` — deployed 2025-06-25 17:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Harmonix Finance - Zenith Audit Report.pdf | fundStorage | unmatched — not counted | — | listed in scope table | no |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | BalanceContract | unmatched — not counted | — | listed in scope table | no |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | FundContract | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xfde5b0...8d725c` — deployed 2025-06-25 17:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | FundStorage | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | Aevo | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | CamelotLiquidity | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | CamelotSwap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | Uniswap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | PriceConsumer | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxAccessControl | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | BaseSwap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | FullMath | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | ShareMath | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxEthLiquidityStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxOptionsStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOynxUsdLiquidityStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | BaseRockOnyxOptionWheelVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxUSDTVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | BaseDeltaNeutralVault | unmatched — not counted | — | listed in scope table and mentioned in findings | no |
| Verichains Public Report - Kelp Delta.pdf | BaseSwapVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | BaseRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | PerpDexStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | KelpRestakingDeltaNeutralVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | KelpZircuitRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | Uniswap | unmatched — not counted | — | mentioned in finding 2.2.5 | no |
| Verichains Public Report - Kelp Delta.pdf | BaseSwapAggregator | unmatched — not counted | — | mentioned in finding 2.2.8 | no |
| Verichains Public Report - Kelp Delta.pdf | RockOnyxAccessControl | unmatched — not counted | — | mentioned in finding 2.2.14 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 29 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [14731] Verichains Public Report - HarmonixFinance.pdf
- [14732] Verichains Public Report - Kelp Delta.pdf

Fork inheritance lineage and inherited audits are included when available.
