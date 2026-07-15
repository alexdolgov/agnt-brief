# Agentic Audit Brief: 40 Acres

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: 40 Acres (`40-acres`)
- Website: [https://www.40acres.finance/](https://www.40acres.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $48,475,149.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for 40 Acres in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-119377 | `0x5122f5...623558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-119378 | `0x8ac5aa...a04dfe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view](https://drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view](https://drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view](https://drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view](https://drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view — no match: Extracted 17 contract names from the scope section listing files. Audit date from 'Date Audited: November3-November8,2025'.
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view — no match: Extracted 19 contract names from the scope section listing files. Audit date is the end of the range June 30 - July 3, 2025.
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view — no match: Scope explicitly lists 10 files; audit date range April 21-23, 2025, end date used.
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view — no match: Scope section explicitly lists 6 files. Audit date range March 27-31, 2025, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | FacetRegistry | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | FortyAcresPortfolioAccount | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | PortfolioFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XPharaohFacet | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XRexFacet | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IVoteModule | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IXLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IXVoter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LibDiamond | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LoanUtils | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | PharaohLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XPharaohLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | AccountConfigStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | CollateralStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | CommunityRewards | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | EntryPoint | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IReward | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IVotingEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanUtils | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanV2Native | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohLoanV2Native | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | Swapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | VaultV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | VeloLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | LoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | Swapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | Vault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | VeloLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IPool | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IVotingEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | Loan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | Vault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | VeloLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view

Fork inheritance lineage and inherited audits are included when available.
