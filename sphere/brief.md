# Agentic Audit Brief: SPHERE

## Project Overview

- Project: SPHERE (`sphere`)
- Website: [https://www.sphere.finance](https://www.sphere.finance)
- Lifecycle: active (Tier 0, 75.4% below peak)
- Generated: 2026-05-29T14:33:01.554Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: arbitrum, avalanche, base, kava, polygon
- Contract surface: 217 unique implementations (648 raw deployments)
- DeFi Llama TVL: $6,675,979.00
- On-chain TVL (included contracts): $229,383,952.26
- TVL by chain: Arbitrum $224,669,814.63 | Polygon $4,672,310.03 | Base $41,821.96 | Avalanche $5.64

## Project Description

SPHERE is a multi-product DeFi protocol offering yield-optimizing vaults (Dyson), a collateralized debt position (CDP) stablecoin system (Preon Finance), and a governance token (Sphere Finance). It operates across multiple chains, integrating with various DEXs and lending protocols to manage liquidity and generate yield.

### Architecture

Dyson vaults and Preon Finance strategies share infrastructure such as oracles (e.g., ChainlinkManager, DysonLpOracle) and proxy patterns. The Sphere token likely serves as a governance and incentive layer across both families, though direct on-chain links are not explicit in the contract surface.

## Audit Coverage Summary

- Verified implementations audited: 0/109 (0.0%)
- Verified + Unaudited implementations: 109
- Verified by bytecode match: 0
- Unverified implementations: 108
- Unique implementations: 217
- Raw deployments: 648
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $229,383,952.26
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (109)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ATokenInstance | token | polygon | 4 deployments: polygon [`0x82e64f...2312ee`](./contracts/polygon-137/0x82e64f49ed5ec1bc6e43dad4fc8af9bb3a2312ee/); polygon `0xea1132...6f7ac9`; arbitrum `0x8ffdf2...0a0692`; arbitrum `0xe50fa9...8128c8` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0x172370...a610af`](./contracts/polygon-137/0x172370d5cd63279efa6d502dab29171933a610af/) | ⚠️ Unaudited |
| SmartVaultActivePool | core_logic | arbitrum | 11 deployments: polygon `0x56b6d3...685724`; polygon `0xba8235...3ba5e0`; polygon `0xc93ffe...4ca8e6`; arbitrum [`0x1ec20c...356998`](./contracts/arbitrum-42161/0x1ec20cd5d6396ac5956ddb18aa469fe17d356998/); arbitrum `0x5394d2...b678d4`; arbitrum `0x9738b4...0d0646`; arbitrum `0xb4640f...05be3d`; arbitrum `0xba7e4b...af1b95`; arbitrum `0xccfa58...57df7c`; arbitrum `0xf96386...297f4c`; arbitrum `0xf9d14c...930dd5` | ⚠️ Unaudited |
| SphereToken | token | polygon | 3 deployments: polygon [`0x57bc5f...83fb36`](./contracts/polygon-137/0x57bc5f620bde757c0a81350d21489dab1783fb36/); polygon `0x62f594...9658a7`; polygon `0x8d5460...5b9716` | ⚠️ Unaudited |
| DebtToken | token | base | [`0xc19669...be57f5`](./contracts/base-8453/0xc19669a405067927865b40ea045a2baabbbe57f5/) | ⚠️ Unaudited |
| UniV3Vault2 | core_logic | arbitrum | 7 deployments: arbitrum [`0x17831b...5053fd`](./contracts/arbitrum-42161/0x17831b2d149bd43fbde0eb1b727f86abbd5053fd/); arbitrum `0x4cbdd5...d0f35e`; arbitrum `0x505a98...29be7a`; arbitrum `0x6c7e1c...13d6d1`; arbitrum `0x9c9790...45b1d4`; arbitrum `0xb33775...203e00`; arbitrum `0xb5a3e0...b7edf1` | ⚠️ Unaudited |
| SmartVaultPSM | core_logic | arbitrum | 6 deployments: arbitrum [`0x07fd08...cd9e95`](./contracts/arbitrum-42161/0x07fd08a906f84d364969a36016e8762b30cd9e95/); arbitrum `0x202d1d...39106b`; arbitrum `0x48e897...9484c9`; arbitrum `0x714c93...54690a`; arbitrum `0xb60c7b...c0eb9c`; arbitrum `0xbd4264...a491e9` | ⚠️ Unaudited |
| AMOVault | core_logic | base | 4 deployments: base [`0x297e37...1dffb0`](./contracts/base-8453/0x297e37aaabf57ebe0260476a2a1d70baa61dffb0/); base `0x56c55f...7651bd`; base `0x6179ea...978f1a`; base `0xe6612d...b29dec` | ⚠️ Unaudited |
| ChronosStaker | core_logic | arbitrum | 5 deployments: arbitrum [`0x358fde...7bcaa5`](./contracts/arbitrum-42161/0x358fde431270a733f5f9081aabf0fb89ff7bcaa5/); arbitrum `0x3c66be...d476ca`; arbitrum `0x3e015b...03f4e5`; arbitrum `0x68d4a4...8280b6`; arbitrum `0xfea290...061097` | ⚠️ Unaudited |
| SterlingStaker | core_logic | arbitrum | [`0x3b443e...1873d4`](./contracts/arbitrum-42161/0x3b443e9b9b7f340c7b1417abfdc64132341873d4/) | ⚠️ Unaudited |
| ArbiUniV3Vault | core_logic | arbitrum | 13 deployments: arbitrum [`0x015a5c...06d03a`](./contracts/arbitrum-42161/0x015a5cbe56c5648cec39a236d695a0661006d03a/); arbitrum `0x1265bf...25f60f`; arbitrum `0x275523...bf0492`; arbitrum `0x326924...bcafb3`; arbitrum `0x4e9bca...16ab39`; arbitrum `0x67da0f...5b9706`; arbitrum `0x73fdc5...6637af`; arbitrum `0xc40230...ef4651`; arbitrum `0xdf0da3...6f2211`; arbitrum `0xe15ea4...22940a`; arbitrum `0xe8be72...7eea7b`; arbitrum `0xf3cb6e...0b580d`; arbitrum `0xfa50f7...8d533c` | ⚠️ Unaudited |
| SolidLizardStaker | core_logic | arbitrum | 6 deployments: arbitrum [`0x001e0c...60c123`](./contracts/arbitrum-42161/0x001e0ca2066c12a722bbc4d293abda3fdb60c123/); arbitrum `0x5910a1...7424fa`; arbitrum `0x5e14aa...1fa4a3`; arbitrum `0xab6058...0e5a2c`; arbitrum `0xb0f073...0d4157`; arbitrum `0xcc6305...edeb21` | ⚠️ Unaudited |
| StrategyRebalanceStakerChronosV3 | core_logic | arbitrum | 20 deployments: arbitrum [`0x090521...00629b`](./contracts/arbitrum-42161/0x0905219237187a3573ce6115a8b251ae8e00629b/); arbitrum `0x14a0f2...509726`; arbitrum `0x24a3a7...1cf755`; arbitrum `0x3b23ef...a843f3`; arbitrum `0x3eb869...0fcdf1`; arbitrum `0x445dfe...b1780f`; arbitrum `0x5ac871...d26b35`; arbitrum `0x5ac9da...e99b84`; arbitrum `0x66d199...964ea3`; arbitrum `0x746c53...09942d`; arbitrum `0x80ea4e...ab3f2f`; arbitrum `0x84ec91...8198cc`; arbitrum `0x91e459...b160bb`; arbitrum `0xb04922...dc6e72`; arbitrum `0xb6d142...dfe733`; arbitrum `0xbd9c12...3ebd34`; arbitrum `0xc12874...1212a8`; arbitrum `0xcb2aa7...0a3274`; arbitrum `0xce859b...c1c0f7`; arbitrum `0xef4c2d...ec48bd` | ⚠️ Unaudited |
| StrategyUniV3Staker | core_logic | arbitrum | 22 deployments: arbitrum [`0x0be172...8ceaa7`](./contracts/arbitrum-42161/0x0be172fdc1001998107e474478a6377b728ceaa7/); arbitrum `0x19b323...c3989e`; arbitrum `0x1e0653...e04ad6`; arbitrum `0x297817...0d0a58`; arbitrum `0x556135...076344`; arbitrum `0x64ebdc...732239`; arbitrum `0x75cb55...d2b286`; arbitrum `0x79d920...e089dc`; arbitrum `0x917365...860ff4`; arbitrum `0x987c77...8ae33e`; arbitrum `0x991b73...e4d5dc`; arbitrum `0x9d7a8b...2a1e2c`; arbitrum `0xa31d41...78b7c8`; arbitrum `0xbc64d0...e7a807`; arbitrum `0xbc99ea...f631a3`; arbitrum `0xc0df1b...e59abd`; arbitrum `0xdff5fe...e7d016`; arbitrum `0xe1226c...4605ca`; arbitrum `0xe1c568...ada38e`; arbitrum `0xec2746...20f02c`; arbitrum `0xf4cfbe...d4eb35`; arbitrum `0xfd0ffa...62144d` | ⚠️ Unaudited |
| GlacierStaker | core_logic | avalanche | [`0xe98786...4a6198`](./contracts/avalanche-43114/0xe98786b94520772dd9efcc670d72939e184a6198/) | ⚠️ Unaudited |
| StrategyCommonSolidlyStakerLP | core_logic | arbitrum | 37 deployments: arbitrum [`0x034d07...2a2e0e`](./contracts/arbitrum-42161/0x034d0797df538847e834c1cb5f632d78642a2e0e/); arbitrum `0x067305...78dad5`; arbitrum `0x11f958...6db978`; arbitrum `0x17b0df...1ecfca`; arbitrum `0x1cc6cc...3d2492`; arbitrum `0x1d61a6...b261c2`; arbitrum `0x208c8f...2e2259`; arbitrum `0x2474df...aebfa8`; arbitrum `0x37d39b...97ff68`; arbitrum `0x471f87...c51c5d`; arbitrum `0x4d6c94...2073ec`; arbitrum `0x5998bc...e4ded2`; arbitrum `0x60528a...8e95c7`; arbitrum `0x67ebd6...e298c3`; arbitrum `0x682e7a...7820c5`; arbitrum `0x694684...530685`; arbitrum `0x699b53...1fe6b3`; arbitrum `0x6bf282...71d89f`; arbitrum `0x707232...c45ff8`; arbitrum `0x7ee987...504e85`; arbitrum `0x7f8fe0...18c854`; arbitrum `0x8e120a...facdff`; arbitrum `0x8fbb97...d2b0f1`; arbitrum `0x990e74...99a756`; arbitrum `0xa4f293...28e4df`; arbitrum `0xabcbf9...248055`; arbitrum `0xaeb883...c2e6ba`; arbitrum `0xb8bd2e...1a09d8`; arbitrum `0xc6b40b...6c9a59`; arbitrum `0xc7953b...3484a7`; arbitrum `0xdf01e6...bd37c8`; arbitrum `0xea51b7...a70c7b`; arbitrum `0xf03fca...57821f`; arbitrum `0xf23c26...0bfc21`; arbitrum `0xf3f41f...a7cef7`; arbitrum `0xf4035b...7db556`; arbitrum `0xf54cca...3e315b` | ⚠️ Unaudited |
| StrategyRebalanceStakerUniV3 | core_logic | arbitrum | 11 deployments: arbitrum [`0x04d9c6...853164`](./contracts/arbitrum-42161/0x04d9c66b4922a4bae4aba29d2f2548a578853164/); arbitrum `0x21c18e...34b291`; arbitrum `0x4458b4...0a45a5`; arbitrum `0x6b2ac6...10e13a`; arbitrum `0x74dc3f...bfb205`; arbitrum `0x9b88f4...c5eea5`; arbitrum `0xaaaf1e...66c18f`; arbitrum `0xb100f3...280d9c`; arbitrum `0xb380f4...df8efa`; arbitrum `0xe9287b...e53903`; arbitrum `0xe98825...12c0db` | ⚠️ Unaudited |
| StrategyCommonSolidlyWrapperStakerLP | core_logic | arbitrum | 4 deployments: arbitrum [`0x034f5a...9b13d4`](./contracts/arbitrum-42161/0x034f5a5c09ef189d4d87714cdb6a222a769b13d4/); arbitrum `0x567be7...b24eeb`; arbitrum `0xa7acc2...10250a`; arbitrum `0xacbb5c...c05941` | ⚠️ Unaudited |
| ChronosV3Vault | core_logic | arbitrum | 14 deployments: arbitrum [`0x0a7c57...17b8e0`](./contracts/arbitrum-42161/0x0a7c57603a97ad803d714377ddfd29bbaf17b8e0/); arbitrum `0x142c77...2ec6e6`; arbitrum `0x59d052...24d163`; arbitrum `0x59f346...01793d`; arbitrum `0x646434...109d56`; arbitrum `0x7b99ba...529aa9`; arbitrum `0x84243d...d521c8`; arbitrum `0xaf974d...119d5c`; arbitrum `0xd0683f...2bedcb`; arbitrum `0xd41606...0d6699`; arbitrum `0xd5d63e...c920d2`; arbitrum `0xe38f02...acdd40`; arbitrum `0xfda663...eaba45`; arbitrum `0xffb16d...a7010b` | ⚠️ Unaudited |
| SmartVault | core_logic | arbitrum | 6 deployments: arbitrum [`0x24da10...b0124e`](./contracts/arbitrum-42161/0x24da10d4d50afb32344c0d30a3f78c688ab0124e/); arbitrum `0x2fcad3...896b1f`; arbitrum `0x373976...e70975`; arbitrum `0x828a88...e0bd5a`; arbitrum `0x89f025...f41a5c`; arbitrum `0xece9ed...e5d446` | ⚠️ Unaudited |
| StrategyCommonSolidlyRewardPoolVaraLP | core_logic | avalanche | 2 deployments: avalanche [`0x001e0c...60c123`](./contracts/avalanche-43114/0x001e0ca2066c12a722bbc4d293abda3fdb60c123/); avalanche `0xcc6305...edeb21` | ⚠️ Unaudited |
| UniV3Vault | core_logic | arbitrum | 10 deployments: arbitrum [`0x0515b3...230037`](./contracts/arbitrum-42161/0x0515b3aebafa40e21a3bc9c71d67e87085230037/); arbitrum `0x0ed126...fcaa7c`; arbitrum `0x1e22a1...93d645`; arbitrum `0x2466b1...4371ad`; arbitrum `0x4ef1e9...bb8b6f`; arbitrum `0x7f336d...45babf`; arbitrum `0x88ee19...388186`; arbitrum `0x892588...eced47`; arbitrum `0x9b5755...75d6eb`; arbitrum `0xc2fc8b...bf3fc4` | ⚠️ Unaudited |
| StrategyGyroWMaticStMatic | core_logic | polygon | 4 deployments: polygon [`0x6995d3...ff7c16`](./contracts/polygon-137/0x6995d358399fc66eeb0f2387259f5dbc3cff7c16/); polygon `0x763bf8...e6d509`; polygon `0xc192cf...6c6084`; polygon `0xd42c4c...ab9c13` | ⚠️ Unaudited |
| StrategyGyroWMaticMaticX | core_logic | polygon | 2 deployments: polygon [`0xb12788...3d8a0b`](./contracts/polygon-137/0xb127886f769deca7f2f40fb99846b069e23d8a0b/); polygon `0xb98697...45d9f0` | ⚠️ Unaudited |
| DysonVault | core_logic | arbitrum | 52 deployments: polygon `0x1c5941...e291cd`; polygon `0x24a01f...b50f8b`; polygon `0x518af7...8f848a`; polygon `0x558f76...23c5ae`; polygon `0x562ebf...f54e30`; polygon `0xa8c7bd...9cb54f`; polygon `0xcfbedd...e2e0e1`; polygon `0xde29f9...501dc6`; polygon `0xe22b32...e6bfdf`; polygon `0xfca64e...6134bf`; arbitrum [`0x00960e...06351a`](./contracts/arbitrum-42161/0x00960e708d86cdba8f9c8e4856f4afd73d06351a/); arbitrum `0x011997...fa8c6c`; arbitrum `0x028097...52b8c0`; arbitrum `0x03736e...ac5ed7`; arbitrum `0x0b9baf...f728b1`; arbitrum `0x1c94ad...1ae11f`; arbitrum `0x1e8e24...21a96c`; arbitrum `0x3572c0...aa000e`; arbitrum `0x400464...74154d`; arbitrum `0x4804d9...8fcfd0`; arbitrum `0x49405a...22a565`; arbitrum `0x4ee15b...cffe46`; arbitrum `0x5f1597...e68260`; arbitrum `0x64398e...a78ce3`; arbitrum `0x691786...0d0195`; arbitrum `0x6f3a40...cd4ae0`; arbitrum `0x6f78f0...f2c473`; arbitrum `0x717d53...d7cb23`; arbitrum `0x8402b5...2452f0`; arbitrum `0x8954dc...81c765`; arbitrum `0x89d509...705ab7`; arbitrum `0x8b1a3f...3c219e`; arbitrum `0x932485...fd1f62`; arbitrum `0xa9878d...8cf4e8`; arbitrum `0xaddb56...d1748a`; arbitrum `0xaed0e3...10ecec`; arbitrum `0xaeddd6...ab6526`; arbitrum `0xb7952f...55759d`; arbitrum `0xc2a16f...b95a59`; arbitrum `0xc6cc60...3b8a8c`; arbitrum `0xc8c8eb...9de0f9`; arbitrum `0xca6696...fafe89`; arbitrum `0xcbde96...c26781`; arbitrum `0xcfacf5...8fc6e7`; arbitrum `0xd08d8d...fe9281`; arbitrum `0xdcffe7...5f6353`; arbitrum `0xe42ea4...7f649d`; arbitrum `0xe5103c...da3f85`; arbitrum `0xe9321c...3e7a92`; arbitrum `0xfd9ab3...feaf9e`; avalanche `0x1d61a6...b261c2`; avalanche `0x7f8fe0...18c854` | ⚠️ Unaudited |
| Aave3StrategyV2 | core_logic | arbitrum | 17 deployments: polygon `0x8105fc...3242d8`; polygon `0x82cd73...62aff5`; polygon `0xdc4552...e94ebd`; arbitrum [`0x07b14d...73f79d`](./contracts/arbitrum-42161/0x07b14d2c829908acf446d9485448fa65e173f79d/); arbitrum `0x08e983...7a4f90`; arbitrum `0x2ba650...9ceb8c`; arbitrum `0x486e5e...c048b0`; arbitrum `0x70407d...028c33`; arbitrum `0x71d299...d03b0c`; arbitrum `0x7ea0e9...bfd850`; arbitrum `0x8ad155...5a3169`; arbitrum `0xa2ce28...fe9086`; arbitrum `0xbd1ff6...81faee`; arbitrum `0xd992ea...91543f`; arbitrum `0xe01918...fe049a`; arbitrum `0xf64e65...4b0ac0`; arbitrum `0xfc5861...c190a6` | ⚠️ Unaudited |
| ActivePool | core_logic | base | 2 deployments: base [`0x3c4863...90dd04`](./contracts/base-8453/0x3c4863670b76d18aaeac8b0c399e5fb71190dd04/); base `0x47dd0f...1d2c16` | ⚠️ Unaudited |
| AdminContract | governance | base | 2 deployments: base [`0x6e406d...1349ed`](./contracts/base-8453/0x6e406d5bceddfc1e5417afd9292cf2ec1c1349ed/); base `0xbb3d55...bd1858` | ⚠️ Unaudited |
| AerodromeAMOStrategy | core_logic | base | [`0xefaa59...e31a04`](./contracts/base-8453/0xefaa597277ce531e52018d42224ab579bbe31a04/) | ⚠️ Unaudited |
| AirDrop | operational_periphery | polygon | [`0xa0d29d...0da170`](./contracts/polygon-137/0xa0d29d57a6627d8d20711db9423920cada0da170/) | ⚠️ Unaudited |
| AlgebraV3Rebalancer | adapter | arbitrum | [`0x69f121...5f17b2`](./contracts/arbitrum-42161/0x69f121351e406886f8890ed5a9ec8c0b615f17b2/) | ⚠️ Unaudited |
| AstroSettings | unknown | avalanche | [`0xa1255d...2db185`](./contracts/avalanche-43114/0xa1255d4dc1f65a864662310efb4dbe4eba2db185/) | ⚠️ Unaudited |
| AstroTimelockController | governance | avalanche | [`0x2466b1...4371ad`](./contracts/avalanche-43114/0x2466b112dde137ac522e6f2951ad598c4e4371ad/) | ⚠️ Unaudited |
| AstroToken | token | avalanche | 2 deployments: avalanche [`0x0bffa0...901e41`](./contracts/avalanche-43114/0x0bffa02b1bd38fbfb6bf63ce8d70dee86e901e41/); avalanche `0xfd1f19...8221d0` | ⚠️ Unaudited |
| AuraSrcSwapper | adapter | polygon | [`0x4ece69...e6e451`](./contracts/polygon-137/0x4ece69127652180eacecfaacfb1d10835ee6e451/) | ⚠️ Unaudited |
| BalancerComposableStablePoolPriceOracle | operational_periphery | polygon | [`0x135e25...686e38`](./contracts/polygon-137/0x135e252ae9eb354892cffa01b5e69cc1db686e38/) | ⚠️ Unaudited |
| BaseRewardPool4626 | core_logic | polygon | [`0x39ee6f...abd2c6`](./contracts/polygon-137/0x39ee6fb813052e67260a3f95d3739b336aabd2c6/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | base | 2 deployments: base [`0x73aa01...d7b399`](./contracts/base-8453/0x73aa010e4141d7981444b36e2f31cc6c24d7b399/); base `0xbffc68...944b2d` | ⚠️ Unaudited |
| ChainlinkManager | governance | polygon | 4 deployments: polygon [`0x49f5fc...54688e`](./contracts/polygon-137/0x49f5fcd49858c096f06361ae72ed8d882854688e/); polygon `0x79dcb8...d1e9fd`; polygon `0x9d84b9...cd1d9b`; polygon `0xda94c1...d53b64` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | base | 2 deployments: base [`0x9d012a...2cf1c6`](./contracts/base-8453/0x9d012a241f25da2ed2d0afd148725a2a742cf1c6/); base `0xfb9fdb...7c05fb` | ⚠️ Unaudited |
| CompensationLaunchPool | core_logic | polygon | [`0xfe28da...d2ab2f`](./contracts/polygon-137/0xfe28da33c260023356d3c5d2fe86134811d2ab2f/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | polygon | [`0xcd78a2...4d7c8f`](./contracts/polygon-137/0xcd78a20c597e367a4e478a2411ceb790604d7c8f/) | ⚠️ Unaudited |
| ControlledTokenBuilder | token | polygon | 6 deployments: polygon [`0x3b443e...1873d4`](./contracts/polygon-137/0x3b443e9b9b7f340c7b1417abfdc64132341873d4/); polygon `0x440245...1e3b1f`; polygon `0x45d4d2...1cfd26`; polygon `0x8a9287...04caaf`; polygon `0xce9667...fb3a0e`; polygon `0xfaa17c...c17b6f` | ⚠️ Unaudited |
| ControlledTokenProxyFactory | registry | polygon | 7 deployments: polygon [`0x01726c...ff256a`](./contracts/polygon-137/0x01726c732d7e2687f8a1cce33d5ae6696eff256a/); polygon `0x45802b...761f1f`; polygon `0x4866ad...983cd2`; polygon `0x76d4af...194f6e`; polygon `0x9fc545...b8a70c`; polygon `0xa9f6a3...d2d5e5`; polygon `0xe787d1...7e6c2b` | ⚠️ Unaudited |
| ControllerV7 | governance | arbitrum | 5 deployments: arbitrum [`0x167752...d7c6a1`](./contracts/arbitrum-42161/0x16775222977bf3ea9022b6f150d45aaa35d7c6a1/); arbitrum `0x50a70e...338a9a`; arbitrum `0x850aa8...e41a8a`; arbitrum `0xe3581b...644e2a`; arbitrum `0xf40558...f6c2bf` | ⚠️ Unaudited |
| DefaultPool | core_logic | base | 2 deployments: base [`0x0b2129...7b65e9`](./contracts/base-8453/0x0b2129e4f27c1496b72855dc20a88fc3957b65e9/); base `0x2f79ad...224287` | ⚠️ Unaudited |
| Deployer | unknown | polygon | 4 deployments: polygon [`0x20b559...7f4b10`](./contracts/polygon-137/0x20b5590575a79e00f1dbdcc48d89c865837f4b10/); polygon `0x2fca8c...2b1a06`; polygon `0x83d6c4...db254a`; polygon `0x85911c...be17d6` | ⚠️ Unaudited |
| DysonGetter | unknown | arbitrum | 2 deployments: arbitrum [`0x082e31...b56cdd`](./contracts/arbitrum-42161/0x082e3129e88c12b62da1d7301f5f74157bb56cdd/); arbitrum `0x5dff97...04f6b7` | ⚠️ Unaudited |
| DysonLpOracle | operational_periphery | polygon | 7 deployments: polygon [`0x152fbf...f90b80`](./contracts/polygon-137/0x152fbf6f6447dd5f99cfc0c6e44b1344f4f90b80/); polygon `0x541a36...bc338e`; polygon `0x692d0e...8b6ad5`; polygon `0x73e40a...56f4a6`; polygon `0x742d54...1179c8`; polygon `0x8e3b16...57b040`; polygon `0xecb0a6...44d096` | ⚠️ Unaudited |
| DysonVaultTreasury | operational_periphery | polygon | 2 deployments: polygon [`0x8ec491...ea0061`](./contracts/polygon-137/0x8ec4913a83ddbe2ebfa79a92d8fa28f500ea0061/); polygon `0xdbcf0d...b8c0d9` | ⚠️ Unaudited |
| DystopiaLens | periphery | polygon | [`0xd918ee...45a02b`](./contracts/polygon-137/0xd918ee56e167a298c298982e6308840f4045a02b/) | ⚠️ Unaudited |
| FairLaunchPool | core_logic | polygon | 5 deployments: polygon [`0x00960e...06351a`](./contracts/polygon-137/0x00960e708d86cdba8f9c8e4856f4afd73d06351a/); polygon `0x171241...6348f3`; polygon `0xbe0e1e...0786a3`; polygon `0xd499f4...fdc6ad`; polygon `0xf87dca...276571` | ⚠️ Unaudited |
| FeeCollector | unknown | base | 2 deployments: base [`0x8e6dd2...cb73cf`](./contracts/base-8453/0x8e6dd2eee506d707505376b611e64978bacb73cf/); base `0xe7367a...5d0f43` | ⚠️ Unaudited |
| FlairStaker | core_logic | avalanche | [`0xe5b584...246c6e`](./contracts/avalanche-43114/0xe5b584f5f8b2872202433d56299e3867ba246c6e/) | ⚠️ Unaudited |
| GasPool | core_logic | base | [`0x2d450b...5a741f`](./contracts/base-8453/0x2d450b96abe5de161e1780c08af55b2d3a5a741f/) | ⚠️ Unaudited |
| GyroECLPOracle | operational_periphery | polygon | 3 deployments: polygon [`0x4e7845...75e200`](./contracts/polygon-137/0x4e78453e2540e996a6cd9ddf1649a7694b75e200/); polygon `0x571d19...6b717b`; polygon `0x7cc8f5...9c9195` | ⚠️ Unaudited |
| IchiVaultOracle | operational_periphery | polygon | 7 deployments: polygon [`0x05b0bd...3b1d65`](./contracts/polygon-137/0x05b0bd6242743033c4b8d8726ca46b2ee33b1d65/); polygon `0x1a5613...f175b8`; polygon `0x699e38...53f44c`; polygon `0xa8fc6e...091e1c`; polygon `0xbb3dc7...bba5f6`; polygon `0xde71c1...cf12a3`; polygon `0xdecaae...397289` | ⚠️ Unaudited |
| MintChecker | unknown | arbitrum | 4 deployments: arbitrum [`0x706b81...be477a`](./contracts/arbitrum-42161/0x706b816b5ddf3e62e0e2737693827d4a5cbe477a/); arbitrum `0x9a96c6...01ea6c`; arbitrum `0xcd47db...027a12`; arbitrum `0xeb188b...d57a6e` | ⚠️ Unaudited |
| MultipleWinnersBuilder | unknown | polygon | 2 deployments: polygon [`0x0cf306...7845f7`](./contracts/polygon-137/0x0cf306ae637c16aa97d44c73ae000056117845f7/); polygon `0x102347...e48dd1` | ⚠️ Unaudited |
| MultipleWinnersProxyFactory | registry | polygon | 3 deployments: polygon [`0x2a71d8...3f38a2`](./contracts/polygon-137/0x2a71d8f8d46f5f7d115b7038680fc1e1563f38a2/); polygon `0x988ebe...d3271a`; polygon `0xeb2d34...c75727` | ⚠️ Unaudited |
| MultiRewards | unknown | polygon | [`0x43f075...aa6b51`](./contracts/polygon-137/0x43f075372426987ebb52f794e6d47b56d8aa6b51/) | ⚠️ Unaudited |
| MultiVesselGetter | unknown | base | [`0xebd48e...21a8d1`](./contracts/base-8453/0xebd48e5d8f0578128f4e25d88ff983d10e21a8d1/) | ⚠️ Unaudited |
| PartnersRewards | unknown | polygon | [`0x73625a...f82306`](./contracts/polygon-137/0x73625a384b05e1e8d2c8a40599eae6c788f82306/) | ⚠️ Unaudited |
| Pen | unknown | polygon | [`0x9008d7...891a97`](./contracts/polygon-137/0x9008d70a5282a936552593f410abcbce2f891a97/) | ⚠️ Unaudited |
| PenDyst | unknown | polygon | 2 deployments: polygon [`0x2d0c50...d1989c`](./contracts/polygon-137/0x2d0c506b72b3041824b1e2f3cfb9f06eb3d1989c/); polygon `0x6595a2...d9f385` | ⚠️ Unaudited |
| PenDystRewards | unknown | polygon | [`0x68c08a...fdd912`](./contracts/polygon-137/0x68c08ac637fcac8e63060aaca89dba4c32fdd912/) | ⚠️ Unaudited |
| PenLens | periphery | polygon | [`0xfd3d57...901f33`](./contracts/polygon-137/0xfd3d5747ee99b7cbadd9acc67c1ab2d01a901f33/) | ⚠️ Unaudited |
| PenLockerV2 | unknown | polygon | [`0x873d8b...3f8e59`](./contracts/polygon-137/0x873d8beb7dd53c2f44ea35ba38eda2316e3f8e59/) | ⚠️ Unaudited |
| PenPool | core_logic | polygon | [`0x2afc29...518437`](./contracts/polygon-137/0x2afc299c1b911d504062555a19b9327ad2518437/) | ⚠️ Unaudited |
| PenPoolFactory | registry | polygon | [`0xd6d61e...7f4d42`](./contracts/polygon-137/0xd6d61eac8e0fc123c5eda4bf31d834a34c7f4d42/) | ⚠️ Unaudited |
| PenPoolProxyTemplate | core_logic | polygon | [`0xbfcb71...a388a5`](./contracts/polygon-137/0xbfcb7128b5cef9566843849ecd7183cd86a388a5/) | ⚠️ Unaudited |
| PenroseDeployer | unknown | polygon | 3 deployments: polygon [`0x83d62d...d05852`](./contracts/polygon-137/0x83d62d36fd98331abc322c9d5726b549bed05852/); polygon `0x8f1389...285685`; polygon `0xe5e882...18ff73` | ⚠️ Unaudited |
| PenroseZapper | adapter | polygon | 6 deployments: polygon [`0x055fd5...783178`](./contracts/polygon-137/0x055fd5072d92c8c42126de238563e57747783178/); polygon `0x213677...80708e`; polygon `0x44c8ee...d8f47c`; polygon `0x4c5ae7...28b13d`; polygon `0x5af8f8...5f9482`; polygon `0xfbc779...aa37f0` | ⚠️ Unaudited |
| PoolWithMultipleWinnersBuilder | core_logic | polygon | 2 deployments: polygon [`0x579ba9...a8a9c1`](./contracts/polygon-137/0x579ba9b6aae05d3600e2a9505cfba16c4aa8a9c1/); polygon `0xbecb63...294bb2` | ⚠️ Unaudited |
| PreonController | governance | arbitrum | 25 deployments: arbitrum [`0x058b9c...a27219`](./contracts/arbitrum-42161/0x058b9c4098acdf123041a1d8532815afa2a27219/); arbitrum `0x1e9432...c00900`; arbitrum `0x235751...ede2c3`; arbitrum `0x256463...251c21`; arbitrum `0x27387b...f9d062`; arbitrum `0x3b41c1...0d8419`; arbitrum `0x3fda70...43ec2c`; arbitrum `0x43f7f7...ff5805`; arbitrum `0x46715e...bf5a19`; arbitrum `0x532505...3af2fe`; arbitrum `0x57b954...a50e28`; arbitrum `0x6a2575...36289d`; arbitrum `0x7afde9...1066f8`; arbitrum `0x851692...c30204`; arbitrum `0x86e582...58d1ac`; arbitrum `0x8ce85d...71c9cf`; arbitrum `0x92979d...a6d656`; arbitrum `0x9e1ce6...8ad98d`; arbitrum `0xab5334...f67488`; arbitrum `0xbe34f5...de7e1c`; arbitrum `0xca077b...8ccef5`; arbitrum `0xdd8968...f61a04`; arbitrum `0xeb2d34...c75727`; arbitrum `0xefae58...bea397`; arbitrum `0xfcf10a...657c49` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | base | 2 deployments: base [`0x406b94...fb3d0d`](./contracts/base-8453/0x406b944401f4e097f2d0241f2cf596141efb3d0d/); base `0xb846be...0ff522` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 12 deployments: polygon `0x6a8215...0ff84d`; polygon `0xb8a2af...43f68c`; polygon `0xf77ee8...0db002`; base [`0x0b5e77...44c5f4`](./contracts/base-8453/0x0b5e7775856c4e240ae46704178d96fab244c5f4/); base `0x0f2b0a...35b692`; base `0x446bee...61039d`; base `0x8937bc...4551ce`; base `0xb62ada...99803c`; base `0xb783f0...b2b1ab`; arbitrum `0xeffe5c...d3599d`; avalanche `0x197a08...6f77f4`; avalanche `0x7fc0b0...53d480` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | polygon | 10 deployments: polygon [`0x00dead...aa9e20`](./contracts/polygon-137/0x00dead8d27e0fe039ad92eb8768c8ebb0faa9e20/); polygon `0x1191d5...349c14`; polygon `0x83e738...a3e17b`; polygon `0xd23d2d...921c32`; base `0x1a566e...e79193`; base `0x3f6ce2...d6b2fb`; base `0x6c91d2...a159f6`; base `0xa94aa0...b92cd8`; base `0xc6adec...f00bec`; base `0xc98d07...fec1c3` | ⚠️ Unaudited |
| SortedVessels | unknown | base | 2 deployments: base [`0x576e43...251a3f`](./contracts/base-8453/0x576e43660cd804f74573de9d4b26b3752e251a3f/); base `0xa0d1fc...dec2a5` | ⚠️ Unaudited |
| SphereFairLaunch | unknown | polygon | [`0x7e96bb...b14277`](./contracts/polygon-137/0x7e96bbeb1c13978f7fe5c50ae1e332148bb14277/) | ⚠️ Unaudited |
| SphereTreasury | operational_periphery | polygon | [`0xc747db...ec46a3`](./contracts/polygon-137/0xc747db6ebd5dfc93c7d2f4af208a9618beec46a3/) | ⚠️ Unaudited |
| SphereZap | adapter | polygon | [`0x5c8803...b2889d`](./contracts/polygon-137/0x5c8803c06aa6e4ba2a26c890d022a7a2f3b2889d/) | ⚠️ Unaudited |
| StabilityPool | core_logic | base | 2 deployments: base [`0x09daf5...322652`](./contracts/base-8453/0x09daf529d20dfbde28a82dcfa51115c4eb322652/); base `0x6afa83...fbfb52` | ⚠️ Unaudited |
| StakePrizePoolProxyFactory | registry | polygon | 7 deployments: polygon [`0x041f52...6b6c57`](./contracts/polygon-137/0x041f52c47b1f6a69c218b11e6af08463126b6c57/); polygon `0x0a9b2d...778908`; polygon `0x0daa6c...4c336d`; polygon `0x35706c...6e7d04`; polygon `0x4550ec...26ff63`; polygon `0x5e5c0c...d41690`; polygon `0x6b2c13...49eb2c` | ⚠️ Unaudited |
| StrategyAuraMaticxWmaticTreasury | operational_periphery | polygon | 5 deployments: polygon [`0x67f9ea...7ba530`](./contracts/polygon-137/0x67f9ea7675773026706d5b817ad9aecb1a7ba530/); polygon `0x6f557f...858273`; polygon `0x74c1f0...aa2f77`; polygon `0xc2cbda...d0fc13`; polygon `0xda68ca...1feda9` | ⚠️ Unaudited |
| StrategyCap | core_logic | arbitrum | 5 deployments: arbitrum [`0x8742f3...1839a2`](./contracts/arbitrum-42161/0x8742f36b4c689915b507e08f81ecaa91021839a2/); arbitrum `0x944dc5...6d0fbd`; arbitrum `0xbf5344...fffc10`; arbitrum `0xd5579a...a6dda0`; arbitrum `0xe4711d...d638f0` | ⚠️ Unaudited |
| StrategyCurveConvexL2 | core_logic | polygon | 4 deployments: polygon [`0x0b75ff...a2569f`](./contracts/polygon-137/0x0b75ffd4d924dd049e772e8cea37e80fc0a2569f/); polygon `0x78cb72...79ab3c`; polygon `0xa2b190...260b86`; polygon `0xdfc689...42c493` | ⚠️ Unaudited |
| StrategySplitter | operational_periphery | polygon | 4 deployments: polygon [`0x45ba05...ecfb83`](./contracts/polygon-137/0x45ba0517a676f2fe57161b6d7d205bfdc4ecfb83/); polygon `0xa071e7...d3bb7e`; polygon `0xe89853...330d2a`; arbitrum `0x58f046...d63eeb` | ⚠️ Unaudited |
| TicketProxyFactory | registry | polygon | 3 deployments: polygon [`0x5a4798...bf4352`](./contracts/polygon-137/0x5a47983d9aa688e041a3a793ac6be12513bf4352/); polygon `0xa73e3e...f2c5d8`; polygon `0xf48bab...9995d5` | ⚠️ Unaudited |
| Timelock | governance | base | 2 deployments: base [`0x25f110...8aca8a`](./contracts/base-8453/0x25f110699fe8360c98a48a2cc42c3732328aca8a/); base `0x3f00fe...fb0fc9` | ⚠️ Unaudited |
| TokenFaucetProxyFactory | registry | polygon | 8 deployments: polygon [`0x0d9e1b...447f79`](./contracts/polygon-137/0x0d9e1b6fee7cc44475dadddcc2d46d2897447f79/); polygon `0x3cc82e...42098c`; polygon `0x69987d...a5855f`; polygon `0x8585c9...3c562a`; polygon `0x88ee2b...6453d8`; polygon `0x89e884...3cb4ce`; polygon `0xdcf2a7...cb7642`; polygon `0xedc0dc...146f99` | ⚠️ Unaudited |
| TokensAllowlist | token | polygon | [`0xb5a4a9...ad69a1`](./contracts/polygon-137/0xb5a4a9fc3e1834450eb2848636d3d9cde9ad69a1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 24 deployments: polygon [`0x0ded65...39dff7`](./contracts/polygon-137/0x0ded65f164b50249496903873e950814e439dff7/); polygon `0x5949ab...3d1a6c`; polygon `0x6fe156...093b30`; polygon `0xacd84f...ab3da7`; polygon `0xbfdb61...f41bb0`; base `0xe1fbf5...60ffb1`; base `0xf910ac...389719`; arbitrum `0x0f59c8...e14ae2`; arbitrum `0x2e62d3...9969d6`; arbitrum `0x3b7bee...856178`; arbitrum `0x445bf4...b22779`; arbitrum `0x45d4d2...1cfd26`; arbitrum `0x489e54...50b5be`; arbitrum `0x780e6d...add153`; arbitrum `0x951966...d49241`; arbitrum `0x9a56f8...f869d8`; arbitrum `0xb33975...6e366b`; arbitrum `0xcd7e3b...ec239c`; arbitrum `0xd0b634...a22ab1`; arbitrum `0xd74874...4f1063`; arbitrum `0xdedc0d...0fdf0b`; arbitrum `0xf3e362...b97025`; arbitrum `0xfb1e5a...db947a`; avalanche `0x884414...b2460f` | ⚠️ Unaudited |
| UniV3Rebalancer | adapter | arbitrum | 3 deployments: arbitrum [`0x2f43af...3f8569`](./contracts/arbitrum-42161/0x2f43afa87cfa4742d237a79ec3ee6d24fa3f8569/); arbitrum `0x70e59f...a00b9e`; arbitrum `0x97472a...74c732` | ⚠️ Unaudited |
| UniV3WrappedLib | unknown | polygon | [`0x79b1dd...0de52a`](./contracts/polygon-137/0x79b1dd1b95952402f7ee9f3578b2c10b560de52a/) | ⚠️ Unaudited |
| UserProxyFactory | registry | polygon | [`0x9b3c6c...39d871`](./contracts/polygon-137/0x9b3c6c7c174065e364a617f7e3f585db8539d871/) | ⚠️ Unaudited |
| UserProxyInterface | unknown | polygon | 3 deployments: polygon [`0x4e4de8...a1451e`](./contracts/polygon-137/0x4e4de8594ad39cd21971775504702d4b00a1451e/); polygon `0x9a2908...475301`; polygon `0xd36181...b1cb71` | ⚠️ Unaudited |
| UserProxyLpInteractions | unknown | polygon | [`0x3d30af...fe4d7c`](./contracts/polygon-137/0x3d30afdb7f17dd77f37fe5d4bc3d60bdd4fe4d7c/) | ⚠️ Unaudited |
| UserProxyNftInteractions | token | polygon | [`0x5a1fa2...5684f2`](./contracts/polygon-137/0x5a1fa2851bcf42555b701bef1536b1e7025684f2/) | ⚠️ Unaudited |
| UserProxyTemplate | unknown | polygon | [`0x5b0953...d45364`](./contracts/polygon-137/0x5b095392513167293f21a6b375ff51d4ccd45364/) | ⚠️ Unaudited |
| UserProxyVotingInteractions | unknown | polygon | [`0x6186d8...b5e075`](./contracts/polygon-137/0x6186d801d52dbeb5d653215a9c2d6f443ab5e075/) | ⚠️ Unaudited |
| VaultLibrary | core_logic | arbitrum | 4 deployments: arbitrum [`0x7f0b8d...812e68`](./contracts/arbitrum-42161/0x7f0b8db79bf4077b1d2a61726a059e8f43812e68/); arbitrum `0xa3f861...a36557`; arbitrum `0xbecb63...294bb2`; arbitrum `0xc92201...caf080` | ⚠️ Unaudited |
| VesselManager | governance | base | 2 deployments: base [`0x1f17fe...b1bef2`](./contracts/base-8453/0x1f17fe8aeb6036a4a342b3542d5fcc6b83b1bef2/); base `0x5208c0...ccdfc5` | ⚠️ Unaudited |
| VesselManagerOperations | governance | base | 2 deployments: base [`0x7a004e...e6af04`](./contracts/base-8453/0x7a004e02177da08df4e4eec15a0f75fb5de6af04/); base `0xcf9a7b...c9cb4a` | ⚠️ Unaudited |
| VoterProxy | unknown | polygon | 7 deployments: polygon [`0x25f293...0a5986`](./contracts/polygon-137/0x25f293d3e8e13a730d5aea96b7716970a40a5986/); polygon `0x30333d...25c5d7`; polygon `0x319f68...9369bc`; polygon `0x9ec307...e626b8`; polygon `0xadf5b2...c0e26f`; polygon `0xb4df4e...c853b1`; polygon `0xe35076...74ee5e` | ⚠️ Unaudited |
| VoterProxyAssets | unknown | polygon | 2 deployments: polygon [`0x2a6802...73738b`](./contracts/polygon-137/0x2a6802e38a7d372b3219b22d7005dfdd1073738b/); polygon `0xb2f5e5...e1560d` | ⚠️ Unaudited |
| VotingSnapshot | unknown | polygon | 9 deployments: polygon [`0x22f5a1...f6c1e5`](./contracts/polygon-137/0x22f5a1ec5aa6ccf02fd3cc13a56044a6d9f6c1e5/); polygon `0x473195...f52902`; polygon `0x4fca08...37c428`; polygon `0x59871e...e2f36e`; polygon `0x5eeb6f...499301`; polygon `0xac4615...f192fd`; polygon `0xb5e0ee...b3db98`; polygon `0xf0aff4...91cf5e`; polygon `0xfa9fe8...cb3ed1` | ⚠️ Unaudited |
| wSPHEREERC20 | token | polygon | [`0x991b73...e4d5dc`](./contracts/polygon-137/0x991b73fb44a6b618efbf3403924c09530ee4d5dc/) | ⚠️ Unaudited |
| YieldSourcePrizePoolProxyFactory | registry | polygon | 7 deployments: polygon [`0x0d5956...bc108f`](./contracts/polygon-137/0x0d59561576a0759cbdb46093248c1e8d17bc108f/); polygon `0x440465...d2207c`; polygon `0x4b01f3...a6d9d8`; polygon `0x532505...3af2fe`; polygon `0x750d37...d6cd64`; polygon `0xed12da...ec6361`; polygon `0xedd95f...35d104` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | `0x006d19...4bf5b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x016e14...eef329` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0266cf...94e82e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x04f5cb...a183cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x08df3d...3c6caa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x12425b...eae0ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x13f255...ed810a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1406d6...71d6ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19eb8b...1cc37f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1cd1be...39035c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1e8e24...21a96c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x277a4f...f4ded3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x313cd0...166be9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x363381...e29f01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37d30c...f1e66d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x380149...330ea5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x38f6ee...a0e20f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3f9319...1f3904` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x496d8c...76cf12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4d9f83...322b27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x541ade...685451` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x59d052...24d163` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eedf2...f44ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x622dca...331abe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x64e678...40c6ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x691289...1a9cdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6a2028...635dcb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x75a9c2...90307b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x777619...9cd90b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8473db...718011` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x87c329...37b135` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8d90da...de0303` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8eb431...53261c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x916ac8...d870cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9210ff...123518` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9320ce...f84bde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9a0466...81b76f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9a56f8...f869d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c8e5f...ece8f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa6d12c...fee3cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa8d16f...aeb8dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa9afb2...1014f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb756ae...afb334` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc6ada0...19a469` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcb4e32...d047fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcbede3...282d8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce9b43...6892c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd3bf31...c52f95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdac020...db20ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe070c4...328a22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe3663a...a8ef62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8b90a...4e5018` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe9b71c...c3ea04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf1d8ae...60d1af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf5fea9...aa6dec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf9c740...318ad1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbc24b...e44b5c` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x489e54...50b5be` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x097fb9...0a28a4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x22a765...95295d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x30c142...8c9f7c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x453463...ca6b9a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x839a33...8ae5c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8af0d9...237e7d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6ed81...2bf668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x022e10...84e7ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x083639...e920dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x087d2a...3a2564` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f3618...a213e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b45f4...e41c41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cd548...f5b4e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e90f9...7b73cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e9185...cfbc9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30ba33...931068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3629d2...353a79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374a77...b87981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x39c05a...d48f49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a7eb0...5199da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3faf0c...944520` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cc374...ead62b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e34ce...223849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5271e8...6fa743` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57466e...5c9995` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d7e2d...c40e5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5f0b50...c6693f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66306e...e7b1d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b2c13...49eb2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72a903...aafa72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x738966...c10ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x74840c...0af104` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7985ed...9e9dba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x805198...3efe5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8bcb39...d9a4fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8fc46b...0b1705` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x956388...d15efd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a404a...4bf69b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa69194...ec8b53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa7f893...360145` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbc6415...9c24ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcda720...4f960d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe13b44...36d724` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe65e5d...b8627d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe7a6ec...c947ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf48e9d...d20f12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf96301...0cfdc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb315a...8f04e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd4473...9b624f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcfeeb2...c75fd6` | ❓ Unverified |

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
| arbitrum | [`0x1ec20c...356998`](./contracts/arbitrum-42161/0x1ec20cd5d6396ac5956ddb18aa469fe17d356998/) | SmartVaultActivePool | core_logic | $169,771.92 | Verified native implementation with $169,771.92 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x57bc5f...83fb36`](./contracts/polygon-137/0x57bc5f620bde757c0a81350d21489dab1783fb36/) | SphereToken | token | $51,364.31 | Verified native implementation with $51,364.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc19669...be57f5`](./contracts/base-8453/0xc19669a405067927865b40ea045a2baabbbe57f5/) | DebtToken | token | $39,707.95 | Verified native implementation with $39,707.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x358fde...7bcaa5`](./contracts/arbitrum-42161/0x358fde431270a733f5f9081aabf0fb89ff7bcaa5/) | ChronosStaker | core_logic | $486.96 | Verified native implementation with $486.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x015a5c...06d03a`](./contracts/arbitrum-42161/0x015a5cbe56c5648cec39a236d695a0661006d03a/) | ArbiUniV3Vault | core_logic | $36.68 | Verified native implementation with $36.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0be172...8ceaa7`](./contracts/arbitrum-42161/0x0be172fdc1001998107e474478a6377b728ceaa7/) | StrategyUniV3Staker | core_logic | $17.21 | Verified native implementation with $17.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x001e0c...60c123`](./contracts/avalanche-43114/0x001e0ca2066c12a722bbc4d293abda3fdb60c123/) | StrategyCommonSolidlyRewardPoolVaraLP | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0d29d...0da170`](./contracts/polygon-137/0xa0d29d57a6627d8d20711db9423920cada0da170/) | AirDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa1255d...2db185`](./contracts/avalanche-43114/0xa1255d4dc1f65a864662310efb4dbe4eba2db185/) | AstroSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2466b1...4371ad`](./contracts/avalanche-43114/0x2466b112dde137ac522e6f2951ad598c4e4371ad/) | AstroTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39ee6f...abd2c6`](./contracts/polygon-137/0x39ee6fb813052e67260a3f95d3739b336aabd2c6/) | BaseRewardPool4626 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x73aa01...d7b399`](./contracts/base-8453/0x73aa010e4141d7981444b36e2f31cc6c24d7b399/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfe28da...d2ab2f`](./contracts/polygon-137/0xfe28da33c260023356d3c5d2fe86134811d2ab2f/) | CompensationLaunchPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3b443e...1873d4`](./contracts/polygon-137/0x3b443e9b9b7f340c7b1417abfdc64132341873d4/) | ControlledTokenBuilder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01726c...ff256a`](./contracts/polygon-137/0x01726c732d7e2687f8a1cce33d5ae6696eff256a/) | ControlledTokenProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x167752...d7c6a1`](./contracts/arbitrum-42161/0x16775222977bf3ea9022b6f150d45aaa35d7c6a1/) | ControllerV7 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b2129...7b65e9`](./contracts/base-8453/0x0b2129e4f27c1496b72855dc20a88fc3957b65e9/) | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20b559...7f4b10`](./contracts/polygon-137/0x20b5590575a79e00f1dbdcc48d89c865837f4b10/) | Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x082e31...b56cdd`](./contracts/arbitrum-42161/0x082e3129e88c12b62da1d7301f5f74157bb56cdd/) | DysonGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00960e...06351a`](./contracts/polygon-137/0x00960e708d86cdba8f9c8e4856f4afd73d06351a/) | FairLaunchPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e6dd2...cb73cf`](./contracts/base-8453/0x8e6dd2eee506d707505376b611e64978bacb73cf/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d450b...5a741f`](./contracts/base-8453/0x2d450b96abe5de161e1780c08af55b2d3a5a741f/) | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05b0bd...3b1d65`](./contracts/polygon-137/0x05b0bd6242743033c4b8d8726ca46b2ee33b1d65/) | IchiVaultOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0cf306...7845f7`](./contracts/polygon-137/0x0cf306ae637c16aa97d44c73ae000056117845f7/) | MultipleWinnersBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2a71d8...3f38a2`](./contracts/polygon-137/0x2a71d8f8d46f5f7d115b7038680fc1e1563f38a2/) | MultipleWinnersProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x43f075...aa6b51`](./contracts/polygon-137/0x43f075372426987ebb52f794e6d47b56d8aa6b51/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebd48e...21a8d1`](./contracts/base-8453/0xebd48e5d8f0578128f4e25d88ff983d10e21a8d1/) | MultiVesselGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x73625a...f82306`](./contracts/polygon-137/0x73625a384b05e1e8d2c8a40599eae6c788f82306/) | PartnersRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9008d7...891a97`](./contracts/polygon-137/0x9008d70a5282a936552593f410abcbce2f891a97/) | Pen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d0c50...d1989c`](./contracts/polygon-137/0x2d0c506b72b3041824b1e2f3cfb9f06eb3d1989c/) | PenDyst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x68c08a...fdd912`](./contracts/polygon-137/0x68c08ac637fcac8e63060aaca89dba4c32fdd912/) | PenDystRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfd3d57...901f33`](./contracts/polygon-137/0xfd3d5747ee99b7cbadd9acc67c1ab2d01a901f33/) | PenLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x873d8b...3f8e59`](./contracts/polygon-137/0x873d8beb7dd53c2f44ea35ba38eda2316e3f8e59/) | PenLockerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2afc29...518437`](./contracts/polygon-137/0x2afc299c1b911d504062555a19b9327ad2518437/) | PenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd6d61e...7f4d42`](./contracts/polygon-137/0xd6d61eac8e0fc123c5eda4bf31d834a34c7f4d42/) | PenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbfcb71...a388a5`](./contracts/polygon-137/0xbfcb7128b5cef9566843849ecd7183cd86a388a5/) | PenPoolProxyTemplate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x83d62d...d05852`](./contracts/polygon-137/0x83d62d36fd98331abc322c9d5726b549bed05852/) | PenroseDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x055fd5...783178`](./contracts/polygon-137/0x055fd5072d92c8c42126de238563e57747783178/) | PenroseZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x579ba9...a8a9c1`](./contracts/polygon-137/0x579ba9b6aae05d3600e2a9505cfba16c4aa8a9c1/) | PoolWithMultipleWinnersBuilder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00dead...aa9e20`](./contracts/polygon-137/0x00dead8d27e0fe039ad92eb8768c8ebb0faa9e20/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7e96bb...b14277`](./contracts/polygon-137/0x7e96bbeb1c13978f7fe5c50ae1e332148bb14277/) | SphereFairLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc747db...ec46a3`](./contracts/polygon-137/0xc747db6ebd5dfc93c7d2f4af208a9618beec46a3/) | SphereTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5c8803...b2889d`](./contracts/polygon-137/0x5c8803c06aa6e4ba2a26c890d022a7a2f3b2889d/) | SphereZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09daf5...322652`](./contracts/base-8453/0x09daf529d20dfbde28a82dcfa51115c4eb322652/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x041f52...6b6c57`](./contracts/polygon-137/0x041f52c47b1f6a69c218b11e6af08463126b6c57/) | StakePrizePoolProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8742f3...1839a2`](./contracts/arbitrum-42161/0x8742f36b4c689915b507e08f81ecaa91021839a2/) | StrategyCap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x45ba05...ecfb83`](./contracts/polygon-137/0x45ba0517a676f2fe57161b6d7d205bfdc4ecfb83/) | StrategySplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a4798...bf4352`](./contracts/polygon-137/0x5a47983d9aa688e041a3a793ac6be12513bf4352/) | TicketProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25f110...8aca8a`](./contracts/base-8453/0x25f110699fe8360c98a48a2cc42c3732328aca8a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb5a4a9...ad69a1`](./contracts/polygon-137/0xb5a4a9fc3e1834450eb2848636d3d9cde9ad69a1/) | TokensAllowlist | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x79b1dd...0de52a`](./contracts/polygon-137/0x79b1dd1b95952402f7ee9f3578b2c10b560de52a/) | UniV3WrappedLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9b3c6c...39d871`](./contracts/polygon-137/0x9b3c6c7c174065e364a617f7e3f585db8539d871/) | UserProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4e4de8...a1451e`](./contracts/polygon-137/0x4e4de8594ad39cd21971775504702d4b00a1451e/) | UserProxyInterface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d30af...fe4d7c`](./contracts/polygon-137/0x3d30afdb7f17dd77f37fe5d4bc3d60bdd4fe4d7c/) | UserProxyLpInteractions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a1fa2...5684f2`](./contracts/polygon-137/0x5a1fa2851bcf42555b701bef1536b1e7025684f2/) | UserProxyNftInteractions | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5b0953...d45364`](./contracts/polygon-137/0x5b095392513167293f21a6b375ff51d4ccd45364/) | UserProxyTemplate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6186d8...b5e075`](./contracts/polygon-137/0x6186d801d52dbeb5d653215a9c2d6f443ab5e075/) | UserProxyVotingInteractions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7f0b8d...812e68`](./contracts/arbitrum-42161/0x7f0b8db79bf4077b1d2a61726a059e8f43812e68/) | VaultLibrary | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f17fe...b1bef2`](./contracts/base-8453/0x1f17fe8aeb6036a4a342b3542d5fcc6b83b1bef2/) | VesselManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x25f293...0a5986`](./contracts/polygon-137/0x25f293d3e8e13a730d5aea96b7716970a40a5986/) | VoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2a6802...73738b`](./contracts/polygon-137/0x2a6802e38a7d372b3219b22d7005dfdd1073738b/) | VoterProxyAssets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x22f5a1...f6c1e5`](./contracts/polygon-137/0x22f5a1ec5aa6ccf02fd3cc13a56044a6d9f6c1e5/) | VotingSnapshot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x991b73...e4d5dc`](./contracts/polygon-137/0x991b73fb44a6b618efbf3403924c09530ee4d5dc/) | wSPHEREERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d5956...bc108f`](./contracts/polygon-137/0x0d59561576a0759cbdb46093248c1e8d17bc108f/) | YieldSourcePrizePoolProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 6 |
| standard_library | 38 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7623] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7624] 0002-metadata-manifest-and-pull-command.md
- [7625] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
