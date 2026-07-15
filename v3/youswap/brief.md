# Agentic Audit Brief: YouSwap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: YouSwap (`youswap`)
- Website: [https://www.youswap.com/](https://www.youswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, heco
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $223,526.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for YouSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BlackHole (`0x454fcc...ed2fd3`, chain 1)
- BlackHole (`0x8234fb...53f810`, chain 56)
- Repurchase (`0x3ecf27...913c84`, chain 1)
- Repurchase (`0xb621ea...2c3806`, chain 56)
- TokenYou (`0x1d3291...bd2510`, chain 1)
- TokenYou (`0x181801...5a6d2d`, chain 56)
- YouSwapFactory (`0xa70283...6b49ea`, chain 1)
- YouSwapFactory (`0x137f34...f7a09a`, chain 56)
- YouswapFactoryV1 (`0x8f1c3c...9382f6`, chain 56)
- YouswapInviteV1 (`0x253108...166969`, chain 1)
- YouswapInviteV1 (`0xe71f92...fdf53b`, chain 56)
- YouSwapRouter (`0xf80ddd...b30770`, chain 1)
- YouSwapRouter (`0xa4ce57...8d06cf`, chain 56)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 13 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlackHole | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397636 | `0x454fcc...ed2fd3` | ⚠️ Unaudited |
| BlackHole | unknown | project_anchor | own_supporting | 0 | bsc | unit-397648 | `0x8234fb...53f810` | ⚠️ Unaudited |
| Repurchase | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397635 | `0x3ecf27...913c84` | ⚠️ Unaudited |
| Repurchase | unknown | project_anchor | own_supporting | 0 | bsc | unit-397651 | `0xb621ea...2c3806` | ⚠️ Unaudited |
| TokenYou | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397633 | `0x1d3291...bd2510` | ⚠️ Unaudited |
| TokenYou | unknown | project_anchor | own_supporting | 0 | bsc | unit-397647 | `0x181801...5a6d2d` | ⚠️ Unaudited |
| YouSwapFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397637 | `0xa70283...6b49ea` | ⚠️ Unaudited |
| YouSwapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-397646 | `0x137f34...f7a09a` | ⚠️ Unaudited |
| YouswapFactoryV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397649 | `0x8f1c3c...9382f6` | ⚠️ Unaudited |
| YouswapInviteV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397634 | `0x253108...166969` | ⚠️ Unaudited |
| YouswapInviteV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397652 | `0xe71f92...fdf53b` | ⚠️ Unaudited |
| YouSwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397638 | `0xf80ddd...b30770` | ⚠️ Unaudited |
| YouSwapRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-397650 | `0xa4ce57...8d06cf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397639 | `0x01a35d...e5f67f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397640 | `0x0604f2...3d1693` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397641 | `0x0bc85a...524188` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397642 | `0x9364e1...500cc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397643 | `0x9f1cd0...f2991d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397644 | `0xb9de34...8dab1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397645 | `0xe58602...b593a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
