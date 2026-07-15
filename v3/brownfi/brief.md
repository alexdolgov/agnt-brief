# Agentic Audit Brief: BrownFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: BrownFi (`brownfi`)
- Website: [https://brownfi.io/](https://brownfi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $154,056.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BrownFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| [skynet.certik.com/projects/brownfi](https://skynet.certik.com/projects/brownfi) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20BrownFi%20AMM%20Smartcontracts%20-%20v1.0.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12857] skynet.certik.com/projects/brownfi — no match: Only one contract file explicitly listed in the audit report's 'Audited Files/SHA256' section.
- [12858] Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf — no match: Extracted all contracts from the scope section (SHA256 file list) and findings. Note: BrownFiV1LiquidityMathLibrary is not in the SHA256 list but is mentioned as an affected file in finding 2.2.10, so it is included. Also, some interfaces appear in both repos (e.g., AggregatorV3Interface, IERC20) but are listed once per unique name.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/brownfi | BrownFiV2Pair | unmatched — not counted | — | listed in Audited Files/SHA256 section | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | PythPriceFeed | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IPyth | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | PythStructs | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IWETH | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1Router03 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1Router02 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IPythPriceFeed | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IERC20 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1Router01 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1Router03 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | Multicall2 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | FullMath | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | SafeMath | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1Library | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1Router02 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1Pair | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1Factory | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1Callee | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1Pair | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | IBrownFiV1ERC20 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1Factory | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | Math | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | UQ112x112 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1ERC20 | unmatched — not counted | — | listed in scope with SHA256 | no |
| Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf | BrownFiV1LiquidityMathLibrary | unmatched — not counted | — | mentioned in finding 2.2.10 as affected file | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [12857] skynet.certik.com/projects/brownfi
- [12858] Verichains Public Audit Report - BrownFi AMM Smartcontracts - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
