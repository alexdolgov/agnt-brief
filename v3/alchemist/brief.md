# Agentic Audit Brief: Alchemist

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

- Project: Alchemist (`alchemist`)
- Website: [https://www.alchemist.wtf](https://www.alchemist.wtf)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $184,230.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Alchemist. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 5 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: eip1271 (1), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), uniswap (3)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 25
- Raw deployments: 25
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Alchemist | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226133 | `0x88acdd2a6425c3faae4bc9650fd7e27e0bebb7ab` | ⚠️ Unaudited |
| Aludel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d415189949d913264a454f57f4279ad66cb24d` | ⚠️ Unaudited |
| Crucible | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226131 | `0x18cc48140cfec90cef0035761d56d2d0ff3a110f` | ⚠️ Unaudited |
| CrucibleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e0395cfb4f39bef66dbcd5bd93cca4e9273d56` | ⚠️ Unaudited |
| EtherTulip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5fbd81cef9aba7464c5f17e529444918a8ecc57` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30642caaf2a2b3f7ef3e7e891d9132340a92f1ff` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226134 | `0x89d2d92eace71977dd0b159062f8ec90ea64fc24` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226135 | `0xf016fa84d5f3a252409a63b5cb89b555a0d27ccf` | ⚠️ Unaudited |
| StreamETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58a2119ac17610718430774db0182bd6b375c36` | ⚠️ Unaudited |
| StreamV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35342016abce65720024aaaa61b4f7a0dd8463ca` | ⚠️ Unaudited |
| TokenManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226132 | `0x1c428a75181bc25509af3a5b7faee97b4b6d3562` | ⚠️ Unaudited |
| TransmuterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb772ce9f14fc7c7db0d4525adb9349fbd7ce456a` | ⚠️ Unaudited |
| TulipBidding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc11dbb4dbc2913650000e2eab4a3db44d2eb6e7c` | ⚠️ Unaudited |
| TulipFloorBidding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ab332dd48f35ebd227708ef381c946c4959eb6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37914173864b68feb61ac84d1670d6abc1b09559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e54af5423e30c875aa61e57a021146464a1abf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x93c31fc68e613f9a89114f10b38f9fd2ea5de6bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x979e2fde487534be3f8a41cd57f11ef9e71cdc1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa58f22e0766b3764376c92915ba545d583c19dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69cf6b2f44e67a7bea652a6f73e72bb163d3d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea5d89492407284b207b1430fac8782df8d3ef09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xebf421c83069143f3bd29a5c690df97cc261e49c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8958634163d2acb409bbb8d3e1e22148f30a8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa9f0504aad1f72fd88ae26d0b6a053c4b8a7915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1e4f4c404bdcca62367da91e63d89a4d03bb7f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 8
- Live contracts: 0
- Unknown liveness contracts: 8
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=7

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x979e2fde487534be3f8a41cd57f11ef9e71cdc1a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0x37914173864b68feb61ac84d1670d6abc1b09559` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0x76e54af5423e30c875aa61e57a021146464a1abf` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0xe69cf6b2f44e67a7bea652a6f73e72bb163d3d69` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0xea5d89492407284b207b1430fac8782df8d3ef09` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0xf8958634163d2acb409bbb8d3e1e22148f30a8ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0xfa9f0504aad1f72fd88ae26d0b6a053c4b8a7915` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |
| unverified unclassified | UnnamedContract<br>`0xff1e4f4c404bdcca62367da91e63d89a4d03bb7f` | non_address_book | unknown | unknown | unverified | n/a | `0xf1ba76d490183a10b29f4dfc89d84c1f9b41dd3d` |

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
| native | 14 |
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
