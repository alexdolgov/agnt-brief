# Agentic Audit Brief: DeFi Franc

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DeFi Franc (`defi-franc`)
- Website: [https://monetadao.com/](https://monetadao.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $191,958.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for DeFi Franc. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum. Structural roles: 18 core, 1 supporting. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (18), supporting (1)
- Contract kinds: contract (19)
- Detected standards: ownable (18), erc20 (2), erc20permit (2), pausable (1)
- Frameworks: openzeppelin (19), openzeppelin-upgradeable (16), chainlink (10)
- Upgradeable-pattern rows: 16

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 19; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234922 | `0x77e034...e36a33` | ⚠️ Unaudited |
| AdminContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234920 | `0x2748c5...42f254` | ⚠️ Unaudited |
| AirdropMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff42ec...a3fc8f` | ⚠️ Unaudited |
| BorrowerOperations | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234925 | `0x9eb2ce...1dfd74` | ⚠️ Unaudited |
| CollSurplusPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234926 | `0xa622c3...6f594b` | ⚠️ Unaudited |
| CommunityIssuance | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234915 | `0x0fa46e...1d3d86` | ⚠️ Unaudited |
| DCHFToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234913 | `0x045da4...727a36` | ⚠️ Unaudited |
| DefaultPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234929 | `0xc1f785...ac7ab5` | ⚠️ Unaudited |
| DfrancParameters | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234921 | `0x6f9990...cacc42` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3abc...0a650f` | ⚠️ Unaudited |
| HintHelpers | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234916 | `0x172443...3406c4` | ⚠️ Unaudited |
| LiqBootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7db42...c55a06` | ⚠️ Unaudited |
| LockedMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020b7d...43366f` | ⚠️ Unaudited |
| MONStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234923 | `0x8bc370...e0c56f` | ⚠️ Unaudited |
| MONToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234918 | `0x1ea48b...61fc17` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234930 | `0xd4ecc3...8facca` | ⚠️ Unaudited |
| PriceFeed | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234914 | `0x09ab3c...5ee9da` | ⚠️ Unaudited |
| SortedTroves | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234917 | `0x1dd694...f72286` | ⚠️ Unaudited |
| StabilityPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234912 | `0x04556d...454c4b` | ⚠️ Unaudited |
| StabilityPoolManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234919 | `0x202fbf...74ad21` | ⚠️ Unaudited |
| TroveManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234924 | `0x998381...334f7f` | ⚠️ Unaudited |
| TroveManagerHelpers | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234927 | `0xaaacb8...61e518` | ⚠️ Unaudited |
| Vester | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234928 | `0xc0747a...111611` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0f4588...a0c857` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2e92c4...520a39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6a9f9d...e2c548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x83737e...ee8a69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8eba1a...b3c083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc9a113...4c7bfa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/defi-franc](https://skynet.certik.com/projects/defi-franc) | CertiK | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [www.certik.com/projects/defi-franc](https://www.certik.com/projects/defi-franc) | CertiK | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21379] skynet.certik.com/projects/defi-franc — no match: Extracted from 'Audited Files/SHA256' section listing BaseMath.sol and CheckContract.sol. Only two files explicitly listed; other contracts may exist but not named in the provided text.
- [21380] www.certik.com/projects/defi-franc — no match: Extracted from 'Audited Files/SHA256' section listing BaseMath.sol and CheckContract.sol. Only two files explicitly listed; other files may exist but are not named in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/defi-franc | BaseMath | unmatched — not counted | — | listed in Audited Files/SHA256 | no |
| skynet.certik.com/projects/defi-franc | CheckContract | unmatched — not counted | — | listed in Audited Files/SHA256 | no |
| www.certik.com/projects/defi-franc | BaseMath | unmatched — not counted | — | listed in Audited Files/SHA256 | no |
| www.certik.com/projects/defi-franc | CheckContract | unmatched — not counted | — | listed in Audited Files/SHA256 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=2
- Match method counts: n/a

Zero-match audit list:

- [21379] skynet.certik.com/projects/defi-franc
- [21380] www.certik.com/projects/defi-franc

Fork inheritance lineage and inherited audits are included when available.
