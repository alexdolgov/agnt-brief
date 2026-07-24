# Agentic Audit Brief: GT3

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

- Project: GT3 (`gt3`)
- Website: [https://dapp.gt3.finance/](https://dapp.gt3.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: polygon
- Contract surface: 16 unique implementations (17 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $667,421.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for GT3 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 16
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x887c599a51e3af7b103a4d7d1f74cc03169453e6` | ⚠️ Unaudited |
| GT3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x06737d16ad9c1e41aa44fee2a952b26723b20673`; polygon `0x9ba5144a9af48636107893e4fbec6d88d14289e3` | ⚠️ Unaudited |
| GT3Bribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c1559907b333f4368af0d3bb4b7fa838b8815f0` | ⚠️ Unaudited |
| GT3BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4b64cad3899d8b92e97690b0146e3c0239671e0` | ⚠️ Unaudited |
| GT3Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78426512c9058f40510eee552e1395f4e65ed4ed` | ⚠️ Unaudited |
| GT3GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b66667cc9735ec607cb3aa0fd65d29fb0556bb7` | ⚠️ Unaudited |
| GT3Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2353baa5e6c32bccb8a46b94a8092351df88c51c` | ⚠️ Unaudited |
| GT3Rebase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb896a917750db189bd004376c9a104cbc7f8f94e` | ⚠️ Unaudited |
| GT3Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x003c9f0f92031a549d0294e28084db20f912e543` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57df89e8582db18b21f5eacf31d84685a9e094c1` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x949107c541e303239cfdac63dca30321e27ec2f1` | ⚠️ Unaudited |
| PairFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5f8512ad1843bc10160125ac82161851e6b6853` | ⚠️ Unaudited |
| PairFeesFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc07de41a1093685ac0435ca70141c27d5d44df25` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x266e80a3777a029db9400628de64d3fa758345c3` | ⚠️ Unaudited |
| xGT3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fda8c8dc7629c7c03391101fdac414ce588127c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc24566c1dd9f16bb4763c46b1fabc9c3faae24fb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 2
- Live contracts: 0
- Unknown liveness contracts: 2
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| polygon | unverified unclassified | UnnamedContract<br>`0x9ba5144a9af48636107893e4fbec6d88d14289e3` | non_address_book | unknown | unknown | unverified | n/a | `0xb990d69d7a139ca45be6c307c31992d1ac5296dd` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc24566c1dd9f16bb4763c46b1fabc9c3faae24fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb990d69d7a139ca45be6c307c31992d1ac5296dd` |

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
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

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
