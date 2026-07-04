# Agentic Audit Brief: PancakeSwap

## Project Overview

- Project: PancakeSwap (`pancakeswap`)
- Website: [https://pancakeswap.finance](https://pancakeswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:31.784Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 105 unique implementations (105 raw deployments)
- DeFi Llama TVL: $2,086,045,355.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 103 project-authored contract(s) across 4 chain(s); 1 ERC4626 vault, 13 ERC20 tokens, 5 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (whitelist, proxy, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 105 (105 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 20/105 (19.0%)
- Deployed-live implementations: 105 of 105 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 20/105
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 105
- Raw deployments: 105
- Audits discovered: 31 (31 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 2 fresh, 6 aging, 22 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 20 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 13.3% (Cyfrin, SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 13 | 12.4% | 2023-03 |
| yAudit | Tier 2 | 7 | 6.7% | 2026-06 |
| Pashov Audit Group | Tier 2 | 2 | 1.9% | 2025-05 |
| PeckShield | Tier 2 | 2 | 1.9% | 2023-03 |
| Zellic | Tier 2 | 2 | 1.9% | 2024-10 |
| Cyfrin | Tier 1 | 1 | 1.0% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CakeToken | unknown | bsc | n/a | [`0x086bef...88807b`](./contracts/bsc-56/0x086bef28ebfb560e787989d025c83bd1e288807b/) | ✅ Audited |
| CLPoolManager | unknown | base | n/a | [`0xa0ffb9...14058b`](./contracts/base-8453/0xa0ffb9c1ce1fe56963b0321b32e7a0302114058b/) | ✅ Audited |
| CrossFarmingReceiver | unknown | bsc | n/a | [`0x0726a8...db13c2`](./contracts/bsc-56/0x0726a8c8206b9ec0afb788df5adb36a8aedb13c2/) | ✅ Audited |
| CrossFarmingToken | unknown | bsc | n/a | [`0x03b4e4...46bd26`](./contracts/bsc-56/0x03b4e4822c0331fa6b36e96e4cb773c10946bd26/) | ✅ Audited |
| MasterChef | unknown | bsc | n/a | [`0x278203...15078d`](./contracts/bsc-56/0x2782030faaec9f6dac96cda9c1df3125a015078d/) | ✅ Audited |
| MasterChefV2 | unknown | bsc | n/a | [`0x327e6e...db5f1f`](./contracts/bsc-56/0x327e6e33e4b31ccbd6edb31c788aba3b6fdb5f1f/) | ✅ Audited |
| MasterChefV3 | unknown | arbitrum | n/a | [`0x5e09ac...daa694`](./contracts/arbitrum-42161/0x5e09acf80c0296740ec5d6f643005a4ef8daa694/) | ✅ Audited |
| PancakeFactory | unknown | ethereum | n/a | [`0x109705...fcb362`](./contracts/ethereum-1/0x1097053fd2ea711dad45caccc45eff7548fcb362/) | ✅ Audited |
| PancakePredictionV2 | unknown | bsc | n/a | [`0x18b2a6...a49cda`](./contracts/bsc-56/0x18b2a687610328590bc8f2e5fedde3b582a49cda/) | ✅ Audited |
| PancakeRouter | unknown | bsc | n/a | [`0x02ee06...8b689f`](./contracts/bsc-56/0x02ee06c137a106255299589b3184f5ba438b689f/) | ✅ Audited |
| PancakeStableSwapFactory | unknown | bsc | n/a | [`0x09b780...550534`](./contracts/bsc-56/0x09b7801527b4ff9a2ea6fa0e2f141f0960550534/) | ✅ Audited |
| PancakeStableSwapLPFactory | unknown | arbitrum | n/a | [`0x09b780...550534`](./contracts/arbitrum-42161/0x09b7801527b4ff9a2ea6fa0e2f141f0960550534/) | ✅ Audited |
| PancakeSwapPotteryDraw | unknown | bsc | n/a | [`0x018719...26396e`](./contracts/bsc-56/0x01871991587d5671f3a2d4e2bcdc22f4e026396e/) | ✅ Audited |
| PancakeV3Factory | unknown | bsc | n/a | [`0x0bfbcf...091865`](./contracts/bsc-56/0x0bfbcf9fa4f9c56b0f40a671ad40e0805a091865/) | ✅ Audited |
| PancakeV3LmPoolDeployer | unknown | arbitrum | n/a | [`0x1c1081...1d7ecd`](./contracts/arbitrum-42161/0x1c1081e2bb3c2f3805bc89e1951c15be551d7ecd/) | ✅ Audited |
| PotteryKeeper | unknown | bsc | n/a | [`0x1fcffe...423c12`](./contracts/bsc-56/0x1fcffe104a74bc286ac0f7451e5b3a159f423c12/) | ✅ Audited |
| PotteryVaultFactory | unknown | bsc | n/a | [`0x1c30b2...46aea6`](./contracts/bsc-56/0x1c30b250aff2407cfacdd4f28a674824df46aea6/) | ✅ Audited |
| TestEIP1153 | unknown | arbitrum | n/a | [`0x26065f...31e276`](./contracts/arbitrum-42161/0x26065f86487ef8a5f5e7c24dfc9df4c25e31e276/) | ✅ Audited |
| UniversalRouter | unknown | arbitrum | n/a | [`0xa65342...986275`](./contracts/arbitrum-42161/0xa653423d0d2062d81219b8b9fff897f425986275/) | ✅ Audited |
| Vault | unknown | bsc | n/a | [`0x238a35...d5e6c4`](./contracts/bsc-56/0x238a358808379702088667322f80ac48bad5e6c4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ALMWrapperFactory | unknown | ethereum | n/a | [`0x00f515...b65d30`](./contracts/ethereum-1/0x00f5150e6b2daac2310f76f48f12df6a27b65d30/) | ⚠️ Unaudited |
| BalanceCheck | unknown | arbitrum | n/a | [`0x1179ad...75a2c0`](./contracts/arbitrum-42161/0x1179adfa22dd0e5050c1c00c9f8543a77f75a2c0/) | ⚠️ Unaudited |
| BalanceChecker | unknown | bsc | n/a | [`0x91688f...10b20a`](./contracts/bsc-56/0x91688f449478a47256990e4c609e000b5810b20a/) | ⚠️ Unaudited |
| BnbPricePrediction | unknown | bsc | n/a | [`0x05b4c8...fa9c75`](./contracts/bsc-56/0x05b4c8785f4c8856c47a3c2ebce313343efa9c75/) | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | [`0x187463...3b4208`](./contracts/bsc-56/0x187463a09569020659f4128c14fb13bce23b4208/) | ⚠️ Unaudited |
| BoundedTTLHook_1Week | unknown | arbitrum | n/a | [`0x0fc074...33aa3a`](./contracts/arbitrum-42161/0x0fc0744eace0aea3c3cf91fdf5b4a5428533aa3a/) | ⚠️ Unaudited |
| BunnyFactoryV2 | unknown | bsc | n/a | [`0x1c9922...bd7091`](./contracts/bsc-56/0x1c99222f857c1d72234703ec5b9ed88089bd7091/) | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | bsc | n/a | [`0x7c8b60...637c7a`](./contracts/bsc-56/0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a/) | ⚠️ Unaudited |
| BunnySpecialLottery | unknown | bsc | n/a | [`0x24ed31...1fa0b2`](./contracts/bsc-56/0x24ed31d31c5868e5a96aa77fdcb890f3511fa0b2/) | ⚠️ Unaudited |
| BunnySpecialPrediction | unknown | bsc | n/a | [`0x05d27b...50717f`](./contracts/bsc-56/0x05d27b7aef7fc313f6e139e8785beb0a7550717f/) | ⚠️ Unaudited |
| BunnySpecialV2 | unknown | bsc | n/a | [`0x23c41d...510066`](./contracts/bsc-56/0x23c41d28a239ddcaabd1bb1def8d057189510066/) | ⚠️ Unaudited |
| CakeOFT | unknown | ethereum | n/a | [`0x152649...d4c898`](./contracts/ethereum-1/0x152649ea73beab28c5b49b26eb48f7ead6d4c898/) | ⚠️ Unaudited |
| CATERC20 | unknown | ethereum | n/a | [`0xb43570...090343`](./contracts/ethereum-1/0xb4357054c3da8d46ed642383f03139ac7f090343/) | ⚠️ Unaudited |
| ClammRouter | unknown | arbitrum | n/a | [`0x7255e9...5c2e26`](./contracts/arbitrum-42161/0x7255e952fe8138490ef254c68ef328a7ea5c2e26/) | ⚠️ Unaudited |
| ClammRouterV2 | unknown | arbitrum | n/a | [`0x2dd8bf...301fa6`](./contracts/arbitrum-42161/0x2dd8bf6bf68dd903f32b9defb20443305d301fa6/) | ⚠️ Unaudited |
| DopexV2OptionMarket | unknown | arbitrum | n/a | [`0x3808e8...02be0d`](./contracts/arbitrum-42161/0x3808e8c983023a125ffe2714e2a703a3bf02be0d/) | ⚠️ Unaudited |
| DopexV2OptionMarketV2 | unknown | arbitrum | n/a | [`0x4eed3a...76bb92`](./contracts/arbitrum-42161/0x4eed3a2b797bf5630517ecce2e31c1438a76bb92/) | ⚠️ Unaudited |
| EnumerableCollection | unknown | bsc | n/a | [`0x0993c9...05b230`](./contracts/bsc-56/0x0993c9ca4e45a3d41463e2e632f67e1d2505b230/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x06d419...95f234`](./contracts/bsc-56/0x06d419b9e8a375a9180bde7b871f72cf8595f234/) | ⚠️ Unaudited |
| ERC6160Ext20 | unknown | base | n/a | [`0x8d010b...8f90b8`](./contracts/base-8453/0x8d010bf9c26881788b4e6bf5fd1bdc358c8f90b8/) | ⚠️ Unaudited |
| ERC721NFTMarketV1 | unknown | bsc | n/a | [`0x17539c...345c5a`](./contracts/bsc-56/0x17539cca21c7933df5c980172d22659b8c345c5a/) | ⚠️ Unaudited |
| FactoryViewer | unknown | bsc | n/a | [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/) | ⚠️ Unaudited |
| FarmBooster | unknown | ethereum | n/a | [`0x5d5fbb...58a77a`](./contracts/ethereum-1/0x5d5fbb19572c4a89846198c3dbedb2b6ef58a77a/) | ⚠️ Unaudited |
| FarmBoosterProxyFactory | unknown | bsc | n/a | [`0x2c3622...8ef3ba`](./contracts/bsc-56/0x2c36221bf724c60e9fee3dd44e2da8017a8ef3ba/) | ⚠️ Unaudited |
| FarmBoosterV2 | unknown | arbitrum | n/a | [`0x17097e...423ee6`](./contracts/arbitrum-42161/0x17097e483ba92d5fddeba546b175019ef7423ee6/) | ⚠️ Unaudited |
| FarmBoosterV3 | unknown | ethereum | n/a | [`0x09b780...550534`](./contracts/ethereum-1/0x09b7801527b4ff9a2ea6fa0e2f141f0960550534/) | ⚠️ Unaudited |
| GaguesOwner | unknown | bsc | n/a | [`0x1e41e9...350830`](./contracts/bsc-56/0x1e41e9885fe139cfaea3d174677e0a0c8c350830/) | ⚠️ Unaudited |
| GasDrainingContract | unknown | arbitrum | n/a | [`0xfb1e19...c0f298`](./contracts/arbitrum-42161/0xfb1e19430784338f341a6d9b2b8965c13ec0f298/) | ⚠️ Unaudited |
| ICakeV3 | unknown | ethereum | n/a | [`0x3d54da...75005e`](./contracts/ethereum-1/0x3d54da368065cee6986c9bb99ab756a92775005e/) | ⚠️ Unaudited |
| IFO | unknown | bsc | n/a | [`0x4eff3a...21d820`](./contracts/bsc-56/0x4eff3a0a82f624b617aab7af92777deec521d820/) | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/) | ⚠️ Unaudited |
| IFODeployerV10 | unknown | bsc | n/a | [`0x178705...9a3124`](./contracts/bsc-56/0x1787053dfe47e24f397d61ff6a83fa10109a3124/) | ⚠️ Unaudited |
| IFODeployerV4 | unknown | bsc | n/a | [`0x0cdc0b...df720d`](./contracts/bsc-56/0x0cdc0b02bf9470b64b30d38d4d624c99d2df720d/) | ⚠️ Unaudited |
| IFODeployerV5 | unknown | bsc | n/a | [`0x2604e5...9a1a91`](./contracts/bsc-56/0x2604e5c0ba8b374982cddb43bedb743c0c9a1a91/) | ⚠️ Unaudited |
| IFODeployerV8 | unknown | ethereum | n/a | [`0x11b634...8095d7`](./contracts/ethereum-1/0x11b63467cf299d634d7c1a07221d78c5f08095d7/) | ⚠️ Unaudited |
| IFOPool | unknown | bsc | n/a | [`0x02e8c8...253ccf`](./contracts/bsc-56/0x02e8c8eaa7115eb469d06d18d0ca308103253ccf/) | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | bsc | n/a | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | ⚠️ Unaudited |
| IFOV2 | unknown | bsc | n/a | [`0x0fdd82...c77e0a`](./contracts/bsc-56/0x0fdd82987b724ec32c6f1add369ec8dfe3c77e0a/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | [`0x127551...d13280`](./contracts/bsc-56/0x127551b5cd5d21bd736483cb829b580a4cd13280/) | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | n/a | [`0x1900e0...e4992e`](./contracts/bsc-56/0x1900e0d289ebc5b7b75aff8232464b9f99e4992e/) | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | bsc | n/a | [`0x6b4dc7...bfc3ba`](./contracts/bsc-56/0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba/) | ⚠️ Unaudited |
| MasterChefV3KeeperV2 | unknown | arbitrum | n/a | [`0xa39da3...d32dbf`](./contracts/arbitrum-42161/0xa39da3065822c368ca8b8e17e46485f3bfd32dbf/) | ⚠️ Unaudited |
| MasterChefV3Operator | unknown | bsc | n/a | [`0x0a7ff2...576d45`](./contracts/bsc-56/0x0a7ff29bc21d78a6f8a4d561a429fe6420576d45/) | ⚠️ Unaudited |
| MasterChefV3ReceiverV2 | unknown | arbitrum | n/a | [`0x756af6...99dc52`](./contracts/arbitrum-42161/0x756af611ce935edcd172888b45ea6d22a199dc52/) | ⚠️ Unaudited |
| MigrationHelperV2 | unknown | bsc | n/a | [`0x05ec4c...2b30dd`](./contracts/bsc-56/0x05ec4cdec3450948ddd497db55f286b4082b30dd/) | ⚠️ Unaudited |
| MixedQuoter | unknown | bsc | n/a | [`0x2e6d57...b18b39`](./contracts/bsc-56/0x2e6d57ee6c3e9dbf32066681463566570eb18b39/) | ⚠️ Unaudited |
| MockBEP20 | unknown | bsc | n/a | [`0x00db92...f9a8ce`](./contracts/bsc-56/0x00db92bd224b2398e67390e801985fe768f9a8ce/) | ⚠️ Unaudited |
| MockToken | unknown | bsc | n/a | [`0x08d6cf...bd9021`](./contracts/bsc-56/0x08d6cfd1371aeb5a769843d4339954c811bd9021/) | ⚠️ Unaudited |
| OptionPricingLinear | unknown | arbitrum | n/a | [`0x6db0a1...95ccde`](./contracts/arbitrum-42161/0x6db0a1cbe2ea1dac0e9d4c61d7de52bef295ccde/) | ⚠️ Unaudited |
| OptionPricingLinearV2 | unknown | arbitrum | n/a | [`0x0fd987...6940b5`](./contracts/arbitrum-42161/0x0fd9874a8902772c3573c11e8162f78cc96940b5/) | ⚠️ Unaudited |
| OptionPricingLinearV2_1 | unknown | arbitrum | n/a | [`0x01ac7c...6073bc`](./contracts/arbitrum-42161/0x01ac7c15f5c698463154f4841c317a2cac6073bc/) | ⚠️ Unaudited |
| OracleProxy | unknown | bsc | n/a | [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/) | ⚠️ Unaudited |
| PancakeAIPrediction | unknown | arbitrum | n/a | [`0x1cdc19...d799f4`](./contracts/arbitrum-42161/0x1cdc19b13729f16c5284a0ace825f83fc9d799f4/) | ⚠️ Unaudited |
| PancakeInfoReceiver | unknown | ethereum | n/a | [`0x00507f...46a39e`](./contracts/ethereum-1/0x00507f433022b27f3e337af46affa9888246a39e/) | ⚠️ Unaudited |
| PancakeInterfaceMulticallV2 | unknown | arbitrum | n/a | [`0xbffe39...f84adf`](./contracts/arbitrum-42161/0xbffe39cdd04f0183e0493c1deb6e275c5cf84adf/) | ⚠️ Unaudited |
| PancakeProfileProxyV2 | unknown | ethereum | n/a | [`0x9b9811...b697c1`](./contracts/ethereum-1/0x9b9811171741fe837b43ebe05523ed66e3b697c1/) | ⚠️ Unaudited |
| PancakeRouterSpec | unknown | ethereum | n/a | [`0x016efe...0ec4f7`](./contracts/ethereum-1/0x016efe583e7c218f333668626d88e5bfb60ec4f7/) | ⚠️ Unaudited |
| PancakeSquad | unknown | bsc | n/a | [`0x0a8901...020eba`](./contracts/bsc-56/0x0a8901b0e25deb55a87524f0cc164e9644020eba/) | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolDeployer | unknown | ethereum | n/a | [`0x880aae...cee703`](./contracts/ethereum-1/0x880aae9893ab8b5117b11c7d1fb6fafad1cee703/) | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolInfo | unknown | bsc | n/a | [`0x0d396b...7bed3a`](./contracts/bsc-56/0x0d396b1e47143221b7d9fbac73ccb647ac7bed3a/) | ⚠️ Unaudited |
| PancakeSwapMMPool | unknown | ethereum | n/a | [`0x9ca2a4...f242bc`](./contracts/ethereum-1/0x9ca2a439810524250e543ba8fb6e88578af242bc/) | ⚠️ Unaudited |
| PancakeV3StateMulticall | unknown | ethereum | n/a | [`0x80898f...e5d4c2`](./contracts/ethereum-1/0x80898f80cfa3fa3abf410d90e69adc432ae5d4c2/) | ⚠️ Unaudited |
| PancakeVeReceiver | unknown | ethereum | n/a | [`0x42b7e3...ff3d72`](./contracts/ethereum-1/0x42b7e3961f855631e2e6897db6b686f246ff3d72/) | ⚠️ Unaudited |
| PancakeVeReceiverV2 | unknown | ethereum | n/a | [`0x1a4dc7...bff0c5`](./contracts/ethereum-1/0x1a4dc7470d907fb0105a4ea1e9bbd8f9b2bff0c5/) | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | bsc | n/a | [`0x4086d4...00da07`](./contracts/bsc-56/0x4086d46a650517fa756f620507db704d3900da07/) | ⚠️ Unaudited |
| PoolsGraphTrigger | unknown | bsc | n/a | [`0x327d76...07893b`](./contracts/bsc-56/0x327d76160d24935879992b54bb2d22c69507893b/) | ⚠️ Unaudited |
| PriceLens0 | unknown | ethereum | n/a | [`0x175f31...0b52ad`](./contracts/ethereum-1/0x175f312f01de10ab4041b8a6d57bb837f60b52ad/) | ⚠️ Unaudited |
| ProxyForCakePoolFactory | unknown | bsc | n/a | [`0x03e80d...7a2727`](./contracts/bsc-56/0x03e80d537dca71e826eac6fe74fbb0db607a2727/) | ⚠️ Unaudited |
| RevenueSharingPoolGateway | unknown | bsc | n/a | [`0x011f2a...47d94a`](./contracts/bsc-56/0x011f2a82846a4e9c62c2fc4fd6fdbad19147d94a/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | [`0x0124ed...d6dd16`](./contracts/bsc-56/0x0124ed38db9c3a04a4a217172288454cd1d6dd16/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | bsc | n/a | [`0x233af1...dfae0d`](./contracts/bsc-56/0x233af197238baa80c7bcec09dacc2e780ddfae0d/) | ⚠️ Unaudited |
| SousChef | unknown | bsc | n/a | [`0xfaa221...71b4d3`](./contracts/bsc-56/0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| sYSLToken | unknown | bsc | n/a | [`0x0cbd08...9f6464`](./contracts/bsc-56/0x0cbd087c3d04a74598e75100676c1a916d9f6464/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x4b57a6...20b410`](./contracts/bsc-56/0x4b57a6122651ed5dc0297a42c5a0b4400b20b410/) | ⚠️ Unaudited |
| TradingCompV3 | unknown | bsc | n/a | [`0x1c5161...c3badf`](./contracts/bsc-56/0x1c5161cdb145de35a8961f82b065fd1f75c3badf/) | ⚠️ Unaudited |
| TradingCompV4RewardDistribution | unknown | bsc | n/a | [`0x286752...a31f9c`](./contracts/bsc-56/0x2867529e2f7560891ba639d369132a218ba31f9c/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | arbitrum | n/a | [`0x2ab1e8...c38921`](./contracts/arbitrum-42161/0x2ab1e83920f884a96f231a72bccdebb7bfc38921/) | ⚠️ Unaudited |
| UpgradeProxy | unknown | bsc | n/a | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | ⚠️ Unaudited |
| UXLINKToken | unknown | arbitrum | n/a | [`0x1a6b3a...c8cff1`](./contracts/arbitrum-42161/0x1a6b3a62391eccaaa992ade44cd4afe6bec8cff1/) | ⚠️ Unaudited |
| VECakeProxy | unknown | ethereum | n/a | [`0x0ac4ed...6ea556`](./contracts/ethereum-1/0x0ac4ed1d63c51f2b35c555ee09b425f08e6ea556/) | ⚠️ Unaudited |
| VotePower | unknown | bsc | n/a | [`0x23919e...5a670e`](./contracts/bsc-56/0x23919eff31de085562046c1e5e2b4206715a670e/) | ⚠️ Unaudited |
| VotePowerV2 | unknown | bsc | n/a | [`0x02c32d...cf92b0`](./contracts/bsc-56/0x02c32d82ccab2c3b5b316d38cc76d00c3ccf92b0/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x0e1aa1...f318a7`](./contracts/ethereum-1/0x0e1aa137b97f57457baa147a4fa2a2a71df318a7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [BlockSec's Aggregator Router security audit]() (2025)](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_aggregator_v1.0-signed.pdf) | yAudit | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [* [HashDit's CAKE Token security audit]() (2026)](https://github.com/pancakeswap/cake-token/blob/main/audits/HashDit.pdf) | yAudit | Audit | 2026-06 | fresh | Direct | contract_name | 2 | high |
| [* [BlockSec's veCAKE / Gauges security audit]() (Nov 2023)](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_vecake_v1.0-signed.pdf) | yAudit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [* [SlowMist’s MasterChef V3 security audit]() (Mar 2023)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [* [PeckShield’s Exchange V3 security audit]() (Mar 2023)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [* [SlowMist’s Exchange V3 security audit]() (Mar 2023)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [* [Slowmist's Cross-chain Farming security audit]() (Sep 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20-%20CrossChain_en-us.pdf) | SlowMist | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [* [BlockSec's Cross-chain Farming security audit]() (Sep 2022)](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancakeswap_cross_farming_v1.0_signed.pdf) | yAudit | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |
| [* [Burrasec's Cross-chain security audit]() (2025)](https://github.com/pancakeswap/pancake-developer/blob/master/docs/public/crosschain/burrasec-audit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [* [Pashov's Cross-chain security audit]() (2025)](https://github.com/pancakeswap/pancake-developer/blob/master/docs/public/crosschain/pashov-audit.pdf) | Pashov Audit Group | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [* [Slowmist's StableSwap security audit]() (Aug 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20Stable%20Swap_en-us.pdf) | SlowMist | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [* [Slowmist's New CAKE Pool security audit]() (Mar 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20Pancakeswap-CakePool_en-us.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [* [Slowmist's MasterChef V2 security audit]() (Mar 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20MasterChef%20v2_en-us.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [* [Peckshield's Prediction V2 security audit]() (Aug 2021)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-PredictionV2-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [* [Peckshield's Lottery V2 security audit]() (Jul 2021)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeswapLottery-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [* [Slowmist's Lottery V2 security audit]() (Jun 2021)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20PancakeSwap%20Lottery.pdf) | yAudit | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [* [Slowmist's security audit of PancakeSwap]() (May 2021)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20%20-%20PancakeSwap.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FMa0anQ4GXvFPyVLjFRxr%2FPancakeSwap-OFT-Audit-OtterSec.pdf) | yAudit | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [* [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022)](https://github.com/Zellic/publications/blob/master/PancakeSwap%20Aptos%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [* [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022)](https://github.com/HalbornSecurity/PublicReports/blob/master/Move%20Smart%20Contract%20Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [* [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_MOVE_en-us.pdf) | SlowMist | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [OtterSec's PancakeSwap Aptos DEX security audit](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FNZnx8clCpR3r9bMMjkcs%2FOtterSec%20Audit%20%20Report%20-%20PancakeSwap%20Swap%20-%20Move.pdf) | yAudit | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Hexens.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Hexens.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OtterSec.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/OtterSec.pdf) | OtterSec | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Zellic.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Zellic.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name|n/a | 2 | high |
| [Cyfrin.pdf](https://github.com/pancakeswap/infinity-universal-router/blob/main/audits/Cyfrin.pdf) | Cyfrin | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20Lottery_en-us.pdf) | SlowMist | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_Pottery_en-us.pdf) | SlowMist | Audit | 2022-07 | stale | Direct | contract_name | 3 | high |
| [SlowMist Audit Report - PancakeSwap_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_en-us.pdf) | SlowMist | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [Smart Contract Security Audit Report - CakeVault.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20CakeVault.pdf) | yAudit | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=16
- Match method counts: extraction_exact=27

Zero-match audit list:

- [18022] * [BlockSec's Aggregator Router security audit]() (2025)
- [18024] * [BlockSec's veCAKE / Gauges security audit]() (Nov 2023)
- [18033] * [Slowmist's New CAKE Pool security audit]() (Mar 2022)
- [18036] * [Peckshield's Lottery V2 security audit]() (Jul 2021)
- [18037] * [Slowmist's Lottery V2 security audit]() (Jun 2021)
- [18039] OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit
- [18040] * [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022)
- [18041] * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022)
- [18042] * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022)
- [18043] OtterSec's PancakeSwap Aptos DEX security audit
- [18044] Hexens.pdf
- [18045] OtterSec.pdf
- [18052] blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf
- [18053] SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf
- [18056] Smart Contract Security Audit Report - CakeVault.pdf

Fork inheritance lineage and inherited audits are included when available.
