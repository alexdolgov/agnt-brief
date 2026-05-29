# Agentic Audit Brief: Stout

⚠️ Lifecycle status: DECLINING - TVL dropped 10.7% over 90 days

## Project Overview

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-29T14:46:34.640Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: sonic
- Contract surface: 132 unique implementations (211 raw deployments)
- DeFi Llama TVL: $2,065,136.90
- On-chain TVL (included contracts): $12,613.58
- TVL by chain: Sonic $12,613.58

## Project Description

Stout is a collateralized debt position (CDP) protocol on Sonic that lets users deposit assets to mint stablecoins and earn yield. It provides vaults for staking, liquid staking tokens, and reward distribution.

### Architecture

The Stout family uses proxy contracts (WOSonicProxy, WrappedAnsProxy) to manage upgradeable logic for WOSonic and wanS tokens. These tokens interact with vaults and drippers to distribute rewards and manage collateral within the CDP system.

## Audit Coverage Summary

- Verified implementations audited: 0/46 (0.0%)
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 132
- Raw deployments: 211
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,613.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $12,613.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OSVault | core_logic | sonic | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| StoutVault | core_logic | sonic | [`0x88d6d8...f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | ⚠️ Unaudited |
| BaseContracts | unknown | sonic | 3 deployments: sonic [`0x5ce899...f13d5c`](./contracts/sonic-146/0x5ce899aed04c656776148fc3b1adbe59e5f13d5c/); sonic `0xad1a7c...65ccb1`; sonic `0xc2235d...be5874` | ⚠️ Unaudited |
| DUSX | unknown | sonic | 3 deployments: sonic [`0x3341ba...d4d661`](./contracts/sonic-146/0x3341bae76206a44413e94e859926086640d4d661/); sonic `0x480763...ad64af`; sonic `0xe30e73...76f854` | ⚠️ Unaudited |
| DUSXProvider | unknown | sonic | [`0x089313...d81aad`](./contracts/sonic-146/0x0893131746962b4b5afb573351ba7f4094d81aad/) | ⚠️ Unaudited |
| DynamicInterestRate | operational_periphery | sonic | [`0x252ddc...993ff7`](./contracts/sonic-146/0x252ddc63f883cb276b4862304045f0b035993ff7/) | ⚠️ Unaudited |
| EGGS | unknown | sonic | [`0xf26ff7...f019bc`](./contracts/sonic-146/0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc/) | ⚠️ Unaudited |
| FeesDistributor | operational_periphery | sonic | [`0xfa925d...1aaa83`](./contracts/sonic-146/0xfa925d48cce408c38872d9e5a907e936661aaa83/) | ⚠️ Unaudited |
| FeesWithdrawer | operational_periphery | sonic | 2 deployments: sonic [`0x1b425c...45e855`](./contracts/sonic-146/0x1b425c1c51c1eb4b4b537d1ce5b2915e4845e855/); sonic `0x1efd8d...5f9e97` | ⚠️ Unaudited |
| FixedRateDripper | unknown | sonic | 3 deployments: sonic [`0x5b7299...281f03`](./contracts/sonic-146/0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03/); sonic `0x681ac7...0e6542`; sonic `0xc5685a...dad992` | ⚠️ Unaudited |
| Floor | unknown | sonic | [`0xb8c30c...5bac0e`](./contracts/sonic-146/0xb8c30cf1aa46b4e8ee8d008a0f2f763b3d5bac0e/) | ⚠️ Unaudited |
| Lender | unknown | sonic | 9 deployments: sonic [`0x40e0fa...ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/); sonic `0x57c02e...5f2709`; sonic `0x669fd3...1dd198`; sonic `0x711de8...584a62`; sonic `0x94395f...8ed3f2`; sonic `0x9c1b02...0e10e1`; sonic `0xbf7104...45de13`; sonic `0xf49e97...a48b7a`; sonic `0xf55e1e...1c1a91` | ⚠️ Unaudited |
| LenderOwner | unknown | sonic | [`0xec7fa6...39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | ⚠️ Unaudited |
| LiquidationHelper | periphery | sonic | [`0xef2d85...1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | ⚠️ Unaudited |
| MarketLens | periphery | sonic | [`0x56f0b1...17db48`](./contracts/sonic-146/0x56f0b188fea4cd50ec91faa15982df9d9017db48/) | ⚠️ Unaudited |
| Minter | operational_periphery | sonic | [`0x5ed2e9...64b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | ⚠️ Unaudited |
| MiscHelper | periphery | sonic | [`0xa1ba6e...52fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | ⚠️ Unaudited |
| OracleApi3Reader | operational_periphery | sonic | 7 deployments: sonic [`0x25456c...042264`](./contracts/sonic-146/0x25456cff86e96fe4b9b3d70aec13199297042264/); sonic `0x5df1ef...b8fae5`; sonic `0x6d5154...c10f82`; sonic `0x761c59...8199b7`; sonic `0x863a1d...4aa60c`; sonic `0x943697...fbd7bf`; sonic `0xfc73f4...5f76a9` | ⚠️ Unaudited |
| OracleFloorPrice | operational_periphery | sonic | [`0x19b3a4...cb713f`](./contracts/sonic-146/0x19b3a42bfbd4452e6a2b92b2e898916b68cb713f/) | ⚠️ Unaudited |
| OraclePythStSUSDReader | operational_periphery | sonic | [`0xca1ecc...7f8fea`](./contracts/sonic-146/0xca1ecc8ae30d810b4cd2fa0a270b79bf097f8fea/) | ⚠️ Unaudited |
| OraclePythWSTKSCETHReader | operational_periphery | sonic | [`0x8caed8...3d1e50`](./contracts/sonic-146/0x8caed8d28737c3a62a4baa25428eef28363d1e50/) | ⚠️ Unaudited |
| OraclePythWSTKSCUSDReader | operational_periphery | sonic | [`0xe3b141...6ef2b6`](./contracts/sonic-146/0xe3b141caff92bf076443101bedf2020cd66ef2b6/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | 6 deployments: sonic [`0x170526...5857c6`](./contracts/sonic-146/0x1705268cb99b7aa67e0f1f0c71004b83065857c6/); sonic `0x67895d...751fdf`; sonic `0x8fb9a0...502add`; sonic `0xb1e256...f8a794`; sonic `0xb75137...c9951d`; sonic `0xdb1604...2a1076` | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | sonic | [`0xb570a2...3182ba`](./contracts/sonic-146/0xb570a2d463886c059c94daf779a7bbd84d3182ba/) | ⚠️ Unaudited |
| OSonicOracleRouter | operational_periphery | sonic | [`0xe68e0c...c4e88b`](./contracts/sonic-146/0xe68e0c66950a7e02335fc9f44daa05d115c4e88b/) | ⚠️ Unaudited |
| OSonicVaultAdmin | core_logic | sonic | 6 deployments: sonic [`0x1a44f4...9ec59f`](./contracts/sonic-146/0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f/); sonic `0x2c3141...74fed0`; sonic `0x3c1106...0b71f0`; sonic `0x4bc730...a879f8`; sonic `0x5217ff...8c5583`; sonic `0xf611cc...86d2af` | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | 7 deployments: sonic [`0x087a3e...8dcbd9`](./contracts/sonic-146/0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9/); sonic `0x48bb73...0fe277`; sonic `0x48e483...409ebd`; sonic `0x4a83ce...4e994c`; sonic `0xb3d6e8...f9906c`; sonic `0xb5c4cd...37ac16`; sonic `0xd66afa...836cf3` | ⚠️ Unaudited |
| OSonicVaultProxy | core_logic | sonic | 12 deployments: sonic [`0x062225...13f3d2`](./contracts/sonic-146/0x062225ff81afd93b21c93a30d46f020a8c13f3d2/); sonic `0x33015e...37df3d`; sonic `0x3e07dc...7776a2`; sonic `0x57e407...4f3721`; sonic `0x83e4bc...60ea95`; sonic `0x8a8378...a9a958`; sonic `0xb08442...227dae`; sonic `0xbb3b88...e1b1a8`; sonic `0xd95345...aa7345`; sonic `0xe09676...d55fb2`; sonic `0xeab26f...fc358b`; sonic `0xf85a68...9d2358` | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | 2 deployments: sonic [`0x8bb678...7d07ac`](./contracts/sonic-146/0x8bb67820e8ac1a775da25e50391718c1457d07ac/); sonic `0xe25a2b...2fab21` | ⚠️ Unaudited |
| PegStabilityModule | unknown | sonic | 2 deployments: sonic [`0x24e2a8...44a89a`](./contracts/sonic-146/0x24e2a86176f209cce828714c48f804fd7444a89a/); sonic `0xb96919...72a494` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | registry | sonic | 5 deployments: sonic [`0x246594...24b3b3`](./contracts/sonic-146/0x246594d0276ffaeb0442c3edcdfb026e6924b3b3/); sonic `0x4f3b65...4a218a`; sonic `0x6f9468...82bfdc`; sonic `0x7399a8...ae6be8`; sonic `0xe1ee14...9d4aa1` | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | registry | sonic | 3 deployments: sonic [`0x7c5cb7...4ca4a7`](./contracts/sonic-146/0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7/); sonic `0xa63e47...d17dc5`; sonic `0xc10f52...145d81` | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | 4 deployments: sonic [`0x27281c...5f7689`](./contracts/sonic-146/0x27281ce00322ee8b7c078788fb624d051f5f7689/); sonic `0x840081...5a3b49`; sonic `0xb2e9d0...c3ffe7`; sonic `0xf43f0f...28674f` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | sonic | 8 deployments: sonic [`0x11e1c7...14204f`](./contracts/sonic-146/0x11e1c786875287a5b2bb2ff84b317b79cc14204f/); sonic `0x1310ea...51382a`; sonic `0x2c945a...f597b8`; sonic `0x859984...d85fe9`; sonic `0x963fd4...dd19dc`; sonic `0x9cce36...6cd1e1`; sonic `0xcae456...07ee60`; sonic `0xcb3249...139953` | ⚠️ Unaudited |
| RepayHelper | periphery | sonic | [`0x652427...dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | ⚠️ Unaudited |
| StableOwner | unknown | sonic | [`0x002c4c...30fa86`](./contracts/sonic-146/0x002c4c18f15c4e5ed51b845b2c87459ed630fa86/) | ⚠️ Unaudited |
| StakedDUSX | token | sonic | [`0xa0b0cb...d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | ⚠️ Unaudited |
| StoutTimelock | governance | sonic | [`0xd3a6b1...21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | ⚠️ Unaudited |
| STTX | unknown | sonic | [`0x97a10b...957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | ⚠️ Unaudited |
| SupplyHangingCalculator | unknown | sonic | [`0x322544...e76e13`](./contracts/sonic-146/0x322544d87a7501aa48ea84183ee082366ae76e13/) | ⚠️ Unaudited |
| SupplyHangingCalculatorOwner | unknown | sonic | [`0xcaf8e9...eff99f`](./contracts/sonic-146/0xcaf8e906ec654ea83dd5f2b4387183cddeeff99f/) | ⚠️ Unaudited |
| VaultValueChecker | core_logic | sonic | [`0x06f172...3d2c40`](./contracts/sonic-146/0x06f172e6852085eca886b7f9fd8f7b21db3d2c40/) | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | sonic | [`0x822131...f1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | ⚠️ Unaudited |
| wanS | unknown | sonic | 2 deployments: sonic [`0xba3bb1...207a64`](./contracts/sonic-146/0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64/); sonic `0xfa85fe...5abd70` | ⚠️ Unaudited |
| WOSonic | unknown | sonic | 8 deployments: sonic [`0x1ccb48...6c5805`](./contracts/sonic-146/0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805/); sonic `0x563045...e55d0b`; sonic `0x574cb8...b58983`; sonic `0x8cb72f...5558f8`; sonic `0x9f0df7...3df4b1`; sonic `0xa369fa...9657ef`; sonic `0xa8e00f...569cbe`; sonic `0xba7785...3bd2d7` | ⚠️ Unaudited |
| WOSonicProxy | unknown | sonic | 6 deployments: sonic [`0x52a10d...de8342`](./contracts/sonic-146/0x52a10d701c878c5aa3df2731b89bf9b2e7de8342/); sonic `0xbd57cf...240841`; sonic `0xc29a44...7e4506`; sonic `0xda0d34...236479`; sonic `0xe1b612...8be4a2`; sonic `0xfb6985...821836` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x006bce...88699f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x033725...d36e16` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0957b3...71cefa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x121383...b221f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x18e624...c5234e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1a436a...c8f901` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1ea473...f70b79` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1f1d3b...858a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x204329...fe8e08` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x25c436...bc7777` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2776f2...54151f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x292003...729105` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2d88f8...a51db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2eff96...77285b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3a9b66...60b063` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3f80f3...9a18e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x425a62...4ed56a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x46c06f...29d6ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4bf238...888315` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4f1aef...b836d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x54527e...3d40bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x55fefa...a44153` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5847b1...3193da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x58cc8b...ba0a80` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x597982...42bb10` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5c9ad1...c49db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x608a61...9867d3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6276d4...6bf4bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x63b173...16a79d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x63cde3...5ce654` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x657af6...d58720` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x66f2df...63f590` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x67d570...c437cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6b26d4...80a0dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x748ee7...05a4ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x74f54f...1b55ee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x77dd3b...c3da28` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x800063...43d68b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x81a140...17567a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x83c117...5a33e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x842c91...899238` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x846fb3...ac813a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8cce20...e28a96` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8d0ea3...0aa322` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8e0687...8a77f3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8fde1f...e0cd63` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x94cbd2...c10599` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x951881...0858a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9ddb17...1e7287` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9e3143...c174b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9e8895...7ad43d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa5e1b0...7e381e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa6c53a...02e0a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xaa97db...3023da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xac3c72...210eb2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xae3dcf...e864a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb275f1...af8d4d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb64246...4f6a2b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xba09a5...613e12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc3ca8f...b5c8bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc4c732...baba48` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc82bd7...58fc69` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcd3d2d...9f062a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcdcf8e...600846` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcf8990...536b14` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcfce49...9637c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd0cc28...72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd1a9c3...3cee21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd3001a...8c5121` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd4ccea...8b7ce1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd5909a...bb4040` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd9efb0...4cbb66` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xdae5a3...4d8775` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xdb564b...c9f06b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe3717f...e7d230` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe504b2...1577e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe64d5d...e242e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe6a162...3a3450` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe9f739...1fc51c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xed6bb8...cabcfa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf22f28...4b13cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf2625c...6306e1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf8fcbb...e81104` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | OSVault | core_logic | $12,613.58 | Verified native implementation with $12,613.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88d6d8...f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | StoutVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ce899...f13d5c`](./contracts/sonic-146/0x5ce899aed04c656776148fc3b1adbe59e5f13d5c/) | BaseContracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3341ba...d4d661`](./contracts/sonic-146/0x3341bae76206a44413e94e859926086640d4d661/) | DUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x089313...d81aad`](./contracts/sonic-146/0x0893131746962b4b5afb573351ba7f4094d81aad/) | DUSXProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x252ddc...993ff7`](./contracts/sonic-146/0x252ddc63f883cb276b4862304045f0b035993ff7/) | DynamicInterestRate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfa925d...1aaa83`](./contracts/sonic-146/0xfa925d48cce408c38872d9e5a907e936661aaa83/) | FeesDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1b425c...45e855`](./contracts/sonic-146/0x1b425c1c51c1eb4b4b537d1ce5b2915e4845e855/) | FeesWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5b7299...281f03`](./contracts/sonic-146/0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03/) | FixedRateDripper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb8c30c...5bac0e`](./contracts/sonic-146/0xb8c30cf1aa46b4e8ee8d008a0f2f763b3d5bac0e/) | Floor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40e0fa...ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/) | Lender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xec7fa6...39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | LenderOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xef2d85...1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x56f0b1...17db48`](./contracts/sonic-146/0x56f0b188fea4cd50ec91faa15982df9d9017db48/) | MarketLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ed2e9...64b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa1ba6e...52fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | MiscHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19b3a4...cb713f`](./contracts/sonic-146/0x19b3a42bfbd4452e6a2b92b2e898916b68cb713f/) | OracleFloorPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x170526...5857c6`](./contracts/sonic-146/0x1705268cb99b7aa67e0f1f0c71004b83065857c6/) | OSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb570a2...3182ba`](./contracts/sonic-146/0xb570a2d463886c059c94daf779a7bbd84d3182ba/) | OSonicDripperProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe68e0c...c4e88b`](./contracts/sonic-146/0xe68e0c66950a7e02335fc9f44daa05d115c4e88b/) | OSonicOracleRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a44f4...9ec59f`](./contracts/sonic-146/0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f/) | OSonicVaultAdmin | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x087a3e...8dcbd9`](./contracts/sonic-146/0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9/) | OSonicVaultCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x062225...13f3d2`](./contracts/sonic-146/0x062225ff81afd93b21c93a30d46f020a8c13f3d2/) | OSonicVaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8bb678...7d07ac`](./contracts/sonic-146/0x8bb67820e8ac1a775da25e50391718c1457d07ac/) | OSonicZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x24e2a8...44a89a`](./contracts/sonic-146/0x24e2a86176f209cce828714c48f804fd7444a89a/) | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x246594...24b3b3`](./contracts/sonic-146/0x246594d0276ffaeb0442c3edcdfb026e6924b3b3/) | PoolBoostCentralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7c5cb7...4ca4a7`](./contracts/sonic-146/0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7/) | PoolBoostCentralRegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x652427...dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | RepayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x002c4c...30fa86`](./contracts/sonic-146/0x002c4c18f15c4e5ed51b845b2c87459ed630fa86/) | StableOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa0b0cb...d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | StakedDUSX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd3a6b1...21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | StoutTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x97a10b...957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | STTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x322544...e76e13`](./contracts/sonic-146/0x322544d87a7501aa48ea84183ee082366ae76e13/) | SupplyHangingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xcaf8e9...eff99f`](./contracts/sonic-146/0xcaf8e906ec654ea83dd5f2b4387183cddeeff99f/) | SupplyHangingCalculatorOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x06f172...3d2c40`](./contracts/sonic-146/0x06f172e6852085eca886b7f9fd8f7b21db3d2c40/) | VaultValueChecker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x822131...f1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | VoteEscrowedSTTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xba3bb1...207a64`](./contracts/sonic-146/0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64/) | wanS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ccb48...6c5805`](./contracts/sonic-146/0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805/) | WOSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x52a10d...de8342`](./contracts/sonic-146/0x52a10d701c878c5aa3df2731b89bf9b2e7de8342/) | WOSonicProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 5 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9172] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9173] 0002-metadata-manifest-and-pull-command.md
- [9174] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
