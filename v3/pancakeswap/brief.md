# Agentic Audit Brief: PancakeSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 34 (0 matched; 34 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PancakeSwap (`pancakeswap`)
- Website: [https://pancakeswap.finance](https://pancakeswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, goerli, linea, opbnb, polygon-zkevm, zksync-era
- Contract surface: 116 unique implementations (116 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,086,045,355.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for PancakeSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 105 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/105
- Verified + Unaudited implementations: 105
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 116
- Raw deployments: 116
- Audits discovered: 31 (31 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 2 fresh, 7 aging, 22 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (105)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ALMWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159259 | `0x00f5150e6b2daac2310f76f48f12df6a27b65d30` | ⚠️ Unaudited |
| BalanceCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159281 | `0x1179adfa22dd0e5050c1c00c9f8543a77f75a2c0` | ⚠️ Unaudited |
| BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159354 | `0x91688f449478a47256990e4c609e000b5810b20a` | ⚠️ Unaudited |
| BnbPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159309 | `0x05b4c8785f4c8856c47a3c2ebce313343efa9c75` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159327 | `0x187463a09569020659f4128c14fb13bce23b4208` | ⚠️ Unaudited |
| BoundedTTLHook_1Week | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159279 | `0x0fc0744eace0aea3c3cf91fdf5b4a5428533aa3a` | ⚠️ Unaudited |
| BunnyFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159332 | `0x1c99222f857c1d72234703ec5b9ed88089bd7091` | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159352 | `0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a` | ⚠️ Unaudited |
| BunnySpecialLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159339 | `0x24ed31d31c5868e5a96aa77fdcb890f3511fa0b2` | ⚠️ Unaudited |
| BunnySpecialPrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159310 | `0x05d27b7aef7fc313f6e139e8785beb0a7550717f` | ⚠️ Unaudited |
| BunnySpecialV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159338 | `0x23c41d28a239ddcaabd1bb1def8d057189510066` | ⚠️ Unaudited |
| CakeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159266 | `0x152649ea73beab28c5b49b26eb48f7ead6d4c898` | ⚠️ Unaudited |
| CakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159313 | `0x086bef28ebfb560e787989d025c83bd1e288807b` | ⚠️ Unaudited |
| CATERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159276 | `0xb4357054c3da8d46ed642383f03139ac7f090343` | ⚠️ Unaudited |
| ClammRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159292 | `0x7255e952fe8138490ef254c68ef328a7ea5c2e26` | ⚠️ Unaudited |
| ClammRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159288 | `0x2dd8bf6bf68dd903f32b9defb20443305d301fa6` | ⚠️ Unaudited |
| CLPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-159359 | `0xa0ffb9c1ce1fe56963b0321b32e7a0302114058b` | ⚠️ Unaudited |
| CrossFarmingReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159312 | `0x0726a8c8206b9ec0afb788df5adb36a8aedb13c2` | ⚠️ Unaudited |
| CrossFarmingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159307 | `0x03b4e4822c0331fa6b36e96e4cb773c10946bd26` | ⚠️ Unaudited |
| DopexV2OptionMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159289 | `0x3808e8c983023a125ffe2714e2a703a3bf02be0d` | ⚠️ Unaudited |
| DopexV2OptionMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159290 | `0x4eed3a2b797bf5630517ecce2e31c1438a76bb92` | ⚠️ Unaudited |
| EnumerableCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159315 | `0x0993c9ca4e45a3d41463e2e632f67e1d2505b230` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-159361 | `0x06d419b9e8a375a9180bde7b871f72cf8595f234` | ⚠️ Unaudited |
| ERC6160Ext20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-159358 | `0x8d010bf9c26881788b4e6bf5fd1bdc358c8f90b8` | ⚠️ Unaudited |
| ERC721NFTMarketV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159325 | `0x17539cca21c7933df5c980172d22659b8c345c5a` | ⚠️ Unaudited |
| FactoryViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159345 | `0x3202b26f60ab51731f7e9a88262e12cfe6ec8607` | ⚠️ Unaudited |
| FarmBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159271 | `0x5d5fbb19572c4a89846198c3dbedb2b6ef58a77a` | ⚠️ Unaudited |
| FarmBoosterProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159343 | `0x2c36221bf724c60e9fee3dd44e2da8017a8ef3ba` | ⚠️ Unaudited |
| FarmBoosterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159282 | `0x17097e483ba92d5fddeba546b175019ef7423ee6` | ⚠️ Unaudited |
| FarmBoosterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159261 | `0x09b7801527b4ff9a2ea6fa0e2f141f0960550534` | ⚠️ Unaudited |
| GaguesOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159333 | `0x1e41e9885fe139cfaea3d174677e0a0c8c350830` | ⚠️ Unaudited |
| GasDrainingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159297 | `0xfb1e19430784338f341a6d9b2b8965c13ec0f298` | ⚠️ Unaudited |
| ICakeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159269 | `0x3d54da368065cee6986c9bb99ab756a92775005e` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159350 | `0x4eff3a0a82f624b617aab7af92777deec521d820` | ⚠️ Unaudited |
| IFOByProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159306 | `0x0366f1a242c37ca73c73834b7fcd4a66af1d5700` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159326 | `0x1787053dfe47e24f397d61ff6a83fa10109a3124` | ⚠️ Unaudited |
| IFODeployerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159321 | `0x0cdc0b02bf9470b64b30d38d4d624c99d2df720d` | ⚠️ Unaudited |
| IFODeployerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159340 | `0x2604e5c0ba8b374982cddb43bedb743c0c9a1a91` | ⚠️ Unaudited |
| IFODeployerV8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159265 | `0x11b63467cf299d634d7c1a07221d78c5f08095d7` | ⚠️ Unaudited |
| IFOPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159304 | `0x02e8c8eaa7115eb469d06d18d0ca308103253ccf` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159356 | `0xf0ae9b39ef4a2680d67c9fb252816725f22624b0` | ⚠️ Unaudited |
| IFOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159323 | `0x0fdd82987b724ec32c6f1add369ec8dfe3c77e0a` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159324 | `0x127551b5cd5d21bd736483cb829b580a4cd13280` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159329 | `0x1900e0d289ebc5b7b75aff8232464b9f99e4992e` | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159351 | `0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159341 | `0x2782030faaec9f6dac96cda9c1df3125a015078d` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159347 | `0x327e6e33e4b31ccbd6edb31c788aba3b6fdb5f1f` | ⚠️ Unaudited |
| MasterChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-159360 | `0x5e09acf80c0296740ec5d6f643005a4ef8daa694` | ⚠️ Unaudited |
| MasterChefV3KeeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159294 | `0xa39da3065822c368ca8b8e17e46485f3bfd32dbf` | ⚠️ Unaudited |
| MasterChefV3Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159317 | `0x0a7ff29bc21d78a6f8a4d561a429fe6420576d45` | ⚠️ Unaudited |
| MasterChefV3ReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159293 | `0x756af611ce935edcd172888b45ea6d22a199dc52` | ⚠️ Unaudited |
| MigrationHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159311 | `0x05ec4cdec3450948ddd497db55f286b4082b30dd` | ⚠️ Unaudited |
| MixedQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159344 | `0x2e6d57ee6c3e9dbf32066681463566570eb18b39` | ⚠️ Unaudited |
| MockBEP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159299 | `0x00db92bd224b2398e67390e801985fe768f9a8ce` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159314 | `0x08d6cfd1371aeb5a769843d4339954c811bd9021` | ⚠️ Unaudited |
| OptionPricingLinear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159291 | `0x6db0a1cbe2ea1dac0e9d4c61d7de52bef295ccde` | ⚠️ Unaudited |
| OptionPricingLinearV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159280 | `0x0fd9874a8902772c3573c11e8162f78cc96940b5` | ⚠️ Unaudited |
| OptionPricingLinearV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159277 | `0x01ac7c15f5c698463154f4841c317a2cac6073bc` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-159362 | `0x4b1b0c225944808b9017f16e9b10305faa934cef` | ⚠️ Unaudited |
| PancakeAIPrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159285 | `0x1cdc19b13729f16c5284a0ace825f83fc9d799f4` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159264 | `0x1097053fd2ea711dad45caccc45eff7548fcb362` | ⚠️ Unaudited |
| PancakeInfoReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159258 | `0x00507f433022b27f3e337af46affa9888246a39e` | ⚠️ Unaudited |
| PancakeInterfaceMulticallV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159296 | `0xbffe39cdd04f0183e0493c1deb6e275c5cf84adf` | ⚠️ Unaudited |
| PancakePredictionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159328 | `0x18b2a687610328590bc8f2e5fedde3b582a49cda` | ⚠️ Unaudited |
| PancakeProfileProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159274 | `0x9b9811171741fe837b43ebe05523ed66e3b697c1` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159305 | `0x02ee06c137a106255299589b3184f5ba438b689f` | ⚠️ Unaudited |
| PancakeRouterSpec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159260 | `0x016efe583e7c218f333668626d88e5bfb60ec4f7` | ⚠️ Unaudited |
| PancakeSquad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159318 | `0x0a8901b0e25deb55a87524f0cc164e9644020eba` | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159316 | `0x09b7801527b4ff9a2ea6fa0e2f141f0960550534` | ⚠️ Unaudited |
| PancakeStableSwapLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159278 | `0x09b7801527b4ff9a2ea6fa0e2f141f0960550534` | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159273 | `0x880aae9893ab8b5117b11c7d1fb6fafad1cee703` | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159322 | `0x0d396b1e47143221b7d9fbac73ccb647ac7bed3a` | ⚠️ Unaudited |
| PancakeSwapMMPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159275 | `0x9ca2a439810524250e543ba8fb6e88578af242bc` | ⚠️ Unaudited |
| PancakeSwapPotteryDraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159302 | `0x01871991587d5671f3a2d4e2bcdc22f4e026396e` | ⚠️ Unaudited |
| PancakeV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159319 | `0x0bfbcf9fa4f9c56b0f40a671ad40e0805a091865` | ⚠️ Unaudited |
| PancakeV3LmPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159284 | `0x1c1081e2bb3c2f3805bc89e1951c15be551d7ecd` | ⚠️ Unaudited |
| PancakeV3StateMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159272 | `0x80898f80cfa3fa3abf410d90e69adc432ae5d4c2` | ⚠️ Unaudited |
| PancakeVeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159270 | `0x42b7e3961f855631e2e6897db6b686f246ff3d72` | ⚠️ Unaudited |
| PancakeVeReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159268 | `0x1a4dc7470d907fb0105a4ea1e9bbd8f9b2bff0c5` | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159348 | `0x4086d46a650517fa756f620507db704d3900da07` | ⚠️ Unaudited |
| PoolsGraphTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159346 | `0x327d76160d24935879992b54bb2d22c69507893b` | ⚠️ Unaudited |
| PotteryKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159334 | `0x1fcffe104a74bc286ac0f7451e5b3a159f423c12` | ⚠️ Unaudited |
| PotteryVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159330 | `0x1c30b250aff2407cfacdd4f28a674824df46aea6` | ⚠️ Unaudited |
| PriceLens0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159267 | `0x175f312f01de10ab4041b8a6d57bb837f60b52ad` | ⚠️ Unaudited |
| ProxyForCakePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159308 | `0x03e80d537dca71e826eac6fe74fbb0db607a2727` | ⚠️ Unaudited |
| RevenueSharingPoolGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159300 | `0x011f2a82846a4e9c62c2fc4fd6fdbad19147d94a` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159301 | `0x0124ed38db9c3a04a4a217172288454cd1d6dd16` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159335 | `0x233af197238baa80c7bcec09dacc2e780ddfae0d` | ⚠️ Unaudited |
| SousChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159357 | `0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159298 | `0x009cf7bc57584b7998236eff51b98a168dcea9b0` | ⚠️ Unaudited |
| sYSLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159320 | `0x0cbd087c3d04a74598e75100676c1a916d9f6464` | ⚠️ Unaudited |
| TestEIP1153 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159286 | `0x26065f86487ef8a5f5e7c24dfc9df4c25e31e276` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159349 | `0x4b57a6122651ed5dc0297a42c5a0b4400b20b410` | ⚠️ Unaudited |
| TradingCompV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159331 | `0x1c5161cdb145de35a8961f82b065fd1f75c3badf` | ⚠️ Unaudited |
| TradingCompV4RewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159342 | `0x2867529e2f7560891ba639d369132a218ba31f9c` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159295 | `0xa653423d0d2062d81219b8b9fff897f425986275` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159287 | `0x2ab1e83920f884a96f231a72bccdebb7bfc38921` | ⚠️ Unaudited |
| UpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159353 | `0x8d8f5a44d92d3cff40806548d204ffe90e58faa6` | ⚠️ Unaudited |
| UXLINKToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-159283 | `0x1a6b3a62391eccaaa992ade44cd4afe6bec8cff1` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159336 | `0x238a358808379702088667322f80ac48bad5e6c4` | ⚠️ Unaudited |
| VECakeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159262 | `0x0ac4ed1d63c51f2b35c555ee09b425f08e6ea556` | ⚠️ Unaudited |
| VotePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159337 | `0x23919eff31de085562046c1e5e2b4206715a670e` | ⚠️ Unaudited |
| VotePowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159303 | `0x02c32d82ccab2c3b5b316d38cc76d00c3ccf92b0` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159355 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159263 | `0x0e1aa137b97f57457baa147a4fa2a2a71df318a7` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x0bfbcf9fa4f9c56b0f40a671ad40e0805a091865` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x1b81d678ffb9c0263b24a97847620c99d213eb14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x3d00cdb4785f0ef20c903a13596e0b9b2c652227` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x427bf5b37357632377ecbec9de3626c71a5396c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x46a15b0b27311cedf172ab29e4f4766fbe7f4364` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x556b9306565093c855aea9ae92a594704c2cd59e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x864ed564875bddd6f421e226494a0e7c071c06f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xac1ce734566f390a94b00eb9bf561c2625bf44ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xb099b459887bc759dbf0293e12d3dfcd0c456cff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xbc203d7f83677c7ed3f7acec959963e7f4ecc5c2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [* [BlockSec's Aggregator Router security audit]() (2025)](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_aggregator_v1.0-signed.pdf) | yAudit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [* [HashDit's CAKE Token security audit]() (2026)](https://github.com/pancakeswap/cake-token/blob/main/audits/HashDit.pdf) | yAudit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [* [BlockSec's veCAKE / Gauges security audit]() (Nov 2023)](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_vecake_v1.0-signed.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [* [SlowMist’s MasterChef V3 security audit]() (Mar 2023)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [* [PeckShield’s Exchange V3 security audit]() (Mar 2023)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [* [SlowMist’s Exchange V3 security audit]() (Mar 2023)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [* [Slowmist's Cross-chain Farming security audit]() (Sep 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20-%20CrossChain_en-us.pdf) | SlowMist | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [* [BlockSec's Cross-chain Farming security audit]() (Sep 2022)](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancakeswap_cross_farming_v1.0_signed.pdf) | yAudit | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [* [Burrasec's Cross-chain security audit]() (2025)](https://github.com/pancakeswap/pancake-developer/blob/master/docs/public/crosschain/burrasec-audit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [* [Pashov's Cross-chain security audit]() (2025)](https://github.com/pancakeswap/pancake-developer/blob/master/docs/public/crosschain/pashov-audit.pdf) | Pashov Audit Group | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [* [Slowmist's StableSwap security audit]() (Aug 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20Stable%20Swap_en-us.pdf) | SlowMist | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [* [Slowmist's New CAKE Pool security audit]() (Mar 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20Pancakeswap-CakePool_en-us.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [* [Slowmist's MasterChef V2 security audit]() (Mar 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20MasterChef%20v2_en-us.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [* [Peckshield's Prediction V2 security audit]() (Aug 2021)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwap-PredictionV2-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [* [Peckshield's Lottery V2 security audit]() (Jul 2021)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeswapLottery-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [* [Slowmist's Lottery V2 security audit]() (Jun 2021)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20PancakeSwap%20Lottery.pdf) | yAudit | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [* [Slowmist's security audit of PancakeSwap]() (May 2021)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20%20-%20PancakeSwap.pdf) | yAudit | Audit | 2021-05 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FMa0anQ4GXvFPyVLjFRxr%2FPancakeSwap-OFT-Audit-OtterSec.pdf) | yAudit | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [* [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022)](https://github.com/Zellic/publications/blob/master/PancakeSwap%20Aptos%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [* [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022)](https://github.com/HalbornSecurity/PublicReports/blob/master/Move%20Smart%20Contract%20Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [* [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_MOVE_en-us.pdf) | SlowMist | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [OtterSec's PancakeSwap Aptos DEX security audit](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FNZnx8clCpR3r9bMMjkcs%2FOtterSec%20Audit%20%20Report%20-%20PancakeSwap%20Swap%20-%20Move.pdf) | yAudit | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Hexens.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Hexens.pdf) | Hexens | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [OtterSec.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/OtterSec.pdf) | OtterSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high|medium |
| [Zellic.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Zellic.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Cyfrin.pdf](https://github.com/pancakeswap/infinity-universal-router/blob/main/audits/Cyfrin.pdf) | Cyfrin | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap%20Lottery_en-us.pdf) | SlowMist | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_Pottery_en-us.pdf) | SlowMist | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [SlowMist Audit Report - PancakeSwap_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_en-us.pdf) | SlowMist | Audit | 2021-05 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Smart Contract Security Audit Report - CakeVault.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20CakeVault.pdf) | yAudit | Audit | 2021-05 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18022] * [BlockSec's Aggregator Router security audit]() (2025) — no match: The audit report explicitly lists the target as 'Aggregator Contract' of PancakeSwap. Additional contracts (ImmutableState, NativeWrapper, Payment, FeeHelper, ThenaConcentratedAdapter) are referenced in findings as part of the codebase.
- [18023] * [HashDit's CAKE Token security audit]() (2026) — no match: Scope table lists CakeToken.sol; MasterChef.sol is referenced in findings.
- [18024] * [BlockSec's veCAKE / Gauges security audit]() (Nov 2023) — no match: The report explicitly states the target contracts are VECake and GaugeVoting. No other contracts are mentioned in scope.
- [18025] * [SlowMist’s MasterChef V3 security audit]() (Mar 2023) — no match: Scope explicitly mentions MasterChefV3 and V3LMPool. Code overview lists contracts: MasterChefV3, PancakeV3LmPool, PancakeV3LmPoolDeployer, MasterChefV3Receiver. Audit date from audit result table: 2023.03.16 - 2023.03.22, end date used.
- [18026] * [PeckShield’s Exchange V3 security audit]() (Mar 2023) — no match: Scope defined as sub-directories projects/router, projects/v3-core, projects/v3-periphery. Contract names extracted from findings and code snippets.
- [18027] * [SlowMist’s Exchange V3 security audit]() (Mar 2023) — no match: Contracts extracted from scope description and visibility tables. Audit date from audit result table: 2023.03.07 - 2023.03.13, using end date.
- [18028] * [Slowmist's Cross-chain Farming security audit]() (Sep 2022) — no match: All contracts from the CrossChain project are in scope. Audit date from audit result table: 2022.09.19 - 2022.09.23, using end date.
- [18029] * [BlockSec's Cross-chain Farming security audit]() (Sep 2022) — no match: Scope explicitly limited to contracts under projects/cross-chain/contracts/ folder. Three contracts identified from findings.
- [18030] * [Burrasec's Cross-chain security audit]() (2025) — no match: All contracts listed in the Scope section of the report.
- [18031] * [Pashov's Cross-chain security audit]() (2025) — no match: Scope section explicitly lists 9 contracts. Audit date is the end date of the engagement period (April 28th 2025 - May 2nd 2025).
- [18032] * [Slowmist's StableSwap security audit]() (Aug 2022) — no match: Contracts explicitly listed in Code Overview section. Audit date from audit result table.
- [18033] * [Slowmist's New CAKE Pool security audit]() (Mar 2022) — no match: Only one contract, CakePool, is in scope. Audit date is the end date of the audit period (2022.03.28 - 2022.04.01).
- [18034] * [Slowmist's MasterChef V2 security audit]() (Mar 2022) — no match: Only one contract, MasterChefV2, is explicitly in scope. The audit date range is 2022.03.11 - 2022.03.17, using end date.
- [18035] * [Peckshield's Prediction V2 security audit]() (Aug 2021) — no match: The report does not have a dedicated scope section or file listing. The only contract explicitly named as the audit target is PancakePredictionV2, which is referenced in the findings and description. No other contracts or files are mentioned.
- [18036] * [Peckshield's Lottery V2 security audit]() (Jul 2021) — no match: Two contracts explicitly listed in scope: PancakeSwapLottery and RandomNumberGenerator. Addresses provided. Audit date from cover page.
- [18037] * [Slowmist's Lottery V2 security audit]() (Jun 2021) — no match: Contracts RandomNumberGenerator and PancakeSwapLottery are explicitly described in the audit report's Code Overview and Visibility Description sections.
- [18038] * [Slowmist's security audit of PancakeSwap]() (May 2021) — no match: Audit report for PancakeSwap contracts. Scope includes PancakeSwap Factory and Router contracts, with detailed visibility tables for PancakeRouter, PancakeERC20, PancakePair, and PancakeFactory.
- [18039] OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit — no match: Scope section lists two programs: cake-oft (EVM OFT) and pancake-cake-oft (Aptos OFT). Audit date is the final confirmation date of patches (Dec 20, 2022).
- [18040] * [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022) — no match: Scope section lists three Move modules: pancake::smart_chef, utils::math, utils::u256. Audit date is November 17, 2022 from cover page and timeline.
- [18041] * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022) — no match: Scope section explicitly lists modules: multisig_wallet, admin, router, swap_utils, swap. Audit date from engagement end date.
- [18042] * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022) — no match: Audit scope listed as 'pancake-swap/sources/ pancake-swap-storage/sources/' and contracts described in visibility tables: router, swap, swap_utils, storage. Audit date range 2022.10.10 - 2022.10.19, end date used.
- [18043] OtterSec's PancakeSwap Aptos DEX security audit — no match: The scope section lists only one program: pancake-swap. No individual contract files or modules are explicitly named beyond this program name.
- [18044] Hexens.pdf — no match: Extracted contracts from scope sections and file paths in findings. Audit date is the end date of the third scope (31.10.2024) as the latest delivery date.
- [18045] OtterSec.pdf — no match: Scope section lists two programs (infinity-core and infinity-periphery) but no individual contract files. Audit date is the end date of the assessment period (July 8 to August 29, 2024).
- [18046] Zellic.pdf — no match: Scope section lists 'infinity-core' repository with 'src/*' programs. Contract names extracted from threat model and findings sections.
- [18050] Cyfrin.pdf — no match: All contracts listed in the Audit Scope section of the report.
- [18052] blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf — no match: Only one contract in scope: FeeEarner.sol. Audit date from cover page.
- [18053] SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf — no match: Audit report for PancakeSwap Lottery contracts. Scope includes RandomNumberGenerator and PancakeSwapLottery contracts. Audit date is the end date of the audit period (2021.06.16 - 2021.06.24).
- [18054] SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf — no match: All contracts listed in the 'Contracts Description' and 'Visibility Description' sections are considered in scope. The audit date is the end date of the audit period (2022.07.04 - 2022.07.11).
- [18055] SlowMist Audit Report - PancakeSwap_en-us.pdf — no match: Audit report for PancakeSwap contracts. Scope includes Factory and Router contracts with BSC addresses. Visibility tables list PancakeRouter, PancakeERC20, PancakePair, PancakeFactory. Audit date is the end date of the audit period (2021.05.06 - 2021.05.12).
- [18056] Smart Contract Security Audit Report - CakeVault.pdf — no match: Contracts CakeVault and VaultOwner are explicitly listed with addresses in the 'Contracts Description' section. Audit date is the end date of the audit period (2021.05.21 - 2021.05.26).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| * [BlockSec's Aggregator Router security audit]() (2025) | Aggregator | unmatched — not counted | — | listed in scope and findings | no |
| * [BlockSec's Aggregator Router security audit]() (2025) | ImmutableState | unmatched — not counted | — | mentioned in findings | no |
| * [BlockSec's Aggregator Router security audit]() (2025) | NativeWrapper | unmatched — not counted | — | mentioned in findings | no |
| * [BlockSec's Aggregator Router security audit]() (2025) | Payment | unmatched — not counted | — | mentioned in findings | no |
| * [BlockSec's Aggregator Router security audit]() (2025) | FeeHelper | unmatched — not counted | — | mentioned in findings | no |
| * [BlockSec's Aggregator Router security audit]() (2025) | ThenaConcentratedAdapter | unmatched — not counted | — | mentioned in findings | no |
| * [HashDit's CAKE Token security audit]() (2026) | CakeToken | unmatched — not counted | — | listed in scope table | no |
| * [HashDit's CAKE Token security audit]() (2026) | MasterChef | unmatched — not counted | — | mentioned in Note 3 | no |
| * [BlockSec's veCAKE / Gauges security audit]() (Nov 2023) | VECake | unmatched — not counted | — | Section 1.1: 'The VECake Gauges Contracts include both the VECake and GaugeVoting contracts.' | no |
| * [BlockSec's veCAKE / Gauges security audit]() (Nov 2023) | GaugeVoting | unmatched — not counted | — | Section 1.1: 'The VECake Gauges Contracts include both the VECake and GaugeVoting contracts.' | no |
| * [SlowMist’s MasterChef V3 security audit]() (Mar 2023) | MasterChefV3 | unmatched — not counted | — | listed in scope and code overview | no |
| * [SlowMist’s MasterChef V3 security audit]() (Mar 2023) | PancakeV3LmPool | unmatched — not counted | — | listed in scope and code overview | no |
| * [SlowMist’s MasterChef V3 security audit]() (Mar 2023) | PancakeV3LmPoolDeployer | unmatched — not counted | — | mentioned in code overview visibility table | no |
| * [SlowMist’s MasterChef V3 security audit]() (Mar 2023) | MasterChefV3Receiver | unmatched — not counted | — | mentioned in code overview visibility table | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | PancakeV3FactoryOwner | unmatched — not counted | — | duplicate entry | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | PancakeV3Factory | unmatched — not counted | — | mentioned in findings PVE-002 and PVE-003 | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | PancakeV3Pool | unmatched — not counted | — | referenced in PVE-004 as IPancakeV3Pool | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | PancakeV3PoolDeployer | unmatched — not counted | — | referenced in PancakeV3Factory code snippet | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | IPancakeV3Factory | unmatched — not counted | — | interface mentioned in PancakeV3Factory contract | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | IPancakeV3Pool | unmatched — not counted | — | interface used in PVE-004 | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | IPancakeV3PoolDeployer | unmatched — not counted | — | interface used in PancakeV3Factory code snippet | no |
| * [PeckShield’s Exchange V3 security audit]() (Mar 2023) | IPancakeV3LmPool | unmatched — not counted | — | interface used in PVE-004 | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | PancakeV3Factory | unmatched — not counted | — | listed in scope and visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | PancakeV3Pool | unmatched — not counted | — | listed in scope and visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | PancakeV3FactoryOwner | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | PancakeV3PoolDeployer | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | StableSwapRouter | unmatched — not counted | — | listed in scope and visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | SmartRouter | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | V2SwapRouter | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | V3SwapRouter | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | NFTDescriptorEx | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | NonfungiblePositionManager | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | SwapRouter | unmatched — not counted | — | listed in visibility table | no |
| * [SlowMist’s Exchange V3 security audit]() (Mar 2023) | V3Migrator | unmatched — not counted | — | listed in visibility table | no |
| * [Slowmist's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingVault | unmatched — not counted | — | listed in scope and findings | no |
| * [Slowmist's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingSender | unmatched — not counted | — | listed in scope and findings | no |
| * [Slowmist's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingReceiver | unmatched — not counted | — | listed in scope and findings | no |
| * [Slowmist's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingProxy | unmatched — not counted | — | listed in scope and findings | no |
| * [Slowmist's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingToken | unmatched — not counted | — | listed in scope | no |
| * [BlockSec's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingSender | unmatched — not counted | — | mentioned in findings and scope description | no |
| * [BlockSec's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingVault | unmatched — not counted | — | mentioned in findings | no |
| * [BlockSec's Cross-chain Farming security audit]() (Sep 2022) | CrossFarmingProxy | unmatched — not counted | — | mentioned in findings | no |
| * [Burrasec's Cross-chain security audit]() (2025) | Dispatcher | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | XChainSender | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | AcrossAdapter | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | Commands | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | Constants | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | LibAddress | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | PCSOrder | unmatched — not counted | — | listed in scope | no |
| * [Burrasec's Cross-chain security audit]() (2025) | Payments | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | XChainSender | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | Dispatcher | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | AcrossAdapter | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | Payments | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | PCSOrder | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | LibAddress | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | Constants | unmatched — not counted | — | listed in scope | no |
| * [Pashov's Cross-chain security audit]() (2025) | Commands | unmatched — not counted | — | listed in scope | no |
| * [Slowmist's StableSwap security audit]() (Aug 2022) | PancakeStableSwap | unmatched — not counted | — | listed in scope and code overview | no |
| * [Slowmist's StableSwap security audit]() (Aug 2022) | PancakeStableSwapLP | unmatched — not counted | — | listed in code overview | no |
| * [Slowmist's StableSwap security audit]() (Aug 2022) | PancakeStableSwapFactory | unmatched — not counted | — | listed in code overview | no |
| * [Slowmist's New CAKE Pool security audit]() (Mar 2022) | CakePool | unmatched — not counted | — | Listed in scope as the main contract audited. | no |
| * [Slowmist's MasterChef V2 security audit]() (Mar 2022) | MasterChefV2 | unmatched — not counted | — | listed in scope section 3.1 | no |
| * [Peckshield's Prediction V2 security audit]() (Aug 2021) | PancakePredictionV2 | unmatched — not counted | — | Listed as target in findings (PVE-001, PVE-002, PVE-003) and referenced throughout the report as the main contract under audit. | no |
| * [Peckshield's Lottery V2 security audit]() (Jul 2021) | PancakeSwapLottery | unmatched — not counted | — | Listed in scope table and mentioned as audited contract | no |
| * [Peckshield's Lottery V2 security audit]() (Jul 2021) | RandomNumberGenerator | unmatched — not counted | — | Listed in scope table and mentioned as audited contract | no |
| * [Slowmist's Lottery V2 security audit]() (Jun 2021) | RandomNumberGenerator | unmatched — not counted | — | listed in scope and visibility description | no |
| * [Slowmist's Lottery V2 security audit]() (Jun 2021) | PancakeSwapLottery | unmatched — not counted | — | listed in scope and visibility description | no |
| * [Slowmist's security audit of PancakeSwap]() (May 2021) | PancakeSwap Factory | unmatched — not counted | — | listed in scope | no |
| * [Slowmist's security audit of PancakeSwap]() (May 2021) | PancakeSwap Router | unmatched — not counted | — | listed in scope | no |
| * [Slowmist's security audit of PancakeSwap]() (May 2021) | PancakeRouter | unmatched — not counted | — | contract description and visibility table | no |
| * [Slowmist's security audit of PancakeSwap]() (May 2021) | PancakeERC20 | unmatched — not counted | — | visibility table | no |
| * [Slowmist's security audit of PancakeSwap]() (May 2021) | PancakePair | unmatched — not counted | — | visibility table | no |
| * [Slowmist's security audit of PancakeSwap]() (May 2021) | PancakeFactory | unmatched — not counted | — | visibility table | no |
| OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit | cake-oft | unmatched — not counted | — | listed in scope table | no |
| OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit | pancake-cake-oft | unmatched — not counted | — | listed in scope table | no |
| * [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022) | pancake::smart_chef | unmatched — not counted | — | listed in scope section | no |
| * [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022) | utils::math | unmatched — not counted | — | listed in scope section | no |
| * [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022) | utils::u256 | unmatched — not counted | — | listed in scope section | no |
| * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022) | multisig_wallet | unmatched — not counted | — | listed in scope | no |
| * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022) | admin | unmatched — not counted | — | listed in scope | no |
| * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022) | router | unmatched — not counted | — | listed in scope | no |
| * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022) | swap_utils | unmatched — not counted | — | listed in scope | no |
| * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022) | swap | unmatched — not counted | — | listed in scope | no |
| * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022) | router | unmatched — not counted | — | listed in scope and visibility table | no |
| * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022) | swap | unmatched — not counted | — | listed in scope and visibility table | no |
| * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022) | swap_utils | unmatched — not counted | — | listed in visibility table | no |
| * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022) | storage | unmatched — not counted | — | mentioned in code overview and findings | no |
| OtterSec's PancakeSwap Aptos DEX security audit | pancake-swap | unmatched — not counted | — | listed in scope as the program name | no |
| Hexens.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | BinPoolManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | BinPool | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | BinHelper | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | BinPositionManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | ProtocolFees | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | ProtocolFeeController | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | CLPoolManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | CLPool | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | CLHooks | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | Hooks | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | SettlementGuard | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | VaultReserve | unmatched — not counted | — | mentioned in finding CAKE3-7 | no |
| Hexens.pdf | Ownable | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | BinPoolManagerOwner | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | CLPoolManagerOwner | unmatched — not counted | — | listed in scope and findings | no |
| Hexens.pdf | BinPosition | unmatched — not counted | — | mentioned in finding CAKE3-18 | no |
| Hexens.pdf | BinPoolParametersHelper | unmatched — not counted | — | mentioned in finding CAKE3-18 | no |
| Hexens.pdf | PoolKey | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | PoolId | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | PoolIdLibrary | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | Currency | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | IHooks | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | IBinPoolManager | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | ICLHooks | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | IProtocolFeeController | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | IProtocolFees | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | IPoolManager | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | IVault | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | BalanceDelta | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | BalanceDeltaLibrary | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | LPFeeLibrary | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | Constants | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | CustomRevert | unmatched — not counted | — | mentioned in findings | no |
| Hexens.pdf | MockERC20 | unmatched — not counted | — | mentioned in PoC | no |
| Hexens.pdf | Victim | unmatched — not counted | — | mentioned in PoC | no |
| Hexens.pdf | FakePoolManager | unmatched — not counted | — | mentioned in PoC | no |
| Hexens.pdf | BinFungibleToken | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | CLPositionManager | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | CLNotifier | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | SelfPermitERC721 | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | Permit2Forwarder | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | V4Router | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | BinMigrator | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | CLMigrator | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | MixedQuoter | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | IBinPositionManager | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | Planner | unmatched — not counted | — | listed in findings | no |
| Hexens.pdf | BaseActionsRouter | unmatched — not counted | — | listed in findings | no |
| OtterSec.pdf | infinity-core | unmatched — not counted | — | Scope section: 'infinity-core The core contracts of Pancake Swap...' | no |
| OtterSec.pdf | infinity-periphery | unmatched — not counted | — | Scope section: 'infinity-periphery Periphery contracts...' | no |
| Zellic.pdf | Vault | unmatched — not counted | — | mentioned in scope and threat model | no |
| Zellic.pdf | BinPoolManager | unmatched — not counted | — | listed in scope and threat model | no |
| Zellic.pdf | CLPoolManager | unmatched — not counted | — | listed in scope and threat model | no |
| Zellic.pdf | BinPool | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | CLPool | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | BinHooks | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | CLHooks | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | BinPoolParametersHelper | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | CLPoolParametersHelper | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | LPFeeLibrary | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | SwapMath | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | Tick | unmatched — not counted | — | mentioned in threat model | no |
| Zellic.pdf | BinPositionManager | unmatched — not counted | — | mentioned in scope as part of src/* and in findings | no |
| Zellic.pdf | CLPositionManager | unmatched — not counted | — | mentioned in scope as part of src/* and in discussion | no |
| Cyfrin.pdf | UniversalRouter | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | RouterImmutables | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | V2SwapRouter | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | V3SwapRouter | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | StableSwapRouter | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | Payments | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | Permit2Payments | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | BytesLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | Commands | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | MaxInputAmount | unmatched — not counted | — | listed in scope | no |
| Cyfrin.pdf | UniversalRouterHelper | unmatched — not counted | — | listed in scope | no |
| blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf | FeeEarner | unmatched — not counted | — | listed in scope section 1.1 | no |
| SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf | RandomNumberGenerator | unmatched — not counted | — | listed in scope and visibility description | no |
| SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf | PancakeSwapLottery | unmatched — not counted | — | listed in scope and visibility description | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | PancakeSwapPotteryDraw | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | PancakeSwapPotteryVault | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | Share | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | PotteryVaultFactory | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | PotteryKeeper | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | RandomNumberGenerator | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | Ownable | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | Context | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | KeeperCompatible | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf | KeeperBase | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - PancakeSwap_en-us.pdf | PancakeSwap Factory | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - PancakeSwap_en-us.pdf | PancakeSwap Router | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - PancakeSwap_en-us.pdf | PancakeRouter | unmatched — not counted | — | contract description and visibility table | no |
| SlowMist Audit Report - PancakeSwap_en-us.pdf | PancakeERC20 | unmatched — not counted | — | visibility table | no |
| SlowMist Audit Report - PancakeSwap_en-us.pdf | PancakePair | unmatched — not counted | — | visibility table | no |
| SlowMist Audit Report - PancakeSwap_en-us.pdf | PancakeFactory | unmatched — not counted | — | visibility table | no |
| Smart Contract Security Audit Report - CakeVault.pdf | CakeVault | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit Report - CakeVault.pdf | VaultOwner | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 31
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 194 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=31, medium=1
- Match method counts: n/a

Zero-match audit list:

- [18022] * [BlockSec's Aggregator Router security audit]() (2025)
- [18023] * [HashDit's CAKE Token security audit]() (2026)
- [18024] * [BlockSec's veCAKE / Gauges security audit]() (Nov 2023)
- [18025] * [SlowMist’s MasterChef V3 security audit]() (Mar 2023)
- [18026] * [PeckShield’s Exchange V3 security audit]() (Mar 2023)
- [18027] * [SlowMist’s Exchange V3 security audit]() (Mar 2023)
- [18028] * [Slowmist's Cross-chain Farming security audit]() (Sep 2022)
- [18029] * [BlockSec's Cross-chain Farming security audit]() (Sep 2022)
- [18030] * [Burrasec's Cross-chain security audit]() (2025)
- [18031] * [Pashov's Cross-chain security audit]() (2025)
- [18032] * [Slowmist's StableSwap security audit]() (Aug 2022)
- [18033] * [Slowmist's New CAKE Pool security audit]() (Mar 2022)
- [18034] * [Slowmist's MasterChef V2 security audit]() (Mar 2022)
- [18035] * [Peckshield's Prediction V2 security audit]() (Aug 2021)
- [18036] * [Peckshield's Lottery V2 security audit]() (Jul 2021)
- [18037] * [Slowmist's Lottery V2 security audit]() (Jun 2021)
- [18038] * [Slowmist's security audit of PancakeSwap]() (May 2021)
- [18039] OtterSec's PancakeSwap CAKE OFT (Aptos Token Bridging) security audit
- [18040] * [Zellic's PancakeSwap Aptos Syrup Pool security audit]() (Nov 2022)
- [18041] * [Halborn's PancakeSwap Aptos DEX with in-house admin multisig safe security audit]() (Dec 2022)
- [18042] * [Slowmist's PancakeSwap Aptos DEX security audit]() (Oct 2022)
- [18043] OtterSec's PancakeSwap Aptos DEX security audit
- [18044] Hexens.pdf
- [18045] OtterSec.pdf
- [18046] Zellic.pdf
- [18050] Cyfrin.pdf
- [18052] blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf
- [18053] SlowMist Audit Report - PancakeSwap Lottery_en-us.pdf
- [18054] SlowMist Audit Report - PancakeSwap_Pottery_en-us.pdf
- [18055] SlowMist Audit Report - PancakeSwap_en-us.pdf
- [18056] Smart Contract Security Audit Report - CakeVault.pdf

Fork inheritance lineage and inherited audits are included when available.
