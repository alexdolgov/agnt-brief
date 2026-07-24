# Agentic Audit Brief: Splashing Stake

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Splashing Stake (`splashing-stake`)
- Website: [https://www.splashing.xyz/](https://www.splashing.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x03cc83d643ff38a4c16ddd3cf647515c76e5f9f9`; sei `0x204d4482a4f68b931bed1adbbec6aaa1240b1d12`; sei `0x67dc9ae3e7c66ca119a0c9cba5e600d26d1cf093` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | sei | n/a | `0x0b7882049aa9c2f9255dc87c01d4e230248d4433` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x0ddb9616b8e436510fcdf14ce0b083f2503614c8`; sei `0x22374584e93172883c737aa00d4e6d8b1e5b701b`; sei `0xae30a926e246a469bc76ebe33374f5d116bf9344` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3b093d6b9b113f58716c1539481713aec9705cd1`; sei `0x97715b813920d745f387e9d506979b31111a3218` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sei | n/a | `0xfeeb5318cc97f219ef7050d75d325e4ec1f1a8f7` | ⚠️ Unaudited |
| OrderQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x0a4c5483111a44fc448111a552d2f87139e28ed2`; sei `0x8f62b43cdcb7bf0b15e1853180e35701f531b54d`; sei `0xcd628bec9d642fedb44021e86a358a8253cd8931` | ⚠️ Unaudited |
| OrderQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x4ed6431003e197121629936068c15c1bca0ae090`; sei `0xdeba5c59946af256d21c7d4f8e49c0c91ae34198` | ⚠️ Unaudited |
| OrderQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 2 deployments: sei `0x88d7fff259ffac098c66d0d92284a3dfb2c411fe`; sei `0xc45c86a1187f04e55c6ecc432446a241851b4e64` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0x151669b501b561a52ad95574603ad52546f46bf4` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe042621757737f0d5654a33d24343af7268f0d6d` | ⚠️ Unaudited |
| StakingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 2 deployments: sei `0x910d6afa46a4729a4bda2e02ca8f24bdf73c4c9d`; sei `0xb54e9b07bb4e059d04cc924e57e9479d0ea7c50b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb4f54984896f035ea94787956cf526169badba49` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 15
- Live contracts: 0
- Unknown liveness contracts: 15
- Source-verified contracts: 12
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=10, source verified unclassified=2, unverified unclassified=3

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| sei | candidate review | ERC1967Proxy<br>`0x03cc83d643ff38a4c16ddd3cf647515c76e5f9f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0x0ddb9616b8e436510fcdf14ce0b083f2503614c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0x151669b501b561a52ad95574603ad52546f46bf4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0x204d4482a4f68b931bed1adbbec6aaa1240b1d12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0x3b093d6b9b113f58716c1539481713aec9705cd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0x8f62b43cdcb7bf0b15e1853180e35701f531b54d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0xae30a926e246a469bc76ebe33374f5d116bf9344` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0xcd628bec9d642fedb44021e86a358a8253cd8931` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0xdeba5c59946af256d21c7d4f8e49c0c91ae34198` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | candidate review | ERC1967Proxy<br>`0xfeeb5318cc97f219ef7050d75d325e4ec1f1a8f7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | source verified unclassified | OrderQueue<br>`0x0a4c5483111a44fc448111a552d2f87139e28ed2` | non_address_book | unknown | unknown | verified | n/a | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | source verified unclassified | OrderQueue<br>`0x4ed6431003e197121629936068c15c1bca0ae090` | non_address_book | unknown | unknown | verified | n/a | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | unverified unclassified | UnnamedContract<br>`0x22374584e93172883c737aa00d4e6d8b1e5b701b` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | unverified unclassified | UnnamedContract<br>`0x67dc9ae3e7c66ca119a0c9cba5e600d26d1cf093` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |
| sei | unverified unclassified | UnnamedContract<br>`0x97715b813920d745f387e9d506979b31111a3218` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf1bd106640d59197cdb3b6a24806e01543e79c` |

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
