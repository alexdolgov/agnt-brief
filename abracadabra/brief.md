# Agentic Audit Brief: Abracadabra

⚠️ Lifecycle status: DEAD - TVL dropped 26.0% over 90 days

## Project Overview

- Project: Abracadabra (`abracadabra`)
- Website: [https://abracadabra.money](https://abracadabra.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:49.978Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon
- Contract surface: 206 unique implementations (380 raw deployments)
- DeFi Llama TVL: $6,325,068.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Abracadabra is a decentralized lending protocol that allows users to deposit interest-bearing tokens as collateral to mint MIM, a USD-pegged stablecoin. It also includes a DEX (MIM Swap) for trading MIM and other assets, and supports cross-chain operations via omnichain tokens.

### Architecture

The lending markets (V2, V3, V4) rely on Boxes (Degenbox) for yield strategies and Spells for position management, while MIM Swap provides liquidity for the MIM stablecoin. Omnichain tokens extend MIM and SPELL across chains, and treasuries manage protocol revenue and incentives.

## Contract Surface Quality

- Indexed contracts: 2730; live-surface contracts included: 380 (345 live, 35 unknown).
- Excluded by liveness: 2294 inactive, 56 singleton, 0 uninitialized.
- Deployment units: 12/43 live.
- Detected codebases: uniswap-v2, uniswap-v3, yearn-vault-v2
- Unverified dependencies: 28/558.

## Audit Coverage Summary

- Verified implementations audited: 9/169 (5.3%)
- Verified + Unaudited implementations: 160
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 206
- Raw deployments: 380
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 4.7% | 2024-12 |
| Guardian | Tier 2 | 2 | 1.2% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlastBox | unknown | blast | n/a | [`0xc8f5eb...1e3748`](./contracts/blast-81457/0xc8f5eb8a632f9600d1c7bc91e97dad5f8b1e3748/) | ✅ Audited |
| BlastCauldronV4 | unknown | blast | n/a | [`0x79e8ca...fe402e`](./contracts/blast-81457/0x79e8cad80e2aa49a246b789584c45aab1cfe402e/) | ✅ Audited |
| BlastOnboardingBoot | unknown | blast | unit-17933 | [`0xa64b73...36ab96`](./contracts/blast-81457/0xa64b73699cc7334810e382a4c09caec53636ab96/) | ✅ Audited |
| CauldronV4 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x00380c...0ac923`](./contracts/ethereum-1/0x00380cb5858664078f2289180cc32f74440ac923/); ethereum `0x38e7d1...4a41bb`; ethereum `0x7259e1...1a6a90`; ethereum `0xe8ed74...5bf341`; arbitrum `0x569813...0406d5`; arbitrum `0x6b04c5...3dacb6`; arbitrum `0x726413...3701b1`; arbitrum `0x780db9...d0c320` | ✅ Audited |
| DegenBox | unknown | bsc | n/a | 4 deployments: ethereum `0xd96f48...fc2cce`; bsc [`0x090185...37e5f6`](./contracts/bsc-56/0x090185f2135308bad17527004364ebcc2d37e5f6/); arbitrum `0x7c8fef...431d38`; avalanche `0x1fc83f...aae530` | ✅ Audited |
| GmxV2CauldronV4 | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x2b02bb...1934fa`](./contracts/arbitrum-42161/0x2b02bbeab8ecab792d3f4dda7a76f63aa21934fa/); arbitrum `0x4f9737...e40741`; arbitrum `0x625fe7...74bd61`; arbitrum `0x66805f...996c6a`; arbitrum `0x7962ac...5404fb`; arbitrum `0x9ff8b4...e94831`; arbitrum `0xd7659d...6d552a` | ✅ Audited |
| MultiRewards | unknown | arbitrum | n/a | 3 deployments: ethereum `0xafe0bb...2c47db`; arbitrum [`0x280c64...b11f97`](./contracts/arbitrum-42161/0x280c64c4c4869cf2a6762eadd4701360c1b11f97/); arbitrum `0xc30911...1cd652` | ✅ Audited |
| Router | unknown | arbitrum | n/a | 3 deployments: ethereum `0x7202b7...d5b6fe`; arbitrum [`0x63d8e7...e09f01`](./contracts/arbitrum-42161/0x63d8e76143a1fd075981a44e27652adffee09f01/); arbitrum `0xabbc5f...2f4064` | ✅ Audited |
| Spell | unknown | ethereum | n/a | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (160)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | unknown | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| AdventureGold | unknown | ethereum | n/a | [`0x32353a...489a20`](./contracts/ethereum-1/0x32353a6c91143bfd6c7d363b546e62a9a2489a20/) | ⚠️ Unaudited |
| aeWETH | unknown | arbitrum | unit-17920 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlchemixToken | unknown | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlToken | unknown | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | moonriver | n/a | 5 deployments: bsc `0xfe19f0...f433ba`; polygon `0x49a040...c47242`; moonriver [`0x0cae51...de3adb`](./contracts/moonriver-1285/0x0cae51e1032e8461f4806e26332c030e34de3adb/); arbitrum `0xfea7a6...7d6c2a`; avalanche `0x130966...b8c18d` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | optimism | n/a | [`0xb153fb...c57901`](./contracts/optimism-10/0xb153fb3d196a8eb25522705560ac152eeec57901/) | ⚠️ Unaudited |
| BaseRewardPool | unknown | ethereum | n/a | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | ⚠️ Unaudited |
| BatchSender | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x5179d7...3107a6` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | ethereum | unit-17894 | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x74c764...46894a`](./contracts/arbitrum-42161/0x74c764d41b77dbbb4fe771dab1939b00b146894a/); avalanche `0xf4f463...d1d18f` | ⚠️ Unaudited |
| BlastMIMSwapRouter | unknown | blast | n/a | [`0x85faaf...57b705`](./contracts/blast-81457/0x85faafc31bc8b16be7039f869cd2006da257b705/) | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | [`0x555ea7...6dcb5a`](./contracts/bsc-56/0x555ea72d7347e82c614c16f005fa91caf06dcb5a/) | ⚠️ Unaudited |
| Booster | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd8bd5c...f28659`](./contracts/ethereum-1/0xd8bd5cdd145ed2197cb16ddb172df954e3f28659/); ethereum `0xf403c1...8aae31` | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| CakeToken | unknown | bsc | n/a | 3 deployments: bsc [`0x0e09fa...81ce82`](./contracts/bsc-56/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82/); bsc `0x46e358...b42cf4`; bsc `0xe17a47...7f978b` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | unknown | arbitrum | n/a | [`0x2c9f65...29b131`](./contracts/arbitrum-42161/0x2c9f65bd1a501cb406584f5532ce57c28829b131/) | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | ethereum | n/a | [`0x6cbafe...7c8c8f`](./contracts/ethereum-1/0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f/) | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ff906...38b91f`](./contracts/ethereum-1/0x6ff9061bb8f97d948942cef376d98b51fa38b91f/); ethereum `0xffbf48...3d9ae6` | ⚠️ Unaudited |
| CauldronV2 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x390db1...d18a41`](./contracts/ethereum-1/0x390db10e65b5ab920c19149c919d970ad9d18a41/); ethereum `0x59e908...2e573f`; ethereum `0x5ec47e...192498`; ethereum `0xbc36fd...14dd63`; ethereum `0xcfc571...e74636`; ethereum `0xf179fe...98ed37` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35a0dd...a30321`](./contracts/ethereum-1/0x35a0dd182e4bca59d5931eae13d0a2332fa30321/); ethereum `0x4eaed7...e4b3a0` | ⚠️ Unaudited |
| CauldronV2Flat | unknown | ethereum | n/a | 9 deployments: ethereum [`0x05500e...6e7c27`](./contracts/ethereum-1/0x05500e2ee779329698df35760bedcaac046e7c27/); ethereum `0x0bca8e...d401c1`; ethereum `0x252dcf...32eae4`; ethereum `0x7b7473...c39020`; ethereum `0x920d9b...953f9f`; ethereum `0x98a84e...b6b99f`; ethereum `0xc1879b...b592ce`; ethereum `0xc319ee...57e7da`; ethereum `0xebfde8...e93f0a` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | avalanche | n/a | 12 deployments: bsc `0x692cf1...c12c90`; bsc `0xf80494...a93319`; arbitrum `0x99d8a9...1e17f3`; arbitrum `0xc89958...0215e6`; avalanche [`0x0a1e6a...b1cf3d`](./contracts/avalanche-43114/0x0a1e6a80e93e62bd0d3d3bfcf4c362c40fb1cf3d/); avalanche `0x2450bf...e68d07`; avalanche `0x35fa7a...d6bb21`; avalanche `0x3b63f8...ad964b`; avalanche `0x3cfed0...30d2a2`; avalanche `0x56984f...6ba49d`; avalanche `0x95cce6...b54210`; avalanche `0xacc682...9f28e3` | ⚠️ Unaudited |
| CauldronV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7ce7d9...064757`](./contracts/ethereum-1/0x7ce7d9ed62b9a6c5ace1c6ec9aeb115fa3064757/); ethereum `0xc6b2b3...09001e`; ethereum `0xd31e19...dc7324` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | ethereum | n/a | [`0x822796...438df5`](./contracts/ethereum-1/0x8227965a7f42956549afaec319f4e444aa438df5/) | ⚠️ Unaudited |
| ClaimZap | unknown | ethereum | n/a | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4985cc...cc8c20`](./contracts/ethereum-1/0x4985cc58c9004772c225aec9c36cc9a56ecc8c20/); ethereum `0x9447c1...4c5646`; ethereum `0xd92494...e51008` | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ⚠️ Unaudited |
| cvxCrvToken | unknown | ethereum | n/a | [`0x62b9c7...810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFpisToken | unknown | ethereum | n/a | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| cvxFxsToken | unknown | ethereum | n/a | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| CvxLocker | unknown | ethereum | n/a | [`0xd18140...94af50`](./contracts/ethereum-1/0xd18140b4b819b895a3dba5442f959fa44994af50/) | ⚠️ Unaudited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ⚠️ Unaudited |
| cvxRewardPool | unknown | ethereum | n/a | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | [`0x903c99...3b61fb`](./contracts/ethereum-1/0x903c9974aaa431a765e60bc07af45f0a1b3b61fb/) | ⚠️ Unaudited |
| ENAOFT | unknown | arbitrum | n/a | [`0x58538e...9c0133`](./contracts/arbitrum-42161/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0xf42ae1...a426ca`](./contracts/arbitrum-42161/0xf42ae1d54fd613c9bb14810b0588faaa09a426ca/) | ⚠️ Unaudited |
| FantomToken | unknown | ethereum | n/a | [`0x4e1536...717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | [`0x11d628...f43bb7`](./contracts/arbitrum-42161/0x11d62807dae812a0f1571243460bf94325f43bb7/) | ⚠️ Unaudited |
| FeeBridge | unknown | ethereum | n/a | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | [`0x7a527d...a0d769`](./contracts/ethereum-1/0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769/) | ⚠️ Unaudited |
| FTT | unknown | ethereum | n/a | [`0x50d1c9...55a4c9`](./contracts/ethereum-1/0x50d1c9771902476076ecfc8b2a83ad6b9355a4c9/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0xfc5a1a...35ad0a`](./contracts/arbitrum-42161/0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | unit-17893 | [`0xdf2c27...1e126b`](./contracts/ethereum-1/0xdf2c270f610dc35d8ffda5b453e74db5471e126b/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | arbitrum | unit-17924 | [`0xa71a02...b7174c`](./contracts/arbitrum-42161/0xa71a021ef66b03e45e0d85590432dfcfa1b7174c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | avalanche | n/a | [`0xae4d3a...a543ca`](./contracts/avalanche-43114/0xae4d3a42e46399827bd094b4426e2f79cca543ca/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| InchSpellSwapper | unknown | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | ethereum | n/a | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | avalanche | unit-17926 (9 proxies) | 9 deployments: avalanche [`0x29472d...328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/); avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | avalanche | unit-17929 | [`0xce095a...6a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | unknown | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | unknown | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | 3 deployments: avalanche [`0x781655...fd755d`](./contracts/avalanche-43114/0x781655d802670bba3c89aebaaea59d3182fd755d/); avalanche `0xa389f9...e3ddb1`; avalanche `0xed8cbd...7a6256` | ⚠️ Unaudited |
| JoeRouter02 | unknown | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | unknown | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | unit-17930 | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | unit-17928 | [`0xc22f01...4ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | ⚠️ Unaudited |
| LayerZeroToken | unknown | arbitrum | n/a | [`0x698588...3271cd`](./contracts/arbitrum-42161/0x6985884c4392d348587b19cb9eaaf157f13271cd/) | ⚠️ Unaudited |
| LockingMultiRewards | unknown | arbitrum | n/a | [`0x98164d...e02d0a`](./contracts/arbitrum-42161/0x98164ded88e2a4862bde8e7d4b831a6e3be02d0a/) | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LQTYToken | unknown | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| LUSDToken | unknown | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | base | n/a | 9 deployments: optimism `0x48686c...e74339`; bsc `0x41d5a0...c601af`; polygon `0xca0d86...e05533`; moonriver `0xef2dbd...4f0195`; base [`0x403595...91d262`](./contracts/base-8453/0x4035957323fc05ad9704230e3dc1e7663091d262/); arbitrum `0x957a8a...0b7090`; avalanche `0xb3a661...1b130d`; linea `0x60bbef...25a097`; blast `0xca8a20...91f018` | ⚠️ Unaudited |
| LzProxyOFTV2 | unknown | ethereum | n/a | [`0x439a5f...f83c10`](./contracts/ethereum-1/0x439a5f0f5e8d149dda9a0ca367d4a8e4d6f83c10/) | ⚠️ Unaudited |
| MagicApe | unknown | ethereum | n/a | [`0xf35b31...97feb6`](./contracts/ethereum-1/0xf35b31b941d94b249eaded041db1b05b7097feb6/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MarketToken | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x09400d...af03c9`](./contracts/arbitrum-42161/0x09400d9db990d5ed3f35d7be61dfaeb900af03c9/); arbitrum `0x450bb6...2ac541`; arbitrum `0x47c031...170703`; arbitrum `0x70d955...ee6336`; arbitrum `0x7c11f7...6b9a77`; arbitrum `0x7f1fa2...18455c`; arbitrum `0xc25cef...7e5407` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 3 deployments: bsc [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/); bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x352471...486921`](./contracts/arbitrum-42161/0x35247165119b69a40edd5304969560d0ef486921/); arbitrum `0x626010...95a954` | ⚠️ Unaudited |
| MintableBurnableERC20 | unknown | base | n/a | 3 deployments: base [`0x4a3a6d...eb6a3d`](./contracts/base-8453/0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d/); linea `0xdd3b80...c9429a`; blast `0x76da31...8374c1` | ⚠️ Unaudited |
| mSpellReporter | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd2b62a...48cf28`](./contracts/avalanche-43114/0xd2b62aef2102c09f475b23dda6b61072e848cf28/); avalanche `0xf8beb5...de90c7` | ⚠️ Unaudited |
| mSpellStaking | unknown | arbitrum | n/a | 3 deployments: ethereum `0xbd2fba...5e6797`; arbitrum [`0x1df188...dd9e51`](./contracts/arbitrum-42161/0x1df188958a8674b5177f77667b8d173c3cdd9e51/); avalanche `0xbd8447...f955af` | ⚠️ Unaudited |
| MultiRewardsStaking | unknown | arbitrum | n/a | [`0x6d2070...8988cd`](./contracts/arbitrum-42161/0x6d2070b13929df15b13d96cfc509c574168988cd/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| OFTWrapper | unknown | ethereum | n/a | 7 deployments: ethereum [`0x287176...784adc`](./contracts/ethereum-1/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); optimism [`0x287176...784adc`](./contracts/optimism-10/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); bsc [`0x287176...784adc`](./contracts/bsc-56/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); polygon `0xe1261e...6dfd4c`; moonriver [`0x287176...784adc`](./contracts/moonriver-1285/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); arbitrum [`0x287176...784adc`](./contracts/arbitrum-42161/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); avalanche [`0x287176...784adc`](./contracts/avalanche-43114/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | [`0xfd31c7...36566a`](./contracts/ethereum-1/0xfd31c7d00ca47653c6ce64af53c1571f9c36566a/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| PancakeFactory | unknown | bsc | n/a | [`0xbcfccb...952812`](./contracts/bsc-56/0xbcfccbde45ce874adcb698cc183debcf17952812/) | ⚠️ Unaudited |
| PancakeRouter | unknown | bsc | n/a | [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x38ea45...0bd783`](./contracts/ethereum-1/0x38ea452219524bb87e18de1c24d3bb59510bd783/); ethereum `0xdf0770...32ff56` | ⚠️ Unaudited |
| PoolBridge | unknown | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolManagerV4 | unknown | ethereum | n/a | [`0x6d3a38...b423de`](./contracts/ethereum-1/0x6d3a388e310aaa498430d1fe541d6d64ddb423de/) | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | [`0x75e42e...8a4a0c`](./contracts/arbitrum-42161/0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c/) | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | [`0xb87a43...b09868`](./contracts/arbitrum-42161/0xb87a436b93ffe9d75c5cfa7bacfff96430b09868/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x406b89...374352`](./contracts/ethereum-1/0x406b89138782851d3a8c04c743b010ceb0374352/); ethereum `0x40d95c...5b87a3`; ethereum `0x6bcd99...45cda2`; ethereum `0x85f60d...25c405`; ethereum `0xc6d3b8...0dc20d`; ethereum `0xce450a...30865b`; ethereum `0xed5106...760e09` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x289424...b134ed`](./contracts/ethereum-1/0x289424add4a1a503870eb475fd8bf1d586b134ed/); ethereum `0x46f54d...9ff82c` | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | ⚠️ Unaudited |
| ReferralStorage | unknown | arbitrum | n/a | [`0xe6fab3...06e99d`](./contracts/arbitrum-42161/0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d/) | ⚠️ Unaudited |
| RevertingToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1aa92d...a0d3e0`](./contracts/arbitrum-42161/0x1aa92da659e914982975f8f109a05be904a0d3e0/); arbitrum `0xa9ada7...096270` | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5c04a1...90150d`](./contracts/arbitrum-42161/0x5c04a12eb54a093c396f61355c6da0b15890150d/); arbitrum `0x986b4e...7f43aa` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x1addd8...4c8903`; arbitrum `0x4e971a...5400b6`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| SikobaToken | unknown | ethereum | n/a | [`0x6b4008...f81765`](./contracts/ethereum-1/0x6b40089e6cba08696d9ae48f38e2b06faff81765/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 4 deployments: bsc [`0x0c3d68...8e4528`](./contracts/bsc-56/0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528/); bsc `0x2dcf4c...5b66cf`; bsc `0xa5137e...30964e`; bsc `0xce54ba...dd8d9a` | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x04f269...52111f`](./contracts/ethereum-1/0x04f2694c8fcee23e8fd0dfea1d4f5bb8c352111f/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| StakedGlp | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2f546a...3e89ae`](./contracts/arbitrum-42161/0x2f546ad4edd93b956c8999be404cdcafde3e89ae/); arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| StakingHelper | unknown | ethereum | n/a | [`0xc8c436...7a612d`](./contracts/ethereum-1/0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d/) | ⚠️ Unaudited |
| StakingPools | unknown | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | unit-17917 (2 proxies) | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0x3e6648...15d2af` | ⚠️ Unaudited |
| stdeUSD | unknown | ethereum | unit-17892 | [`0x5c5b19...198326`](./contracts/ethereum-1/0x5c5b196abe0d54485975d1ec29617d42d9198326/) | ⚠️ Unaudited |
| SushiBar | unknown | ethereum | n/a | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/); arbitrum `0x460e1a...82bc6e`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TimeToken | unknown | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokenManager | unknown | arbitrum | n/a | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | ethereum | n/a | [`0x95ad61...64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | 25 deployments: avalanche [`0x02d632...cab641`](./contracts/avalanche-43114/0x02d632ba7f2a046817af67ef7b279080d3cab641/); avalanche `0x089ec7...c22dcc`; avalanche `0x10f672...cb5029`; avalanche `0x23eb41...18f628`; avalanche `0x2aa5ee...75d2da`; avalanche `0x3dca53...a60a63`; avalanche `0x3e9263...ff864d`; avalanche `0x5da155...5405ca`; avalanche `0x66b145...f3142d`; avalanche `0x670968...198eec`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x81a003...98237e`; avalanche `0x952d82...56d57e`; avalanche `0x971156...997c50`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9eb54a...793200`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xb2d98a...191cf1`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xd60366...fa5360`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9` | ⚠️ Unaudited |
| TreasuryLend | unknown | ethereum | n/a | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryManager | unknown | ethereum | n/a | [`0xeb8121...6de6b3`](./contracts/ethereum-1/0xeb8121b44a290ee16981d87b92fc16b2366de6b3/) | ⚠️ Unaudited |
| TreasurySwap | unknown | ethereum | n/a | [`0xa25b17...e74316`](./contracts/ethereum-1/0xa25b17d7deee59f9e326e45cc3c0c1b158e74316/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| Unipool | unknown | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | avalanche | n/a | [`0xcbb424...f62339`](./contracts/avalanche-43114/0xcbb424fd93cdec0ef330d8a8c985e8b147f62339/) | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x7c100c...df49b2`; arbitrum `0xa75287...72042e` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 23 deployments: ethereum [`0x1635b5...5846c3`](./contracts/ethereum-1/0x1635b506a88fbf428465ad65d00e8d6b6e5846c3/); ethereum `0x27b7b1...6f07d7`; ethereum `0x2f50d5...5846bb`; ethereum `0x575ccd...318e2c`; ethereum `0x5f18c7...b973a9`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x5faf6a...e52d8e`; ethereum `0x64e3c2...ac041d`; ethereum `0x6c3f90...e6e490`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0x7da96a...8d87a7`; ethereum `0x807819...b6abf3`; ethereum `0xa258c4...4d168c`; ethereum `0xa90996...857849`; ethereum `0xa9fe46...2f5b28`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52`; ethereum `0xda8164...970c95`; ethereum `0xdcd90c...0b4325`; ethereum `0xe14d13...097db1` | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHRebasing | unknown | blast | unit-17932 | [`0x430000...000004`](./contracts/blast-81457/0x4300000000000000000000000000000000000004/) | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | ethereum | n/a | [`0x53375a...60a9a6`](./contracts/ethereum-1/0x53375add9d2dfe19398ed65baaeffe622760a9a6/) | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | ethereum | n/a | [`0xf75edb...614e46`](./contracts/ethereum-1/0xf75edb14f320df35bb1db1bb4204762431614e46/) | ⚠️ Unaudited |
| wMEMO | unknown | avalanche | n/a | [`0x0da672...e5bb3b`](./contracts/avalanche-43114/0x0da67235dd5787d67955420c84ca1cecd4e5bb3b/) | ⚠️ Unaudited |
| wMemoOracle | unknown | avalanche | n/a | [`0x99d8a9...1e17f3`](./contracts/avalanche-43114/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| wOHM | unknown | ethereum | n/a | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | n/a | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | ethereum | n/a | [`0xd36932...d15a84`](./contracts/ethereum-1/0xd36932143f6ebdedd872d5fb0651f4b72fd15a84/) | ⚠️ Unaudited |
| WrappedmAMZN | unknown | ethereum | n/a | [`0x0cae9e...b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | ethereum | n/a | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | ethereum | n/a | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | ethereum | n/a | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | ⚠️ Unaudited |
| WrappedMIR | unknown | ethereum | n/a | [`0x09a3ec...f2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | ethereum | n/a | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | ethereum | n/a | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | ethereum | n/a | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | ethereum | n/a | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | ethereum | n/a | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | ethereum | n/a | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | ethereum | n/a | [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | ⚠️ Unaudited |
| WrappedmVIXY | unknown | ethereum | n/a | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | ⚠️ Unaudited |
| WrappedSDT | unknown | ethereum | n/a | [`0x676ad1...f39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | ⚠️ Unaudited |
| WrappedUST | unknown | ethereum | n/a | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0dec85...cefaf0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x287176...784adc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4fdffa...6d7bc1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x64c655...2af8c4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6f86e6...456efc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7208d9...c0a45d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74a0bc...20a616` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x82f0b8...6829c1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8e45af...eaed34` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa3fc1b...59917e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa48d95...de7598` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb32b31...ea0488` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc5c015...783191` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd4357d...89d11b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xed745b...884e12` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xef7a0b...03298a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf08e4c...abd7c7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf5bce5...643966` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf68b78...dd567f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x1b77fd...73315b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x287176...784adc` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x30d525...ce7c16` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x3a2761...77c367` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x3cff6f...66e6a8` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x471ee7...f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x526a17...acdfdd` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x630fc1...819d7e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x729d88...936e30` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x7ad0e5...1eaaa7` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x895731...18651d` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xaad094...80a41a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xd6b8bd...5dc591` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Note: GM cauldrons are audited by Guardian, the audit can be found [**here**]().<br> (also discovered via alternate URL)](https://github.com/GuardianAudits/Audits/blob/main/AbracadabraMoney/11-14-2023_Abracadabra_GMXV2.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | 15 | high |
| [2024-02-06_Abracadabra_LockingMultiRewards.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-02-06_Abracadabra_LockingMultiRewards.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-03-21_MIMSwap.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-03-21_MIMSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 7 | high |
| [2024-12-16_Abracadabra_BoundSpell_Report.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-12-16_Abracadabra_BoundSpell_Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | high |
| [MagicGlpReview.md](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/MagicGlpReview.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32353a...489a20`](./contracts/ethereum-1/0x32353a6c91143bfd6c7d363b546e62a9a2489a20/) | AdventureGold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0cae51...de3adb`](./contracts/moonriver-1285/0x0cae51e1032e8461f4806e26332c030e34de3adb/) | AnyswapV5ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb153fb...c57901`](./contracts/optimism-10/0xb153fb3d196a8eb25522705560ac152eeec57901/) | AnyswapV6ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c764...46894a`](./contracts/arbitrum-42161/0x74c764d41b77dbbb4fe771dab1939b00b146894a/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x85faaf...57b705`](./contracts/blast-81457/0x85faafc31bc8b16be7039f869cd2006da257b705/) | BlastMIMSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c9f65...29b131`](./contracts/arbitrum-42161/0x2c9f65bd1a501cb406584f5532ce57c28829b131/) | CauldronFeeWithdrawer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cbafe...7c8c8f`](./contracts/ethereum-1/0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f/) | CauldronLowRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ff906...38b91f`](./contracts/ethereum-1/0x6ff9061bb8f97d948942cef376d98b51fa38b91f/) | CauldronMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x390db1...d18a41`](./contracts/ethereum-1/0x390db10e65b5ab920c19149c919d970ad9d18a41/) | CauldronV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35a0dd...a30321`](./contracts/ethereum-1/0x35a0dd182e4bca59d5931eae13d0a2332fa30321/) | CauldronV2CheckpointV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05500e...6e7c27`](./contracts/ethereum-1/0x05500e2ee779329698df35760bedcaac046e7c27/) | CauldronV2Flat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a1e6a...b1cf3d`](./contracts/avalanche-43114/0x0a1e6a80e93e62bd0d3d3bfcf4c362c40fb1cf3d/) | CauldronV2Multichain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ce7d9...064757`](./contracts/ethereum-1/0x7ce7d9ed62b9a6c5ace1c6ec9aeb115fa3064757/) | CauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x822796...438df5`](./contracts/ethereum-1/0x8227965a7f42956549afaec319f4e444aa438df5/) | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4985cc...cc8c20`](./contracts/ethereum-1/0x4985cc58c9004772c225aec9c36cc9a56ecc8c20/) | ConvexStakingWrapperAbra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | CvxCrvStakingWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x903c99...3b61fb`](./contracts/ethereum-1/0x903c9974aaa431a765e60bc07af45f0a1b3b61fb/) | DepositToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58538e...9c0133`](./contracts/arbitrum-42161/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ENAOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1536...717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | FantomToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a527d...a0d769`](./contracts/ethereum-1/0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50d1c9...55a4c9`](./contracts/ethereum-1/0x50d1c9771902476076ecfc8b2a83ad6b9355a4c9/) | FTT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf2c27...1e126b`](./contracts/ethereum-1/0xdf2c270f610dc35d8ffda5b453e74db5471e126b/) | GnosisSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa71a02...b7174c`](./contracts/arbitrum-42161/0xa71a021ef66b03e45e0d85590432dfcfa1b7174c/) | GnosisSafeL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae4d3a...a543ca`](./contracts/avalanche-43114/0xae4d3a42e46399827bd094b4426e2f79cca543ca/) | GnosisSafeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | JoeBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x781655...fd755d`](./contracts/avalanche-43114/0x781655d802670bba3c89aebaaea59d3182fd755d/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x698588...3271cd`](./contracts/arbitrum-42161/0x6985884c4392d348587b19cb9eaaf157f13271cd/) | LayerZeroToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x403595...91d262`](./contracts/base-8453/0x4035957323fc05ad9704230e3dc1e7663091d262/) | LzIndirectOFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf35b31...97feb6`](./contracts/ethereum-1/0xf35b31b941d94b249eaded041db1b05b7097feb6/) | MagicApe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09400d...af03c9`](./contracts/arbitrum-42161/0x09400d9db990d5ed3f35d7be61dfaeb900af03c9/) | MarketToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a3a6d...eb6a3d`](./contracts/base-8453/0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d/) | MintableBurnableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1df188...dd9e51`](./contracts/arbitrum-42161/0x1df188958a8674b5177f77667b8d173c3cdd9e51/) | mSpellStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287176...784adc`](./contracts/ethereum-1/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/) | OFTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd31c7...36566a`](./contracts/ethereum-1/0xfd31c7d00ca47653c6ce64af53c1571f9c36566a/) | OlympusStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38ea45...0bd783`](./contracts/ethereum-1/0x38ea452219524bb87e18de1c24d3bb59510bd783/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d3a38...b423de`](./contracts/ethereum-1/0x6d3a388e310aaa498430d1fe541d6d64ddb423de/) | PoolManagerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x406b89...374352`](./contracts/ethereum-1/0x406b89138782851d3a8c04c743b010ceb0374352/) | PrivilegedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x289424...b134ed`](./contracts/ethereum-1/0x289424add4a1a503870eb475fd8bf1d586b134ed/) | PrivilegedCheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8c436...7a612d`](./contracts/ethereum-1/0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d/) | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c5b19...198326`](./contracts/ethereum-1/0x5c5b196abe0d54485975d1ec29617d42d9198326/) | stdeUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | SushiBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95ad61...64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | TokenMintERC20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb8121...6de6b3`](./contracts/ethereum-1/0xeb8121b44a290ee16981d87b92fc16b2366de6b3/) | TreasuryManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa25b17...e74316`](./contracts/ethereum-1/0xa25b17d7deee59f9e326e45cc3c0c1b158e74316/) | TreasurySwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcbb424...f62339`](./contracts/avalanche-43114/0xcbb424fd93cdec0ef330d8a8c985e8b147f62339/) | UniswapV2Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1635b5...5846c3`](./contracts/ethereum-1/0x1635b506a88fbf428465ad65d00e8d6b6e5846c3/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x430000...000004`](./contracts/blast-81457/0x4300000000000000000000000000000000000004/) | WETHRebasing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53375a...60a9a6`](./contracts/ethereum-1/0x53375add9d2dfe19398ed65baaeffe622760a9a6/) | WhitelistedCauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf75edb...614e46`](./contracts/ethereum-1/0xf75edb14f320df35bb1db1bb4204762431614e46/) | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0da672...e5bb3b`](./contracts/avalanche-43114/0x0da67235dd5787d67955420c84ca1cecd4e5bb3b/) | wMEMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | wOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd36932...d15a84`](./contracts/ethereum-1/0xd36932143f6ebdedd872d5fb0651f4b72fd15a84/) | WrappedmAAPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | WrappedmBABA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | WrappedmGOOGL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | WrappedmIAU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | WrappedmMSFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | WrappedmNFLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | WrappedmQQQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | WrappedmSLV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | WrappedmTWTR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | WrappedmUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | WrappedUST | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 116 |
| upstream | 11 |
| standard_library | 2 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=484

Zero-match audit list:

- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf

Fork inheritance lineage and inherited audits are included when available.
