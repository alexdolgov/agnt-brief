# Agentic Audit Brief: BTCFi

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

- Project: BTCFi (`btcfi`)
- Website: [https://btcfi.one](https://btcfi.one)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 11 unique implementations (16 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,990,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BTCFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 11
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| ERC20_Bridged | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e9070b8a8dbbc6cad6b6d029a5c6f6a653b74a9`; base `0xe4b20925d9e9a62f1e492e15a81dc0de62804dd4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x5d964ec530f989de6128efa22837cfb26095cbfd) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4f7ab59b5ac112970f5dd66d8a7ac505c8e5e08b`; base `0x5d964ec530f989de6128efa22837cfb26095cbfd` | ❓ Unverified |
| Proxy (impl: 0x98e266bdb0eedd38bf45232b9316959ad0aad90c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4c7a44f3fb37a53f33d3fe3ccde97a444f105239`; base `0x98e266bdb0eedd38bf45232b9316959ad0aad90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26fce52a077b4f1dbd7c920b6f23a1d9d18dddbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55506bcc5fa9b2e702848aa110b5a6987a735060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x872b347cd764d46c127ffefbcab605fff3f3a48c`; base `0xf549e4b5b4cb7fd4e83b8aa047c742c06d527429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9ce202ebf6de9dfa728df770cbfba91e27ebd2f1`; base `0xae172d8c5e428d4b7c70f9e593b207f9dac9bf3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa4ad5acf2d6dcf42e4b5bf606efff714fdb4200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac1552e30857a814a225baa81145bcb071b46ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacf3102b3e125fbd79087dab5d1199ebcd45eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeedab47dfbc7564cd8eb314bda33405ac9852326` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 15
- Live contracts: 0
- Unknown liveness contracts: 15
- Source-verified contracts: 2
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=2, unverified unclassified=13

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | source verified unclassified | ERC20_Bridged<br>`0x6e9070b8a8dbbc6cad6b6d029a5c6f6a653b74a9` | non_address_book | unknown | unknown | verified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | source verified unclassified | TransparentUpgradeableProxy<br>`0xe4b20925d9e9a62f1e492e15a81dc0de62804dd4` | non_address_book | unknown | unknown | verified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | 0x5d964ec530f989de6128efa22837cfb26095cbfd<br>`0x4f7ab59b5ac112970f5dd66d8a7ac505c8e5e08b` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | 0x872b347cd764d46c127ffefbcab605fff3f3a48c<br>`0xf549e4b5b4cb7fd4e83b8aa047c742c06d527429` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | 0x98e266bdb0eedd38bf45232b9316959ad0aad90c<br>`0x4c7a44f3fb37a53f33d3fe3ccde97a444f105239` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | 0x9ce202ebf6de9dfa728df770cbfba91e27ebd2f1<br>`0xae172d8c5e428d4b7c70f9e593b207f9dac9bf3e` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0x26fce52a077b4f1dbd7c920b6f23a1d9d18dddbe` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0x5d964ec530f989de6128efa22837cfb26095cbfd` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0x872b347cd764d46c127ffefbcab605fff3f3a48c` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0x98e266bdb0eedd38bf45232b9316959ad0aad90c` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0x9ce202ebf6de9dfa728df770cbfba91e27ebd2f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0xaa4ad5acf2d6dcf42e4b5bf606efff714fdb4200` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0xac1552e30857a814a225baa81145bcb071b46ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0xacf3102b3e125fbd79087dab5d1199ebcd45eef5` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |
| base | unverified unclassified | UnnamedContract<br>`0xeedab47dfbc7564cd8eb314bda33405ac9852326` | non_address_book | unknown | unknown | unverified | n/a | `0xb8b72f96aba236c69c29a12f554f92137b680ea8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [theori-audit-rev-1.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-1.0.pdf) | Theori | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20670] theori-audit-rev-1.0.pdf — no match: The provided text is a mathematical description of a reward lane system, not an audit report. No contract names, file paths, or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [20670] theori-audit-rev-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
