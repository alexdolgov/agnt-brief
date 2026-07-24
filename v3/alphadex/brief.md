# Agentic Audit Brief: Alphadex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Alphadex (`alphadex`)
- Website: [https://alphadex.io/](https://alphadex.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: kava, moonriver
- Contract surface: 10 unique implementations (10 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $141,389.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Alphadex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121433 | `0x8e7cd893d8f371051a39aa65976bca22d7b02a60` | ⚠️ Unaudited |
| LaunchpadFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121435 | `0xd9341fd84affa37af97747c08b9404ef30157dd0` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121429 | `0x29a31b6e45cf5133c0483496471226a6d22ed820` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121431 | `0x55a616ac51d8bbe8a50c951acd5e941285384f5c` | ⚠️ Unaudited |
| RewardNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121434 | `0xaa6535409e076f203e0f431c518b998d85266b5b` | ⚠️ Unaudited |
| Roar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121430 | `0x4829b57f0160427f768a5c0aa23cd3d33c7ab833` | ⚠️ Unaudited |
| RoarStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-121432 | `0x70f0bf009d24f2628762cb1e079a9d720e873236` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc8ab924393e9efdd2db150991535cc52c13f9b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xce35026216fda42170377c54a84bfffa4c6de44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd10acb044f6969e20294901c6612a1668dfe99b4` | ❓ Unverified |

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
| moonriver | unverified unclassified | UnnamedContract<br>`0xc8ab924393e9efdd2db150991535cc52c13f9b01` | non_address_book | unknown | unknown | unverified | n/a | `0xcb0f74e5f19be06ad3aa804866a9466caf14abab` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xce35026216fda42170377c54a84bfffa4c6de44a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb0f74e5f19be06ad3aa804866a9466caf14abab` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xd10acb044f6969e20294901c6612a1668dfe99b4` | non_address_book | unknown | unknown | unverified | n/a | `0xcb0f74e5f19be06ad3aa804866a9466caf14abab` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf (also discovered via alternate URL)](https://web.archive.org/web/20220704153703/https://www.rdauditors.com/wp-content/uploads/2022/06/AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf) | RD Auditors | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21370] AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf — no match: Three files explicitly listed in scope table with hashes. Date found on page 3 as 'Date 16/06/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf | LP Staking Contract | unmatched — not counted | — | listed in scope table on page 3 | no |
| AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf | Roar Native Staking | unmatched — not counted | — | listed in scope table on page 3 | no |
| AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf | NFT Rewarder Contract | unmatched — not counted | — | listed in scope table on page 3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21370] AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf

Fork inheritance lineage and inherited audits are included when available.
