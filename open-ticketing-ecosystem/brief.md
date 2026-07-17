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
| getNFT_ERC721V3 | token | polygon | n/a | [`0x2055244a719229d669488e389388f2d653a452f4`](./contracts/polygon-137/0x2055244a719229d669488e389388f2d653a452f4/) | ⚠️ Unaudited |
| GovernanceLockedRevenueDistributionToken | token | ethereum | n/a | 4 deployments: ethereum [`0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/); ethereum `0x686e8500b6be8812eb198aabbbfa14c95c03fc88`; polygon [`0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04`](./contracts/polygon-137/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/); polygon `0x686e8500b6be8812eb198aabbbfa14c95c03fc88` | ⚠️ Unaudited |
| OPNMigration | operational_periphery | ethereum | n/a | [`0xb4cfd748b23c103f73c10259171ecc5ef1dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | ⚠️ Unaudited |
| OPNToken | token | ethereum | n/a | [`0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe`](./contracts/base-8453/0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x7844f79fc841e4f92d974c417031c76f8578c2d5`](./contracts/polygon-137/0x7844f79fc841e4f92d974c417031c76f8578c2d5/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb85ef7cba61ea534c058e930aa5a4cab6d91484f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe11201bd3cd4934885f1dd050501a7160dc9c992` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x07bb757a118646956058514f08d4ca1d32ad6c00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0bd6ece2a69c9fb2a823697479678b98fc99d5bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x141600519a1503c51ae15351bd640eee45f253a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a9c84db7311d67a78c571d1694758819f7e9465` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f5f806ce7d699f6588678de591247196182d467` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fb3721f8f4fdb97c717c404b9eb9fbf9b4e9aed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20d5ac6e6223455cec10753d76590f39458f6007` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d2d60864ac782a45cf6f53b03bbf7a29dfede44` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x308e44ca2153c61103b0dc67fd038de650912b73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3184cfd66bf92aa53cebcb0f43a9ddd95f500f5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33f73fe4a9c3ae7bb5f7b1dd29ce8d4b03fe1d32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33fea4895d38ed10f46028adb4fcd0b52872337c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a91aeded517b45fcef1a11d2415131e71790817` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b4edae1f2e1971c716a07fdaf65afb144141b51` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c61b9160e0d3c4bb3d35496ff61d41e34be8ced` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d0a65bb3f1f4ecab81e2dec8a7176b6e568ffb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3daa282179acf78448898c461b951e85785e4fa3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f0e867cd8d82c420517ca2f2d3d036cdf04b496` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40309165fd78650dc82a58e160b3252a4529c9a5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41e0d1701badd8f876df8c35c5d450cfeea0ab6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43ca6448c55d0475e6ee1a4afa9eb56906018058` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4436c1340b17eaa39edae4a34a048230ad475e54` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bd6a50ef217256989ca6a732f706487cf99bb54` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x54621a56291736dbc4c8d0554b695c1582122443` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x562ed85eaa78898584b1e3cea358f13dd0fa070e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5793e6474dc291c3a5874491098dfd8e73920558` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b4b8557161698a7ec343326c64bd378d7297c25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d78104f576250d8d031dee865935359778fd19b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62d0e96fd9b4e22f71cf2d2b930ecd142527c5ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x63556c96bdcd8c080be3f3e9fc934033fda4ee6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x635ce1e651531e52ebb76dcb94e779294b1fbb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66bd488cab7e2b4290eebd43b46906f1232f03af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6803d75fe3a536a28c1d014918b6d870cc5f89a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a9b2f09add558742723abf38f95469e72ca8059` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d25ea705a30dd1a7f449a3540869bd102de1a37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81f5638486c6e7da6b0452ed4f3f029750fb3ccd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x899a9c0b1e299fef747279df99863d8da9c0acad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b50f6c49428ddcb0ba68ed152f189c094335ce4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e794383270792c2ab30632e152c4685f882ab27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x906b04af9c6dd8bb38ae8ad74986db656d2c87cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0419456c83d93c29bb7da1c0b3a42af79f5a848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa725f3c6fce3cc5fc0559490e46d031a8032305f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5fb86e2316a5940082e7566834d0f55c0d3c3c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb26e7dad497aef90d68c00ca80ecb0eaf122c46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb80c19a09309438b0b4a3a52775199e62d43dff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd0a1d995aa3b8462542ab00941b9230dc1d381c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfa831771136917b580999b77776cd06732bc903` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc280fe93c08997f2653baf32c11bc47972b0cec5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc15f1f559c7e8a73640412c89e7e124475027a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd6d4ec724629c15c8beae96c0eb8b7977205882` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcda348ff8c175f305ed8682003ec6f8743067f79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce5c2e8080fb3d90f2ae227ead720d84cd6883e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf465b1fecdd38afa82ba5dd7e041f9d2bb8e65b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd049c8e753eb8bf0346a7c761b952364397a9f76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd39969c590d2556fce9e6779dacb3bcce16b1d43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd3f3171f33d5e7a90739868ee9142f59f99975f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd7f73b87040b106f699dcac62461c82d29c7b9a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbddc6a436d26150b13173ab0a3c343449d0bf7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf14a9844659fb20b52794656e3ed4be0955d234` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf5bda33e5ca96897aad08cfb501a38cc6b9bcb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe05db46a0a9fe18bcf140e37133ec4d65b917d01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe16563b5c5ca5f990eea197efe55b9314e973f04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe226cd24f85d6b22b4da37ee98f7641c438ad1b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe35357e513f0ea7fa344de35bf13ec0c06eccaa5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7defdd3765efab38aae261b1c0d1f65d936c229` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec73a3bc69973ffddbccdaf3a44a4170fcd8a5f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed343a86515f600118450c461ab37bebd99dcc17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedd5ed4f87bca83962abbaa1adab9b84096a07b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef7c53957f5fbb2226f9b96f701f700b785c0ac5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5258f3669c22979984a1f433c0870f8ae7aa1bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8e13b3b62e41da402f892e6346deb646cb2a9e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb69712a3837ac68b1212c5ab686c0e0d3969899` | ❓ Unverified |

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
| polygon | [`0x2055244a719229d669488e389388f2d653a452f4`](./contracts/polygon-137/0x2055244a719229d669488e389388f2d653a452f4/) | getNFT_ERC721V3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/) | GovernanceLockedRevenueDistributionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4cfd748b23c103f73c10259171ecc5ef1dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | OPNMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | OPNToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe`](./contracts/base-8453/0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7844f79fc841e4f92d974c417031c76f8578c2d5`](./contracts/polygon-137/0x7844f79fc841e4f92d974c417031c76f8578c2d5/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
