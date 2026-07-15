# Agentic Audit Brief: MantisSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MantisSwap (`mantisswap`)
- Website: [https://mantissa.finance](https://mantissa.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mode, polygon, polygon-zkevm
- Contract surface: 56 unique implementations (83 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $182,787.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MantisSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across mode, polygon, polygon-zkevm. Structural roles: 7 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (7), supporting (2), core (1)
- Contract kinds: contract (10)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GnosisSafeProxy (`0x56dc54...b95e71`, chain 137)
- MNT (`0xe92175...eeae04`, chain 137)
- UnnamedContract (`0x12d41b...d98215`, chain 1101)
- UnnamedContract (`0x375488...e736bf`, chain 1101)
- UnnamedContract (`0x3b92b5...7073f4`, chain 1101)
- UnnamedContract (`0x4af97f...db3e77`, chain 1101)
- UnnamedContract (`0x9b7bce...aefe4b`, chain 1101)
- UnnamedContract (`0xfe825c...3947a8`, chain 1101)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 45 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 11 of 56 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/22
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 56
- Raw deployments: 83
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 9.1% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterMantis | unknown | project_anchor | own_supporting | 1 | polygon | unit-388878 | 2 deployments: polygon `0x19400d...5bb32b`; polygon `0x2c1ded...8b6d1e` | ✅ Audited |
| Pool | unknown | project_anchor | own_supporting | 1 | polygon | unit-388881 | 2 deployments: polygon `0x62ba5e...7166ad`; polygon `0xbaef01...ab8f66` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-388879 | `0x56dc54...b95e71` | ⚠️ Unaudited |
| LP | unknown | project_anchor | own_supporting | 3 | polygon | unit-388880 (3 proxies) | 4 deployments: polygon `0x4b3bfc...23e64b`; polygon `0x977e41...01906c`; polygon `0xe03aec...13b889`; polygon `0xe8a1ea...ce1820` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd4cd95...400ca3` | ⚠️ Unaudited |
| MasterMantis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3dcf3b...1995fc` | ⚠️ Unaudited |
| MNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x1456ff...5a3278`; polygon `0xaf30ce...43333b`; polygon `0xe8fc92...82cb7f` | ⚠️ Unaudited |
| MNT | unknown | project_anchor | own_supporting | 0 | polygon | unit-388877 | `0xe92175...eeae04` | ⚠️ Unaudited |
| MNTS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e1bf9...9a0086` | ⚠️ Unaudited |
| MockString | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e593f...5448f0` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: polygon `0x69928a...0c6906`; mode `0x20a588...dec13e` | ⚠️ Unaudited |
| PoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12e999...a62098` | ⚠️ Unaudited |
| PoolHelper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2202d5...8aa5bb` | ⚠️ Unaudited |
| PoolVolatile | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe03aec...13b889` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x3dcf3b...1995fc`; mode `0x6962f8...c29139` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x10a7d5...0401c5`; polygon `0x64522c...9b734f`; polygon `0xbb9190...a3ddd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x12d41b...d98215`; polygon `0x153e43...9c9cb9`; polygon `0x3b92b5...7073f4`; polygon `0x9b7bce...aefe4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x20a588...dec13e`; polygon `0x714023...dbc896` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2adedc...0c1f80`; polygon `0xfcd302...523130` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8997e7...d7b448`; polygon `0xda4f88...82ba41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x967f59...11def8`; polygon `0xd4cd95...400ca3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 10 deployments: mode `0x12d41b...d98215`; mode `0x153e43...9c9cb9`; mode `0x4af97f...db3e77`; mode `0x4b3bfc...23e64b`; mode `0x7bcad0...d73ccb`; mode `0x8997e7...d7b448`; mode `0x967f59...11def8`; mode `0xa56b52...caafb4`; mode `0xda4f88...82ba41`; mode `0xe8a1ea...ce1820` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0737ac...d4ceec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16f8c8...effd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x187b34...fe3806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b4d15...336779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b9914...3037c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2bca...198fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x472469...c4d512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4af97f...db3e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f3fd2...0c4501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x586f03...3cbe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6962f8...c29139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b2399...fcc5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c2ca2...de15fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc18949...561b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9c7ea...b15a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdbd54...5e3261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5ad5d...cebe73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4bb53...39f7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8a8ea...813a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf45bf7...dfd33d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388871 | `0x12d41b...d98215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388872 | `0x375488...e736bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388873 | `0x3b92b5...7073f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388874 | `0x4af97f...db3e77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388875 | `0x9b7bce...aefe4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388876 | `0xfe825c...3947a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x16f8c8...effd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b4d15...336779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2c1ded...8b6d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x62ba5e...7166ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x714023...dbc896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x977e41...01906c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbb9190...a3ddd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf45bf7...dfd33d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-MantisSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd](https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13459] PeckShield-Audit-Report-MantisSwap-v1.0.pdf — matched: Contracts extracted from findings targets. No explicit scope table found, but contracts are clearly audited.
- [13460] omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd — matched: Extracted 10 contracts from the 'Contracts Assessed' table. Audit date is the latest commit date (August 12th 2023) from the revision table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | veMNT | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | Marketplace | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | MasterMantis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2c1ded...8b6d1e` — deployed 2023-03-20 13:49:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | Rewarder | unmatched — not counted | — | Target in finding PVE-003 | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | LP | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x4b3bfc...23e64b` — deployed 2023-03-20 13:50:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe8a1ea...ce1820` — deployed 2023-03-20 13:50:36+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe03aec...13b889` — deployed 2023-03-20 13:50:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | MNTS | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Marketplace | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | MasterMantis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2c1ded...8b6d1e` — deployed 2023-03-20 13:49:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Pool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ba5e...7166ad` — deployed 2023-03-20 13:50:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | PoolHelper | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | PoolVolatile | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Rewarder | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Vesting | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | veMNT | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x4b3bfc...23e64b` | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe92175...eeae04` | MNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 10 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
