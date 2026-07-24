# Agentic Audit Brief: Landshare

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Landshare (`landshare`)
- Website: [https://landshare.io](https://landshare.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 19 unique implementations (19 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $646,020.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Landshare. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 19
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

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoLandVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6233ffeef97d08db2c763f389eebd9d738e4d4a3` | ⚠️ Unaudited |
| DSSwap_Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89bad177367736c186f7b41a9fba7b23474a1b35` | ⚠️ Unaudited |
| LandMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c4e4492e0ed41e41cffa59bd5e3189f92faca43` | ⚠️ Unaudited |
| LandshareAPIConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61f8c9fe835e4ca722db3a81a2746260b0d77735` | ⚠️ Unaudited |
| LandshareSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e8127fe9f832b22a179ed294009357d3fdce833` | ⚠️ Unaudited |
| LandshareToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-244446 | `0xa73164db271931cf952cbaeff9e8f5817b42fa5c` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f9458892fb114328bc675e11e71ff10c847f93b` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13f80c53b837622e899e1ac0021ed3d1775caefa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0df6378df2a43f8490c85dc69c2786e06ed6be76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35c7967e2d5d6341c51bfe9550f6402c84245868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41827ac86761760e0b303ff523d6de8f952129a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x668b069fdc5de08161ead49d7697c2ee9f7883fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99402838aecf77eba0dadd060ca34fbbe5a493b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9d986a3f147212327dd658f712d5264a73a1fdb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa45179005ae45989940175cbde6ee08753d28838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0c479e3524660bb45f799addf20a06e56a993d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc5d3344bf7820b3b227fddbca163a535e365ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd420633cfb63f35f12818b9b3df463c7459a12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3e818d4e718d2f5a63dffd53fd734f1e441b731` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 10
- Live contracts: 0
- Unknown liveness contracts: 10
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=10

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0df6378df2a43f8490c85dc69c2786e06ed6be76` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0x35c7967e2d5d6341c51bfe9550f6402c84245868` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0x41827ac86761760e0b303ff523d6de8f952129a3` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0x668b069fdc5de08161ead49d7697c2ee9f7883fa` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0x99402838aecf77eba0dadd060ca34fbbe5a493b0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2d333fd58d6fc35ebb8d6b287b7820a4f1b4e2` |
| unverified unclassified | UnnamedContract<br>`0xa45179005ae45989940175cbde6ee08753d28838` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0xd0c479e3524660bb45f799addf20a06e56a993d2` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0xdc5d3344bf7820b3b227fddbca163a535e365ecb` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |
| unverified unclassified | UnnamedContract<br>`0xdd420633cfb63f35f12818b9b3df463c7459a12d` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2d333fd58d6fc35ebb8d6b287b7820a4f1b4e2` |
| unverified unclassified | UnnamedContract<br>`0xe3e818d4e718d2f5a63dffd53fd734f1e441b731` | non_address_book | unknown | unknown | unverified | n/a | `0x2451cfbfd7410a54790e7ccb8ef06c98743cebb5` |

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
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

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
