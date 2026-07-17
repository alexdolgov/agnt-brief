# Agentic Audit Brief: Alphix

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

- Project: Alphix (`alphix`)
- Website: [https://www.alphix.fi/swap](https://www.alphix.fi/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, base-sepolia
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $299,063.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Alphix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, base-sepolia. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x831cfdf7c0e194f5369f204b3dd2481b843d60c0`, chain 8453)
- UnnamedContract (`0x5e645c3d580976ca9e3fe77525d954e73a0ce0c0`, chain 42161)
- Alphix (`0x0e4b892df7c5bcf5010faf4aa106074e555660c0`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 9 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BugPocer | Tier 2 | 1 | 33.3% | n/a |
| Sherlock | Tier 1 | 1 | 33.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Alphix | unknown | project_anchor | own_supporting | 0 | base | unit-378729 | `0x0e4b892df7c5bcf5010faf4aa106074e555660c0` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphixLVRFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cbbff9c4fcd74b221c535f4fb4b1db04f1b9044` | ⚠️ Unaudited |
| AlphixPro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f9cf87a6cbfa53c3f1b184900de17298e3f9080` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378730 | `0x831cfdf7c0e194f5369f204b3dd2481b843d60c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378728 | `0x5e645c3d580976ca9e3fe77525d954e73a0ce0c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378731 | `0x285a195230239822adbc6fd2281c7b1de1a17fc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378732 | `0x3c59d4d01682c6180a564f52573c07372bd07cb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378733 | `0x5a22aa4a4b62e3ee72cb6d077b0873d6aa794b54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378734 | `0x8768950eb999faa53c8b0aa0cd7dcc19b9d23a34` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [| Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. |](https://github.com/alphixfi/alphix-core/blob/main/security/2025.12.17-Final-AlphixCollaborativeAuditReport.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [BugPocer_Alphix.pdf](https://github.com/alphixfi/alphix-core/blob/main/security/BugPocer_Alphix.pdf) | BugPocer | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19418] | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | — matched: Scope section lists 9 files; audit date range December 1-8, 2025, end date used.
- [19419] BugPocer_Alphix.pdf — matched: Only one contract name (Alphix) is explicitly mentioned in the report text, but no formal scope section or date is present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | AlphixLogic | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | Alphix | own contract | Alphix (selected) `0x0e4b892df7c5bcf5010faf4aa106074e555660c0` — deployed 2026-02-10 21:30:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | BaseDynamicFee | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | IAlphixLogic | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | IAlphix | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | IRegistry | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | AlphixGlobalConstants | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | DynamicFee | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | Registry | unmatched — not counted | — | listed in scope | no |
| BugPocer_Alphix.pdf | Alphix | own contract | Alphix (selected) `0x0e4b892df7c5bcf5010faf4aa106074e555660c0` — deployed 2026-02-10 21:30:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
