# Agentic Audit Brief: Tethys Finance

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

- Project: Tethys Finance (`tethys-finance`)
- Website: [https://tethys.exchange/](https://tethys.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: metis
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $143,467.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Tethys Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across metis. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe0bfe6...ff9c04` | ⚠️ Unaudited |
| CDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x558f62...db7660` | ⚠️ Unaudited |
| CosmicPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x388474...87c796` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0a6d6a...b958e9` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x15294f...93c63b` | ⚠️ Unaudited |
| MasterChef | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-258548 | `0x54a8fb...241e21` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x96a3db...ef687c` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x855b69...4b636f` | ⚠️ Unaudited |
| OlympusProFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8ff40b...32c505` | ⚠️ Unaudited |
| OlympusProFactoryStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4c87b1...af028c` | ⚠️ Unaudited |
| OPSubsidyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe02ae2...a47509` | ⚠️ Unaudited |
| OptiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe6b6e9...ee1988` | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x52cd63...4466c1` | ⚠️ Unaudited |
| SphereSubsidyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x731076...4eec55` | ⚠️ Unaudited |
| StakedETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2dda3c...c99826` | ⚠️ Unaudited |
| StakedMETIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0c5dad...a5d97e` | ⚠️ Unaudited |
| StakedUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x63d4ef...12e79f` | ⚠️ Unaudited |
| StyxPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xea1aac...a89c4b` | ⚠️ Unaudited |
| Tethys | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-258549 | `0x69fdb7...1f43f3` | ⚠️ Unaudited |
| TethysChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5bfe0d...8bea96` | ⚠️ Unaudited |
| TethysMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce202c...340702` | ⚠️ Unaudited |
| TethysPadToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1f25ee...07b9bf` | ⚠️ Unaudited |
| TethysPartnershipRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x101aae...efbd0a` | ⚠️ Unaudited |
| TethysRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe779ef...e66522` | ⚠️ Unaudited |
| TethysTemple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5d0cef...26e20a` | ⚠️ Unaudited |
| TokenTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x46db4e...8ca600` | ⚠️ Unaudited |
| TrackAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdca334...9092e8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| native | 24 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

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
