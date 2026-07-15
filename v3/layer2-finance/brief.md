# Agentic Audit Brief: Layer2 Finance

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

- Project: Layer2 Finance (`layer2-finance`)
- Website: [https://layer2.finance](https://layer2.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $208,573.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Layer2 Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 5 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149296 | `0x11808d...e30836` | ⚠️ Unaudited |
| RollupChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149299 | `0xcf6659...0a1f2e` | ⚠️ Unaudited |
| StrategyCompoundEthLendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149298 | `0x61fc4d...8aea8d` | ⚠️ Unaudited |
| TransitionDisputer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149297 | `0x5d3c0f...7e007f` | ⚠️ Unaudited |
| TransitionEvaluator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149295 | `0x0762d3...381cb5` | ⚠️ Unaudited |

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
| [REP-Celer Layer2 Finance v2-2021-06-25.pdf](https://github.com/celer-network/layer2-finance-v2-contracts/blob/main/audit/REP-Celer%20Layer2%20Finance%20v2-2021-06-25.pdf) | REP | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24108] REP-Celer Layer2 Finance v2-2021-06-25.pdf — no match: Extracted 13 contracts from the scope table and findings locations. Audit date from delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | Registry | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | RollupChain | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | TransitionApplier1 | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | TransitionApplier2 | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | TransitionDisputer | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | TransitionEvaluator | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | ErrMsg | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | MerkleTree | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | Transitions | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | StrategyDummy | unmatched — not counted | — | listed in scope table | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | IStrategy | unmatched — not counted | — | mentioned in finding ISK-01 location | no |
| REP-Celer Layer2 Finance v2-2021-06-25.pdf | IWETH | unmatched — not counted | — | mentioned in finding IWE-01 location | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [24108] REP-Celer Layer2 Finance v2-2021-06-25.pdf

Fork inheritance lineage and inherited audits are included when available.
