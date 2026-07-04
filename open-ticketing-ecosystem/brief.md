# Agentic Audit Brief: OPEN Ticketing Ecosystem

## Project Overview

- Project: OPEN Ticketing Ecosystem (`open-ticketing-ecosystem`)
- Website: [https://onopen.xyz](https://onopen.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.014Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: base, ethereum, polygon
- Contract surface: 81 unique implementations (84 raw deployments)
- DeFi Llama TVL: $917,477.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 7 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 84; live-surface contracts included: 84 (9 live, 75 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 81 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 81
- Raw deployments: 84
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| getNFT_ERC721V3 | token | polygon | n/a | [`0x205524...a452f4`](./contracts/polygon-137/0x2055244a719229d669488e389388f2d653a452f4/) | ⚠️ Unaudited |
| GovernanceLockedRevenueDistributionToken | token | ethereum | n/a | 4 deployments: ethereum [`0x3e49e9...9f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/); ethereum `0x686e85...03fc88`; polygon [`0x3e49e9...9f1a04`](./contracts/polygon-137/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/); polygon `0x686e85...03fc88` | ⚠️ Unaudited |
| OPNMigration | operational_periphery | ethereum | n/a | [`0xb4cfd7...dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | ⚠️ Unaudited |
| OPNToken | token | ethereum | n/a | [`0xc28eb2...eb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x9a6d24...a31dbe`](./contracts/base-8453/0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x7844f7...78c2d5`](./contracts/polygon-137/0x7844f79fc841e4f92d974c417031c76f8578c2d5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa5cbf4...bfe97d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb85ef7...91484f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe11201...c9c992` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x07bb75...ad6c00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0bd6ec...99d5bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x141600...f253a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a9c84...7e9465` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f5f80...82d467` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fb372...4e9aed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20d5ac...8f6007` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d2d60...fede44` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x308e44...912b73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3184cf...500f5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33f73f...fe1d32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33fea4...72337c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a91ae...790817` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b4eda...141b51` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c61b9...be8ced` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d0a65...68ffb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3daa28...5e4fa3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f0e86...04b496` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x403091...29c9a5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41e0d1...a0ab6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43ca64...018058` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4436c1...475e54` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bd6a5...99bb54` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x54621a...122443` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x562ed8...fa070e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5793e6...920558` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b4b85...297c25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d7810...8fd19b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62d0e9...27c5ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x63556c...a4ee6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x635ce1...1fbb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66bd48...2f03af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6803d7...5f89a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a9b2f...ca8059` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d25ea...de1a37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81f563...fb3ccd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x899a9c...c0acad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b50f6...335ce4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e7943...82ab27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x906b04...2c87cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa04194...f5a848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa725f3...32305f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5fb86...d3c3c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb26e7...122c46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb80c1...d43dff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd0a1d...1d381c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfa831...2bc903` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc280fe...b0cec5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc15f1...5027a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd6d4e...205882` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcda348...067f79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce5c2e...6883e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf465b...b8e65b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd049c8...7a9f76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd39969...6b1d43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd3f317...9975f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd7f73b...c7b9a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbddc6...d0bf7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf14a9...55d234` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf5bda...b9bcb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe05db4...917d01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe16563...973f04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe226cd...8ad1b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe35357...eccaa5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7defd...36c229` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec73a3...d8a5f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed343a...9dcc17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedd5ed...6a07b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef7c53...5c0ac5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5258f...7aa1bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8e13b...b2a9e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb6971...969899` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking](https://reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking) | yAcademy | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [12-2022-GET-Protocol-Staking-Report.pdf](https://github.com/GETProtocolDAO/locked-revenue-distribution-token/blob/master/audits/12-2022-GET-Protocol-Staking-Report.pdf) | yAcademy | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Archive](https://web.archive.org/web/20230118040323/https://reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking) | yAcademy | Audit | 2022 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x205524...a452f4`](./contracts/polygon-137/0x2055244a719229d669488e389388f2d653a452f4/) | getNFT_ERC721V3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e49e9...9f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/) | GovernanceLockedRevenueDistributionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4cfd7...dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | OPNMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc28eb2...eb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | OPNToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a6d24...a31dbe`](./contracts/base-8453/0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7844f7...78c2d5`](./contracts/polygon-137/0x7844f79fc841e4f92d974c417031c76f8578c2d5/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21323] reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking
- [21324] 12-2022-GET-Protocol-Staking-Report.pdf
- [24311] Archive

Fork inheritance lineage and inherited audits are included when available.
