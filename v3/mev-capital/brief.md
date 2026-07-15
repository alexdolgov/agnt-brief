# Agentic Audit Brief: MEV Capital

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

- Project: MEV Capital (`mev-capital`)
- Website: [https://mevcapital.com](https://mevcapital.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (19 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $47,725,850.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MEV Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across ethereum. Structural roles: 17 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (17)
- Contract kinds: contract (11), abstract (6)
- Detected standards: erc20 (10), erc20permit (10), erc4626 (8), multicall (8), ownable (8), ownable2step (8), erc1967proxy (7), pausable (2)
- Frameworks: openzeppelin (17), openzeppelin-upgradeable (7), solady (2)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1c530d...699089`, chain 1)
- UnnamedContract (`0x59d957...cf5c37`, chain 1)
- MetaMorpho (`0x1265a8...4d665a`, chain 1)
- MetaMorpho (`0x2f1abb...834775`, chain 1)
- MetaMorpho (`0x98cf0b...c70e0b`, chain 1)
- MetaMorpho (`0x9a8bc3...2d61d8`, chain 1)
- MetaMorpho (`0xd63070...d33a3d`, chain 1)
- MetaMorphoV1_1 (`0x28d24d...472f33`, chain 1)
- MetaMorphoV1_1 (`0xd50da5...c747ad`, chain 1)
- MetaMorphoV1_1 (`0xf1fd8a...c4c52d`, chain 1)
- MigratableEntityProxy (`0x3b5124...14818c`, chain 1)
- MigratableEntityProxy (`0x4e0554...4af9c5`, chain 1)
- MigratableEntityProxy (`0x9205c8...f57a0d`, chain 1)
- MigratableEntityProxy (`0xd25f31...5864b3`, chain 1)
- MigratableEntityProxy (`0xdc4795...8eea26`, chain 1)
- MigratableEntityProxy (`0xf60e6e...5bec31`, chain 1)
- TransparentUpgradeableProxy (`0x5fde59...eb357f`, chain 1)

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (15 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 12 of 14 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 14
- Raw deployments: 19
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LendingPoolv3 | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-247645 | `0x5fde59...eb357f` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247633 | `0x1265a8...4d665a` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247636 | `0x2f1abb...834775` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247638 | `0x98cf0b...c70e0b` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247639 | `0x9a8bc3...2d61d8` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247642 | `0xd63070...d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247635 | `0x28d24d...472f33` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247641 | `0xd50da5...c747ad` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247644 | `0xf1fd8a...c4c52d` | ⚠️ Unaudited |
| PrincipalToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-247640 | `0xa97087...92cbfd` | ⚠️ Unaudited |
| PrincipalToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-247643 | `0xdc87d0...13d03a` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 6 | ethereum | unit-247646 (6 proxies) | 6 deployments: ethereum `0x3b5124...14818c`; ethereum `0x4e0554...4af9c5`; ethereum `0x9205c8...f57a0d`; ethereum `0xd25f31...5864b3`; ethereum `0xdc4795...8eea26`; ethereum `0xf60e6e...5bec31` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247634 | `0x1c530d...699089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247637 | `0x59d957...cf5c37` | ❓ Unverified |

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
| ethereum | `0x5fde59...eb357f` | LendingPoolv3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b5124...14818c` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 8 |
| standard_library | 0 |
| needs_review | 2 |

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
