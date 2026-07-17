# Agentic Audit Brief: Accountable

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Accountable (`accountable`)
- Website: [https://accountable.capital/](https://accountable.capital/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $404,307,089.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Accountable in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountableFixedTerm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120141 | `0x00e8fe8dc7e96dbc021b843ee8411f95c0890e4c` | ⚠️ Unaudited |
| AccountableOpenTerm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120149 | `0x616eca2310eb1a0bd620afbf916314f3702dd3b6` | ⚠️ Unaudited |
| AccountableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120143 | `0x1e05bedb3ea09a145bae551ec93b49385ba689da` | ⚠️ Unaudited |
| AsyncVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120151 | `0x859a15b7c2b4fd0641424342130f2b073a115dc4` | ⚠️ Unaudited |
| AtomicBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120146 | `0x35c7171db2bd8164a36c3ae93ef9d4fb4cc08777` | ⚠️ Unaudited |
| DVNPublisherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-120158 | `0x0a2a9ecf70e6fec00a53d3ec000ac97f260d9f86` | ⚠️ Unaudited |
| DVNPublisherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120144 | `0x24c27ea8965c70670857e9ec9f18e9eab7607c42` | ⚠️ Unaudited |
| EarlyExitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120155 | `0xc778f3a8bcdf9f8daee9d0e8508af83e90e9b1f9` | ⚠️ Unaudited |
| EarlyExitOpenTerm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120150 | `0x66d6c3f32676a31f1b2e14f6bf6da9fc8d8e819c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-120156 | `0x59b0b84371bb3261fad538c512efffc414cc1725` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120142 | `0x0d2c8f073c354e5b1306be1a31c36158bbfc225b` | ⚠️ Unaudited |
| FixedTermFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120145 | `0x2a7f22f81a3d301b8f0eaf4f09a78558c91fc69a` | ⚠️ Unaudited |
| GlobalRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-120157 | `0x6436e1f2edc981b69a3b0f396924cec01dc617af` | ⚠️ Unaudited |
| HelloAccountable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120152 | `0x9e224e411ee0d7f30d3643d2cc8bf05198d7b3b9` | ⚠️ Unaudited |
| HypernativePauseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120148 | `0x4e22a922002494e0f016e96289e946b9f32dcc07` | ⚠️ Unaudited |
| OpenTermFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120147 | `0x4927ce3402035b801a1beddc498b7fb2fe9ea181` | ⚠️ Unaudited |
| RewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120154 | `0xa0ae7ec6f93e55160f3f79840068549e8ca031ef` | ⚠️ Unaudited |
| YieldStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120153 | `0x9f1eb2be7b6a7e611c270bbdb0a3358786769518` | ⚠️ Unaudited |

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
| [Accountable_Cyfrin_2025-10-16.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FN3QdwjHBJzlR6pAaE0Df%2FAccountable_Cyfrin_2025-10-16.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Accountable_Cyfrin_FV_2025-10-16.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2Fyfhc5ZX1wP4SN63N3RNG%2FAccountable_Cyfrin_FV_2025-10-16.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Accountable_Quantstamp_2025-10-28.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FI1lzu3fVUD8alRDbl00g%2FAccountable_Quantstamp_2025-10-28.pdf) | Quantstamp | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Accountable_Cyfrin_2026-01-23.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FJH8JekBJPbpro4UZLYy8%2FAccountable_Cyfrin_2026-01-23.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Accountable_Cyfrin_pr50_2026-01-30.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FXRzqYVrIbUsdL6pomQzE%2FAccountable_Cyfrin_pr50_2026-01-30.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19392] Accountable_Cyfrin_2025-10-16.pdf — no match: All contracts listed in the 'Audit Scope' section of the report.
- [19393] Accountable_Cyfrin_FV_2025-10-16.pdf — no match: No explicit scope section; contracts inferred from report body. Date is 'October 2025' -> last day of month.
- [19394] Accountable_Quantstamp_2025-10-28.pdf — no match: Extracted 17 contract names from the scope section and file listings. Audit date from timeline: 2025-10-16 through 2025-10-28, using end date.
- [19395] Accountable_Cyfrin_2026-01-23.pdf — no match: All contracts listed in the Audit Scope section of the report.
- [19396] Accountable_Cyfrin_pr50_2026-01-30.pdf — no match: All contracts listed in the Audit Scope section (page 3) are included. The audit date is from the cover page: January 30, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Accountable_Cyfrin_2025-10-16.pdf | AccessBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AsyncVaultFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | FixedTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | OpenTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | RewardsFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | StrategyFactoryBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | GlobalRegistry | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Rewards | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | RewardsDistributorMerkle | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | RewardsDistributorStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | AccountableVault | unmatched — not counted | — | Mentioned in Issue #4: 'In AccountableVault.sol (which is inherited by the AccountableAsyncRedeemVault...' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | Mentioned in Issue #4 and Issue #24: 'Missing controller validation in AccountableAsyncRedeemVault::requestRedeem' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | Mentioned in Issue #9: 'AccountableWithdrawalQueue can deadlock at the head...' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | FixedTerm | unmatched — not counted | — | Mentioned in 'Formal Verification Approach': 'The verification environment tests both FixedTerm and OpenTerm strategy implementations.' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | OpenTerm | unmatched — not counted | — | Mentioned in 'Formal Verification Approach': 'The verification environment tests both FixedTerm and OpenTerm strategy implementations.' | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccessBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | GlobalRegistry | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AsyncVaultFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | FixedTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | OpenTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | RewardsFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | StrategyFactoryBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | RewardsDistributorMerkle | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccessBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | FixedTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | OpenTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | RewardsFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | GlobalRegistry | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | GlobalRegistryStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | Rewards | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | RewardsDistributorMerkle | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | FixedTermStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | OpenTermStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | StrategyStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AtomicBatcher | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | DVNPublisherFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | YieldStrategyFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | DVNPublisher | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableYield | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | YieldStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | OpenTermStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | StrategyStorage | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 73 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19392] Accountable_Cyfrin_2025-10-16.pdf
- [19393] Accountable_Cyfrin_FV_2025-10-16.pdf
- [19394] Accountable_Quantstamp_2025-10-28.pdf
- [19395] Accountable_Cyfrin_2026-01-23.pdf
- [19396] Accountable_Cyfrin_pr50_2026-01-30.pdf

Fork inheritance lineage and inherited audits are included when available.
