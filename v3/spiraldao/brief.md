# Agentic Audit Brief: SpiralDao

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SpiralDao (`spiraldao`)
- Website: [https://spiral.farm](https://spiral.farm)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, zksync-era
- Contract surface: 66 unique implementations (81 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,375,050.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SpiralDao. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across ethereum, zksync-era. Structural roles: 11 core, 11 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (11), unclassified (11)
- Contract kinds: contract (22)
- Detected standards: erc20 (4), ownable (4), erc20permit (2)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 22; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 31 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 66
- Raw deployments: 81
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| _ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256492 | `0x3fe5ea...a0c59f` | ⚠️ Unaudited |
| _ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256503 | `0xae3f25...bf4f60` | ⚠️ Unaudited |
| _ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256506 | `0xb6ab0d...902034` | ⚠️ Unaudited |
| Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa2cc6...9a0ab0` | ⚠️ Unaudited |
| AuraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcada31...ac9e51` | ⚠️ Unaudited |
| AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767609...c38f6f` | ⚠️ Unaudited |
| Coil | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-256498 | `0x823e1b...1ce918` | ⚠️ Unaudited |
| GnosisSafe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256507 | `0xc47ec7...209639` | ⚠️ Unaudited |
| GnosisSafe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256510 | `0xf14efc...361c38` | ⚠️ Unaudited |
| ITO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1cde93...fa8adc`; ethereum `0x2bc00d...209c9d`; ethereum `0x40d81c...478e65`; ethereum `0xa65f16...e86261`; ethereum `0xffd19e...77a0aa` | ⚠️ Unaudited |
| LiquidLockerMAV | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256502 | `0xa2ab3f...dbb9d5` | ⚠️ Unaudited |
| LiquidLockerMAVv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x06d2d8...e790b8`; ethereum `0x2b3088...a2eb44`; ethereum `0x4cf8b3...07c09d`; ethereum `0x78c056...e2b5a2`; ethereum `0xe0d341...bf5622` | ⚠️ Unaudited |
| LockerDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x648868...e1e95a`; ethereum `0x811c56...f08a9b` | ⚠️ Unaudited |
| LockerMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256521 | 2 deployments: ethereum `0x0b3bac...96952e`; ethereum `0x58587f...00341c` | ⚠️ Unaudited |
| LockerMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbdaf82...a10047`; ethereum `0xe68d41...6bc748` | ⚠️ Unaudited |
| LockerMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256509 | `0xdd5f42...60b3ab` | ⚠️ Unaudited |
| LockerMasterSDT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256522 | 2 deployments: ethereum `0x4a6854...6748a1`; ethereum `0x90a62d...6d41b9` | ⚠️ Unaudited |
| LockerStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x601bd4...587dff`; ethereum `0xab0da8...df8451` | ⚠️ Unaudited |
| LockerToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256493 | `0x488b7c...acfb62` | ⚠️ Unaudited |
| LockerToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256508 | `0xc54ff2...3bf7d9` | ⚠️ Unaudited |
| LockerTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd93822...8f59dd`; ethereum `0xea0c89...9dae4d` | ⚠️ Unaudited |
| MasterMind | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x087fd5...d26804` | ⚠️ Unaudited |
| MasterMind | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256511 | `0xface8d...9df65e` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0885ab...c14b42` | ⚠️ Unaudited |
| Rewarder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256496 | `0x72614b...22b347` | ⚠️ Unaudited |
| Rewarder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256505 | `0xb194c9...c3a1f1` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3c96...298a44` | ⚠️ Unaudited |
| RewarderVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256490 | `0x21fb75...2ec25f` | ⚠️ Unaudited |
| RewarderVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256491 | `0x31878e...6f415f` | ⚠️ Unaudited |
| RewarderVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256504 | `0xaee1ad...0d71fd` | ⚠️ Unaudited |
| RewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c2149...fcf263`; ethereum `0x886ac3...9fa19c` | ⚠️ Unaudited |
| Spiral | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-256499 | `0x85b6ac...4b9180` | ⚠️ Unaudited |
| SpiralMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa491d6...4edafe` | ⚠️ Unaudited |
| SpiralRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe67f...9f3db3` | ⚠️ Unaudited |
| SpiralRouterV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256489 | `0x0340d9...058c3b` | ⚠️ Unaudited |
| SpiralRouterV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256512 | `0xfb1371...0a50e8` | ⚠️ Unaudited |
| SpiralRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2280df...83e22b` | ⚠️ Unaudited |
| SpiralStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256495 | `0x6701e7...4b4943` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a05fc...d61974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b9de...90d216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4621...7719a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad11a...df9b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56cc0a...2cc91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56fc56...7fb80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a544...4ee9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ae737...cbd6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b07d5...061ac5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256497 | `0x7fc5f1...9ed55c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256500 | `0x899a79...3755e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c181...ed73af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8ae5...113293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256501 | `0x943bde...0222fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9362c...325bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1789...271309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb79fd7...a8f837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc60879...a9c944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc242b...964bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0e97...55e8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f03c...295015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec461f...2917a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256513 | `0x010067...f8a2ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256514 | `0x125049...14d4e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256515 | `0x1a4258...be9ee7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256516 | `0x348a88...7fee22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256518 | `0x8320df...f4d70f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256519 | `0x9e7daf...6c1e25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Spiral DAO Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Spiral DAO Lockers Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20SDT%20Adapter%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2261] Spiral DAO Security Analysis by Pessimistic.pdf — no match: No reason recorded
- [2262] Spiral DAO Lockers Security Analysis by Pessimistic.pdf — no match: All contracts explicitly listed in scope section on page 3.
- [2263] Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf — no match: Three contracts explicitly listed in scope section on page 3.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Spiral DAO Security Analysis by Pessimistic.pdf | AuraAdapter | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | AuraDelegate | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | COIL | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | ConvexMainAdapter | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | ConvexMainDelegate | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | ConvexSingleAdapter | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | IFO | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | IMasterMind | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | MasterMind | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | Rewarder | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | Spiral | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | SpiralStaking | unmatched — not counted | — | — | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LiquidLockerMAV | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LiquidLockerCRV | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LockerStaking | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LockerMaster | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LiquidLockerMock | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | stLockerTokenMock | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | SafeLocker | unmatched — not counted | — | listed in scope | no |
| Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf | SDT | unmatched — not counted | — | listed in scope | no |
| Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf | LockerMasterSDT | unmatched — not counted | — | listed in scope | no |
| Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf | StakingSDT | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [2261] Spiral DAO Security Analysis by Pessimistic.pdf
- [2262] Spiral DAO Lockers Security Analysis by Pessimistic.pdf
- [2263] Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
