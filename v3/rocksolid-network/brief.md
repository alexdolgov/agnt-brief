# Agentic Audit Brief: RockSolid Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RockSolid Network (`rocksolid-network`)
- Website: [https://rocksolid.network/](https://rocksolid.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,855,861.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for RockSolid Network in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- OptinProxy (`0x936fac...d81bc7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 3 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Lagoon Finance | Tier 2 | 1 | 50.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391555 | `0x936fac...d81bc7` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CombinedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716f0c...df445e` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FfnXfTtKlAKAD5g9oG2nS%2FNM_0581_FINAL_Lagoon.pdf) | Lagoon Finance | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F8HkE2EU7hepf08gYGPsx%2FNM_0534_Lagoon.pdf) | Lagoon Finance | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1848] spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf — matched: Audited Files table lists 4 contracts with file paths. Audit date from Summary of the Audit table: Initial Report and Final Report both July 10, 2025.
- [1849] spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf — matched: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is the final report date (May 13, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf | OptinProxy | own proxy deployment | OptinProxy (proxy) (selected) `0x936fac...d81bc7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf | DelayProxyAdmin | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf | OptinProxyFactory | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf | LogicRegistry | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Roles | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Whitelistable | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Silo | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | FeeManager | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | ERC7540 | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Vault | own proxy deployment | OptinProxy (proxy) (selected) `0x936fac...d81bc7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Errors | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Events | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Enums | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | Struct | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | IERC7540 | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | IWETH9 | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | IERC7540Deposit | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | IERC7540Redeem | unmatched — not counted | — | listed in Audited Files table | no |
| spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf | IERC7575 | unmatched — not counted | — | listed in Audited Files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
