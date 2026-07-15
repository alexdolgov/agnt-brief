# Agentic Audit Brief: Bunny

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Bunny (`bunny`)
- Website: [https://pancakebunny.finance/](https://pancakebunny.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 10 unique implementations (16 raw deployments)
- Coverage basis: 4/10 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,923,535.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Bunny. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across bsc, ethereum. Structural roles: 19 unclassified, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: unclassified (19), core (3)
- Contract kinds: contract (22)
- Detected standards: ownable (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0xedfcb7...da28ed`, chain 56)
- BunnyPool (`0xcadc8c...d7889d`, chain 56)
- BunnyToken (`0xc9849e...a11a51`, chain 56)

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (16 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/10 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/10
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 40.0% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BunnyBNBPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-381556 | `0xc80ea5...d66e0d` | ✅ Audited |
| BunnyPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-381558 | `0xcadc8c...d7889d` | ✅ Audited |
| BunnyToken | token | project_anchor | own_supporting | 0 | bsc | unit-381557 | `0xc9849e...a11a51` | ✅ Audited |
| VaultCakeToCake | core_logic | project_anchor | own_supporting | 1 | bsc | unit-381562 | `0xedfcb7...da28ed` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 4 | bsc | unit-381564 (4 proxies) | 4 deployments: bsc `0x3f1393...090bd5`; bsc `0x92a0f7...a4975c`; bsc `0xcbd447...ad0058`; bsc `0xe07bda...ebd0cc` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381563 | `0x866fd0...e199d4` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381561 | `0xa5b8cd...538ff2` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 4 | bsc | unit-381560 (4 proxies) | 4 deployments: bsc `0x0137d8...7a792e`; bsc `0x1b6e3d...507b99`; bsc `0x7eaaea...92e98a`; bsc `0xc1aae5...656ee6` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381559 | `0xa59efe...5a43e7` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381565 | `0xc0314b...ee5ef3` | ⚠️ Unaudited |

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
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | matched | 4 | 1 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2752] [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyBNBPool | own contract | BunnyBNBPool (selected) `0xc80ea5...d66e0d` — deployed 2020-11-16 13:52:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyMinter | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyPool | own contract | BunnyPool (selected) `0xcadc8c...d7889d` — deployed 2020-11-16 17:22:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyToken | own contract | BunnyToken (selected) `0xc9849e...a11a51` — deployed 2020-10-30 16:09:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultCakeToCake | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xedfcb7...da28ed` — deployed 2020-12-23 12:01:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultFlipToCake | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultFlipToFlip | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x3f1393...090bd5` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x866fd0...e199d4` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa5b8cd...538ff2` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0137d8...7a792e` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa59efe...5a43e7` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc0314b...ee5ef3` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
