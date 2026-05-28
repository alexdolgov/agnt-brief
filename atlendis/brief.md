# Agentic Audit Brief: Atlendis

⚠️ Lifecycle status: DECLINING - TVL dropped 0.3% over 90 days

## Project Overview

- Project: Atlendis (`atlendis`)
- Lifecycle: declining (Tier 0, 99% below peak)
- Generated: 2026-05-28T15:39:15.708Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: polygon
- Contract surface: 43 unique implementations (106 raw deployments)
- DeFi Llama TVL: $10,993,274.00
- On-chain TVL (included contracts): $4,280,776.69
- TVL by chain: Polygon $4,280,776.69

## Project Description

Atlendis is a decentralized protocol enabling uncollateralized lending, primarily for real-world assets (RWA). It allows borrowers to access liquidity without posting collateral, while lenders earn yield by providing funds to borrower-specific pools.

### Architecture

The protocol consists of a single product family, Atlendis V1, where BorrowerPools manages lending logic, AToken represents lender deposits, and TokenPolygonUpgradeableNameable likely serves as the debt token. Supporting proxies and the ZeroYieldProvider handle upgrades and yield routing.

## Audit Coverage Summary

- Verified implementations audited: 2/14 (14.3%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 43
- Raw deployments: 106
- Audits discovered: 5
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $4,280,776.69
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,280,776.69 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 14.3% | 2022-05 |
| unknown | Tier 2 | 2 | 14.3% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BorrowerPools | core_logic | polygon | 3 deployments: polygon [`0x8d3da2...bace7c`](./contracts/polygon-137/0x8d3da26f8301dea18197e4c3146d8cde3ebace7c/); polygon `0xa5a520...85d2b3`; polygon `0xbc13e1...f10b1f` | ✅ Audited |
| PoolLogic | core_logic | polygon | [`0xd2b855...4ed5fd`](./contracts/polygon-137/0xd2b8552104cf999e0eead79800f0ff08cd4ed5fd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AToken | token | polygon | 2 deployments: polygon [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/); polygon `0x60d55f...885cec` | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | polygon | [`0xe0b52e...057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | ⚠️ Unaudited |
| PoolCustodian | core_logic | polygon | 8 deployments: polygon [`0x27cc24...689cfe`](./contracts/polygon-137/0x27cc24ee0ec290f914ba23831e490f406d689cfe/); polygon `0x78ca79...6bb9e2`; polygon `0xa5b0e0...491af2`; polygon `0xad8620...14acbc`; polygon `0xb9f8fc...65a033`; polygon `0xd3f7a5...8bb79b`; polygon `0xd53c78...dfbdc0`; polygon `0xdfcfc2...033432` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | polygon | 11 deployments: polygon [`0x08b38f...6114ee`](./contracts/polygon-137/0x08b38fa7cfc68894953f1c9fa8ed60091e6114ee/); polygon `0x0fe8b1...b37a04`; polygon `0x101f2d...6cb8e7`; polygon `0x47e433...ddfbff`; polygon `0x4d5fa3...deab3b`; polygon `0x74597f...b418aa`; polygon `0xbe7e43...37e84e`; polygon `0xc172b7...21b47b`; polygon `0xc1db27...24d7f6`; polygon `0xd63aef...8b831a`; polygon `0xf3c0e0...743c2d` | ⚠️ Unaudited |
| AtlendisTeamToken | token | polygon | 3 deployments: polygon [`0x342d06...07d85e`](./contracts/polygon-137/0x342d065f2774c85a06f3201380046a5d0007d85e/); polygon `0xa3e649...c9850e`; polygon `0xd16304...ffcfa3` | ⚠️ Unaudited |
| AtlendisToken | token | polygon | 2 deployments: polygon [`0x4bfd03...7d5931`](./contracts/polygon-137/0x4bfd034ed5e1dcc24b20db1a4910cb2f777d5931/); polygon `0xf68146...e37043` | ⚠️ Unaudited |
| EIP173Proxy | unknown | polygon | 20 deployments: polygon [`0x11f748...70c659`](./contracts/polygon-137/0x11f7481ae0e234fc4e476fac69b4537a1370c659/); polygon `0x1c5c4d...29b740`; polygon `0x2adf5e...5813b5`; polygon `0x2bef20...0eeca9`; polygon `0x2e05d6...b482fd`; polygon `0x5b2866...aa09f2`; polygon `0x5d96dc...f52681`; polygon `0x6be510...a47557`; polygon `0x743c39...0f7622`; polygon `0x7b5a61...3068af`; polygon `0x8135dc...a11397`; polygon `0x89e2fe...ef8773`; polygon `0x8c25b0...e4d4ed`; polygon `0x9d2d70...bef6bb`; polygon `0x9d4977...1d0ef9`; polygon `0xb1ad31...3c321e`; polygon `0xc89ece...5a2c4e`; polygon `0xd800e2...86cb04`; polygon `0xd8764c...ccbb83`; polygon `0xe3708d...83a122` | ⚠️ Unaudited |
| NeutralAdapter | adapter | polygon | 8 deployments: polygon [`0x5715d6...5f9cb4`](./contracts/polygon-137/0x5715d67eb1942ad59e060473c9153af7015f9cb4/); polygon `0x6534b0...685414`; polygon `0x7aca29...54e701`; polygon `0xb7f711...940a04`; polygon `0xc13b04...2d6268`; polygon `0xc513b8...dde7ca`; polygon `0xdaacce...fad2c1`; polygon `0xf9ea10...397ad5` | ⚠️ Unaudited |
| PositionDescriptor | periphery | polygon | 7 deployments: polygon [`0x61b243...e77eb3`](./contracts/polygon-137/0x61b2433e872a45e4dbe93ff1631776e022e77eb3/); polygon `0x64a697...af8cd1`; polygon `0x88bb21...9e3361`; polygon `0x98d2d8...6d680b`; polygon `0x9df762...f27213`; polygon `0xdeb0cc...542c65`; polygon `0xe0b569...4cb325` | ⚠️ Unaudited |
| PositionManager | governance | polygon | 6 deployments: polygon [`0x093329...a9668c`](./contracts/polygon-137/0x0933291b338824d437e8320006a9db1b7da9668c/); polygon `0x314083...868286`; polygon `0x50127f...ff72b2`; polygon `0x55e4e7...bd73e9`; polygon `0xcfa8f8...a71d23`; polygon `0xf732e1...a24374` | ⚠️ Unaudited |
| VestingWalletFactory | operational_periphery | polygon | [`0x7f0e10...b6a070`](./contracts/polygon-137/0x7f0e10497d35d782e72a7caf716fa96687b6a070/) | ⚠️ Unaudited |
| ZeroYieldProvider | unknown | polygon | 4 deployments: polygon [`0x2fa375...8639fd`](./contracts/polygon-137/0x2fa375961a0cb525db0f00af4e081a806a8639fd/); polygon `0xbbe7dd...3487fc`; polygon `0xd0f5ff...4d70b4`; polygon `0xe759d9...1c1a95` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x035c63...3467d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1bbf39...84bfe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2031b5...6af622` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x21c5b9...e8d101` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3be05b...2e6355` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3cb1f4...904de0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x43cc9f...d8a6b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5a4ab9...b71e2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5fbf0c...1fdb5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x644325...059deb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x69a942...62ac67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8ab395...bfd59c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x97fef6...b958dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9da848...30aedc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa4c0ef...744748` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa9e2c0...f4806e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadae72...8701e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaeb763...4ddf47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb40436...9575d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb74aae...741a22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe49b4...61cc4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc18c30...b30bc6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc3e63b...298315` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc9dcf6...228fb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xccc1a8...855d06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcd1601...80ed94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd14f97...f71253` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdcfb15...7f1bc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8a484...b37a1c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 4 | high |
| [atlendis-audit-report.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 4 | high |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x27cc24...689cfe`](./contracts/polygon-137/0x27cc24ee0ec290f914ba23831e490f406d689cfe/) | PoolCustodian | core_logic | $1.00 | Verified native implementation with $1.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08b38f...6114ee`](./contracts/polygon-137/0x08b38fa7cfc68894953f1c9fa8ed60091e6114ee/) | AtlendisLockdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x342d06...07d85e`](./contracts/polygon-137/0x342d065f2774c85a06f3201380046a5d0007d85e/) | AtlendisTeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4bfd03...7d5931`](./contracts/polygon-137/0x4bfd034ed5e1dcc24b20db1a4910cb2f777d5931/) | AtlendisToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5715d6...5f9cb4`](./contracts/polygon-137/0x5715d67eb1942ad59e060473c9153af7015f9cb4/) | NeutralAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x61b243...e77eb3`](./contracts/polygon-137/0x61b2433e872a45e4dbe93ff1631776e022e77eb3/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x093329...a9668c`](./contracts/polygon-137/0x0933291b338824d437e8320006a9db1b7da9668c/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7f0e10...b6a070`](./contracts/polygon-137/0x7f0e10497d35d782e72a7caf716fa96687b6a070/) | VestingWalletFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Zero-match audit list:

- [7050] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7051] 0002-metadata-manifest-and-pull-command.md
- [7052] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
