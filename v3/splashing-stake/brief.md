# Agentic Audit Brief: Splashing Stake

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Splashing Stake (`splashing-stake`)
- Website: [https://www.splashing.xyz/](https://www.splashing.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sei
- Contract surface: 12 unique implementations (22 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,908,799.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Splashing Stake in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 22
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x03cc83...e5f9f9`; sei `0x204d44...0b1d12`; sei `0x67dc9a...1cf093` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | sei | n/a | `0x0b7882...8d4433` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x0ddb96...3614c8`; sei `0x223745...5b701b`; sei `0xae30a9...bf9344` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3b093d...705cd1`; sei `0x97715b...1a3218` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sei | n/a | `0xfeeb53...f1a8f7` | ⚠️ Unaudited |
| OrderQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x0a4c54...e28ed2`; sei `0x8f62b4...31b54d`; sei `0xcd628b...cd8931` | ⚠️ Unaudited |
| OrderQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x4ed643...0ae090`; sei `0xdeba5c...e34198` | ⚠️ Unaudited |
| OrderQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 2 deployments: sei `0x88d7ff...c411fe`; sei `0xc45c86...1b4e64` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0x151669...f46bf4` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe04262...8f0d6d` | ⚠️ Unaudited |
| StakingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 2 deployments: sei `0x910d6a...3c4c9d`; sei `0xb54e9b...a7c50b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb4f549...adba49` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf](https://2818732251-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FniaC1zjJFz2QDJGHFkFf%2Fuploads%2FAWE0jZ4hBKIuXyRpFtSk%2FPeckShield-Audit-Report-SplashingStake-v1.0.pdf) | PeckShield | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [splashing_staking_report_final.pdf](https://2818732251-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FniaC1zjJFz2QDJGHFkFf%2Fuploads%2FAJEjFoJG6rYASsJ7LQGc%2Fsplashing_staking_report_final.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2313] spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf — no match: No reason recorded
- [28124] splashing_staking_report_final.pdf — no match: Audit report for Splashing Staking Contract. Scope includes Staking, StakingStorage, SpSei, RewardStorage, and OrderQueue contracts. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf | OrderQueue | unmatched — not counted | — | — | no |
| spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf | RewardStorage | unmatched — not counted | — | — | no |
| spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf | Staking | unmatched — not counted | — | — | no |
| spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf | StakingStorage | unmatched — not counted | — | — | no |
| splashing_staking_report_final.pdf | Staking | unmatched — not counted | — | listed in scope and findings | no |
| splashing_staking_report_final.pdf | StakingStorage | unmatched — not counted | — | listed in scope and findings | no |
| splashing_staking_report_final.pdf | SpSei | unmatched — not counted | — | listed in scope and findings | no |
| splashing_staking_report_final.pdf | RewardStorage | unmatched — not counted | — | mentioned in init function | no |
| splashing_staking_report_final.pdf | OrderQueue | unmatched — not counted | — | mentioned in init function | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2313] spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf
- [28124] splashing_staking_report_final.pdf

Fork inheritance lineage and inherited audits are included when available.
