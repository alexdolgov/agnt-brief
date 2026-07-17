# Agentic Audit Brief: wefi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: wefi (`wefi`)
- Website: [https://wefi.xyz](https://wefi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: boba, linea, polygon
- Contract surface: 4 unique implementations (4 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $499,369.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for wefi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc7f2720aafc991abbad66651e28a40711262478b`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 4 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
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
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1704c99278c3e5a91afb117301ea61b003aa650` | ⚠️ Unaudited |
| WeFi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xffa188493c15dfaf2c206c97d8633377847b6a52` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03ad1bcc7499d49b66c33c9bd5ac9050d2f6ce50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-396611 | `0xc7f2720aafc991abbad66651e28a40711262478b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Paxo-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Paxo-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Paxo Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/Paxo%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit](https://docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14123] PeckShield-Audit-Report-Paxo-v1.0.pdf — no match: Audit report for Paxo Protocol. Scope includes CErc20, Comptroller, and CToken contracts. Audit date is February 16, 2023.
- [14124] Paxo Smart Contract Audit Report - QuillAudits.pdf — no match: Only one contract name (PToken) extracted from findings; no explicit scope section listing contracts.
- [14125] docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit — no match: The provided text is a title fragment and does not contain any contract names, scope section, or audit date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Paxo-v1.0.pdf | CErc20 | unmatched — not counted | — | Target in finding PVE-001, PVE-004, and mentioned in code snippets | no |
| PeckShield-Audit-Report-Paxo-v1.0.pdf | Comptroller | unmatched — not counted | — | Target in finding PVE-002, PVE-004, and mentioned in code snippets | no |
| PeckShield-Audit-Report-Paxo-v1.0.pdf | CToken | unmatched — not counted | — | Target in finding PVE-003, and mentioned in code snippets | no |
| Paxo Smart Contract Audit Report - QuillAudits.pdf | PToken | unmatched — not counted | — | mentioned in findings as PToken.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [14123] PeckShield-Audit-Report-Paxo-v1.0.pdf
- [14124] Paxo Smart Contract Audit Report - QuillAudits.pdf
- [14125] docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit

Fork inheritance lineage and inherited audits are included when available.
