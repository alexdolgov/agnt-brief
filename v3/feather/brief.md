# Agentic Audit Brief: Feather

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

- Project: Feather (`feather`)
- Website: [https://app.feather.zone/](https://app.feather.zone/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, celo, ethereum, hyperliquid, kaia, plasma, sei, sepolia
- Contract surface: 24 unique implementations (29 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $16,939,129.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Feather. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, base, bsc, celo, cronos, ethereum, etherlink, hyperliquid, kaia, linea, plasma, sei, sepolia. Structural roles: 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (3), supporting (3)
- Contract kinds: contract (6)
- Detected standards: none
- Frameworks: openzeppelin (2), chainlink (1), solmate (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 6; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (6 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 24
- Raw deployments: 29
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-239850 | `0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4` | ⚠️ Unaudited |
| Bundler3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-239854 | `0xf9457356f18a3349bb317ac144c3bcc62e5761ad` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 6 deployments: sei `0x015f10a56e97e02437d294815d8e079e1903e41c`; sei `0x50715ae180ff0ea799dc8ab635c2d876e528bfe8`; sei `0x8e181221d5602d4cf2b87f3a817c0dac680a7223`; sei `0x948fcc6b7f68f4830cd69db1481a9e1a142a4923`; sei `0x94e6a8714f36cd7220560638882fc137ab5eb79c`; sei `0xbd183661d2e8cefa31799fe3a4cc6f2127963dc5` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-239851 | `0x8dea49ec5bd5aeac8bcf96b3e187f59354118291` | ⚠️ Unaudited |
| Morpho | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-239852 | `0xc9cdac20fceaaf616f7eb0bb6cd2c69dcfa9094c` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-239849 | `0x4bd68c2ff3274207ec07ed281c915758b6f23f07` | ⚠️ Unaudited |
| PreLiquidationFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x65ed61058ceb4895b7d62437bacea39b04f6d27b` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-239853 | `0xd878509446be2c601f0f032f501851001b159d6b` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x81c76f62f7e05dec75800150ba5a23f62e2f091f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x58d97b57bb95320f9a05dc918aef65434969c2b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | n/a | `0x9994e35db50125e0df82e4c2dde62496ce330999` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | n/a | `0xeb476f124fad625178759d13557a72394a6f9af5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | `0x6ba8f7039bc7d79c1959cb8e409dff2ba05a133e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xbaa5cc21fd487b8fcc2f632f3f4e8d37262a0842` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x5476aeee80d87649fdd8ee19ea65976f28525f7a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x40bd670a58238e6e230c430bbb5ce6ec0d40df48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5481f54cacdf0aece9f71f2bb2c0a8e44b2d5d81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8c5ddcd3f601c91d1bf51c8ec26066010acaba7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x98cbfe4053ad6778e0e3435943ac821f565d0b03` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | n/a | `0xa6c843fc53aaf6ef1d173c4710b26419667bf6cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb3fe2d5f8af90f194b01db546397058fcebb85d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd011ee229e7459ba1ddd22631ef7bf528d424a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe8ee811c7c9748de2db8c878dc5e32c9dd12dab3` | ❓ Unverified |

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
| native | 4 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 15 |

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
