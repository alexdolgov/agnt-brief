# Agentic Audit Brief: AUTOfinance

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 46.3% over 90 days

## Project Overview

- Project: AUTOfinance (`autofinance`)
- Website: [https://www.auto.finance](https://www.auto.finance)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-06-17T07:00:45.152Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, linea, plasma, sonic
- Contract surface: 280 unique implementations (870 raw deployments)
- DeFi Llama TVL: $39,393,220.49
- On-chain TVL (included contracts): $155,391,801.02
- TVL by chain: Ethereum $146,907,355.62 | Base $7,063,651.50 | Arbitrum $1,420,671.29 | Linea $122.52 | Plasma $0.10

## Project Description

AUTOfinance is a yield optimization protocol that aggregates liquidity into Autopools, which dynamically allocate assets across various DeFi strategies (e.g., lending, liquidity provision, staking) to maximize returns. It uses a modular system of destination vaults, oracles, and swappers to manage risk and execute rebalancing across multiple chains.

### Architecture

Autopools serve as the entry point for users, delegating asset management to Destination Vaults which execute specific strategies. Oracles and Calculators supply the necessary pricing and performance data to guide allocation and rewards, while the Swap Infrastructure facilitates rebalancing and liquidations. All components are coordinated through the System Registry and AccessController, ensuring consistent configuration and security across chains.

## Contract Surface Quality

- Indexed contracts: 1753; live-surface contracts included: 870 (747 live, 123 unknown).
- Excluded by liveness: 789 inactive, 94 singleton, 0 uninitialized.
- Deployment units: 16/58 live.
- Detected codebases: compound-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 142/588.

## Audit Coverage Summary

- Verified implementations audited: 0/229 (0.0%)
- Verified + Unaudited implementations: 226
- Verified by bytecode match: 3
- Unverified implementations: 51
- Unique implementations: 280
- Raw deployments: 870
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $155,391,801.02
- Latest audit: 2025 (aging)
- Staleness: 0 fresh, 2 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $155,391,801.02 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (226)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x02e215...41d5b3`](./contracts/ethereum-1/0x02e2151d4f351881017abdf2dd2b51150841d5b3/); ethereum `0x0a7604...e70f03`; ethereum `0x7e8808...717b02`; ethereum `0xb900ef...209b2e`; ethereum `0xf27afa...d669cb` | ⚠️ Unaudited |
| OlympusERC20Token | token | ethereum | n/a | [`0x383518...14a899`](./contracts/ethereum-1/0x383518188c0c6d7730d91b2c03a03c837814a899/) | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | linea | n/a | 8 deployments: ethereum `0x60882d...d1755e`; ethereum `0x726104...b6c27b`; ethereum `0xe041b3...5456f2`; ethereum `0xf59086...26e716`; base `0x4103a4...630595`; base `0x69a63d...3e0522`; arbitrum `0xf6cc56...b09540`; linea [`0x03825c...c5bf0d`](./contracts/linea-59144/0x03825c8c817ff49a208c9c20365c002418c5bf0d/) | ⚠️ Unaudited |
| AutopoolETH | core_logic | ethereum | n/a | 11 deployments: ethereum [`0x0a2b94...114e56`](./contracts/ethereum-1/0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56/); ethereum `0x35911a...cd3e5a`; ethereum `0x558d67...61ef7a`; ethereum `0x824b39...439c66`; ethereum `0xcc1af2...49c1ea`; ethereum `0xd4ba03...870568`; base `0x6e2cb0...caf85c`; base `0xaadf01...6e0404`; arbitrum `0xa1ecbb...768510`; arbitrum `0xdeb9a2...d4e0ee`; linea `0x60a9b4...9ec01c` | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| SiloVaultWrapper | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x0e80f6...a47dc6`](./contracts/ethereum-1/0x0e80f6db7fc8e5966828eae36874b62dc8a47dc6/); ethereum `0x1e308f...58e4d1`; ethereum `0x78910c...3d55cc`; ethereum `0x851c31...779f8e`; ethereum `0xb07168...114f3f`; ethereum `0xb0bb32...3a6af0`; ethereum `0xd065e6...76fe68` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2b0813...93eb78`](./contracts/ethereum-1/0x2b08137beabd2454ad3631deb754f97c5c93eb78/); ethereum `0x3f55ee...edb7f9`; ethereum `0x5c6aeb...d45126` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | arbitrum | n/a | 13 deployments: ethereum `0x8f84c9...3a0f8f`; base `0xcb52d8...09d136`; base `0xfaa818...2a652d`; plasma `0x5b2cd1...ffd68c`; plasma `0x5dd8e6...7f905b`; plasma `0xf07c1d...49a1d1`; arbitrum [`0x1975b2...9b20bb`](./contracts/arbitrum-42161/0x1975b2d4c525587a50d431b68634067de29b20bb/); arbitrum `0x2b8c97...414127`; arbitrum `0x40454f...aa2f74`; arbitrum `0x5a4a23...565331`; arbitrum `0xc3350f...a9fb69`; arbitrum `0xd70f87...d6c74b`; arbitrum `0xdedb00...d2fb40` | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | unit-19089 | [`0xa693b1...ee87a5`](./contracts/ethereum-1/0xa693b19d2931d498c5b318df961919bb4aee87a5/) | ⚠️ Unaudited |
| TracerToken | token | ethereum | n/a | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| DepositToken | token | ethereum | n/a | 2 deployments: ethereum [`0x117a0b...23560c`](./contracts/ethereum-1/0x117a0bab81f25e60900787d98061ccfae023560c/); ethereum `0xcb6d87...e7ce74` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| ERC20DestinationVault | core_logic | ethereum | n/a | [`0x116b3e...bf8f3e`](./contracts/ethereum-1/0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e/) | ⚠️ Unaudited |
| MYCToken | token | ethereum | n/a | [`0x4b1300...eaf5ba`](./contracts/ethereum-1/0x4b13006980acb09645131b91d259eaa111eaf5ba/) | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x0091fe...6758cb`](./contracts/ethereum-1/0x0091fec1b75013d1b83f4bb82f0bec4e256758cb/); ethereum `0x23032a...4e9d8c`; ethereum `0x2fa4c8...d9b171`; ethereum `0x737f2e...7f004b`; ethereum `0x88d0e0...f90ab0`; ethereum `0x9828b1...fb37f2`; ethereum `0xafd498...706a90`; ethereum `0xf4cedd...948fa2` | ⚠️ Unaudited |
| ERC20 | token | ethereum | n/a | [`0xf93842...72e91e`](./contracts/ethereum-1/0xf938424f7210f31df2aee3011291b658f872e91e/) | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | base | n/a | 19 deployments: ethereum `0x067cb9...8364ad`; ethereum `0x20d762...5885b9`; ethereum `0x2795b6...3ae6b6`; ethereum `0x76187c...c18d9d`; ethereum `0x9491a1...6f3690`; ethereum `0x952d7a...6d2f5d`; ethereum `0x9cf7e7...80433d`; ethereum `0xace0eb...b36704`; ethereum `0xcc97cc...c97919`; ethereum `0xd02b50...15b6f9`; base [`0x044e16...81b776`](./contracts/base-8453/0x044e1609efb154150436cec9d03e95847f81b776/); base `0x5ae89e...da9e20`; base `0xfbe1ce...b992c1`; base `0xfff192...a3a304`; plasma `0x673f9b...759fbb`; arbitrum `0x371b3c...b29488`; arbitrum `0x3dbbb7...56fce9`; linea `0x796115...e6a9dd`; linea `0xe085d4...d62a03` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | arbitrum | n/a | 10 deployments: plasma `0x5dffae...602ee7`; plasma `0x714ffc...8ab8e9`; plasma `0xde4d6c...f84855`; plasma `0xfc962a...2e5069`; arbitrum [`0x00e52a...9c5f4a`](./contracts/arbitrum-42161/0x00e52ae3cfc140fdf3dff8932500d4ad919c5f4a/); arbitrum `0xa087e1...e7d7bb`; arbitrum `0xebcff8...864991`; linea `0x68e93d...de15f7`; linea `0xbd353d...45e7e2`; linea `0xd96d54...57f3fd` | ⚠️ Unaudited |
| AccessController | governance | arbitrum | n/a | 4 deployments: arbitrum [`0x09006e...ca9312`](./contracts/arbitrum-42161/0x09006e65787c8389b230758f23f66b2ca3ca9312/); arbitrum `0x7ec410...4fd6b2`; arbitrum `0xdd5b72...2e00ca`; linea `0xf4425c...b76a04` | ⚠️ Unaudited |
| AccessHub | unknown | linea | n/a | 26 deployments: linea [`0x00cc29...423b67`](./contracts/linea-59144/0x00cc296010664ff909aa90795a919046d1423b67/); linea `0x09aaa5...fbea2a`; linea `0x09d128...fc72a3`; linea `0x0cc5a7...2d666c`; linea `0x0d8ff3...e66422`; linea `0x3fd55d...d6d071`; linea `0x44f551...22f508`; linea `0x51a269...e80006`; linea `0x55cab4...4b40b1`; linea `0x582f3f...031c7a`; linea `0x5aae85...da036b`; linea `0x5e2f4d...e4b4e7`; linea `0x6a0673...1c99c1`; linea `0x7026f9...8dd004`; linea `0x7ac793...8c9026`; linea `0x8af8a0...71b734`; linea `0x8e394f...5b49e1`; linea `0x93948c...4351ed`; linea `0x967a7a...37854c`; linea `0x9ce2fb...709346`; linea `0xb61396...31a7b6`; linea `0xb66d0c...9fd40b`; linea `0xbb100b...008e31`; linea `0xd434fe...06805e`; linea `0xe345ad...ddc6bc`; linea `0xe6d0d3...cb5298` | ⚠️ Unaudited |
| AccessHub | unknown | linea | unit-19111 | [`0x683035...8ed5f3`](./contracts/linea-59144/0x683035188e3670fda1def2a7aa5742dea28ed5f3/) | ⚠️ Unaudited |
| AccToke | unknown | ethereum | unit-19087 | [`0xa374a6...7c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | ⚠️ Unaudited |
| AerodromeDestinationVault | core_logic | base | n/a | 4 deployments: base [`0x58c223...a1ed3e`](./contracts/base-8453/0x58c2233399b85b53c5506f78eaaae9b0dba1ed3e/); base `0x945a4f...5835ad`; base `0xa94031...39845a`; base `0xd18db4...e0cdad` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | base | n/a | 4 deployments: base [`0xb02cb1...57184e`](./contracts/base-8453/0xb02cb15597e214b9a843ccff9eefe628c057184e/); base `0xc7b711...d2bd10`; base `0xd9b54d...8042e3`; base `0xe40523...a7c240` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | base | n/a | 4 deployments: base [`0x9813e3...89f3e3`](./contracts/base-8453/0x9813e3091278f41cd6b2686ff83255f97889f3e3/); base `0xd675d8...c2e76b`; base `0xe923f8...425318`; base `0xeaa026...1ac028` | ⚠️ Unaudited |
| aOHMMigration | operational_periphery | ethereum | n/a | [`0xc7f56e...97db3d`](./contracts/ethereum-1/0xc7f56ec779cb9e60afa116d73f3708761197db3d/) | ⚠️ Unaudited |
| ArraysConverter | unknown | plasma | n/a | 3 deployments: plasma [`0x097080...c5d0c2`](./contracts/plasma-9745/0x09708019cf2527ad3263885ff712fc79cec5d0c2/); arbitrum `0xb6ab7a...e5940f`; linea `0x341421...5480a8` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | arbitrum | n/a | 5 deployments: ethereum `0x73526d...9c0b75`; arbitrum [`0x29d826...1c9f2b`](./contracts/arbitrum-42161/0x29d826a1bc5e87773571e5444da31f82131c9f2b/); arbitrum `0xb45bd0...bfabba`; arbitrum `0xea7ea3...34f538`; linea `0x46e9c8...7468ca` | ⚠️ Unaudited |
| AuraCalculator | unknown | ethereum | n/a | 12 deployments: ethereum [`0x041679...74ea07`](./contracts/ethereum-1/0x041679acb4088288178589c059543b56ce74ea07/); ethereum `0x0f5d9c...65acad`; ethereum `0x4e4eb5...c48348`; ethereum `0x4ead64...eb43ea`; ethereum `0x596866...b2cc43`; ethereum `0x5ac9dc...9d7f40`; ethereum `0x662e3f...9b018b`; ethereum `0xa4349b...08f3a0`; ethereum `0xacdc4a...05829d`; ethereum `0xb57e41...fb6621`; ethereum `0xd09bde...e59c71`; ethereum `0xddfd0a...9d84b2` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | base | n/a | 3 deployments: base [`0x7c4b58...13c539`](./contracts/base-8453/0x7c4b58eaa93005162bc80285af2003517213c539/); base `0xb9e981...02b6e8`; base `0xc5a917...7654d4` | ⚠️ Unaudited |
| AuraRewards | unknown | linea | n/a | 3 deployments: plasma `0x87b740...5b7b7a`; arbitrum `0xa9219c...440e8b`; linea [`0x786dce...9aeba7`](./contracts/linea-59144/0x786dce6c2490e715583d3840ee854ffd769aeba7/) | ⚠️ Unaudited |
| AuraStaking | unknown | arbitrum | n/a | 4 deployments: plasma `0x3a0f16...1df466`; arbitrum [`0x17dd20...440344`](./contracts/arbitrum-42161/0x17dd206f9eea4bf2553152a9a197e8c175440344/); arbitrum `0x887060...ac0408`; linea `0x727084...433188` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | linea | n/a | 8 deployments: linea [`0x2e5c9e...7c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/); linea `0x4bc655...6cb1f3`; linea `0x4dd0c2...ea2a4c`; linea `0x5ad9ec...b0e48c`; linea `0xb0b55d...af5939`; linea `0xbf0743...780d36`; linea `0xd7cb73...81ac2c`; linea `0xfd29fa...cf80e7` | ⚠️ Unaudited |
| AutopilotRouter | adapter | base | unit-19101 | [`0x4d2b87...40f8df`](./contracts/base-8453/0x4d2b87339b1f9e480aa84c770fa3604d7d40f8df/) | ⚠️ Unaudited |
| AutopilotRouter | adapter | arbitrum | n/a | 5 deployments: ethereum `0x39ff6d...0835a2`; plasma `0xc84883...91f27a`; arbitrum [`0x27a9c1...7621ad`](./contracts/arbitrum-42161/0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad/); arbitrum `0x643186...036487`; arbitrum `0xf86761...70b140` | ⚠️ Unaudited |
| AutopilotRouter | adapter | linea | unit-19118 | [`0xf61e75...990544`](./contracts/linea-59144/0xf61e75fbe9147f230400a1e7737c6f6934990544/) | ⚠️ Unaudited |
| Autopool4626 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0fe851...a81159`](./contracts/ethereum-1/0x0fe85151d909f5571ac698ae756c5ff924a81159/); base `0x6d9be4...a2213f`; plasma `0x4480bc...a9109b`; arbitrum `0xc80e12...159416`; linea `0x299c64...642108` | ⚠️ Unaudited |
| AutopoolDebt | core_logic | plasma | n/a | 5 deployments: ethereum `0xf792a3...715b8b`; base `0xfaac11...57c194`; plasma [`0x153993...c780a9`](./contracts/plasma-9745/0x153993b20c5e5be956cec763ed936a44d3c780a9/); arbitrum `0x752004...c638ce`; linea `0xcd1e36...51b6c7` | ⚠️ Unaudited |
| AutopoolDestinations | core_logic | plasma | n/a | 5 deployments: ethereum `0x4d08d4...ae53f1`; base `0xd931d7...acdf09`; plasma [`0x12d0df...49651a`](./contracts/plasma-9745/0x12d0dfa581162f43877e2e26b46da15e3049651a/); arbitrum `0xbf35cc...b9c4ef`; linea `0x48dfb2...e8ba01` | ⚠️ Unaudited |
| AutopoolFees | core_logic | base | n/a | 5 deployments: ethereum `0x06958d...32cfc2`; base [`0x05e14b...372c45`](./contracts/base-8453/0x05e14bc4e4eb7db75354256ae239b8567f372c45/); plasma `0x852212...dbafff`; arbitrum `0x8350c5...09b11e`; linea `0x4edb7c...5e2c64` | ⚠️ Unaudited |
| AutopoolRegistry | registry | arbitrum | n/a | 4 deployments: arbitrum [`0xc3b8f5...c9d268`](./contracts/arbitrum-42161/0xc3b8f578c25be230a2c0f56cb466e7b8c6c9d268/); arbitrum `0xef4e7d...2ccc48`; arbitrum `0xfbf87c...e352ca`; linea `0xf25f61...d5f42c` | ⚠️ Unaudited |
| AutopoolStrategyHooks | core_logic | base | n/a | 5 deployments: ethereum `0x2b0b9b...be77fc`; base [`0x1d39bf...89f876`](./contracts/base-8453/0x1d39bfee43a17bab3d35ce3503194309fe89f876/); plasma `0x337dd2...4dbccd`; arbitrum `0x33ff76...04e1b1`; linea `0x70b429...d63fc0` | ⚠️ Unaudited |
| AutopoolToken | core_logic | plasma | n/a | 5 deployments: ethereum `0x3161b8...79c9e4`; base `0xff0d0b...b1739f`; plasma [`0x2afc63...4f4da5`](./contracts/plasma-9745/0x2afc63a4339a0ad89a00f46258d239b3a64f4da5/); arbitrum `0x73c064...f10104`; linea `0x3f37bc...6ba37b` | ⚠️ Unaudited |
| BackingRootOracle | operational_periphery | plasma | n/a | 2 deployments: plasma [`0x0fda04...af0532`](./contracts/plasma-9745/0x0fda0487d92b7a187d4795e2ecaeca6bbaaf0532/); arbitrum `0x3aac1c...e152ae` | ⚠️ Unaudited |
| BalancerAdapter | adapter | plasma | n/a | 2 deployments: plasma [`0x35cbe9...331866`](./contracts/plasma-9745/0x35cbe9f5cad6ed153fd269eba82fc6257e331866/); arbitrum `0xb0c974...57702f` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x2f2cc1...6dac3d`](./contracts/ethereum-1/0x2f2cc1bf461413014741dd68481db4a3686dac3d/); ethereum `0x5a4b54...8a4f4d`; ethereum `0x867991...70717e`; ethereum `0xc9b5d8...dd751c`; ethereum `0xfda499...33e94b`; base `0xa6efb9...48dd5d`; base `0xb3723e...8500e0` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | ethereum | n/a | 11 deployments: ethereum [`0x0e2b75...e39be4`](./contracts/ethereum-1/0x0e2b7536ecb785df0fa43c6622dd6b670ce39be4/); ethereum `0x2df5d9...ab0981`; ethereum `0x4c4d65...3a1970`; ethereum `0x4e7986...bd70e0`; ethereum `0x63b0ac...832ae9`; ethereum `0xa639d9...95193c`; ethereum `0xab0b54...27f9a5`; ethereum `0xadf54e...2dd5a6`; ethereum `0xb5652e...ea6866`; base `0x4fc45f...0002a9`; base `0x800f53...4820b3` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x943673...13e9d2`](./contracts/ethereum-1/0x943673e7996a5d2ac2e945d0eabf1aa39913e9d2/); ethereum `0xa9b8e4...5702ab`; base `0x9d95e1...e39e33` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x92294a...61bad7`](./contracts/ethereum-1/0x92294a62d6d9f0fbe30ba3b543edb1806561bad7/); ethereum `0xa1b929...a29d05`; base `0xbd137c...84f59c` | ⚠️ Unaudited |
| BalancerMetaStablePoolCalculator | core_logic | ethereum | n/a | [`0x66664b...9a59a4`](./contracts/ethereum-1/0x66664bd801ff4edf8778bae66acf1de9c29a59a4/) | ⚠️ Unaudited |
| BalancerV2ComposableStableMathOracle | operational_periphery | arbitrum | n/a | [`0xddc9e4...7ab47c`](./contracts/arbitrum-42161/0xddc9e47b60c89bf39d14f3739e63763ebd7ab47c/) | ⚠️ Unaudited |
| BalancerV2Swap | unknown | arbitrum | n/a | [`0x6def5e...13f311`](./contracts/arbitrum-42161/0x6def5e2bb8545e1cd9f4f52ff42e2732fc13f311/) | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | arbitrum | n/a | [`0x19fa89...c1a620`](./contracts/arbitrum-42161/0x19fa89cdadfe49ac70531c9ad714a27bc2c1a620/) | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xc77161...d536c0`](./contracts/arbitrum-42161/0xc77161af2701f2fb880d4a7144ddc5f4e7d536c0/); arbitrum `0xce1c82...aec809` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | plasma | n/a | 2 deployments: plasma [`0x6de328...729033`](./contracts/plasma-9745/0x6de328ea43d143e3993e8dbc8dd2499ab6729033/); arbitrum `0xbd6beb...4c741b` | ⚠️ Unaudited |
| BalancerV3DestinationVault | core_logic | plasma | n/a | [`0xb42c35...0aae84`](./contracts/plasma-9745/0xb42c35deba9491ad971dd8f8b04bde449f0aae84/) | ⚠️ Unaudited |
| BalancerV3MerklDestinationVault | core_logic | plasma | n/a | 4 deployments: plasma [`0x28c3b8...354ad3`](./contracts/plasma-9745/0x28c3b82d6d540fa57c9468a231b458cd6d354ad3/); plasma `0x28ed66...26badb`; plasma `0xc253ef...e8ffdc`; plasma `0xd94ec2...2649f9` | ⚠️ Unaudited |
| BalancerV3SingleSwap | unknown | plasma | n/a | [`0xf59adc...919d3f`](./contracts/plasma-9745/0xf59adc3592653b91cae14a834ede8a0387919d3f/) | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | arbitrum | n/a | 2 deployments: plasma `0xff9059...6ca748`; arbitrum [`0x990957...2e54d2`](./contracts/arbitrum-42161/0x9909571399f38fc9eea4eac30cf19ac4ce2e54d2/) | ⚠️ Unaudited |
| BankSwapper | adapter | arbitrum | n/a | 2 deployments: plasma `0xce618f...afbc90`; arbitrum [`0x1cde65...4647be`](./contracts/arbitrum-42161/0x1cde65265061d84753086fe39084694f934647be/) | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | linea | n/a | 41 deployments: ethereum `0x0ab823...6bc18b`; ethereum `0x8ea340...16b859`; ethereum `0xc15bd0...b2cbae`; plasma `0x09c6ac...3e527f`; plasma `0x23eed2...8c0731`; plasma `0x2fc77f...6cd469`; plasma `0x835bee...52f40e`; arbitrum `0x0f23b8...05efe3`; arbitrum `0x18f9f3...c00df8`; arbitrum `0x2d534d...56b01c`; arbitrum `0x4423cb...450ceb`; arbitrum `0x44ec47...1fcb1d`; arbitrum `0x45bce6...3949fb`; arbitrum `0x4660a1...34f58d`; arbitrum `0x4ca6e6...4a3b4b`; arbitrum `0x621091...45deba`; arbitrum `0x7d6509...eb5482`; arbitrum `0x835f03...991299`; arbitrum `0x9f42f5...4f4ed5`; arbitrum `0xa2217d...69b478`; arbitrum `0xadb96b...49f858`; arbitrum `0xb8167e...10de65`; arbitrum `0xbbb989...41c3dc`; arbitrum `0xc54e00...4717ad`; arbitrum `0xcaf5b3...41bcad`; linea [`0x0288ef...246b19`](./contracts/linea-59144/0x0288ef3f2b32fbd03df27b27ca615080b2246b19/); linea `0x1b1b70...7b3a0e`; linea `0x1b9725...b9b3c9`; linea `0x25be90...498fd1`; linea `0x27ff73...ee0a9e`; linea `0x2844a0...6a26d8`; linea `0x422071...73cd1a`; linea `0x603b27...6251e6`; linea `0x843674...1032ec`; linea `0x997aa8...ac5d8b`; linea `0xc6f521...38dd8c`; linea `0xce131a...5f0ff2`; linea `0xd00c62...1424bb`; linea `0xdeabed...e0fb4a`; linea `0xe16d83...6ae856`; linea `0xf8c4eb...7913e6` | ⚠️ Unaudited |
| BlockchainInfo | periphery | linea | n/a | 3 deployments: plasma `0x88ccc2...48d171`; arbitrum `0x86abaa...3308b3`; linea [`0x218975...7a76f2`](./contracts/linea-59144/0x2189751274d792b6693e70468fb43ec4af7a76f2/) | ⚠️ Unaudited |
| BridgedLSTCalculator | operational_periphery | base | n/a | 5 deployments: base [`0x58897e...17943e`](./contracts/base-8453/0x58897ec6b7d7102bb24a29e99a14a6d9e517943e/); base `0xa80b38...892934`; base `0xb081af...1cbdb0`; base `0xb51829...1fa9ea`; base `0xbaf2ee...04e1a7` | ⚠️ Unaudited |
| Bytes32 | unknown | plasma | n/a | 3 deployments: plasma [`0x12d5aa...48b970`](./contracts/plasma-9745/0x12d5aad28da62a2d7ec2255af6202a458b48b970/); arbitrum `0x5f317e...8f520e`; linea `0xe8905b...6f0459` | ⚠️ Unaudited |
| CbethLSTCalculator | token | ethereum | n/a | [`0xab78a5...d01e08`](./contracts/ethereum-1/0xab78a570252dd06fdbc1c5c566e842e571d01e08/) | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | plasma | n/a | 5 deployments: ethereum `0x701f11...1b6c3f`; base `0xc7939c...11641c`; plasma [`0x0d0314...39c689`](./contracts/plasma-9745/0x0d0314555d0c6bf2194d7efee62476724539c689/); arbitrum `0xbbcc2d...628433`; linea `0x969954...189950` | ⚠️ Unaudited |
| ChainlinkStatsUpkeepV4 | unknown | base | n/a | [`0x30f285...27c637`](./contracts/base-8453/0x30f285c7cb4304e82302ce06f24e285bd527c637/) | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| ConvexCalculator | unknown | ethereum | n/a | 7 deployments: ethereum [`0x355f39...13de91`](./contracts/ethereum-1/0x355f39596a4bc907a84dbf8f627c7ca2ba13de91/); ethereum `0x4bbfa1...332276`; ethereum `0x74c3b0...269ab7`; ethereum `0x83b694...301d7a`; ethereum `0xbfdf3a...163841`; ethereum `0xf25b36...45eac3`; ethereum `0xf7370f...4ba9d7` | ⚠️ Unaudited |
| CurveAdapter | adapter | arbitrum | n/a | 2 deployments: plasma `0xf70c47...e86e3a`; arbitrum [`0xcb9597...30af70`](./contracts/arbitrum-42161/0xcb9597bb803d7baa4b6a14c2afd6d4dc9230af70/) | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | ethereum | n/a | [`0x356c79...6c3e77`](./contracts/ethereum-1/0x356c79ab2b2cefab685004ce827146058a6c3e77/) | ⚠️ Unaudited |
| CurveDestinationVault | core_logic | plasma | n/a | [`0xa265ce...ed3e9f`](./contracts/plasma-9745/0xa265cec7a8ec92b9b4124023324534faa9ed3e9f/) | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x04f7ce...94f051`](./contracts/arbitrum-42161/0x04f7cee4169276e9245d09b2cf074b193f94f051/); arbitrum `0x9b1985...5c4410`; arbitrum `0xdd78ea...07b0fd` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | linea | n/a | 2 deployments: arbitrum `0xe0ebd6...05a5f8`; linea [`0xbb1dfb...852e5e`](./contracts/linea-59144/0xbb1dfbbf3cfa0ae92119db2d35a53b59fa852e5e/) | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x145e12...c41879`](./contracts/ethereum-1/0x145e12608c133c2b9062d10e33305d153ac41879/); ethereum `0x542a6b...99f0fa`; ethereum `0x94b58e...6c7a69`; ethereum `0xb8e7a5...9b8c2a`; ethereum `0xd545ee...201004`; ethereum `0xd6884a...ee6154` | ⚠️ Unaudited |
| CurveV1PoolRebasingLockedStatsCalculator | core_logic | ethereum | n/a | [`0x549398...56e3c8`](./contracts/ethereum-1/0x54939860e3d185cd983421ace105ace79156e3c8/) | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | arbitrum | n/a | 4 deployments: ethereum `0xaed535...b8a92b`; plasma `0xb757c8...431d24`; arbitrum [`0x47b835...b49b5f`](./contracts/arbitrum-42161/0x47b835dcffcbfcc17a0ab2e5fb94cedb67b49b5f/); linea `0xbb1feb...8d2635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | arbitrum | n/a | 2 deployments: plasma `0xc92797...82a635`; arbitrum [`0x1bdc53...b8cf69`](./contracts/arbitrum-42161/0x1bdc539dedd630d9bc66fd88a53305b07db8cf69/) | ⚠️ Unaudited |
| CustomRedStoneOracleAdapter | operational_periphery | ethereum | n/a | [`0x67c159...c21030`](./contracts/ethereum-1/0x67c15923248baf96fb3944a2a326a237b4c21030/) | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x53ff9d...24066f`](./contracts/ethereum-1/0x53ff9d648a8a1cf70c6b60ae26b93047cc24066f/); ethereum `0xe67d77...958c03`; base `0x92c726...eae3ef`; base `0xb840cd...3b1ff7`; plasma `0x9783c0...d55b72`; arbitrum `0x5e76c3...791551`; arbitrum `0x80c503...cdc4ca`; linea `0x9faefa...cc23e2` | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| Depositor | unknown | base | n/a | 4 deployments: base [`0x8599f0...ae7e7f`](./contracts/base-8453/0x8599f04821421d8f9a5e0a5f06eb1630cdae7e7f/); base `0x9af8aa...813577`; base `0xe10142...fef87b`; base `0xed0489...fa4a05` | ⚠️ Unaudited |
| DestinationRegistry | registry | linea | n/a | 6 deployments: ethereum `0xa698a9...a99402`; base `0xa1afc8...095ba1`; arbitrum `0x95b5f1...43c58e`; arbitrum `0xdf177c...d8d82c`; arbitrum `0xfea078...2c618b`; linea [`0x66b9eb...6e258c`](./contracts/linea-59144/0x66b9eba2cef184dfaf3b9e11b104be0a1c6e258c/) | ⚠️ Unaudited |
| DestinationVaultExtension | adapter | arbitrum | n/a | 4 deployments: base `0xb64dd5...093d68`; plasma `0x94ab3c...7a09f1`; arbitrum [`0x4ca8f3...443fc1`](./contracts/arbitrum-42161/0x4ca8f3e9a5adc4893c93643b2cd90dc9eb443fc1/); linea `0xef8d12...8707b6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | ethereum | n/a | 7 deployments: ethereum [`0x37de6f...0ff124`](./contracts/ethereum-1/0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124/); base `0xf34f79...e9abb6`; plasma `0xc895bb...5c288a`; arbitrum `0x53303d...6c198d`; arbitrum `0x705688...49dbfb`; arbitrum `0xd66836...59225a`; linea `0x618273...67520f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | arbitrum | n/a | 4 deployments: arbitrum [`0x39327c...264ba1`](./contracts/arbitrum-42161/0x39327cbec7e3190fc721108b4d5a0cb096264ba1/); arbitrum `0x852664...ed4f44`; arbitrum `0x8d75a2...032b4b`; linea `0xc7b061...d65da2` | ⚠️ Unaudited |
| EethLSTCalculator | token | ethereum | n/a | [`0x4353e1...1350ba`](./contracts/ethereum-1/0x4353e181c13f7e970f24016a0762c1af271350ba/) | ⚠️ Unaudited |
| ERC4626BackingOracle | operational_periphery | arbitrum | n/a | 2 deployments: plasma `0x5ab9f9...5031a9`; arbitrum [`0x47cabf...81ed2f`](./contracts/arbitrum-42161/0x47cabfe7c68dc09b1e26ac62655664295481ed2f/) | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x000404...aadf01`](./contracts/ethereum-1/0x0004042f1cfaef8bd011e73d99f85a44b0aadf01/); base `0x336080...9c1678`; plasma `0x8a99bb...f682ad`; arbitrum `0xdd0394...f9a8f2`; linea `0x46c004...64686b` | ⚠️ Unaudited |
| ERC4626NonLPSpotRangeOracle | operational_periphery | linea | n/a | 3 deployments: base `0x136639...35a596`; plasma `0xdd597e...3822de`; linea [`0x1068bb...595061`](./contracts/linea-59144/0x1068bb81ac98aa7c1996ee0ea1189cc7cd595061/) | ⚠️ Unaudited |
| ERC4626OneToOneCalculator | unknown | base | n/a | [`0xcd749a...138a61`](./contracts/base-8453/0xcd749af731078ec7657a30458d3bc6558b138a61/) | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | arbitrum | n/a | 5 deployments: base `0xa60042...6be405`; plasma `0xba08e1...73e32f`; arbitrum [`0x1cbd79...0ba22b`](./contracts/arbitrum-42161/0x1cbd79d2d77faa8980c4f7fda0f6591aec0ba22b/); arbitrum `0x5c47f4...905667`; linea `0x6978f2...b3f5c3` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | ethereum | n/a | 10 deployments: ethereum [`0x2386c9...74105f`](./contracts/ethereum-1/0x2386c9e85f141104c16a4b765edf73752474105f/); ethereum `0xffebb3...4d959f`; plasma `0x9186ea...82617d`; plasma `0xed5dc1...272d93`; arbitrum `0x84c1ce...e5d152`; arbitrum `0x98a216...0e339a`; arbitrum `0xb22f75...e22f34`; arbitrum `0xe1a08b...799213`; linea `0x268cbb...161a03`; linea `0x3f962e...acc328` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | arbitrum | n/a | 4 deployments: plasma `0x8b504e...5df923`; arbitrum [`0x2210d0...252237`](./contracts/arbitrum-42161/0x2210d0ccc3a374326df1ee7a68406e9ce2252237/); arbitrum `0xf701b4...2b7087`; linea `0xdb28f4...aeae68` | ⚠️ Unaudited |
| Etherex | unknown | linea | n/a | 3 deployments: linea [`0xbe8b8d...69f11d`](./contracts/linea-59144/0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d/); linea `0xefd81e...31e348`; linea `0xf0c89c...0bd9eb` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | arbitrum | n/a | 4 deployments: plasma `0x738066...8b759f`; plasma `0xac2087...754a5e`; arbitrum [`0x16adb8...f5a0a8`](./contracts/arbitrum-42161/0x16adb8209618e0cbd4c19f0487f8916b0cf5a0a8/); linea `0xa6e5ac...acf562` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | ethereum | n/a | [`0x6d3c5f...78334c`](./contracts/ethereum-1/0x6d3c5f6670abe46901de4bd39036cf21d178334c/) | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | plasma | n/a | 16 deployments: plasma [`0x07ed7e...b8f95b`](./contracts/plasma-9745/0x07ed7ef81d7dd79fb6043d0a37c11d78f3b8f95b/); plasma `0x15b4dc...7178f9`; plasma `0x868c33...04b672`; plasma `0x919978...cf0377`; plasma `0xf3de68...78d217`; plasma `0xf5a4fa...0f684c`; arbitrum `0x398417...d80085`; arbitrum `0xc32572...ea15a8`; arbitrum `0xc82aec...28537f`; arbitrum `0xdc7b96...ec7101`; arbitrum `0xe6a2b1...08fc71`; arbitrum `0xfda745...010bd5`; linea `0x9d2868...239e3a`; linea `0xbe22c1...3ae95f`; linea `0xd27f7b...56fbf0`; linea `0xd2f243...5d4471` | ⚠️ Unaudited |
| EulerRewardLib | unknown | linea | n/a | 4 deployments: plasma `0x46ba85...80e409`; arbitrum `0x6f1c28...f65cdd`; linea [`0x349e41...6d59dd`](./contracts/linea-59144/0x349e418073d660dbd419ffc407d4ba077b6d59dd/); linea `0xc6383b...da5393` | ⚠️ Unaudited |
| ExtraRewarder | unknown | ethereum | n/a | 4 deployments: ethereum [`0x17c50b...022975`](./contracts/ethereum-1/0x17c50b9fba151f5f88618dae6c394bd731022975/); ethereum `0x23e9bb...7fec38`; ethereum `0x7a73fa...e05924`; plasma `0xae6b25...0e2124` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | ethereum | n/a | [`0xa84cc1...b263d9`](./contracts/ethereum-1/0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9/) | ⚠️ Unaudited |
| FeeCollector | unknown | linea | n/a | 2 deployments: linea [`0x51a2a0...7f21a1`](./contracts/linea-59144/0x51a2a0b162d27254e30473b7072d95f4b37f21a1/); linea `0x532c15...54e0f3` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | linea | n/a | 2 deployments: linea [`0x61c56a...6f3f6f`](./contracts/linea-59144/0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f/); linea `0xfde487...e6b7bf` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | linea | n/a | [`0x75430c...02d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | ⚠️ Unaudited |
| FeeRedeemer | unknown | ethereum | n/a | [`0xd1057b...38e581`](./contracts/ethereum-1/0xd1057b6c6736bf4f5b4a850cff02054f1f38e581/) | ⚠️ Unaudited |
| Fei | unknown | ethereum | n/a | [`0x956f47...7f87ca`](./contracts/ethereum-1/0x956f47f50a910163d8bf957cf5846d573e7f87ca/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | n/a | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | ethereum | n/a | [`0x449a95...787590`](./contracts/ethereum-1/0x449a957490e24e4d915fd5dcf25dd5446e787590/) | ⚠️ Unaudited |
| Gamma | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6bea7c...44e197`](./contracts/ethereum-1/0x6bea7cfef803d1e3d5f7c0103f7ded065644e197/); ethereum `0x8a539c...ed793a` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | linea | n/a | 5 deployments: linea [`0x18068c...3b0b25`](./contracts/linea-59144/0x18068c050d237d46310f59f40559bd0c6b3b0b25/); linea `0x84b465...04201b`; linea `0x9270d3...f81a74`; linea `0x9d5c0e...dc9cb4`; linea `0xeba9eb...eacb40` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-19062 | [`0x127563...ad9013`](./contracts/ethereum-1/0x127563761083d2ac7794c17d04e17393d8ad9013/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-19084 | [`0x8b4334...4a969b`](./contracts/ethereum-1/0x8b4334d4812c530574bd4f2763fcd22de94a969b/) | ⚠️ Unaudited |
| gOHM | unknown | ethereum | n/a | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| HoldTokenCalculator | token | base | n/a | [`0x804336...fac3a4`](./contracts/base-8453/0x8043363b9a807d3028a5a410dca41177fcfac3a4/) | ⚠️ Unaudited |
| IncentiveHarvester | operational_periphery | ethereum | n/a | [`0x4a566d...178791`](./contracts/ethereum-1/0x4a566dbb39d5b75da98e1e1fd98f785896178791/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| Integer | unknown | arbitrum | n/a | 4 deployments: ethereum `0x8a397a...94a71c`; plasma `0x5206eb...e4ec6e`; arbitrum [`0x4c0868...092028`](./contracts/arbitrum-42161/0x4c0868931b0c6e72aa835d657fa56179ce092028/); linea `0xe9dedf...9958c6` | ⚠️ Unaudited |
| Lens | periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x03200d...f749c1`](./contracts/arbitrum-42161/0x03200d703c63d3b5a00de9896b7f82c240f749c1/); arbitrum `0x590a31...2fc754`; arbitrum `0x99f8f6...08279e`; linea `0x92537a...f7973c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | plasma | n/a | 5 deployments: plasma [`0x2ddb79...7980be`](./contracts/plasma-9745/0x2ddb79fdeb9f4708604acecec28e4adc247980be/); arbitrum `0x34d929...f7ad94`; arbitrum `0x400662...5ca197`; arbitrum `0x4008dd...ceba03`; linea `0x9f8e50...db4bfa` | ⚠️ Unaudited |
| LiquidationRow | unknown | arbitrum | n/a | 6 deployments: ethereum `0xf570ea...58d481`; base `0x7571de...c10b5d`; plasma `0xd3132c...b2a018`; arbitrum [`0x610ffe...3e3ab5`](./contracts/arbitrum-42161/0x610ffeb00b8312b0540ded300c683227cb3e3ab5/); arbitrum `0xb47d36...d913ed`; linea `0xc33238...f05b3c` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | arbitrum | n/a | 5 deployments: plasma `0xc91f3b...a4ebc5`; arbitrum [`0x329e4c...dd525c`](./contracts/arbitrum-42161/0x329e4cf6d328da5bcf46339900126c147ddd525c/); arbitrum `0x67ae7b...cafbc0`; arbitrum `0xd57e25...aad943`; linea `0xf63daf...6f2f47` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | arbitrum | n/a | 5 deployments: plasma `0x881bb3...3d63d4`; arbitrum [`0x0d1212...695426`](./contracts/arbitrum-42161/0x0d1212d67d676101bc9ed856b8574a95c7695426/); arbitrum `0x50306d...00ccf0`; arbitrum `0x6404da...44a402`; linea `0xaaee6a...869707` | ⚠️ Unaudited |
| MerklApiOperatorSetExtension | adapter | base | n/a | [`0x54f35d...6cdc8d`](./contracts/base-8453/0x54f35db38f7613a3993e41d56ee9c4c5ee6cdc8d/) | ⚠️ Unaudited |
| MessageProxy | unknown | ethereum | n/a | [`0x20ea2f...616f76`](./contracts/ethereum-1/0x20ea2f2ecf36bcb6df086d923a120496dc616f76/) | ⚠️ Unaudited |
| MevModule | unknown | linea | n/a | 2 deployments: linea [`0x614f11...703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/); linea `0xdf2787...088d5b` | ⚠️ Unaudited |
| MevModule | unknown | linea | unit-19112 | [`0x90fc1f...b4940d`](./contracts/linea-59144/0x90fc1f74cde75122a17db99c11597bf593b4940d/) | ⚠️ Unaudited |
| MigrationNFT | operational_periphery | ethereum | n/a | [`0x72baaa...39fe76`](./contracts/ethereum-1/0x72baaa523a4662856f413b0fc0a9e3068f39fe76/) | ⚠️ Unaudited |
| Minter | operational_periphery | linea | n/a | 4 deployments: linea [`0x0b6d3b...ecc3eb`](./contracts/linea-59144/0x0b6d3b42861ee8abfcaac818033694e758ecc3eb/); linea `0x462e26...d2a966`; linea `0x76da79...da9f8f`; linea `0xf83962...0b6255` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | arbitrum | n/a | 5 deployments: plasma `0x71689a...1679d9`; arbitrum [`0x09d0d6...b50322`](./contracts/arbitrum-42161/0x09d0d6a48545e959b230600966d93600fab50322/); arbitrum `0x5483a2...a7ece8`; arbitrum `0xcb409a...2dffe0`; linea `0xb617bc...532e67` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | linea | n/a | [`0x59037f...3712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | arbitrum | n/a | 6 deployments: plasma `0xde852a...f90db4`; arbitrum [`0x52b31f...d48be3`](./contracts/arbitrum-42161/0x52b31f7d8397a7a3851ddb548acac64abfd48be3/); arbitrum `0x65f4fe...a62eef`; arbitrum `0xab3da8...c9bf0b`; arbitrum `0xd7b1f5...db00ce`; arbitrum `0xff004b...a24192` | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NavLookbackHook | unknown | plasma | n/a | 5 deployments: plasma [`0x4c0be1...6b427b`](./contracts/plasma-9745/0x4c0be1062dcdaed7be09f73a4f00a0313a6b427b/); arbitrum `0x617005...19ea57`; arbitrum `0x9717e1...756f8b`; arbitrum `0xd184c5...bd2b16`; linea `0xa31fe5...59fa42` | ⚠️ Unaudited |
| NavTracking | unknown | linea | n/a | [`0x9d9118...8b2046`](./contracts/linea-59144/0x9d91184326b1b43cca0039523ed20a4bc08b2046/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | unit-19114 | [`0xa04a9f...bb2f58`](./contracts/linea-59144/0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | linea | n/a | [`0xfc65c6...8453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | [`0x0822f3...f274a2`](./contracts/ethereum-1/0x0822f3c03dcc24d200aff33493dc08d0e1f274a2/) | ⚠️ Unaudited |
| OlympusTokenMigrator | token | ethereum | n/a | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | arbitrum | n/a | 2 deployments: plasma `0x951891...0fbb80`; arbitrum [`0x4e8ce6...8e9b32`](./contracts/arbitrum-42161/0x4e8ce63cce31f667d03955dd98133d504d8e9b32/) | ⚠️ Unaudited |
| OneToOneUSDBackingOracle | operational_periphery | arbitrum | n/a | 2 deployments: plasma `0xea292b...6b9818`; arbitrum [`0xa698a9...a99402`](./contracts/arbitrum-42161/0xa698a94c0dce389b862f58b08f618a981ea99402/) | ⚠️ Unaudited |
| Oracle | operational_periphery | linea | n/a | [`0x389df9...7e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | ⚠️ Unaudited |
| OsethLSTCalculator | token | ethereum | n/a | [`0xb5aa59...25aebb`](./contracts/ethereum-1/0xb5aa595c4fe3c297d65bdcdcc6fa48ef8725aebb/) | ⚠️ Unaudited |
| PairFactory | registry | linea | n/a | [`0xc0b920...644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| Position | unknown | linea | n/a | [`0x2832e1...bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | ⚠️ Unaudited |
| ProtocolActions | unknown | linea | n/a | [`0x34413f...3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 2 deployments: plasma `0xea6b81...bcc98a`; arbitrum [`0xbfd637...047e9f`](./contracts/arbitrum-42161/0xbfd6378545d118e8fb26f633d8f3b32bda047e9f/) | ⚠️ Unaudited |
| ProxyLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x24864c...25931e`](./contracts/ethereum-1/0x24864cc03efd84f9df0e5f1d23ab69128325931e/); ethereum `0xdbfb63...aaa43f` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | ethereum | n/a | [`0x9cb562...972153`](./contracts/ethereum-1/0x9cb562083d29e027f21fac4d8b66573dea972153/) | ⚠️ Unaudited |
| Quoter | periphery | linea | n/a | [`0xb593fa...4fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | n/a | [`0xe660c9...aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | linea | n/a | 2 deployments: linea [`0x020079...d3200e`](./contracts/linea-59144/0x020079c6cb277ec22306a45e7d4eaefd24d3200e/); linea `0x0efaae...31693b` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | linea | unit-19108 | [`0x15325a...5636a5`](./contracts/linea-59144/0x15325a2ec4bf164d47cf48d5d6a9edda385636a5/) | ⚠️ Unaudited |
| RamsesV3Factory | registry | linea | n/a | [`0xae334f...cf80f1`](./contracts/linea-59144/0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1/) | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | linea | n/a | [`0x80dca1...c7bec8`](./contracts/linea-59144/0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8/) | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | linea | n/a | [`0x4e710f...272bfb`](./contracts/linea-59144/0x4e710feb1b2e784233893af659442e4739272bfb/) | ⚠️ Unaudited |
| RedstoneOracle | operational_periphery | plasma | n/a | [`0x80d831...bb308d`](./contracts/plasma-9745/0x80d8315de571bfa4ff0b884a03f95837f8bb308d/) | ⚠️ Unaudited |
| RedStonePullOracle | operational_periphery | base | n/a | 4 deployments: ethereum `0x470139...b0a0ea`; base [`0x1e4d6a...679306`](./contracts/base-8453/0x1e4d6a828a7597808d16e3d096f230b01f679306/); arbitrum `0x995a39...759d1f`; arbitrum `0xed2acb...5e081b` | ⚠️ Unaudited |
| RethLSTCalculator | token | ethereum | n/a | [`0x980109...bb84a8`](./contracts/ethereum-1/0x9801098ee481ed6806c61a4de259fbddd5bb84a8/) | ⚠️ Unaudited |
| RewarderAutoLoader | unknown | linea | n/a | 2 deployments: arbitrum `0xa11733...30bf38`; linea [`0x2abfad...8ceec7`](./contracts/linea-59144/0x2abfad400361d49b40b24a894e0e417c4a8ceec7/) | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | n/a | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 5 deployments: ethereum [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22...a713c5`; ethereum `0xd69e57...f88003`; ethereum `0xf81d69...4cef69`; ethereum `0xffd22c...69ede3` | ⚠️ Unaudited |
| RewardsHash | unknown | ethereum | n/a | [`0x70f0f4...373c24`](./contracts/ethereum-1/0x70f0f41b354ce2f1378952c50c635633e0373c24/) | ⚠️ Unaudited |
| REX33 | unknown | linea | n/a | 5 deployments: linea [`0x312b67...433ec0`](./contracts/linea-59144/0x312b67a8de4291ce2c3628d24fa62eb04f433ec0/); linea `0xbf42f6...639dff`; linea `0xc4b578...31509c`; linea `0xccfc11...f15749`; linea `0xe4eeb4...f051c4` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | linea | n/a | 7 deployments: ethereum `0x61f8be...bc2cac`; base `0xbcf67d...661795`; plasma `0xf25bdd...6d124f`; arbitrum `0x99ebce...8bed0e`; arbitrum `0xd24125...ab5b3d`; arbitrum `0xe84cea...72d97f`; linea [`0x03dc05...175618`](./contracts/linea-59144/0x03dc051eb7fe444cebcc2e870eba4464d8175618/) | ⚠️ Unaudited |
| Router | adapter | linea | n/a | [`0x32db39...929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | ethereum | n/a | [`0x840a49...4fc210`](./contracts/ethereum-1/0x840a49a4b83e57718cf67c03d820c938a04fc210/) | ⚠️ Unaudited |
| RswethLRTCalculator | token | ethereum | n/a | [`0xeedb3d...b6741a`](./contracts/ethereum-1/0xeedb3dd86f690a8c76006d606db7951322b6741a/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-19094 | [`0xa9900b...1d447b`](./contracts/ethereum-1/0xa9900b2d550c406d1cf58da27228feeef21d447b/) | ⚠️ Unaudited |
| SafeIsSpotEthOracle | operational_periphery | base | n/a | [`0x70659f...12e764`](./contracts/base-8453/0x70659f78ac20a8eddc309d6df6458ceacc12e764/) | ⚠️ Unaudited |
| SafeL2 | unknown | ethereum | unit-19065 | [`0x1bb923...23cdc0`](./contracts/ethereum-1/0x1bb9231f96a5420858d273c3e311f0affc23cdc0/) | ⚠️ Unaudited |
| SequencerChecker | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x05abaa...1f23f4`](./contracts/arbitrum-42161/0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4/); arbitrum `0x537f6e...d97dcc`; arbitrum `0xf37535...f129ef` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | linea | n/a | [`0xfb918e...eae19d`](./contracts/linea-59144/0xfb918e1d100707e732129407065c9b8dbbeae19d/) | ⚠️ Unaudited |
| SiloMainnetDestinationVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x43ac60...97ab82`](./contracts/ethereum-1/0x43ac6018d520280fdbb98159acc4970b2b97ab82/); ethereum `0x679d6f...e3aca9`; ethereum `0x87a840...e4a262` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | arbitrum | n/a | 5 deployments: plasma `0xf68f04...80b335`; arbitrum [`0x5984cf...11c192`](./contracts/arbitrum-42161/0x5984cf820caaf1dcb3ed863c2f5f386c1b11c192/); arbitrum `0x5db0e6...fd6b14`; arbitrum `0x8e9ac2...2d402d`; linea `0x798b8a...824645` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | plasma | n/a | 3 deployments: plasma [`0x03fad8...4d6cad`](./contracts/plasma-9745/0x03fad8445b30bf639c5f54e9502e43ba5f4d6cad/); arbitrum `0x5ee5d0...9cbd14`; linea `0x24127a...127e00` | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x31932e...77fbbe`](./contracts/ethereum-1/0x31932e6e45012476ba3a3a4953cba62aee77fbbe/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | unit-19085 | [`0x96f98e...3417d3`](./contracts/ethereum-1/0x96f98ed74639689c3a11daf38ef86e59f43417d3/) | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingProxyConvex | proxy | ethereum | n/a | [`0x5d9ef8...a20eb8`](./contracts/ethereum-1/0x5d9ef8f1cfa952a4a383e10a447dd23c5ea20eb8/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StandardNonLPSpotEthOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x84ec46...0c15c1`](./contracts/ethereum-1/0x84ec46ad95c5fc56a729c831a86b6b4df70c15c1/); ethereum `0xd06906...a6bfba` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x819806...bc917c`](./contracts/ethereum-1/0x8198069f1709addc6a162c9433665776e5bc917c/); base `0xd82664...8b0a1c` | ⚠️ Unaudited |
| StatsCalculatorRegistry | registry | ethereum | n/a | [`0xae6b25...0e2124`](./contracts/ethereum-1/0xae6b250841fa7520af843c776aa58e23060e2124/) | ⚠️ Unaudited |
| StethLSTCalculator | token | ethereum | n/a | [`0x66a466...dbad0c`](./contracts/ethereum-1/0x66a466b838f981b39cf3b3e13e19af5643dbad0c/) | ⚠️ Unaudited |
| sTokeExtend | unknown | ethereum | n/a | [`0x6e1f00...c50673`](./contracts/ethereum-1/0x6e1f006c98b7389001eb427b1f593936b5c50673/) | ⚠️ Unaudited |
| StructuredLinkedList | unknown | linea | n/a | 5 deployments: ethereum `0xe40299...b6eb7e`; base `0xdd3aba...fc0865`; plasma `0x22adaa...820812`; arbitrum `0x5c72bd...c4845c`; linea [`0x073633...57401a`](./contracts/linea-59144/0x0736339bfcd152be60b504b19298a5d33b57401a/) | ⚠️ Unaudited |
| SubSaturateMath | unknown | linea | n/a | [`0xe51fc5...a08456`](./contracts/linea-59144/0xe51fc5f8e61bab7559208969db34eaece8a08456/) | ⚠️ Unaudited |
| SwapperAdapter | adapter | plasma | n/a | 3 deployments: plasma [`0x22babd...34c56f`](./contracts/plasma-9745/0x22babd3e0db07b69bb265e58c52d6a131234c56f/); arbitrum `0xac2e82...cad295`; linea `0xdf0797...a075ff` | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | 2 deployments: linea [`0x8be024...a5052a`](./contracts/linea-59144/0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a/); linea `0xf0e746...7956d1` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | arbitrum | n/a | 8 deployments: ethereum `0x955b5a...4679ca`; base `0x77e11d...6e48dc`; plasma `0xb4da8d...fbcbe6`; arbitrum [`0x096f44...33e59a`](./contracts/arbitrum-42161/0x096f44f9fbbe6116de5db5954de776fb8733e59a/); arbitrum `0x0ed955...cde632`; arbitrum `0x11d14d...6f55e7`; arbitrum `0x4dd492...f6cd37`; arbitrum `0x5e4cb1...599da6` | ⚠️ Unaudited |
| SwethLSTCalculator | token | ethereum | n/a | [`0x60e98e...ce3c9e`](./contracts/ethereum-1/0x60e98e2dac20faab84781076164290cc31ce3c9e/) | ⚠️ Unaudited |
| SystemRegistryL2 | registry | sonic | n/a | 5 deployments: sonic [`0x1a912e...ad8848`](./contracts/sonic-146/0x1a912eb51d3cf8364ebaee5a982ca37f25ad8848/); arbitrum `0x700915...c86a2f`; arbitrum `0x7af0c2...639b7c`; arbitrum `0xbfd8e6...7b4220`; linea `0x25f26e...a9f980` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | linea | n/a | 3 deployments: plasma `0xf8cda9...699834`; linea [`0x795abe...87f494`](./contracts/linea-59144/0x795abe7190eb06dde22c5ff1c99fa96f1987f494/); linea `0xa287f0...493e46` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x062a72...948127`](./contracts/arbitrum-42161/0x062a72ebb3f4a6c14fa18b2dcf34a8ee90948127/); arbitrum `0x63051c...05e6a1`; arbitrum `0x9b17ef...e08a96`; arbitrum `0xa19d96...44a44c`; arbitrum `0xe7eeb1...96cf99` | ⚠️ Unaudited |
| TickLens | periphery | linea | n/a | [`0x432a52...e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| Toke | unknown | ethereum | n/a | [`0x2e9d63...a38c94`](./contracts/ethereum-1/0x2e9d63788249371f1dfc918a52f8d799f4a38c94/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | ⚠️ Unaudited |
| TransientStorage | unknown | plasma | n/a | 3 deployments: plasma [`0x596bec...821254`](./contracts/plasma-9745/0x596bec113eb0a63660a662519fc2f715bc821254/); arbitrum `0xc54851...a30833`; arbitrum `0xedcce7...de9d51` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 2 deployments: base `0x277078...901ebf`; arbitrum [`0x01890e...744be4`](./contracts/arbitrum-42161/0x01890ea9326d6c2d5941a51473d12f8179744be4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | unit-19117 | [`0xf26431...1bb458`](./contracts/linea-59144/0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fa464...38c688`](./contracts/ethereum-1/0x5fa464cefe8901d66c09b85d5fcdc55b3738c688/); ethereum `0xd4e7a6...647e38` | ⚠️ Unaudited |
| UniV3Swap | unknown | linea | n/a | 5 deployments: plasma `0x90535f...55dcd1`; arbitrum `0x0ca3d0...34bb42`; arbitrum `0xfe10f2...1dbffb`; linea [`0x0093ff...b144c6`](./contracts/linea-59144/0x0093fff32ee2d0469cb00badb9f8d47efbb144c6/); linea `0xae315b...66bcc9` | ⚠️ Unaudited |
| UniversalRouter | adapter | linea | n/a | [`0x859744...07826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| VisorFactory | registry | ethereum | n/a | [`0xae0323...e6f20a`](./contracts/ethereum-1/0xae03233307865623aaef76da9ade669b86e6f20a/) | ⚠️ Unaudited |
| VoteModule | unknown | linea | n/a | 2 deployments: linea [`0xedd7cb...9c15b1`](./contracts/linea-59144/0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1/); linea `0xf70dc8...631ee4` | ⚠️ Unaudited |
| Voter | unknown | linea | n/a | 7 deployments: linea [`0x1dac11...a94046`](./contracts/linea-59144/0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046/); linea `0x4961f7...fc7679`; linea `0x5f26a6...06fc19`; linea `0x706e4a...f157e1`; linea `0xa0b937...d4f116`; linea `0xade917...9d56d1`; linea `0xe8e8e8...2f8468` | ⚠️ Unaudited |
| Voter | unknown | linea | unit-19113 | [`0x942117...f889c1`](./contracts/linea-59144/0x942117ec0458a8aa08669e94b52001bd43f889c1/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 86 deployments: ethereum [`0x02d341...1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/); ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2fe94e...f9d614`; ethereum `0x3669c4...fce737`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x462253...22ca39`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5b5cfe...003858`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x64448b...b7136e`; ethereum `0x6955a5...c11f15`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x824f13...77a637`; ethereum `0x8474dd...dec9f6`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x97e276...19b787`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa82ca...ddc78c`; ethereum `0xb0a071...f52f2d`; ethereum `0xb9fc15...c990d4`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc2b1df...0bf627`; ethereum `0xc45b2e...93c756`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc8418a...adc5b0`; ethereum `0xcee60c...656f3a`; ethereum `0xd30dd0...225ac8`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd66290...588b5d`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xe7a24e...d7d171`; ethereum `0xeb16ae...65a733`; ethereum `0xecb456...e9b347`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf5194c...c1949f`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | linea | n/a | 5 deployments: ethereum `0x865a21...a5bb15`; base `0x7bce7f...1d9d4d`; plasma `0x6da532...75acda`; arbitrum `0xc5827c...c678a9`; linea [`0x02a50c...e9352c`](./contracts/linea-59144/0x02a50caf707ed8e99545f60b82e0c1ce1ee9352c/) | ⚠️ Unaudited |
| WrapZeroCalculator | unknown | ethereum | n/a | 7 deployments: ethereum [`0x148cc2...71b298`](./contracts/ethereum-1/0x148cc2553c7f3d7db1825ff893f8f433a871b298/); ethereum `0x35d305...ad4578`; ethereum `0x7a4818...944d87`; ethereum `0x9cd467...430dfe`; ethereum `0xbc2d91...0c2899`; ethereum `0xda5bdd...8095d3`; ethereum `0xfd4026...1a4f2b` | ⚠️ Unaudited |
| xGamma | unknown | ethereum | n/a | [`0x268050...747d8c`](./contracts/ethereum-1/0x26805021988f1a45dc708b5fb75fc75f21747d8c/) | ⚠️ Unaudited |
| XRex | unknown | linea | n/a | 2 deployments: linea [`0x58d034...146997`](./contracts/linea-59144/0x58d034c3c22851e9dc8fc2f07055659cf9146997/); linea `0xc93b31...f366cc` | ⚠️ Unaudited |
| ZeroCalculator | unknown | arbitrum | n/a | 7 deployments: base `0x52282f...2738e2`; base `0x74b6cc...c76902`; plasma `0x2be9f3...beec61`; plasma `0xf58d7b...3da687`; arbitrum [`0x254d87...e6c563`](./contracts/arbitrum-42161/0x254d871685cac3b4a3b50f20e256fb4a9ae6c563/); arbitrum `0xaabc17...6197f5`; linea `0x94f20c...af56fe` | ⚠️ Unaudited |
| ZeroExSwapper | adapter | linea | n/a | [`0x69c6fb...c0440e`](./contracts/linea-59144/0x69c6fbba613dcf20cfa42aec902572d3fcc0440e/) | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | arbitrum | n/a | 4 deployments: plasma `0x6b7610...3d5d48`; arbitrum [`0x42ecca...d23713`](./contracts/arbitrum-42161/0x42eccabc940a81bf504b574b84f80a6df5d23713/); arbitrum `0xc14caf...6133d3`; linea `0xd7c964...b24841` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GaugeFactory | unknown | linea | n/a | 2 deployments: linea [`0x1ddf72...7944b3`](./contracts/linea-59144/0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3/); linea `0xd766d9...c4a200` | ⚠️ Unaudited (bytecode match) |
| GaugeV3 | operational_periphery | linea | unit-19109 | 2 deployments: linea [`0x499aed...dd8fcb`](./contracts/linea-59144/0x499aed38bdafd972e1cd2926d2b9088547dd8fcb/); linea `0xfb8561...c4950d` | ⚠️ Unaudited (bytecode match) |
| UpgradeableAutopoolFactory | registry | linea | n/a | 10 deployments: ethereum `0x2567c9...05e59f`; ethereum `0x866cf4...11c4ce`; base `0x02fe08...e44d89`; base `0xc1e701...a34f79`; base `0xdbb093...c2dc21`; base `0xdd08e4...b32b9e`; base `0xdf6dc6...699cd8`; arbitrum `0x9f76d5...08d7fb`; arbitrum `0xc08f39...a917a7`; linea [`0x01890e...744be4`](./contracts/linea-59144/0x01890ea9326d6c2d5941a51473d12f8179744be4/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5c99be...0aeb05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f13ab...9bc520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94f13c...276df8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe14833...100ad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee04bd...fbc3cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee291...cbe213` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0387a5...c17d0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fec72...afa684` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e2fd1...572fbd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x244717...1b3b73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x249acd...0a40e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f1663...ed5697` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68c58d...4c5bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b229e...724b49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x819dbf...00f8df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95a2d8...cc34c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc285c8...a2e696` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd25751...c97332` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf73428...3305ca` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0d8ea4...47668c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0da0e8...54e1dc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x162f49...b4b30f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x3540f2...654834` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x459386...067ccd` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4dd032...77e097` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x58f411...3773a3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7bc604...560397` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7bea14...ebe83d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7de076...ffc1f4` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8ccd47...00347d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8dbad4...ae72e8` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xac93ee...be4113` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xe3063e...8246a5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc2337...8e5106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2218f9...aa4285` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6aec50...339c2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf4fc6...7373e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x09e53a...83b9e7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0c1de6...167d8e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x10e5e0...cab7bc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2acbdb...19d2a6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x35e755...ad5a69` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x631a30...4637f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7601df...7497b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x762e61...7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x88c987...d56756` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x971634...461ee0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb39939...5f11f4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd0dad8...1c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf36208...f1c721` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view?usp=sharing) | Hexens | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view) | Hexens | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://certora.cdn.prismic.io/certora/Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf) | Certora | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/Certora/tokemak-v2-core-fv/blob/main/Report.md) | Certora | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2Fm9vasMSC35JbnaqfyPVN%2FTokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2FauBJzmmsZIR0afW4AD7c%2FTokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view) | Halborn | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x383518...14a899`](./contracts/ethereum-1/0x383518188c0c6d7730d91b2c03a03c837814a899/) | OlympusERC20Token | token | $32,883,741.27 | Verified native implementation with $32,883,741.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $12,845,271.52 | Verified native implementation with $12,845,271.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | token | $12,233,070.56 | Verified native implementation with $12,233,070.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa693b1...ee87a5`](./contracts/ethereum-1/0xa693b19d2931d498c5b318df961919bb4aee87a5/) | TokenImplementation | token | $534,995.60 | Verified native implementation with $534,995.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | TracerToken | token | $172,890.00 | Verified native implementation with $172,890.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x117a0b...23560c`](./contracts/ethereum-1/0x117a0bab81f25e60900787d98061ccfae023560c/) | DepositToken | token | $169,500.13 | Verified native implementation with $169,500.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x116b3e...bf8f3e`](./contracts/ethereum-1/0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e/) | ERC20DestinationVault | core_logic | $111,702.79 | Verified native implementation with $111,702.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1300...eaf5ba`](./contracts/ethereum-1/0x4b13006980acb09645131b91d259eaa111eaf5ba/) | MYCToken | token | $45,738.35 | Verified native implementation with $45,738.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb02cb1...57184e`](./contracts/base-8453/0xb02cb15597e214b9a843ccff9eefe628c057184e/) | AerodromeStakingDexCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9813e3...89f3e3`](./contracts/base-8453/0x9813e3091278f41cd6b2686ff83255f97889f3e3/) | AerodromeStakingIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x041679...74ea07`](./contracts/ethereum-1/0x041679acb4088288178589c059543b56ce74ea07/) | AuraCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c4b58...13c539`](./contracts/base-8453/0x7c4b58eaa93005162bc80285af2003517213c539/) | AuraL2Calculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x07ed7e...b8f95b`](./contracts/plasma-9745/0x07ed7ef81d7dd79fb6043d0a37c11d78f3b8f95b/) | EulerDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x956f47...7f87ca`](./contracts/ethereum-1/0x956f47f50a910163d8bf957cf5846d573e7f87ca/) | Fei | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bea7c...44e197`](./contracts/ethereum-1/0x6bea7cfef803d1e3d5f7c0103f7ded065644e197/) | Gamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | gOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x795abe...87f494`](./contracts/linea-59144/0x795abe7190eb06dde22c5ff1c99fa96f1987f494/) | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 33 |
| standard_library | 2 |
| needs_review | 226 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11542] {% embed url="<>" %}
- [11543] {% embed url="<>" %}
- [11544] {% embed url="<>" %}
- [11545] {% embed url="<>" %}
- [11546] {% embed url="<>" %}
- [11547] {% embed url="<>" %}
- [11548] {% embed url="<>" %}
- [11549] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
