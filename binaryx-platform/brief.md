# Agentic Audit Brief: Binaryx Platform

## Project Overview

- Project: Binaryx Platform (`binaryx-platform`)
- Website: [https://www.binaryx.com](https://www.binaryx.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-31T07:33:57.545Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: polygon
- Contract surface: 133 unique implementations (234 raw deployments)
- DeFi Llama TVL: $8,639,607.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Binaryx Platform is a real-world asset (RWA) tokenization protocol on Polygon that enables fractional ownership and trading of property-backed tokens. It provides infrastructure for property tokenization, secondary market trading, rewards distribution, and compliance (KYC/access control).

### Architecture

All product families rely on shared infrastructure contracts like AddressesProvider for registry lookups and AccessManager for role-based permissions. Property tokens (BeaconProxies) are created by PropertyFactory and traded on the SecondaryMarket, while RewardsDistributor and CommissionsDistributor handle income flows from those properties.

## Audit Coverage Summary

- Verified implementations audited: 0/25 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 108
- Unique implementations: 133
- Raw deployments: 234
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessManager | governance | polygon | 8 deployments: polygon [`0x021810...c5862c`](./contracts/polygon-137/0x0218108cdf8e923603f6f6f44856248ba6c5862c/); polygon `0x2c1358...926fe0`; polygon `0x490eb3...110adb`; polygon `0x70b85c...ba17b9`; polygon `0x7b0634...f54091`; polygon `0x859343...679329`; polygon `0xd26444...9cef3b`; polygon `0xe4e552...cc35a4` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | 19 deployments: polygon [`0x1835a5...69881a`](./contracts/polygon-137/0x1835a554e16b71e65d5bc302bc78732d0469881a/); polygon `0x1f6b01...80f5f2`; polygon `0x2e6ef0...5e24ee`; polygon `0x3d9ea5...3db5fc`; polygon `0x3fc777...84decd`; polygon `0x455307...17872b`; polygon `0x6436ff...7b1d97`; polygon `0x70b461...067c8f`; polygon `0x7be835...d62f86`; polygon `0x84dfcc...d91020`; polygon `0xc1c820...761099`; polygon `0xca176b...84f0aa`; polygon `0xcb9414...37db8b`; polygon `0xdb710c...e0c174`; polygon `0xddaab2...97ff82`; polygon `0xe2f793...1ce79b`; polygon `0xed7cf8...a07177`; polygon `0xf4bdb4...35321e`; polygon `0xfaa3ef...42591e` | ⚠️ Unaudited |
| Asset | unknown | polygon | 4 deployments: polygon [`0x00bed9...a563e8`](./contracts/polygon-137/0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8/); polygon `0x35af9f...d48cb1`; polygon `0xbdc0a6...06e4dd`; polygon `0xee0d8d...812153` | ⚠️ Unaudited |
| AssetPriceOracle | operational_periphery | polygon | 4 deployments: polygon [`0x99dcc6...bf3338`](./contracts/polygon-137/0x99dcc68f0c58d3b944b29a8701e2421d88bf3338/); polygon `0x9f4389...797e02`; polygon `0xb28a2a...3ffaf6`; polygon `0xcd0c2d...d5f219` | ⚠️ Unaudited |
| BeaconProxy | registry | polygon | 7 deployments: polygon [`0x1e3cf2...0dd69b`](./contracts/polygon-137/0x1e3cf2eeaa6d5973e2da6fe03600ba55870dd69b/); polygon `0x4b1784...2bbbd7`; polygon `0xa07db6...4bfd57`; polygon `0xb2b9f9...78a605`; polygon `0xbde380...ad5d7b`; polygon `0xc1ea0c...0ad4b1`; polygon `0xd55513...e6ada5` | ⚠️ Unaudited |
| BinaryxEarlyAdopter | unknown | polygon | [`0xb65f62...5fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | ⚠️ Unaudited |
| CommissionsDistributor | operational_periphery | polygon | 6 deployments: polygon [`0x0218d6...2ee098`](./contracts/polygon-137/0x0218d60051ba3c8d53fd07141b565864262ee098/); polygon `0x2476d1...f3e2c7`; polygon `0x2a3dcf...c0bcda`; polygon `0x742a72...186d5c`; polygon `0xa756a7...2d708e`; polygon `0xada952...6906ca` | ⚠️ Unaudited |
| CoreManager | governance | polygon | 5 deployments: polygon [`0x27cddd...a0b740`](./contracts/polygon-137/0x27cdddf05d27e8dec3b2d1cde4af2ad22fa0b740/); polygon `0x7c80b7...08407e`; polygon `0x9879cf...23e183`; polygon `0xa1685e...d55235`; polygon `0xc3b4e3...7add75` | ⚠️ Unaudited |
| EventHub | unknown | polygon | [`0xbf65ec...6ca36b`](./contracts/polygon-137/0xbf65ec762fc7b4b466ad614a35a0900c326ca36b/) | ⚠️ Unaudited |
| KycStore | unknown | polygon | 5 deployments: polygon [`0x790895...16bbd6`](./contracts/polygon-137/0x79089537b95a34b38533e865ae0ddfefc516bbd6/); polygon `0x7b6ec8...87d1ed`; polygon `0x9b292a...985e8c`; polygon `0xd93b5e...d97982`; polygon `0xdc7264...5b921c` | ⚠️ Unaudited |
| OffPlan | unknown | polygon | 2 deployments: polygon [`0x3cd17f...64cf3d`](./contracts/polygon-137/0x3cd17fe9c61230493664da7a43ea08562f64cf3d/); polygon `0xab3525...ab57df` | ⚠️ Unaudited |
| OffPlanFactory | registry | polygon | [`0x2d1c07...35ed3f`](./contracts/polygon-137/0x2d1c0726749d7dbcce27ec016868800dd835ed3f/) | ⚠️ Unaudited |
| OffPlanService | unknown | polygon | [`0x9e2eb1...d89312`](./contracts/polygon-137/0x9e2eb1fbb5054fcf69e1a1c3e103e4fffdd89312/) | ⚠️ Unaudited |
| OffPlanUi | unknown | polygon | [`0x9df75d...69cdac`](./contracts/polygon-137/0x9df75d18f77e10ee44cd4b037d9c78378c69cdac/) | ⚠️ Unaudited |
| OracleFactory | operational_periphery | polygon | 4 deployments: polygon [`0x0fee15...14fa2f`](./contracts/polygon-137/0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f/); polygon `0x1eb842...0ff1c2`; polygon `0x861217...1e8c8f`; polygon `0xd8147d...8bbca5` | ⚠️ Unaudited |
| PropertyFactory | registry | polygon | 4 deployments: polygon [`0x1785e5...7ad3d7`](./contracts/polygon-137/0x1785e5efca0bac2098b13aa072598dadeb7ad3d7/); polygon `0x473543...5fdf5f`; polygon `0x5d618c...c0970f`; polygon `0xb7b725...ecabf3` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 9 deployments: polygon [`0x361e4b...79483f`](./contracts/polygon-137/0x361e4bf80d71eca08719dbc778349b0ed179483f/); polygon `0x3864eb...05ec12`; polygon `0x44b51e...32ffea`; polygon `0x54ecb6...3e33d0`; polygon `0x79f53e...6b6f22`; polygon `0x95887b...1fd2eb`; polygon `0xa8bd82...48ebf5`; polygon `0xb4a4db...0711b0`; polygon `0xc84938...30baa6` | ⚠️ Unaudited |
| ReferralsDistribution | unknown | polygon | 5 deployments: polygon [`0x0d692a...48b071`](./contracts/polygon-137/0x0d692a1d1f21327251262270869bbf131348b071/); polygon `0x0fa845...f7cd8e`; polygon `0x24d10c...44c52d`; polygon `0x921afd...52bf3e`; polygon `0xba8312...1c736a` | ⚠️ Unaudited |
| ResellPool | core_logic | polygon | [`0xfa17c2...288e46`](./contracts/polygon-137/0xfa17c21bf7164e26dbe975823b4348adec288e46/) | ⚠️ Unaudited |
| ResellPoolFactory | registry | polygon | [`0x5cce19...7fdba1`](./contracts/polygon-137/0x5cce1934ad84572e688dac601395708cf17fdba1/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | polygon | 11 deployments: polygon [`0x04b472...ad104e`](./contracts/polygon-137/0x04b4728e816a5eba0c7c747617f430ddf9ad104e/); polygon `0x0d067b...d30137`; polygon `0x2e7548...d4b229`; polygon `0x388e11...2e5065`; polygon `0x76867f...86356c`; polygon `0x855567...fef736`; polygon `0x89992f...9d7b0d`; polygon `0xc932cf...786368`; polygon `0xdbbb9b...fbafe0`; polygon `0xecac95...0df3f7`; polygon `0xfa2c65...381b8e` | ⚠️ Unaudited |
| SecondaryMarket | unknown | polygon | 2 deployments: polygon [`0x334747...05b59f`](./contracts/polygon-137/0x334747e78908e22efa6ea1320e316a227b05b59f/); polygon `0x4e209d...156e97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 22 deployments: polygon [`0x043d85...10cdff`](./contracts/polygon-137/0x043d8549dea82e1b78bd97eb76943418d810cdff/); polygon `0x0cd8f3...a1d805`; polygon `0x0e163f...671328`; polygon `0x2718fe...2f68fe`; polygon `0x326fdc...c45061`; polygon `0x3db47d...0e158a`; polygon `0x4efa22...8d7d91`; polygon `0x551c26...8abf45`; polygon `0x573eac...0b651f`; polygon `0x639cb1...15cc98`; polygon `0x848be7...2919e4`; polygon `0x8cc591...a88165`; polygon `0x900b35...f907d4`; polygon `0x993a2c...c52fbc`; polygon `0xa19770...c797bd`; polygon `0xb03cb2...39fb54`; polygon `0xb485a4...3b810b`; polygon `0xbcc779...37bb3a`; polygon `0xc4b71f...4627c4`; polygon `0xe442aa...afa9dc`; polygon `0xe5dd0b...9c6a6c`; polygon `0xf26cc1...4bf58b` | ⚠️ Unaudited |
| UiProvider | unknown | polygon | [`0x29a667...221af5`](./contracts/polygon-137/0x29a6674ce7691c8c895a147cb4dde1893b221af5/) | ⚠️ Unaudited |
| UsdtfToken | token | polygon | [`0x3271f7...10984f`](./contracts/polygon-137/0x3271f7175c42449acd3418f96973df3cd110984f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x16f4fc1fc06a404c1003e1008c88b9442fbec73a) | proxy | polygon | `0x7b592d...b168e1` | ❓ Unverified |
| Proxy (impl: 0x16f4fc1fc06a404c1003e1008c88b9442fbec73a) | proxy | polygon | `0xad4f81...360e2a` | ❓ Unverified |
| Proxy (impl: 0x16f4fc1fc06a404c1003e1008c88b9442fbec73a) | proxy | polygon | `0xdd36b6...49f02c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x009812...066dcb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x00a934...e166a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x02ea8e...023920` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0433d4...aea0b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x044a60...0ae46a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x069a6a...519d99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0784f6...46780d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x07dcd0...65b26c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0a1424...6ea356` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x10ac4f...8fd0e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1253a6...0cfd9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x12cbc3...51a0eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19db32...25ae46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1a4395...98f9b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x21fc07...326028` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x22dd8b...0c6dd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x25dabe...ac2956` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x270b5f...122cad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x27b6a0...09601c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2a31cd...552190` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2d5fde...3f5976` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2f27c6...ef8c21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2fb5d4...c554ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x30f020...2f4498` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x34b0f8...cfa181` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x39023f...f4b0dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x392080...9e1d2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x40926c...9d42a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x42d96c...c34a36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x436446...bc424e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x44622e...f42d91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x44803b...90cfa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x450cd0...a1251c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x476b88...4cc2fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x484817...a50e6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ddf6e...08e186` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4e5f27...7e6b7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x50002b...e91443` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x509442...936fe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x50d796...ca1235` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x50f396...3e3b94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x52b32e...fa3e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x543e63...880999` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5456cf...1818bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5846aa...07efef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x586a58...9abbd9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x59f5be...7f3902` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5c204e...073976` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5f02de...a56dde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x664877...98b317` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6b7d8f...c305d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6fcb82...6624d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x75c7c3...765513` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x795f53...987787` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e700e...c1ab73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x808cd9...c54e83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x85a0e1...26d65b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x863d70...289a9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8b2fd1...9b0eb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8d4d81...c27322` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x90efe7...3669ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x91a93d...cfb1a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x924f53...362a2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x93ad00...c19b65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x93cafe...c61eda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x942240...7fef21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x945e4d...90d4e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x95aa12...d9c804` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x96351a...579e0a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9ae74a...ae50d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c7cb5...c121f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa0a8ba...70cdd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa2da47...9a6c0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa2e392...e61b6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa486db...41fb2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa4b150...6aeda1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa540d0...752e08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadf232...9bc01e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc293c3...a4b09c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc2bcf0...fcb6d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc30461...ddf5ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc58799...324b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xccf4a4...f567bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcff478...816139` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2b143...f393f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2c4dc...28e44d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2da58...dbaf51` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2f4db...d15b8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd767f1...e45583` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd928fc...3ca294` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdb7e74...cb8a11` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdcf372...e525d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdff1d2...f6a2a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe2d7ee...5c82ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe4b618...e53aeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xef7663...6bdf18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf05653...3c2f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf30bd8...31ed10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf80ff2...8d7dc2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf8dfe1...e09edc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf99821...b74b87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfc85be...94085a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfd97e8...2306c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xff2f17...ae5a59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xffe7e2...cacdf3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit](https://binaryx-1.gitbook.io/documentation/taxes/audit.md) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Смарт-контракты Binaryx [были проверены]() в марте 2023 года компанией [Blaize Security](https://blaize.tech/). Общий уровень безопасности платформы Binaryx оценен как **Highly Secure, 9,8 из 10**. Более подробную информацию можно найти здесь:](https://blaize.tech/clients/smart-contract-security-audit-for-binaryx) | Blaize Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x00bed9...a563e8`](./contracts/polygon-137/0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8/) | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb65f62...5fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | BinaryxEarlyAdopter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0218d6...2ee098`](./contracts/polygon-137/0x0218d60051ba3c8d53fd07141b565864262ee098/) | CommissionsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbf65ec...6ca36b`](./contracts/polygon-137/0xbf65ec762fc7b4b466ad614a35a0900c326ca36b/) | EventHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x790895...16bbd6`](./contracts/polygon-137/0x79089537b95a34b38533e865ae0ddfefc516bbd6/) | KycStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3cd17f...64cf3d`](./contracts/polygon-137/0x3cd17fe9c61230493664da7a43ea08562f64cf3d/) | OffPlan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d1c07...35ed3f`](./contracts/polygon-137/0x2d1c0726749d7dbcce27ec016868800dd835ed3f/) | OffPlanFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9e2eb1...d89312`](./contracts/polygon-137/0x9e2eb1fbb5054fcf69e1a1c3e103e4fffdd89312/) | OffPlanService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9df75d...69cdac`](./contracts/polygon-137/0x9df75d18f77e10ee44cd4b037d9c78378c69cdac/) | OffPlanUi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0fee15...14fa2f`](./contracts/polygon-137/0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f/) | OracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1785e5...7ad3d7`](./contracts/polygon-137/0x1785e5efca0bac2098b13aa072598dadeb7ad3d7/) | PropertyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa17c2...288e46`](./contracts/polygon-137/0xfa17c21bf7164e26dbe975823b4348adec288e46/) | ResellPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5cce19...7fdba1`](./contracts/polygon-137/0x5cce1934ad84572e688dac601395708cf17fdba1/) | ResellPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04b472...ad104e`](./contracts/polygon-137/0x04b4728e816a5eba0c7c747617f430ddf9ad104e/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x334747...05b59f`](./contracts/polygon-137/0x334747e78908e22efa6ea1320e316a227b05b59f/) | SecondaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x29a667...221af5`](./contracts/polygon-137/0x29a6674ce7691c8c895a147cb4dde1893b221af5/) | UiProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3271f7...10984f`](./contracts/polygon-137/0x3271f7175c42449acd3418f96973df3cd110984f/) | UsdtfToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2136] Audit
- [2137] Смарт-контракты Binaryx [были проверены]() в марте 2023 года компанией [Blaize Security](https://blaize.tech/). Общий уровень безопасности платформы Binaryx оценен как **Highly Secure, 9,8 из 10**. Более подробную информацию можно найти здесь:

Fork inheritance lineage and inherited audits are included when available.
