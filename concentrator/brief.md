# Agentic Audit Brief: Concentrator

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: active (Tier 0, 55.8% below peak)
- Generated: 2026-06-10T20:59:01.502Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 342 unique implementations (937 raw deployments)
- DeFi Llama TVL: $58,654,066.78
- On-chain TVL (included contracts): $111,980,295.06
- TVL by chain: Ethereum $111,980,295.06

## Project Description

Concentrator is a yield aggregation and vault platform focused on boosting and auto-compounding rewards for Curve, Convex, Frax and StakeDAO-related assets through Concentrator compounders, harvesters and vaults. f(x)/FxUSD stablecoin mechanics and CLever are separate AladdinDAO product lines unless a specific Concentrator wrapper is in scope.

### Architecture

All contracts belong to a single Concentrator family, sharing infrastructure like upgradeable proxies and beacons for vault and token implementations. Vaults deposit into Curve/Convex, compounders auto-reinvest rewards, and FxUSD is minted via base pools using yield-bearing tokens as collateral.

## Audit Coverage Summary

- Verified implementations audited: 94/300 (31.3%)
- Verified + Unaudited implementations: 206
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 342
- Raw deployments: 937
- Audits discovered: 33
- Scoreable audits (matched contracts): 33
- ASD (verified + unaudited TVL): $105,162,372.56
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 29 stale, 0 unknown
- Tier 1 coverage: 6.3% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 74 | 24.7% | 2025-03 |
| Trail of Bits | Tier 1 | 19 | 6.3% | 2024-07 |
| PeckShield | Tier 2 | 4 | 1.3% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (94)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakeDAOCRVVault | core_logic | ethereum | 5 deployments: ethereum [`0x0e20d8...eaae8a`](./contracts/ethereum-1/0x0e20d8b0ec57ca8157d9bc2beec2c28a80eaae8a/); ethereum `0x2b3e72...e1e3f6`; ethereum `0x7dd09b...8acda6`; ethereum `0xe86cf5...6e4aad`; ethereum `0xf29faf...d254c1` | ✅ Audited |
| CLeverToken | token | ethereum | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| FractionalToken | token | ethereum | 2 deployments: ethereum [`0x2a906e...745748`](./contracts/ethereum-1/0x2a906eab9b088e6753670bc8d3840f9473745748/); ethereum `0x53805a...633726` | ✅ Audited |
| LeveragedTokenV2 | token | ethereum | 23 deployments: ethereum [`0x0b46ae...a56753`](./contracts/ethereum-1/0x0b46aeb66f97b1586ca6588fda50a6f277a56753/); ethereum `0x1146cb...8780dc`; ethereum `0x151006...d03149`; ethereum `0x1ba2de...50df18`; ethereum `0x2bb0c3...c6c82c`; ethereum `0x2e5a5a...e35cf5`; ethereum `0x4bbd78...74831d`; ethereum `0x4be29f...77add1`; ethereum `0x51e286...9b1576`; ethereum `0x5a097b...79eff5`; ethereum `0x69556a...63cd0b`; ethereum `0x6bc456...c3051a`; ethereum `0x81e9ed...28782a`; ethereum `0x9efd39...baf2c7`; ethereum `0x9f2356...45ba7d`; ethereum `0xa3a8e0...fe6e97`; ethereum `0xacb360...328d2c`; ethereum `0xb90d34...fcadc8`; ethereum `0xbc113e...7cd674`; ethereum `0xbd09e9...1d5aeb`; ethereum `0xc50ea0...1d7adb`; ethereum `0xdfc368...4f40c6`; ethereum `0xfa1dc2...6a9ac4` | ✅ Audited |
| ShareableRebalancePool | core_logic | ethereum | 4 deployments: ethereum [`0x30b8b9...f66b6a`](./contracts/ethereum-1/0x30b8b9588592bc92617d5b4bcceed06f76f66b6a/); ethereum `0xb87a83...5ca9f9`; ethereum `0xc6dee5...3a40bd`; ethereum `0xd5e047...c4fa0d` | ✅ Audited |
| LeveragedToken | token | ethereum | 2 deployments: ethereum [`0x92d0cb...75fe83`](./contracts/ethereum-1/0x92d0cb7e56806bf977e7f5296ea2fe84b475fe83/); ethereum `0xe063f0...703ae2` | ✅ Audited |
| ReservePool | core_logic | ethereum | 3 deployments: ethereum [`0x297dd6...7d11df`](./contracts/ethereum-1/0x297dd69725911fe5f08b8f8c5edddb724d7d11df/); ethereum `0x5d0aac...ca3752`; ethereum `0xe93f5d...ee45ed` | ✅ Audited |
| ReservePoolV2 | core_logic | ethereum | [`0xb592e0...e32631`](./contracts/ethereum-1/0xb592e01dd77084b36430ffcb9c9d2f76fde32631/) | ✅ Audited |
| RebalancePool | core_logic | ethereum | 3 deployments: ethereum [`0x23831e...54a718`](./contracts/ethereum-1/0x23831e29db590bbbacf267ee2cf377cd3e54a718/); ethereum `0x3415fc...6473c7`; ethereum `0xa677d9...01a49e` | ✅ Audited |
| FxUSDShareableRebalancePool | core_logic | ethereum | 14 deployments: ethereum [`0x0417ce...332685`](./contracts/ethereum-1/0x0417ce2934899d7130229cda39db456ff2332685/); ethereum `0x0ab9dc...9fd7c4`; ethereum `0x4a2ab4...b68022`; ethereum `0x584b01...0fb8e0`; ethereum `0x72a623...95f535`; ethereum `0x7eb0ed...b06626`; ethereum `0x9ad382...f829b7`; ethereum `0xa04d76...7efcea`; ethereum `0xb925f8...85a748`; ethereum `0xba947c...3d7bdb`; ethereum `0xbb5490...fad8c0`; ethereum `0xc2def1...6fd4c3`; ethereum `0xf291ec...d04482`; ethereum `0xf58c49...ae7169` | ✅ Audited |
| AladdinConvexVault | core_logic | ethereum | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ✅ Audited |
| TokenSale | token | ethereum | 5 deployments: ethereum [`0x078672...8c75e7`](./contracts/ethereum-1/0x07867298d99b95772008583bd603cfa68b8c75e7/); ethereum `0x3e9cdb...0e6498`; ethereum `0x3eb6da...b0e17f`; ethereum `0x674a74...6de935`; ethereum `0xbba411...b647ab` | ✅ Audited |
| GeneralTokenConverter | token | ethereum | 3 deployments: ethereum [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/); ethereum `0xa3f4fb...7c4739`; ethereum `0xaf345c...3f3b95` | ✅ Audited |
| AladdinCRV | unknown | ethereum | 2 deployments: ethereum [`0x160d6e...9cb78f`](./contracts/ethereum-1/0x160d6e417be17e21712f004b87872a30799cb78f/); ethereum `0x6f81a0...a095c1` | ✅ Audited |
| AladdinCRVV2 | unknown | ethereum | 6 deployments: ethereum [`0x2b95a1...7e0884`](./contracts/ethereum-1/0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884/); ethereum `0x8c7e36...9c444d`; ethereum `0x9142d4...de92fb`; ethereum `0x9a68de...87d3d3`; ethereum `0xaf3406...89e35b`; ethereum `0xcffd49...70ef90` | ✅ Audited |
| AladdinCRVZap | adapter | ethereum | [`0x5eb30c...852082`](./contracts/ethereum-1/0x5eb30ce188b0abb89a942ced6cbe114f4d852082/) | ✅ Audited |
| AladdinCVX | unknown | ethereum | 4 deployments: ethereum [`0x4b2c6f...ce0750`](./contracts/ethereum-1/0x4b2c6f67bc775fd64de3cec188f0f3e960ce0750/); ethereum `0x5380d2...1cf94a`; ethereum `0x705299...0042fc`; ethereum `0xdec800...c8e359` | ✅ Audited |
| AladdinETH | unknown | ethereum | 4 deployments: ethereum [`0x7f6ce8...b8f9be`](./contracts/ethereum-1/0x7f6ce8b08bca036c60f71693cd9425614ab8f9be/); ethereum `0xb15ad6...be5aba`; ethereum `0xc99989...e852f7`; ethereum `0xd3b158...fb777c` | ✅ Audited |
| AladdinFXS | unknown | ethereum | 2 deployments: ethereum [`0x165a7a...be6edc`](./contracts/ethereum-1/0x165a7a410c14054cd39d03b4b7cb392f61be6edc/); ethereum `0xeb5eb0...e5ba2c` | ✅ Audited |
| AladdinFXSConvexVault | core_logic | ethereum | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ✅ Audited |
| AladdinFXSV2 | unknown | ethereum | 2 deployments: ethereum [`0xd9cc44...f99258`](./contracts/ethereum-1/0xd9cc44c567b1effddde8461acd6c67028af99258/); ethereum `0xdaf03d...6d3ec9` | ✅ Audited |
| AladdinSdCRV | unknown | ethereum | 3 deployments: ethereum [`0x922837...e3b9d7`](./contracts/ethereum-1/0x922837838aed2937742cff7b0adfd74157e3b9d7/); ethereum `0xd3eb99...425a84`; ethereum `0xdc4ca2...23545e` | ✅ Audited |
| AladdinZap | adapter | ethereum | 4 deployments: ethereum [`0x1104b4...48dc8a`](./contracts/ethereum-1/0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a/); ethereum `0xb7892e...5e92dc`; ethereum `0xbbd909...26d49d`; ethereum `0xddf819...9f3f8b` | ✅ Audited |
| AllInOneGateway | unknown | ethereum | [`0x6e513d...6c857b`](./contracts/ethereum-1/0x6e513d492ded19ad8211a57cc6b4493c9e6c857b/) | ✅ Audited |
| BoostableRebalancePool | core_logic | ethereum | [`0x37303d...8bb01b`](./contracts/ethereum-1/0x37303d55fd8570c070bedd9a0e64421f318bb01b/) | ✅ Audited |
| CLeverAMOHarvesterFacet | operational_periphery | ethereum | [`0xd912d9...0abed2`](./contracts/ethereum-1/0xd912d922e7e6d11d5caae204f7907f38e70abed2/) | ✅ Audited |
| CLeverCVXLocker | unknown | ethereum | 6 deployments: ethereum [`0x4480de...c297db`](./contracts/ethereum-1/0x4480debb165466a0dbb1196879c43c7f0cc297db/); ethereum `0x8e58f4...e62771`; ethereum `0x96c68d...c64154`; ethereum `0x9d8945...7db90a`; ethereum `0xa619cb...965d58`; ethereum `0xdc846c...eced94` | ✅ Audited |
| ConcentratorAladdinETHVault | core_logic | ethereum | 4 deployments: ethereum [`0x06dfaf...94df74`](./contracts/ethereum-1/0x06dfaf0e53ce24d43eac332bbdc07b690894df74/); ethereum `0x1af163...2c9fa5`; ethereum `0x50b47c...29346d`; ethereum `0x7d6c00...9da998` | ✅ Audited |
| ConcentratorHarvesterFacet | operational_periphery | ethereum | 2 deployments: ethereum [`0x1b544b...63cd98`](./contracts/ethereum-1/0x1b544befd7a51d5cdb40f79eef5205f16a63cd98/); ethereum `0xfa86aa...6ec515` | ✅ Audited |
| ConcentratorIFOVault | core_logic | ethereum | 7 deployments: ethereum [`0x3cf54f...4450b5`](./contracts/ethereum-1/0x3cf54f3a1969be9916dad548f3c084331c4450b5/); ethereum `0x4657e9...c84283`; ethereum `0x4d90ba...061e65`; ethereum `0x95fa41...64e194`; ethereum `0x99373a...c07b40`; ethereum `0xcb9c51...7e57a7`; ethereum `0xe6fbe0...2b5844` | ✅ Audited |
| ConcentratorSdCrvGaugeWrapper | operational_periphery | ethereum | 4 deployments: ethereum [`0x09b0e3...3f3bf1`](./contracts/ethereum-1/0x09b0e3a114135f528f762db8363b4f5eae3f3bf1/); ethereum `0x85b84d...10b805`; ethereum `0xcccb97...b03154`; ethereum `0xf6198e...8af0c6` | ✅ Audited |
| ConcentratorStakeDAOLocker | unknown | ethereum | 2 deployments: ethereum [`0x1c0d72...eead09`](./contracts/ethereum-1/0x1c0d72a330f2768daf718def8a19bab019eead09/); ethereum `0x353e11...23d4db` | ✅ Audited |
| ConcentratorStrategy | core_logic | ethereum | 5 deployments: ethereum [`0x543252...d1e2b2`](./contracts/ethereum-1/0x5432526e75d45369970b8616f54b25c831d1e2b2/); ethereum `0xa7625d...9fcaf0`; ethereum `0xadc6a8...d29f66`; ethereum `0xbfb147...370422`; ethereum `0xc65d58...6ace6c` | ✅ Audited |
| ConcentratorVaultForAsdCRV | core_logic | ethereum | 2 deployments: ethereum [`0x0a6e11...aa0b97`](./contracts/ethereum-1/0x0a6e1167c9b8599ee1deccb331aac176e2aa0b97/); ethereum `0x59866e...ada3de` | ✅ Audited |
| ConverterRegistry | registry | ethereum | 2 deployments: ethereum [`0x997b6f...1bea90`](./contracts/ethereum-1/0x997b6f43c1c1e8630d03b8e3c11b60e98a1bea90/); ethereum `0xa61720...3dfb2b` | ✅ Audited |
| ConvexCurveManager | governance | ethereum | [`0x321b1e...31b9be`](./contracts/ethereum-1/0x321b1ee5d26386436b9af3725ebaf4c52731b9be/) | ✅ Audited |
| CvxCompounder | adapter | ethereum | [`0xb0903a...8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ✅ Audited |
| CvxCrvStakingWrapperStrategy | core_logic | ethereum | [`0x94cc62...75f345`](./contracts/ethereum-1/0x94cc627db80253056b2130aac39abb252a75f345/) | ✅ Audited |
| CvxFxnCompounder | adapter | ethereum | [`0x00bac6...349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ✅ Audited |
| CvxFxnStakingStrategy | core_logic | ethereum | [`0x2d8b89...d5ef6c`](./contracts/ethereum-1/0x2d8b895773b093055919e16d537e3a2295d5ef6c/) | ✅ Audited |
| CvxFxnVestingManager | operational_periphery | ethereum | [`0x43fcfe...896220`](./contracts/ethereum-1/0x43fcfe9f128b5e4271c7e25c47efe91ba8896220/) | ✅ Audited |
| CvxFxsStakingStrategy | core_logic | ethereum | [`0x369256...9b1cbf`](./contracts/ethereum-1/0x36925622dc537c65cd6433703f7aeda5929b1cbf/) | ✅ Audited |
| CvxStakingStrategy | core_logic | ethereum | [`0x837592...4c08f8`](./contracts/ethereum-1/0x837592b44ee5447074b80cb21bf37a8c5e4c08f8/) | ✅ Audited |
| ERC4626RateProvider | unknown | ethereum | 2 deployments: ethereum [`0x6eb032...16d399`](./contracts/ethereum-1/0x6eb03222179f83126735d7e9fde94571d716d399/); ethereum `0x7ced61...a62506` | ✅ Audited |
| FractionalTokenV2 | token | ethereum | 12 deployments: ethereum [`0x16dbda...4fda9c`](./contracts/ethereum-1/0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c/); ethereum `0x209135...f54533`; ethereum `0x3bd15f...0e0196`; ethereum `0x50b4dc...6b13f9`; ethereum `0x576b47...42b9f7`; ethereum `0x921627...65c560`; ethereum `0x9fcb2c...ed4c41`; ethereum `0xa87f04...673769`; ethereum `0xc0e93a...c9ccc0`; ethereum `0xd11396...2abd81`; ethereum `0xd6b816...33a23d`; ethereum `0xf5a3c5...7f2681` | ✅ Audited |
| Furnace | unknown | ethereum | 4 deployments: ethereum [`0x18fa0c...c4f6c1`](./contracts/ethereum-1/0x18fa0ce2a350cc574f562fe3d02b885417c4f6c1/); ethereum `0x30f291...ccef01`; ethereum `0xce4dcc...7ab72a`; ethereum `0xe64b33...555285` | ✅ Audited |
| FxETHTwapOracle | operational_periphery | ethereum | [`0xa84360...f962d9`](./contracts/ethereum-1/0xa84360896ce9152d1780c546305bb54125f962d9/) | ✅ Audited |
| FxFrxETHTwapOracle | operational_periphery | ethereum | [`0x939c38...1cd25c`](./contracts/ethereum-1/0x939c38921c961decb3cc16f601c32d07c41cd25c/) | ✅ Audited |
| FxGateway | unknown | ethereum | 2 deployments: ethereum [`0x49e510...2abde4`](./contracts/ethereum-1/0x49e51067e695bd79d6275ecab6e9e527a72abde4/); ethereum `0x5c28b9...f06d9b` | ✅ Audited |
| FxInitialFund | unknown | ethereum | 6 deployments: ethereum [`0x05abfa...f59de7`](./contracts/ethereum-1/0x05abfad11c275f91cc79f6ec507cb273e9f59de7/); ethereum `0x29ee4b...6f3a8d`; ethereum `0x6dc7a1...0c2716`; ethereum `0x7612bc...f126d1`; ethereum `0xe6b953...461d55`; ethereum `0xfc3862...e4fc62` | ✅ Audited |
| FxMarketV1Facet | unknown | ethereum | [`0x21fb12...cd0231`](./contracts/ethereum-1/0x21fb1221317ac539ee355fc113054e54b1cd0231/) | ✅ Audited |
| FxUSD | unknown | ethereum | 3 deployments: ethereum [`0x65d72a...ae7d18`](./contracts/ethereum-1/0x65d72aa8da931f047169112fcf34f52dbaae7d18/); ethereum `0x9d11ab...9ba20e`; ethereum `0x9f0d5e...f09269` | ✅ Audited |
| FxUSDBasePoolV2Facet | core_logic | ethereum | [`0x24177d...de7ba5`](./contracts/ethereum-1/0x24177d4ad619ae2582872d25985dcef4d1de7ba5/) | ✅ Audited |
| FxUSDCompounder | adapter | ethereum | 2 deployments: ethereum [`0x549716...0df240`](./contracts/ethereum-1/0x549716f858aeff9cb845d4c78c67a7599b0df240/); ethereum `0xdcb9a6...acfbb0` | ✅ Audited |
| FxUSDCompounder4626 | adapter | ethereum | 2 deployments: ethereum [`0x07d171...945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/); ethereum `0xe7f847...eac66d` | ✅ Audited |
| FxUSDFacet | unknown | ethereum | 3 deployments: ethereum [`0x2ed662...be3733`](./contracts/ethereum-1/0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733/); ethereum `0x7d85a9...73e113`; ethereum `0xa5e2ec...932fe4` | ✅ Audited |
| GaugeControllerOwner | operational_periphery | ethereum | [`0x1ca7b8...a7dadb`](./contracts/ethereum-1/0x1ca7b82c4265835c7841cf29407217d820a7dadb/) | ✅ Audited |
| GaugeRewardDistributor | operational_periphery | ethereum | [`0xf57b53...cb87b0`](./contracts/ethereum-1/0xf57b53df7326e2c6bcfa81b4a128a92e69cb87b0/) | ✅ Audited |
| LeveragedTokenWrapper | token | ethereum | 6 deployments: ethereum [`0x08a602...fcbd94`](./contracts/ethereum-1/0x08a602616593b79591cfc88a130c8825a0fcbd94/); ethereum `0x1a17cc...235db7`; ethereum `0x6af422...b9a8f9`; ethereum `0x823baf...a131ab`; ethereum `0xa9414e...7feb5d`; ethereum `0xbeb428...a4742b` | ✅ Audited |
| LiquidityGauge | operational_periphery | ethereum | 2 deployments: ethereum [`0x1d2067...ef37ba`](./contracts/ethereum-1/0x1d20671a21112e85b03b00f94fd760de0bef37ba/); ethereum `0x9a18c4...a14562` | ✅ Audited |
| Market | unknown | ethereum | 5 deployments: ethereum [`0x31bfaf...663d81`](./contracts/ethereum-1/0x31bfaf256875a93b5d02cdef80b17ef780663d81/); ethereum `0x505002...e90bd5`; ethereum `0x679de4...68adb4`; ethereum `0xe7b9c7...5108db`; ethereum `0xf74ca5...c47c87` | ✅ Audited |
| MarketV2 | unknown | ethereum | 12 deployments: ethereum [`0x184b6a...3c58a4`](./contracts/ethereum-1/0x184b6aed8d975385e0ad02e026d649208a3c58a4/); ethereum `0x267c6a...9cd65f`; ethereum `0x2c613d...d1b248`; ethereum `0x384b11...b82d35`; ethereum `0x69518d...8e40de`; ethereum `0x714b85...6ebb42`; ethereum `0x8e3815...4be25e`; ethereum `0x910d63...e11a74`; ethereum `0x94d267...7cefbb`; ethereum `0x98ea26...cd9b28`; ethereum `0xad9a0e...cb6155`; ethereum `0xe650a5...5c3b5e` | ✅ Audited |
| MetaFurnace | unknown | ethereum | 4 deployments: ethereum [`0x6f7768...7950f9`](./contracts/ethereum-1/0x6f77685ae7a1288d2480440b7bb0fa2c317950f9/); ethereum `0x7059ea...e81e3c`; ethereum `0x7f160e...5761a9`; ethereum `0xeb937d...009773` | ✅ Audited |
| MultiPathConverter | unknown | ethereum | 4 deployments: ethereum [`0x0c439d...dcd1f8`](./contracts/ethereum-1/0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8/); ethereum `0x12af45...525912`; ethereum `0x4f96fe...8b57c3`; ethereum `0xca1d3f...036c2a` | ✅ Audited |
| PlatformFeeBurner | unknown | ethereum | 3 deployments: ethereum [`0x316f7c...1a4309`](./contracts/ethereum-1/0x316f7c1c54f6f5455b9ae92218596bad431a4309/); ethereum `0x6440e2...97c3db`; ethereum `0x695eb5...411403` | ✅ Audited |
| PlatformFeeDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0xd27917...76e973`](./contracts/ethereum-1/0xd2791781c367b2f512396105c8ab26479876e973/); ethereum `0xd6efa5...2a35be` | ✅ Audited |
| PlatformFeeSpliter | unknown | ethereum | 2 deployments: ethereum [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x323668...2380c8` | ✅ Audited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | 7 deployments: ethereum [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0x93670e...418004`; ethereum `0xb25951...daa98b`; ethereum `0xca0563...6820ad` | ✅ Audited |
| RebalancePoolRegistry | registry | ethereum | 7 deployments: ethereum [`0x163283...b32fa0`](./contracts/ethereum-1/0x163283d59fe2a579f2920a7f8ea19f7799b32fa0/); ethereum `0x345a34...627b54`; ethereum `0x4eefea...4c9d38`; ethereum `0x5e3ca2...5f3905`; ethereum `0x63b038...e9c6bd`; ethereum `0x86e987...61df39`; ethereum `0xb1dd23...22b2d6` | ✅ Audited |
| RebalancePoolSplitter | operational_periphery | ethereum | 8 deployments: ethereum [`0x015729...27b5ed`](./contracts/ethereum-1/0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed/); ethereum `0x054fac...03e916`; ethereum `0x2755ee...225311`; ethereum `0x6e8547...995a62`; ethereum `0x78ef19...9c3ff3`; ethereum `0x79c5f5...b6c2bb`; ethereum `0xb26ca4...997540`; ethereum `0xce5a14...0f2fca` | ✅ Audited |
| RebalanceWithBonusToken | token | ethereum | 3 deployments: ethereum [`0x17f21f...f6a4f4`](./contracts/ethereum-1/0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4/); ethereum `0x5a161b...037dbe`; ethereum `0x74e923...371309` | ✅ Audited |
| RewardHarvester | operational_periphery | ethereum | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ✅ Audited |
| SavingFxUSD | unknown | ethereum | 2 deployments: ethereum [`0x7743e5...eefc39`](./contracts/ethereum-1/0x7743e50f534a7f9f1791dde7dcd89f7783eefc39/); ethereum `0xe4031e...10e8a6` | ✅ Audited |
| SavingFxUSDFacet | unknown | ethereum | 2 deployments: ethereum [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/); ethereum `0x56afb4...80059d` | ✅ Audited |
| SdCRVBribeBurnerV2 | operational_periphery | ethereum | [`0x680f26...476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | ✅ Audited |
| SdCrvCompounder | adapter | ethereum | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ✅ Audited |
| SdFxnVestingManager | operational_periphery | ethereum | [`0xa2faff...09c156`](./contracts/ethereum-1/0xa2faffe31153e5e60f2352e3ed28ff973309c156/) | ✅ Audited |
| SdPendleCompounder | adapter | ethereum | [`0x606462...c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ✅ Audited |
| SharedLiquidityGauge | operational_periphery | ethereum | 36 deployments: ethereum [`0x0b700c...e7e65a`](./contracts/ethereum-1/0x0b700c60de435d522081cc5eb12b63875fe7e65a/); ethereum `0x0bbfd5...5de979`; ethereum `0x0d3e9a...c29fac`; ethereum `0x2122a2...21a5b4`; ethereum `0x215d87...af798a`; ethereum `0x288810...0669f3`; ethereum `0x31b630...9501f0`; ethereum `0x4ca79f...a98380`; ethereum `0x5801bb...9c52b5`; ethereum `0x5b1d12...305dba`; ethereum `0x61f329...16b35b`; ethereum `0x695c6f...69b922`; ethereum `0x697ddb...b42b60`; ethereum `0x6fcfe7...55910f`; ethereum `0x7a505e...265262`; ethereum `0x7d4674...d0eee0`; ethereum `0x8d9186...b4e65e`; ethereum `0x9516c3...082f99`; ethereum `0x9c7003...55363e`; ethereum `0xa29582...dbaa92`; ethereum `0xa3c0f7...0427bd`; ethereum `0xa5250c...993d11`; ethereum `0xabc8cb...1e7068`; ethereum `0xcf904d...635259`; ethereum `0xdba9a4...0c9229`; ethereum `0xdf7fbd...605b55`; ethereum `0xe534e5...8b40ca`; ethereum `0xed113b...040e6a`; ethereum `0xed92dd...bc3289`; ethereum `0xed9ed6...d55799`; ethereum `0xf0a3ec...aa0a75`; ethereum `0xf1e141...a0df60`; ethereum `0xf4bd6d...8a2a84`; ethereum `0xf62f45...e136d6`; ethereum `0xfa4761...c0efca`; ethereum `0xfefafb...c94fbb` | ✅ Audited |
| SpotPriceOracle | operational_periphery | ethereum | [`0xc2312c...9c9abc`](./contracts/ethereum-1/0xc2312caf0de62ec9b4adc785c79851cb989c9abc/) | ✅ Audited |
| StakeDaoHarvesterFacet | operational_periphery | ethereum | [`0xc56b67...18249c`](./contracts/ethereum-1/0xc56b67f58ecf4c9906548cb28d13ba6b8f18249c/) | ✅ Audited |
| StakeDAOLockerProxy | token | ethereum | 4 deployments: ethereum [`0x0303e5...2e4768`](./contracts/ethereum-1/0x0303e55b9b43fc5a0876bb8e41ca9efdd82e4768/); ethereum `0x98626a...188e2d`; ethereum `0xbccb5b...5832cf`; ethereum `0xcb968e...c36075` | ✅ Audited |
| StETHAndxETHWrapper | unknown | ethereum | [`0xc2bdbf...481d6e`](./contracts/ethereum-1/0xc2bdbf323304eabd9260b42e4d0d429ca3481d6e/) | ✅ Audited |
| stETHGateway | unknown | ethereum | 2 deployments: ethereum [`0x4c5c52...6e7c21`](./contracts/ethereum-1/0x4c5c52d507066780500e627d592dbe11476e7c21/); ethereum `0x9bf5ff...2e2ed5` | ✅ Audited |
| stETHTreasury | operational_periphery | ethereum | 6 deployments: ethereum [`0x0e5caa...3afbb0`](./contracts/ethereum-1/0x0e5caa5c889bdf053c9a76395f62267e653afbb0/); ethereum `0x12b295...564fa5`; ethereum `0x1951fb...fbb2bc`; ethereum `0x7d07fa...dfed72`; ethereum `0x969fca...56b29a`; ethereum `0xce938c...28bd74` | ✅ Audited |
| TokenConvertManagementFacet | token | ethereum | 2 deployments: ethereum [`0x5fd37c...5c20b6`](./contracts/ethereum-1/0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6/); ethereum `0x84952a...b2bd4e` | ✅ Audited |
| VeSDTDelegation | unknown | ethereum | 2 deployments: ethereum [`0x6037bb...e3ff64`](./contracts/ethereum-1/0x6037bb1bba598bf88d816cad90a28cc00fe3ff64/); ethereum `0xa5d31b...ae0f12` | ✅ Audited |
| Vesting | operational_periphery | ethereum | 8 deployments: ethereum [`0x123619...589009`](./contracts/ethereum-1/0x1236193c71128f9e7b6bb56f506676add8589009/); ethereum `0x2290ee...c10bdb`; ethereum `0x28f576...a7309b`; ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e`; ethereum `0xc054f6...497352`; ethereum `0xd2b094...6ae099` | ✅ Audited |
| VestingManagerProxy | operational_periphery | ethereum | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ✅ Audited |
| VotingEscrowBoost | operational_periphery | ethereum | [`0x8cc02c...7e7a81`](./contracts/ethereum-1/0x8cc02c0d9592976635e98e6446ef4976567e7a81/) | ✅ Audited |
| VotingEscrowProxy | operational_periphery | ethereum | [`0x1145f3...187fa1`](./contracts/ethereum-1/0x1145f304d74f3295fa38b82e7bb8704b0e187fa1/) | ✅ Audited |
| WrappedTokenTreasuryV2 | operational_periphery | ethereum | 14 deployments: ethereum [`0x389653...6e241e`](./contracts/ethereum-1/0x38965311507d4e54973f81475a149c09376e241e/); ethereum `0x58465f...7e161a`; ethereum `0x678b5e...a1ef16`; ethereum `0x6c3197...88bbf8`; ethereum `0x781ba9...063885`; ethereum `0x8b10fd...266f11`; ethereum `0x931713...14cdcb`; ethereum `0x9eafdd...3b0a8b`; ethereum `0xa553c2...b0f3d3`; ethereum `0xcfeeff...df2359`; ethereum `0xdd8f68...87c224`; ethereum `0xdfac83...9cfcd2`; ethereum `0xed8035...e3df1f`; ethereum `0xeded97...2317e8` | ✅ Audited |
| WstETHRateProvider | unknown | ethereum | [`0x81a777...8ccc7f`](./contracts/ethereum-1/0x81a777c4ab65229d1bf64dae4c831bdf628ccc7f/) | ✅ Audited |
| wstETHWrapper | unknown | ethereum | [`0xb09e34...75b658`](./contracts/ethereum-1/0xb09e34dd25d5e88a1e9ff6f6418109927675b658/) | ✅ Audited |

### ⚠️ Verified + Unaudited (206)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolManager | core_logic | ethereum | 12 deployments: ethereum [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x250893...8fcd24`; ethereum `0x376909...03fbad`; ethereum `0x3cdbf2...bf8815`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x96293b...8dce46`; ethereum `0x9af12d...ef97f9`; ethereum `0x9fc950...6aaffb`; ethereum `0xa70ddd...8ecf85`; ethereum `0xb2297b...2e03ea`; ethereum `0xda1d80...05fc9a` | ⚠️ Unaudited |
| yVault | core_logic | ethereum | 7 deployments: ethereum [`0x24129b...975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/); ethereum `0x958149...d2910e`; ethereum `0x9afd2d...51eb8b`; ethereum `0xb17640...af9567`; ethereum `0xcd6997...e70e84`; ethereum `0xcf837b...25ab19`; ethereum `0xd072d3...1c66ff` | ⚠️ Unaudited |
| sdToken | token | ethereum | 9 deployments: ethereum [`0x08bb29...c75130`](./contracts/ethereum-1/0x08bb294267d25c6ab4101b3a3cf7fbde61c75130/); ethereum `0x0c0575...85a43f`; ethereum `0x213119...42e209`; ethereum `0x402f87...68ac36`; ethereum `0x4df454...118d9d`; ethereum `0x58aad8...b59ffd`; ethereum `0x5ea630...dc10a9`; ethereum `0x752b4c...00f87c`; ethereum `0xe19d1c...9653ad` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 8 deployments: ethereum [`0x56ae77...b5b530`](./contracts/ethereum-1/0x56ae77cb4c34ba94c634d6cdeda57d5d5bb5b530/); ethereum `0x594061...a8dff5`; ethereum `0x5af15d...6e37b7`; ethereum `0x99780b...f4e52f`; ethereum `0xa2761b...075250`; ethereum `0xbc10c4...db7065`; ethereum `0xc434de...dfb607`; ethereum `0xf3c2bd...56563f` | ⚠️ Unaudited |
| RewardsAllocationPool | core_logic | ethereum | [`0xa3ecf0...a6359a`](./contracts/ethereum-1/0xa3ecf0cc8e88136134203aaafb21f7bd2da6359a/) | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | ethereum | 6 deployments: ethereum [`0x0fd265...612d5f`](./contracts/ethereum-1/0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f/); ethereum `0x1d100d...803a00`; ethereum `0x3374b9...c0ce01`; ethereum `0x65c9a6...0fa3be`; ethereum `0x9579c3...2933c4`; ethereum `0x9cfefd...7897f9` | ⚠️ Unaudited |
| RewardTokenWrapper | token | ethereum | 2 deployments: ethereum [`0x1925e1...63f08c`](./contracts/ethereum-1/0x1925e197fffa52060f0d2515cd3781e26c63f08c/); ethereum `0xae34ee...477f55` | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | 5 deployments: ethereum [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| AngleVaultGamma | core_logic | ethereum | 4 deployments: ethereum [`0x1649ff...f18ece`](./contracts/ethereum-1/0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece/); ethereum `0x1e6f87...8d042d`; ethereum `0x4a277e...27bb2e`; ethereum `0xa0022d...ab89a6` | ⚠️ Unaudited |
| StakeDaoGovernance | token | ethereum | 2 deployments: ethereum [`0xbe3e89...cd782b`](./contracts/ethereum-1/0xbe3e89d333ff21f920656f02c2400e7720cd782b/); ethereum `0xc5e69b...9adf87` | ⚠️ Unaudited |
| FxUSDBasePoolFacet | core_logic | ethereum | 2 deployments: ethereum [`0x33636d...3cc708`](./contracts/ethereum-1/0x33636d49fbefbe798e15e7f356e8dbef543cc708/); ethereum `0x9f224a...aace33` | ⚠️ Unaudited |
| AaveFundingPool | core_logic | ethereum | 2 deployments: ethereum [`0x6ecfa3...0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e...952473` | ⚠️ Unaudited |
| Accumulator | unknown | ethereum | 11 deployments: ethereum [`0x23ab51...a3bc4a`](./contracts/ethereum-1/0x23ab5100acaff53d00ad92bb8df75a72e7a3bc4a/); ethereum `0x2903db...6d0eb0`; ethereum `0x615959...88056f`; ethereum `0x644a15...b26322`; ethereum `0x65682c...bc4526`; ethereum `0xab8a21...910bd6`; ethereum `0xb1d778...e588a6`; ethereum `0xba445c...4776c8`; ethereum `0xc74c0e...9ee75b`; ethereum `0xe75da6...d88423`; ethereum `0xffec6c...8810fb` | ⚠️ Unaudited |
| AccumulatorProxy | unknown | ethereum | [`0x5892df...22d1b8`](./contracts/ethereum-1/0x5892dff85a2ae0cee9a0efa4c95e5e977122d1b8/) | ⚠️ Unaudited |
| AdapterFactory | adapter | ethereum | [`0x1662a5...adccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | ⚠️ Unaudited |
| AdapterRegistry | adapter | ethereum | [`0xdd89f9...d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | ethereum | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | ⚠️ Unaudited |
| AladdinPriceOracle | operational_periphery | ethereum | [`0x304047...d869b4`](./contracts/ethereum-1/0x304047f1d867a00082c8549e81a2f0b389d869b4/) | ⚠️ Unaudited |
| AngleAccumulator | unknown | ethereum | [`0x9dddf9...d1c888`](./contracts/ethereum-1/0x9dddf9c8a7447993bcfef18f6b5421f28bd1c888/) | ⚠️ Unaudited |
| AngleAccumulatorV2 | unknown | ethereum | [`0x943671...c6aa51`](./contracts/ethereum-1/0x943671e6c3a98e28abdbc60a7ac703b3c0c6aa51/) | ⚠️ Unaudited |
| AngleLocker | unknown | ethereum | [`0xd13f8c...4dcaf5`](./contracts/ethereum-1/0xd13f8c25cced32cdfa79eb5ed654ce3e484dcaf5/) | ⚠️ Unaudited |
| AngleMerklClaimer | operational_periphery | ethereum | [`0x32ee46...04515b`](./contracts/ethereum-1/0x32ee46755ae81ce917392ed1fb21f74a8104515b/) | ⚠️ Unaudited |
| AngleVoterV5 | unknown | ethereum | [`0x0e0f27...cf1a23`](./contracts/ethereum-1/0x0e0f27b9d5f2bc742bf547968d2f07decbcf1a23/) | ⚠️ Unaudited |
| BadgerHunt | unknown | ethereum | 3 deployments: ethereum [`0x22ba8e...12baa0`](./contracts/ethereum-1/0x22ba8eeac5bddf7b5a298d2169a24c6f9e12baa0/); ethereum `0x8bd664...233119`; ethereum `0xa06395...d832ce` | ⚠️ Unaudited |
| BatchAddCard | periphery | ethereum | [`0x2953a3...42f687`](./contracts/ethereum-1/0x2953a32e7babe3c6b9d31c80c727ab9ca042f687/) | ⚠️ Unaudited |
| BatchFactory | registry | ethereum | [`0x172573...194c01`](./contracts/ethereum-1/0x1725738f3295d3f8eb68da864a2ade9c39194c01/) | ⚠️ Unaudited |
| Booster | core_logic | ethereum | 3 deployments: ethereum [`0x01363d...a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/); ethereum `0x1b3a4e...62d2f1`; ethereum `0x38d107...c66270` | ⚠️ Unaudited |
| BoostMarketplace | unknown | ethereum | 2 deployments: ethereum [`0xa52f3d...c407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/); ethereum `0xbc38d2...3fb6b8` | ⚠️ Unaudited |
| CCIP Block Hash Sender | unknown | ethereum | 2 deployments: ethereum [`0x51a00f...5d9e61`](./contracts/ethereum-1/0x51a00f38cb1c055ebbbe380d3ba3d27cae5d9e61/); ethereum `0x884784...2809aa` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | 6 deployments: ethereum [`0x1066ab...a11f7d`](./contracts/ethereum-1/0x1066ab47a342152c564af62d179aa4b659a11f7d/); ethereum `0x4eb744...87f611`; ethereum `0x806323...080376`; ethereum `0x9de558...6c114e`; ethereum `0xa3fd14...317206`; ethereum `0xda396c...dec43d` | ⚠️ Unaudited |
| CEtherDelegate | unknown | ethereum | [`0xf148cd...5c5851`](./contracts/ethereum-1/0xf148cdec066b94410d403ac5fe1bb17ec75c5851/) | ⚠️ Unaudited |
| ClaimRewards | unknown | ethereum | 2 deployments: ethereum [`0x633120...b1be0f`](./contracts/ethereum-1/0x633120100e108f03ace79d6c78aac9a56db1be0f/); ethereum `0xf30f23...c9f8c2` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | ethereum | 3 deployments: ethereum [`0x097d23...bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/); ethereum `0x4153f8...3f97d5`; ethereum `0x539e65...ca512c` | ⚠️ Unaudited |
| ConcentratorStrategyFactory | registry | ethereum | [`0x23384d...c099bb`](./contracts/ethereum-1/0x23384dd4380b3677b829c6c88c0ea9cc41c099bb/) | ⚠️ Unaudited |
| Controller | governance | ethereum | 3 deployments: ethereum [`0x29d378...73f08a`](./contracts/ethereum-1/0x29d3782825432255041db2eafcb7174f5273f08a/); ethereum `0x408179...2116ae`; ethereum `0xbe81e3...a5467a` | ⚠️ Unaudited |
| ControllerModule | governance | ethereum | 2 deployments: ethereum [`0xb3f463...017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/); ethereum `0xe56ce1...bde0b4` | ⚠️ Unaudited |
| CreditNote | unknown | ethereum | 3 deployments: ethereum [`0x55a514...343cde`](./contracts/ethereum-1/0x55a51450b1d025b4f6fa259b2008851553343cde/); ethereum `0x7c5350...80f05a`; ethereum `0xb25a55...bddfc6` | ⚠️ Unaudited |
| Cross-Chain Gauge Mass Killer | operational_periphery | ethereum | [`0xf08fa0...7d4e7d`](./contracts/ethereum-1/0xf08fa0aea90f9904f0c4853a3225408b5a7d4e7d/) | ⚠️ Unaudited |
| CRVAccumulatorV2 | unknown | ethereum | [`0x963bac...8f6563`](./contracts/ethereum-1/0x963bacb5b0df6950814c572e3f9ea005458f6563/) | ⚠️ Unaudited |
| CRVAccumulatorV3 | unknown | ethereum | [`0x3e7b4d...aa7ec5`](./contracts/ethereum-1/0x3e7b4de8a29c90e0052c27bad365bbfe2aaa7ec5/) | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | [`0xc1e3ca...f69191`](./contracts/ethereum-1/0xc1e3ca8a3921719be0ae3690a0e036feb4f69191/) | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | ethereum | [`0x88c88a...c64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | ⚠️ Unaudited |
| CRVPoolFactory | registry | ethereum | 8 deployments: ethereum [`0x04ef23...222619`](./contracts/ethereum-1/0x04ef23094b40bca5655bbc8442886e1c45222619/); ethereum `0x1ce37b...1c8560`; ethereum `0x4e3736...dd996b`; ethereum `0x5b0944...007dc0`; ethereum `0xae7691...96c918`; ethereum `0xcaf1f3...70c44a`; ethereum `0xd9f15a...397bda`; ethereum `0xdc9718...4c20aa` | ⚠️ Unaudited |
| CRVStrategy | core_logic | ethereum | [`0x941550...46d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | ⚠️ Unaudited |
| Curve DAO Token | token | ethereum | [`0x4eeca6...0fa8c6`](./contracts/ethereum-1/0x4eeca6bfa3c96210260691639827eef4d80fa8c6/) | ⚠️ Unaudited |
| CurveShutdownStrategy | core_logic | ethereum | [`0x69d614...1ea2cd`](./contracts/ethereum-1/0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd/) | ⚠️ Unaudited |
| CvxCrvWeightAdjuster | unknown | ethereum | [`0x7ed96e...bf360b`](./contracts/ethereum-1/0x7ed96ebcdad7ee5d98d6f7624dd18c54b8bf360b/) | ⚠️ Unaudited |
| DarkParadise | unknown | ethereum | [`0xbd4dc0...f56da1`](./contracts/ethereum-1/0xbd4dc0bd2786f176d39cc1b24de540e6b2f56da1/) | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | ethereum | [`0x20d1b5...e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | 2 deployments: ethereum [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| Depositor | unknown | ethereum | 8 deployments: ethereum [`0x070df1...eef1ca`](./contracts/ethereum-1/0x070df1b96059f5dc34fcb140ffdc8c41d6eef1ca/); ethereum `0x344959...8c88c9`; ethereum `0x7f5c48...58acb5`; ethereum `0x896451...38abc9`; ethereum `0x8a97e8...ce7121`; ethereum `0xa65d25...f46c87`; ethereum `0xca9ca3...09197d`; ethereum `0xfaf374...9b6285` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | ethereum | 2 deployments: ethereum [`0x221ffb...9efa63`](./contracts/ethereum-1/0x221ffb180ad01213ff882ab7de9c75e23f9efa63/); ethereum `0x9a3c5e...ee3c98` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | ethereum | 2 deployments: ethereum [`0x190c58...0ed85b`](./contracts/ethereum-1/0x190c58357b8dab707fdce1f646ee147f5c0ed85b/); ethereum `0x6793de...ccf8dd` | ⚠️ Unaudited |
| Dummy | unknown | ethereum | [`0x0d4bb5...6d022a`](./contracts/ethereum-1/0x0d4bb5613cc2187b95958e18b7c13fe1a76d022a/) | ⚠️ Unaudited |
| DummyMaster | unknown | ethereum | [`0xbb6fbb...5bcacb`](./contracts/ethereum-1/0xbb6fbb48d3bfddb2e0690e87894623e2e65bcacb/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | [`0x387568...25e206`](./contracts/ethereum-1/0x387568e1ea4ff4d003b8147739db69d87325e206/) | ⚠️ Unaudited |
| ETHLSDConverter | unknown | ethereum | [`0x150f62...c15c9f`](./contracts/ethereum-1/0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | [`0xb7f790...0e9af3`](./contracts/ethereum-1/0xb7f79090190c297f59a2b7d51d3aef7aad0e9af3/) | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x0919bb...fe555b`](./contracts/ethereum-1/0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b/); ethereum `0x851aae...13e432`; ethereum `0xd11651...245681` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x51df76...9cfd2b`](./contracts/ethereum-1/0x51df7675b8f7b970ded3596c00624a30ec9cfd2b/); ethereum `0x6d57d3...0d38f9`; ethereum `0xca9439...270d30` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| FeeReceiver | unknown | ethereum | [`0x60136f...4318d6`](./contracts/ethereum-1/0x60136fefe23d269af41ab72de483d186dc4318d6/) | ⚠️ Unaudited |
| FlashLoanCallbackFacet | unknown | ethereum | [`0x9d093e...8a53f9`](./contracts/ethereum-1/0x9d093e5b929cceeae9497fc27c22481e0b8a53f9/) | ⚠️ Unaudited |
| Fundraising Gauge Fx | operational_periphery | ethereum | 9 deployments: ethereum [`0x28ed63...ed832d`](./contracts/ethereum-1/0x28ed637c5e3371c2678c2d346df04fb634ed832d/); ethereum `0x4e6a1d...ba9908`; ethereum `0x558e7d...58a6df`; ethereum `0x9710ca...172e28`; ethereum `0xb2e43e...b74e91`; ethereum `0xb3886b...bb1e1e`; ethereum `0xb5152d...0ed692`; ethereum `0xf42244...7b35ed`; ethereum `0xf594bd...d36bea` | ⚠️ Unaudited |
| FxCVXOracle | operational_periphery | ethereum | [`0x726727...e88e13`](./contracts/ethereum-1/0x7267277682ffc281b00b0ec56d8de22e8ae88e13/) | ⚠️ Unaudited |
| FxEETHOracleV2 | operational_periphery | ethereum | [`0xe1b11b...71693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | ⚠️ Unaudited |
| FxEETHTwapOracle | operational_periphery | ethereum | [`0x834e87...be4a20`](./contracts/ethereum-1/0x834e87262a00b0ac38ed49cb1110838866be4a20/) | ⚠️ Unaudited |
| FxEzETHOracleV2 | operational_periphery | ethereum | [`0x564a46...366523`](./contracts/ethereum-1/0x564a464c9c357de593fa48efd784048a9e366523/) | ⚠️ Unaudited |
| FxEzETHTwapOracle | operational_periphery | ethereum | [`0x51ef9f...f053a6`](./contracts/ethereum-1/0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6/) | ⚠️ Unaudited |
| FxFrxETHOracleV2 | operational_periphery | ethereum | [`0xffe563...6ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | ⚠️ Unaudited |
| FXNAccumulator | unknown | ethereum | [`0x87978a...5bfb13`](./contracts/ethereum-1/0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13/) | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | ethereum | [`0xab1938...667ede`](./contracts/ethereum-1/0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede/) | ⚠️ Unaudited |
| FXNDepositor | unknown | ethereum | [`0x799519...f1c7ab`](./contracts/ethereum-1/0x7995192be61ea0b28ce14183dda51edf78f1c7ab/) | ⚠️ Unaudited |
| FXNVoter | unknown | ethereum | [`0x518129...16c91f`](./contracts/ethereum-1/0x5181291355abe5f3f1812a0aa888a73b9a16c91f/) | ⚠️ Unaudited |
| FxsAccumulator | unknown | ethereum | [`0x1cc16b...c59fb2`](./contracts/ethereum-1/0x1cc16bedaacd15848bca5eb80188e0931bc59fb2/) | ⚠️ Unaudited |
| FxsLocker | unknown | ethereum | [`0xcd3a26...ce448f`](./contracts/ethereum-1/0xcd3a267de09196c48bbb1d9e842d7d7645ce448f/) | ⚠️ Unaudited |
| FxStETHOracleV2 | operational_periphery | ethereum | [`0x83bdc4...333d20`](./contracts/ethereum-1/0x83bdc459ac3887b2a61aa47dca3acac26a333d20/) | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/); ethereum `0x12be1e...dbc8aa`; ethereum `0x3ec677...0953fa` | ⚠️ Unaudited |
| FxUSDRegeneracy | unknown | ethereum | 3 deployments: ethereum [`0x085780...05d8f6`](./contracts/ethereum-1/0x085780639cc2cacd35e474e71f4d000e2405d8f6/); ethereum `0x1a1440...53d114`; ethereum `0xf72942...02a9b1` | ⚠️ Unaudited |
| FxWBTCOracleV2 | operational_periphery | ethereum | [`0x4f8330...43fba8`](./contracts/ethereum-1/0x4f8330946669d71014efdce30ef19a256643fba8/) | ⚠️ Unaudited |
| FxWBTCTwapOracle | operational_periphery | ethereum | [`0x7e94c0...a7c0d2`](./contracts/ethereum-1/0x7e94c07c6c3b2c931e9517529f56553770a7c0d2/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | 3 deployments: ethereum [`0xdbb1aa...0c8acc`](./contracts/ethereum-1/0xdbb1aaeb04f3b5e2587e4bb849717e9ebd0c8acc/); ethereum `0xe60eb8...6d7f37`; ethereum `0xe6aaf8...a9d217` | ⚠️ Unaudited |
| GaugeDepositorVault | operational_periphery | ethereum | [`0x210dfe...07a68a`](./contracts/ethereum-1/0x210dfec4fc0c3b88e7984a86dc315f43aa07a68a/) | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | ethereum | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | ethereum | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ⚠️ Unaudited |
| InflationReceiver | unknown | ethereum | 2 deployments: ethereum [`0x8f78dd...66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/); ethereum `0xc9104e...4391ad` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| LimitOrderManager | governance | ethereum | 2 deployments: ethereum [`0x112873...79ad96`](./contracts/ethereum-1/0x112873b395b98287f3a4db266a58e2d01779ad96/); ethereum `0xf01cce...075c42` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | 7 deployments: ethereum [`0x08d36c...ab8f9d`](./contracts/ethereum-1/0x08d36c723b8213122f678025c2d9eb1ec7ab8f9d/); ethereum `0x28604f...44343a`; ethereum `0x4887ae...bd0cd8`; ethereum `0x588add...18370d`; ethereum `0xae9ad1...fda964`; ethereum `0xc1e477...13ca3c`; ethereum `0xf54bce...a0f68d` | ⚠️ Unaudited |
| Liquidity Gauge v4 Strat XChain | operational_periphery | ethereum | [`0x8996cb...ccc265`](./contracts/ethereum-1/0x8996cb5f5abc5e8dd6425baa7d32179e38ccc265/) | ⚠️ Unaudited |
| LiquidityFeeRecipient | operational_periphery | ethereum | [`0x576d7a...dbe080`](./contracts/ethereum-1/0x576d7ad8eae92d9a972104aac56c15255ddbe080/) | ⚠️ Unaudited |
| LlamaPayFactory | registry | ethereum | [`0x24529a...8a7ae3`](./contracts/ethereum-1/0x24529ad5bf07c97185632c6b015dad142b8a7ae3/) | ⚠️ Unaudited |
| LockerPreLaunch | unknown | ethereum | [`0x5c5ccb...cf0922`](./contracts/ethereum-1/0x5c5ccb2e511fcdeaa16737810787a47507cf0922/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | 3 deployments: ethereum [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| MarketWithFundingCost | unknown | ethereum | 2 deployments: ethereum [`0x56b854...690175`](./contracts/ethereum-1/0x56b85438f1e16a91eac5fe2daab2c3dd57690175/); ethereum `0xb4fe4e...351b1d` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | 2 deployments: ethereum [`0xf51610...0151c7`](./contracts/ethereum-1/0xf5161021bdb64479febb903e5dbad9b5060151c7/); ethereum `0xfea5e2...b61e1c` | ⚠️ Unaudited |
| MAVDepositor | unknown | ethereum | 2 deployments: ethereum [`0x177eaa...70e7ec`](./contracts/ethereum-1/0x177eaa1a7c26da6dc84c0cc3f9ae6fd0a470e7ec/); ethereum `0x3ac34f...83a13c` | ⚠️ Unaudited |
| Merkle | operational_periphery | ethereum | [`0x414cbb...c10c29`](./contracts/ethereum-1/0x414cbb5c7cf637b7030965b5ee84504c64c10c29/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x7cf291...a64db5`](./contracts/ethereum-1/0x7cf29182e8d262b34a36a912736bbc777fa64db5/); ethereum `0xdad7bd...fa1d59` | ⚠️ Unaudited |
| MerkleDistributor3CRV | operational_periphery | ethereum | [`0xbeb3e5...3c3a5c`](./contracts/ethereum-1/0xbeb3e5cd895c1b7e95d5cd39b1ac1efb6c3c3a5c/) | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | ethereum | 3 deployments: ethereum [`0x2de8e9...0d4f5f`](./contracts/ethereum-1/0x2de8e91b6fdb5f6575cafb0827aca9fa1d0d4f5f/); ethereum `0x3b76bc...1f86f9`; ethereum `0xf442e3...6f847f` | ⚠️ Unaudited |
| MetaCLever | governance | ethereum | 7 deployments: ethereum [`0x057810...ca4eb1`](./contracts/ethereum-1/0x057810cf20efd30745b368ec42f0b39879ca4eb1/); ethereum `0x2c37f1...86157e`; ethereum `0x41c94e...b11db2`; ethereum `0xad4cac...c730e0`; ethereum `0xb2fcee...673cc1`; ethereum `0xeb0ea9...4f53b1`; ethereum `0xf5d1ca...75c8ca` | ⚠️ Unaudited |
| MigrateFacet | unknown | ethereum | [`0x5fec78...0accae`](./contracts/ethereum-1/0x5fec7879738cb209af6d9880e4566a24200accae/) | ⚠️ Unaudited |
| MockERC20 | token | ethereum | 2 deployments: ethereum [`0x2989df...f7448c`](./contracts/ethereum-1/0x2989df9c8c9897f07d464366607dcbfaebf7448c/); ethereum `0x9e0ee6...38b9fa` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | 4 deployments: ethereum [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98`; ethereum `0xeecd84...70a44f` | ⚠️ Unaudited |
| MultipleVestHelper | operational_periphery | ethereum | 3 deployments: ethereum [`0x267b7a...a524e4`](./contracts/ethereum-1/0x267b7a1d56d624293ba1819f30b5bf0f12a524e4/); ethereum `0x572dec...d11983`; ethereum `0xd479c1...ef3195` | ⚠️ Unaudited |
| NewStrategyAngleStakeDao | core_logic | ethereum | [`0x79b738...a0e05f`](./contracts/ethereum-1/0x79b738e404208e9607c3b4d4b3800ed0d4a0e05f/) | ⚠️ Unaudited |
| NFTBoosterVault | core_logic | ethereum | [`0xa324a2...68bdd9`](./contracts/ethereum-1/0xa324a2e3a6f64bd588565e0e1e2dd50e7a68bdd9/) | ⚠️ Unaudited |
| OnlyBoostAllocator | operational_periphery | ethereum | 6 deployments: ethereum [`0x3680cc...a7364f`](./contracts/ethereum-1/0x3680cce0d97bbbfa47765d7429ff207d03a7364f/); ethereum `0xa1b3d6...76350a`; ethereum `0xa1ffb2...dfdaa9`; ethereum `0xbcb9cc...4fae9c`; ethereum `0xc02385...d7de69`; ethereum `0xf59f24...e3f507` | ⚠️ Unaudited |
| Optimizer | unknown | ethereum | 6 deployments: ethereum [`0x48af33...91bce7`](./contracts/ethereum-1/0x48af330a99a4cee2f367a4ab447ba816d091bce7/); ethereum `0x63adcf...866a71`; ethereum `0x6543b0...a2a2f8`; ethereum `0x6d2cd2...f9a599`; ethereum `0xb5f963...cf99bd`; ethereum `0xf82473...d7d578` | ⚠️ Unaudited |
| OpynPerpVault | core_logic | ethereum | 4 deployments: ethereum [`0x404d77...8b86ca`](./contracts/ethereum-1/0x404d7730c59f28ed8476ea411f88320df98b86ca/); ethereum `0x496e3d...ea824b`; ethereum `0x9b8f14...4fde1a`; ethereum `0xe7ce05...e38739` | ⚠️ Unaudited |
| OwnershipFacet | unknown | ethereum | 2 deployments: ethereum [`0x14f1cb...143749`](./contracts/ethereum-1/0x14f1cbae37f765614655967afc51b544b8143749/); ethereum `0x359eb1...6f230f` | ⚠️ Unaudited |
| OZV5ERC20Rename | token | ethereum | [`0xbcf57a...73e001`](./contracts/ethereum-1/0xbcf57a777c20f66f3e4a7435269da4e73073e001/) | ⚠️ Unaudited |
| PancakeERC20Strategy | core_logic | ethereum | 2 deployments: ethereum [`0xcd3040...da058f`](./contracts/ethereum-1/0xcd3040becb009efdb65f4b1b844f4438b5da058f/); ethereum `0xd7b810...21e089` | ⚠️ Unaudited |
| PancakeMasterchefStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x2f5e8c...39136b`](./contracts/ethereum-1/0x2f5e8c0a3bab996c570e4fc5f9bd2f19eb39136b/); ethereum `0xae762a...e7e7e3` | ⚠️ Unaudited |
| PancakeVaultFactoryXChain | registry | ethereum | [`0x7d5980...af98b3`](./contracts/ethereum-1/0x7d5980fda6b2869e5f21bde8eb6bd89cb7af98b3/) | ⚠️ Unaudited |
| PCSVault | core_logic | ethereum | [`0xafc6ae...4f7814`](./contracts/ethereum-1/0xafc6aea868062e50a082400aea92f7260b4f7814/) | ⚠️ Unaudited |
| PegKeeper | operational_periphery | ethereum | 3 deployments: ethereum [`0x17e2e8...97f29d`](./contracts/ethereum-1/0x17e2e8ca0b35aa750771e000d1e926417b97f29d/); ethereum `0x2ba1ca...d9c1aa`; ethereum `0x50562f...2fcd70` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | 5 deployments: ethereum [`0x16b334...00c28d`](./contracts/ethereum-1/0x16b334f2644cc00b85db1a1eff0c2c395e00c28d/); ethereum `0x2be95a...d26f7f`; ethereum `0x67a94c...7e5430`; ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacet | unknown | ethereum | [`0x002cda...a1a7a2`](./contracts/ethereum-1/0x002cdac50b3eefe6adb6168833fb49c040a1a7a2/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | 3 deployments: ethereum [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a...b66b52`; ethereum `0x389b4a...84c5a3` | ⚠️ Unaudited |
| ProtocolTreasury | operational_periphery | ethereum | 7 deployments: ethereum [`0x09ce8f...3c5283`](./contracts/ethereum-1/0x09ce8f58e7340601bb9179000fb49c31843c5283/); ethereum `0x253d0c...e032a9`; ethereum `0x32356f...71cda6`; ethereum `0x6d9e81...040868`; ethereum `0x87d5e4...f4f8ce`; ethereum `0xb17819...c09a38`; ethereum `0xc4160f...7f2882` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 5 deployments: ethereum [`0x12b132...7762a0`](./contracts/ethereum-1/0x12b1326459d72f2ab081116bf27ca46cd97762a0/); ethereum `0x1f5728...dc87ee`; ethereum `0x9b54b7...2edda4`; ethereum `0xd41d29...3a324b`; ethereum `0xfe612c...f91b9b` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | 2 deployments: ethereum [`0x2b162d...87a3bb`](./contracts/ethereum-1/0x2b162de7fbd942f142aa21865f685f71a687a3bb/); ethereum `0x8d4142...0a6280` | ⚠️ Unaudited |
| RangeAdapter | adapter | ethereum | [`0x51452b...64fde5`](./contracts/ethereum-1/0x51452b51fbb8e8b200d369a55366ec7a1564fde5/) | ⚠️ Unaudited |
| RecipientFactory | operational_periphery | ethereum | [`0xb53943...035a93`](./contracts/ethereum-1/0xb539433ff0c477b350e50df5f36d049d28035a93/) | ⚠️ Unaudited |
| Redeem | unknown | ethereum | 2 deployments: ethereum [`0x1d8a9c...c4d356`](./contracts/ethereum-1/0x1d8a9c30e4e25033498347c1a054717bd0c4d356/); ethereum `0x3e88f7...fbc574` | ⚠️ Unaudited |
| Registrar | unknown | ethereum | [`0x1c3a4d...a5c6de`](./contracts/ethereum-1/0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de/) | ⚠️ Unaudited |
| RequestOracle | operational_periphery | ethereum | [`0x1f4903...9f1d51`](./contracts/ethereum-1/0x1f49037fa2979753545b51b7f58e20874a9f1d51/) | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| RewardHandler | unknown | ethereum | 3 deployments: ethereum [`0x524fce...c3a3b3`](./contracts/ethereum-1/0x524fce03270c60279d604ea3b374194e96c3a3b3/); ethereum `0x65ef12...e53a0b`; ethereum `0xc47bde...a7e336` | ⚠️ Unaudited |
| RewardReceiver | unknown | ethereum | 2 deployments: ethereum [`0x78f1bb...c85ad7`](./contracts/ethereum-1/0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7/); ethereum `0xd24d1f...c9a04e` | ⚠️ Unaudited |
| RewardReceiverMigrationModule | operational_periphery | ethereum | [`0x2c043d...cbfd46`](./contracts/ethereum-1/0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46/) | ⚠️ Unaudited |
| RewardRouter | adapter | ethereum | [`0x9a207a...05ba12`](./contracts/ethereum-1/0x9a207a85e372fcdac3014f945a65868f2a05ba12/) | ⚠️ Unaudited |
| Router | adapter | ethereum | [`0xc3a6cf...505eef`](./contracts/ethereum-1/0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef/) | ⚠️ Unaudited |
| RouterManagementFacet | adapter | ethereum | 2 deployments: ethereum [`0x447d90...1ae114`](./contracts/ethereum-1/0x447d902da96a22727d0b53f215d0c387fe1ae114/); ethereum `0xb75336...be067e` | ⚠️ Unaudited |
| RouterModuleClaim | adapter | ethereum | [`0xfd98ce...222ff5`](./contracts/ethereum-1/0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5/) | ⚠️ Unaudited |
| RouterModuleDeposit | adapter | ethereum | [`0xbf0a5d...09b7c9`](./contracts/ethereum-1/0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9/) | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | operational_periphery | ethereum | [`0xf0b84b...53c120`](./contracts/ethereum-1/0xf0b84b9334132843fc256830fb941d535853c120/) | ⚠️ Unaudited |
| RouterModuleVLSDT | adapter | ethereum | [`0x8155b8...557707`](./contracts/ethereum-1/0x8155b8858af2b12baf8a79e22021b14f91557707/) | ⚠️ Unaudited |
| RouterModuleWithdraw | operational_periphery | ethereum | [`0xe88772...4cf63c`](./contracts/ethereum-1/0xe88772dfb857317476b77f1a25b888b9424cf63c/) | ⚠️ Unaudited |
| Sanctuary | unknown | ethereum | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | ⚠️ Unaudited |
| sdCRV | unknown | ethereum | [`0xd1b565...f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | ⚠️ Unaudited |
| SdCRVBribeBurner | operational_periphery | ethereum | 2 deployments: ethereum [`0x9d6dc3...1573f9`](./contracts/ethereum-1/0x9d6dc3dbc7cc5e1d7241601473fd63d2bd1573f9/); ethereum `0xf98af6...e231a3` | ⚠️ Unaudited |
| sdMAV | unknown | ethereum | [`0x506875...bb02f9`](./contracts/ethereum-1/0x50687515e93c43964733282f9db8683f80bb02f9/) | ⚠️ Unaudited |
| SDT | unknown | ethereum | 2 deployments: ethereum [`0x73968b...6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/); ethereum `0x7d60f2...7ec120` | ⚠️ Unaudited |
| SdtDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x06f66b...a2b5dc`](./contracts/ethereum-1/0x06f66bc79aed1b49a393bf5fcf68a70499a2b5dc/); ethereum `0x216e18...388272` | ⚠️ Unaudited |
| SharedLiquidityGaugeRename | operational_periphery | ethereum | [`0x9f92ee...3b9fd9`](./contracts/ethereum-1/0x9f92ee981e2377ab3a657c86e6ba6511d93b9fd9/) | ⚠️ Unaudited |
| ShortOTokenActionWithSwap | token | ethereum | 4 deployments: ethereum [`0x36e0f6...df3845`](./contracts/ethereum-1/0x36e0f6896ab1e02c0d86d0c10f2928dbd2df3845/); ethereum `0x7f845a...16d344`; ethereum `0xc03504...266f30`; ethereum `0xd41509...105bc4` | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | 6 deployments: ethereum [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x25707b...fc1876`; ethereum `0x7aed2b...9e1f70`; ethereum `0xa0cc81...20a5b0`; ethereum `0xf3d24b...10a098`; ethereum `0xfa5251...e7cc47` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | 6 deployments: ethereum [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x73a7b2...4afb66`; ethereum `0x958df8...2ffb3b`; ethereum `0xacdc0a...fdd66d` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | 3 deployments: ethereum [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SignatureVerifier | periphery | ethereum | [`0x895867...c43382`](./contracts/ethereum-1/0x8958677ca44da460d487335c09c045fbd0c43382/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | 5 deployments: ethereum [`0x3557bd...f63318`](./contracts/ethereum-1/0x3557bd058d674dd0981a3ff10515432159f63318/); ethereum `0x37e838...95f1b5`; ethereum `0xac94b8...72aa3e`; ethereum `0xd71b8b...fff2ea`; ethereum `0xfc7ea9...c35267` | ⚠️ Unaudited |
| StakeDAOBribeClaimer | operational_periphery | ethereum | [`0xeb7874...caad3c`](./contracts/ethereum-1/0xeb7874754362386ca438e70447a60a626bcaad3c/) | ⚠️ Unaudited |
| StakeDaoNFT | token | ethereum | [`0xdd4f84...e66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | ethereum | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | ethereum | 2 deployments: ethereum [`0x5ccbae...1b02da`](./contracts/ethereum-1/0x5ccbae7a340351d5253be99337626c6a341b02da/); ethereum `0x6dd223...e38ea2` | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | ethereum | [`0x221738...8c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | ⚠️ Unaudited |
| StETHPriceOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x0c5c61...a4abfb`](./contracts/ethereum-1/0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb/); ethereum `0x371635...2f3069` | ⚠️ Unaudited |
| StrategyAngleStakeDao | core_logic | ethereum | [`0x9eef12...fce257`](./contracts/ethereum-1/0x9eef1244ae7aeedeaa3df2a91b63eaabc4fce257/) | ⚠️ Unaudited |
| StrategyBunchyDev | core_logic | ethereum | [`0x7d3b52...821911`](./contracts/ethereum-1/0x7d3b52a6ae25545f825bc230f7011fc97e821911/) | ⚠️ Unaudited |
| StrategyProxy | core_logic | ethereum | 2 deployments: ethereum [`0xe953d9...0f6b33`](./contracts/ethereum-1/0xe953d93838ca7d5ea60090c5edd38db51e0f6b33/); ethereum `0xf34ae3...274f1a` | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | adapter | ethereum | 4 deployments: ethereum [`0x07fa4c...64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/); ethereum `0x6382d8...1cdea3`; ethereum `0x94405b...da2580`; ethereum `0xdda6ad...e50240` | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0xa4d46e...3f2627`](./contracts/ethereum-1/0xa4d46e86fc0c7d3e46bee208d1b49b21d53f2627/); ethereum `0xd3cfc4...411616` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x68863f...e4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | 3 deployments: ethereum [`0x7185e3...6591d3`](./contracts/ethereum-1/0x7185e3477ad54a8186e623768833e8c2686591d3/); ethereum `0xc8b194...f71def`; ethereum `0xeba9a8...a78054` | ⚠️ Unaudited |
| TokenZapLogic | adapter | ethereum | 5 deployments: ethereum [`0x21cea3...33cac5`](./contracts/ethereum-1/0x21cea3a3cd10ae1feb0759750970b7e86d33cac5/); ethereum `0x6258b0...96c425`; ethereum `0x858d62...c5346f`; ethereum `0xd06986...8292b1`; ethereum `0xebdb53...1a718e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x1c81b9...5ef084`](./contracts/ethereum-1/0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084/) | ⚠️ Unaudited |
| TreasuryRecipient | operational_periphery | ethereum | [`0x9ebbb3...7cf5c1`](./contracts/ethereum-1/0x9ebbb3d59d53d6ad3fa5464f36c2e84abb7cf5c1/) | ⚠️ Unaudited |
| TreasuryVault | operational_periphery | ethereum | 2 deployments: ethereum [`0x22d0b6...d094ca`](./contracts/ethereum-1/0x22d0b68a88bcff9a0d9f08fff03dd969eed094ca/); ethereum `0x9d75c8...9b909c` | ⚠️ Unaudited |
| TreasuryWithFundingCost | operational_periphery | ethereum | 3 deployments: ethereum [`0x456517...4bd122`](./contracts/ethereum-1/0x456517ee29af17e59ea1c70852d3fb15804bd122/); ethereum `0x63fe55...590f83`; ethereum `0x6c981a...a99d97` | ⚠️ Unaudited |
| TreasuryZap | operational_periphery | ethereum | 2 deployments: ethereum [`0x0665ef...993ad4`](./contracts/ethereum-1/0x0665ef3556520b21368754fb644ed3ebf1993ad4/); ethereum `0x1ee1a4...4febfc` | ⚠️ Unaudited |
| UniformBoostProvider | unknown | ethereum | [`0x7c3867...13c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | ⚠️ Unaudited |
| VBMRecipient | operational_periphery | ethereum | [`0xd69f52...d25ade`](./contracts/ethereum-1/0xd69f52a4390eff6d4dd70c1d5b52055cedd25ade/) | ⚠️ Unaudited |
| VeBoostDelegation | unknown | ethereum | 2 deployments: ethereum [`0xce00ad...6be923`](./contracts/ethereum-1/0xce00ad8df94d8c365dc415b84963aa37a06be923/); ethereum `0xfda13d...eb1688` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | ethereum | 2 deployments: ethereum [`0xda9846...2bebdf`](./contracts/ethereum-1/0xda9846665bdb44b0d0caffd0d1d4a539932bebdf/); ethereum `0xe1f9c8...63b9cf` | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| VeSDTRecipient | operational_periphery | ethereum | 2 deployments: ethereum [`0x1fe537...787fce`](./contracts/ethereum-1/0x1fe537bd59a221854a53a5b7a81585b572787fce/); ethereum `0xa054b8...70e7f1` | ⚠️ Unaudited |
| vlBoost | unknown | ethereum | 2 deployments: ethereum [`0xab05ca...d2adda`](./contracts/ethereum-1/0xab05ca46d1c78cabb051effe35099714cad2adda/); ethereum `0xba1b43...82f570` | ⚠️ Unaudited |
| vlSDT | unknown | ethereum | 2 deployments: ethereum [`0x75d96b...e88ef1`](./contracts/ethereum-1/0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1/); ethereum `0x94818a...0b80b8` | ⚠️ Unaudited |
| VoteBountyManagerFactory | registry | ethereum | 2 deployments: ethereum [`0x752893...183e32`](./contracts/ethereum-1/0x75289388d50364c3013583d97bd70ced0e183e32/); ethereum `0xa20b14...10693f` | ⚠️ Unaudited |
| VoteBountyManagerFactoryCommon | registry | ethereum | [`0x3deb1b...297886`](./contracts/ethereum-1/0x3deb1b1648edcd35088da8f4a428f7c900297886/) | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | [`0x64acb0...4e732f`](./contracts/ethereum-1/0x64acb0882c8b174c84dbd492ed307ef0ed4e732f/) | ⚠️ Unaudited |
| VotersRewardsRecipient | operational_periphery | ethereum | [`0xe42a46...f94f17`](./contracts/ethereum-1/0xe42a462dbf54f281f95776e663d8c942dcf94f17/) | ⚠️ Unaudited |
| VoteWeightRegistry | registry | ethereum | [`0x619ede...dd5a5c`](./contracts/ethereum-1/0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | 3 deployments: ethereum [`0x3d8fac...6262c0`](./contracts/ethereum-1/0x3d8facb2b65b8ceb682ade00e016c672ee6262c0/); ethereum `0xec6b8a...f1d469`; ethereum `0xf29b80...b01b6b` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | ethereum | 3 deployments: ethereum [`0x09943c...a894a8`](./contracts/ethereum-1/0x09943c4f27f2ada5bb58b845d27405a4b3a894a8/); ethereum `0x0c3047...6c9e8a`; ethereum `0xe4c978...9cdc3e` | ⚠️ Unaudited |
| VotingEscrowHelper | operational_periphery | ethereum | [`0xd766f2...0aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | ⚠️ Unaudited |
| vsdCRVOFTAdapter | adapter | ethereum | [`0x92b8d4...921e95`](./contracts/ethereum-1/0x92b8d4d4db1555ba4e928ccdea02b52126921e95/) | ⚠️ Unaudited |
| vsdToken | token | ethereum | 2 deployments: ethereum [`0x7346aa...3834fc`](./contracts/ethereum-1/0x7346aa8959fb138787bf9a579b4d86098a3834fc/); ethereum `0xe079ac...96f3b8` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 116 deployments: ethereum [`0x008cfa...7ac315`](./contracts/ethereum-1/0x008cfa89df5b0c780ca3462fc2602d7f8c7ac315/); ethereum `0x017db2...1e1d39`; ethereum `0x051d7e...a74301`; ethereum `0x08780f...aa95da`; ethereum `0x0acca1...cefd76`; ethereum `0x1005f7...13d546`; ethereum `0x193aa4...06cff8`; ethereum `0x1aaea3...a663db`; ethereum `0x201798...7ea04c`; ethereum `0x21042b...45266b`; ethereum `0x2717c6...a9754d`; ethereum `0x28bf9d...a31e6b`; ethereum `0x2932a8...3423f5`; ethereum `0x29f3dd...3e5d92`; ethereum `0x2e158e...9463ba`; ethereum `0x2eb244...73032d`; ethereum `0x2ed5c3...f5b82a`; ethereum `0x30849b...ac91ac`; ethereum `0x3175df...3473cc`; ethereum `0x33bb0e...250067`; ethereum `0x33e411...7fdab0`; ethereum `0x348831...4d9181`; ethereum `0x373f19...2f694c`; ethereum `0x3abf0b...bc2b0d`; ethereum `0x3ce751...8696e4`; ethereum `0x3f0e79...f2e5df`; ethereum `0x40845c...3815c5`; ethereum `0x42027f...5f2390`; ethereum `0x4329c8...7934f9`; ethereum `0x4a4494...e37152`; ethereum `0x4aa2af...18566a`; ethereum `0x4ad5a8...d908e6`; ethereum `0x4c2f99...1bef8d`; ethereum `0x4dcb55...4718c4`; ethereum `0x4e0915...f22273`; ethereum `0x501611...d160aa`; ethereum `0x50dc9a...b8184e`; ethereum `0x55055b...907985`; ethereum `0x5519d8...552c0d`; ethereum `0x552dad...357851`; ethereum `0x5a8fdc...77c8a1`; ethereum `0x5b75c6...a37bb6`; ethereum `0x5bc3dd...9c9dca`; ethereum `0x5d7f95...182827`; ethereum `0x5db3a1...c3d5d8`; ethereum `0x5dfdf4...5479ac`; ethereum `0x5f75a0...b7879a`; ethereum `0x617408...52295a`; ethereum `0x668d88...9131be`; ethereum `0x696b5d...72a53d`; ethereum `0x6d7871...6e5af3`; ethereum `0x72953a...581bbf`; ethereum `0x742c3c...de9571`; ethereum `0x75f8f7...fce882`; ethereum `0x7f5078...4e3466`; ethereum `0x81c46f...cd3dd7`; ethereum `0x86e917...cf114f`; ethereum `0x8fb539...d8abf4`; ethereum `0x9098e2...6e58ad`; ethereum `0x917d8b...6f18cf`; ethereum `0x927ddc...eb6c0d`; ethereum `0x93c951...2f4c17`; ethereum `0x94b4df...c5d45b`; ethereum `0x94be07...2e051e`; ethereum `0x99851d...9edef5`; ethereum `0x99a584...b5788f`; ethereum `0x9ac7dd...114575`; ethereum `0x9b0254...7a2fe8`; ethereum `0x9e7f8d...b0036c`; ethereum `0x9f330d...2109d8`; ethereum `0x9f99fd...2eb8c9`; ethereum `0xa1f8a6...24e577`; ethereum `0xa2d40e...ba628e`; ethereum `0xa47a8a...a75c5b`; ethereum `0xa5d935...a4458c`; ethereum `0xaa1ba3...b30d9e`; ethereum `0xabc533...0a252f`; ethereum `0xb3ad64...6890b8`; ethereum `0xb71cb9...15defe`; ethereum `0xb926f1...96fdcb`; ethereum `0xb97133...4e2331`; ethereum `0xb992e8...af5b63`; ethereum `0xb9cd99...08fbdd`; ethereum `0xbcfe5c...8d42e0`; ethereum `0xc4763c...eb96b4`; ethereum `0xc50222...67f2f0`; ethereum `0xc629a0...701497`; ethereum `0xc78fa2...8cf247`; ethereum `0xc7f5d0...1c3cbc`; ethereum `0xcb6158...d3e067`; ethereum `0xced78d...b3bf27`; ethereum `0xceda55...94b2bb`; ethereum `0xcfc251...a59503`; ethereum `0xd00fdb...096371`; ethereum `0xd05ad7...30d564`; ethereum `0xd09216...9d3778`; ethereum `0xd67bdb...173506`; ethereum `0xdcef96...4241a2`; ethereum `0xde65a1...be9375`; ethereum `0xe0dff1...67403f`; ethereum `0xe4c099...4b4968`; ethereum `0xe55843...3f35d5`; ethereum `0xe73b8a...2a79b3`; ethereum `0xea9914...97fc0b`; ethereum `0xecebb5...e28825`; ethereum `0xed8ffe...abd5e6`; ethereum `0xf253f8...55a07f`; ethereum `0xf2f12b...82ba09`; ethereum `0xf3a433...0dc768`; ethereum `0xf3c6e8...d63106`; ethereum `0xf3d4f5...1950d9`; ethereum `0xf43211...366c7a`; ethereum `0xf758be...50f979`; ethereum `0xf9078f...d1a5a6`; ethereum `0xfa1cdc...5c9014`; ethereum `0xfa2685...9c4b61` | ⚠️ Unaudited |
| WBTCPriceOracle | operational_periphery | ethereum | [`0xb3c90e...4a6390`](./contracts/ethereum-1/0xb3c90e64eb6f456a5f5c17aa99b6aeca6f4a6390/) | ⚠️ Unaudited |
| xTokenWrapper | token | ethereum | 2 deployments: ethereum [`0x829c3d...da5e44`](./contracts/ethereum-1/0x829c3d9b01eb54a6acfffb06183b1fd489da5e44/); ethereum `0xb4d4fd...4a61f5` | ⚠️ Unaudited |
| XYZ Broadcaster | unknown | ethereum | 2 deployments: ethereum [`0x578669...ff8d89`](./contracts/ethereum-1/0x5786696bb5be7fcdb9997e7f89355d9e97ff8d89/); ethereum `0xc03544...f56fe5` | ⚠️ Unaudited |
| YFIAccumulatorV2 | unknown | ethereum | [`0x92cff1...2e3356`](./contracts/ethereum-1/0x92cff1bc1af2a3cb03d969f3b4a1f63d782e3356/) | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | ethereum | [`0xc7793b...0d5fde`](./contracts/ethereum-1/0xc7793bc89724925615d7e4080bd6b893d50d5fde/) | ⚠️ Unaudited |
| YFIDepositor | unknown | ethereum | [`0xe56d97...7e25db`](./contracts/ethereum-1/0xe56d9776fbb287a2f8ba3f11375f51a24d7e25db/) | ⚠️ Unaudited |
| YFIDepositorHelper | periphery | ethereum | 2 deployments: ethereum [`0x9d967c...6f4510`](./contracts/ethereum-1/0x9d967cf3043287ebae052a0a7cb6330f496f4510/); ethereum `0xa29646...a1339d` | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | ethereum | [`0xf908c0...2608c8`](./contracts/ethereum-1/0xf908c0281f4bafbca67e490edae816b8472608c8/) | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | ethereum | [`0xfb9aa6...595785`](./contracts/ethereum-1/0xfb9aa699f1badb31a7c4b40f7fa1f49469595785/) | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | ethereum | [`0x325229...808ea9`](./contracts/ethereum-1/0x325229508513d484a90f3618e6aca8a9fb808ea9/) | ⚠️ Unaudited |
| YieldnestDepositor | unknown | ethereum | [`0x8f0e63...a3352e`](./contracts/ethereum-1/0x8f0e636a19c1677fdf37da0e3af602f96da3352e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0089e0...a60af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x096c04...cafb5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x151740...78a50c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x188bd8...a802de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x198bd2...c228d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x327d16...07fab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d09c5...763f01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a75ce...7bba3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b7eb1...f056e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5080c2...ca4344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5cfb16...2b1312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60dcc2...9efd18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70386d...1019a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x760230...7339e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76147c...2e335e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76fad0...128fcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79a6f2...e190f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x836019...44a99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x870099...2495f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x877745...3bff1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88cae3...2b66be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x926cc4...698941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92b2cb...e96dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa783d3...c6a70c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7fd73...a6db1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbfc4d...f1520a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf6cbd...0cf8f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc71621...642777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7f201...54cd93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc88acb...f45531` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1fc1e...e57389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3a135...a48ef3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf56c26...0c2166` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd91ae...718bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe110b...9d2439` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [AladdinETH_Report_v1.0_2022_12_22.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/AladdinETH_Report_v1.0_2022_12_22.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 6 | high |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [SECBIT_AladdinCVX_v1.0_20221209.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.0_20221209.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 4 | high |
| [SECBIT_AladdinCVX_v1.1_20230203.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.1_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |
| [SECBIT_AladdinDAO_aFXS_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | high |
| [SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 13 | high |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 20 | high |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [SECBIT_CLever_Furnace_Update_20221111.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Furnace_Update_20221111.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 8 | high |
| [SECBIT_CLever_Report_v1.1.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 20 | high |
| [SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 21 | high |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 8 | high |
| [SECBIT_Concentrator_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 4 | high |
| [SECBIT_Concentrator_Report_v1.1.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report_v1.1.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 8 | high |
| [SECBIT_Concentrator_aCRV_Update_20230203.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aCRV_Update_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 7 | high |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 4 | high |
| [SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 8 | high |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [SECBIT_Generic_CLever_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Generic_CLever_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 9 | high |
| [SECBIT_TokenSale_Report_v1.1.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_TokenSale_Report_v1.1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 5 | high |
| [SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 76 | high |
| [SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 15 | high |
| [SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 9 | high |
| [SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 15 | high |
| [SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 8 | high |
| [SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 6 | high |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 14 | high |
| [SECBIT_sdCRV_Report_v1.2_20230616.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.2_20230616.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 16 | high |
| [Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 2 | high |
| [TrailofBits_fx_oracle_202406.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_oracle_202406.pdf) | Trail of Bits | Audit | 2024-07 | aging | Direct | contract_name | 24 | high |
| [TrailofBits_fx_protocol_202403.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_protocol_202403.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | 111 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/) | PoolManager | core_logic | $85,767,000.66 | Verified native implementation with $85,767,000.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56ae77...b5b530`](./contracts/ethereum-1/0x56ae77cb4c34ba94c634d6cdeda57d5d5bb5b530/) | Vault | core_logic | $329,219.11 | Verified native implementation with $329,219.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3ecf0...a6359a`](./contracts/ethereum-1/0xa3ecf0cc8e88136134203aaafb21f7bd2da6359a/) | RewardsAllocationPool | core_logic | $63,987.18 | Verified native implementation with $63,987.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd265...612d5f`](./contracts/ethereum-1/0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f/) | FxUSDBasePool | core_logic | $18,591.58 | Verified native implementation with $18,591.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1925e1...63f08c`](./contracts/ethereum-1/0x1925e197fffa52060f0d2515cd3781e26c63f08c/) | RewardTokenWrapper | token | $344.75 | Verified native implementation with $344.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | $28.73 | Verified native implementation with $28.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33636d...3cc708`](./contracts/ethereum-1/0x33636d49fbefbe798e15e7f356e8dbef543cc708/) | FxUSDBasePoolFacet | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23ab51...a3bc4a`](./contracts/ethereum-1/0x23ab5100acaff53d00ad92bb8df75a72e7a3bc4a/) | Accumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5892df...22d1b8`](./contracts/ethereum-1/0x5892dff85a2ae0cee9a0efa4c95e5e977122d1b8/) | AccumulatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1662a5...adccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | AdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd89f9...d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | AdapterRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | AladdinOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x304047...d869b4`](./contracts/ethereum-1/0x304047f1d867a00082c8549e81a2f0b389d869b4/) | AladdinPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dddf9...d1c888`](./contracts/ethereum-1/0x9dddf9c8a7447993bcfef18f6b5421f28bd1c888/) | AngleAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x943671...c6aa51`](./contracts/ethereum-1/0x943671e6c3a98e28abdbc60a7ac703b3c0c6aa51/) | AngleAccumulatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22ba8e...12baa0`](./contracts/ethereum-1/0x22ba8eeac5bddf7b5a298d2169a24c6f9e12baa0/) | BadgerHunt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2953a3...42f687`](./contracts/ethereum-1/0x2953a32e7babe3c6b9d31c80c727ab9ca042f687/) | BatchAddCard | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x172573...194c01`](./contracts/ethereum-1/0x1725738f3295d3f8eb68da864a2ade9c39194c01/) | BatchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01363d...a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/) | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa52f3d...c407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/) | BoostMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x633120...b1be0f`](./contracts/ethereum-1/0x633120100e108f03ace79d6c78aac9a56db1be0f/) | ClaimRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097d23...bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/) | ClaimRewardsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23384d...c099bb`](./contracts/ethereum-1/0x23384dd4380b3677b829c6c88c0ea9cc41c099bb/) | ConcentratorStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29d378...73f08a`](./contracts/ethereum-1/0x29d3782825432255041db2eafcb7174f5273f08a/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3f463...017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/) | ControllerModule | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55a514...343cde`](./contracts/ethereum-1/0x55a51450b1d025b4f6fa259b2008851553343cde/) | CreditNote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x963bac...8f6563`](./contracts/ethereum-1/0x963bacb5b0df6950814c572e3f9ea005458f6563/) | CRVAccumulatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e7b4d...aa7ec5`](./contracts/ethereum-1/0x3e7b4de8a29c90e0052c27bad365bbfe2aaa7ec5/) | CRVAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1e3ca...f69191`](./contracts/ethereum-1/0xc1e3ca8a3921719be0ae3690a0e036feb4f69191/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c88a...c64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | CRVDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ef23...222619`](./contracts/ethereum-1/0x04ef23094b40bca5655bbc8442886e1c45222619/) | CRVPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941550...46d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | CRVStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ed96e...bf360b`](./contracts/ethereum-1/0x7ed96ebcdad7ee5d98d6f7624dd18c54b8bf360b/) | CvxCrvWeightAdjuster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd4dc0...f56da1`](./contracts/ethereum-1/0xbd4dc0bd2786f176d39cc1b24de540e6b2f56da1/) | DarkParadise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20d1b5...e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | DarkParadiseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x070df1...eef1ca`](./contracts/ethereum-1/0x070df1b96059f5dc34fcb140ffdc8c41d6eef1ca/) | Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x221ffb...9efa63`](./contracts/ethereum-1/0x221ffb180ad01213ff882ab7de9c75e23f9efa63/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x190c58...0ed85b`](./contracts/ethereum-1/0x190c58357b8dab707fdce1f646ee147f5c0ed85b/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb6fbb...5bcacb`](./contracts/ethereum-1/0xbb6fbb48d3bfddb2e0690e87894623e2e65bcacb/) | DummyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x387568...25e206`](./contracts/ethereum-1/0x387568e1ea4ff4d003b8147739db69d87325e206/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x150f62...c15c9f`](./contracts/ethereum-1/0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f/) | ETHLSDConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7f790...0e9af3`](./contracts/ethereum-1/0xb7f79090190c297f59a2b7d51d3aef7aad0e9af3/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0919bb...fe555b`](./contracts/ethereum-1/0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51df76...9cfd2b`](./contracts/ethereum-1/0x51df7675b8f7b970ded3596c00624a30ec9cfd2b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60136f...4318d6`](./contracts/ethereum-1/0x60136fefe23d269af41ab72de483d186dc4318d6/) | FeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d093e...8a53f9`](./contracts/ethereum-1/0x9d093e5b929cceeae9497fc27c22481e0b8a53f9/) | FlashLoanCallbackFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28ed63...ed832d`](./contracts/ethereum-1/0x28ed637c5e3371c2678c2d346df04fb634ed832d/) | Fundraising Gauge Fx | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x726727...e88e13`](./contracts/ethereum-1/0x7267277682ffc281b00b0ec56d8de22e8ae88e13/) | FxCVXOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1b11b...71693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | FxEETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x834e87...be4a20`](./contracts/ethereum-1/0x834e87262a00b0ac38ed49cb1110838866be4a20/) | FxEETHTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x564a46...366523`](./contracts/ethereum-1/0x564a464c9c357de593fa48efd784048a9e366523/) | FxEzETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51ef9f...f053a6`](./contracts/ethereum-1/0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6/) | FxEzETHTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffe563...6ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | FxFrxETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87978a...5bfb13`](./contracts/ethereum-1/0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13/) | FXNAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1938...667ede`](./contracts/ethereum-1/0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede/) | FXNAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x799519...f1c7ab`](./contracts/ethereum-1/0x7995192be61ea0b28ce14183dda51edf78f1c7ab/) | FXNDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518129...16c91f`](./contracts/ethereum-1/0x5181291355abe5f3f1812a0aa888a73b9a16c91f/) | FXNVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc16b...c59fb2`](./contracts/ethereum-1/0x1cc16bedaacd15848bca5eb80188e0931bc59fb2/) | FxsAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83bdc4...333d20`](./contracts/ethereum-1/0x83bdc459ac3887b2a61aa47dca3acac26a333d20/) | FxStETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f8330...43fba8`](./contracts/ethereum-1/0x4f8330946669d71014efdce30ef19a256643fba8/) | FxWBTCOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e94c0...a7c0d2`](./contracts/ethereum-1/0x7e94c07c6c3b2c931e9517529f56553770a7c0d2/) | FxWBTCTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210dfe...07a68a`](./contracts/ethereum-1/0x210dfec4fc0c3b88e7984a86dc315f43aa07a68a/) | GaugeDepositorVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | GaugeMultiRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | GaugeRewarder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f78dd...66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/) | InflationReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8996cb...ccc265`](./contracts/ethereum-1/0x8996cb5f5abc5e8dd6425baa7d32179e38ccc265/) | Liquidity Gauge v4 Strat XChain | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x576d7a...dbe080`](./contracts/ethereum-1/0x576d7ad8eae92d9a972104aac56c15255ddbe080/) | LiquidityFeeRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c5ccb...cf0922`](./contracts/ethereum-1/0x5c5ccb2e511fcdeaa16737810787a47507cf0922/) | LockerPreLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf51610...0151c7`](./contracts/ethereum-1/0xf5161021bdb64479febb903e5dbad9b5060151c7/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x177eaa...70e7ec`](./contracts/ethereum-1/0x177eaa1a7c26da6dc84c0cc3f9ae6fd0a470e7ec/) | MAVDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cf291...a64db5`](./contracts/ethereum-1/0x7cf29182e8d262b34a36a912736bbc777fa64db5/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeb3e5...3c3a5c`](./contracts/ethereum-1/0xbeb3e5cd895c1b7e95d5cd39b1ac1efb6c3c3a5c/) | MerkleDistributor3CRV | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2de8e9...0d4f5f`](./contracts/ethereum-1/0x2de8e91b6fdb5f6575cafb0827aca9fa1d0d4f5f/) | MerkleDistributorSdt | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057810...ca4eb1`](./contracts/ethereum-1/0x057810cf20efd30745b368ec42f0b39879ca4eb1/) | MetaCLever | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fec78...0accae`](./contracts/ethereum-1/0x5fec7879738cb209af6d9880e4566a24200accae/) | MigrateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2989df...f7448c`](./contracts/ethereum-1/0x2989df9c8c9897f07d464366607dcbfaebf7448c/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x267b7a...a524e4`](./contracts/ethereum-1/0x267b7a1d56d624293ba1819f30b5bf0f12a524e4/) | MultipleVestHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa324a2...68bdd9`](./contracts/ethereum-1/0xa324a2e3a6f64bd588565e0e1e2dd50e7a68bdd9/) | NFTBoosterVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3680cc...a7364f`](./contracts/ethereum-1/0x3680cce0d97bbbfa47765d7429ff207d03a7364f/) | OnlyBoostAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48af33...91bce7`](./contracts/ethereum-1/0x48af330a99a4cee2f367a4ab447ba816d091bce7/) | Optimizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x404d77...8b86ca`](./contracts/ethereum-1/0x404d7730c59f28ed8476ea411f88320df98b86ca/) | OpynPerpVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14f1cb...143749`](./contracts/ethereum-1/0x14f1cbae37f765614655967afc51b544b8143749/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d5980...af98b3`](./contracts/ethereum-1/0x7d5980fda6b2869e5f21bde8eb6bd89cb7af98b3/) | PancakeVaultFactoryXChain | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafc6ae...4f7814`](./contracts/ethereum-1/0xafc6aea868062e50a082400aea92f7260b4f7814/) | PCSVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e2e8...97f29d`](./contracts/ethereum-1/0x17e2e8ca0b35aa750771e000d1e926417b97f29d/) | PegKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002cda...a1a7a2`](./contracts/ethereum-1/0x002cdac50b3eefe6adb6168833fb49c040a1a7a2/) | PositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51452b...64fde5`](./contracts/ethereum-1/0x51452b51fbb8e8b200d369a55366ec7a1564fde5/) | RangeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb53943...035a93`](./contracts/ethereum-1/0xb539433ff0c477b350e50df5f36d049d28035a93/) | RecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d8a9c...c4d356`](./contracts/ethereum-1/0x1d8a9c30e4e25033498347c1a054717bd0c4d356/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c3a4d...a5c6de`](./contracts/ethereum-1/0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de/) | Registrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x524fce...c3a3b3`](./contracts/ethereum-1/0x524fce03270c60279d604ea3b374194e96c3a3b3/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78f1bb...c85ad7`](./contracts/ethereum-1/0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7/) | RewardReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c043d...cbfd46`](./contracts/ethereum-1/0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46/) | RewardReceiverMigrationModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a207a...05ba12`](./contracts/ethereum-1/0x9a207a85e372fcdac3014f945a65868f2a05ba12/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3a6cf...505eef`](./contracts/ethereum-1/0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447d90...1ae114`](./contracts/ethereum-1/0x447d902da96a22727d0b53f215d0c387fe1ae114/) | RouterManagementFacet | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd98ce...222ff5`](./contracts/ethereum-1/0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5/) | RouterModuleClaim | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf0a5d...09b7c9`](./contracts/ethereum-1/0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9/) | RouterModuleDeposit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8155b8...557707`](./contracts/ethereum-1/0x8155b8858af2b12baf8a79e22021b14f91557707/) | RouterModuleVLSDT | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe88772...4cf63c`](./contracts/ethereum-1/0xe88772dfb857317476b77f1a25b888b9424cf63c/) | RouterModuleWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | Sanctuary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d6dc3...1573f9`](./contracts/ethereum-1/0x9d6dc3dbc7cc5e1d7241601473fd63d2bd1573f9/) | SdCRVBribeBurner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f92ee...3b9fd9`](./contracts/ethereum-1/0x9f92ee981e2377ab3a657c86e6ba6511d93b9fd9/) | SharedLiquidityGaugeRename | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e0f6...df3845`](./contracts/ethereum-1/0x36e0f6896ab1e02c0d86d0c10f2928dbd2df3845/) | ShortOTokenActionWithSwap | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x895867...c43382`](./contracts/ethereum-1/0x8958677ca44da460d487335c09c045fbd0c43382/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3557bd...f63318`](./contracts/ethereum-1/0x3557bd058d674dd0981a3ff10515432159f63318/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb7874...caad3c`](./contracts/ethereum-1/0xeb7874754362386ca438e70447a60a626bcaad3c/) | StakeDAOBribeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | StakeDaoNFT_V2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5c61...a4abfb`](./contracts/ethereum-1/0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb/) | StETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9eef12...fce257`](./contracts/ethereum-1/0x9eef1244ae7aeedeaa3df2a91b63eaabc4fce257/) | StrategyAngleStakeDao | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d3b52...821911`](./contracts/ethereum-1/0x7d3b52a6ae25545f825bc230f7011fc97e821911/) | StrategyBunchyDev | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe953d9...0f6b33`](./contracts/ethereum-1/0xe953d93838ca7d5ea60090c5edd38db51e0f6b33/) | StrategyProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fa4c...64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/) | StrategyWrapperLeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21cea3...33cac5`](./contracts/ethereum-1/0x21cea3a3cd10ae1feb0759750970b7e86d33cac5/) | TokenZapLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ebbb3...7cf5c1`](./contracts/ethereum-1/0x9ebbb3d59d53d6ad3fa5464f36c2e84abb7cf5c1/) | TreasuryRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22d0b6...d094ca`](./contracts/ethereum-1/0x22d0b68a88bcff9a0d9f08fff03dd969eed094ca/) | TreasuryVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x456517...4bd122`](./contracts/ethereum-1/0x456517ee29af17e59ea1c70852d3fb15804bd122/) | TreasuryWithFundingCost | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0665ef...993ad4`](./contracts/ethereum-1/0x0665ef3556520b21368754fb644ed3ebf1993ad4/) | TreasuryZap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c3867...13c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | UniformBoostProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd69f52...d25ade`](./contracts/ethereum-1/0xd69f52a4390eff6d4dd70c1d5b52055cedd25ade/) | VBMRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce00ad...6be923`](./contracts/ethereum-1/0xce00ad8df94d8c365dc415b84963aa37a06be923/) | VeBoostDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda9846...2bebdf`](./contracts/ethereum-1/0xda9846665bdb44b0d0caffd0d1d4a539932bebdf/) | VeBoostDelegationMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe537...787fce`](./contracts/ethereum-1/0x1fe537bd59a221854a53a5b7a81585b572787fce/) | VeSDTRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab05ca...d2adda`](./contracts/ethereum-1/0xab05ca46d1c78cabb051effe35099714cad2adda/) | vlBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x752893...183e32`](./contracts/ethereum-1/0x75289388d50364c3013583d97bd70ced0e183e32/) | VoteBountyManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3deb1b...297886`](./contracts/ethereum-1/0x3deb1b1648edcd35088da8f4a428f7c900297886/) | VoteBountyManagerFactoryCommon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64acb0...4e732f`](./contracts/ethereum-1/0x64acb0882c8b174c84dbd492ed307ef0ed4e732f/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe42a46...f94f17`](./contracts/ethereum-1/0xe42a462dbf54f281f95776e663d8c942dcf94f17/) | VotersRewardsRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x619ede...dd5a5c`](./contracts/ethereum-1/0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c/) | VoteWeightRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd766f2...0aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | VotingEscrowHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7346aa...3834fc`](./contracts/ethereum-1/0x7346aa8959fb138787bf9a579b4d86098a3834fc/) | vsdToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x829c3d...da5e44`](./contracts/ethereum-1/0x829c3d9b01eb54a6acfffb06183b1fd489da5e44/) | xTokenWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cff1...2e3356`](./contracts/ethereum-1/0x92cff1bc1af2a3cb03d969f3b4a1f63d782e3356/) | YFIAccumulatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7793b...0d5fde`](./contracts/ethereum-1/0xc7793bc89724925615d7e4080bd6b893d50d5fde/) | YFIAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe56d97...7e25db`](./contracts/ethereum-1/0xe56d9776fbb287a2f8ba3f11375f51a24d7e25db/) | YFIDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d967c...6f4510`](./contracts/ethereum-1/0x9d967cf3043287ebae052a0a7cb6330f496f4510/) | YFIDepositorHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf908c0...2608c8`](./contracts/ethereum-1/0xf908c0281f4bafbca67e490edae816b8472608c8/) | YFIDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb9aa6...595785`](./contracts/ethereum-1/0xfb9aa699f1badb31a7c4b40f7fa1f49469595785/) | YieldBasisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325229...808ea9`](./contracts/ethereum-1/0x325229508513d484a90f3618e6aca8a9fb808ea9/) | YieldBasisFallbackHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f0e63...a3352e`](./contracts/ethereum-1/0x8f0e636a19c1677fdf37da0e3af602f96da3352e/) | YieldnestDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 258 |
| upstream | 13 |
| standard_library | 9 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=33
- Match method counts: extraction_exact=926

Fork inheritance lineage and inherited audits are included when available.
