# Agentic Audit Brief: SectorOne

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SectorOne (`sectorone`)
- Website: [https://sectorone.xyz](https://sectorone.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $286,558.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SectorOne. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, ethereum. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (1)
- Frameworks: openzeppelin (5), foundry (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 24 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 39
- Raw deployments: 39
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DexLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0b7e780982be01fcb55a1e56cee1842ec0a4e17c` | ⚠️ Unaudited |
| DexLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-254377 | `0x236db792935ab03ac8bd29df5e769c7ed0b28abb` | ⚠️ Unaudited |
| DexLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254387 | `0x0ff91ba6928f5bb700662d72b8290fea7a5a96d1` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b52dbf8794cdc2026da5bfea31647a4e6a713e` | ⚠️ Unaudited |
| Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254380 | `0x96559af835e5a3e9bb68c17eba8520295370698f` | ⚠️ Unaudited |
| Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254396 | `0xcf0685f37a139de56afc4a89aa343849358c05cb` | ⚠️ Unaudited |
| JoeDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d52467d074b3590760831af816046471a81bf3a` | ⚠️ Unaudited |
| JoeV21LegacyDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69298ffe05627268d32dd32762e364bfeb42206b` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254381 | `0x98501d0bb98d92a3234bae0f2a42befb5075224a` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254383 | `0x9d8688043150c2b2a4cdce2ed03eb40b6ccd2c57` | ⚠️ Unaudited |
| LBFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bbbbcc3bc3f8c6beb174e772930e64ba7f0497d` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254390 | `0x217da3e53f221d1f36e8b09bc7d55d4012c0aa70` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254391 | `0x3357f02fb3aa78fc86d3bccdc5edf039d4b952b5` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254379 | `0x585e52b2b4fb0ccbd433751791eb60d8e3a50a43` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254384 | `0xca3fe461f0041662826697916c33c8af5cbdb7f1` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25b320a7c69e66515d7f6c044ec9af49fa1588bb` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254392 | `0x37d11ffc23f4b87ae65a7ffd4951b331bded1dd9` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254399 | `0xf879e534a9c7a099dcb532fd931eb93e653649db` | ⚠️ Unaudited |
| LBQuoter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254385 | `0xe839a439809edc00e004c3c58aa141ff4cb8109b` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04682d6c443c48245a0eb52a0a015f9bfe45ed40` | ⚠️ Unaudited |
| LBQuoter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254388 | `0x15c7efc1837e3867d10dda89b32cd05a46ef4b14` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254376 | `0x035a4a069f8949845eef57fcd697d0196a80ae7d` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254382 | `0x9adb4beaeecf04313619dbec923f71323d96c26a` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254394 | `0x87ac1eb5596d47f6fd7d0d17bee233783db5cfec` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254397 | `0xd4f937581650a2d6e416dd9ef5372c1672422843` | ⚠️ Unaudited |
| LBSwaplineQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3b015e2f379019d42ed7427825acaa0a0475742` | ⚠️ Unaudited |
| LiquidityAmountsContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254393 | `0x3cf9c2eedf007cf428b67219dcfb2fd700b1a2c0` | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254389 | `0x17e6bfd8b8f8ac6981c9c786137d2d592c6773a8` | ⚠️ Unaudited |
| OracleRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e4f2fa76a308d80ff0aba8857ef83555fbc8f6c` | ⚠️ Unaudited |
| OracleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22178951866a9b9768ea3d563c061bff19ebafdc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00879e6b688c7d317301b461258895be5baeb16b` | ⚠️ Unaudited |
| Router | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254398 | `0xddf9025cf1fc3a7945ea54a53d856c81b9284c38` | ⚠️ Unaudited |
| SimpleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4baa24c3d50108cdf8d85fda023eda1d933ed6ef` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2807f5fd3f8fb2810a351bfe0255527103616c6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x6e6577ae563d28c6fd0b5d1f2f32361339deb09e` | ⚠️ Unaudited |
| VaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-254378 | `0x2a1960451c99947a9c14f0fa7911df5fa0d0e322` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x057fd3822cf566ccdc021a910b47b4656f165f92` | ⚠️ Unaudited |
| VaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254395 | `0x8f04ff2198550dfdf5169892d1d47573b4f71ba6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254386 | `0xf5e5eae03c5ccde623a19117c8b7f788c8812667` | ❓ Unverified |

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
| native | 17 |
| upstream | 0 |
| standard_library | 2 |
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
