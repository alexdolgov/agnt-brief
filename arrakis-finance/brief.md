# Agentic Audit Brief: Arrakis Finance

## Project Overview

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 95.9% below peak)
- Generated: 2026-06-18T12:10:42.032Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-a45b
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, unichain
- Contract surface: 87 unique implementations (233 raw deployments)
- DeFi Llama TVL: $69,225,338.00
- On-chain TVL (included contracts): $3,070.77
- TVL by chain: Ethereum $3,070.77

## Project Description

Arrakis Finance is a non-custodial onchain market-making and liquidity infrastructure protocol for token issuers and asset markets, including support for token launches, RWAs/equities, and Hyperliquid markets. Its legacy and continuing product surface includes automated vaults and liquidity-management strategies for concentrated-liquidity DEX positions.

### Architecture

Arrakis V1 and V2 are legacy vault systems, while Arrakis Modular is the current core infrastructure that uses DEX-specific modules to manage liquidity across various AMMs. All families share governance and proxy patterns, with Modular relying on registries and beacons to deploy and upgrade vaults and modules.

## Contract Surface Quality

- Indexed contracts: 709; live-surface contracts included: 233 (117 live, 116 unknown).
- Excluded by liveness: 300 inactive, 176 singleton, 0 uninitialized.
- Deployment units: 8/92 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 16/46.

## Audit Coverage Summary

