# Agentic Audit Brief: Swapscanner

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Swapscanner (`swapscanner`)
- Website: [https://swapscanner.io/](https://swapscanner.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kaia
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,083,259.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Swapscanner in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x000000...52dc7e`, chain 8217)
- UnnamedContract (`0x999999...ac80e9`, chain 8217)

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
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 3 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393546 | `0x000000...52dc7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | `0x888888...28d5f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393547 | `0x999999...ac80e9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf](https://2552220674-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FB0n61krC2LiDSllARDiL%2Fuploads%2Fd1qZS2rjUPCnHg4A17dJ%2F%5BCertiK%20AUDIT%5DSwapscanner_2023.04.06..pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2563] spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf — no match: Extracted 18 contract names from the audit scope table. Audit date found on cover page and executive summary: 'Verified on Apr 6th, 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | CNStakedKLAYV1 | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | CNStakedKLAYV2 | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | FeeCalculator | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | ProxyStakedKLAY | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | ProxyStakedKLAYUnstakeable | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | CNStakingInterface | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | CNStakingV1Interface | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | CNStakingV2Interface | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | IProxyStakedKLAY | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | IProxyStakedKLAYClaimCheck | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | EtherStrings | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | Fonts | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | SharesMath | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | TimestampStrings | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | ERC20ProgrammaticBalance | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | ERC20ProgrammaticBalanceStats | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | ERC20VotesCustomBalance | unmatched — not counted | — | listed in audit scope table | no |
| spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf | ProxyStakedKLAYClaimCheck | unmatched — not counted | — | listed in audit scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2563] spaces/B0n61krC2LiDSllARDiL/uploads/d1qZS2rjUPCnHg4A17dJ/[CertiK AUDIT]Swapscanner_2023.04.06..pdf

Fork inheritance lineage and inherited audits are included when available.
