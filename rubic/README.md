# Agentic Audit Brief: Rubic

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Rubic (`rubic`)
- Website: [https://app.rubic.exchange/](https://app.rubic.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, kava, linea, zksync-era
- Contract surface: 12 unique implementations (15 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $127,060.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Rubic in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ClonableBeaconProxy (`0x10aaed289a7b1b0155bf4b86c862f297e84465e0`, chain 42161)
- RubicStaking (`0x333ce751b413ca71725d7cdef3cf50c8351e3333`, chain 42161)
- RubicStaking (`0xd7e630e9c60585e606c3d196d01193b606d883d2`, chain 42161)
- RubicStaking (`0xef1db8c05589cacb58148f13845b8695d7dead9b`, chain 42161)
- RubicToken (`0x3330bfb7332ca23cd071631837dc289b09c33333`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 12 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 12
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| RubicStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391753 | `0x333ce751b413ca71725d7cdef3cf50c8351e3333` | ⚠️ Unaudited |
| RubicStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391754 | `0xd7e630e9c60585e606c3d196d01193b606d883d2` | ⚠️ Unaudited |
| RubicStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391755 | `0xef1db8c05589cacb58148f13845b8695d7dead9b` | ⚠️ Unaudited |
| RubicToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391748 | `0x3330bfb7332ca23cd071631837dc289b09c33333` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391757 | `0x10aaed289a7b1b0155bf4b86c862f297e84465e0` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-391749 | `0x3335733c454805df6a77f825f266e136fb4a3333` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-391750 | `0x6aa981bff95edfea36bdae98c26b274ffcafe8d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x0afb1c409c9193a51b1c2ad1f3f8c08e7028c0ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | zksync-era | unit-391751 | `0x8e70e517057e7380587ea6990dae81cb1ba405ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | zksync-era | unit-391752 | `0xa63c029612ddad00a269383ab016d1e7c14e851d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | 4 deployments: kava `0x3333b155fa21a972d179921718792f1036370333`; kava `0x8d9ae5a2ecc16a66740a53cc9080cce29a7fd9f5`; kava `0x8e3bcc334657560253b83f08331d85267316e08a`; kava `0xa96cdb86332b105065ca99432916e631e469cf5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-391756 | `0xaf14797ccf963b1e3d028a9d51853ace16aedba1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1
- Live contracts: 0
- Unknown liveness contracts: 1
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| zksync-era | unverified unclassified | UnnamedContract<br>`0x0afb1c409c9193a51b1c2ad1f3f8c08e7028c0ab` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/rubic-finance](https://skynet.certik.com/projects/rubic-finance) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13793] skynet.certik.com/projects/rubic-finance — no match: Extracted from 'Audited Files/SHA256' section listing FullMath.sol and ECDSAOffsetRecovery.sol. Audit date from 'Last Audit was delivered on 11/30/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/rubic-finance | FullMath | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| skynet.certik.com/projects/rubic-finance | ECDSAOffsetRecovery | unmatched — not counted | — | Audited Files/SHA256 listing | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

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

- [13793] skynet.certik.com/projects/rubic-finance

Fork inheritance lineage and inherited audits are included when available.
