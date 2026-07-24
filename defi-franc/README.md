# Agentic Audit Brief: DeFi Franc

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: DeFi Franc (`defi-franc`)
- Website: [https://monetadao.com/](https://monetadao.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 32 unique implementations (32 raw deployments)
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
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 32
- Raw deployments: 32
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
| ActivePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234922 | `0x77e034c8a1392d99a2c776a6c1593866fee36a33` | ⚠️ Unaudited |
| AdminContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234920 | `0x2748c55219dca1d9d3c3a57505e99bb04e42f254` | ⚠️ Unaudited |
| AirdropMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff42ec1c83e0f4939c45ab4f6a027b44e5a3fc8f` | ⚠️ Unaudited |
| BorrowerOperations | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234925 | `0x9eb2ce1be2dd6947e4f5aabe33106f48861dfd74` | ⚠️ Unaudited |
| CollSurplusPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234926 | `0xa622c3bdbfbe749b1984bc127bfb500e196f594b` | ⚠️ Unaudited |
| CommunityIssuance | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234915 | `0x0fa46e8cbceff8468db2ec2fd77731d8a11d3d86` | ⚠️ Unaudited |
| DCHFToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234913 | `0x045da4bfe02b320f4403674b3b7d121737727a36` | ⚠️ Unaudited |
| DefaultPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234929 | `0xc1f785b74a01dd9fac0de6070bc583fe9eac7ab5` | ⚠️ Unaudited |
| DfrancParameters | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234921 | `0x6f9990b242873d7396511f2630412a3fcecacc42` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3abc893894167530f810097747ecd1710a650f` | ⚠️ Unaudited |
| HintHelpers | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234916 | `0x17244338034bea1fa940779bc769ff01833406c4` | ⚠️ Unaudited |
| LiqBootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7db4205032153a81bcb6ed0561c00e65ac55a06` | ⚠️ Unaudited |
| LockedMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020b7d785d343c92f3be7d802545d031e943366f` | ⚠️ Unaudited |
| MONStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234923 | `0x8bc3702c35d33e5df7cb0f06cb72a0c34ae0c56f` | ⚠️ Unaudited |
| MONToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234918 | `0x1ea48b9965bb5086f3b468e50ed93888a661fc17` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234930 | `0xd4ecc372e99dabdbc0fabe02d2515a24388facca` | ⚠️ Unaudited |
| PriceFeed | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234914 | `0x09ab3c0ce6cb41c13343879a667a6bdad65ee9da` | ⚠️ Unaudited |
| SortedTroves | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234917 | `0x1dd69453a685c735f2ab43e2169b57e9edf72286` | ⚠️ Unaudited |
| StabilityPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234912 | `0x04556d845f12ff7d8ff04a37f40387dd1b454c4b` | ⚠️ Unaudited |
| StabilityPoolManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234919 | `0x202fbff035188f9f0525e144c8b3f8249a74ad21` | ⚠️ Unaudited |
| TroveManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234924 | `0x99838142189ade67c1951f9c57c3333281334f7f` | ⚠️ Unaudited |
| TroveManagerHelpers | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234927 | `0xaaacb8c39bd5acbb0a236112df8d15411161e518` | ⚠️ Unaudited |
| Vester | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234928 | `0xc0747a27c6fa20effba2937419647e976f111611` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0f45883cdbe2b4d9cf79c823509112028da0c857` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2e92c456278d77558723ca263c713b5d30520a39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6a9f9d6f5d672a9784c5e560a9648de6cbe2c548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x83737eae72ba7597b36494d723fbf58cafee8a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8444fe0120be34027d7f3e3a5da40f05d2adab2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87cb2213c66a3b71e8ed18af0d9c3e91a68aa437` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8eba1ad289f5e6c50d2f924e17cc8dd607b3c083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5567e2dc52506435e5538441db51b5b0397bc89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc9a113c35f961af3526e6f016f6df9da0a4c7bfa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=3

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x8444fe0120be34027d7f3e3a5da40f05d2adab2d` | non_address_book | unknown | unknown | unverified | n/a | `0x7d7711efd844e5e204df29dc3e109d1af95a801c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87cb2213c66a3b71e8ed18af0d9c3e91a68aa437` | non_address_book | unknown | unknown | unverified | n/a | `0x7d7711efd844e5e204df29dc3e109d1af95a801c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5567e2dc52506435e5538441db51b5b0397bc89` | non_address_book | unknown | unknown | unverified | n/a | `0x7d7711efd844e5e204df29dc3e109d1af95a801c` |

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
| needs_review | 9 |

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
