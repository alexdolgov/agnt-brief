# Agentic Audit Brief: Swerve

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Swerve (`swerve`)
- Website: [https://swerve.fi/](https://swerve.fi/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (28 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $305,074.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Swerve. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 5 supporting, 4 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (5), unclassified (4), core (2)
- Contract kinds: unclassified (7), contract (4)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 11; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 27
- Raw deployments: 28
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| APYOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-257696 | `0xaa8d5f6a7747c2c6c4149e1a06eb1bfb847d6de2` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257699 | `0xb902a1ddab091b63721987ccc6a8a99d7c22bbdf` | ⚠️ Unaudited |
| Vyper_contract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257692 | `0x0c4d90ca69104b4cb937fb21c8533c29554ae32c` | ⚠️ Unaudited |
| Vyper_contract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257693 | `0x2638d2680ab4914126ee05b9c5ee95bac311a95e` | ⚠️ Unaudited |
| Vyper_contract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257694 | `0x2c988c3974ad7e604e276ae0294a7228def67974` | ⚠️ Unaudited |
| Vyper_contract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-257701 | `0x329239599afb305da0a2ec69c58f8a6697f9f88d` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3871ddd4171cb4e28b407e47a483d1058f32c92f` | ⚠️ Unaudited |
| Vyper_contract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-257695 | `0x77c6e4a580c0dce4e5c7a17d0bc077188a83a059` | ⚠️ Unaudited |
| Vyper_contract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-257702 | `0xa746c67eb7915fa832a4c2076d403d4b68085431` | ⚠️ Unaudited |
| Vyper_contract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257697 | `0xb4d0c929cd3a1fbdc6d57e7d3315cf0c4d6b4bfa` | ⚠️ Unaudited |
| Vyper_contract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-257698 | `0xb8baa0e4287890a5f79863ab62b7f175cecbd433` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc716ea18ee7f3e9c33fdb2fb5a1816d1fc2c9e3d` | ⚠️ Unaudited |
| Vyper_contract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-257700 | `0xe5e7ddadd563018b0e692c1524b60b754fbd7f02` | ⚠️ Unaudited |
| YPoolDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x853c87822a4e756fb47b2c402db4ff09df0c2780`; ethereum `0xe9f8ca518756911ba8ca01bcb571e12ce8a602b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000085d4780b73119b644ae5ecd22b376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x125ed42ccdf7fb13ea1439b9d4c6745501b680c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x45a22c7c3192bec1bb92a4be9db7128db9c5a097` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5dadbf4ed01cba1afd990518443033863c6e3fd8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e12d719563b4c8d6ef4b3465bdbfce0a45f49b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9ed6314706ec707dae9bdaeee9a14cb6e3151cbe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba08a5dd30dfc2af10b5e954b25831708efb9979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1aaebbd5d6464cbe62ffa7e0156a7ba826af74e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcce356a37930e075921b486c746ba8ed6ebcf172` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdff7beb0cbf54d6553e4702ae0ffa60718822478` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Swerve Finance Audit - by Cryptic Labs v3.pdf](https://github.com/crypticlabs/swerve-audit-report/blob/master/Swerve%20Finance%20Audit%20-%20by%20Cryptic%20Labs%20v3.pdf) | unknown | Audit | 2020-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13958] Swerve Finance Audit - by Cryptic Labs v3.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Swerve Finance Audit - by Cryptic Labs v3.pdf | APYoracle | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | ERC20CRV | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | ERC20LP | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | GaugeController | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | LiquidityGauge | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | Minter | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | PoolProxy | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | YPoolDelegator | unmatched — not counted | — | — | no |
| Swerve Finance Audit - by Cryptic Labs v3.pdf | ZapDelegator | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13958] Swerve Finance Audit - by Cryptic Labs v3.pdf

Fork inheritance lineage and inherited audits are included when available.
