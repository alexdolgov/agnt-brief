# Agentic Audit Brief: Saddle Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Saddle Finance (`saddle-finance`)
- Website: [https://www.saddle.finance/](https://www.saddle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $735,649.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Saddle Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x3f8e52...5626ae`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253448 | `0x3f8e52...5626ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [10-29-2020_Certik.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/10-29-2020_Certik.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [www.openzeppelin.com/news/saddle-contracts-audit](https://www.openzeppelin.com/news/saddle-contracts-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [12-09-2020_Quantstamp.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/12-09-2020_Quantstamp.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13800] 10-29-2020_Certik.pdf — no match: Scope table lists 8 contracts with file paths. Audit date from cover page.
- [13801] www.openzeppelin.com/news/saddle-contracts-audit — no match: Scope explicitly includes contracts inside /contracts folder, excluding helper and interfaces. All named contracts are within that folder.
- [13802] 12-09-2020_Quantstamp.pdf — no match: All contracts listed in the file signatures appendix and mentioned in findings are included. The audit date is from the report header: 'December 10th 2020'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 10-29-2020_Certik.pdf | Allowlist | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | CERC20 | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | StakeableTokenWrapper | unmatched — not counted | — | listed in scope table | no |
| www.openzeppelin.com/news/saddle-contracts-audit | Swap | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/saddle-contracts-audit | SwapUtils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/saddle-contracts-audit | Allowlist | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | LPToken | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | OwnerPausable | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | CERC20 | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | CERC20Utils | unmatched — not counted | — | mentioned in findings | no |
| 12-09-2020_Quantstamp.pdf | Allowlist | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | CERC20 | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | LPToken | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | StakeableTokenWrapper | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | Swap | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | SwapUtils | unmatched — not counted | — | listed in scope table and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [13800] 10-29-2020_Certik.pdf
- [13801] www.openzeppelin.com/news/saddle-contracts-audit
- [13802] 12-09-2020_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
