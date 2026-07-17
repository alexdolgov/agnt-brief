# Agentic Audit Brief: Polkastarter

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Polkastarter (`polkastarter`)
- Website: [https://polkastarter.com/#upcoming-projects](https://polkastarter.com/#upcoming-projects)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 8 unique implementations (10 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,314,341.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Polkastarter. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7e624fa0e1c4abfd309cc15719b7e2580887f570`, chain 56)
- PolkastarterToken (`0x83e6f1e41cdd28eaceb20cb649155049fac3d5aa`, chain 1)
- PolsStake (`0xc24a365a870821eb83fd216c9596edd89479d8d7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 8 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 10
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PolsStake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251547 | `0xc24a365a870821eb83fd216c9596edd89479d8d7` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DUMMY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e53a348dadff7e6ad8cd24d115544fc41502a6e` | ⚠️ Unaudited |
| PolkastarterDistributionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ff9e209e70ccbde820b75c51ece964ee165e04` | ⚠️ Unaudited |
| PolkastarterToken | token | project_anchor | own_supporting | 0 | ethereum | unit-251546 | `0x83e6f1e41cdd28eaceb20cb649155049fac3d5aa` | ⚠️ Unaudited |
| PolsStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd558675a8c8e1fd45002010bac970b115163de3a` | ⚠️ Unaudited |
| RandomSeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4c6fa38c9f6c19a640a673c7ea45b1e89101c5e7`; ethereum `0x4e1a49b194c3b1eb43b98f1b0fef091d0e069234`; ethereum `0xddfe278c54b6ee6b7d6f76866de3b732c52f2be3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-251548 | `0x7e624fa0e1c4abfd309cc15719b7e2580887f570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc24a365a870821eb83fd216c9596edd89479d8d7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [MythX_95814d21d1b04aad491b65fc.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/MythX_95814d21d1b04aad491b65fc.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8150] 38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf — matched: No reason recorded
- [8151] MythX_95814d21d1b04aad491b65fc.pdf — matched: Only one contract file (PolsStake_flat.sol) is analyzed; no explicit scope section but the main source file is clearly identified.
- [8152] PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf — no match: Only one contract file identified as main source file in the analysis.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf | PolsStake | own contract | PolsStake (selected) `0xc24a365a870821eb83fd216c9596edd89479d8d7` — deployed 2021-10-03 14:53:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MythX_95814d21d1b04aad491b65fc.pdf | PolsStake | own contract | PolsStake (selected) `0xc24a365a870821eb83fd216c9596edd89479d8d7` — deployed 2021-10-03 14:53:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf | PolsStake_flat | unmatched — not counted | — | Main source file in analysis summary | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x83e6f1e41cdd28eaceb20cb649155049fac3d5aa` | PolkastarterToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Zero-match audit list:

- [8152] PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf

Fork inheritance lineage and inherited audits are included when available.
