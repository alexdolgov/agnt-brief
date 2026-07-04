# Agentic Audit Brief: Pendle

## Project Overview

- Project: Pendle (`pendle`)
- Website: [https://pendle.finance/](https://pendle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.215Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, mantle, optimism, plasma, sonic
- Contract surface: 467 unique implementations (467 raw deployments)
- DeFi Llama TVL: $1,217,850,291.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 389 project-authored contract(s) across 10 chain(s); 167 ERC20 tokens, 2 ERC721 NFTs, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 80 common project-authored base contract(s) (pendlebasetoken, pendleerc20permitupg, pendleerc20upg). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 467; live-surface contracts included: 467 (457 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 117/457 (25.6%)
- Deployed-live implementations: 457 of 467 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 117/467
- Verified + Unaudited implementations: 350
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 467
- Raw deployments: 467
- Audits discovered: 24 (24 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 20
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 13 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 117 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 22.3% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 79 | 16.9% | 2025-08 |
| WatchPug | Tier 2 | 33 | 7.1% | 2025-10 |
| CMichel | Tier 2 | 31 | 6.6% | 2022-08 |
| Dingbats | Tier 2 | 31 | 6.6% | n/a |
| Spearbit | Tier 1 | 27 | 5.8% | 2025-08 |
| Dedaub | Tier 2 | 25 | 5.4% | 2022-07 |
| 0xleastwood | Tier 2 | 18 | 3.9% | 2022-09 |
| HickupHH3 | Tier 2 | 8 | 1.7% | 2025-09 |
| Ackee Blockchain | Tier 2 | 6 | 1.3% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (117)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionCallback | unknown | ethereum | n/a | [`0x09f4ac...1c3d07`](./contracts/ethereum-1/0x09f4acb1023fe06e0f7a2f8f1ae9ae2c011c3d07/) | ✅ Audited |
| ActionSwapPT | unknown | ethereum | n/a | [`0x000000...6f7ea0`](./contracts/ethereum-1/0x0000000001e4ef00d069e71d6ba041b0a16f7ea0/) | ✅ Audited |
| ActionSwapPTYT | unknown | ethereum | n/a | [`0x5f438e...41c3b7`](./contracts/ethereum-1/0x5f438e5d032fd933fca63335a8097b466241c3b7/) | ✅ Audited |
| ActionVePendleStatic | unknown | ethereum | n/a | [`0x07f498...a403d2`](./contracts/ethereum-1/0x07f4989e341bf6725f1074b41c09e5d08ea403d2/) | ✅ Audited |
| BaseSplitCodeFactoryContract | unknown | optimism | n/a | [`0x051dcd...96b1fd`](./contracts/optimism-10/0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd/) | ✅ Audited |
| EmptyUUPS | unknown | ethereum | n/a | [`0x3f69a9...297807`](./contracts/ethereum-1/0x3f69a9a183c62cff7ed5b07a3102a9c36e297807/) | ✅ Audited |
| FinalizeAndBroadcast | unknown | ethereum | n/a | [`0xcfaa95...5fd4ee`](./contracts/ethereum-1/0xcfaa9540332afa3974bceed79bdd24d86c5fd4ee/) | ✅ Audited |
| LimitBackendHelper | unknown | ethereum | n/a | [`0x599609...08bfcd`](./contracts/ethereum-1/0x5996098a8bfa69fdff93e21228d895ba3608bfcd/) | ✅ Audited |
| LimitMinting | unknown | arbitrum | n/a | [`0xab9aec...70d68b`](./contracts/arbitrum-42161/0xab9aece78f5a6e68fe1b5cc5e172302e9070d68b/) | ✅ Audited |
| LiquiditySeedingHelper | unknown | bsc | n/a | [`0x203d3a...db769c`](./contracts/bsc-56/0x203d3a2fd52973a34bab6fc50e3b69863bdb769c/) | ✅ Audited |
| OracleLib | unknown | ethereum | n/a | [`0x02176d...c10ecc`](./contracts/ethereum-1/0x02176d640657740539f70eea98501ebbf1c10ecc/) | ✅ Audited |
| PendleAaveV3SY | unknown | ethereum | n/a | [`0x8c28d2...9dfb74`](./contracts/ethereum-1/0x8c28d28bad669afadc37b034a8070d6d7b9dfb74/) | ✅ Audited |
| PendleAgETHSY | unknown | ethereum | n/a | [`0xb1b915...02752a`](./contracts/ethereum-1/0xb1b9150f2085f6a553b547099977181ca802752a/) | ✅ Audited |
| PendleAmphorWstETHVaultSY | unknown | ethereum | n/a | [`0x33a269...714b6d`](./contracts/ethereum-1/0x33a269066457e5e3dc9b6dd1c7d854a7df714b6d/) | ✅ Audited |
| PendleAnkrBNBSY | unknown | bsc | n/a | [`0x58732f...21580d`](./contracts/bsc-56/0x58732f1c1243a0d5876a601fb8d1ee508b21580d/) | ✅ Audited |
| PendleArbitrumEPendleSY | unknown | arbitrum | n/a | [`0xd302d7...3f18e3`](./contracts/arbitrum-42161/0xd302d7fd2c9375a433018fdfa5613be6ad3f18e3/) | ✅ Audited |
| PendleArbitrumStakedEthSY | unknown | arbitrum | n/a | [`0x2ca0ba...0f4c69`](./contracts/arbitrum-42161/0x2ca0bab426b0c4245ce79433638cc175b60f4c69/) | ✅ Audited |
| PendleBridgedLSDSY | unknown | optimism | n/a | [`0x96a528...c24286`](./contracts/optimism-10/0x96a528f4414ac3ccd21342996c93f2ecdec24286/) | ✅ Audited |
| PendleCamelotV1VolatileSY | unknown | arbitrum | n/a | [`0x239c7c...64c56e`](./contracts/arbitrum-42161/0x239c7c530f194e9e00856b5c55a95d485f64c56e/) | ✅ Audited |
| PendleCornLBTCSY | unknown | ethereum | n/a | [`0x9d6ec7...7f223e`](./contracts/ethereum-1/0x9d6ec7a7b051b32205f74b140a0fa6f09d7f223e/) | ✅ Audited |
| PendleCornPumpBTCSY | unknown | ethereum | n/a | [`0x56bb34...aaa430`](./contracts/ethereum-1/0x56bb34a12b70046b0a03ee63392c09cdddaaa430/) | ✅ Audited |
| PendleCurveFraxUsdcSY | unknown | ethereum | n/a | [`0xd393d1...81bc04`](./contracts/ethereum-1/0xd393d1ddd6b8811a86d925f5e14014282581bc04/) | ✅ Audited |
| PendleCUSDAdapter | unknown | ethereum | n/a | [`0xae8bc0...21d33b`](./contracts/ethereum-1/0xae8bc036451af7c8f96fd90642e163392d21d33b/) | ✅ Audited |
| PendleDolomiteSY | unknown | arbitrum | n/a | [`0x3055a7...2bc7e2`](./contracts/arbitrum-42161/0x3055a746e040bd05ad1806840ca0114d632bc7e2/) | ✅ Audited |
| PendleERC20WithSupplyCapSY | unknown | ethereum | n/a | [`0x1a7096...ac4f3f`](./contracts/ethereum-1/0x1a7096563c94029dfd55e625a19f099726ac4f3f/) | ✅ Audited |
| PendleERC4626NotRedeemableToAssetSY | unknown | ethereum | n/a | [`0xf6193c...ec980f`](./contracts/ethereum-1/0xf6193c65cf3d1cedde0ff9d8cb9781ad21ec980f/) | ✅ Audited |
| PendleERC4626NotRedeemableToAssetSYV2 | unknown | ethereum | n/a | [`0x10222f...02ed8e`](./contracts/ethereum-1/0x10222f882f3594455343abc9831213854902ed8e/) | ✅ Audited |
| PendleERC4626SY | unknown | ethereum | n/a | [`0x0a26e7...333f08`](./contracts/ethereum-1/0x0a26e7ab5c554232314a8d459eff0ede72333f08/) | ✅ Audited |
| PendleERC4626SYV2 | unknown | ethereum | n/a | [`0x292e67...57c2fc`](./contracts/ethereum-1/0x292e67fe392b811d486c81eceb25ea96af57c2fc/) | ✅ Audited |
| PendleEUSDESY | unknown | ethereum | n/a | [`0x63d06b...3e5661`](./contracts/ethereum-1/0x63d06b18fc90bafaf5625e3a0d8e3e6b7f3e5661/) | ✅ Audited |
| PendleEUSDSY | unknown | ethereum | n/a | [`0x7e16e4...c207f1`](./contracts/ethereum-1/0x7e16e4253ce4a1c96422a9567b23b4b5ebc207f1/) | ✅ Audited |
| PendleExitAll | unknown | arbitrum | n/a | [`0xe05082...bbb04c`](./contracts/arbitrum-42161/0xe05082b184a34668cd8a904d85fa815802bbb04c/) | ✅ Audited |
| PendleEzETHL2SY | unknown | arbitrum | n/a | [`0x0de802...8c5202`](./contracts/arbitrum-42161/0x0de802e3d6cc9145a150bbdc8da9f988a98c5202/) | ✅ Audited |
| PendleEzETHSY | unknown | ethereum | n/a | [`0x22e12a...4c716d`](./contracts/ethereum-1/0x22e12a50e3ca49fb183074235cb1db84fe4c716d/) | ✅ Audited |
| PendleFluxLendingSY | unknown | ethereum | n/a | [`0xdeaa58...6f2d76`](./contracts/ethereum-1/0xdeaa5833d09179c20b55601453b9dd22216f2d76/) | ✅ Audited |
| PendleGaugeControllerMainchainUpg | unknown | ethereum | n/a | [`0x11a72d...fd5f47`](./contracts/ethereum-1/0x11a72dc6d320f1de830d17634ae6524403fd5f47/) | ✅ Audited |
| PendleGaugeControllerSidechainUpg | unknown | mantle | n/a | [`0x07b2c3...cbf733`](./contracts/mantle-5000/0x07b2c3e23452321c3bad2b37e878ef4e81cbf733/) | ✅ Audited |
| PendleGaugeControllerUpg | unknown | base | n/a | [`0x17f100...993d58`](./contracts/base-8453/0x17f100fb4be2707675c6439468d38249dd993d58/) | ✅ Audited |
| PendleGDaiSY | unknown | arbitrum | n/a | [`0x07c3de...af7e14`](./contracts/arbitrum-42161/0x07c3de6f0c21a52538a15d00dbf2434bb7af7e14/) | ✅ Audited |
| PendleGMV2TokenSY | unknown | arbitrum | n/a | [`0xa9ad16...1ae631`](./contracts/arbitrum-42161/0xa9ad16733bfdd3e2da154a18dc804efe9e1ae631/) | ✅ Audited |
| PendleGovernanceManager | unknown | ethereum | n/a | [`0x5a05a6...142476`](./contracts/ethereum-1/0x5a05a64115bd86f220a26461fde3a011c7142476/) | ✅ Audited |
| PendleGUSDCSY | unknown | arbitrum | n/a | [`0x0a9ed4...221d09`](./contracts/arbitrum-42161/0x0a9ed458e6c283d1e84237e3347333aa08221d09/) | ✅ Audited |
| PendleHgETHSY | unknown | ethereum | n/a | [`0x378fa6...dfc723`](./contracts/ethereum-1/0x378fa6c08c86d76f0c2511a8addd9464d3dfc723/) | ✅ Audited |
| PendleKyberElasticSY | unknown | arbitrum | n/a | [`0x77bda3...ffe3c5`](./contracts/arbitrum-42161/0x77bda306ce23890129b572381999369732ffe3c5/) | ✅ Audited |
| PendleL2LRTSY | unknown | arbitrum | n/a | [`0x0e7e95...854e70`](./contracts/arbitrum-42161/0x0e7e950db34368b376ce5683f0a3113981854e70/) | ✅ Audited |
| PendleLBTCSY | unknown | ethereum | n/a | [`0xc781c0...5c6f36`](./contracts/ethereum-1/0xc781c0cc527cb8c351be3a64c690216c535c6f36/) | ✅ Audited |
| PendleLooksStakingSY | unknown | ethereum | n/a | [`0x35c163...ead345`](./contracts/ethereum-1/0x35c16314d6ee4753289e5cc15a5c5e1dd4ead345/) | ✅ Audited |
| PendleMarket | unknown | ethereum | n/a | [`0xd0354d...eccca2`](./contracts/ethereum-1/0xd0354d4e7bcf345fb117cabe41acadb724eccca2/) | ✅ Audited |
| PendleMarketFactory | unknown | ethereum | n/a | [`0x27b1da...740784`](./contracts/ethereum-1/0x27b1dacd74688af24a64bd3c9c1b143118740784/) | ✅ Audited |
| PendleMarketFactoryV6Upg | unknown | optimism | n/a | [`0x1f6251...0e6bf4`](./contracts/optimism-10/0x1f6251f919343ac654122f315d58ccd9190e6bf4/) | ✅ Audited |
| PendleMlpSY | unknown | arbitrum | n/a | [`0x4b3f79...b3ba37`](./contracts/arbitrum-42161/0x4b3f79ce3d5d752064288fd2be968a1c21b3ba37/) | ✅ Audited |
| PendleMorpho4626AssetSY | unknown | ethereum | n/a | [`0x8077b6...34d130`](./contracts/ethereum-1/0x8077b6f34e9193d5bbb0ef06a73119060534d130/) | ✅ Audited |
| PendlePoolDeployHelperV2 | unknown | sonic | n/a | [`0x0b692f...38e655`](./contracts/sonic-146/0x0b692f06ca82e3075dc537224450885fd138e655/) | ✅ Audited |
| PendlePrincipalToken | unknown | berachain | n/a | [`0x2719e6...36376f`](./contracts/berachain-80094/0x2719e657ec3b3cbe521a18e640ca55799836376f/) | ✅ Audited |
| PendlePrincipalTokenV2 | unknown | bsc | n/a | [`0x04eb6b...531c0c`](./contracts/bsc-56/0x04eb6b56ff53f457c8e857ca8d4fbc8d9a531c0c/) | ✅ Audited |
| PendlePtOracle | unknown | optimism | n/a | [`0x0b692f...38e655`](./contracts/optimism-10/0x0b692f06ca82e3075dc537224450885fd138e655/) | ✅ Audited |
| PendlePumpBTCSY | unknown | ethereum | n/a | [`0x78f9af...f19ab2`](./contracts/ethereum-1/0x78f9afec0afd297bea08098ed01719b0b0f19ab2/) | ✅ Audited |
| PendleREZtakeSY | unknown | ethereum | n/a | [`0x8eb1a6...20c3e4`](./contracts/ethereum-1/0x8eb1a6a1296f41ccaa20d13b952a7fca1b20c3e4/) | ✅ Audited |
| PendleRouter | unknown | arbitrum | n/a | [`0x15afc7...9c8256`](./contracts/arbitrum-42161/0x15afc70cbf0e173f0ac0861d6b0b776d589c8256/) | ✅ Audited |
| PendleRsETHSY | unknown | ethereum | n/a | [`0x730a5e...da793c`](./contracts/ethereum-1/0x730a5e2acebccaa5e9095723b3cb862739da793c/) | ✅ Audited |
| PendleRswETHSY | unknown | ethereum | n/a | [`0x778672...c615d9`](./contracts/ethereum-1/0x7786729eee8b9d30fe7d91fdff23a0f1d0c615d9/) | ✅ Audited |
| PendleSENASY | unknown | ethereum | n/a | [`0xa36ecc...a12c3d`](./contracts/ethereum-1/0xa36ecca8b7624d224f01cd6649c8afad3da12c3d/) | ✅ Audited |
| PendleSfrxEthSY | unknown | ethereum | n/a | [`0xeb8300...210673`](./contracts/ethereum-1/0xeb83006b0aaddd15ad8afbebe2f4e0937f210673/) | ✅ Audited |
| PendleSiloWithIncentiveNonBorrowableSY | unknown | arbitrum | n/a | [`0x374c07...29a43a`](./contracts/arbitrum-42161/0x374c07997b3c0df6db0f370ed8561404b729a43a/) | ✅ Audited |
| PendleSiloWithIncentiveSY | unknown | arbitrum | n/a | [`0x0c7fdb...ae32d3`](./contracts/arbitrum-42161/0x0c7fdb9d3f9b053bb5da838edae4414787ae32d3/) | ✅ Audited |
| PendleSophonFarmingSY | unknown | ethereum | n/a | [`0x065347...715246`](./contracts/ethereum-1/0x065347c1dd7a23aa043e3844b4d0746ff7715246/) | ✅ Audited |
| PendleSophonPointManager | unknown | ethereum | n/a | [`0x74c5a0...45d986`](./contracts/ethereum-1/0x74c5a0d5dfcc6d4527c849f09ecc360c5345d986/) | ✅ Audited |
| PendleSparkLinearDiscountOracle | unknown | ethereum | n/a | [`0x3fa71e...9e7d35`](./contracts/ethereum-1/0x3fa71e3f2788f85d8c4f9c3a05b038eaf29e7d35/) | ✅ Audited |
| PendleStakingUSDSSY | unknown | ethereum | n/a | [`0xdb0170...8415de`](./contracts/ethereum-1/0xdb01707567cf99c2e2215f1bd8ca567d998415de/) | ✅ Audited |
| PendleSUSDESY | unknown | ethereum | n/a | [`0x0badf3...0387d2`](./contracts/ethereum-1/0x0badf36fa17a5c5bfb552d56400c0894dd0387d2/) | ✅ Audited |
| PendleSUSDSSY | unknown | ethereum | n/a | [`0xbe3d4e...018ba7`](./contracts/ethereum-1/0xbe3d4ec488a0a042bb86f9176c24f8cd54018ba7/) | ✅ Audited |
| PendleSwapAggregator | unknown | arbitrum | n/a | [`0x0e669e...95fbb5`](./contracts/arbitrum-42161/0x0e669e08bd717d7f9c9de158636bd8561295fbb5/) | ✅ Audited |
| PendleSwapArbitrum | unknown | arbitrum | n/a | [`0x4546ff...56112c`](./contracts/arbitrum-42161/0x4546ff0fbc6fb29916ca56b4f95744b0b356112c/) | ✅ Audited |
| PendleSwapEthereum | unknown | ethereum | n/a | [`0x2065e1...d5af41`](./contracts/ethereum-1/0x2065e12735d678b23ec926603180c96623d5af41/) | ✅ Audited |
| PendleSwapL1 | unknown | ethereum | n/a | [`0x1e8b6a...180ad1`](./contracts/ethereum-1/0x1e8b6ac39f8a33f46a6eb2d1acd1047b99180ad1/) | ✅ Audited |
| PendleSwapL2 | unknown | arbitrum | n/a | [`0x1f5b1f...965e35`](./contracts/arbitrum-42161/0x1f5b1f22585f430c3a1a7d16e1e1100945965e35/) | ✅ Audited |
| PendleSwellRswETHStakingSY | unknown | ethereum | n/a | [`0x4f3a7a...5d38ad`](./contracts/ethereum-1/0x4f3a7a07a968b67f1f9692b70242f10e665d38ad/) | ✅ Audited |
| PendleSyrupSY | unknown | ethereum | n/a | [`0xc9e9c8...71551d`](./contracts/ethereum-1/0xc9e9c85b33e87fde85c44dbf72b4b842a071551d/) | ✅ Audited |
| PendleUniETHSY | unknown | ethereum | n/a | [`0xc430db...6d16b7`](./contracts/ethereum-1/0xc430db19339a3051192233b4c49f9ab3dc6d16b7/) | ✅ Audited |
| PendleUSDESY | unknown | ethereum | n/a | [`0x248d83...b9936e`](./contracts/ethereum-1/0x248d83f7ac03cebcc06d5c1a52c9b5d0ebb9936e/) | ✅ Audited |
| PendleUsualUSD0PPSY | unknown | ethereum | n/a | [`0x524538...c461f7`](./contracts/ethereum-1/0x52453825c287ddef62d647ce51c0979d27c461f7/) | ✅ Audited |
| PendleVenusBNBSY | unknown | bsc | n/a | [`0x7b5a43...375c19`](./contracts/bsc-56/0x7b5a43070bd97c2814f0d8b3b31ed53450375c19/) | ✅ Audited |
| PendleVotingControllerUpg | unknown | ethereum | n/a | [`0x1fad3c...2c1bd5`](./contracts/ethereum-1/0x1fad3ce1c1ab563441d58b79e49cb0ebc12c1bd5/) | ✅ Audited |
| PendleWbEthSY | unknown | bsc | n/a | [`0x96f77f...b966f9`](./contracts/bsc-56/0x96f77f24b3d17166fcaf3a9e3b8330ff38b966f9/) | ✅ Audited |
| PendleWEEthSY | unknown | ethereum | n/a | [`0xac0047...970d65`](./contracts/ethereum-1/0xac0047886a985071476a1186be89222659970d65/) | ✅ Audited |
| PendleWstEthSY | unknown | ethereum | n/a | [`0xcbc72d...40c0bc`](./contracts/ethereum-1/0xcbc72d92b2dc8187414f6734718563898740c0bc/) | ✅ Audited |
| PendleYieldContractFactory | unknown | arbitrum | n/a | [`0x02fafe...f82b32`](./contracts/arbitrum-42161/0x02fafec86f91cd58a86ca6ae846ebc7df0f82b32/) | ✅ Audited |
| PendleYieldContractFactoryUpg | unknown | optimism | n/a | [`0x07f498...a403d2`](./contracts/optimism-10/0x07f4989e341bf6725f1074b41c09e5d08ea403d2/) | ✅ Audited |
| sAPE | unknown | ethereum | n/a | [`0x47ba20...1539c5`](./contracts/ethereum-1/0x47ba20283be4d72d4afb1862994f4203551539c5/) | ✅ Audited |
| StakedPendle | unknown | ethereum | n/a | [`0x999999...664144`](./contracts/ethereum-1/0x999999999991e178d52cd95afd4b00d066664144/) | ✅ Audited |
| SYRedeemAndSwap | unknown | ethereum | n/a | [`0xb50057...86823f`](./contracts/ethereum-1/0xb5005751f2ac076a5a612a8be8f3b953dd86823f/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4e91f1...5afb32`](./contracts/ethereum-1/0x4e91f1eb389242b0f718859158c1d912055afb32/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xecac9c...5c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x09f317...4c0f8c`](./contracts/bsc-56/0x09f317b127bcc9d16f5dd17cadbeda9d034c0f8c/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x27faf9...ff1bea`](./contracts/bsc-56/0x27faf900007b4cba7803000251ec96bc69ff1bea/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x02adf7...833a84`](./contracts/sonic-146/0x02adf72d5d06a9c92136562eb237c07696833a84/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x068def...188ea3`](./contracts/sonic-146/0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x0ab3ae...8fa6d6`](./contracts/sonic-146/0x0ab3ae25c42a2f3748a018556989355d568fa6d6/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x1e5f46...7da241`](./contracts/sonic-146/0x1e5f46718bf09697db487bc8de2204cff47da241/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x27b1da...740784`](./contracts/sonic-146/0x27b1dacd74688af24a64bd3c9c1b143118740784/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x4b2726...534d30`](./contracts/sonic-146/0x4b272672a58da22b213e733f5aba48cfec534d30/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x5363d2...f9962d`](./contracts/mantle-5000/0x5363d2a82b9e644736e9000bae076e5178f9962d/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x9e1084...2cbf60`](./contracts/base-8453/0x9e10848206ae6e74af868490554e2fac3e2cbf60/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0xecac9c...5c11c1`](./contracts/base-8453/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x4b4e08...7fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x0f2b6a...cd9540`](./contracts/berachain-80094/0x0f2b6a162d14ae999a596a6b7459a9ef30cd9540/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x1ec04e...33e25e`](./contracts/berachain-80094/0x1ec04edcc6571ec0691642a72cf5f3cd1233e25e/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x2284e9...046068`](./contracts/berachain-80094/0x2284e9a9a45829431317dcab3aa3a24878046068/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x41d81d...1a0d64`](./contracts/berachain-80094/0x41d81daf401a0aa7422a769243fa933f351a0d64/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x428f2f...6165c8`](./contracts/berachain-80094/0x428f2f93afac3f96b0de59854038c585e06165c8/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x43d030...72011f`](./contracts/berachain-80094/0x43d03031fab845065e9cefe89dd122d63f72011f/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x9acc60...6bd320`](./contracts/berachain-80094/0x9acc60f915dfcd190d270fc92567ae71776bd320/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0x9e88f2...362109`](./contracts/berachain-80094/0x9e88f2990c48315dace55ffda9950fc287362109/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0xc61c86...0cafa9`](./contracts/berachain-80094/0xc61c866b6fdc36f88ec368b969c6d7cb810cafa9/) | ✅ Audited |
| VotingEscrowPendleMainchain | unknown | ethereum | n/a | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | ✅ Audited |
| VotingEscrowPendleSidechain | unknown | base | n/a | [`0x051dcd...96b1fd`](./contracts/base-8453/0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd/) | ✅ Audited |
| VotingResultBroadcaster | unknown | ethereum | n/a | [`0xd8daa6...1c4744`](./contracts/ethereum-1/0xd8daa686de90bf52225628e238b7b392fa1c4744/) | ✅ Audited |

### ⚠️ Verified + Unaudited (350)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionAddRemoveLiq | unknown | mantle | n/a | [`0x1fdfed...576aaf`](./contracts/mantle-5000/0x1fdfed03c08c7e10bed4964dbe7c66c394576aaf/) | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | berachain | n/a | [`0x026644...d07507`](./contracts/berachain-80094/0x026644dc6fc4cf22a45ad14231090c7736d07507/) | ⚠️ Unaudited |
| ActionCallbackV3 | unknown | sonic | n/a | [`0x8d4077...f51c5e`](./contracts/sonic-146/0x8d407705b0a3d78167e979f71e009f5820f51c5e/) | ⚠️ Unaudited |
| ActionInfoStatic | unknown | berachain | n/a | [`0x25e5e9...cb55fd`](./contracts/berachain-80094/0x25e5e9e134ddaf1d378fcb0ec8dbd3f148cb55fd/) | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | bsc | n/a | [`0x026644...d07507`](./contracts/bsc-56/0x026644dc6fc4cf22a45ad14231090c7736d07507/) | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | mantle | n/a | [`0x203d3a...db769c`](./contracts/mantle-5000/0x203d3a2fd52973a34bab6fc50e3b69863bdb769c/) | ⚠️ Unaudited |
| ActionMintRedeem | unknown | mantle | n/a | [`0x412511...fc2e8b`](./contracts/mantle-5000/0x412511d47254d36c1e572d81a238a7852ffc2e8b/) | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | ethereum | n/a | [`0x1812a7...437ed6`](./contracts/ethereum-1/0x1812a77aa47f40c84fc46deb0644c1a486437ed6/) | ⚠️ Unaudited |
| ActionMisc | unknown | mantle | n/a | [`0x0ff7cc...d36a64`](./contracts/mantle-5000/0x0ff7ccb71d901bca95be412ed20dd3e34ed36a64/) | ⚠️ Unaudited |
| ActionMiscV3 | unknown | ethereum | n/a | [`0x000000...7b68a0`](./contracts/ethereum-1/0x00000000005bbb0ef59571e58418f9a4357b68a0/) | ⚠️ Unaudited |
| ActionStorageV4 | unknown | berachain | n/a | [`0x2700ad...96eabb`](./contracts/berachain-80094/0x2700adb035f82a11899ce1d3f1bf8451c296eabb/) | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | arbitrum | n/a | [`0x198d70...a73d24`](./contracts/arbitrum-42161/0x198d701ddd6288737f22246c3102edf1c0a73d24/) | ⚠️ Unaudited |
| ActionSwapYT | unknown | mantle | n/a | [`0x05320f...d9d335`](./contracts/mantle-5000/0x05320f5ff1748bc792c42ed7eea2906ba6d9d335/) | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | ethereum | n/a | [`0x32ed8f...1d158d`](./contracts/ethereum-1/0x32ed8fc44a5608d22519dca5a5a135f9661d158d/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0xf5aa40...d0af54`](./contracts/ethereum-1/0xf5aa4099b1857a5d8e1ee8b290d21d3a74d0af54/) | ⚠️ Unaudited |
| AddressProvider | unknown | mantle | n/a | [`0x05c308...564dc3`](./contracts/mantle-5000/0x05c3087e2b30f10afc4755d9f9776dc56f564dc3/) | ⚠️ Unaudited |
| AdvancedWithdrawer | unknown | avalanche | n/a | [`0x215061...e8f633`](./contracts/avalanche-43114/0x2150617bc0b487112b52cc0bc7dc484b95e8f633/) | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | ethereum | n/a | [`0x09d4b4...a1da29`](./contracts/ethereum-1/0x09d4b49b12f567b96b387ce5823059bb7ba1da29/) | ⚠️ Unaudited |
| Airdrop | unknown | avalanche | n/a | [`0x0c58c2...3902d9`](./contracts/avalanche-43114/0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | avalanche | n/a | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | avalanche | n/a | [`0x130966...b8c18d`](./contracts/avalanche-43114/0x130966628846bfd36ff31a822705796e8cb8c18d/) | ⚠️ Unaudited |
| AToken | unknown | ethereum | n/a | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | avalanche | n/a | [`0x69bfea...58c7b1`](./contracts/avalanche-43114/0x69bfea0307a071c3e6cd217486b16d20bd58c7b1/) | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | avalanche | n/a | [`0x082454...6ff63a`](./contracts/avalanche-43114/0x0824545b22dd6dc644c8b66d7923e613816ff63a/) | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | avalanche | n/a | [`0x2b7275...8f36a8`](./contracts/avalanche-43114/0x2b727505fdf3650028c8de0f5d73337ba78f36a8/) | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | avalanche | n/a | [`0xf4f463...d1d18f`](./contracts/avalanche-43114/0xf4f46382c2be1603dc817551ff9a7b333ed1d18f/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | ⚠️ Unaudited |
| BotDecisionLib | unknown | arbitrum | n/a | [`0x4efc8c...c0a776`](./contracts/arbitrum-42161/0x4efc8c366d3872c214ea0dd8cdff85d51fc0a776/) | ⚠️ Unaudited |
| BridgeToken | unknown | avalanche | n/a | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | ⚠️ Unaudited |
| BTRFLY | unknown | ethereum | n/a | [`0xc0d4ce...7cec3a`](./contracts/ethereum-1/0xc0d4ceb216b3ba9c3701b291766fdcba977cec3a/) | ⚠️ Unaudited |
| BtrflyOhmBondingCalculator | unknown | ethereum | n/a | [`0xa77b57...93f59a`](./contracts/ethereum-1/0xa77b57445fa262cae325ded434df89302c93f59a/) | ⚠️ Unaudited |
| BulkSeller | unknown | ethereum | n/a | [`0x1a3753...f00f73`](./contracts/ethereum-1/0x1a3753fa1eee1622fe327df0b7ec03463ef00f73/) | ⚠️ Unaudited |
| BulkSellerFactory | unknown | ethereum | n/a | [`0x40ae6d...cb7c85`](./contracts/ethereum-1/0x40ae6da2d92aa3dcb7f8d7a7209fd12bdfcb7c85/) | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | ethereum | n/a | [`0x9acc60...6bd320`](./contracts/ethereum-1/0x9acc60f915dfcd190d270fc92567ae71776bd320/) | ⚠️ Unaudited |
| CamelotV1VolatilePreview | unknown | arbitrum | n/a | [`0xaa472d...0feca2`](./contracts/arbitrum-42161/0xaa472d36f89706749b4989c08c92cf563c0feca2/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Cliff | unknown | avalanche | n/a | [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | ⚠️ Unaudited |
| CommunityTreasury | unknown | avalanche | n/a | [`0x650f58...a72358`](./contracts/avalanche-43114/0x650f5865541f6d68bddfe977db933c293ea72358/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | [`0xc00e94...f26888`](./contracts/ethereum-1/0xc00e94cb662c3520282e6f5717214004a7f26888/) | ⚠️ Unaudited |
| ComposableStablePreview | unknown | ethereum | n/a | [`0x4a303b...5d3007`](./contracts/ethereum-1/0x4a303b4e823b97689bcc77ae3dde6b6e5b5d3007/) | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | ethereum | n/a | [`0x4239dd...faf64a`](./contracts/ethereum-1/0x4239ddd3c50463383670e86c119220849bfaf64a/) | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | ethereum | n/a | [`0x886c9a...00442d`](./contracts/ethereum-1/0x886c9a91bf10dbc5e3c66c29387be9421a00442d/) | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | ethereum | n/a | [`0x39a65b...7341fe`](./contracts/ethereum-1/0x39a65bfdb7b977a019564c2f9a81e1a29f7341fe/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | avalanche | n/a | [`0xff5a7a...c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | avalanche | n/a | [`0xac33e9...a58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | avalanche | n/a | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DaiUsds | unknown | ethereum | n/a | [`0x322573...db276a`](./contracts/ethereum-1/0x3225737a9bbb6473cb4a45b7244aca2befdb276a/) | ⚠️ Unaudited |
| Directory | unknown | ethereum | n/a | [`0x702a89...5caf2d`](./contracts/ethereum-1/0x702a893f712a59be72722e4078513a1fba5caf2d/) | ⚠️ Unaudited |
| Distributor | unknown | ethereum | n/a | [`0xb2120a...10683f`](./contracts/ethereum-1/0xb2120ae79d838d6703cf6d2ac5cc68b5db10683f/) | ⚠️ Unaudited |
| DutchAuction | unknown | ethereum | n/a | [`0x27a729...65de1e`](./contracts/ethereum-1/0x27a7296a9d282e55bdf7ac3a7b768763dd65de1e/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | avalanche | n/a | [`0xe0560d...835705`](./contracts/avalanche-43114/0xe0560dfce5e73ccea36f0df586e5a07e07835705/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x428f2f...6165c8`](./contracts/bsc-56/0x428f2f93afac3f96b0de59854038c585e06165c8/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x921b10...32fdbf`](./contracts/bsc-56/0x921b10eb4f4a2afdd1fcd0514022d18faf32fdbf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mantle | n/a | [`0x051dcd...96b1fd`](./contracts/mantle-5000/0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd/) | ⚠️ Unaudited |
| ERC20BulkSender | unknown | arbitrum | n/a | [`0x77b8c8...25e0ee`](./contracts/arbitrum-42161/0x77b8c8aaca67b05180f9710fc9b21c8cfc25e0ee/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | avalanche | n/a | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ⚠️ Unaudited |
| ERC20Premined | unknown | sonic | n/a | [`0x19c7fa...9d4e38`](./contracts/sonic-146/0x19c7fa940f93c238acafe3d75b3d5d6f529d4e38/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | avalanche | n/a | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | avalanche | n/a | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | avalanche | n/a | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ⚠️ Unaudited |
| EthReader | unknown | ethereum | n/a | [`0x7549b6...391532`](./contracts/ethereum-1/0x7549b6b7e067f0c79e1f40c5f7465e7161391532/) | ⚠️ Unaudited |
| ExpiredLpPtRedeemer | unknown | optimism | n/a | [`0x0e7cac...eac259`](./contracts/optimism-10/0x0e7cacc6c2a22aa2d97a42a8c82edaf9f9eac259/) | ⚠️ Unaudited |
| FactoryPortal | unknown | avalanche | n/a | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | ⚠️ Unaudited |
| FantomAnimals | unknown | avalanche | n/a | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FixedPricePTAMM | unknown | bsc | n/a | [`0x39cd9c...c76d23`](./contracts/bsc-56/0x39cd9cb33da6b5eb2a22cbe0a07647e2c3c76d23/) | ⚠️ Unaudited |
| GMTokenPricingHelper | unknown | arbitrum | n/a | [`0x885af6...a672cf`](./contracts/arbitrum-42161/0x885af6ebf1c33fcb41577b43416bc7b7e0a672cf/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | avalanche | n/a | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ⚠️ Unaudited |
| HLPPricingHelper | unknown | arbitrum | n/a | [`0xae22d1...95457d`](./contracts/arbitrum-42161/0xae22d11c0a4f63fec9f265b9981cc0c0b395457d/) | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | ethereum | n/a | [`0x43d030...72011f`](./contracts/ethereum-1/0x43d03031fab845065e9cefe89dd122d63f72011f/) | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | avalanche | n/a | [`0xe19fba...c58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | avalanche | n/a | [`0x125cf8...84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | avalanche | n/a | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | unknown | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | unknown | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoeLens | unknown | avalanche | n/a | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | [`0x3acd2f...822c86`](./contracts/avalanche-43114/0x3acd2ff1c3450bc8a9765afd8d0dea8e40822c86/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | unknown | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | unknown | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | ⚠️ Unaudited |
| JumpRateModel | unknown | avalanche | n/a | [`0x363637...721f3b`](./contracts/avalanche-43114/0x363637833d110f86e47311e4c54e520982721f3b/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0x267a45...149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/) | ⚠️ Unaudited |
| KyberMathHelper | unknown | arbitrum | n/a | [`0x2f9e93...c7f151`](./contracts/arbitrum-42161/0x2f9e9384116066d7c7bf1e2f51e8599c5fc7f151/) | ⚠️ Unaudited |
| LinearPreview | unknown | ethereum | n/a | [`0x73187e...5f2ad6`](./contracts/ethereum-1/0x73187e5b27f2aadd5ffee023d6a9e179365f2ad6/) | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | avalanche | n/a | [`0x912b5d...397994`](./contracts/avalanche-43114/0x912b5d41656048ef681efa9d32488a3ffe397994/) | ⚠️ Unaudited |
| LongYieldTradingBot | unknown | arbitrum | n/a | [`0x263833...9eb14c`](./contracts/arbitrum-42161/0x263833d47ea3fa4a30f269323aba6a107f9eb14c/) | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | avalanche | n/a | [`0x04a34f...3e31d6`](./contracts/avalanche-43114/0x04a34ff16f31c8d6ea7b2c4489df13caa53e31d6/) | ⚠️ Unaudited |
| LPResolver | unknown | avalanche | n/a | [`0x04df48...092682`](./contracts/avalanche-43114/0x04df48ac59cd1ff079752405db731cc21e092682/) | ⚠️ Unaudited |
| MarketMathStatic | unknown | arbitrum | n/a | [`0x0582d9...2102c2`](./contracts/arbitrum-42161/0x0582d93fd9c9d42f26be5d86a5f75291f92102c2/) | ⚠️ Unaudited |
| MarketSweed | unknown | berachain | n/a | [`0xaa3350...579598`](./contracts/berachain-80094/0xaa3350c98a4a3a4cbbf35d0858420bc937579598/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0x10338e...b05348`](./contracts/avalanche-43114/0x10338ee9417260b486a4d1452ee2496338b05348/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | avalanche | n/a | [`0xedd1cb...115e34`](./contracts/avalanche-43114/0xedd1cb10d6dde82c805f7fc9988ee3d89c115e34/) | ⚠️ Unaudited |
| MetaStablePreview | unknown | ethereum | n/a | [`0x21a9fd...d59cd3`](./contracts/ethereum-1/0x21a9fd7212f37c35b030e9374510f99128d59cd3/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | ⚠️ Unaudited |
| MlpPricingHelper | unknown | arbitrum | n/a | [`0x10115a...9e45d8`](./contracts/arbitrum-42161/0x10115a984d69b0a832239a26d1841f10a59e45d8/) | ⚠️ Unaudited |
| Multicall3p | unknown | ethereum | n/a | [`0xb782c6...d2d202`](./contracts/ethereum-1/0xb782c60c9e27dd66b8b63e3694b45d8636d2d202/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| NFTHelper | unknown | ethereum | n/a | [`0x83d85a...8f38e8`](./contracts/ethereum-1/0x83d85aedd308261d847c3eb8d7146457bd8f38e8/) | ⚠️ Unaudited |
| NFTRouter | unknown | avalanche | n/a | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | ⚠️ Unaudited |
| PangolinFactory | unknown | avalanche | n/a | [`0xcdeea3...959737`](./contracts/avalanche-43114/0xcdeea31e087f0cf463043d246a45b87f4e959737/) | ⚠️ Unaudited |
| PangolinRouter | unknown | avalanche | n/a | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PBTRFLY | unknown | ethereum | n/a | [`0x575038...e362df`](./contracts/ethereum-1/0x57503824e256e878db8136fde66f155c49e362df/) | ⚠️ Unaudited |
| PENDLE | unknown | ethereum | n/a | [`0x808507...8da827`](./contracts/ethereum-1/0x808507121b80c02388fad14726482e061b8da827/) | ⚠️ Unaudited |
| PendleAaveMarket | unknown | ethereum | n/a | [`0x8315bc...a2d6bd`](./contracts/ethereum-1/0x8315bcbc2c5c1ef09b71731ab3827b0808a2d6bd/) | ⚠️ Unaudited |
| PendleAaveV2YieldTokenHolder | unknown | ethereum | n/a | [`0x33d307...021745`](./contracts/ethereum-1/0x33d3071cfa7404a406edb5826a11620282021745/) | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | base | n/a | [`0x540e18...6d0768`](./contracts/base-8453/0x540e181d4e3c70632e6bb153282bead2886d0768/) | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | ethereum | n/a | [`0x269b2a...a98161`](./contracts/ethereum-1/0x269b2a2d136a46b8d48842cb6f306668e0a98161/) | ⚠️ Unaudited |
| PendleAerodromeVolatileSY | unknown | base | n/a | [`0x02adf7...833a84`](./contracts/base-8453/0x02adf72d5d06a9c92136562eb237c07696833a84/) | ⚠️ Unaudited |
| PendleAsBNBSY | unknown | bsc | n/a | [`0x0f3872...2d2993`](./contracts/bsc-56/0x0f38727e3d9c7fe479ab90472f15bf17492d2993/) | ⚠️ Unaudited |
| PendleAstherusASUSDFSY | unknown | bsc | n/a | [`0x1f42fd...1272a4`](./contracts/bsc-56/0x1f42fd664c66bf0015f6028cfb0dd046001272a4/) | ⚠️ Unaudited |
| PendleAstherusUSDFSY | unknown | bsc | n/a | [`0x0ab3ae...8fa6d6`](./contracts/bsc-56/0x0ab3ae25c42a2f3748a018556989355d568fa6d6/) | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | ethereum | n/a | [`0xcb611d...887da3`](./contracts/ethereum-1/0xcb611d0bd02a74c491b75d51d6ea5558f1887da3/) | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | ethereum | n/a | [`0xc0ca1e...01e9dc`](./contracts/ethereum-1/0xc0ca1e345be44ea2c83202222e5084ae3a01e9dc/) | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | ethereum | n/a | [`0x2c662f...ff4a39`](./contracts/ethereum-1/0x2c662f901546a503c90d8de0db8bff1d32ff4a39/) | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | ethereum | n/a | [`0xdf7083...3dd915`](./contracts/ethereum-1/0xdf7083f2a0f8a191ab5eeafebe92ed21cd3dd915/) | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | ethereum | n/a | [`0x9bdb1d...c89e56`](./contracts/ethereum-1/0x9bdb1dfd15d9051d127c3cd6882e194ca1c89e56/) | ⚠️ Unaudited |
| PendleAuraWethStafiEthSY | unknown | ethereum | n/a | [`0x35be86...3891c3`](./contracts/ethereum-1/0x35be86140eec53da42c265ae764e547df13891c3/) | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | ethereum | n/a | [`0x8c76e1...a159ea`](./contracts/ethereum-1/0x8c76e1c2c57c343afa77c4374471eb4eb6a159ea/) | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | ethereum | n/a | [`0x8267fd...dc9820`](./contracts/ethereum-1/0x8267fdabd1b8c8645138f2de5b0fe24988dc9820/) | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | ethereum | n/a | [`0xb5cd09...36f044`](./contracts/ethereum-1/0xb5cd090010d4735f18306eb680d898ef9f36f044/) | ⚠️ Unaudited |
| PendleBeetsStakedSonicSY | unknown | sonic | n/a | [`0x64aec8...7316e9`](./contracts/sonic-146/0x64aec80c049aaf71a739a978d4c80e00547316e9/) | ⚠️ Unaudited |
| PendleBenQiForge | unknown | avalanche | n/a | [`0x23b868...4612bc`](./contracts/avalanche-43114/0x23b868bebdfd2d6faedaa92e44aef6c8704612bc/) | ⚠️ Unaudited |
| PendleBenQiYieldContractDeployer | unknown | avalanche | n/a | [`0x21d2e8...0fc361`](./contracts/avalanche-43114/0x21d2e8229fcf1b343085fca9c5c7418a9b0fc361/) | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | ethereum | n/a | [`0xd7b2a4...e97c45`](./contracts/ethereum-1/0xd7b2a47ac9236d9685b573a2428f72ec45e97c45/) | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | ethereum | n/a | [`0x13ab92...64afbe`](./contracts/ethereum-1/0x13ab922d9139b30d169207d190cc734a9464afbe/) | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | ethereum | n/a | [`0x042677...5f55da`](./contracts/ethereum-1/0x042677ce7e0e63fa5881f44a0f00d33feb5f55da/) | ⚠️ Unaudited |
| PendleBoringOneracle | unknown | ethereum | n/a | [`0x1f0318...195cd9`](./contracts/ethereum-1/0x1f0318b5ab2c4084692986a2c25916cec1195cd9/) | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | ethereum | n/a | [`0x4f060b...735953`](./contracts/ethereum-1/0x4f060b0ebb064e9feb1994ba9b5dcbdeb3735953/) | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | bsc | n/a | [`0x0ea46a...6e14b9`](./contracts/bsc-56/0x0ea46a4c257071352b57e9f6d054fc137f6e14b9/) | ⚠️ Unaudited |
| PendleCMETHSY | unknown | mantle | n/a | [`0x2ab88a...f63e70`](./contracts/mantle-5000/0x2ab88ac7458faec2e952bb79cc1be6577bf63e70/) | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | plasma | n/a | [`0x026644...d07507`](./contracts/plasma-9745/0x026644dc6fc4cf22a45ad14231090c7736d07507/) | ⚠️ Unaudited |
| PendleCompoundMarket | unknown | ethereum | n/a | [`0x944d17...30334f`](./contracts/ethereum-1/0x944d1727d0b656f497e74044ff589871c330334f/) | ⚠️ Unaudited |
| PendleCompoundYieldTokenHolder | unknown | ethereum | n/a | [`0xb0aa68...320c60`](./contracts/ethereum-1/0xb0aa68d8a0d56ae7276ab9e0e017965a67320c60/) | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | ethereum | n/a | [`0x04b3f3...ada698`](./contracts/ethereum-1/0x04b3f3e1c07fccea1f37d9fc4c9548a22cada698/) | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | ethereum | n/a | [`0x24e957...4f0b6b`](./contracts/ethereum-1/0x24e9571c29d749e54246741ba137fe2d574f0b6b/) | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | ethereum | n/a | [`0x7258e5...1e2790`](./contracts/ethereum-1/0x7258e564c8123227616cadf5466dc9ee261e2790/) | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | ethereum | n/a | [`0x0c4ee9...e4b652`](./contracts/ethereum-1/0x0c4ee9d25d66e5ee06d55db5bca74ec4c0e4b652/) | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | ethereum | n/a | [`0x69323f...08cf1c`](./contracts/ethereum-1/0x69323fe3d6c95e8f1c9b5d5dd6da65864f08cf1c/) | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | ethereum | n/a | [`0x091de0...6c032c`](./contracts/ethereum-1/0x091de0d774e2abaf824f074f40cdbc9a086c032c/) | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | ethereum | n/a | [`0x23e068...8b5f80`](./contracts/ethereum-1/0x23e06828d1a1460aba63f92ba75396bdf88b5f80/) | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | ethereum | n/a | [`0x83e1d1...cc5593`](./contracts/ethereum-1/0x83e1d1a2ce8ed6c4674d9ac61b5bf51395cc5593/) | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | ethereum | n/a | [`0xba04c9...ac8037`](./contracts/ethereum-1/0xba04c9a4297484aa671fd3425364994cf2ac8037/) | ⚠️ Unaudited |
| PendleData | unknown | avalanche | n/a | [`0x94d7e5...f3032c`](./contracts/avalanche-43114/0x94d7e5c48ca9627001facb04d1820c54dff3032c/) | ⚠️ Unaudited |
| PendleDecimalsWrapperFactory | unknown | ethereum | n/a | [`0x472268...3d696b`](./contracts/ethereum-1/0x4722689ac70d7c737e4f9ca326c0ce6f2d3d696b/) | ⚠️ Unaudited |
| PendleEBTCSY | unknown | ethereum | n/a | [`0x1aebb4...12aeab`](./contracts/ethereum-1/0x1aebb42da95823982b62e527170bf47dbe12aeab/) | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | ethereum | n/a | [`0x7acdf2...961880`](./contracts/ethereum-1/0x7acdf2012aac69d70b86677fe91eb66e08961880/) | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | ethereum | n/a | [`0x782374...b21923`](./contracts/ethereum-1/0x78237434ed20f2e2f4aadc7ef4e789644ab21923/) | ⚠️ Unaudited |
| PendleERC20SY | unknown | berachain | n/a | [`0x0013ac...d8945e`](./contracts/berachain-80094/0x0013acc071f732fd6bf8210ab46a3794a7d8945e/) | ⚠️ Unaudited |
| PendleERC20SYUpg | unknown | bsc | n/a | [`0x1fad3c...2c1bd5`](./contracts/bsc-56/0x1fad3ce1c1ab563441d58b79e49cb0ebc12c1bd5/) | ⚠️ Unaudited |
| PendleERC20WithAdapterSY | unknown | ethereum | n/a | [`0x69787f...94a573`](./contracts/ethereum-1/0x69787f3d1375e9e092eb5a4f3106abc24494a573/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | n/a | [`0x1992a6...cd7dfc`](./contracts/ethereum-1/0x1992a697d71cec7e210d4b28e0e67a3c46cd7dfc/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | ethereum | n/a | [`0x338e2c...d718cb`](./contracts/ethereum-1/0x338e2cafa81e72ff422983e124e265eeccd718cb/) | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | ethereum | n/a | [`0x48b115...01af1b`](./contracts/ethereum-1/0x48b115fc8f59f32233f93019e38aa2b36901af1b/) | ⚠️ Unaudited |
| PendleERC4626Scaled18SY | unknown | arbitrum | n/a | [`0x39e272...195f72`](./contracts/arbitrum-42161/0x39e272be5d396910d8aef18801dc14fe3d195f72/) | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | ethereum | n/a | [`0x0a9116...520b78`](./contracts/ethereum-1/0x0a91166428d71777e1a9b338b84eb9452e520b78/) | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | arbitrum | n/a | [`0x170a44...b9f239`](./contracts/arbitrum-42161/0x170a44190c9e1c929210f91931ba9ee1c6b9f239/) | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | arbitrum | n/a | [`0x4d6911...5adcd8`](./contracts/arbitrum-42161/0x4d6911a1f01e425561817f50a93f0e09745adcd8/) | ⚠️ Unaudited |
| PendleExternalCapGates | unknown | plasma | n/a | [`0x48130c...c43bde`](./contracts/plasma-9745/0x48130c993656404641d2f10480de160e46c43bde/) | ⚠️ Unaudited |
| PendleExternalRewardDistributor | unknown | mantle | n/a | [`0x068def...188ea3`](./contracts/mantle-5000/0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3/) | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | ethereum | n/a | [`0xb0caa6...2ce8cb`](./contracts/ethereum-1/0xb0caa67c712d96809f2abaf2c95369ef942ce8cb/) | ⚠️ Unaudited |
| PendleFeeSetter | unknown | base | n/a | [`0x302568...32ec64`](./contracts/base-8453/0x3025680925349c9c01c0f01cf300ec963832ec64/) | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | ethereum | n/a | [`0x13945b...18d2ab`](./contracts/ethereum-1/0x13945b761b2ed3219a497a46d15a8923f418d2ab/) | ⚠️ Unaudited |
| PendleGenericLiquidityMining | unknown | ethereum | n/a | [`0x0f3bcc...d208c8`](./contracts/ethereum-1/0x0f3bccbfef1dc227f33a11d7a51cd02dead208c8/) | ⚠️ Unaudited |
| PendleGenericLiquidityMiningMulti | unknown | avalanche | n/a | [`0x130543...506381`](./contracts/avalanche-43114/0x1305434fbe1c14a8c6c1d30bbf92f5baee506381/) | ⚠️ Unaudited |
| PendleGenericMarket | unknown | avalanche | n/a | [`0x11b934...f97fb4`](./contracts/avalanche-43114/0x11b9346eefa301e278f246d857c0a6edfbf97fb4/) | ⚠️ Unaudited |
| PendleGenericMarketFactory | unknown | avalanche | n/a | [`0x4d0cf9...74af8e`](./contracts/avalanche-43114/0x4d0cf9e4d28c85b0cea3c4c68f3c54f9f474af8e/) | ⚠️ Unaudited |
| PendleGlpSY | unknown | arbitrum | n/a | [`0x144059...2a1b7d`](./contracts/arbitrum-42161/0x144059f92f647ceec9460545c09f42bdf22a1b7d/) | ⚠️ Unaudited |
| PendleGMV2SingleTokenSY | unknown | arbitrum | n/a | [`0x9e83b9...ee4d10`](./contracts/arbitrum-42161/0x9e83b9b02b4292b8f18b7819a31c765777ee4d10/) | ⚠️ Unaudited |
| PendleGMV2SingleTokenSY__FixedOracle | unknown | arbitrum | n/a | [`0x293d5a...9f9fe5`](./contracts/arbitrum-42161/0x293d5aecca95bc33cac36a28f3ce0cf43f9f9fe5/) | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | mantle | n/a | [`0x09c9ac...c355be`](./contracts/mantle-5000/0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be/) | ⚠️ Unaudited |
| PendleHlpSY | unknown | arbitrum | n/a | [`0x3a0371...84baf3`](./contracts/arbitrum-42161/0x3a0371a5774b406924a6bbdd585b5863f484baf3/) | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | ethereum | n/a | [`0x1b9ff0...034071`](./contracts/ethereum-1/0x1b9ff0908c3eca9b38b492d4013982ec26034071/) | ⚠️ Unaudited |
| PendleInfraredBGTSY | unknown | berachain | n/a | [`0x0059a7...2b1a97`](./contracts/berachain-80094/0x0059a72a5e545f6998af038abbb625fc702b1a97/) | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | ethereum | n/a | [`0x1da9fb...be8d38`](./contracts/ethereum-1/0x1da9fb917023d2ad0eaf06df998fe828debe8d38/) | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | ethereum | n/a | [`0x1b6418...c8e19e`](./contracts/ethereum-1/0x1b641894e66aec7bf5ab86517e8d81763cc8e19e/) | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | ethereum | n/a | [`0xd63a35...85b0e8`](./contracts/ethereum-1/0xd63a351dae6523a65a9d8c8291da80579785b0e8/) | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | ethereum | n/a | [`0x0ed981...ebeaaf`](./contracts/ethereum-1/0x0ed9812f62cf65efdce4f3ca6b0a59448eebeaaf/) | ⚠️ Unaudited |
| PendleKyberElasticSYUpg | unknown | arbitrum | n/a | [`0x1fad3c...2c1bd5`](./contracts/arbitrum-42161/0x1fad3ce1c1ab563441d58b79e49cb0ebc12c1bd5/) | ⚠️ Unaudited |
| PendleL2LRTUpgSY | unknown | base | n/a | [`0x09c9ac...c355be`](./contracts/base-8453/0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be/) | ⚠️ Unaudited |
| PendleLBTCBaseSY | unknown | base | n/a | [`0x035a90...9acf59`](./contracts/base-8453/0x035a90de4fa66856769542a4f26001a9549acf59/) | ⚠️ Unaudited |
| PendleLBTCBaseSYScaled18 | unknown | base | n/a | [`0x67e64a...5801f9`](./contracts/base-8453/0x67e64af30e04a7277ab2d4f09ace3f77a15801f9/) | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | ethereum | n/a | [`0x82199b...e5e43b`](./contracts/ethereum-1/0x82199b840796cb8d910974b41175d9dfb1e5e43b/) | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | ethereum | n/a | [`0x14ff57...1b9748`](./contracts/ethereum-1/0x14ff57675c9c34eeb9e1516ffda7cac6ed1b9748/) | ⚠️ Unaudited |
| PendleLimitRouter | unknown | berachain | n/a | [`0x035a90...9acf59`](./contracts/berachain-80094/0x035a90de4fa66856769542a4f26001a9549acf59/) | ⚠️ Unaudited |
| PendleLinearDistributor | unknown | arbitrum | n/a | [`0x2b3583...8b93c6`](./contracts/arbitrum-42161/0x2b35836025d1159f3d6af4b13adca05de78b93c6/) | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | ethereum | n/a | [`0x3d9819...b01aff`](./contracts/ethereum-1/0x3d98195b252dbfec41dff573981224e4a4b01aff/) | ⚠️ Unaudited |
| PendleLiquidityMiningBaseV2 | unknown | ethereum | n/a | [`0x071dc6...383aea`](./contracts/ethereum-1/0x071dc669be57c1b3053f746db20cb3bf54383aea/) | ⚠️ Unaudited |
| PendleLiquidityMiningBaseV2Multi | unknown | avalanche | n/a | [`0x224d39...232713`](./contracts/avalanche-43114/0x224d395e9e123bc9c37bff8bcd845562d5232713/) | ⚠️ Unaudited |
| PendleLpGlpOracle | unknown | arbitrum | n/a | [`0x67e64a...5801f9`](./contracts/arbitrum-42161/0x67e64af30e04a7277ab2d4f09ace3f77a15801f9/) | ⚠️ Unaudited |
| PendleLpHolder | unknown | ethereum | n/a | [`0x2f16b2...2d349d`](./contracts/ethereum-1/0x2f16b22c839fa995375602562ba5dd15a22d349d/) | ⚠️ Unaudited |
| PendleLPWrapperFactory | unknown | ethereum | n/a | [`0x12930b...d58e19`](./contracts/ethereum-1/0x12930bd944bb34b0a21ccc2e7d32a6834bd58e19/) | ⚠️ Unaudited |
| PendleMarketFactoryV2 | unknown | mantle | n/a | [`0x166485...2f58b9`](./contracts/mantle-5000/0x16648548d12d1f71663f712211d56ae7322f58b9/) | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | optimism | n/a | [`0x02adf7...833a84`](./contracts/optimism-10/0x02adf72d5d06a9c92136562eb237c07696833a84/) | ⚠️ Unaudited |
| PendleMarketReader | unknown | ethereum | n/a | [`0x16b4ad...c7cdc7`](./contracts/ethereum-1/0x16b4ad69d414a197f9cb98d06db224646dc7cdc7/) | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | ethereum | n/a | [`0x210e15...f7422b`](./contracts/ethereum-1/0x210e157a1323d945c7600e31b8cb6763d4f7422b/) | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | ethereum | n/a | [`0x749087...0202f9`](./contracts/ethereum-1/0x749087ee993fdfc141f6f0e0b1370fee2d0202f9/) | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | ethereum | n/a | [`0x51eb1f...5f0b62`](./contracts/ethereum-1/0x51eb1ffc5c6c017a4a15c98c168aef01b05f0b62/) | ⚠️ Unaudited |
| PendleMellowVaultERC20SYUpg | unknown | ethereum | n/a | [`0x5ffbf8...3f10b6`](./contracts/ethereum-1/0x5ffbf8c047e568a23acc95ce1c593866973f10b6/) | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | ethereum | n/a | [`0x7b91b6...df9718`](./contracts/ethereum-1/0x7b91b60f96c1c587c830a0239e27431276df9718/) | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | ethereum | n/a | [`0x640467...18291f`](./contracts/ethereum-1/0x64046776c9c856fdc5c39c6eba101adc8e18291f/) | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | ethereum | n/a | [`0x0304e6...0b6e13`](./contracts/ethereum-1/0x0304e69578fea985e3ad406d6fdbe5c73f0b6e13/) | ⚠️ Unaudited |
| PendleMerkleDistributor | unknown | arbitrum | n/a | [`0x23a102...a5fcaf`](./contracts/arbitrum-42161/0x23a102e78d1ff1645a3666691495174764a5fcaf/) | ⚠️ Unaudited |
| PendleMETHSY | unknown | mantle | n/a | [`0x9ab557...3f8665`](./contracts/mantle-5000/0x9ab557331ddada945eb2ece19b90bd7a843f8665/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x01e0f0...88bb5c`](./contracts/ethereum-1/0x01e0f0351be9f820f83a6d4175b8e5faa588bb5c/) | ⚠️ Unaudited |
| PendleMoonwellTokenBaseSY | unknown | base | n/a | [`0x02176d...c10ecc`](./contracts/base-8453/0x02176d640657740539f70eea98501ebbf1c10ecc/) | ⚠️ Unaudited |
| PendleMoonwellTokenFix | unknown | base | n/a | [`0x41fad9...46713f`](./contracts/base-8453/0x41fad93f225b5c1c95f2445a5d7fcb85ba46713f/) | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | ethereum | n/a | [`0x07b101...2e989f`](./contracts/ethereum-1/0x07b1014c88f14c9e910092526db57a20052e989f/) | ⚠️ Unaudited |
| PendleMulticall | unknown | arbitrum | n/a | [`0x05d0ea...fe632d`](./contracts/arbitrum-42161/0x05d0ea1dbfa239f9fbc47e306e850ce971fe632d/) | ⚠️ Unaudited |
| PendleMulticallV1 | unknown | bsc | n/a | [`0x9c5f6b...33434c`](./contracts/bsc-56/0x9c5f6be9a6e625b0df5f9f97a5850a41f933434c/) | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | plasma | n/a | [`0x1e5629...c2db00`](./contracts/plasma-9745/0x1e56299ebc8a1010cec26005d12e3e5c5cc2db00/) | ⚠️ Unaudited |
| PendleOffchainStorage | unknown | arbitrum | n/a | [`0x57ab80...65875e`](./contracts/arbitrum-42161/0x57ab80b1b8f76f57b4214a0585072c00be65875e/) | ⚠️ Unaudited |
| PendleOnePause | unknown | ethereum | n/a | [`0x227461...829a32`](./contracts/ethereum-1/0x2274610d125cbd712b01fadbcdbd4b5561829a32/) | ⚠️ Unaudited |
| PendleOnsenComplexRewarder | unknown | ethereum | n/a | [`0x7e821a...d064f4`](./contracts/ethereum-1/0x7e821a72fe99e1c28f41fa07078f17abb7d064f4/) | ⚠️ Unaudited |
| PendleOracleForSyProxy | unknown | mantle | n/a | [`0xc2eedc...b47020`](./contracts/mantle-5000/0xc2eedc8b9bac65c8444a0ccf1c18b51a50b47020/) | ⚠️ Unaudited |
| PendleOriginSonicSY | unknown | sonic | n/a | [`0x563c6b...767ce3`](./contracts/sonic-146/0x563c6bcad7d50f3f650d92e0f1c4de6ac3767ce3/) | ⚠️ Unaudited |
| PendleOwnershipToken | unknown | ethereum | n/a | [`0x010a02...9a1324`](./contracts/ethereum-1/0x010a0288af52ed61e32674d82bbc7ddbfa9a1324/) | ⚠️ Unaudited |
| PendlePaladinSCTokenSY | unknown | sonic | n/a | [`0x79cac1...31daa2`](./contracts/sonic-146/0x79cac177c2efbf5dbab7c7111afa9caf8031daa2/) | ⚠️ Unaudited |
| PendlePausingManager | unknown | ethereum | n/a | [`0x0ef442...f3eed4`](./contracts/ethereum-1/0x0ef44218209d7d64737dd36f179d5e448df3eed4/) | ⚠️ Unaudited |
| PendlePoolDeployHelper | unknown | mantle | n/a | [`0x01d0a8...ff8a0c`](./contracts/mantle-5000/0x01d0a833c3ad951e37e6f9bf5ece86e519ff8a0c/) | ⚠️ Unaudited |
| PendlePtGlpOracle | unknown | arbitrum | n/a | [`0x43d030...72011f`](./contracts/arbitrum-42161/0x43d03031fab845065e9cefe89dd122d63f72011f/) | ⚠️ Unaudited |
| PendlePtLpOracle | unknown | optimism | n/a | [`0x15aab5...6ad707`](./contracts/optimism-10/0x15aab5c1ab800a9e457d9f4335e8a2dc9f6ad707/) | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | arbitrum | n/a | [`0x24ec4b...002744`](./contracts/arbitrum-42161/0x24ec4b068140dd3c0d63d904a24656c6fd002744/) | ⚠️ Unaudited |
| PendlePufStETHSY | unknown | ethereum | n/a | [`0x25ad86...0d7ff3`](./contracts/ethereum-1/0x25ad8697113275d6597419cbe2bb0d69760d7ff3/) | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | ethereum | n/a | [`0x253008...a0c905`](./contracts/ethereum-1/0x253008ba4ae2f3e6488dc998a5321d4eb1a0c905/) | ⚠️ Unaudited |
| PendlePYLpOracle | unknown | sonic | n/a | [`0x0f47ae...397e23`](./contracts/sonic-146/0x0f47aee96fae2558b0081c8d2dffbb8512397e23/) | ⚠️ Unaudited |
| PendleRedeemProxy | unknown | ethereum | n/a | [`0x3f8380...b98472`](./contracts/ethereum-1/0x3f83805d7d2a6b7bf35e5c3131d684d914b98472/) | ⚠️ Unaudited |
| PendleRedStoneRateOracleAdapter | unknown | arbitrum | n/a | [`0x01cccb...9947bb`](./contracts/arbitrum-42161/0x01cccb44c69c59dcb5e9577aa4a26ade269947bb/) | ⚠️ Unaudited |
| PendleRenzoPreviewHelper | unknown | arbitrum | n/a | [`0x9c2930...36cfad`](./contracts/arbitrum-42161/0x9c2930875c580680fd44e330dbcc27c3b236cfad/) | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | ethereum | n/a | [`0x43d665...4a7931`](./contracts/ethereum-1/0x43d6651ff941776976ae8e5b11ef513e054a7931/) | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | ethereum | n/a | [`0x1eb76f...c64600`](./contracts/ethereum-1/0x1eb76f737ec25f3d161936f9f63061dcafc64600/) | ⚠️ Unaudited |
| PendleRewardManager | unknown | avalanche | n/a | [`0x0b1fc9...e714ff`](./contracts/avalanche-43114/0x0b1fc9cde816edfb6a269b9eb13616a7dbe714ff/) | ⚠️ Unaudited |
| PendleRewardManagerMulti | unknown | avalanche | n/a | [`0x4b2163...d418fa`](./contracts/avalanche-43114/0x4b21630f3680cd2e1139c02f9bf3739e2bd418fa/) | ⚠️ Unaudited |
| PendleRLPSY | unknown | ethereum | n/a | [`0x0efdee...022add`](./contracts/ethereum-1/0x0efdee86929832e419baf1b6c5f6eac09c022add/) | ⚠️ Unaudited |
| PendleRouterStatic | unknown | sonic | n/a | [`0x0013ac...d8945e`](./contracts/sonic-146/0x0013acc071f732fd6bf8210ab46a3794a7d8945e/) | ⚠️ Unaudited |
| PendleRouterStatic | unknown | mantle | n/a | [`0x3b5ae5...fa0e3f`](./contracts/mantle-5000/0x3b5ae552310638a69863f6e348b41912defa0e3f/) | ⚠️ Unaudited |
| PendleRouterV4 | unknown | sonic | n/a | [`0x1e5629...c2db00`](./contracts/sonic-146/0x1e56299ebc8a1010cec26005d12e3e5c5cc2db00/) | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | ethereum | n/a | [`0x4464fb...32b1ec`](./contracts/ethereum-1/0x4464fb1316b32cb71fa344973238245f4c32b1ec/) | ⚠️ Unaudited |
| PendleSGHOSY | unknown | ethereum | n/a | [`0xae14ae...71f609`](./contracts/ethereum-1/0xae14ae6818c1db507e471bcf90eb81288c71f609/) | ⚠️ Unaudited |
| PendleSiloV2SY | unknown | sonic | n/a | [`0x0cb577...199cd8`](./contracts/sonic-146/0x0cb577bdd947c30a8a9103655c750eae57199cd8/) | ⚠️ Unaudited |
| PendleSimpleERC20TokenHolder | unknown | avalanche | n/a | [`0x1a14f2...5e31c2`](./contracts/avalanche-43114/0x1a14f2964664b9d7e45df70d09fe4007615e31c2/) | ⚠️ Unaudited |
| PendleSLPLiquidityMining | unknown | ethereum | n/a | [`0x2c09fd...1c2bcc`](./contracts/ethereum-1/0x2c09fd74e80ce12bebbc8f56fab8633ea41c2bcc/) | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | ethereum | n/a | [`0x67e58f...c609d7`](./contracts/ethereum-1/0x67e58f0240b432e78795dc010716e54b70c609d7/) | ⚠️ Unaudited |
| PendleSolvBNBBTCSY | unknown | bsc | n/a | [`0x01517f...08db61`](./contracts/bsc-56/0x01517f7b5775f680f8e6fa40f48e08b11508db61/) | ⚠️ Unaudited |
| PendleSolvBTCBBNBaseSYUpg | unknown | base | n/a | [`0x1098b4...699558`](./contracts/base-8453/0x1098b4a7e5994ea91892656e045bcc252b699558/) | ⚠️ Unaudited |
| PendleSolvBTCBBNBSCSYUpg | unknown | bsc | n/a | [`0x09c9ac...c355be`](./contracts/bsc-56/0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be/) | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | ethereum | n/a | [`0x859c11...5b4e34`](./contracts/ethereum-1/0x859c11a2483fea4b65d1ae7d207cb5395a5b4e34/) | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | ethereum | n/a | [`0x0a9b2c...6cf6f9`](./contracts/ethereum-1/0x0a9b2c09f8756c743b0702973ed33970d16cf6f9/) | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | ethereum | n/a | [`0x0ee69a...a0d075`](./contracts/ethereum-1/0x0ee69a11b4391c5af5eb2fb088c2df5dd2a0d075/) | ⚠️ Unaudited |
| PendleStEURSY | unknown | ethereum | n/a | [`0x183e6d...8cc8b1`](./contracts/ethereum-1/0x183e6dd6a2958d07ec29fc73ac2d226f8d8cc8b1/) | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | ethereum | n/a | [`0x3ae501...8d160a`](./contracts/ethereum-1/0x3ae50112b7efe88b0f6da37b309b12d34b8d160a/) | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | ethereum | n/a | [`0x33e889...af8bee`](./contracts/ethereum-1/0x33e88943b00e699fc5b6597c5f8bcb0872af8bee/) | ⚠️ Unaudited |
| PendleSuperOETHSY | unknown | base | n/a | [`0x35c163...ead345`](./contracts/base-8453/0x35c16314d6ee4753289e5cc15a5c5e1dd4ead345/) | ⚠️ Unaudited |
| PendleSUSDEL2SY | unknown | berachain | n/a | [`0x15aab5...6ad707`](./contracts/berachain-80094/0x15aab5c1ab800a9e457d9f4335e8a2dc9f6ad707/) | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | ethereum | n/a | [`0x2effcf...9e93ea`](./contracts/ethereum-1/0x2effcf0d244b12eb70a0662fb4cf1af35b9e93ea/) | ⚠️ Unaudited |
| PendleSUSDSArbitrumSY | unknown | arbitrum | n/a | [`0x74f767...5d32e3`](./contracts/arbitrum-42161/0x74f76735ce4393408a04c4ce3245394dd85d32e3/) | ⚠️ Unaudited |
| PendleSwap | unknown | base | n/a | [`0x0e669e...95fbb5`](./contracts/base-8453/0x0e669e08bd717d7f9c9de158636bd8561295fbb5/) | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | ethereum | n/a | [`0x315f46...4c3425`](./contracts/ethereum-1/0x315f46d865e1e09a0909703a74b13ed1754c3425/) | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | ethereum | n/a | [`0x0d2984...7451b3`](./contracts/ethereum-1/0x0d298432833e0d60372c70801feaf868eb7451b3/) | ⚠️ Unaudited |
| PendleTokenDistribution | unknown | ethereum | n/a | [`0x8849d0...7635df`](./contracts/ethereum-1/0x8849d0d4c35679aa78df1b5b4ceca358d57635df/) | ⚠️ Unaudited |
| PendleTraderJoeYieldContractDeployer | unknown | avalanche | n/a | [`0x331a4e...e30241`](./contracts/avalanche-43114/0x331a4e4aedea3553b5c31c6a5df6c4a35de30241/) | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | ethereum | n/a | [`0x37db38...c0c7c3`](./contracts/ethereum-1/0x37db381b273f865ecd3ae11948ea2e788ec0c7c3/) | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | ethereum | n/a | [`0x0d3744...6dbaf4`](./contracts/ethereum-1/0x0d3744b98881198f09ff619de9d52629176dbaf4/) | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | ethereum | n/a | [`0x1d292b...d93151`](./contracts/ethereum-1/0x1d292b43171209ef02f00a239353f316c3d93151/) | ⚠️ Unaudited |
| PendleUniBTCBeraSYUpgScaled18 | unknown | berachain | n/a | [`0x313470...7d8f5a`](./contracts/berachain-80094/0x313470a16f4a47a235d44a1abd6f239dce7d8f5a/) | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | ethereum | n/a | [`0x87b8e4...407d78`](./contracts/ethereum-1/0x87b8e462080fa443a06d2bb119adb3828c407d78/) | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | ethereum | n/a | [`0x508def...36697b`](./contracts/ethereum-1/0x508defdb5dd2adeefe36f58fdcd75d6efa36697b/) | ⚠️ Unaudited |
| PendleWansAdapter | unknown | sonic | n/a | [`0xaa472d...0feca2`](./contracts/sonic-146/0xaa472d36f89706749b4989c08c92cf563c0feca2/) | ⚠️ Unaudited |
| PendleWcgUSDSY | unknown | base | n/a | [`0x77d07a...c06ebf`](./contracts/base-8453/0x77d07ab8466a57fb8615aeb75c37abff25c06ebf/) | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | ethereum | n/a | [`0x0fa609...a21a77`](./contracts/ethereum-1/0x0fa609622a8be8534678e7e8caf92bde06a21a77/) | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | ethereum | n/a | [`0xbbf8cf...982d32`](./contracts/ethereum-1/0xbbf8cfc9f38d8ad4eaea405170743c9f4a982d32/) | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | ethereum | n/a | [`0x772079...b3400a`](./contracts/ethereum-1/0x772079c143d9ef931a6df44963bfc37190b3400a/) | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | ethereum | n/a | [`0x012bad...02c9c5`](./contracts/ethereum-1/0x012badcc6e824c2ea32bd5367ebda3be3402c9c5/) | ⚠️ Unaudited |
| PendleWhitelist | unknown | ethereum | n/a | [`0x6fa134...53332a`](./contracts/ethereum-1/0x6fa13469428e85e6ac12c84b73a19aef7c53332a/) | ⚠️ Unaudited |
| PendleWrapper | unknown | avalanche | n/a | [`0x2e130d...169a47`](./contracts/avalanche-43114/0x2e130d5dc593ffe5eb8f54f63f6b5e50df169a47/) | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | ethereum | n/a | [`0x905109...63b3f2`](./contracts/ethereum-1/0x90510946d780a5ac7616c30e067670ecdc63b3f2/) | ⚠️ Unaudited |
| PendleXJoeForge | unknown | avalanche | n/a | [`0x09131d...0daaca`](./contracts/avalanche-43114/0x09131d750f3f7e646fbdce6dd9699775fa0daaca/) | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | ethereum | n/a | [`0xa47e35...85f431`](./contracts/ethereum-1/0xa47e357d68523ace098366888ad6b50e8d85f431/) | ⚠️ Unaudited |
| PendleYieldContractDeployerBaseV2 | unknown | ethereum | n/a | [`0x3714e5...eb5762`](./contracts/ethereum-1/0x3714e5d5a32fdc16e3e6fee6788afc3ac9eb5762/) | ⚠️ Unaudited |
| PendleYieldContractFactoryV2 | unknown | mantle | n/a | [`0x1e9ff4...d60b20`](./contracts/mantle-5000/0x1e9ff49352e7155d0af658fd88a1b3d44ed60b20/) | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | ethereum | n/a | [`0x59ac00...4b85ea`](./contracts/ethereum-1/0x59ac005cb89f573641caa8c12475e4c86d4b85ea/) | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | ethereum | n/a | [`0x7a493b...434744`](./contracts/ethereum-1/0x7a493be5c2ce014cd049bf178a1ac0db1b434744/) | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | ethereum | n/a | [`0x34349c...0a9789`](./contracts/ethereum-1/0x34349c5569e7b846c3558961552d2202760a9789/) | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | ethereum | n/a | [`0x085ba3...7faaec`](./contracts/ethereum-1/0x085ba32515d33b598a3d1d10a11e710e3a7faaec/) | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | ethereum | n/a | [`0xd7df7e...20bfa7`](./contracts/ethereum-1/0xd7df7e085214743530aff339afc420c7c720bfa7/) | ⚠️ Unaudited |
| PglStakingContract | unknown | avalanche | n/a | [`0xe59988...906cb2`](./contracts/avalanche-43114/0xe59988d947f80b59ff1de7bd413e5e5517906cb2/) | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | avalanche | n/a | [`0x4074da...eb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x1035b0...c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| PtAndLpToAsset | unknown | bsc | n/a | [`0xfa6b22...f6bd57`](./contracts/bsc-56/0xfa6b22fc4c3ad88b68c16b3061a16b1714f6bd57/) | ⚠️ Unaudited |
| Qi | unknown | avalanche | n/a | [`0x872943...76c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | ⚠️ Unaudited |
| QiAvax | unknown | avalanche | n/a | [`0x5c0401...47ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | ⚠️ Unaudited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x334ad8...9a7909`](./contracts/avalanche-43114/0x334ad834cd4481bb02d09615e7c11a00579a7909/) | ⚠️ Unaudited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x4c9f01...0ddd30`](./contracts/avalanche-43114/0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30/) | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | avalanche | n/a | [`0x23de20...9d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | avalanche | n/a | [`0xa1f5ae...6bb618`](./contracts/avalanche-43114/0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618/) | ⚠️ Unaudited |
| REDACTEDBondDepository | unknown | ethereum | n/a | [`0x98e45e...10b96d`](./contracts/ethereum-1/0x98e45ef7ead7e85d3cd8f07d3e7f02405a10b96d/) | ⚠️ Unaudited |
| REDACTEDBondDepositoryRewardBased | unknown | ethereum | n/a | [`0x0daf1a...4a1e09`](./contracts/ethereum-1/0x0daf1a9c474a8ea595b5bdafe0b142bf894a1e09/) | ⚠️ Unaudited |
| REDACTEDBondingCalculator | unknown | ethereum | n/a | [`0xca1d53...ccf2bc`](./contracts/ethereum-1/0xca1d53e40eab232deff03dc824410100bcccf2bc/) | ⚠️ Unaudited |
| REDACTEDLPBondDepositoryRewardBased | unknown | ethereum | n/a | [`0x09c97d...6f1e37`](./contracts/ethereum-1/0x09c97d85c465a188d840e4e9d4a1e077f46f1e37/) | ⚠️ Unaudited |
| REDACTEDStaking | unknown | ethereum | n/a | [`0x2a5b35...fed0ea`](./contracts/ethereum-1/0x2a5b3547200c92c560d5f9e514d47e2a78fed0ea/) | ⚠️ Unaudited |
| REDACTEDTreasury | unknown | ethereum | n/a | [`0x086c98...9ac36b`](./contracts/ethereum-1/0x086c98855df3c78c6b481b6e1d47bef42e9ac36b/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | ⚠️ Unaudited |
| RouterStatic | unknown | arbitrum | n/a | [`0x166485...2f58b9`](./contracts/arbitrum-42161/0x16648548d12d1f71663f712211d56ae7322f58b9/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | ethereum | n/a | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | avalanche | n/a | [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | ⚠️ Unaudited |
| SingleStaking | unknown | ethereum | n/a | [`0x07282f...e6d7f5`](./contracts/ethereum-1/0x07282f2ceebd7a65451fcd268b364300d9e6d7f5/) | ⚠️ Unaudited |
| SingleStakingManager | unknown | ethereum | n/a | [`0x747fc7...495255`](./contracts/ethereum-1/0x747fc744837deda8d1c568d8e90839e5d4495255/) | ⚠️ Unaudited |
| Sky | unknown | ethereum | n/a | [`0x56072c...ed9279`](./contracts/ethereum-1/0x56072c95faa701256059aa122697b133aded9279/) | ⚠️ Unaudited |
| StakingHelper | unknown | ethereum | n/a | [`0xc0840e...d18adf`](./contracts/ethereum-1/0xc0840ec5527d3e70d66ae6575642916f3fd18adf/) | ⚠️ Unaudited |
| StakingWarmup | unknown | ethereum | n/a | [`0x33665f...500252`](./contracts/ethereum-1/0x33665f4a74f88a1acd425196573072d6ff500252/) | ⚠️ Unaudited |
| SushiToken | unknown | ethereum | n/a | [`0x6b3595...c90fe2`](./contracts/ethereum-1/0x6b3595068778dd592e39a122f4f5a5cf09c90fe2/) | ⚠️ Unaudited |
| ThecosomataETH | unknown | ethereum | n/a | [`0x68f54c...26c4e7`](./contracts/ethereum-1/0x68f54c12631a83b5b42f683932f504819f26c4e7/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x6d903f...c33925`](./contracts/ethereum-1/0x6d903f6003cca6255d85cca4d3b5e5146dc33925/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | ⚠️ Unaudited |
| TreasuryVester | unknown | avalanche | n/a | [`0x6747ac...12acee`](./contracts/avalanche-43114/0x6747ac215daffee03a42f49febb6ab448e12acee/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | avalanche | n/a | [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x0d8a21...6a723b`](./contracts/ethereum-1/0x0d8a21f2ea15269b7470c347083ee1f85e6a723b/) | ⚠️ Unaudited |
| Usds | unknown | ethereum | n/a | [`0x1923df...df4102`](./contracts/ethereum-1/0x1923dfee706a8e78157416c29cbccfde7cdf4102/) | ⚠️ Unaudited |
| UsdsJoin | unknown | ethereum | n/a | [`0x3c0f89...777feb`](./contracts/ethereum-1/0x3c0f895007ca717aa01c8693e59df1e8c3777feb/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | ⚠️ Unaudited |
| wMEMO | unknown | avalanche | n/a | [`0x0da672...e5bb3b`](./contracts/avalanche-43114/0x0da67235dd5787d67955420c84ca1cecd4e5bb3b/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| wxBTRFLY | unknown | ethereum | n/a | [`0x186e55...5bd36c`](./contracts/ethereum-1/0x186e55c0bebd2f69348d94c4a27556d93c5bd36c/) | ⚠️ Unaudited |
| xBTRFLY | unknown | ethereum | n/a | [`0x63b03b...843e6f`](./contracts/ethereum-1/0x63b03b7dc4de754582c570ad6bfe985d62843e6f/) | ⚠️ Unaudited |
| XrpSwapAsset | unknown | avalanche | n/a | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | ⚠️ Unaudited |
| Zap | unknown | avalanche | n/a | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | ⚠️ Unaudited |

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
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LinearDiscountOracle/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [WatchPug-LpOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LpPtoracle/WatchPug-LpOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [WatchPug-PtOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LpPtoracle/WatchPug-PtOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [0xleastwood-Part 1 + 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/0xleastwood/0xleastwood-Part%201%20%2B%202.pdf) | 0xleastwood | Audit | 2022-09 | stale | Direct | contract_name | 18 | high |
| [0xleastwood-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/0xleastwood/0xleastwood-Part%202.pdf) | 0xleastwood | Audit | 2022-07 | stale | Direct | contract_name | 1 | medium |
| [Ackee-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | 6 | high |
| [CMichel-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/CMichel/CMichel-Part%202.pdf) | CMichel | Audit | 2022-08 | stale | Direct | contract_name | 6 | high |
| [Cmichel-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/CMichel/Cmichel-Part%201.pdf) | CMichel | Audit | 2022-08 | stale | Direct | contract_name | 25 | high |
| [ChainSecurity.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/ChainSecurity-2024/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 79 | high |
| [Dedaub-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Dedaub/Dedaub-Part%201.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | contract_name | 25 | high |
| [Dingbats-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Dingbats/Dingbats-Part%201.pdf) | Dingbats | Audit | n/a | unknown | Direct | contract_name | 25 | high |
| [Dingbats-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Dingbats/Dingbats-Part%202.pdf) | Dingbats | Audit | n/a | unknown | Direct | contract_name | 6 | high |
| [Spearbit.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Spearbit-2024/Spearbit.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | 4 | high |
| [WatchPug-Part 1 Follow Up 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%201%20Follow%20Up%201.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | 19 | high |
| [WatchPug-Part 1 Follow Up 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%201%20Follow%20Up%202.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |
| [WatchPug-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%201.pdf) | WatchPug | Audit | 2022-06 | stale | Direct | contract_name | 3 | high |
| [WatchPug-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%202.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | contract_name | 6 | high |
| [HickupHH3.pdf (also discovered via alternate URL)](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/marketV6/HickupHH3.pdf) | HickupHH3 | Audit | 2025-09 | fresh | Direct | contract_name | 8 | high |
| [WatchPug.pdf (also discovered via alternate URL)](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/marketV6/WatchPug.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name|n/a | 8 | high |
| [ChainSecurity-Markets.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Markets.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [ChainSecurity-Router and AMM.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Router%20and%20AMM.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Pendle-Spearbit-Security-Review-August-2025.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/Spearbit/Pendle-Spearbit-Security-Review-August-2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 23 | high |
| [Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Market_%26_MarketHub_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Router_%26_AMM_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 467 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=19, medium=1
- Match method counts: extraction_exact=270

Zero-match audit list:

- [17994] ChainSecurity-Markets.pdf
- [17995] ChainSecurity-Router and AMM.pdf
- [17997] Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf
- [17998] Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf

Fork inheritance lineage and inherited audits are included when available.
