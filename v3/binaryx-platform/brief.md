# Agentic Audit Brief: Binaryx Platform

## Project Overview

- Project: Binaryx Platform (`binaryx-platform`)
- Website: [https://www.binaryx.com](https://www.binaryx.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-07-03T21:05:35.750Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: polygon
- Contract surface: 157 unique implementations (226 raw deployments)
- DeFi Llama TVL: $8,678,516.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 25 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 234; live-surface contracts included: 209 (101 live, 108 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/66 (0.0%)
- Deployed-live implementations: 66 of 157 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/66
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 157
- Raw deployments: 226
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x021810...c5862c`](./contracts/polygon-137/0x0218108cdf8e923603f6f6f44856248ba6c5862c/); polygon `0x70b85c...ba17b9` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x2c1358...926fe0`](./contracts/polygon-137/0x2c13584358555266980acd0c1a84b8121f926fe0/); polygon `0x859343...679329` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x490eb3...110adb`](./contracts/polygon-137/0x490eb30a9c735fee01aca406d78fe2db86110adb/); polygon `0xe4e552...cc35a4` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x7b0634...f54091`](./contracts/polygon-137/0x7b06348e9b70a3ad53121dd753370f2762f54091/); polygon `0xd26444...9cef3b` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x1835a5...69881a`](./contracts/polygon-137/0x1835a554e16b71e65d5bc302bc78732d0469881a/); polygon `0xfaa3ef...42591e` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x1f6b01...80f5f2`](./contracts/polygon-137/0x1f6b011a7f20aadb96e6664f531d47b91c80f5f2/); polygon `0x3d9ea5...3db5fc` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x2e6ef0...5e24ee`](./contracts/polygon-137/0x2e6ef00a31544d1380b84e8a708cc74a0d5e24ee/); polygon `0x7be835...d62f86` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x3fc777...84decd`](./contracts/polygon-137/0x3fc777ff8ecb65ef04942787e7848765a984decd/); polygon `0xdb710c...e0c174` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x6436ff...7b1d97`](./contracts/polygon-137/0x6436ffe9527f3eb4b304a46abf53f17e427b1d97/); polygon `0x70b461...067c8f` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x84dfcc...d91020`](./contracts/polygon-137/0x84dfcc299d18f2ee8338bd7b9a30d67787d91020/); polygon `0xf4bdb4...35321e` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0xca176b...84f0aa`](./contracts/polygon-137/0xca176b1a1d7d8173477f6d2e9d25db69bc84f0aa/); polygon `0xcb9414...37db8b` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0xddaab2...97ff82`](./contracts/polygon-137/0xddaab21ac66e683f742cde298fa5a1288697ff82/); polygon `0xed7cf8...a07177` | ⚠️ Unaudited |
| Asset | unknown | polygon | n/a | 4 deployments: polygon [`0x00bed9...a563e8`](./contracts/polygon-137/0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8/); polygon `0x35af9f...d48cb1`; polygon `0xbdc0a6...06e4dd`; polygon `0xee0d8d...812153` | ⚠️ Unaudited |
| AssetPriceOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x99dcc6...bf3338`](./contracts/polygon-137/0x99dcc68f0c58d3b944b29a8701e2421d88bf3338/); polygon `0xcd0c2d...d5f219` | ⚠️ Unaudited |
| AssetPriceOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x9f4389...797e02`](./contracts/polygon-137/0x9f438995ceb7aa3b8e4354861d0826bcc6797e02/); polygon `0xb28a2a...3ffaf6` | ⚠️ Unaudited |
| BeaconProxy | registry | polygon | n/a | 7 deployments: polygon [`0x1e3cf2...0dd69b`](./contracts/polygon-137/0x1e3cf2eeaa6d5973e2da6fe03600ba55870dd69b/); polygon `0x7b592d...b168e1`; polygon `0xad4f81...360e2a`; polygon `0xb2b9f9...78a605`; polygon `0xbde380...ad5d7b`; polygon `0xd55513...e6ada5`; polygon `0xdd36b6...49f02c` | ⚠️ Unaudited |
| BeaconProxy | registry | polygon | n/a | 3 deployments: polygon [`0x4b1784...2bbbd7`](./contracts/polygon-137/0x4b17845f255cc19db2612ab8577ea1e0852bbbd7/); polygon `0xa07db6...4bfd57`; polygon `0xc1ea0c...0ad4b1` | ⚠️ Unaudited |
| BinaryxEarlyAdopter | unknown | polygon | n/a | [`0xb65f62...5fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | ⚠️ Unaudited |
| CommissionsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x0218d6...2ee098`](./contracts/polygon-137/0x0218d60051ba3c8d53fd07141b565864262ee098/); polygon `0x2476d1...f3e2c7` | ⚠️ Unaudited |
| CommissionsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x2a3dcf...c0bcda`](./contracts/polygon-137/0x2a3dcfd3a2c4e3652c3037b0f5526e356ac0bcda/); polygon `0xada952...6906ca` | ⚠️ Unaudited |
| CommissionsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x742a72...186d5c`](./contracts/polygon-137/0x742a72deab9c4e959d579a51765219c420186d5c/); polygon `0xa756a7...2d708e` | ⚠️ Unaudited |
| CoreManager | unknown | polygon | n/a | 2 deployments: polygon [`0x27cddd...a0b740`](./contracts/polygon-137/0x27cdddf05d27e8dec3b2d1cde4af2ad22fa0b740/); polygon `0xc3b4e3...7add75` | ⚠️ Unaudited |
| CoreManager | unknown | polygon | n/a | 2 deployments: polygon [`0x7c80b7...08407e`](./contracts/polygon-137/0x7c80b7be3522c0bc5492ea426ce42c9b3d08407e/); polygon `0x9879cf...23e183` | ⚠️ Unaudited |
| CoreManager | unknown | polygon | n/a | [`0xa1685e...d55235`](./contracts/polygon-137/0xa1685e57edd42c3a905959cae88f0d0a07d55235/) | ⚠️ Unaudited |
| KycStore | unknown | polygon | n/a | 2 deployments: polygon [`0x790895...16bbd6`](./contracts/polygon-137/0x79089537b95a34b38533e865ae0ddfefc516bbd6/); polygon `0xd93b5e...d97982` | ⚠️ Unaudited |
| KycStore | unknown | polygon | n/a | 2 deployments: polygon [`0x7b6ec8...87d1ed`](./contracts/polygon-137/0x7b6ec8841787a689be26ae74ecef1a07d587d1ed/); polygon `0x9b292a...985e8c` | ⚠️ Unaudited |
| KycStore | unknown | polygon | n/a | [`0xdc7264...5b921c`](./contracts/polygon-137/0xdc726401ad7bf0411eaf808f60acffd3785b921c/) | ⚠️ Unaudited |
| OffPlan | unknown | polygon | n/a | 2 deployments: polygon [`0x3cd17f...64cf3d`](./contracts/polygon-137/0x3cd17fe9c61230493664da7a43ea08562f64cf3d/); polygon `0xab3525...ab57df` | ⚠️ Unaudited |
| OffPlanFactory | unknown | polygon | n/a | [`0x2d1c07...35ed3f`](./contracts/polygon-137/0x2d1c0726749d7dbcce27ec016868800dd835ed3f/) | ⚠️ Unaudited |
| OracleFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x0fee15...14fa2f`](./contracts/polygon-137/0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f/); polygon `0x861217...1e8c8f` | ⚠️ Unaudited |
| OracleFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x1eb842...0ff1c2`](./contracts/polygon-137/0x1eb842c2b87de93179c2b6326255f401ec0ff1c2/); polygon `0xd8147d...8bbca5` | ⚠️ Unaudited |
| PropertyFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x1785e5...7ad3d7`](./contracts/polygon-137/0x1785e5efca0bac2098b13aa072598dadeb7ad3d7/); polygon `0xb7b725...ecabf3` | ⚠️ Unaudited |
| PropertyFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x473543...5fdf5f`](./contracts/polygon-137/0x47354378442d192aa10623e7b61f1a9f5c5fdf5f/); polygon `0x5d618c...c0970f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 9 deployments: polygon [`0x361e4b...79483f`](./contracts/polygon-137/0x361e4bf80d71eca08719dbc778349b0ed179483f/); polygon `0x3864eb...05ec12`; polygon `0x44b51e...32ffea`; polygon `0x54ecb6...3e33d0`; polygon `0x79f53e...6b6f22`; polygon `0x95887b...1fd2eb`; polygon `0xa8bd82...48ebf5`; polygon `0xb4a4db...0711b0`; polygon `0xc84938...30baa6` | ⚠️ Unaudited |
| ReferralsDistribution | unknown | polygon | n/a | 2 deployments: polygon [`0x0d692a...48b071`](./contracts/polygon-137/0x0d692a1d1f21327251262270869bbf131348b071/); polygon `0x921afd...52bf3e` | ⚠️ Unaudited |
| ReferralsDistribution | unknown | polygon | n/a | 2 deployments: polygon [`0x0fa845...f7cd8e`](./contracts/polygon-137/0x0fa845769e189a2780ade065a74279c5c2f7cd8e/); polygon `0xba8312...1c736a` | ⚠️ Unaudited |
| ResellPool | unknown | polygon | n/a | [`0xfa17c2...288e46`](./contracts/polygon-137/0xfa17c21bf7164e26dbe975823b4348adec288e46/) | ⚠️ Unaudited |
| ResellPoolFactory | unknown | polygon | n/a | [`0x5cce19...7fdba1`](./contracts/polygon-137/0x5cce1934ad84572e688dac601395708cf17fdba1/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 5 deployments: polygon [`0x04b472...ad104e`](./contracts/polygon-137/0x04b4728e816a5eba0c7c747617f430ddf9ad104e/); polygon `0x0d067b...d30137`; polygon `0x855567...fef736`; polygon `0x89992f...9d7b0d`; polygon `0xc932cf...786368` | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x2e7548...d4b229`](./contracts/polygon-137/0x2e75488d9699ea74b0816ceb3062109dfdd4b229/); polygon `0x76867f...86356c` | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x388e11...2e5065`](./contracts/polygon-137/0x388e11cdd3f92515b3831f0a421e79fdf92e5065/); polygon `0xfa2c65...381b8e` | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0xdbbb9b...fbafe0`](./contracts/polygon-137/0xdbbb9b0de7c22bfe4ffe14a6cc36bf526cfbafe0/); polygon `0xecac95...0df3f7` | ⚠️ Unaudited |
| SecondaryMarket | unknown | polygon | n/a | 2 deployments: polygon [`0x334747...05b59f`](./contracts/polygon-137/0x334747e78908e22efa6ea1320e316a227b05b59f/); polygon `0x4e209d...156e97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x009812...066dcb`](./contracts/polygon-137/0x009812a4808a468e1b6c32b643628196d7066dcb/); polygon `0x639cb1...15cc98` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x0433d4...aea0b7`](./contracts/polygon-137/0x0433d428dce42ac0e43ca8d8b62dddcba4aea0b7/); polygon `0x043d85...10cdff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x0cd8f3...a1d805`](./contracts/polygon-137/0x0cd8f3fe85780e620f80cdb884807174d9a1d805/); polygon `0x4e5f27...7e6b7d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x0e163f...671328`](./contracts/polygon-137/0x0e163f70df69ccdbe67c9ec467e343c895671328/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x1a4395...98f9b5`](./contracts/polygon-137/0x1a4395174b4b36a9e9d9675edfa0abed0898f9b5/); polygon `0xb485a4...3b810b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0x2718fe...2f68fe`](./contracts/polygon-137/0x2718fe8eeb091301d1f3d367231affe95c2f68fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x2f27c6...ef8c21`](./contracts/polygon-137/0x2f27c67f41171110076410c203faccc84cef8c21/); polygon `0x4efa22...8d7d91` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0x326fdc...c45061`](./contracts/polygon-137/0x326fdcca0f5b9f5905f6bfdb914b1f6eddc45061/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x392080...9e1d2f`](./contracts/polygon-137/0x392080a6f31b32b208ac56c9e311be5bea9e1d2f/); polygon `0x993a2c...c52fbc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x3db47d...0e158a`](./contracts/polygon-137/0x3db47d7dcdf0697500843e9c87234eaeda0e158a/); polygon `0xadf232...9bc01e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x476b88...4cc2fa`](./contracts/polygon-137/0x476b8858de91d6a7b5b3e042bc70fafe164cc2fa/); polygon `0x573eac...0b651f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x5456cf...1818bb`](./contracts/polygon-137/0x5456cfaa57f4ee433eac5484b87e8ed61b1818bb/); polygon `0x551c26...8abf45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x5846aa...07efef`](./contracts/polygon-137/0x5846aabbf92a407045c7820819f5ea282907efef/); polygon `0xc4b71f...4627c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x848be7...2919e4`](./contracts/polygon-137/0x848be76c274a37cdb89cae65a93ec17f392919e4/); polygon `0xdff1d2...f6a2a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x85a0e1...26d65b`](./contracts/polygon-137/0x85a0e1ac94c7a5d1ea58fed9a84184fc7926d65b/); polygon `0xbcc779...37bb3a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x8cc591...a88165`](./contracts/polygon-137/0x8cc5919adcc0846fb74b41517fd1c90542a88165/); polygon `0xc30461...ddf5ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x900b35...f907d4`](./contracts/polygon-137/0x900b359d985cf240b93ffff9671d4c4616f907d4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0xa19770...c797bd`](./contracts/polygon-137/0xa197701cdaabf26b931f19b451ed85cc87c797bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0xb03cb2...39fb54`](./contracts/polygon-137/0xb03cb250474ca31ec53461780c3914ee2f39fb54/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xc293c3...a4b09c`](./contracts/polygon-137/0xc293c31a6aa512fbf86a9d82e7ae56ea8aa4b09c/); polygon `0xe5dd0b...9c6a6c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0xe442aa...afa9dc`](./contracts/polygon-137/0xe442aa8dc9d8526d7ccddf4f3f8369294eafa9dc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0xf26cc1...4bf58b`](./contracts/polygon-137/0xf26cc1388b9c2f0fabdde1ff7bb10a396e4bf58b/) | ⚠️ Unaudited |
| UiProvider | unknown | polygon | n/a | [`0x29a667...221af5`](./contracts/polygon-137/0x29a6674ce7691c8c895a147cb4dde1893b221af5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x00a934...e166a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02ea8e...023920` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x044a60...0ae46a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x069a6a...519d99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0784f6...46780d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x07dcd0...65b26c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a1424...6ea356` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10ac4f...8fd0e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1253a6...0cfd9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x12cbc3...51a0eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19db32...25ae46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21fc07...326028` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22dd8b...0c6dd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25dabe...ac2956` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x270b5f...122cad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27b6a0...09601c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a31cd...552190` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d5fde...3f5976` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fb5d4...c554ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30f020...2f4498` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34b0f8...cfa181` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39023f...f4b0dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40926c...9d42a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42d96c...c34a36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x436446...bc424e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44622e...f42d91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44803b...90cfa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x450cd0...a1251c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x484817...a50e6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ddf6e...08e186` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50002b...e91443` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x509442...936fe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50d796...ca1235` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50f396...3e3b94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52b32e...fa3e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x543e63...880999` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x586a58...9abbd9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59f5be...7f3902` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c204e...073976` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5f02de...a56dde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x664877...98b317` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b7d8f...c305d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6fcb82...6624d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x75c7c3...765513` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x795f53...987787` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e700e...c1ab73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x808cd9...c54e83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x863d70...289a9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b2fd1...9b0eb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d4d81...c27322` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90efe7...3669ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91a93d...cfb1a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x924f53...362a2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93ad00...c19b65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93cafe...c61eda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x942240...7fef21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x945e4d...90d4e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95aa12...d9c804` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x96351a...579e0a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ae74a...ae50d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c7cb5...c121f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0a8ba...70cdd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2da47...9a6c0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2e392...e61b6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa486db...41fb2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4b150...6aeda1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa540d0...752e08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2bcf0...fcb6d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc58799...324b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xccf4a4...f567bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcff478...816139` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2b143...f393f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2c4dc...28e44d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2da58...dbaf51` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2f4db...d15b8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd767f1...e45583` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd928fc...3ca294` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb7e74...cb8a11` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdcf372...e525d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2d7ee...5c82ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4b618...e53aeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef7663...6bdf18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf05653...3c2f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf30bd8...31ed10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf80ff2...8d7dc2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8dfe1...e09edc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf99821...b74b87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc85be...94085a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd97e8...2306c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff2f17...ae5a59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xffe7e2...cacdf3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.md](https://binaryx-1.gitbook.io/documentation/taxes/audit.md) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [blaize.tech/clients/smart-contract-security-audit-for-binaryx](https://blaize.tech/clients/smart-contract-security-audit-for-binaryx) | Blaize Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1bGZftSrt7v7rHWvOI35fFUMLTll3QFhG/view](https://drive.google.com/file/d/1bGZftSrt7v7rHWvOI35fFUMLTll3QFhG/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xb65f62...5fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | BinaryxEarlyAdopter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 150 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2136] audit.md
- [2137] blaize.tech/clients/smart-contract-security-audit-for-binaryx
- [11889] drive.google.com/file/d/1bGZftSrt7v7rHWvOI35fFUMLTll3QFhG/view

Fork inheritance lineage and inherited audits are included when available.
