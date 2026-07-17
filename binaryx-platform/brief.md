# Agentic Audit Brief: Binaryx Platform

## Project Overview

- Project: Binaryx Platform (`binaryx-platform`)
- Website: [https://www.binaryx.com](https://www.binaryx.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:53:07.470Z
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

- Coverage of deployed-live implementations: 0/56 (0.0%)
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
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x0218108cdf8e923603f6f6f44856248ba6c5862c`](./contracts/polygon-137/0x0218108cdf8e923603f6f6f44856248ba6c5862c/); polygon `0x70b85c68ac17763ef9db91fa52cb2508f5ba17b9` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x2c13584358555266980acd0c1a84b8121f926fe0`](./contracts/polygon-137/0x2c13584358555266980acd0c1a84b8121f926fe0/); polygon `0x8593430e640dcc83309cba7844c6147644679329` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x490eb30a9c735fee01aca406d78fe2db86110adb`](./contracts/polygon-137/0x490eb30a9c735fee01aca406d78fe2db86110adb/); polygon `0xe4e5529aab77133bc218568c621ca1e065cc35a4` | ⚠️ Unaudited |
| AccessManager | unknown | polygon | n/a | 2 deployments: polygon [`0x7b06348e9b70a3ad53121dd753370f2762f54091`](./contracts/polygon-137/0x7b06348e9b70a3ad53121dd753370f2762f54091/); polygon `0xd26444dbb170a1800a88fecfb5410d59d09cef3b` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x1835a554e16b71e65d5bc302bc78732d0469881a`](./contracts/polygon-137/0x1835a554e16b71e65d5bc302bc78732d0469881a/); polygon `0xfaa3efe3de0197665c6f4db4388c9ffef742591e` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x1f6b011a7f20aadb96e6664f531d47b91c80f5f2`](./contracts/polygon-137/0x1f6b011a7f20aadb96e6664f531d47b91c80f5f2/); polygon `0x3d9ea554af9159e86851458caf8f4ee2823db5fc` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x2e6ef00a31544d1380b84e8a708cc74a0d5e24ee`](./contracts/polygon-137/0x2e6ef00a31544d1380b84e8a708cc74a0d5e24ee/); polygon `0x7be835edbc2d13cc5f11adc255b0d7ae90d62f86` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x3fc777ff8ecb65ef04942787e7848765a984decd`](./contracts/polygon-137/0x3fc777ff8ecb65ef04942787e7848765a984decd/); polygon `0xdb710c4ddfd4c676138dcce0d96a441a68e0c174` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x6436ffe9527f3eb4b304a46abf53f17e427b1d97`](./contracts/polygon-137/0x6436ffe9527f3eb4b304a46abf53f17e427b1d97/); polygon `0x70b4611347b74a215fd0ef85f2fba7b07b067c8f` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x84dfcc299d18f2ee8338bd7b9a30d67787d91020`](./contracts/polygon-137/0x84dfcc299d18f2ee8338bd7b9a30d67787d91020/); polygon `0xf4bdb457b4cfee3bea9084d2bb788b87f835321e` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0xca176b1a1d7d8173477f6d2e9d25db69bc84f0aa`](./contracts/polygon-137/0xca176b1a1d7d8173477f6d2e9d25db69bc84f0aa/); polygon `0xcb9414075e00a44f2f7cb4c58a03d1b41737db8b` | ⚠️ Unaudited |
| AddressesProvider | unknown | polygon | n/a | 2 deployments: polygon [`0xddaab21ac66e683f742cde298fa5a1288697ff82`](./contracts/polygon-137/0xddaab21ac66e683f742cde298fa5a1288697ff82/); polygon `0xed7cf842c683424e2630951f1ab87556c8a07177` | ⚠️ Unaudited |
| Asset | unknown | polygon | n/a | 4 deployments: polygon [`0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8`](./contracts/polygon-137/0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8/); polygon `0x35af9f09c3b164122b1952f819cd0887a3d48cb1`; polygon `0xbdc0a64e83647f564ea7ef31651d3dddf306e4dd`; polygon `0xee0d8d3f5f69eef78b031de265aa98d8f8812153` | ⚠️ Unaudited |
| AssetPriceOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x99dcc68f0c58d3b944b29a8701e2421d88bf3338`](./contracts/polygon-137/0x99dcc68f0c58d3b944b29a8701e2421d88bf3338/); polygon `0xcd0c2d85b9bebcaeb67ebbdaf8350845b3d5f219` | ⚠️ Unaudited |
| AssetPriceOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x9f438995ceb7aa3b8e4354861d0826bcc6797e02`](./contracts/polygon-137/0x9f438995ceb7aa3b8e4354861d0826bcc6797e02/); polygon `0xb28a2aaaab622aa2c59fe4f530d0f30d683ffaf6` | ⚠️ Unaudited |
| BeaconProxy | registry | polygon | n/a | 7 deployments: polygon [`0x1e3cf2eeaa6d5973e2da6fe03600ba55870dd69b`](./contracts/polygon-137/0x1e3cf2eeaa6d5973e2da6fe03600ba55870dd69b/); polygon `0x7b592d8bb722324f75af834c23e6ad2058b168e1`; polygon `0xad4f81d0f2f626a6ea29864f488604e6b5360e2a`; polygon `0xb2b9f922c0494dbf08636b1dbcf6fcba0878a605`; polygon `0xbde380b4cc582d440255ebd89ff1839dcfad5d7b`; polygon `0xd5551375d5ba01ddbcb38d20ac40671f26e6ada5`; polygon `0xdd36b686a5ff910b5074e3f5483135f19e49f02c` | ⚠️ Unaudited |
| BeaconProxy | registry | polygon | n/a | 3 deployments: polygon [`0x4b17845f255cc19db2612ab8577ea1e0852bbbd7`](./contracts/polygon-137/0x4b17845f255cc19db2612ab8577ea1e0852bbbd7/); polygon `0xa07db641fc95067a2fe68b6224a9dd39564bfd57`; polygon `0xc1ea0ccd94f17ec0580dd57a34c2b521360ad4b1` | ⚠️ Unaudited |
| BinaryxEarlyAdopter | unknown | polygon | n/a | [`0xb65f623a4a992b5e697626b5943c9353935fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | ⚠️ Unaudited |
| CommissionsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x0218d60051ba3c8d53fd07141b565864262ee098`](./contracts/polygon-137/0x0218d60051ba3c8d53fd07141b565864262ee098/); polygon `0x2476d16f5de89ff64e53feade596b56fbbf3e2c7` | ⚠️ Unaudited |
| CommissionsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x2a3dcfd3a2c4e3652c3037b0f5526e356ac0bcda`](./contracts/polygon-137/0x2a3dcfd3a2c4e3652c3037b0f5526e356ac0bcda/); polygon `0xada9523708386cf19fc4be963a2a72d5296906ca` | ⚠️ Unaudited |
| CommissionsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x742a72deab9c4e959d579a51765219c420186d5c`](./contracts/polygon-137/0x742a72deab9c4e959d579a51765219c420186d5c/); polygon `0xa756a72a0ea20ebfb8453470d67c81b96e2d708e` | ⚠️ Unaudited |
| CoreManager | unknown | polygon | n/a | 2 deployments: polygon [`0x27cdddf05d27e8dec3b2d1cde4af2ad22fa0b740`](./contracts/polygon-137/0x27cdddf05d27e8dec3b2d1cde4af2ad22fa0b740/); polygon `0xc3b4e36932b63f920bfc3eadeb3eb8e0c67add75` | ⚠️ Unaudited |
| CoreManager | unknown | polygon | n/a | 2 deployments: polygon [`0x7c80b7be3522c0bc5492ea426ce42c9b3d08407e`](./contracts/polygon-137/0x7c80b7be3522c0bc5492ea426ce42c9b3d08407e/); polygon `0x9879cfaafb88e85e15b8732ce9386764c323e183` | ⚠️ Unaudited |
| CoreManager | unknown | polygon | n/a | [`0xa1685e57edd42c3a905959cae88f0d0a07d55235`](./contracts/polygon-137/0xa1685e57edd42c3a905959cae88f0d0a07d55235/) | ⚠️ Unaudited |
| KycStore | unknown | polygon | n/a | 2 deployments: polygon [`0x79089537b95a34b38533e865ae0ddfefc516bbd6`](./contracts/polygon-137/0x79089537b95a34b38533e865ae0ddfefc516bbd6/); polygon `0xd93b5e4d795bcbbf6e9e8a6a918c638e8dd97982` | ⚠️ Unaudited |
| KycStore | unknown | polygon | n/a | 2 deployments: polygon [`0x7b6ec8841787a689be26ae74ecef1a07d587d1ed`](./contracts/polygon-137/0x7b6ec8841787a689be26ae74ecef1a07d587d1ed/); polygon `0x9b292adf85a114c07d8b7d22866b2251bd985e8c` | ⚠️ Unaudited |
| KycStore | unknown | polygon | n/a | [`0xdc726401ad7bf0411eaf808f60acffd3785b921c`](./contracts/polygon-137/0xdc726401ad7bf0411eaf808f60acffd3785b921c/) | ⚠️ Unaudited |
| OffPlan | unknown | polygon | n/a | 2 deployments: polygon [`0x3cd17fe9c61230493664da7a43ea08562f64cf3d`](./contracts/polygon-137/0x3cd17fe9c61230493664da7a43ea08562f64cf3d/); polygon `0xab3525000284cc0946ec3e405223f2ce18ab57df` | ⚠️ Unaudited |
| OffPlanFactory | unknown | polygon | n/a | [`0x2d1c0726749d7dbcce27ec016868800dd835ed3f`](./contracts/polygon-137/0x2d1c0726749d7dbcce27ec016868800dd835ed3f/) | ⚠️ Unaudited |
| OracleFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f`](./contracts/polygon-137/0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f/); polygon `0x8612177878f78fce791bf86ceb2554f3ab1e8c8f` | ⚠️ Unaudited |
| OracleFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x1eb842c2b87de93179c2b6326255f401ec0ff1c2`](./contracts/polygon-137/0x1eb842c2b87de93179c2b6326255f401ec0ff1c2/); polygon `0xd8147d2ea95264e50b25e31bdc50d3540b8bbca5` | ⚠️ Unaudited |
| PropertyFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x1785e5efca0bac2098b13aa072598dadeb7ad3d7`](./contracts/polygon-137/0x1785e5efca0bac2098b13aa072598dadeb7ad3d7/); polygon `0xb7b7259f99ecc7078feb9cb485b3529e56ecabf3` | ⚠️ Unaudited |
| PropertyFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x47354378442d192aa10623e7b61f1a9f5c5fdf5f`](./contracts/polygon-137/0x47354378442d192aa10623e7b61f1a9f5c5fdf5f/); polygon `0x5d618c67674945081824e7473821a79e4ec0970f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 9 deployments: polygon [`0x361e4bf80d71eca08719dbc778349b0ed179483f`](./contracts/polygon-137/0x361e4bf80d71eca08719dbc778349b0ed179483f/); polygon `0x3864eb86dc16462ee980711af8d1f266b805ec12`; polygon `0x44b51e2791e2f149fdee1e721aba7d3f0132ffea`; polygon `0x54ecb6c7b72b545d60b2fb945c5753ada13e33d0`; polygon `0x79f53eade379a0cc6d7960c214509b600b6b6f22`; polygon `0x95887b4693b18aff1986fd91e863bd102f1fd2eb`; polygon `0xa8bd82013c8e8fd09571db7c9906868ef948ebf5`; polygon `0xb4a4db2f9987dc3bd8bb2b8c558d6b6ea80711b0`; polygon `0xc849387d0e4abd5af91daa4d03248a5aaa30baa6` | ⚠️ Unaudited |
| ReferralsDistribution | unknown | polygon | n/a | 2 deployments: polygon [`0x0d692a1d1f21327251262270869bbf131348b071`](./contracts/polygon-137/0x0d692a1d1f21327251262270869bbf131348b071/); polygon `0x921afd286fec2ad01dbd34584c349472b852bf3e` | ⚠️ Unaudited |
| ReferralsDistribution | unknown | polygon | n/a | 2 deployments: polygon [`0x0fa845769e189a2780ade065a74279c5c2f7cd8e`](./contracts/polygon-137/0x0fa845769e189a2780ade065a74279c5c2f7cd8e/); polygon `0xba8312ee447834d03ed7b4ee006f8a7cb11c736a` | ⚠️ Unaudited |
| ResellPool | unknown | polygon | n/a | [`0xfa17c21bf7164e26dbe975823b4348adec288e46`](./contracts/polygon-137/0xfa17c21bf7164e26dbe975823b4348adec288e46/) | ⚠️ Unaudited |
| ResellPoolFactory | unknown | polygon | n/a | [`0x5cce1934ad84572e688dac601395708cf17fdba1`](./contracts/polygon-137/0x5cce1934ad84572e688dac601395708cf17fdba1/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 5 deployments: polygon [`0x04b4728e816a5eba0c7c747617f430ddf9ad104e`](./contracts/polygon-137/0x04b4728e816a5eba0c7c747617f430ddf9ad104e/); polygon `0x0d067b405146af4d2116e6201ed6d94fb2d30137`; polygon `0x8555677fd0e00620ed039c4a21a9d481aafef736`; polygon `0x89992fc8fbac0871a801bd8ba8a89c86139d7b0d`; polygon `0xc932cf71d5d972c2ad6c7737ca0c7e95a7786368` | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x2e75488d9699ea74b0816ceb3062109dfdd4b229`](./contracts/polygon-137/0x2e75488d9699ea74b0816ceb3062109dfdd4b229/); polygon `0x76867fc9b39453a22312efcda96b695afe86356c` | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x388e11cdd3f92515b3831f0a421e79fdf92e5065`](./contracts/polygon-137/0x388e11cdd3f92515b3831f0a421e79fdf92e5065/); polygon `0xfa2c65448339c0a34ddd0b4eadbcc39251381b8e` | ⚠️ Unaudited |
| RewardsDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0xdbbb9b0de7c22bfe4ffe14a6cc36bf526cfbafe0`](./contracts/polygon-137/0xdbbb9b0de7c22bfe4ffe14a6cc36bf526cfbafe0/); polygon `0xecac955bf717098769809c6983625f6bd60df3f7` | ⚠️ Unaudited |
| SecondaryMarket | unknown | polygon | n/a | 2 deployments: polygon [`0x334747e78908e22efa6ea1320e316a227b05b59f`](./contracts/polygon-137/0x334747e78908e22efa6ea1320e316a227b05b59f/); polygon `0x4e209d2a48262ddde5525b9f0b2cdacabb156e97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x009812a4808a468e1b6c32b643628196d7066dcb`](./contracts/polygon-137/0x009812a4808a468e1b6c32b643628196d7066dcb/); polygon `0x639cb10920986740ac55ec295e8398d50015cc98` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x0433d428dce42ac0e43ca8d8b62dddcba4aea0b7`](./contracts/polygon-137/0x0433d428dce42ac0e43ca8d8b62dddcba4aea0b7/); polygon `0x043d8549dea82e1b78bd97eb76943418d810cdff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x0cd8f3fe85780e620f80cdb884807174d9a1d805`](./contracts/polygon-137/0x0cd8f3fe85780e620f80cdb884807174d9a1d805/); polygon `0x4e5f2722f47339c3138087d484f51810f37e6b7d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x0e163f70df69ccdbe67c9ec467e343c895671328`](./contracts/polygon-137/0x0e163f70df69ccdbe67c9ec467e343c895671328/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x1a4395174b4b36a9e9d9675edfa0abed0898f9b5`](./contracts/polygon-137/0x1a4395174b4b36a9e9d9675edfa0abed0898f9b5/); polygon `0xb485a40686660f21087b38ba70e00c75cd3b810b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0x2718fe8eeb091301d1f3d367231affe95c2f68fe`](./contracts/polygon-137/0x2718fe8eeb091301d1f3d367231affe95c2f68fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x2f27c67f41171110076410c203faccc84cef8c21`](./contracts/polygon-137/0x2f27c67f41171110076410c203faccc84cef8c21/); polygon `0x4efa22789df399c501804551d96b9b72988d7d91` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0x326fdcca0f5b9f5905f6bfdb914b1f6eddc45061`](./contracts/polygon-137/0x326fdcca0f5b9f5905f6bfdb914b1f6eddc45061/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x392080a6f31b32b208ac56c9e311be5bea9e1d2f`](./contracts/polygon-137/0x392080a6f31b32b208ac56c9e311be5bea9e1d2f/); polygon `0x993a2cc433b3d9fb7679c343948e497aaec52fbc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x3db47d7dcdf0697500843e9c87234eaeda0e158a`](./contracts/polygon-137/0x3db47d7dcdf0697500843e9c87234eaeda0e158a/); polygon `0xadf23210943321eacbe3bbbcb52b07db4c9bc01e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x476b8858de91d6a7b5b3e042bc70fafe164cc2fa`](./contracts/polygon-137/0x476b8858de91d6a7b5b3e042bc70fafe164cc2fa/); polygon `0x573eacc4d3578eb1d5491d7f81729beb4a0b651f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x5456cfaa57f4ee433eac5484b87e8ed61b1818bb`](./contracts/polygon-137/0x5456cfaa57f4ee433eac5484b87e8ed61b1818bb/); polygon `0x551c261efcf109378d101de9a2741fb8078abf45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x5846aabbf92a407045c7820819f5ea282907efef`](./contracts/polygon-137/0x5846aabbf92a407045c7820819f5ea282907efef/); polygon `0xc4b71f4332fabc2a5d423dfc069785964f4627c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x848be76c274a37cdb89cae65a93ec17f392919e4`](./contracts/polygon-137/0x848be76c274a37cdb89cae65a93ec17f392919e4/); polygon `0xdff1d2cca4afe708c87984a33846b95c24f6a2a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x85a0e1ac94c7a5d1ea58fed9a84184fc7926d65b`](./contracts/polygon-137/0x85a0e1ac94c7a5d1ea58fed9a84184fc7926d65b/); polygon `0xbcc7797d024601acab1a546dcb9e6ecfbb37bb3a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x8cc5919adcc0846fb74b41517fd1c90542a88165`](./contracts/polygon-137/0x8cc5919adcc0846fb74b41517fd1c90542a88165/); polygon `0xc30461e4ea50aaffb3a192cd62ec3238faddf5ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x900b359d985cf240b93ffff9671d4c4616f907d4`](./contracts/polygon-137/0x900b359d985cf240b93ffff9671d4c4616f907d4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0xa197701cdaabf26b931f19b451ed85cc87c797bd`](./contracts/polygon-137/0xa197701cdaabf26b931f19b451ed85cc87c797bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0xb03cb250474ca31ec53461780c3914ee2f39fb54`](./contracts/polygon-137/0xb03cb250474ca31ec53461780c3914ee2f39fb54/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xc293c31a6aa512fbf86a9d82e7ae56ea8aa4b09c`](./contracts/polygon-137/0xc293c31a6aa512fbf86a9d82e7ae56ea8aa4b09c/); polygon `0xe5dd0b0256eecd5f8603da32be10d1efdd9c6a6c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0xe442aa8dc9d8526d7ccddf4f3f8369294eafa9dc`](./contracts/polygon-137/0xe442aa8dc9d8526d7ccddf4f3f8369294eafa9dc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0xf26cc1388b9c2f0fabdde1ff7bb10a396e4bf58b`](./contracts/polygon-137/0xf26cc1388b9c2f0fabdde1ff7bb10a396e4bf58b/) | ⚠️ Unaudited |
| UiProvider | unknown | polygon | n/a | [`0x29a6674ce7691c8c895a147cb4dde1893b221af5`](./contracts/polygon-137/0x29a6674ce7691c8c895a147cb4dde1893b221af5/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x00a9343c3977542ae93f624ab962e154cee166a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02ea8e8ddee4733a50bebae2e14175bf60023920` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x044a60ceb25bab0aa73c4b46ab22a693530ae46a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x069a6a4dd84614e90bc5c61a7ce68c9248519d99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0784f68a1afada039812305afc72aea9df46780d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x07dcd06b1a6eaebc7ca79de86a4e74dfdf65b26c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a1424b230beaebfa336d5ea73080518086ea356` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10ac4f2f6527004f5ccecdb7e92a1c4ceb8fd0e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1253a65bd1a24ce10186dab34cdb97fc1c0cfd9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x12cbc3c78b4a680043b39738b36d78899451a0eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19db32a409c422cd143e580fd9d093e31d25ae46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21fc07241487ecb78de5c89c0b67d2ec6b326028` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22dd8b696dd3297dc4e79ae0a3c089f9d50c6dd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25dabe7954bd7aff2ad1b073f95b09a5ceac2956` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x270b5f95b5fd572f5719c0b449137bc773122cad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27b6a0fdb8f0ccb4da4b157af049e6f75109601c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a31cd46dae6218875527116f26689ff1f552190` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d5fded024ea1cef970ccf39f98d1749973f5976` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fb5d454b32ffa3d5bfbd9ebd1f19c46f6c554ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30f02027ae0facb02bd7dc6cf531e127612f4498` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34b0f874e58edc0966f099621a4ee42500cfa181` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39023f9d57d5bfd15e2390572b99898401f4b0dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40926cce27b3c122a3103ed6207f99c48b9d42a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42d96c1095c08b91d8cf47ab4c0d25ff0cc34a36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4364467e001435ea2b327e5ec431f427a8bc424e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44622e406ae15582355013fc9078087a33f42d91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44803b9f3c0321b694d5473310b8da3d3790cfa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x450cd0843bc74058e375f2ad6e20efababa1251c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x484817ba08d92b7174f550a1230960169aa50e6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ddf6e2cdf350dee3a8f988b25b74bd03d08e186` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50002bc79804db539f6deb2015511b830ae91443` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50944267c6c827e6fd7dacdd632e861392936fe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50d796b88be9274afda4e1a0162d29e279ca1235` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50f39602f6ccb54bd60abdb0159d6d5bdb3e3b94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52b32e34a20d323a99530303b9f06b99f4fa3e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x543e635abb3c47af9c51cc70a0a3542a97880999` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x586a585e042b4b26d890c30730c31886a29abbd9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59f5be984fb2cc616c6cdb4b3eb9871c417f3902` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c204e7b179ac97d3f5d3c8bd52850a273073976` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5f02de0cd4ded38ff0991dfd65c5cb9a06a56dde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x664877e9b4c44c8af4eb4cdb51dc99555898b317` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b7d8f0276334fa1e706368f41bc57e79cc305d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6fcb825d57d4faa415f93b082c6a19afba6624d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x75c7c3caf54a57079ee05f8630e71f494a765513` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x795f53e3c1a917974e8b474681df052dce987787` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e700ee2d51d153db66b2c610982588205c1ab73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x808cd94ab8194d114dfbeae258ff9242b5c54e83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x863d7031e24bd1c0974b3b473aa9d98db2289a9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b2fd15021907d46f24780899cbc415e949b0eb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d4d81043373d7aab4544132994f0134f1c27322` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90efe7113eb86ceff6bad02955c44c7a483669ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91a93d76f2dd4039b165022b03fb587395cfb1a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x924f53bd5f44286f8178b6b19ac3469356362a2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93ad0013ebe120dc26c7b2ca2a25ca1084c19b65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93cafec23f235ace98a0c1cec74959e350c61eda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x942240542224f29e1abddce68bbcd591c07fef21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x945e4d388f4bda381fad4ca9426521354390d4e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95aa12377963a7e46f8f67d6b22b8b3585d9c804` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x96351abf7b2d17ff6d0abe5e0494c0d420579e0a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ae74a384f2a838afb97b5c06e71ede35bae50d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c7cb555fc81eab2d71145c3fd0d810ce4c121f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0a8bac3f0e59a55c1cea2af3dabdbc51270cdd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2da4731e4d7525f31f15c0f370515e8d09a6c0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2e3929591917f85441cffdfcf51565d84e61b6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa486dbb574087f3bfea32967ea441e950441fb2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4b150f941f1a8cf26e66fc4a4c5c3c7816aeda1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa540d06ed44817b5084ddc83c9109093c1752e08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2bcf03e595afb83472a176ac1da5afc22fcb6d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc58799042239324d998aa73c8e99ddce05324b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xccf4a4404c1f99086bb75e6e16f16887e7f567bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcff478c46e16fb26f5acbd5faf0b227f52816139` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2b1438667007041ff2a6c7700c41f6f2bf393f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2c4dcebba640a8f69c85fa7b89f450f4028e44d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2da58066fd12520ded94ba864a123b02adbaf51` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2f4db5dcbb673a36a8511ea1a2192d7aed15b8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd767f122774deac0dc8c37e2672cc83e51e45583` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd928fc87be40630677cd912bae863b28d13ca294` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb7e74fc1c20942db4e991e80eefdc3551cb8a11` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdcf3725ecae60bbae3b6e89cac67c768d6e525d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2d7ee4991462880bd7a3931891654978f5c82ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4b618542f67fe13fe37f975964dd8e316e53aeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef7663e238593a6ecd7d31c7b2c4109c6a6bdf18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf05653ffd00e093a0b3286aecc6a03450d3c2f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf30bd875ce5b8fa9fc0bc98eaed768130e31ed10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf80ff2630382c214ed2c375d43a3844b058d7dc2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8dfe1fde5a9311bcfdb0956560a94ed8ae09edc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf99821cd294a759831828e9133d033000eb74b87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc85be4cdbd1cadfa434e1b6ba7c6418e994085a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd97e8a6a7c3e47ff365f70818acc0c3b32306c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff2f170e90a95218b7b83188114f0dd968ae5a59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xffe7e2df9ce7aa24afb6116a999471ea5dcacdf3` | ❓ Unverified |

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
| polygon | [`0x0218108cdf8e923603f6f6f44856248ba6c5862c`](./contracts/polygon-137/0x0218108cdf8e923603f6f6f44856248ba6c5862c/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c13584358555266980acd0c1a84b8121f926fe0`](./contracts/polygon-137/0x2c13584358555266980acd0c1a84b8121f926fe0/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490eb30a9c735fee01aca406d78fe2db86110adb`](./contracts/polygon-137/0x490eb30a9c735fee01aca406d78fe2db86110adb/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7b06348e9b70a3ad53121dd753370f2762f54091`](./contracts/polygon-137/0x7b06348e9b70a3ad53121dd753370f2762f54091/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1835a554e16b71e65d5bc302bc78732d0469881a`](./contracts/polygon-137/0x1835a554e16b71e65d5bc302bc78732d0469881a/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f6b011a7f20aadb96e6664f531d47b91c80f5f2`](./contracts/polygon-137/0x1f6b011a7f20aadb96e6664f531d47b91c80f5f2/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e6ef00a31544d1380b84e8a708cc74a0d5e24ee`](./contracts/polygon-137/0x2e6ef00a31544d1380b84e8a708cc74a0d5e24ee/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3fc777ff8ecb65ef04942787e7848765a984decd`](./contracts/polygon-137/0x3fc777ff8ecb65ef04942787e7848765a984decd/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6436ffe9527f3eb4b304a46abf53f17e427b1d97`](./contracts/polygon-137/0x6436ffe9527f3eb4b304a46abf53f17e427b1d97/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x84dfcc299d18f2ee8338bd7b9a30d67787d91020`](./contracts/polygon-137/0x84dfcc299d18f2ee8338bd7b9a30d67787d91020/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xca176b1a1d7d8173477f6d2e9d25db69bc84f0aa`](./contracts/polygon-137/0xca176b1a1d7d8173477f6d2e9d25db69bc84f0aa/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xddaab21ac66e683f742cde298fa5a1288697ff82`](./contracts/polygon-137/0xddaab21ac66e683f742cde298fa5a1288697ff82/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8`](./contracts/polygon-137/0x00bed9aac3dc25f7ff1166cc8efe9985cba563e8/) | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x99dcc68f0c58d3b944b29a8701e2421d88bf3338`](./contracts/polygon-137/0x99dcc68f0c58d3b944b29a8701e2421d88bf3338/) | AssetPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f438995ceb7aa3b8e4354861d0826bcc6797e02`](./contracts/polygon-137/0x9f438995ceb7aa3b8e4354861d0826bcc6797e02/) | AssetPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb65f623a4a992b5e697626b5943c9353935fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | BinaryxEarlyAdopter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0218d60051ba3c8d53fd07141b565864262ee098`](./contracts/polygon-137/0x0218d60051ba3c8d53fd07141b565864262ee098/) | CommissionsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2a3dcfd3a2c4e3652c3037b0f5526e356ac0bcda`](./contracts/polygon-137/0x2a3dcfd3a2c4e3652c3037b0f5526e356ac0bcda/) | CommissionsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x742a72deab9c4e959d579a51765219c420186d5c`](./contracts/polygon-137/0x742a72deab9c4e959d579a51765219c420186d5c/) | CommissionsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x27cdddf05d27e8dec3b2d1cde4af2ad22fa0b740`](./contracts/polygon-137/0x27cdddf05d27e8dec3b2d1cde4af2ad22fa0b740/) | CoreManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7c80b7be3522c0bc5492ea426ce42c9b3d08407e`](./contracts/polygon-137/0x7c80b7be3522c0bc5492ea426ce42c9b3d08407e/) | CoreManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa1685e57edd42c3a905959cae88f0d0a07d55235`](./contracts/polygon-137/0xa1685e57edd42c3a905959cae88f0d0a07d55235/) | CoreManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x79089537b95a34b38533e865ae0ddfefc516bbd6`](./contracts/polygon-137/0x79089537b95a34b38533e865ae0ddfefc516bbd6/) | KycStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7b6ec8841787a689be26ae74ecef1a07d587d1ed`](./contracts/polygon-137/0x7b6ec8841787a689be26ae74ecef1a07d587d1ed/) | KycStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xdc726401ad7bf0411eaf808f60acffd3785b921c`](./contracts/polygon-137/0xdc726401ad7bf0411eaf808f60acffd3785b921c/) | KycStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3cd17fe9c61230493664da7a43ea08562f64cf3d`](./contracts/polygon-137/0x3cd17fe9c61230493664da7a43ea08562f64cf3d/) | OffPlan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d1c0726749d7dbcce27ec016868800dd835ed3f`](./contracts/polygon-137/0x2d1c0726749d7dbcce27ec016868800dd835ed3f/) | OffPlanFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f`](./contracts/polygon-137/0x0fee15a3f396ced61b7c300820b6c1abdc14fa2f/) | OracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1eb842c2b87de93179c2b6326255f401ec0ff1c2`](./contracts/polygon-137/0x1eb842c2b87de93179c2b6326255f401ec0ff1c2/) | OracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1785e5efca0bac2098b13aa072598dadeb7ad3d7`](./contracts/polygon-137/0x1785e5efca0bac2098b13aa072598dadeb7ad3d7/) | PropertyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47354378442d192aa10623e7b61f1a9f5c5fdf5f`](./contracts/polygon-137/0x47354378442d192aa10623e7b61f1a9f5c5fdf5f/) | PropertyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d692a1d1f21327251262270869bbf131348b071`](./contracts/polygon-137/0x0d692a1d1f21327251262270869bbf131348b071/) | ReferralsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0fa845769e189a2780ade065a74279c5c2f7cd8e`](./contracts/polygon-137/0x0fa845769e189a2780ade065a74279c5c2f7cd8e/) | ReferralsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa17c21bf7164e26dbe975823b4348adec288e46`](./contracts/polygon-137/0xfa17c21bf7164e26dbe975823b4348adec288e46/) | ResellPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5cce1934ad84572e688dac601395708cf17fdba1`](./contracts/polygon-137/0x5cce1934ad84572e688dac601395708cf17fdba1/) | ResellPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04b4728e816a5eba0c7c747617f430ddf9ad104e`](./contracts/polygon-137/0x04b4728e816a5eba0c7c747617f430ddf9ad104e/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e75488d9699ea74b0816ceb3062109dfdd4b229`](./contracts/polygon-137/0x2e75488d9699ea74b0816ceb3062109dfdd4b229/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x388e11cdd3f92515b3831f0a421e79fdf92e5065`](./contracts/polygon-137/0x388e11cdd3f92515b3831f0a421e79fdf92e5065/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xdbbb9b0de7c22bfe4ffe14a6cc36bf526cfbafe0`](./contracts/polygon-137/0xdbbb9b0de7c22bfe4ffe14a6cc36bf526cfbafe0/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x334747e78908e22efa6ea1320e316a227b05b59f`](./contracts/polygon-137/0x334747e78908e22efa6ea1320e316a227b05b59f/) | SecondaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x29a6674ce7691c8c895a147cb4dde1893b221af5`](./contracts/polygon-137/0x29a6674ce7691c8c895a147cb4dde1893b221af5/) | UiProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 15 |
| needs_review | 101 |

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
