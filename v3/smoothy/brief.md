# Agentic Audit Brief: Smoothy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Smoothy (`smoothy`)
- Website: [https://smoothy.finance/](https://smoothy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $487,549.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Smoothy in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa13c1a...8e4079`, chain 1)
- UnnamedContract (`0xe5859f...ac6e91`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 2 of 8 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ff708...0359f9` | ⚠️ Unaudited |
| MerkleVestor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4b5c2f...d04286` | ⚠️ Unaudited |
| SmoothyMasterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e6d3...1f06c2` | ⚠️ Unaudited |
| SMTYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbf776e...003283` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59c5ef...a8b9d3` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x59c5ef...a8b9d3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392582 | `0xa13c1a...8e4079` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392583 | `0xe5859f...ac6e91` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Smoothy-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Smoothy-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Smart Contract Security Audit Report - SmoothyV1.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20SmoothyV1.pdf) | yAudit | Audit | 2021-03 | stale | Direct | address | matched | 1 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21001] PeckShield-Audit-Report-Smoothy-v1.0.pdf — no match: The report explicitly states the target is 'SmoothyV1' and the audit date is February 15, 2021.
- [21002] Smart Contract Security Audit Report - SmoothyV1.pdf — matched: Extracted contracts from project structure and main contract address table. Also included contracts from code overview tables.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Smoothy-v1.0.pdf | SmoothyV1 | unmatched — not counted | — | Listed as target in findings (e.g., PVE-001, PVE-002) and described as the main contract audited. | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | Root | own contract | 0xe5859f… (selected) `0xe5859f...ac6e91` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - SmoothyV1.pdf | SmoothyV1 | unmatched — not counted | — | listed in scope and main contract address table | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | SMTYToken | unmatched — not counted | — | listed in scope and main contract address table (not yet deployed) | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | SmoothyMasterRoot | unmatched — not counted | — | listed in scope and main contract address table (not yet deployed) | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | SmoothyMasterV1 | unmatched — not counted | — | listed in scope and main contract address table (not yet deployed) | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | VotingEscrow | unmatched — not counted | — | listed in scope and main contract address table (not yet deployed) | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | VotingEscrowRoot | unmatched — not counted | — | listed in scope and main contract address table (not yet deployed) | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | UpgradeableOwnable | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | UpgradeableOwnableProxy | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | YERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | ReentrancyGuardPausable | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - SmoothyV1.pdf | SmoothyV1Full | unmatched — not counted | — | mentioned in code overview table for SmoothyV1Full | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: address=1

Zero-match audit list:

- [21001] PeckShield-Audit-Report-Smoothy-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
