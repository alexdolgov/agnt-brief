# Agentic Audit Brief: Templar Protocol

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

- Project: Templar Protocol (`templar-protocol`)
- Website: [https://www.templarfi.org/](https://www.templarfi.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $34,455,506.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Templar Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
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
| [Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf](https://github.com/Templar-Protocol/contracts/blob/dev/audits/2025-07-01/guvenkaya/Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [250701_Defense_by_Thesis_Templar_Smart_Contracts_Final_Security.pdf](https://github.com/Templar-Protocol/contracts/blob/dev/audits/2025-07-01/thesis_defense/250701_Defense_by_Thesis_Templar_Smart_Contracts_Final_Security.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13998] Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf — no match: Extracted 25 contract/module names from the scope file listing. Audit date is the end date of the engagement (14th April 2025).
- [13999] 250701_Defense_by_Thesis_Templar_Smart_Contracts_Final_Security.pdf — no match: The report does not contain a clear scope section listing specific contract names or file paths. The repository URL and commit hashes are provided, but no individual contract files are enumerated. The findings reference file paths like 'contract/market/src/impl_helper.rs' and 'common/src/borrow.rs', but these are not explicitly listed as in-scope contracts. The audit date is taken from the final report date 'July 1st, 2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Accumulator | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Asset | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Borrow | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | ChunkedAppendOnlyList | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Event | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | InterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Lib | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketBalanceOracleConfiguration | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketConfiguration | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketExternal | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketImplementation | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketModule | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Number | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | OraclePyth | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | StaticYield | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | Supply | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | TimeChunk | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketContractLib | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketContractFTReceiver | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketContractHelper | unmatched — not counted | — | listed in scope | no |
| Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf | MarketContractExternal | unmatched — not counted | — | listed in scope | no |

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
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [13998] Templar-NEAR-Smart-Contract-Security-Review-Final-Report.pdf
- [13999] 250701_Defense_by_Thesis_Templar_Smart_Contracts_Final_Security.pdf

Fork inheritance lineage and inherited audits are included when available.
