# Agentic Audit Brief: MUFEX

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: MUFEX (`mufex`)
- Website: [https://www.mufex.finance/en-US/](https://www.mufex.finance/en-US/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, mantle, polygon
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $276,245.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for MUFEX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, polygon. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DepositWalletFactory (`0xc8a3a6d43e8aa43187d7b7a1faef21e65acba43b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 20 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 19
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DepositWalletFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389472 | `0xc8a3a6d43e8aa43187d7b7a1faef21e65acba43b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00f22b656e4ee993b03f75ac1997d99fea799301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16bedb2ab2aef9023ff2cbf0c78135ca120c03c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2757900449ae3c547a7ba54814aef7f03a3829b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4491cf23d3f4e6b361c58752781045e035657487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cdb65fa411698958416612dd069d710c38a4351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53a0e54c8f138da10e0733e6944a932aaac0066e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-389469 | `0x763ecd00eea0cdaecbdf97d88c3e0fd5457ee5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x768afc506be615b77e69e5eb729e3317b895f48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8a3a6d43e8aa43187d7b7a1faef21e65acba43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff052abf3cb53324eb3231f6a0d1d881a5263e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f22b656e4ee993b03f75ac1997d99fea799301` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-389470 | `0x16bedb2ab2aef9023ff2cbf0c78135ca120c03c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2757900449ae3c547a7ba54814aef7f03a3829b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4491cf23d3f4e6b361c58752781045e035657487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cdb65fa411698958416612dd069d710c38a4351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53a0e54c8f138da10e0733e6944a932aaac0066e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-389471 | `0x763ecd00eea0cdaecbdf97d88c3e0fd5457ee5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x768afc506be615b77e69e5eb729e3317b895f48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff052abf3cb53324eb3231f6a0d1d881a5263e2f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 16
- Live contracts: 0
- Unknown liveness contracts: 16
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=16

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x00f22b656e4ee993b03f75ac1997d99fea799301` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2757900449ae3c547a7ba54814aef7f03a3829b8` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4491cf23d3f4e6b361c58752781045e035657487` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4cdb65fa411698958416612dd069d710c38a4351` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x53a0e54c8f138da10e0733e6944a932aaac0066e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x768afc506be615b77e69e5eb729e3317b895f48c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff052abf3cb53324eb3231f6a0d1d881a5263e2f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x00f22b656e4ee993b03f75ac1997d99fea799301` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x16bedb2ab2aef9023ff2cbf0c78135ca120c03c6` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2757900449ae3c547a7ba54814aef7f03a3829b8` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4491cf23d3f4e6b361c58752781045e035657487` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4cdb65fa411698958416612dd069d710c38a4351` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x53a0e54c8f138da10e0733e6944a932aaac0066e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0x768afc506be615b77e69e5eb729e3317b895f48c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc8a3a6d43e8aa43187d7b7a1faef21e65acba43b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |
| polygon | unverified unclassified | UnnamedContract<br>`0xff052abf3cb53324eb3231f6a0d1d881a5263e2f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d36ade3dee12c9663d554b4a45f2ec90dd1ef57` |

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
