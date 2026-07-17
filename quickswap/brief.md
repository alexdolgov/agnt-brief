# Agentic Audit Brief: Quickswap

## Project Overview

- Project: Quickswap (`quickswap`)
- Website: [https://quickswap.exchange](https://quickswap.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.397Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: base, ethereum, manta, polygon
- Contract surface: 84 unique implementations (84 raw deployments)
- DeFi Llama TVL: $279,583,547.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 84 project-authored contract(s) across 4 chain(s); 6 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 18 common project-authored base contract(s) (dsmath, dsauth, dsauthevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 84; live-surface contracts included: 84 (69 live, 15 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/61 (0.0%)
- Deployed-live implementations: 69 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/84
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 84
- Raw deployments: 84
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressStorage | unknown | manta | n/a | [`0xc8e48fd037d1c4232f294b635e74d33a0573265a`](./contracts/manta-169/0xc8e48fd037d1c4232f294b635e74d33a0573265a/) | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | base | n/a | [`0x0ca6d588d9e3a14f62ef88afcd6b3d0ad13af1f0`](./contracts/base-8453/0x0ca6d588d9e3a14f62ef88afcd6b3d0ad13af1f0/) | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | base | n/a | [`0xb9ce7698ce3dcf21cc88bf7dcc1fe20c85e4226e`](./contracts/base-8453/0xb9ce7698ce3dcf21cc88bf7dcc1fe20c85e4226e/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | base | n/a | [`0x0987a3dc376a33ed720e15d2ec62ea6179d51141`](./contracts/base-8453/0x0987a3dc376a33ed720e15d2ec62ea6179d51141/) | ⚠️ Unaudited |
| AlgebraFactory | unknown | polygon | n/a | [`0x134c1dbe4860a9caaf89002574ffe814772d9904`](./contracts/polygon-137/0x134c1dbe4860a9caaf89002574ffe814772d9904/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | polygon | n/a | [`0x42375083fe3a4f77ce95af733c266d6bd5bd122a`](./contracts/polygon-137/0x42375083fe3a4f77ce95af733c266d6bd5bd122a/) | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | polygon | n/a | [`0x9923f42a02a82da63ee0dbbc5f8e311e3dd8a1f8`](./contracts/polygon-137/0x9923f42a02a82da63ee0dbbc5f8e311e3dd8a1f8/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | polygon | n/a | [`0x2d98e2fa9da15aa6dc9581ab097ced7af697cb92`](./contracts/polygon-137/0x2d98e2fa9da15aa6dc9581ab097ced7af697cb92/) | ⚠️ Unaudited |
| AlgebraTokenStaking | unknown | polygon | n/a | [`0x32cff674763b06b983c0d55ef2e41b84d16855bb`](./contracts/polygon-137/0x32cff674763b06b983c0d55ef2e41b84d16855bb/) | ⚠️ Unaudited |
| AlgebraUpgradeablePlugin | unknown | polygon | n/a | [`0x73a3e7115200b208ac0db09ba6269273eb54ef2c`](./contracts/polygon-137/0x73a3e7115200b208ac0db09ba6269273eb54ef2c/) | ⚠️ Unaudited |
| AlgebraUpgradeablePluginFactory | unknown | polygon | n/a | [`0x14cf271aaf0aa70f1b1ba59be568a97e16c81430`](./contracts/polygon-137/0x14cf271aaf0aa70f1b1ba59be568a97e16c81430/) | ⚠️ Unaudited |
| AlgebraVault | unknown | polygon | n/a | [`0x205c648b40cdcf13ff177d122db9fe848a07a23e`](./contracts/polygon-137/0x205c648b40cdcf13ff177d122db9fe848a07a23e/) | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | polygon | n/a | [`0x35622b9802b71f341762cf6f46a7e301931fc7c5`](./contracts/polygon-137/0x35622b9802b71f341762cf6f46a7e301931fc7c5/) | ⚠️ Unaudited |
| AlmPluginImplementation | unknown | polygon | n/a | [`0x8893eca40bed729b50094f7d9b76e8edcb6d108d`](./contracts/polygon-137/0x8893eca40bed729b50094f7d9b76e8edcb6d108d/) | ⚠️ Unaudited |
| Api3 | unknown | manta | n/a | [`0x91b6650048c26a0f439e9da93a7adb7f77833bf1`](./contracts/manta-169/0x91b6650048c26a0f439e9da93a7adb7f77833bf1/) | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | base | n/a | [`0xd3712643ec7138dd09ae6322e7626ad99542cc04`](./contracts/base-8453/0xd3712643ec7138dd09ae6322e7626ad99542cc04/) | ⚠️ Unaudited |
| BatchSender | unknown | manta | n/a | [`0x73903fec691a80ec47bc830bf3f0bad127a06e30`](./contracts/manta-169/0x73903fec691a80ec47bc830bf3f0bad127a06e30/) | ⚠️ Unaudited |
| cBridgeProxy | unknown | polygon | n/a | [`0x3420865a31c84c468a88bcaef6cec69e2885e7ba`](./contracts/polygon-137/0x3420865a31c84c468a88bcaef6cec69e2885e7ba/) | ⚠️ Unaudited |
| ConverterV3 | unknown | base | n/a | [`0x0ccff3d02a3a200263ec4e0fdb5e60a56721b8ae`](./contracts/base-8453/0x0ccff3d02a3a200263ec4e0fdb5e60a56721b8ae/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | n/a | [`0x958d208cdf087843e9ad98d23823d32e17d723a1`](./contracts/polygon-137/0x958d208cdf087843e9ad98d23823d32e17d723a1/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083069ed92da4c5291dba52d8912abfcc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| DynamicFeePluginImplementation | unknown | polygon | n/a | [`0x19883c02e237666672a7558d1eb88a7b586a7776`](./contracts/polygon-137/0x19883c02e237666672a7558d1eb88a7b586a7776/) | ⚠️ Unaudited |
| Executor | unknown | manta | n/a | [`0x5b1f500134bdd7f4359f5b2adc65f839737290f4`](./contracts/manta-169/0x5b1f500134bdd7f4359f5b2adc65f839737290f4/) | ⚠️ Unaudited |
| FarmingCenter | unknown | polygon | n/a | [`0x24a089ad55d688c18dba7e7514f5d2083b926e21`](./contracts/polygon-137/0x24a089ad55d688c18dba7e7514f5d2083b926e21/) | ⚠️ Unaudited |
| FarmingProxyPluginImplementation | unknown | polygon | n/a | [`0xe3c4a811622209fb286388233c4c8a29b4178341`](./contracts/polygon-137/0xe3c4a811622209fb286388233c4c8a29b4178341/) | ⚠️ Unaudited |
| FundingTracker | unknown | manta | n/a | [`0x11e3657fcde2053db4ec0e6327c3908aaf449c7b`](./contracts/manta-169/0x11e3657fcde2053db4ec0e6327c3908aaf449c7b/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| InstantProxy | unknown | polygon | n/a | [`0x1cbb985d2623c3ab4f671cae1a0f115e5ba30e9c`](./contracts/polygon-137/0x1cbb985d2623c3ab4f671cae1a0f115e5ba30e9c/) | ⚠️ Unaudited |
| MainContract | unknown | polygon | n/a | [`0x5316d1fb8543dfe6b292cb82be1aec5573baeea6`](./contracts/polygon-137/0x5316d1fb8543dfe6b292cb82be1aec5573baeea6/) | ⚠️ Unaudited |
| ManagerContract | unknown | polygon | n/a | [`0x388c639aebb5aa3ff93ea133a38ea6930bf2c3ac`](./contracts/polygon-137/0x388c639aebb5aa3ff93ea133a38ea6930bf2c3ac/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | polygon | n/a | [`0xc2fc5e868cb142181f589e809df974bb18f83c0b`](./contracts/polygon-137/0xc2fc5e868cb142181f589e809df974bb18f83c0b/) | ⚠️ Unaudited |
| MevxPluginImplementation | unknown | polygon | n/a | [`0xcaa39d446f7ff2f271ac9878ca35586b6aa16bd9`](./contracts/polygon-137/0xcaa39d446f7ff2f271ac9878ca35586b6aa16bd9/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | polygon | n/a | [`0x7219c5d9928db34973b5397d0b6ef00622dd3e8f`](./contracts/polygon-137/0x7219c5d9928db34973b5397d0b6ef00622dd3e8f/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | base | n/a | [`0x095eb76d5934958b21eec5142025beb6a7763c16`](./contracts/base-8453/0x095eb76d5934958b21eec5142025beb6a7763c16/) | ⚠️ Unaudited |
| OrderBook | unknown | manta | n/a | [`0x2264d1c908c4347f75f8eb438a4f94f4caecf634`](./contracts/manta-169/0x2264d1c908c4347f75f8eb438a4f94f4caecf634/) | ⚠️ Unaudited |
| Permit2 | unknown | manta | n/a | [`0x61211321e272584d6686f79bb205082c4cda5d5f`](./contracts/manta-169/0x61211321e272584d6686f79bb205082c4cda5d5f/) | ⚠️ Unaudited |
| PositionManager | unknown | manta | n/a | [`0xc5616f35fd19935b8a6e6792519c2146afcef38e`](./contracts/manta-169/0xc5616f35fd19935b8a6e6792519c2146afcef38e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0xa235edb8e8266d9119a6ed998487a7e8f86ca009`](./contracts/polygon-137/0xa235edb8e8266d9119a6ed998487a7e8f86ca009/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753dd7087cac61ab5644b308642cc1c33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | n/a | [`0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | ⚠️ Unaudited |
| Quoter | unknown | manta | n/a | [`0x3005827fb92a0cb7d0f65738d6d645d98a4ad96b`](./contracts/manta-169/0x3005827fb92a0cb7d0f65738d6d645d98a4ad96b/) | ⚠️ Unaudited |
| QuoterV2 | unknown | base | n/a | [`0x23e0583a3a000d567bb3848115065c1890d87fb5`](./contracts/base-8453/0x23e0583a3a000d567bb3848115065c1890d87fb5/) | ⚠️ Unaudited |
| ReferralReader | unknown | manta | n/a | [`0x08bc8ef0b71238055f9ee6bbc90869d8d0dbdcca`](./contracts/manta-169/0x08bc8ef0b71238055f9ee6bbc90869d8d0dbdcca/) | ⚠️ Unaudited |
| ReferralStorage | unknown | manta | n/a | [`0x7e01238227213c513010f5fabd0634febee93ee5`](./contracts/manta-169/0x7e01238227213c513010f5fabd0634febee93ee5/) | ⚠️ Unaudited |
| RubicBridgeProxy | unknown | polygon | n/a | [`0xbb21740ccda2792ec855ae707293d9bf9393c27f`](./contracts/polygon-137/0xbb21740ccda2792ec855ae707293d9bf9393c27f/) | ⚠️ Unaudited |
| RubicRouterV2 | unknown | polygon | n/a | [`0x070df4368366ae26a8c35666408fad686038a6c3`](./contracts/polygon-137/0x070df4368366ae26a8c35666408fad686038a6c3/) | ⚠️ Unaudited |
| RubicSymbiosisProxy | unknown | polygon | n/a | [`0x5559a6e2e485faac5672db6eaf37cefd67345bad`](./contracts/polygon-137/0x5559a6e2e485faac5672db6eaf37cefd67345bad/) | ⚠️ Unaudited |
| RubicToken | unknown | polygon | n/a | [`0x1e2599a2277a3e5c05c818f4159d5558e1bd9091`](./contracts/polygon-137/0x1e2599a2277a3e5c05c818f4159d5558e1bd9091/) | ⚠️ Unaudited |
| SecurityPluginImplementation | unknown | polygon | n/a | [`0x0eaa5949f70c2d4ce043343acdfe82a532fb686d`](./contracts/polygon-137/0x0eaa5949f70c2d4ce043343acdfe82a532fb686d/) | ⚠️ Unaudited |
| SecurityRegistry | unknown | polygon | n/a | [`0x1158d107a74f482d053859adcc421101938d68a3`](./contracts/polygon-137/0x1158d107a74f482d053859adcc421101938d68a3/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x02a2d80ce5c021a40aec9062a6273bbc33537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | ⚠️ Unaudited |
| Store | unknown | manta | n/a | [`0x443cf165b72e4b4331c0101a10553269972ed4b8`](./contracts/manta-169/0x443cf165b72e4b4331c0101a10553269972ed4b8/) | ⚠️ Unaudited |
| SwapContract | unknown | polygon | n/a | [`0x3d92144100f58160bdfffc296389ee32b6525915`](./contracts/polygon-137/0x3d92144100f58160bdfffc296389ee32b6525915/) | ⚠️ Unaudited |
| SwapContractV3 | unknown | polygon | n/a | [`0x51fec1fca690fb72ec59ca0e3fd9521c64cac47e`](./contracts/polygon-137/0x51fec1fca690fb72ec59ca0e3fd9521c64cac47e/) | ⚠️ Unaudited |
| SwapMain | unknown | polygon | n/a | [`0x8fe5f1ed2392f9c34232614dc874b6caf0676887`](./contracts/polygon-137/0x8fe5f1ed2392f9c34232614dc874b6caf0676887/) | ⚠️ Unaudited |
| SwapRouter | unknown | base | n/a | [`0xe6c9bb24ddb4ae5c6632dbe0de14e3e474c6cb04`](./contracts/base-8453/0xe6c9bb24ddb4ae5c6632dbe0de14e3e474c6cb04/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TickLens | unknown | polygon | n/a | [`0x28adcf283d392e3902f49a7e9a78e40d64348290`](./contracts/polygon-137/0x28adcf283d392e3902f49a7e9a78e40d64348290/) | ⚠️ Unaudited |
| Timelock | unknown | manta | n/a | [`0x87bcd3914ed3dcd5886ba1c0f0da25150b56fe54`](./contracts/manta-169/0x87bcd3914ed3dcd5886ba1c0f0da25150b56fe54/) | ⚠️ Unaudited |
| TokenSwap | unknown | polygon | n/a | [`0x333068d06563a8dfdbf330a0e04a9d128e98bf5a`](./contracts/polygon-137/0x333068d06563a8dfdbf330a0e04a9d128e98bf5a/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TradingValidator | unknown | manta | n/a | [`0x1fe9fba5955af58c18057213f0151bbe893ab2c8`](./contracts/manta-169/0x1fe9fba5955af58c18057213f0151bbe893ab2c8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x418d0fed2c650944e21e270a14903c2f1a6bc74e`](./contracts/polygon-137/0x418d0fed2c650944e21e270a14903c2f1a6bc74e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x7fd2bc7a69d885de849480713351f86b542d1a94`](./contracts/polygon-137/0x7fd2bc7a69d885de849480713351f86b542d1a94/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | manta | n/a | [`0x1fd671dac06df1431e79d772037e93bdb2dfeb48`](./contracts/manta-169/0x1fd671dac06df1431e79d772037e93bdb2dfeb48/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | polygon | n/a | [`0x5757371414417b8c6caad45baef941abc7d3ab32`](./contracts/polygon-137/0x5757371414417b8c6caad45baef941abc7d3ab32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xa478c2975ab1ea89e8196811f51a7b7ade33eb11`](./contracts/ethereum-1/0xa478c2975ab1ea89e8196811f51a7b7ade33eb11/) | ⚠️ Unaudited |
| UniswapV2Router01 | unknown | ethereum | n/a | [`0xf164fc0ec4e93095b804a4795bbe1e041497b92a`](./contracts/ethereum-1/0xf164fc0ec4e93095b804a4795bbe1e041497b92a/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | base | n/a | [`0x4a012af2b05616fb390ed32452641c3f04633bb5`](./contracts/base-8453/0x4a012af2b05616fb390ed32452641c3f04633bb5/) | ⚠️ Unaudited |
| V3Migrator | unknown | polygon | n/a | [`0x157b9913e00204f8c980bb00aa62e22b0dab1a63`](./contracts/polygon-137/0x157b9913e00204f8c980bb00aa62e22b0dab1a63/) | ⚠️ Unaudited |
| VamToken | unknown | polygon | n/a | [`0x1512d268a94ce119eacbf80139ad7910eb9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | ⚠️ Unaudited |
| VolatilityOraclePluginImplementation | unknown | polygon | n/a | [`0xaa6c08ac63ec1e4151e283a1734a4b3a6618264e`](./contracts/polygon-137/0xaa6c08ac63ec1e4151e283a1734a4b3a6618264e/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |

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
| [* PeckShield [security audit]()](https://github.com/orbs-network/twap/blob/master/Audit-Report-PeckShield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0xc8e48fd037d1c4232f294b635e74d33a0573265a`](./contracts/manta-169/0xc8e48fd037d1c4232f294b635e74d33a0573265a/) | AddressStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ca6d588d9e3a14f62ef88afcd6b3d0ad13af1f0`](./contracts/base-8453/0x0ca6d588d9e3a14f62ef88afcd6b3d0ad13af1f0/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb9ce7698ce3dcf21cc88bf7dcc1fe20c85e4226e`](./contracts/base-8453/0xb9ce7698ce3dcf21cc88bf7dcc1fe20c85e4226e/) | AlgebraCustomPoolEntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0987a3dc376a33ed720e15d2ec62ea6179d51141`](./contracts/base-8453/0x0987a3dc376a33ed720e15d2ec62ea6179d51141/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x134c1dbe4860a9caaf89002574ffe814772d9904`](./contracts/polygon-137/0x134c1dbe4860a9caaf89002574ffe814772d9904/) | AlgebraFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x42375083fe3a4f77ce95af733c266d6bd5bd122a`](./contracts/polygon-137/0x42375083fe3a4f77ce95af733c266d6bd5bd122a/) | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9923f42a02a82da63ee0dbbc5f8e311e3dd8a1f8`](./contracts/polygon-137/0x9923f42a02a82da63ee0dbbc5f8e311e3dd8a1f8/) | AlgebraLimitFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d98e2fa9da15aa6dc9581ab097ced7af697cb92`](./contracts/polygon-137/0x2d98e2fa9da15aa6dc9581ab097ced7af697cb92/) | AlgebraPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x32cff674763b06b983c0d55ef2e41b84d16855bb`](./contracts/polygon-137/0x32cff674763b06b983c0d55ef2e41b84d16855bb/) | AlgebraTokenStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x73a3e7115200b208ac0db09ba6269273eb54ef2c`](./contracts/polygon-137/0x73a3e7115200b208ac0db09ba6269273eb54ef2c/) | AlgebraUpgradeablePlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14cf271aaf0aa70f1b1ba59be568a97e16c81430`](./contracts/polygon-137/0x14cf271aaf0aa70f1b1ba59be568a97e16c81430/) | AlgebraUpgradeablePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x205c648b40cdcf13ff177d122db9fe848a07a23e`](./contracts/polygon-137/0x205c648b40cdcf13ff177d122db9fe848a07a23e/) | AlgebraVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35622b9802b71f341762cf6f46a7e301931fc7c5`](./contracts/polygon-137/0x35622b9802b71f341762cf6f46a7e301931fc7c5/) | AlgebraVaultFactoryStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8893eca40bed729b50094f7d9b76e8edcb6d108d`](./contracts/polygon-137/0x8893eca40bed729b50094f7d9b76e8edcb6d108d/) | AlmPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x91b6650048c26a0f439e9da93a7adb7f77833bf1`](./contracts/manta-169/0x91b6650048c26a0f439e9da93a7adb7f77833bf1/) | Api3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3712643ec7138dd09ae6322e7626ad99542cc04`](./contracts/base-8453/0xd3712643ec7138dd09ae6322e7626ad99542cc04/) | BasePluginV1Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x73903fec691a80ec47bc830bf3f0bad127a06e30`](./contracts/manta-169/0x73903fec691a80ec47bc830bf3f0bad127a06e30/) | BatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3420865a31c84c468a88bcaef6cec69e2885e7ba`](./contracts/polygon-137/0x3420865a31c84c468a88bcaef6cec69e2885e7ba/) | cBridgeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ccff3d02a3a200263ec4e0fdb5e60a56721b8ae`](./contracts/base-8453/0x0ccff3d02a3a200263ec4e0fdb5e60a56721b8ae/) | ConverterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x958d208cdf087843e9ad98d23823d32e17d723a1`](./contracts/polygon-137/0x958d208cdf087843e9ad98d23823d32e17d723a1/) | DragonLair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x19883c02e237666672a7558d1eb88a7b586a7776`](./contracts/polygon-137/0x19883c02e237666672a7558d1eb88a7b586a7776/) | DynamicFeePluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x5b1f500134bdd7f4359f5b2adc65f839737290f4`](./contracts/manta-169/0x5b1f500134bdd7f4359f5b2adc65f839737290f4/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x24a089ad55d688c18dba7e7514f5d2083b926e21`](./contracts/polygon-137/0x24a089ad55d688c18dba7e7514f5d2083b926e21/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe3c4a811622209fb286388233c4c8a29b4178341`](./contracts/polygon-137/0xe3c4a811622209fb286388233c4c8a29b4178341/) | FarmingProxyPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x11e3657fcde2053db4ec0e6327c3908aaf449c7b`](./contracts/manta-169/0x11e3657fcde2053db4ec0e6327c3908aaf449c7b/) | FundingTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1cbb985d2623c3ab4f671cae1a0f115e5ba30e9c`](./contracts/polygon-137/0x1cbb985d2623c3ab4f671cae1a0f115e5ba30e9c/) | InstantProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5316d1fb8543dfe6b292cb82be1aec5573baeea6`](./contracts/polygon-137/0x5316d1fb8543dfe6b292cb82be1aec5573baeea6/) | MainContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x388c639aebb5aa3ff93ea133a38ea6930bf2c3ac`](./contracts/polygon-137/0x388c639aebb5aa3ff93ea133a38ea6930bf2c3ac/) | ManagerContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2fc5e868cb142181f589e809df974bb18f83c0b`](./contracts/polygon-137/0xc2fc5e868cb142181f589e809df974bb18f83c0b/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcaa39d446f7ff2f271ac9878ca35586b6aa16bd9`](./contracts/polygon-137/0xcaa39d446f7ff2f271ac9878ca35586b6aa16bd9/) | MevxPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7219c5d9928db34973b5397d0b6ef00622dd3e8f`](./contracts/polygon-137/0x7219c5d9928db34973b5397d0b6ef00622dd3e8f/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x095eb76d5934958b21eec5142025beb6a7763c16`](./contracts/base-8453/0x095eb76d5934958b21eec5142025beb6a7763c16/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2264d1c908c4347f75f8eb438a4f94f4caecf634`](./contracts/manta-169/0x2264d1c908c4347f75f8eb438a4f94f4caecf634/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc5616f35fd19935b8a6e6792519c2146afcef38e`](./contracts/manta-169/0xc5616f35fd19935b8a6e6792519c2146afcef38e/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x831753dd7087cac61ab5644b308642cc1c33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | QuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x3005827fb92a0cb7d0f65738d6d645d98a4ad96b`](./contracts/manta-169/0x3005827fb92a0cb7d0f65738d6d645d98a4ad96b/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23e0583a3a000d567bb3848115065c1890d87fb5`](./contracts/base-8453/0x23e0583a3a000d567bb3848115065c1890d87fb5/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x08bc8ef0b71238055f9ee6bbc90869d8d0dbdcca`](./contracts/manta-169/0x08bc8ef0b71238055f9ee6bbc90869d8d0dbdcca/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7e01238227213c513010f5fabd0634febee93ee5`](./contracts/manta-169/0x7e01238227213c513010f5fabd0634febee93ee5/) | ReferralStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbb21740ccda2792ec855ae707293d9bf9393c27f`](./contracts/polygon-137/0xbb21740ccda2792ec855ae707293d9bf9393c27f/) | RubicBridgeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x070df4368366ae26a8c35666408fad686038a6c3`](./contracts/polygon-137/0x070df4368366ae26a8c35666408fad686038a6c3/) | RubicRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5559a6e2e485faac5672db6eaf37cefd67345bad`](./contracts/polygon-137/0x5559a6e2e485faac5672db6eaf37cefd67345bad/) | RubicSymbiosisProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1e2599a2277a3e5c05c818f4159d5558e1bd9091`](./contracts/polygon-137/0x1e2599a2277a3e5c05c818f4159d5558e1bd9091/) | RubicToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0eaa5949f70c2d4ce043343acdfe82a532fb686d`](./contracts/polygon-137/0x0eaa5949f70c2d4ce043343acdfe82a532fb686d/) | SecurityPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1158d107a74f482d053859adcc421101938d68a3`](./contracts/polygon-137/0x1158d107a74f482d053859adcc421101938d68a3/) | SecurityRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02a2d80ce5c021a40aec9062a6273bbc33537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x443cf165b72e4b4331c0101a10553269972ed4b8`](./contracts/manta-169/0x443cf165b72e4b4331c0101a10553269972ed4b8/) | Store | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d92144100f58160bdfffc296389ee32b6525915`](./contracts/polygon-137/0x3d92144100f58160bdfffc296389ee32b6525915/) | SwapContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x51fec1fca690fb72ec59ca0e3fd9521c64cac47e`](./contracts/polygon-137/0x51fec1fca690fb72ec59ca0e3fd9521c64cac47e/) | SwapContractV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8fe5f1ed2392f9c34232614dc874b6caf0676887`](./contracts/polygon-137/0x8fe5f1ed2392f9c34232614dc874b6caf0676887/) | SwapMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe6c9bb24ddb4ae5c6632dbe0de14e3e474c6cb04`](./contracts/base-8453/0xe6c9bb24ddb4ae5c6632dbe0de14e3e474c6cb04/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x28adcf283d392e3902f49a7e9a78e40d64348290`](./contracts/polygon-137/0x28adcf283d392e3902f49a7e9a78e40d64348290/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x87bcd3914ed3dcd5886ba1c0f0da25150b56fe54`](./contracts/manta-169/0x87bcd3914ed3dcd5886ba1c0f0da25150b56fe54/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x333068d06563a8dfdbf330a0e04a9d128e98bf5a`](./contracts/polygon-137/0x333068d06563a8dfdbf330a0e04a9d128e98bf5a/) | TokenSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1fe9fba5955af58c18057213f0151bbe893ab2c8`](./contracts/manta-169/0x1fe9fba5955af58c18057213f0151bbe893ab2c8/) | TradingValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x157b9913e00204f8c980bb00aa62e22b0dab1a63`](./contracts/polygon-137/0x157b9913e00204f8c980bb00aa62e22b0dab1a63/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1512d268a94ce119eacbf80139ad7910eb9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | VamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaa6c08ac63ec1e4151e283a1734a4b3a6618264e`](./contracts/polygon-137/0xaa6c08ac63ec1e4151e283a1734a4b3a6618264e/) | VolatilityOraclePluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 6 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18021] * PeckShield [security audit]()

Fork inheritance lineage and inherited audits are included when available.
