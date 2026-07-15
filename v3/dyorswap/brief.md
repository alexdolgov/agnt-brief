# Agentic Audit Brief: DyorSwap

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

- Project: DyorSwap (`dyorswap`)
- Website: [https://dyorswap.finance/?chainId=34443](https://dyorswap.finance/?chainId=34443)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, ink, merlin, mode, plasma, sonic, unichain
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,731,456.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DyorSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across blast, ink, merlin, mode, plasma, sonic, unichain. Structural roles: 4 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: supporting (4), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: none
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DYORRouter (`0xcf9dc9...9e169a`, chain 34443)
- DYORRouter (`0xe47069...8fdeef`, chain 81457)
- DyorRouterV2 (`0x591cf6...a72f61`, chain 146)
- DyorRouterV2 (`0xfc9869...a493cc`, chain 9745)
- DYORSwap V2 Router (`0x827028...a98af8`, chain 130)
- DYORSwap V2 Router (`0xe47069...8fdeef`, chain 4200)
- DYORSwap V2 Router (`0x9b1769...cd7a77`, chain 57073)
- DYORSwap V3 Factory / Deployer (`0x0edeea...c753f3`, chain 9745)
- DYORSwap V3 NonfungiblePositionManager (`0x16581f...b4b7fc`, chain 9745)
- DYORSwap V3 Quoter (`0x8704c5...05c719`, chain 9745)
- DYORSwap V3 Router (`0xf60070...1a3353`, chain 9745)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 11 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 12
- Raw deployments: 12
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DYORRouter | adapter | project_anchor | own_supporting | 0 | mode | unit-384154 | `0xcf9dc9...9e169a` | ⚠️ Unaudited |
| DYORRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-384160 | `0xe47069...8fdeef` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | project_anchor | own_supporting | 0 | sonic | unit-384152 | `0x591cf6...a72f61` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | project_anchor | own_supporting | 0 | plasma | unit-384167 | `0xfc9869...a493cc` | ⚠️ Unaudited |
| DYORSwap V3 Quoter | unknown | project_anchor | own_supporting | 0 | plasma | unit-384165 | `0x8704c5...05c719` | ⚠️ Unaudited |

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
| DYORSwap V2 Router | unknown | project_anchor | own_supporting | 0 | unichain | unit-384150 | `0x827028...a98af8` | ❓ Unverified |
| DYORSwap V2 Router | unknown | project_anchor | own_supporting | 0 | merlin | unit-384156 | `0xe47069...8fdeef` | ❓ Unverified |
| DYORSwap V2 Router | unknown | project_anchor | own_supporting | 0 | ink | unit-384158 | `0x9b1769...cd7a77` | ❓ Unverified |
| DYORSwap V3 Factory / Deployer | unknown | project_anchor | own_supporting | 0 | plasma | unit-384162 | `0x0edeea...c753f3` | ❓ Unverified |
| DYORSwap V3 NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | plasma | unit-384163 | `0x16581f...b4b7fc` | ❓ Unverified |
| DYORSwap V3 Router | unknown | project_anchor | own_supporting | 0 | plasma | unit-384166 | `0xf60070...1a3353` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-384164 | `0x476810...33a51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | `0xcf9dc9...9e169a` | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xe47069...8fdeef` | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x591cf6...a72f61` | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xfc9869...a493cc` | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

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
