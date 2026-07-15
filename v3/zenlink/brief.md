# Agentic Audit Brief: Zenlink

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Zenlink (`zenlink`)
- Website: [https://zenlink.pro](https://zenlink.pro)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: moonbeam, moonriver
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,304,695.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zenlink. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across moonbeam, moonriver. Structural roles: 10 core, 6 supporting, 4 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (10), supporting (6), unclassified (4)
- Contract kinds: contract (20)
- Detected standards: erc20 (2), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x68bed2...805ec5`, chain 1284)
- UnnamedContract (`0x9823eb...e90eee`, chain 1284)
- UnnamedContract (`0xeb237c...d647f6`, chain 1284)
- UnnamedContract (`0xafaff1...47ba0f`, chain 1285)
- Factory (`0xf49255...f92fef`, chain 1284)
- Factory (`0x28eaa0...0f8d38`, chain 1285)
- Factory (`0xf36ae6...01438d`, chain 1285)
- Farming (`0xa22687...918c2d`, chain 1284)
- Farming (`0xd67083...9661f4`, chain 1284)
- Farming (`0xf4ec12...2a72f8`, chain 1285)
- Migrator (`0xbcb672...24202a`, chain 1284)
- Router (`0x5c93cb...49887a`, chain 1284)
- Router (`0x7a3909...fcab71`, chain 1284)
- Router (`0x1006ff...242fa6`, chain 1285)
- Router (`0xe6fe3d...8b35ca`, chain 1285)
- StableSwap (`0x7bde79...f434d1`, chain 1285)
- StableSwapRouter (`0xe04b18...4843fd`, chain 1285)
- SwapRouterV1 (`0x571111...572242`, chain 1284)
- SwapRouterV1 (`0x2f84b9...8b189d`, chain 1285)
- SwapRouterV1 (`0xfb45b5...ea1508`, chain 1285)
- ZenlinkToken (`0x3fd9b6...39100c`, chain 1284)
- ZenlinkToken (`0x0f47ba...a1173b`, chain 1285)

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263673 | `0x079710...c716a0` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263684 | `0xf49255...f92fef` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263687 | `0x28eaa0...0f8d38` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263694 | `0xf36ae6...01438d` | ⚠️ Unaudited |
| Farming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263680 | `0xa22687...918c2d` | ⚠️ Unaudited |
| Farming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263682 | `0xd67083...9661f4` | ⚠️ Unaudited |
| Farming | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263695 | `0xf4ec12...2a72f8` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263681 | `0xbcb672...24202a` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263689 | `0x43581b...2a87b5` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-263676 | `0x5c93cb...49887a` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-263678 | `0x7a3909...fcab71` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonriver | unit-263686 | `0x1006ff...242fa6` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonriver | unit-263693 | `0xe6fe3d...8b35ca` | ⚠️ Unaudited |
| StableSwap | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263690 | `0x7bde79...f434d1` | ⚠️ Unaudited |
| StableSwapRouter | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263692 | `0xe04b18...4843fd` | ⚠️ Unaudited |
| SwapRouterV1 | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-263675 | `0x571111...572242` | ⚠️ Unaudited |
| SwapRouterV1 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263688 | `0x2f84b9...8b189d` | ⚠️ Unaudited |
| SwapRouterV1 | adapter | project_anchor | own_supporting | 0 | moonriver | unit-263696 | `0xfb45b5...ea1508` | ⚠️ Unaudited |
| ZenlinkToken | token | project_anchor | own_supporting | 0 | moonbeam | unit-263674 | `0x3fd9b6...39100c` | ⚠️ Unaudited |
| ZenlinkToken | token | project_anchor | own_supporting | 0 | moonriver | unit-263685 | `0x0f47ba...a1173b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263677 | `0x68bed2...805ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263679 | `0x9823eb...e90eee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263683 | `0xeb237c...d647f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263691 | `0xafaff1...47ba0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Stable-swap_202309291700.pdf](https://beosin.com/audits/Stable-swap_202309291700.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2439] Stable-swap_202309291700.pdf — no match: Scope explicitly lists ./pallets/Stable-swap and ./pallets/stable-asset (only key functions). Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Stable-swap_202309291700.pdf | Stable-swap | unmatched — not counted | — | listed in scope | no |
| Stable-swap_202309291700.pdf | stable-asset | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0x079710...c716a0` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xf49255...f92fef` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x28eaa0...0f8d38` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xf36ae6...01438d` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xa22687...918c2d` | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xd67083...9661f4` | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xf4ec12...2a72f8` | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xbcb672...24202a` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x43581b...2a87b5` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x5c93cb...49887a` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x7a3909...fcab71` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x1006ff...242fa6` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xe6fe3d...8b35ca` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x7bde79...f434d1` | StableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xe04b18...4843fd` | StableSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x571111...572242` | SwapRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x2f84b9...8b189d` | SwapRouterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xfb45b5...ea1508` | SwapRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x3fd9b6...39100c` | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x0f47ba...a1173b` | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2439] Stable-swap_202309291700.pdf

Fork inheritance lineage and inherited audits are included when available.