- Verified implementations audited: 10/83 (12.0%)
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 1
- Unverified implementations: 4
- Unique implementations: 87
- Raw deployments: 233
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $3,070.77
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: 2.4% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 8 | 9.6% | 2023-01 |
| unknown | Tier 2 | 6 | 7.2% | 2023-08 |
| Sherlock | Tier 1 | 2 | 2.4% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArrakisV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaf0f96...7b134d`](./contracts/ethereum-1/0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d/); ethereum `0xb5c3b2...6b09ba` | ✅ Audited |
| ArrakisV2Resolver | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4bc385...f905f5`](./contracts/ethereum-1/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); ethereum `0x535c5f...1cc7b8`; ethereum `0x767902...8339c7`; ethereum `0xb11bb8...c1f193` | ✅ Audited |
| GUniFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x9a999c...c58f40`](./contracts/ethereum-1/0x9a999c8835e975bbcd255d5e9e9a11f59cc58f40/); ethereum `0xc97476...065eaf`; ethereum `0xf51726...5772ce` | ✅ Audited |
| GUniPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x454bb7...49665b`](./contracts/ethereum-1/0x454bb75c7dbca9092981a7d4f641fac02e49665b/); ethereum `0x68c68f...9f94cf`; ethereum `0x6dfc8b...e1b48b`; ethereum `0xb542d5...797369`; ethereum `0xb54613...597d82` | ✅ Audited |
| PALMManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x8e0cfa...b3d511`](./contracts/ethereum-1/0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511/); ethereum `0xa39b17...41aeab`; ethereum `0xf4dc9d...0405dd` | ✅ Audited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x536efd...d14716`](./contracts/ethereum-1/0x536efd4570dca7c980848d10ea8ab7e502d14716/); ethereum `0xc73fb1...06df66` | ✅ Audited |
| Position | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8638fb...e49642`](./contracts/ethereum-1/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); ethereum `0xf7cb77...1faf44` | ✅ Audited |
| Underlying | unknown | ethereum | n/a | 4 deployments: ethereum [`0x39b989...3b780a`](./contracts/ethereum-1/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); ethereum `0x3b8d59...bc0988`; ethereum `0x4f3f69...563021`; ethereum `0x92cb4f...7c2bd2` | ✅ Audited |
| Vyper_contract | unknown | ethereum | unit-36968 (2 proxies) | 2 deployments: ethereum [`0x4974a4...92824f`](./contracts/ethereum-1/0x4974a491f43de6ebcd1b3528aa52383b7692824f/); ethereum `0x83c1ae...f93608` | ✅ Audited |
| Vyper_contract | unknown | polygon | unit-37014 (4 proxies) | 4 deployments: polygon [`0x56c5b0...c40275`](./contracts/polygon-137/0x56c5b00bdeb3cb8adf745650599f9adef3c40275/); polygon `0x5aabe8...a64e98`; polygon `0xb76359...f604ba`; polygon `0xe54e04...a5d270` | ✅ Audited |

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SovereignPool | core_logic | ethereum | n/a | [`0xd9a406...e68202`](./contracts/ethereum-1/0xd9a406dbc1a301b0d2ed5ba0d9398c4debe68202/) | ⚠️ Unaudited |
| ArrakisMetaVaultPublic | core_logic | ethereum | n/a | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | base | n/a | 2 deployments: base [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/); base `0xd9e51f...adefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | base | n/a | 3 deployments: base [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/); base `0x1a5273...0c33aa`; base `0xe7d57e...2b2f43` | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x820fb8...123982`](./contracts/ethereum-1/0x820fb8127a689327c863de8433278d6181123982/); base [`0x820fb8...123982`](./contracts/base-8453/0x820fb8127a689327c863de8433278d6181123982/); plasma [`0x820fb8...123982`](./contracts/plasma-9745/0x820fb8127a689327c863de8433278d6181123982/); arbitrum [`0x820fb8...123982`](./contracts/arbitrum-42161/0x820fb8127a689327c863de8433278d6181123982/) | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/); ethereum `0x9e890d...a073b0`; ethereum `0xdfe90e...bea1ff` | ⚠️ Unaudited |
| ArrakisStandardManager | governance | ethereum | unit-36964 | [`0x2e6e87...733bda`](./contracts/ethereum-1/0x2e6e879648293e939aa68ba4c6c129a1be733bda/) | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | ethereum | n/a | [`0x891e7e...63b8b3`](./contracts/ethereum-1/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/) | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | n/a | 3 deployments: ethereum [`0x89e4be...7f07d6`](./contracts/ethereum-1/0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6/); ethereum `0xbaffbf...bba929`; ethereum `0xccee73...5c8d9c` | ⚠️ Unaudited |
| AssetListingGUni | unknown | ethereum | n/a | [`0x67e4ed...507d2d`](./contracts/ethereum-1/0x67e4ede946b3d76c4c505566eb821a1470507d2d/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | unit-36967 (3 proxies) | 3 deployments: ethereum [`0x41346d...eee23b`](./contracts/ethereum-1/0x41346d3dd4b4688a388b24dac4014d75faeee23b/); ethereum `0x7e232a...65df00`; ethereum `0xc36681...4b6292` | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | n/a | 4 deployments: ethereum [`0x60c4a1...109014`](./contracts/ethereum-1/0x60c4a1483b2e4d57268078dbb677816d47109014/); ethereum `0xc50811...957358`; ethereum `0xccd64b...93c7d2`; ethereum `0xea3112...483044` | ⚠️ Unaudited |
| CLFactory | registry | base | n/a | 6 deployments: base [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/); base `0x5e7bb1...06809a`; base `0xade65c...89716a`; base `0xc6403d...1cd165`; base `0xec2ffc...9cd4d1`; base `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | 5 deployments: base [`0x11909e...7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/); base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x7dccb0...204b3e`; base `0xc0d208...cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | n/a | 5 deployments: base [`0x385293...f56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/); base `0x3be76d...998529`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | 6 deployments: base [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/); base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xec8e53...315831` | ⚠️ Unaudited |
| CLQuoter | periphery | bsc | n/a | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | ⚠️ Unaudited |
| CreationCodePrivateVault | core_logic | ethereum | n/a | [`0xdd10ee...27923f`](./contracts/ethereum-1/0xdd10ee185960ce42513bbb652cb24028cb27923f/) | ⚠️ Unaudited |
| CreationCodePublicVault | core_logic | ethereum | n/a | [`0xd9fbe9...419ef1`](./contracts/ethereum-1/0xd9fbe90c39d40157c7d25ba4359354b3f5419ef1/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | 2 deployments: base [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/); base `0xe945ab...2a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 4 deployments: base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | base | n/a | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xaf0c7d...bd928c`](./contracts/ethereum-1/0xaf0c7de1ea9c654355a10fc3b99a9ffea4bd928c/); ethereum `0xc2d819...129057` | ⚠️ Unaudited |
| GelatoUniV3Router | adapter | ethereum | n/a | [`0x5dacf7...a1e82b`](./contracts/ethereum-1/0x5dacf7b13bea52df7ba5222983b1ffe146a1e82b/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | n/a | 2 deployments: ethereum [`0x6f4411...7ab981`](./contracts/ethereum-1/0x6f441151b478e0d60588f221f1a35bcc3f7ab981/); ethereum `0xfb4e25...97f408` | ⚠️ Unaudited |
| GUniOracle | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x399e3b...cbbd5e`](./contracts/ethereum-1/0x399e3bb2bbd49c570aa6edc6ac390e0d0acbbd5e/); ethereum `0x50f614...069f6b`; ethereum `0x7843ea...0749d6` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5780bb...9e04a0`](./contracts/ethereum-1/0x5780bb3a9f579dc181b5fe00d8f56224dd9e04a0/); ethereum `0x9db7be...a590d5` | ⚠️ Unaudited |
| GUniResolver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b01f3...ede976`](./contracts/ethereum-1/0x3b01f3534c9505fe8e7cf42794a545a0d2ede976/); ethereum `0xc8b920...b3dc89` | ⚠️ Unaudited |
| GUniResolver02 | unknown | ethereum | n/a | [`0x72c321...e39ee5`](./contracts/ethereum-1/0x72c321acf29f2b4ccd0cd0d17f42d4e6a2e39ee5/) | ⚠️ Unaudited |
| GUniRouter | adapter | ethereum | n/a | [`0x8ca6fa...5007a7`](./contracts/ethereum-1/0x8ca6fa325bc32f86a12cc4964edf1f71655007a7/) | ⚠️ Unaudited |
| HOT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x326999...62132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/); ethereum `0xf23785...c20cde` | ⚠️ Unaudited |
| HOTExecutor | unknown | ethereum | n/a | [`0xc5a947...d10183`](./contracts/ethereum-1/0xc5a947a66a15205ed9cd02c3be24cdf5c1d10183/) | ⚠️ Unaudited |
| HOTOracleWrapper | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xf12679...9356dd`](./contracts/ethereum-1/0xf126798061555cf2778465bb5a001dc8d99356dd/); ethereum `0xf23d83...c4ee80` | ⚠️ Unaudited |
| MetaPoolFactory | registry | ethereum | n/a | [`0x8582bf...d7c216`](./contracts/ethereum-1/0x8582bf142be76fef830d23f590a2587f2ad7c216/) | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | ethereum | n/a | [`0xd61407...f9b962`](./contracts/ethereum-1/0xd61407b9b63956cfb61341aafefbd7eda1f9b962/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 4 deployments: base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x393550...5d81ad`; base `0x9574e3...3ada30`; base `0x9951ff...1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | base | n/a | 2 deployments: base [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/); base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | base | n/a | [`0xcd2a7d...65b555`](./contracts/base-8453/0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555/) | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0xe278c1...27a265`](./contracts/ethereum-1/0xe278c1944ba3321c1079abf94961e9ff1127a265/); ethereum `0xf95e09...b2bb0c` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x791d75...779603`](./contracts/ethereum-1/0x791d75f87a701c3f7dffcec1b6094db22c779603/); ethereum `0x87d101...461f6b`; ethereum `0xd2307b...a89317` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 3 deployments: base [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/); base `0x7dd33b...6238d8`; base `0xe702fc...928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-37029 | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-37031 | [`0xa990c6...b9d55f`](./contracts/base-8453/0xa990c6a764b73bf43cee5bb40339c3322fb9d55f/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-37033 | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | n/a | 5 deployments: base [`0x11b5f9...953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/); base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PancakeSwapV3MulticallHelper | periphery | base | n/a | [`0xf02961...dbd2ea`](./contracts/base-8453/0xf029611a16e1a8ca6aad83c08d2b017511dbd2ea/) | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/); bsc [`0x49083c...3d4b11`](./contracts/bsc-56/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | bsc | n/a | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | ⚠️ Unaudited |
| PancakeV4Oracle | operational_periphery | bsc | n/a | 7 deployments: bsc [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/); bsc `0x0748dd...7ebb35`; bsc `0x30c552...634a98`; bsc `0x31d00e...cd360d`; bsc `0x81d442...e16bb8`; bsc `0xda26e9...958abf`; bsc `0xf4e067...9e3340` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); ethereum `0xca0e1b...e96a25` | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | ethereum | n/a | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | ⚠️ Unaudited |
| ProtocolFactory | registry | ethereum | n/a | [`0xf09171...4cd72f`](./contracts/ethereum-1/0xf09171e8f0768ed5fc48e3945e4ac2027d4cd72f/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 9 deployments: ethereum [`0x7d996d...a01daf`](./contracts/ethereum-1/0x7d996d214913c6f2192bd52055468872b9a01daf/); ethereum `0x89dc63...2c9ca0`; ethereum `0xc00e8a...9b7b19`; ethereum `0xd0db41...9c0d8a`; ethereum `0xdd8f35...1518e7`; ethereum `0xdf4433...d8d8dd`; ethereum `0xe1de7b...5b4baf`; ethereum `0xe92501...0b7472`; ethereum `0xec0634...8a6fa7` | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 4 deployments: base [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/); base `0x3d4c22...271c6c`; base `0x514c8b...089259`; base `0x919e53...4601fc` | ⚠️ Unaudited |
| Redistributor | operational_periphery | base | n/a | 3 deployments: base [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/); base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| ReserveMath | unknown | ethereum | n/a | [`0xcc5e67...4e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | ethereum | n/a | 3 deployments: ethereum [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/); ethereum `0x8ef4d0...2dd04d`; ethereum `0xa552df...473398` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | ethereum | n/a | [`0xc6c533...9fb265`](./contracts/ethereum-1/0xc6c53369c36d6b4f4a6c195441fe2d33149fb265/) | ⚠️ Unaudited |
| SovereignPoolFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x56f0e2...5c17b6`](./contracts/ethereum-1/0x56f0e2c503b32dafbf3bd6482e73c36e7e5c17b6/); ethereum `0xa68d6c...6f9617`; ethereum `0xf57b45...cdaf2f` | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | 2 deployments: base [`0x698cb2...63a92f`](./contracts/base-8453/0x698cb2b6dd822994581fea6ea4fc755d1363a92f/); base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | base | unit-37032 | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 3 deployments: ethereum [`0x741d42...87e639`](./contracts/ethereum-1/0x741d420ee761fd4bd0b4573c916e30950c87e639/); ethereum `0xaf6f96...c40b7f`; ethereum `0xd3e822...23a60c` | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | ethereum | n/a | [`0x8c0283...ace35e`](./contracts/ethereum-1/0x8c02839babf7788d9d7043614b2f85cdd8ace35e/) | ⚠️ Unaudited |
| UniV4Oracle | operational_periphery | arbitrum | n/a | 2 deployments: ethereum `0xe1ef0c...434f32`; arbitrum [`0x173229...c19ff9`](./contracts/arbitrum-42161/0x173229f540e85376aa180d41928994163ac19ff9/) | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | ethereum | n/a | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6cb442...00be3e`](./contracts/base-8453/0x6cb442acf35158d5eda88fe602221b67b400be3e/) | ⚠️ Unaudited |
| ValantisModulePrivate | unknown | ethereum | n/a | [`0x7e2fc9...9e55bc`](./contracts/ethereum-1/0x7e2fc9b2d37ea3e771b6f2375915b87cca9e55bc/) | ⚠️ Unaudited |
| ValantisModulePublic | unknown | ethereum | n/a | [`0xdef855...0252f1`](./contracts/ethereum-1/0xdef855fd1c110887f53045d42aba3f47840252f1/) | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | ethereum | n/a | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | ⚠️ Unaudited |
| WrappedFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8b4f2f...cf74c2`](./contracts/ethereum-1/0x8b4f2f26077441aaa0a45f957436bc72b7cf74c2/); ethereum `0x99997f...93d662` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UpgradeableBeacon | registry | bsc | n/a | 38 deployments: ethereum `0x143687...627255`; ethereum `0x4cc1bb...5b9468`; ethereum `0x98e373...687bc5`; ethereum `0xdf4975...4b6a38`; ethereum `0xe42a4b...909b72`; ethereum `0xe973cf...b0351b`; ethereum `0xff0474...f47bd9`; optimism `0xf6b2a7...c83dd7`; bsc [`0x00057d...cf6c04`](./contracts/bsc-56/0x00057dbd24e1264e9bf2d63dbe428234ebcf6c04/); bsc `0x205e64...796199`; bsc `0x6028dc...7090c7`; bsc `0x68c0d8...20f07a`; bsc `0x6aba59...8501b7`; bsc `0x741d42...87e639`; bsc `0x902912...8d2c75`; bsc `0xb4da34...05bb5f`; bsc `0xb6f7f6...4fb3ca`; bsc `0xc0b7fa...b987f0`; bsc `0xe137ae...68ce58`; bsc `0xef770d...c2037f`; unichain `0xc16489...a740cc`; base `0x243727...fa6f9b`; base `0x568336...25ac6f`; base `0x618e7d...e59778`; base `0x6b81f1...78df08`; base `0x82c0a1...75067f`; base `0x8b5c39...1cb82f`; base `0x998a52...6a0a55`; base `0xa8c0b4...45342f`; base `0xd7b402...d6b283`; base `0xdf4975...4b6a38`; base `0xe2641d...733bb2`; plasma `0x9a4935...293345`; arbitrum `0x1ec500...bd7327`; arbitrum `0x28a9a4...3cf6cb`; arbitrum `0x75dd57...8534e6`; arbitrum `0x9fe203...78ab6f`; arbitrum `0xf8bf2c...b22a7e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x154878...04ec38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde6b49...66766c` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xcc8989...6006e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Arrakis_Audit_Report_Sherlock.pdf (also discovered via alternate URL)](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 6 | high |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 12 | high |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 14 | high |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | contract_name | 8 | high |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 5 | high |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 6 | high |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd9a406...e68202`](./contracts/ethereum-1/0xd9a406dbc1a301b0d2ed5ba0d9398c4debe68202/) | SovereignPool | core_logic | $3,070.09 | Verified native implementation with $3,070.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ArrakisMetaVaultPublic | core_logic | $0.68 | Verified native implementation with $0.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/) | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/) | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x820fb8...123982`](./contracts/ethereum-1/0x820fb8127a689327c863de8433278d6181123982/) | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/) | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x891e7e...63b8b3`](./contracts/ethereum-1/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/) | ArrakisV2Beacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89e4be...7f07d6`](./contracts/ethereum-1/0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e4ed...507d2d`](./contracts/ethereum-1/0x67e4ede946b3d76c4c505566eb821a1470507d2d/) | AssetListingGUni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | CLQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd10ee...27923f`](./contracts/ethereum-1/0xdd10ee185960ce42513bbb652cb24028cb27923f/) | CreationCodePrivateVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9fbe9...419ef1`](./contracts/ethereum-1/0xd9fbe90c39d40157c7d25ba4359354b3f5419ef1/) | CreationCodePublicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf0c7d...bd928c`](./contracts/ethereum-1/0xaf0c7de1ea9c654355a10fc3b99a9ffea4bd928c/) | GelatoUniV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f4411...7ab981`](./contracts/ethereum-1/0x6f441151b478e0d60588f221f1a35bcc3f7ab981/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399e3b...cbbd5e`](./contracts/ethereum-1/0x399e3bb2bbd49c570aa6edc6ac390e0d0acbbd5e/) | GUniOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b01f3...ede976`](./contracts/ethereum-1/0x3b01f3534c9505fe8e7cf42794a545a0d2ede976/) | GUniResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72c321...e39ee5`](./contracts/ethereum-1/0x72c321acf29f2b4ccd0cd0d17f42d4e6a2e39ee5/) | GUniResolver02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ca6fa...5007a7`](./contracts/ethereum-1/0x8ca6fa325bc32f86a12cc4964edf1f71655007a7/) | GUniRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x326999...62132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/) | HOT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5a947...d10183`](./contracts/ethereum-1/0xc5a947a66a15205ed9cd02c3be24cdf5c1d10183/) | HOTExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12679...9356dd`](./contracts/ethereum-1/0xf126798061555cf2778465bb5a001dc8d99356dd/) | HOTOracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd61407...f9b962`](./contracts/ethereum-1/0xd61407b9b63956cfb61341aafefbd7eda1f9b962/) | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe278c1...27a265`](./contracts/ethereum-1/0xe278c1944ba3321c1079abf94961e9ff1127a265/) | ModulePrivateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x791d75...779603`](./contracts/ethereum-1/0x791d75f87a701c3f7dffcec1b6094db22c779603/) | ModulePublicRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11b5f9...953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | PancakeSwapV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/) | PancakeV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf09171...4cd72f`](./contracts/ethereum-1/0xf09171e8f0768ed5fc48e3945e4ac2027d4cd72f/) | ProtocolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/) | Redistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5e67...4e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ReserveMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/) | RouterSwapExecutor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6c533...9fb265`](./contracts/ethereum-1/0xc6c53369c36d6b4f4a6c195441fe2d33149fb265/) | RouterSwapResolver | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56f0e2...5c17b6`](./contracts/ethereum-1/0x56f0e2c503b32dafbf3bd6482e73c36e7e5c17b6/) | SovereignPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x173229...c19ff9`](./contracts/arbitrum-42161/0x173229f540e85376aa180d41928994163ac19ff9/) | UniV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 20 |
| standard_library | 6 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=421

Zero-match audit list:

- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf
- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
