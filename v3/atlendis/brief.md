# Agentic Audit Brief: Atlendis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 4.1% over 90 days

## Project Overview

- Project: Atlendis (`atlendis`)
- Website: [https://www.atlendis.io/](https://www.atlendis.io/)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mode, polygon
- Contract surface: 70 unique implementations (127 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,992,516.00
- On-chain TVL (included contracts): $4,190,297.30
- TVL by chain: Polygon $4,190,297.30

## Project Description

This brief describes the observed EVM deployment and audit surface for Atlendis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across polygon. Structural roles: 11 unclassified, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (11), core (3)
- Contract kinds: contract (14)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x115f10...200e6d`, chain 137)
- UnnamedContract (`0x170876...34d163`, chain 137)
- UnnamedContract (`0x1cd1cd...e7fd0f`, chain 137)
- UnnamedContract (`0x40bec9...833ea3`, chain 137)
- UnnamedContract (`0x541ee1...5d04bf`, chain 137)
- UnnamedContract (`0x9d15d9...4c62df`, chain 137)
- UnnamedContract (`0xa91a5b...37a1c5`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (1 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 53 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 7 of 70 unique; 63 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 70
- Raw deployments: 127
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1a13f4...998b7f` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x60d55f...885cec` | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xe0b52e...057db4` | ⚠️ Unaudited |
| AngleNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x588c06...ba226b`; polygon `0xa124ef...4535da` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x08b38f...6114ee`; polygon `0x0fe8b1...b37a04`; polygon `0x101f2d...6cb8e7`; polygon `0x47e433...ddfbff`; polygon `0xc1db27...24d7f6`; polygon `0xd63aef...8b831a`; polygon `0xf3c0e0...743c2d` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379758 | `0x4d5fa3...deab3b` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379760 | `0x74597f...b418aa` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379764 | `0xbe7e43...37e84e` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379765 | `0xc172b7...21b47b` | ⚠️ Unaudited |
| AtlendisTeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x342d06...07d85e`; polygon `0xd16304...ffcfa3` | ⚠️ Unaudited |
| AtlendisTeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3e649...c9850e` | ⚠️ Unaudited |
| AtlendisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4bfd03...7d5931`; polygon `0xf68146...e37043` | ⚠️ Unaudited |
| BorrowerPools | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379768 | 2 deployments: polygon `0x8d3da2...bace7c`; polygon `0xbc13e1...f10b1f` | ⚠️ Unaudited |
| BorrowerPools | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379762 | `0xa5a520...85d2b3` | ⚠️ Unaudited |
| Boxers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc28b9...21dd1a` | ⚠️ Unaudited |
| EasyLendies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x84fe44...7287f7`; polygon `0xc05d77...954851`; polygon `0xc678d0...3d883c` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: polygon `0x11f748...70c659`; polygon `0x1c5c4d...29b740`; polygon `0x2adf5e...5813b5`; polygon `0x2bef20...0eeca9`; polygon `0x2e05d6...b482fd`; polygon `0x5b2866...aa09f2`; polygon `0x5d96dc...f52681`; polygon `0x6be510...a47557`; polygon `0x743c39...0f7622`; polygon `0x7b5a61...3068af`; polygon `0x8135dc...a11397`; polygon `0x89e2fe...ef8773`; polygon `0x8c25b0...e4d4ed`; polygon `0x9d2d70...bef6bb`; polygon `0x9d4977...1d0ef9`; polygon `0xb1ad31...3c321e`; polygon `0xc89ece...5a2c4e`; polygon `0xd800e2...86cb04`; polygon `0xd8764c...ccbb83`; polygon `0xe3708d...83a122` | ⚠️ Unaudited |
| Lendies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x41064c...033953`; polygon `0x5165ff...642ebe`; polygon `0xfb20ad...0facd9` | ⚠️ Unaudited |
| LowEffortLendies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9feb1...41b746` | ⚠️ Unaudited |
| NeutralAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x5715d6...5f9cb4`; polygon `0x6534b0...685414`; polygon `0x7aca29...54e701`; polygon `0xb7f711...940a04`; polygon `0xc13b04...2d6268`; polygon `0xc513b8...dde7ca`; polygon `0xdaacce...fad2c1`; polygon `0xf9ea10...397ad5` | ⚠️ Unaudited |
| PoolCustodian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x27cc24...689cfe`; polygon `0x78ca79...6bb9e2`; polygon `0xa5b0e0...491af2`; polygon `0xad8620...14acbc`; polygon `0xb9f8fc...65a033`; polygon `0xd3f7a5...8bb79b`; polygon `0xd53c78...dfbdc0`; polygon `0xdfcfc2...033432` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2b855...4ed5fd` | ⚠️ Unaudited |
| PositionDescriptor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379767 | 2 deployments: polygon `0x61b243...e77eb3`; polygon `0x88bb21...9e3361` | ⚠️ Unaudited |
| PositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x64a697...af8cd1`; polygon `0x98d2d8...6d680b`; polygon `0x9df762...f27213`; polygon `0xdeb0cc...542c65`; polygon `0xe0b569...4cb325` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x093329...a9668c`; polygon `0x50127f...ff72b2` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379756 | `0x314083...868286` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379769 | 2 deployments: polygon `0x55e4e7...bd73e9`; polygon `0xf732e1...a24374` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379766 | `0xcfa8f8...a71d23` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfca29...bae6d6` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc0098...0f7616` | ⚠️ Unaudited |
| TokenPolygonUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7660b2...3caa24`; polygon `0x900f71...60ebf1` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | polygon | unit-379757 | `0x40bec9...833ea3` | ⚠️ Unaudited |
| VestingWalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f0e10...b6a070` | ⚠️ Unaudited |
| ZeroYieldProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2fa375...8639fd`; polygon `0xe759d9...1c1a95` | ⚠️ Unaudited |
| ZeroYieldProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xbbe7dd...3487fc`; polygon `0xd0f5ff...4d70b4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x035c63...3467d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379753 | `0x115f10...200e6d` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379754 | `0x170876...34d163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bbf39...84bfe0` | ❓ Unverified |
| UnnamedContract | registry | project_anchor | own_supporting | 0 | polygon | unit-379755 | `0x1cd1cd...e7fd0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2031b5...6af622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21c5b9...e8d101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3be05b...2e6355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cb1f4...904de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43cc9f...d8a6b2` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379759 | `0x541ee1...5d04bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a4ab9...b71e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5fbf0c...1fdb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x644325...059deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69a942...62ac67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ab395...bfd59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97fef6...b958dc` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379761 | `0x9d15d9...4c62df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9da848...30aedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4c0ef...744748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379763 | `0xa91a5b...37a1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9e2c0...f4806e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadae72...8701e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaeb763...4ddf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb40436...9575d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb74aae...741a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe49b4...61cc4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc18c30...b30bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3e63b...298315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9dcf6...228fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccc1a8...855d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd1601...80ed94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd14f97...f71253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcfb15...7f1bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8a484...b37a1c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [atlendis-audit-report.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf — no match: Contracts extracted from findings targets and library references. No file paths provided.
- [7049] atlendis-audit-report.pdf — no match: Scope section explicitly lists core contracts and interfaces. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | BorrowerPools | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-006 | no |
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | PoolsController | unmatched — not counted | — | Target in findings PVE-003, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | PoolLogic | unmatched — not counted | — | Library mentioned in finding PVE-006 | no |
| atlendis-audit-report.pdf | BorrowerPools | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | PoolsSettingsManager | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Position | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | PoolLogic | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Rounding | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IBorrowerManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IBorrowerPools | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPlatformManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPoolsParametersManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPosition | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf
- [7049] atlendis-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
