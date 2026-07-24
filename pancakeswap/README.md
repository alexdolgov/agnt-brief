# Agentic Audit Brief: PancakeSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 34 (0 matched; 34 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: PancakeSwap (`pancakeswap`)
- Website: [https://pancakeswap.finance](https://pancakeswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, goerli, linea, opbnb, polygon-zkevm, zksync-era
- Contract surface: 546 unique implementations (546 raw deployments)
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
- Outside the address book: 535 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/105
- Verified + Unaudited implementations: 105
- Verified by bytecode match: 0
- Unverified implementations: 441
- Unique implementations: 546
- Raw deployments: 546
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

### ❓ Unverified (441)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db3b1092297bea09c8151e905df73a285c8a74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2add97a09b5addc65f0850430f2e05109c9b99eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc722f252c7bae2f55647e49adcb9d33ff6ebcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5fe273f2c5a4fbb7c3d633cc3f42ca563a5e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cec681aa855326ac0e457f7e6484aa44847c1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a05e14ab5bb4d3d5e87141a89de1ff9c19f7dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e742608c39eafd8525b03d39121ea00ccf3c727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f32e15ec1077f16ca6a55044398bde6f7683a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x765e5f231ffd9986f888ce6f3c88bbd8fb3f04a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a1ecda6b9759a4ac7e3ab7973d841243698eb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8095b52d936aca9867c5773369add5cba1519632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85208afb3915bbeb193856c596136dcd612e25e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916574bf89705ee0f1b7ff70047519aa2db82bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fc65ba789ee46148a299a230de392d7759a10a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5aaa9974b7e52e2b9f7a2e16d91236d70b5d692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa680d27f63fa5e213c502d1b3ca1eb6a3c1b31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b138259a37cfa9747c5b4823a01e7ffd2fba6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac69b0319f0c49b7d432d7a32a7a823119fe4c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb020086ac53cad08b2266df85e693e50954324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb509dbee68b273767cd8d45c1ce95453391741f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7ff4c0eec4f2c2ff1ebc02f036bdab616d90e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbee0bfd2745f0f832f784f706bd3b86614551fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4efd50205ccd15c192f342b3837d644c8fff99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc52c00a7ede14e1cd01b7ddb4398d559c2c71ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd9fea6bbf1910f4c188a5bbc13d98ea4f5f9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12d4983e34cf13820c56c4a583b48175c4daab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd173bf0851d2803177cc3928cf52f7b6bd29d054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd483eb42f1addb133f303ddcfa4544d081f5d3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d64175f9b80816c82249a32e246d20e7b6c21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93801d7d3a368d94a3a32e97a20f7ac1948a5db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a63e90a8727bbbb137ad1bff638eb3f784624c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe604940c06df1b6a9851f8e8d8d22468cb932e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea08f9e4267e30721d755a46bcaddbf993d8c59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee65bcac2710aa7381ce6757cf7cd2bc8e4ad95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec3db6cba7c76a1ffad7785166e5f0deea00033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff92a263d31888d860bd50809a8d171709b7b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf678253110594992e62add8deaa179839e16e135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7e85c78747ba42946dd11048f1bd78f4ce16bc` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x028a5538a6c29675a211a4ae1062b231ec9cfae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0607e9c61429f67f5ab11796b00e0ccc3ad0f1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06c7a0c4664f50def4f912509619f0e6b169a49c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0985a707c7f62fe1772cef6ca3aa5cb60cb4b841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bf955ba9ea0615c7929571528c5b5a61114e044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d6a9a605c89b4cae6adf3b8cb6fc39fa6a9e54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eeb6b2647ae3251347c98c5e03e9db8c0407270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10ccd791515788635ff841cc238ff7329b4e78d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1179adfa22dd0e5050c1c00c9f8543a77f75a2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14697537226716dbbd71563fc6b4b82867302fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150c8abeb487137accc541925408e73b92f39a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15f0ea3275ad35f85237b8c97fe9374a9e8c5e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x174409fc3b06afab865ed4847f50fa3ef9463773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a2967f72647c7b81783a1f0273270196f80b165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1afb32b76696cdf05593ca3f3957aefb23a220fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b2a2f6ed4a1401e8c73b4c2b6172455ce2f78e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba309efd47faf7fdb3567bbcc7407923eda4dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bb230487f03564801974dfa74ce9a4b4a38cd98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cdc19b13729f16c5284a0ace825f83fc9d799f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d7c09baae752e9a6ca2c0e9d0e79bab9708d5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fcb1d75203ddb7240c94c4d71bd74bacf5e5843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x200f31c81dfababb150ff959c426bf8c40c73501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22607f1bd0cceadc14c47603c7c5128f4bf1df29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23d0e0fa92151ac27c243f3ebad453d176d449c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24c80bca67b24784c6675ec0525f6634a6366042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25a55f9f2279a54951133d503490342b50e5cd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26065f86487ef8a5f5e7c24dfc9df4c25e31e276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2628ee64113a5efcbf7c2d53e003fb1daa5980e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x295ae259cd7360bf2e6794a861b8e47fa124bc67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29fe7148636b7ae0b1e53777b28dfbaa9327af8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b38551d11e0e718e99b5ce4acdd92e9e6cd4725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c0881b6d2c8fbc5b0200f54b6c98f9f8da4c5d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d80489fe0023dd4faa9833ce711f6996dcaf3ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2da08f416810467cf266c0151b098407043e25a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2db4fb582f0eab947a5370239dd8eb312780067a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e10c3ea7641f94c391875f26e482de9f9f63d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ee886517af882a6148f21ab6493ac6250bb47af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x305adb97913fda660232e02eb7ce72d5cc4ff320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30643df62db08a607df1eb69147c290cf97696b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3116943e0452156b674cbe73715e6a21ed1e30fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3325008256b1a594a3b5b2825d96dc2d4907f0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x333113840787f9f75bb57e73be536cbba88bfe39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3353c4161364fc7e3b181f5faaf1c41a7b1752ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33595c5dd0db5598d0b884c9be69da1eed9a07b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x335cccb67e10f98b2a4a3b116f92d4d95a1e1535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x342c99e9ac24157657095ec69cb04b73257e7a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35dc7fc18f37c833c710fec4e5380c8ad239a2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x364e79f9f389b6d4c8864483027ed394d9977829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3669ddd1a9ee009db9eb2174c5c760fffc66cfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x367ebbd5d02196dc9edc9b56249cd112d1d24c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3683111bd9d513fc220239c446e49130a84b643f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36bbb126e75351c0dfb651e39b38fe0bc436ffd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36e3e4ff6471559b19f66bd10985534d5e214d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x371894c4373855fca5c006fbc77aca754cf60a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375171ddd3b5af292078341e8fab8ab55580196c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3780d4577286d852ad7b7d8427e3491cc8208680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38728435fdc8b3dfc94d28b66246af5da30546b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x395c82a5dd94accbc6d7e3a1d07bc37c90121f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b3e6b959b842a1634bb96b1d924e98bca38f4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bd52020b7ccaf85678dede39c586ff7e454c166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c458828d1622f5f4d526eb0d24da8c4eb8f07b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c6919b132462c1fec572c6300e83191f4f0012a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ccdfa211a2f4e74b209cfa2368379e10cafd54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cce94fefd13d62d155771ac030f32f86275e9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3eab3efb2e9d164fc0de1fdcf7a32382b798dfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3edf242d79c76175a77d12f6337b428ad859cb83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc65465f88d0d7b8514545ac7e9b53c0ba2543a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc88d8eef0901cb0b407f7a4bab6f5c73fa3874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x403997303ad031a6f4144b1d9b448d466f071569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x413706fe696a1ccba622d74f72b787104c3d38fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42006dd2411a2aa93de0204db3b15c4372815e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x429341cbf5f31899290aad8f283510f75a921439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4358d4d5b53c3741e770220b3d391ad447e185df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4438a3c8c111a7bfc72e6402b46bbf521c7265ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x444759555b69bff7dbba6bb5f83bfe0888e67650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44de03599d1088b205d959b09a842448a0a63173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45f92a62e63e4466a7d8ca2e7f9e98c2621f396a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4684b399607f67e26a21e9f2a73eae97e28d246d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x477a87f62f1a8bc5e6bcaede645c843345ab1d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47ffba70204fbe03430cfc23ff1e8a1c7ca99259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4af614754b58168172d459c3ea81e2db14b3dc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b10324b7b437f71fa1afdd11d9abc34d4772902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c252218a884840e4a7e76c2f2c9c37cf750f2ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d0293c46c315571f2177ad45b879a15e3004f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ec3d4b1660f832608cf676518a936f0fe7df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x503d181f9f25fbb9f930a66b191bd4c52c28d107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5040f12e6a4ef19fadde9f6576dfcd1e3144db19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5116a1fd7429083a849ffcf01f230a10537d0712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x516ffd7d1e0ca40b1879935b2de87cb20fc1124b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51d48b55bb4e6d8ddf8a22f26ed504d818f55797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x525523a7c7dad41385f204ca7e1e6d9291d15a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52831833a6eba16c180fc4cb1a3cc467f466321b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52c2bbfcb12aee0d90ed3608485fc6b92c7876f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52e5d1e24a4308ef1a221c949cb2f7cbbafee090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53276f5311ed95a0e984b5d438f84a6e0b5e61b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x548737a0b29dd5974827c6f4895de0723eb40d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55072d8f0e1ed45dbf37b64115def59985244120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5621955fa00a78e8960e7010707864ad3aa820c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5661dbc43f098e58d6388641ba0b2f9f27fc829e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5692db8177a81a6c6afc8084c2976c9933ec1bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x581619971c25a34d6b5a7900e06b43328e33c656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58e4122dcc0f187b09a855d70205d267fc272f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x592d8165b07e49966db0b89879ec25100d361528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5942116dcb6228ea3fb5d015c0d658872c469917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5950ef6ba8edd7dd30e9bcd05061adab78c58f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5981f557d8bd176976e3b1fbb12dbff15d028314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59eddf3c21509da3b0accd7c5ccc596d930f4783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a075d13469201cad4ac0c77aeff31f2217a9448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a7198ceb108dd0a4b0bf109dc6543f67fa9e3b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af6d33de2ccec94efb1bdf8f92bd58085432d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b4a770abe7eafb2601ca4df9d73ea99363e60a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c278c17c9026478e106ab25572cbfbb20ea59e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d5fbb19572c4a89846198c3dbedb2b6ef58a77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d8032c45e0a1877a7374805ab378d969cc7c2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dbc7e443ccad0bfb15a081f1a5c6ba0cab5b1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e217ca2a800980c2a752ed6443a7da8a70b2595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e7f235122c7f18bcee171dad4742cbecb0dadaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e8742800626fd0a0c40a114695c2be4598f1245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6137b571f7f1e44839ae10310a08be86d1a4d03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x615e896a8c2ca8470a2e9dc2e9552998f8658ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6234d989583520565d00131948c1fb7c4ebb691d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x625f45234d6335859a8b940960067e89476300c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62b1b65ebe7fd13e1f56fab955c2dbaee1f5ad09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6370f48046436cf51efd321dc46a211c8950a5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647a995b00b4dc23791f543516075bffd9bb87b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x657f0675c67627f91ea6c6f35785489b3af77ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67649d24e02ed78e51b8483a10ce02ad74500e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67dfbb197602fdb9a9d305cc7a43b95fb63a0a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68090d8ef3419ee8ab20c8eec877f281af27c65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68e5f51980e2acbb9817e34f3a2db71f5ce2ece3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x695170fae243147b3beb4c43aa8de5dcd9202752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x698228e410fdce8dd057bc8b1cf892bbdd11aa12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69e0d66baabea9351c8bbb078d18654e39d1503d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a363dbca1e470654abdeeb0ce69ec00a8fe56a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aa1f8f1b3560ea51781c52c3761b7aa8ca4bc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6adc560af85377f9a73d17c658d798c9b39186e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6af7a605953c0b462ee9540217f5bd80878c6b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b85397643a212909ede85d52960863d3b39568f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bbe6ba8f11f0dc34e2088fb812b97a6b354c38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d986265b28c0f483777148338504b0b79c3efa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6daf6af4835911aa6a0aead6e76452d099512d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e6d1b200a93984c2ecd593b53725d288975e6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e85689f055b6894803d5135981f7b108c9dafd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ef207df616e0b32fdd067e01e867b0b769d8986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x704a9cc899d2c84d2c1f8296a5068d7909824258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x714e8785c46ada0650dbf24d6365b5bf79e3ef6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x737558000c162e2b9388740a14ae5a955227578d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74e1752acd28e9a9fe032d4a68f8da4438f9c104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x753a002f96a7c3929585967d098a5b3cf34d52bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x753aafbee43d88aed31a82adabca12d3f5455fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76e97941b0f7f9ea081c49a7154856d70f5a9492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x783236b940f1eecaba7da035fba82d5eb810b7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x787980da5491118c3cb33b21ab50c8c379d2c552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78c2d17edb8a34fa00dd602994f16964d3fb4bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7976b6c7fe28233f78b43c1b5a2cba49036613f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c50729cb29fe0124687dc6d0ceb947542b9bf8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c5a0427242214c1cf58b2c3fa7dc673b924212e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e418ea90b9c7644254557f43844a22fd1ab73df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x807f137f8f7df67e18fbea6f2bea15e8ee3f4df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8209fad5b69d4d3ae6eb359121ab6e3b5d8017dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82a80e066390e83364342f5bfb22449b940de006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83e1fc623cd20d7bda70c18cbc7044c44a8e762a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x840efe6cccce6c907915a76a242120a98c4064ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8516fc284aeeaa0374e66037bd2309349ff728ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8601a87b60ce9816914ab4afc7e8eb4cffebb738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87705d7462fa4523cb384a1b05eee2d68922eb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x886566e408efbd557b031ef6733e8265a848279c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x886792d0c9a4d79b18bced76d104fffc6bdb740b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89134e961b16f859f693edc376ce54fa45df7f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x893c30ec4d8b3d9aaec66465ae0807f052abd6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a83443006bddfdd2046edbd5abf556db9f5685e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c6375aab6e5b26a30bf241ebbf29ad6e6c503c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ee80363a98a315cfa249323c7f91067b7e1d2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8efea01d88aa4bfe69cdb13abb83b3a33ef8847e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90a4e19d743273d7dfe4aeb2d3a28e794ad6e72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90af947e785d79698ef5339c008398b750e46eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x914061ed1599f604541cfd17f06d685e69fb2641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x916574bf89705ee0f1b7ff70047519aa2db82bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91b7fc59662c32187d5473de6712e3d17e366fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x927158be21fe3d4da7e96931bb27fd5059a8cbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92f69ef071b55a183066afb919ed8a9a6b24353b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9358389a7a1c6dcdeef62b314e3f6277e8cd86a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9396817286dcea1885ac79b19d779d687dd101cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e787c7cb9e8eba5952d1e5d1c391d2b499e51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95e7c70b58790a1cbd377bc403cd7e9be7e0afb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95efef30eae03d0b7342c3cb2edca82b6ce69027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95fd8215eaac57d12f04dbf74e920df5303b2816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x966485d98c9ece4541dd520da4901614af752dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96e752a2f8f3ece22209d6ac26094698dbc8919e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x971d63ccb7eed667c0a4073df39f57a09f4760e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x979727d0b26f4f14a0ed4978d56c8ad12651b944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97dcad25c802f126f00d11308b532e5ff4a7fef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a438c8bb7ee79748c9143858cea013572cc7e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9abad58916aabf71e5deac73f85e845f74666fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b254812839e2bf4b9f5fae0b0cd527064c5414b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b2a80b485dd532c6a1ce27d00aa6a6ab3f03868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4adba419fa31db789c385f8878916659308049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b872c05c38a3563393668839659ba336cc969b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b8c345eed60d82f5113a92e3a5ba41007c14fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9db73f0810eb78eb79e055e20f15f0cd83dd27e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dcd64f1279dae3f32d81ea99b6a624a413d042d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f9b4728cff3eb28aa8dc21482d3b542e4c6d039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa104dafde23cb7d40e5af89ef39b74713e2d566c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1187d4c0e5c642dacb6eff419afa4eaa8a8b3c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa17d034ed28327a3c825647cee043f0b0df80d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1e547a3c2b7b8fd57702ae85aa66084cb2e910b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa21bfd20710c8f5c6d388204dd383632f8e2d56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa294cc957df6aceaf1d99d67f558d322997d8b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2c54e8f36e304896e094cb8741f36332346b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa342fd81753f3f1c26a1838efdaabd4a431bdef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3b8321173cf3ddf37ce3e7548203fc25d86402f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4f5d56e2e2d512ea049559479fb8b398df7e77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa50be8f6006060c29c71ce5fba90e374eb7b24c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5465248b3a8986d86aca968c0c076250263409f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5aaa9974b7e52e2b9f7a2e16d91236d70b5d692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa680d27f63fa5e213c502d1b3ca1eb6a3c1b31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa80240eb5d7e05d3f250cf000eec0891d00b51cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8fecf847e28aa1df39e995a45b7fcfb91b676d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa2a87c49ffa4892aab5dd33ee39915b88a56e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaadd7a07bfb5114f313612865553d0f897a6389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab393e5b52fa8e9f5ac5ae9459cece38bba154e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac6f25373daddebd3781e5231360f524bf040844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac928e75f06152d45ed0611c1fb86285e71e776c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad12e480040dd6ba436de0b3ec52d37a8ec25e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadb020086ac53cad08b2266df85e693e50954324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadf4d71631efb6cb442ded74805dbc3d08f5a83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae299f0e4cdcaaee1172bc6a41275627b3d6d16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae78d656f62201855c5ef3ae68bcd733fe9f054d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf7cdbcc71887aa38dfdfa539d6d3a12b0f6de57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1cc2cee7f4889a4493af06c1a0c406382f50ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb36580e6a34a08cb336cca511f8a29f239ea96b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4d03dfbc5b2fcec7ddad97150a744708b6a7377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb509dbee68b273767cd8d45c1ce95453391741f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6316e04a18e1b0a214fd7acaeb8d8b162ec3e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb664cdbe385656f8c54031c0cb12cea55b584b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6958d19b60e5fc85908c67c37a5b954e9d60d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6c1c4e9354c045ca9199bb497323bce37540ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6cc55465bacdfe48420f5967f38c4f766f96c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb73110cd206de9b042df59b696a2d7fb8534d320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7fafcc95a9c8d9b449bb95df1fff3f7e2cb02cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb84dffbaae831921c62625228557a3792f415459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb92ab7c1edcb273aba24b0656ceb3681654805d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba22d04fa8d7449fd04693f62f4ea0ae3cddd9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb664ed7551bcb2945bfbfe5f55a93bbcb7d8544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbc86f201c14a4062ee0de8c580da38c6e38cd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd3d5ec6330d826c42916f7a1ffe87adf70285f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdc44f83de2e66534e555dabed640c9af290ce54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdd9a61c67ee16c10f5e37b1d0c907a9ec959f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf459134e123a0d36b770af3da7a615eeb31e626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0febe244ce1ea66d27d23012b3d616432433f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc10c31e254938399e7c4f7e167e1b02caf6f4a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc31316734460851d05c612a9cc2bb2a3ee47ee53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3bc0b1bc5e15384ad9a9c53519c465257388541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc43adb07d1b8fd3199ab1706bc81c51c6a93e75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4efd50205ccd15c192f342b3837d644c8fff99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc57bca9bb865311f1a94ab4647b145c5ad36cf14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6503fecf243b1b41664d2a761e270753096ea53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc65f9f02b6c0f4b403561a4c6992cc4fc24f679d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc775361379c5affcbecb797f1248ba31286e1658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc77ebd857dba4fcfc14644790ccfd68caf598733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc79d1b1ef138d0076c31a19a6a69fefaff75296b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc82125b9af674c55c66bd2a75fc21803f3f14407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc82caf818d87af0008088409cefe981212de218e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8f49fbd240bb871c95533850ab1c2f124f63f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcab3a3f93bc23c156d781d4c88cd7ace3d604a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb0c826b0299fdbe96d478eabf252032e92f7fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbab7145041b4d4b0f78f000e8109acff07c84b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbe421fea9e2fde1864ddabe542bd4da0f5c64a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccf9527bbf6fd557631d3e80a50db6ba7d6331a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd21f3716791d12db1a38b885c05b7457e57ce83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf06ed0ff78e930ede6ef9e1b937524d33121815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf556d0421c19cbcbd2f3ba2eee616f3daf28cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcff17127a735a974848497ad37e117c2683ddd59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd125dbc7671f2cb8298b1560fa3ab2cf7998646c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd13886ea14308821184cfa330bc9a49d0f8cfef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1985ebfec31bd9b8f0fe845d70323abdcd2ff5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd213e7a357e8bfdab5192b847fcff94aa05476e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2cf22a662d2b3f712501b4bd9cb4b564e5cc85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3be005f0b38c7b2aeb7027314d3535e607f6477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4c4a7c55c9f7b3c48bafb6e8643ba79f42418df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4e7f319a22a746518e9b8b79854b30b0c7bf5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4f02d270138dc678ad8d3fab6e1940dab942ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50fe67740acb99c9568ca390c6f750184076810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd511d934c3497aabeac7d5607a23cf5f66a67969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd52ea677651bf35e1917bdf027f598b49a7a40c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6117dc4877b88da1140e9702ccfd3f57c7fe5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd611f8046f11fbfb7bdb2a0389f49b1c90b3655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6e543312195bc225faffb9d615026cbc36faca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd718baa0b1f4f70dcc8458154042120ffe0deffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7777960494528dd7f042e2ac3bc84669e7ebec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7824abc35abc29f00d7431bfee669e86244cc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7c798b20127843ddcd79562f2c420113e4b7edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd80be077bcd152f10c0c7b26aed6c005a78d1674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd85ff9c744e514f6ac315e075ab701de2b469487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda1b89ad56c18b849c3dc7c693ec2324d92e4afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb4f0e17398cbf1998c09f74d5e6c6b02f70bff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbc860281f35b9ceae3ae889a7621cb674634ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbcd3e76600125918037590446f710ada01754b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddfcdaacc836dd5a1ae2d375ffb153ce59dd09ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf4dbf6536201370f95e06a0f8a7a70fe40e388a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0276fa0ee38eadc8ae1a4e83fef14384c595981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe04fa6e04bb05957cd938c755588e27fdae000ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe06c59f3f51986ceaa488fa6b1eb930489e3da2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe20ab665af9fde73cc63c9f997ed1fbd8e2d2377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe266824db187bf0dfd67110037ec49025213073a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe274daea3d8bcd0a5eb991d672d48c2a7162b526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2aecf96d23575b11624d0891c0828e767c8cb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe388b69200e28bd02ee5a6de2f41be6f61b1eda1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4faa3ef5a9708c894435b0f39c2b440936a3a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5c9575c2ff5400bb7ce5246ce0c1bf6c3d9884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5e76f3ba7fe02d7fcf4ffffeddef6cc873fa135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6cdc66a96458fbf11f632b50964153fbda78548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6f366e1eb0e9cef01ccc2ac308f9b802436d920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e53a7e9e3cf6b840f167ef69519175c497e149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe85ce59bb997100e78b411e3f04f1448fb55ff83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe88744996c96ebb54d49f9acd8afd0fb01af436e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe89602cb018bd7f6236dd6c4c6085b9c693c15cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb5071f3ce5d783048bd7aae33657bcf8bdfd413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec617786b52f5201ccfd268a0dd577ad508dfdef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec9b136b4284ad66ac9ccb84403e6f111656b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee20ff293fa5fb090c988852559242c3a60a0e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf062f63b1076a448b0cb333cd264bf4f82473c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0fcbed621746b8b1ffbc79ffdba728c7781282f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1995b89f3188d88672bc4f1ab6568ac637d6d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3ea20bb5348cd38f3ce31ed9c8be8ab0b781cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf43784d72de85bd50d015fa02f0760fa5a52b22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf461bc2ad8d16f6b985052c532b38adb74ed4643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6e6c6f58740e44c8cf288f842fee9ee2a2e93a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf839286bd9d14b358496829f3bab3145c16ad3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8685cbc0f87176a0846f44f623384e0bf526494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8c7f403829cc0f9a37f126a3da41358c232acdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97011aad3149f991879600ff6934d809e0c8c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa249caa1d16f75fa159f7dfbac0cc5eab48ceff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb80eb42743e4a451356ec4dbace721af733b06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfebfbc638f2b23c9c1f1e8d95a0e9e354d138ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee8a195570a18461146f401d6033f5ab3380849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfff5812c35ec100df51d5c9842e8cc3fe60f9ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x175f312f01de10ab4041b8a6d57bb837f60b52ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b896893dfc86bb67cf57767298b9073d2c1ba2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21eb14cf06270ef944a1480bef9163fe4cf7db14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27f931bf86974987b97d3ed8a88f1842ab18118d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x353a1c336b09e4d89c11d574a077bc508e0b3c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3da8d7fafd555efa56801b03d1b669c039f839e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e7addd2e1218d7c73414591d182014d59e2cb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42286ec846e5a40e8019afe08988ab86442f71b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x501b03bdb431154b8df17bf1c00756e3a8f21744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x550e7e236912daa302f7d5d0d6e5d7b6ef191f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581619971c25a34d6b5a7900e06b43328e33c656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x589363b5aaf50e1afcd118d6fc190efe79b72fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58b2f00f74a1877510ec37b22f116bf5d63ab1b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d5fbb19572c4a89846198c3dbedb2b6ef58a77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60e86cae8adbd8157b2135689f67b957371e7513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6463e53ad777876c3e6c36dae85c4e732709b57f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f075238f5fc11b7146437b741116c87d452b0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7122f8fee0d6edcfb8af7caaf079c3ae673e7d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74312d32ac6b6ff052ba605ec111d36654b11e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x764fa09d0b3de61eed242099bd9352c1c61d3d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77b6f45a3dcf0493f1b9ac9874e5982ab526aa9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b55c45ec7e6b1afcdbf909fee0a6da12cfae70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c30c7f03421d2c9a0354e93c23014bf6c465a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fa7287680137ca6b46f7e6782e11ee993a6420e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x916574bf89705ee0f1b7ff70047519aa2db82bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ae336b61d7d2e19a47607f163a3fb0e46306b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0c679d388578c97a81626fa8aae0d5e85102de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa45c7d76f828057c8e60dd9f71807ed184ece1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa680d27f63fa5e213c502d1b3ca1eb6a3c1b31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9b138259a37cfa9747c5b4823a01e7ffd2fba6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9b361df352a80ba3213c656b4efa5436ec80362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1ef5f36cba3e741f8264bcfacef590686fdfe68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb223ed797742e096632c39d1b2e0c313750b25fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6ed887a2ff1dc07d82aa3a559d134b05d9f9ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb1cf6f913de129900faefb7fbda2e247a7f22af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4bd11a95313bb46173d8a9011046b7cd2fb14f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4efd50205ccd15c192f342b3837d644c8fff99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc808acb06077174333b31ae123c33c6559730035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc82ffd665dab9dce94e1e3d45f94c2f759686c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccd9fea6bbf1910f4c188a5bbc13d98ea4f5f9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd125dbc7671f2cb8298b1560fa3ab2cf7998646c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd173bf0851d2803177cc3928cf52f7b6bd29d054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd26eef739928942d1b2287f88a47799a5e7a60b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd621a46e8d8d077ceffd080c6bd4be60a1783d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcb12fcbf30b6824ef852f65d529038faa1142bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe04fa6e04bb05957cd938c755588e27fdae000ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4ba6740af4c666325d49b3112e4758371386adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe604940c06df1b6a9851f8e8d8d22468cb932e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe89602cb018bd7f6236dd6c4c6085b9c693c15cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9e1310d3e6401dfa1f5a3544cc6b0fced68c189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecc14d5f54621681905a151677a5773b3a6f7402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1cd3e5c3c590e1682096b51750d80e28322b4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf272182658a0bbee6d6a48d8816a0fc76b8eb158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcf7514b9ba64567623ea219b7c099bee95b8b04` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 430
- Live contracts: 0
- Unknown liveness contracts: 430
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=430

Showing first 200 of 430 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1b896893dfc86bb67cf57767298b9073d2c1ba2c` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x27f931bf86974987b97d3ed8a88f1842ab18118d` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42286ec846e5a40e8019afe08988ab86442f71b0` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9b361df352a80ba3213c656b4efa5436ec80362` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc82ffd665dab9dce94e1e3d45f94c2f759686c56` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd26eef739928942d1b2287f88a47799a5e7a60b7` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd621a46e8d8d077ceffd080c6bd4be60a1783d6c` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xecc14d5f54621681905a151677a5773b3a6f7402` | non_address_book | unknown | unknown | unverified | n/a | `0x42571b8414c68b63a2729146ce93f23639d25399` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x175f312f01de10ab4041b8a6d57bb837f60b52ad` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21eb14cf06270ef944a1480bef9163fe4cf7db14` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x581619971c25a34d6b5a7900e06b43328e33c656` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58b2f00f74a1877510ec37b22f116bf5d63ab1b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d5fbb19572c4a89846198c3dbedb2b6ef58a77a` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6463e53ad777876c3e6c36dae85c4e732709b57f` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7122f8fee0d6edcfb8af7caaf079c3ae673e7d36` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x916574bf89705ee0f1b7ff70047519aa2db82bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0c679d388578c97a81626fa8aae0d5e85102de5` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa45c7d76f828057c8e60dd9f71807ed184ece1eb` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa680d27f63fa5e213c502d1b3ca1eb6a3c1b31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9b138259a37cfa9747c5b4823a01e7ffd2fba6d` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc4efd50205ccd15c192f342b3837d644c8fff99a` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xccd9fea6bbf1910f4c188a5bbc13d98ea4f5f9f9` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd125dbc7671f2cb8298b1560fa3ab2cf7998646c` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd173bf0851d2803177cc3928cf52f7b6bd29d054` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe04fa6e04bb05957cd938c755588e27fdae000ec` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe604940c06df1b6a9851f8e8d8d22468cb932e38` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe89602cb018bd7f6236dd6c4c6085b9c693c15cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb134367c0e447d7de9bd50e55762c190c678ffea` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x353a1c336b09e4d89c11d574a077bc508e0b3c01` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3da8d7fafd555efa56801b03d1b669c039f839e1` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e7addd2e1218d7c73414591d182014d59e2cb50` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x501b03bdb431154b8df17bf1c00756e3a8f21744` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x550e7e236912daa302f7d5d0d6e5d7b6ef191f04` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x589363b5aaf50e1afcd118d6fc190efe79b72fae` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x60e86cae8adbd8157b2135689f67b957371e7513` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f075238f5fc11b7146437b741116c87d452b0ff` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x74312d32ac6b6ff052ba605ec111d36654b11e95` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x764fa09d0b3de61eed242099bd9352c1c61d3d27` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77b6f45a3dcf0493f1b9ac9874e5982ab526aa9e` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b55c45ec7e6b1afcdbf909fee0a6da12cfae70c` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c30c7f03421d2c9a0354e93c23014bf6c465a79` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8fa7287680137ca6b46f7e6782e11ee993a6420e` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ae336b61d7d2e19a47607f163a3fb0e46306b7b` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb1ef5f36cba3e741f8264bcfacef590686fdfe68` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb223ed797742e096632c39d1b2e0c313750b25fe` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6ed887a2ff1dc07d82aa3a559d134b05d9f9ccd` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb1cf6f913de129900faefb7fbda2e247a7f22af` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc4bd11a95313bb46173d8a9011046b7cd2fb14f8` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc808acb06077174333b31ae123c33c6559730035` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdcb12fcbf30b6824ef852f65d529038faa1142bd` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4ba6740af4c666325d49b3112e4758371386adc` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe9e1310d3e6401dfa1f5a3544cc6b0fced68c189` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf1cd3e5c3c590e1682096b51750d80e28322b4cf` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf272182658a0bbee6d6a48d8816a0fc76b8eb158` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfcf7514b9ba64567623ea219b7c099bee95b8b04` | non_address_book | unknown | unknown | unverified | n/a | `0xee82496d3ed1f5afbeb9b29f3f59289fd899d9d0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x028a5538a6c29675a211a4ae1062b231ec9cfae4` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0607e9c61429f67f5ab11796b00e0ccc3ad0f1ec` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06c7a0c4664f50def4f912509619f0e6b169a49c` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0bf955ba9ea0615c7929571528c5b5a61114e044` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0eeb6b2647ae3251347c98c5e03e9db8c0407270` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x10ccd791515788635ff841cc238ff7329b4e78d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14697537226716dbbd71563fc6b4b82867302fb9` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x15f0ea3275ad35f85237b8c97fe9374a9e8c5e31` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x174409fc3b06afab865ed4847f50fa3ef9463773` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1b2a2f6ed4a1401e8c73b4c2b6172455ce2f78e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ba309efd47faf7fdb3567bbcc7407923eda4dc5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1bb230487f03564801974dfa74ce9a4b4a38cd98` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1fcb1d75203ddb7240c94c4d71bd74bacf5e5843` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x200f31c81dfababb150ff959c426bf8c40c73501` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22607f1bd0cceadc14c47603c7c5128f4bf1df29` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24c80bca67b24784c6675ec0525f6634a6366042` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2628ee64113a5efcbf7c2d53e003fb1daa5980e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2b38551d11e0e718e99b5ce4acdd92e9e6cd4725` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c0881b6d2c8fbc5b0200f54b6c98f9f8da4c5d9` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d80489fe0023dd4faa9833ce711f6996dcaf3ab` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2db4fb582f0eab947a5370239dd8eb312780067a` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2e10c3ea7641f94c391875f26e482de9f9f63d00` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ee886517af882a6148f21ab6493ac6250bb47af` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x305adb97913fda660232e02eb7ce72d5cc4ff320` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30643df62db08a607df1eb69147c290cf97696b5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x333113840787f9f75bb57e73be536cbba88bfe39` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33595c5dd0db5598d0b884c9be69da1eed9a07b5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x335cccb67e10f98b2a4a3b116f92d4d95a1e1535` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x367ebbd5d02196dc9edc9b56249cd112d1d24c63` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36e3e4ff6471559b19f66bd10985534d5e214d44` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x371894c4373855fca5c006fbc77aca754cf60a77` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3780d4577286d852ad7b7d8427e3491cc8208680` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x395c82a5dd94accbc6d7e3a1d07bc37c90121f4a` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b3e6b959b842a1634bb96b1d924e98bca38f4e7` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c458828d1622f5f4d526eb0d24da8c4eb8f07b1` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3cce94fefd13d62d155771ac030f32f86275e9db` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3eab3efb2e9d164fc0de1fdcf7a32382b798dfd5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3edf242d79c76175a77d12f6337b428ad859cb83` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x403997303ad031a6f4144b1d9b448d466f071569` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x42006dd2411a2aa93de0204db3b15c4372815e1b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4438a3c8c111a7bfc72e6402b46bbf521c7265ab` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45f92a62e63e4466a7d8ca2e7f9e98c2621f396a` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4684b399607f67e26a21e9f2a73eae97e28d246d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x477a87f62f1a8bc5e6bcaede645c843345ab1d9e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47ffba70204fbe03430cfc23ff1e8a1c7ca99259` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c252218a884840e4a7e76c2f2c9c37cf750f2ba` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d0293c46c315571f2177ad45b879a15e3004f07` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ec3d4b1660f832608cf676518a936f0fe7df69c` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x503d181f9f25fbb9f930a66b191bd4c52c28d107` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5040f12e6a4ef19fadde9f6576dfcd1e3144db19` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5116a1fd7429083a849ffcf01f230a10537d0712` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x525523a7c7dad41385f204ca7e1e6d9291d15a23` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x52c2bbfcb12aee0d90ed3608485fc6b92c7876f4` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x548737a0b29dd5974827c6f4895de0723eb40d59` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5621955fa00a78e8960e7010707864ad3aa820c4` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x592d8165b07e49966db0b89879ec25100d361528` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59eddf3c21509da3b0accd7c5ccc596d930f4783` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5d8032c45e0a1877a7374805ab378d969cc7c2bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x615e896a8c2ca8470a2e9dc2e9552998f8658ea0` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x62b1b65ebe7fd13e1f56fab955c2dbaee1f5ad09` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6370f48046436cf51efd321dc46a211c8950a5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x67649d24e02ed78e51b8483a10ce02ad74500e39` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x67dfbb197602fdb9a9d305cc7a43b95fb63a0a56` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x698228e410fdce8dd057bc8b1cf892bbdd11aa12` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a363dbca1e470654abdeeb0ce69ec00a8fe56a6` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b85397643a212909ede85d52960863d3b39568f` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6bbe6ba8f11f0dc34e2088fb812b97a6b354c38a` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6d986265b28c0f483777148338504b0b79c3efa9` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6daf6af4835911aa6a0aead6e76452d099512d31` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e85689f055b6894803d5135981f7b108c9dafd5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ef207df616e0b32fdd067e01e867b0b769d8986` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x714e8785c46ada0650dbf24d6365b5bf79e3ef6a` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x74e1752acd28e9a9fe032d4a68f8da4438f9c104` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x753a002f96a7c3929585967d098a5b3cf34d52bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x753aafbee43d88aed31a82adabca12d3f5455fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76e97941b0f7f9ea081c49a7154856d70f5a9492` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x783236b940f1eecaba7da035fba82d5eb810b7fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7976b6c7fe28233f78b43c1b5a2cba49036613f5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c50729cb29fe0124687dc6d0ceb947542b9bf8d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c5a0427242214c1cf58b2c3fa7dc673b924212e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7e418ea90b9c7644254557f43844a22fd1ab73df` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8209fad5b69d4d3ae6eb359121ab6e3b5d8017dc` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x840efe6cccce6c907915a76a242120a98c4064ce` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8516fc284aeeaa0374e66037bd2309349ff728ea` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8601a87b60ce9816914ab4afc7e8eb4cffebb738` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x87705d7462fa4523cb384a1b05eee2d68922eb0d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x886566e408efbd557b031ef6733e8265a848279c` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x886792d0c9a4d79b18bced76d104fffc6bdb740b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x893c30ec4d8b3d9aaec66465ae0807f052abd6c5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ee80363a98a315cfa249323c7f91067b7e1d2f3` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8efea01d88aa4bfe69cdb13abb83b3a33ef8847e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x90a4e19d743273d7dfe4aeb2d3a28e794ad6e72e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x90af947e785d79698ef5339c008398b750e46eff` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x914061ed1599f604541cfd17f06d685e69fb2641` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x91b7fc59662c32187d5473de6712e3d17e366fc6` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x92f69ef071b55a183066afb919ed8a9a6b24353b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9396817286dcea1885ac79b19d779d687dd101cb` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x93e787c7cb9e8eba5952d1e5d1c391d2b499e51e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95efef30eae03d0b7342c3cb2edca82b6ce69027` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95fd8215eaac57d12f04dbf74e920df5303b2816` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x966485d98c9ece4541dd520da4901614af752dd2` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x979727d0b26f4f14a0ed4978d56c8ad12651b944` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97dcad25c802f126f00d11308b532e5ff4a7fef6` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9a438c8bb7ee79748c9143858cea013572cc7e96` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9abad58916aabf71e5deac73f85e845f74666fbe` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b254812839e2bf4b9f5fae0b0cd527064c5414b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b2a80b485dd532c6a1ce27d00aa6a6ab3f03868` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b4adba419fa31db789c385f8878916659308049` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b872c05c38a3563393668839659ba336cc969b2` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b8c345eed60d82f5113a92e3a5ba41007c14fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9db73f0810eb78eb79e055e20f15f0cd83dd27e1` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f9b4728cff3eb28aa8dc21482d3b542e4c6d039` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa104dafde23cb7d40e5af89ef39b74713e2d566c` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1187d4c0e5c642dacb6eff419afa4eaa8a8b3c9` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1e547a3c2b7b8fd57702ae85aa66084cb2e910b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa21bfd20710c8f5c6d388204dd383632f8e2d56d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2c54e8f36e304896e094cb8741f36332346b903` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa50be8f6006060c29c71ce5fba90e374eb7b24c5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8fecf847e28aa1df39e995a45b7fcfb91b676d4` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xab393e5b52fa8e9f5ac5ae9459cece38bba154e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac6f25373daddebd3781e5231360f524bf040844` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad12e480040dd6ba436de0b3ec52d37a8ec25e35` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xadf4d71631efb6cb442ded74805dbc3d08f5a83a` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae78d656f62201855c5ef3ae68bcd733fe9f054d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb36580e6a34a08cb336cca511f8a29f239ea96b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb6c1c4e9354c045ca9199bb497323bce37540ee8` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb6cc55465bacdfe48420f5967f38c4f766f96c16` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb7fafcc95a9c8d9b449bb95df1fff3f7e2cb02cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb84dffbaae831921c62625228557a3792f415459` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba22d04fa8d7449fd04693f62f4ea0ae3cddd9bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb664ed7551bcb2945bfbfe5f55a93bbcb7d8544` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbd3d5ec6330d826c42916f7a1ffe87adf70285f6` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdc44f83de2e66534e555dabed640c9af290ce54` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdd9a61c67ee16c10f5e37b1d0c907a9ec959f33` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf459134e123a0d36b770af3da7a615eeb31e626` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc0febe244ce1ea66d27d23012b3d616432433f42` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc10c31e254938399e7c4f7e167e1b02caf6f4a23` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc31316734460851d05c612a9cc2bb2a3ee47ee53` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3bc0b1bc5e15384ad9a9c53519c465257388541` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc43adb07d1b8fd3199ab1706bc81c51c6a93e75c` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc57bca9bb865311f1a94ab4647b145c5ad36cf14` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc65f9f02b6c0f4b403561a4c6992cc4fc24f679d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc82125b9af674c55c66bd2a75fc21803f3f14407` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcab3a3f93bc23c156d781d4c88cd7ace3d604a61` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb0c826b0299fdbe96d478eabf252032e92f7fd2` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcbab7145041b4d4b0f78f000e8109acff07c84b1` | non_address_book | unknown | unknown | unverified | n/a | `0x1a5238878b2c138b9dcce2ea6be9cf7e9f12cf6a` |

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
| needs_review | 441 |

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
