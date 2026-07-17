# Agentic Audit Brief: Swych Perpetual

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Swych Perpetual (`swych-perpetual`)
- Website: [https://swych.finance/](https://swych.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $144,365.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Swych Perpetual in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-171063 | `0x00e0a3f755f88c7ac755949742bd0d1c0286b756` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-171064 | `0x9334e37fad7c41cd6c9565bff3a97ce31cee52a3` | ⚠️ Unaudited |

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
| [Swych-Token-Audit-Report-031623.pdf (also discovered via alternate URL)](https://fairyproof.com/doc/Swych-Token-Audit-Report-031623.pdf) | Fairyproof | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Manual audit seed](https://www.fairyproof.com/report/Swych) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Swych-Perpetual-Contract-Audit-Report-100723.pdf](https://www.fairyproof.com/doc/Swych-Perpetual-Contract-Audit-Report-100723.pdf) | Fairyproof | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21367] Swych-Token-Audit-Report-031623.pdf — no match: Audit report for Swych Token project. Scope includes Swych.sol, sSwych.sol, and three interface files. Audit date is March 16, 2023.
- [24517] Manual audit seed — no match: Only one contract file Swych.sol is mentioned in the scope section.
- [24519] Swych-Perpetual-Contract-Audit-Report-100723.pdf — no match: Audit report for Swych Finance Perpetual Contract. Scope includes all files in the contracts directory except mock/*.sol, orders/OrderManagerV2.sol, and pool/PoolV2.sol. The audit date is the end date (October 5, 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Swych-Token-Audit-Report-031623.pdf | Swych | unmatched — not counted | — | listed in scope table and file listing | no |
| Swych-Token-Audit-Report-031623.pdf | sSwych | unmatched — not counted | — | listed in scope table and file listing | no |
| Swych-Token-Audit-Report-031623.pdf | IDEXFactory | unmatched — not counted | — | listed in file listing | no |
| Swych-Token-Audit-Report-031623.pdf | IDEXPair | unmatched — not counted | — | listed in file listing | no |
| Swych-Token-Audit-Report-031623.pdf | IDEXRouter | unmatched — not counted | — | listed in file listing | no |
| Manual audit seed | Swych | unmatched — not counted | — | listed in scope with SHA-256 hash | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | PoolErrors | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | SLToken | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | ETHUnwrapper | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | FeeDistributor | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | OrderManager | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | PoolHook | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | MockWETH9 | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | MockPriceOracle | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | PositionUtils | unmatched — not counted | — | listed in scope | no |
| Swych-Perpetual-Contract-Audit-Report-100723.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [21367] Swych-Token-Audit-Report-031623.pdf
- [24517] Manual audit seed
- [24519] Swych-Perpetual-Contract-Audit-Report-100723.pdf

Fork inheritance lineage and inherited audits are included when available.
