# Agentic Audit Brief: Sigma Money

## Project Overview

- Project: Sigma Money (`sigma-money`)
- Website: [https://sigma.money](https://sigma.money)
- Lifecycle: active (Tier 0, 82.6% below peak)
- Generated: 2026-06-17T07:00:52.300Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 187 unique implementations (736 raw deployments)
- DeFi Llama TVL: $2,831,330.80
- On-chain TVL (included contracts): $55,403.71
- TVL by chain: Bsc $55,403.71

## Project Description

Sigma Money is a decentralized CDP protocol on BSC that enables users to mint the stablecoin bnbUSD against collateral. It includes vaults for yield generation, stability pools for liquidations, and a gauge system for emissions and governance.

### Architecture

The bnbUSD family provides the core CDP and stablecoin, while Sigma Money vaults generate yield using strategies from the Strategy family. Stability Pools support liquidations, and the Gauge system directs emissions to incentivize liquidity, with Price Oracles feeding all families.

## Contract Surface Quality

- Indexed contracts: 1440; live-surface contracts included: 736 (285 live, 451 unknown).
- Excluded by liveness: 150 inactive, 554 singleton, 0 uninitialized.
- Deployment units: 5/263 live.
- Detected codebases: curve-stableswap, makerdao-dss
- Unverified dependencies: 11/134.

## Audit Coverage Summary

- Verified implementations audited: 38/146 (26.0%)
- Verified + Unaudited implementations: 108
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 187
- Raw deployments: 736
- Audits discovered: 10
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 10 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 24.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 36 | 24.7% | 2026-03 |
| Supremacy | Tier 2 | 4 | 2.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BnbUSDBasePool | core_logic | bsc | unit-31536 | [`0x2b9c1f...4a3aa3`](./contracts/bsc-56/0x2b9c1f069ddcd873275b3363986081bda94a3aa3/) | ✅ Audited |
| AccessHub | unknown | bsc | n/a | 2 deployments: bsc [`0x86884a...3c3e8e`](./contracts/bsc-56/0x86884aa62687563ba772ee13d5a3efb74e3c3e8e/); bsc `0xa0efda...1e3327` | ✅ Audited |
| BNBPriceOracle | operational_periphery | bsc | n/a | 11 deployments: bsc [`0x032e07...9e6e22`](./contracts/bsc-56/0x032e0774310949897f29e750c1d578f61f9e6e22/); bsc `0x369309...4b5954`; bsc `0x45dcdf...3efa3e`; bsc `0x604b27...d3ecd6`; bsc `0x67fdfa...d0c372`; bsc `0x837bd2...3e6c89`; bsc `0x90ace5...0d248e`; bsc `0xa3096e...6d83fd`; bsc `0xa8a94c...d8aef8`; bsc `0xd8447d...e4e61a`; bsc `0xee0b0b...73e6df` | ✅ Audited |
| BNBUSDBasePool | core_logic | bsc | n/a | 10 deployments: bsc [`0x11212d...ab39f9`](./contracts/bsc-56/0x11212d2c05f83f22f240bb3975eb58caebab39f9/); bsc `0x219be2...c4ca94`; bsc `0x79d91d...51bb49`; bsc `0x89b70c...3f8598`; bsc `0x99b488...1086e2`; bsc `0xb323c8...a826a4`; bsc `0xb69066...a25576`; bsc `0xc7f067...cd8653`; bsc `0xdc0d3d...050bdd`; bsc `0xf0ebab...991a9d` | ✅ Audited |
| GaugeEmission | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x460b41...a67412`](./contracts/bsc-56/0x460b4107e1920b2ff3c513d1a17b65136da67412/); bsc `0xca5956...670b3e`; bsc `0xed724f...1956ae` | ✅ Audited |
| InverseBnbPriceOracle | operational_periphery | bsc | n/a | [`0xa9eb54...974bc0`](./contracts/bsc-56/0xa9eb54d992f2462f135a52ff9af3a01de3974bc0/) | ✅ Audited |
| ListaStrategy | core_logic | bsc | n/a | 2 deployments: bsc [`0x5cf8a3...827b76`](./contracts/bsc-56/0x5cf8a3781f96f50543cdd8fe7c0d0ff228827b76/); bsc `0xd8c4e5...14495e` | ✅ Audited |
| ListaStrategyV2 | core_logic | bsc | n/a | 6 deployments: bsc [`0x288f27...6370c8`](./contracts/bsc-56/0x288f275f238cbff9d0c6d115a95bf0a2916370c8/); bsc `0x42d6bd...fd8c9c`; bsc `0x434a55...35f87e`; bsc `0x5137cd...da0485`; bsc `0x6dbc02...936668`; bsc `0x8843fa...971b86` | ✅ Audited |
| LongPositionOperateFacet | unknown | bsc | n/a | 8 deployments: bsc [`0x071104...a64664`](./contracts/bsc-56/0x071104d080e4954dd848bf76f2ad1e2a88a64664/); bsc `0x5eb095...6346f7`; bsc `0x9d49ae...9b9181`; bsc `0xa249fa...d973fb`; bsc `0xb99040...c090e0`; bsc `0xc0f9f5...1f1836`; bsc `0xe87add...a26ff8`; bsc `0xf0db6d...99ecb9` | ✅ Audited |
| Minter | operational_periphery | bsc | n/a | [`0xa12663...55ee3d`](./contracts/bsc-56/0xa1266373dd701fc179f60eafbc3ae76cf355ee3d/) | ✅ Audited |
| MultiPathConverter | unknown | bsc | n/a | [`0xf44ef3...3179a3`](./contracts/bsc-56/0xf44ef3dd983d4a8612c7176eb71243ac113179a3/) | ✅ Audited |
| PegKeeper | operational_periphery | bsc | n/a | 9 deployments: bsc [`0x0644a9...6d5515`](./contracts/bsc-56/0x0644a92dd678f52fa0d60b3747453c2d4c6d5515/); bsc `0x1f13a0...fd57c0`; bsc `0x24a4ef...7b06fc`; bsc `0x704ab0...026475`; bsc `0xa00a1e...e1677b`; bsc `0xd043f9...47422b`; bsc `0xd5283c...b82492`; bsc `0xeaa146...03f1d5`; bsc `0xff5d0e...d88b2d` | ✅ Audited |
| PegKeeper | operational_periphery | bsc | unit-31724 | [`0xee3f89...7373f6`](./contracts/bsc-56/0xee3f89a14ddd6f77dee050aa4f9d3a52947373f6/) | ✅ Audited |
| PoolManager | core_logic | bsc | n/a | 4 deployments: bsc [`0x3c9a60...6c3f4e`](./contracts/bsc-56/0x3c9a606b4ad8dad49b562005707e36b17a6c3f4e/); bsc `0x62d43d...d664cf`; bsc `0x66471b...6cb4cb`; bsc `0x903d3c...fb88f0` | ✅ Audited |
| RevenuePool | core_logic | bsc | n/a | 47 deployments: bsc [`0x0164a2...65c3dd`](./contracts/bsc-56/0x0164a23a87e8a80182b04af38e9ee2927165c3dd/); bsc `0x048df3...d7fbf4`; bsc `0x0d0b40...10a768`; bsc `0x185949...53de52`; bsc `0x1b54fe...e08d44`; bsc `0x232da2...64d4cb`; bsc `0x2387ab...213446`; bsc `0x2bd7c4...51ebf8`; bsc `0x48a854...1583d5`; bsc `0x4c3917...b560f1`; bsc `0x692c00...30714d`; bsc `0x80ac75...b56787`; bsc `0x82d83d...b624fc`; bsc `0x8acbde...80e460`; bsc `0x95d565...05851c`; bsc `0x981a49...d45538`; bsc `0x9861be...e47a0c`; bsc `0x9a4c05...424e42`; bsc `0x9e3ddb...e56554`; bsc `0xa1fa84...6bb7a8`; bsc `0xa23868...8aa310`; bsc `0xa2a915...5b1fa7`; bsc `0xa32630...543d93`; bsc `0xa41e1b...789e6c`; bsc `0xa6f4fb...9f65cd`; bsc `0xa7ed2c...ed7423`; bsc `0xb0eaa5...309b36`; bsc `0xb38ad2...f31d5a`; bsc `0xb5c93f...9129ac`; bsc `0xb9e8f1...f4cba7`; bsc `0xc22432...25d272`; bsc `0xc46347...5c3580`; bsc `0xcd1119...61fd2f`; bsc `0xd55d9d...404f62`; bsc `0xd58e23...4056e9`; bsc `0xd69ac4...b45d3b`; bsc `0xdc42ca...fd4eb2`; bsc `0xddb4bb...ee38f3`; bsc `0xdf3292...00aad8`; bsc `0xe02586...daf6cd`; bsc `0xe5acc1...7ea153`; bsc `0xee7878...98a3a4`; bsc `0xeffd62...9e129f`; bsc `0xf48913...2f92e6`; bsc `0xf6c92e...b3efb5`; bsc `0xf8b14b...584027`; bsc `0xf98e7a...7c4e37` | ✅ Audited |
| RewardClaimers | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x56c9f9...55b8f1`](./contracts/bsc-56/0x56c9f9190af9ba6f970a8b1bfd1c87f21d55b8f1/); bsc `0x9c524b...a3708f` | ✅ Audited |
| Shadow | unknown | bsc | n/a | [`0x85375d...0a40e7`](./contracts/bsc-56/0x85375d3e9c4a39350f1140280a8b0de6890a40e7/) | ✅ Audited |
| ShortPoolManager | core_logic | bsc | n/a | [`0xdcf90d...a2fc0d`](./contracts/bsc-56/0xdcf90d6361e11a3673ce52ef9912d428cea2fc0d/) | ✅ Audited |
| ShortPositionOperateFacet | unknown | bsc | n/a | 2 deployments: bsc [`0x09a5fb...8b347a`](./contracts/bsc-56/0x09a5fbe112eddfc77bbd711a73fb0ba02b8b347a/); bsc `0x1b6ac7...0d9536` | ✅ Audited |
| SigmaAirdrop | operational_periphery | bsc | n/a | 10 deployments: bsc [`0x08ad73...e6ab54`](./contracts/bsc-56/0x08ad7351fe79133d75af41e1117c1e5c2be6ab54/); bsc `0x34ac34...d96f7a`; bsc `0x54db51...652cf0`; bsc `0x5e7109...2c00f5`; bsc `0x7f29d9...5f0a6a`; bsc `0x82ba7a...17bcf9`; bsc `0xa39144...35ab7f`; bsc `0xad465f...f3d138`; bsc `0xc328a4...de8ff5`; bsc `0xdd6876...3dd713` | ✅ Audited |
| SigmaClisBNBPool | core_logic | bsc | n/a | 5 deployments: bsc [`0x0b0f50...736511`](./contracts/bsc-56/0x0b0f505eb93d4cc1145177c4c75263435a736511/); bsc `0x1b6e6e...553bf2`; bsc `0x782b16...368f5f`; bsc `0xa3d7e7...35c25c`; bsc `0xf4f429...dff568` | ✅ Audited |
| SigmaClisBNBSYBNBRateProvider | governance | bsc | n/a | 9 deployments: bsc [`0x199bc7...c17f2a`](./contracts/bsc-56/0x199bc71ac0c28576a6626db83b2156c2bfc17f2a/); bsc `0x1cf9bf...a92095`; bsc `0x4fbeb5...ce0492`; bsc `0x5737f5...5c1baf`; bsc `0x6e88c9...53bbcf`; bsc `0x7ef811...8886dc`; bsc `0xb0bca5...74d17e`; bsc `0xc59568...d7c9f3`; bsc `0xd6bea4...129136` | ✅ Audited |
| SigmaClisBNBSYSlisBNBRateProvider | governance | bsc | n/a | 3 deployments: bsc [`0x8b8207...9b024a`](./contracts/bsc-56/0x8b8207b325ce75c68f0a2742f80b0c34689b024a/); bsc `0xcd27cc...6b3fb4`; bsc `0xd916d1...3b961d` | ✅ Audited |
| SigmaController | governance | bsc | n/a | 13 deployments: bsc [`0x450970...90891c`](./contracts/bsc-56/0x450970526f781e2ad050054e95c5d0622590891c/); bsc `0x5ae2be...8f58d7`; bsc `0x657bf4...f3c4ea`; bsc `0x7ac1f4...7ef385`; bsc `0x7eb2df...2bd92d`; bsc `0x8aef3e...800b15`; bsc `0xae4f78...a9271a`; bsc `0xb911ea...79d95d`; bsc `0xb9c0c1...7a337f`; bsc `0xbade8c...bfe4be`; bsc `0xe18dff...eeb863`; bsc `0xec5fa8...bf0a30`; bsc `0xf4259e...8d5e2b` | ✅ Audited |
| SigmaFeeDistributorFactory | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x163ec8...915c7a`](./contracts/bsc-56/0x163ec866b08dc9dc3e5ab0085c419c6d25915c7a/); bsc `0x7e0cca...defa11`; bsc `0x8937e9...efe316`; bsc `0xceda08...ebf638` | ✅ Audited |
| SigmaGaugeFactory | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x73ce30...6eab09`](./contracts/bsc-56/0x73ce30d722bde748e10d898aeae234cc246eab09/); bsc `0xaf2b59...4d9533`; bsc `0xb5e189...04fbd7`; bsc `0xb93b95...5e656b` | ✅ Audited |
| SigmaLongPool | core_logic | bsc | unit-31545 | [`0x31c464...4f70fb`](./contracts/bsc-56/0x31c464cfe506d44ceaa86c05cdbb94b5c94f70fb/) | ✅ Audited |
| SigmaLongPool | core_logic | bsc | n/a | [`0x8ae92f...474d6d`](./contracts/bsc-56/0x8ae92f914dbf05458533b09295aa1d6192474d6d/) | ✅ Audited |
| SigmaLongPool | core_logic | bsc | unit-31719 | [`0xe8a16f...187b7d`](./contracts/bsc-56/0xe8a16f808412c4341f692b49c81d64c374187b7d/) | ✅ Audited |
| SigmaSPAdapter | adapter | bsc | n/a | [`0xc04f63...57e91b`](./contracts/bsc-56/0xc04f63543b3ea6827374bbe95450bc107757e91b/) | ✅ Audited |
| SigmaVesting | operational_periphery | bsc | n/a | [`0x042666...c84e53`](./contracts/bsc-56/0x042666c0300cff4dadb7e2c553b2300668c84e53/) | ✅ Audited |
| TimelockedTransparentUpgradableProxy | governance | bsc | n/a | [`0xa82fad...dcad79`](./contracts/bsc-56/0xa82fad385ea96a61dcf810ca4a64e4c93ddcad79/) | ✅ Audited |
| VeFunderGaugeFactory | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x1d0fd2...8621cf`](./contracts/bsc-56/0x1d0fd2603ace68e5ef64ce579935bc2ea08621cf/); bsc `0x3de258...772353`; bsc `0x704231...603f31`; bsc `0xffb02c...917fb0` | ✅ Audited |
| VoteModule | unknown | bsc | n/a | 2 deployments: bsc [`0x3ffd01...d515c5`](./contracts/bsc-56/0x3ffd01215cd1093ab96b29f82ba1fb5752d515c5/); bsc `0xaa492b...269515` | ✅ Audited |
| Voter | unknown | bsc | n/a | [`0xdc2630...29b009`](./contracts/bsc-56/0xdc26302965a50b411ba50b4fc19f06a89929b009/) | ✅ Audited |
| x33 | unknown | bsc | n/a | [`0xdf7fea...4af7df`](./contracts/bsc-56/0xdf7fea060a78b2e12485b8fa4fbf5733df4af7df/) | ✅ Audited |
| XShadow | unknown | bsc | n/a | 4 deployments: bsc [`0x2b808d...050605`](./contracts/bsc-56/0x2b808d0a0e6bb5979ecc87813dacb9ec6a050605/); bsc `0x587612...3247a9`; bsc `0x87b662...675fb3`; bsc `0x9922bc...213b03` | ✅ Audited |
| YieldStrategy | core_logic | bsc | n/a | 5 deployments: bsc [`0x1e5ada...48d089`](./contracts/bsc-56/0x1e5ada755b3403a20368fa15f13d622eb548d089/); bsc `0x7bfee1...9d9a2d`; bsc `0xbd92ae...b18994`; bsc `0xde06b1...b21e73`; bsc `0xeec811...7a934e` | ✅ Audited |

### ⚠️ Verified + Unaudited (108)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveFundingPool | core_logic | bsc | unit-31611 | [`0x705523...1cd593`](./contracts/bsc-56/0x705523b2a5324d19e226d1d89c0249e27d1cd593/) | ⚠️ Unaudited |
| AsBnbPriceFeed | operational_periphery | bsc | n/a | [`0xa13542...00704d`](./contracts/bsc-56/0xa13542f7e49e9852e5c333beaf8617c4cb00704d/) | ⚠️ Unaudited |
| AtlasOracleAdaptor | operational_periphery | bsc | n/a | 20 deployments: bsc [`0x095989...1dca8b`](./contracts/bsc-56/0x095989a71792ccf2ae5f34401fdede71461dca8b/); bsc `0x0cd947...ce609c`; bsc `0x154d34...9f28c2`; bsc `0x2279c2...b9c81e`; bsc `0x2f8af2...b815a1`; bsc `0x36a9d9...330005`; bsc `0x412923...117358`; bsc `0x48e911...8ee676`; bsc `0x512ef1...4a2760`; bsc `0x5dd12f...7e6c64`; bsc `0x6e7b79...10994e`; bsc `0x73a73d...e07f53`; bsc `0x85d454...580ddd`; bsc `0x8d28ce...b4ae19`; bsc `0x8ed54a...f7f742`; bsc `0x8fb319...c2d55d`; bsc `0xa19f9b...979c37`; bsc `0xc8373c...095e98`; bsc `0xe479a4...1ea18f`; bsc `0xeb898a...302cde` | ⚠️ Unaudited |
| BasePegKeeper | operational_periphery | bsc | n/a | 6 deployments: bsc [`0x9dd8e6...4ae7c5`](./contracts/bsc-56/0x9dd8e6a3ca14ab78b328a5b51e2c4fee094ae7c5/); bsc `0xa76bc9...43f27c`; bsc `0xb0a52e...eba950`; bsc `0xc95220...00e0c7`; bsc `0xdcb013...87a020`; bsc `0xea854e...569d26` | ⚠️ Unaudited |
| BatchManagementUtils | periphery | bsc | n/a | [`0xbcde8d...5e5089`](./contracts/bsc-56/0xbcde8d636a28f5285677fa22890e4c7b615e5089/) | ⚠️ Unaudited |
| BNBProvider | unknown | bsc | n/a | [`0xd2ff01...10b173`](./contracts/bsc-56/0xd2ff01fbfaa68f2b59698e2b4d5e08c3df10b173/) | ⚠️ Unaudited |
| BNBSlisBNBConverter | unknown | bsc | n/a | [`0x9844e7...be9693`](./contracts/bsc-56/0x9844e7db4497065c99764a9f9d6b3232d7be9693/) | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | bsc | n/a | [`0xf1752f...bb6b7b`](./contracts/bsc-56/0xf1752f1f57f4b6ab8552ae5baa86171bf7bb6b7b/) | ⚠️ Unaudited |
| BrokerLiquidator | operational_periphery | bsc | n/a | 3 deployments: bsc [`0xab3eef...947a57`](./contracts/bsc-56/0xab3eef285d8ee7e977e41ea7e0add12f6f947a57/); bsc `0xde86fc...f4aaf4`; bsc `0xef30b2...d56eee` | ⚠️ Unaudited |
| Buyback | unknown | bsc | n/a | 4 deployments: bsc [`0x7e67e4...3a658f`](./contracts/bsc-56/0x7e67e4d9949f0b291a3458c139b49e6b113a658f/); bsc `0x9a7ca2...4222e1`; bsc `0xa2d1a0...989224`; bsc `0xc3904a...adc615` | ⚠️ Unaudited |
| CDPLiquidator | operational_periphery | bsc | n/a | [`0x1ce9c8...5123b5`](./contracts/bsc-56/0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5/) | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | bsc | n/a | [`0xa2525f...3d95fc`](./contracts/bsc-56/0xa2525f5d495adfc370f5674cd39365d0233d95fc/) | ⚠️ Unaudited |
| ConverterRegistry | registry | bsc | n/a | [`0xfee2d1...74b1a1`](./contracts/bsc-56/0xfee2d164de712d09894b7ae4b00c871f6774b1a1/) | ⚠️ Unaudited |
| CoreDeployer | unknown | bsc | n/a | [`0xd23eb2...769c1c`](./contracts/bsc-56/0xd23eb2517c7a2e38c2aec212728df1e5d3769c1c/) | ⚠️ Unaudited |
| CreditBroker | unknown | bsc | n/a | [`0xb63989...efad89`](./contracts/bsc-56/0xb6398924f2c2c5d29727dedf733cd968d9efad89/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | bsc | n/a | 2 deployments: bsc [`0xe6e290...741cd4`](./contracts/bsc-56/0xe6e2905f54baf7625f4943b74c50338362741cd4/); bsc `0xed55ff...5507ff` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | bsc | n/a | [`0xb84637...bbf625`](./contracts/bsc-56/0xb84637ab9be835580821a67823f414ffd0bbf625/) | ⚠️ Unaudited |
| Diamond | unknown | bsc | n/a | 2 deployments: bsc [`0x89d42c...fe6574`](./contracts/bsc-56/0x89d42c07f58b7ea2175e09fea3c08052defe6574/); bsc `0xb37ac2...83b8be` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | bsc | n/a | 4 deployments: bsc [`0xbc44ba...0fcedd`](./contracts/bsc-56/0xbc44bad7c0643b4b23fe5e0d326f63f65b0fcedd/); bsc `0xd8950c...ce99aa`; bsc `0xee9559...66c2a0`; bsc `0xf1cc7f...b0d2ac` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | bsc | n/a | 4 deployments: bsc [`0x8dbd7c...9fb17c`](./contracts/bsc-56/0x8dbd7c8a67dcc0de0e4b56d9967ff1d37e9fb17c/); bsc `0x95646d...d530fe`; bsc `0xd91c72...b774ba`; bsc `0xf8bfd1...d4e75a` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | bsc | n/a | [`0x4f6de1...00a5b1`](./contracts/bsc-56/0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1/) | ⚠️ Unaudited |
| EmptyContract | unknown | bsc | n/a | 21 deployments: bsc [`0x01d2c1...af068e`](./contracts/bsc-56/0x01d2c1df6686453595d423bc946d457682af068e/); bsc `0x07d60c...6293d3`; bsc `0x2b67cf...31b17a`; bsc `0x42e34b...86e200`; bsc `0x5c375f...adc2ae`; bsc `0x678913...67f286`; bsc `0x8120fa...f7b3c4`; bsc `0x827362...01e6ea`; bsc `0x833643...30649c`; bsc `0x867e51...bda1f8`; bsc `0x9322b4...e40101`; bsc `0x944dd8...54a7ae`; bsc `0x984e62...7db630`; bsc `0xa0e3ed...1f8f14`; bsc `0xa699f3...a80899`; bsc `0xb1069e...29482c`; bsc `0xb7e8ac...87d854`; bsc `0xc5f94e...354fc9`; bsc `0xc6d80f...a8fd7f`; bsc `0xcccedf...8f431c`; bsc `0xffff06...8384ed` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | 45 deployments: bsc [`0x12ebc1...572a1a`](./contracts/bsc-56/0x12ebc1709e2d751d5f6e327259c79a57e8572a1a/); bsc `0x15cc25...30ac30`; bsc `0x17c1bf...53aca7`; bsc `0x185cd2...9c1c86`; bsc `0x19c329...facf2b`; bsc `0x1cb5b9...3bd677`; bsc `0x28ef29...a8bd88`; bsc `0x2d460c...6db19d`; bsc `0x301b82...0bcd6c`; bsc `0x355949...a6e738`; bsc `0x38b741...89abce`; bsc `0x3d35d2...3dfb6d`; bsc `0x487545...d7068f`; bsc `0x5147e4...c2cf5e`; bsc `0x56d654...cf5c7a`; bsc `0x68fd8f...6af095`; bsc `0x6b0173...edbe04`; bsc `0x8127ca...dbdaa0`; bsc `0x92fe47...8976e3`; bsc `0x938cc7...a1556f`; bsc `0x96f66b...6b1dac`; bsc `0x97ac42...bfa52d`; bsc `0x9bdfa6...bf014f`; bsc `0x9daf5d...47b080`; bsc `0x9f80a7...e7a510`; bsc `0xa1efd2...cff036`; bsc `0xac1c50...91d0b9`; bsc `0xb2477a...e522b8`; bsc `0xb79660...50f020`; bsc `0xc25688...38bcde`; bsc `0xc26caa...d39c79`; bsc `0xc45583...dd07e2`; bsc `0xcb712c...940cc3`; bsc `0xcd00c2...6542d0`; bsc `0xcfa6b1...411d17`; bsc `0xd12c4d...a7fdd4`; bsc `0xd5fcc3...70334b`; bsc `0xd69e4b...31fddb`; bsc `0xd76665...1e93ef`; bsc `0xd7dd08...cea28c`; bsc `0xe1e887...7b2ed2`; bsc `0xe52592...e7031b`; bsc `0xf0ca1c...1a5e0d`; bsc `0xf93ecb...ca64ac`; bsc `0xfc2a24...8ac1fc` | ⚠️ Unaudited |
| FixedRateIrm | unknown | bsc | n/a | 2 deployments: bsc [`0x10c9cc...f08c82`](./contracts/bsc-56/0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82/); bsc `0x14efa5...bdac72` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | bsc | n/a | [`0xe45661...5d6805`](./contracts/bsc-56/0xe45661651b448a8789e039ab82d0cd88ee5d6805/) | ⚠️ Unaudited |
| FxUSDBasePoolV2Facet | core_logic | bsc | n/a | 4 deployments: bsc [`0x93cc21...d144b5`](./contracts/bsc-56/0x93cc21b713cc78264b6c060105429dd805d144b5/); bsc `0xb2624f...774345`; bsc `0xbc22dd...7ea6ed`; bsc `0xe5fca7...801d45` | ⚠️ Unaudited |
| HelioETHProvider | unknown | bsc | n/a | [`0xa16bb6...8e6ad9`](./contracts/bsc-56/0xa16bb61c80b29f7458d677009b3b5f4b868e6ad9/) | ⚠️ Unaudited |
| HelioProviderV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x6c9f8c...f37c11`](./contracts/bsc-56/0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11/); bsc `0xcc0330...e1e701` | ⚠️ Unaudited |
| IdleCollateralToken | token | bsc | n/a | [`0xb39d01...763fa3`](./contracts/bsc-56/0xb39d0107635686e6613dcd08018520c2fd763fa3/) | ⚠️ Unaudited |
| IdleOracle | operational_periphery | bsc | n/a | [`0xc259ee...ff8733`](./contracts/bsc-56/0xc259ee9cb561dfb5dca010b29b57f12341ff8733/) | ⚠️ Unaudited |
| Interaction | unknown | bsc | n/a | 2 deployments: bsc [`0x7d482d...db439d`](./contracts/bsc-56/0x7d482de96d35daa1ce48c7ab1f7264206adb439d/); bsc `0xce3389...110ed3` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x4b64f6...97b824`](./contracts/bsc-56/0x4b64f6d94f987880288c71e6dd4a48c71797b824/); bsc `0xbdb2cf...443d33`; bsc `0xdc45ed...93e22d` | ⚠️ Unaudited |
| L2FxUSD | unknown | bsc | n/a | 6 deployments: bsc [`0x13fc1e...721790`](./contracts/bsc-56/0x13fc1e6430c22c63a7af4b2445d6d363ab721790/); bsc `0x750e14...39e531`; bsc `0xa46c1e...e2b7aa`; bsc `0xb47d4e...43e06a`; bsc `0xe5bae5...f8b2f0`; bsc `0xff7cee...bcd379` | ⚠️ Unaudited |
| LendingBroker | core_logic | bsc | n/a | 53 deployments: bsc [`0x039c4a...36bbe9`](./contracts/bsc-56/0x039c4a60c53ff684b5113f0303a91f1d5336bbe9/); bsc `0x0f8aab...7a6b8d`; bsc `0x1cbd43...69afa8`; bsc `0x218095...b38d78`; bsc `0x28fb75...ac74fc`; bsc `0x2ef465...b83223`; bsc `0x31f60d...eef54b`; bsc `0x3a2c35...3200ee`; bsc `0x3be25d...7f331f`; bsc `0x3c4b64...7e7877`; bsc `0x3e4f45...06ef6d`; bsc `0x44cf38...eccdd5`; bsc `0x463efd...17fbab`; bsc `0x46d795...f630aa`; bsc `0x580275...054282`; bsc `0x5d440a...b707c0`; bsc `0x5ee171...ff3a23`; bsc `0x67e0d8...913b48`; bsc `0x684e01...9cc30f`; bsc `0x6a183f...637ac4`; bsc `0x6d1377...d50011`; bsc `0x6e0200...57e853`; bsc `0x714e63...535b1c`; bsc `0x7deb46...a1d718`; bsc `0x85ec16...d4a9d6`; bsc `0x864e21...439f5d`; bsc `0x882064...067307`; bsc `0x900b4d...ba5f0e`; bsc `0x91e79f...18c48c`; bsc `0x948c51...a7d36d`; bsc `0x9b1f52...d355bf`; bsc `0xa96553...9882fd`; bsc `0xa9ca92...0f0350`; bsc `0xad04ad...6e153d`; bsc `0xb1aa81...551e09`; bsc `0xbdc978...dff7aa`; bsc `0xbf7c2a...e4c1fd`; bsc `0xc7c519...7d854e`; bsc `0xc8a0ae...57352c`; bsc `0xc97e90...25a061`; bsc `0xcde5e3...7db0a0`; bsc `0xd16ee3...1d6425`; bsc `0xd2d086...25aa25`; bsc `0xd54ff6...53f621`; bsc `0xd7242c...be6d4e`; bsc `0xea3dd7...c92043`; bsc `0xea51d4...628301`; bsc `0xec19e3...215b0e`; bsc `0xee82e1...f1a30a`; bsc `0xef2468...71379a`; bsc `0xf3c6df...0b9d0a`; bsc `0xf65756...da711a`; bsc `0xfd13bb...c1b292` | ⚠️ Unaudited |
| LendingFeeRecipient | operational_periphery | bsc | n/a | [`0xe3c0d0...6d89ff`](./contracts/bsc-56/0xe3c0d0caff18aaa03fb4cd491b389fdcb06d89ff/) | ⚠️ Unaudited |
| Liquidator | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x534ae7...1973d0`](./contracts/bsc-56/0x534ae76dd9fccb0aa483f309b1a350d4f61973d0/); bsc `0x93414b...f138a5`; bsc `0xff0895...4d8b1d` | ⚠️ Unaudited |
| ListaAirdrop | operational_periphery | bsc | n/a | 8 deployments: bsc [`0x087b98...7d5089`](./contracts/bsc-56/0x087b9843155597bd447088c4eccde485357d5089/); bsc `0x30639f...613cc3`; bsc `0x3127b4...d370a1`; bsc `0x42d9dd...0627b6`; bsc `0xa18ae7...400d61`; bsc `0xa64fe2...099301`; bsc `0xc59f2f...dfcc9d`; bsc `0xf7b841...dbea01` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | n/a | 3 deployments: bsc [`0x362d27...9446ea`](./contracts/bsc-56/0x362d279284ed18fdc3e04bf0edd8bc453e9446ea/); bsc `0x55fd8e...29b186`; bsc `0xedd876...2f4214` | ⚠️ Unaudited |
| ListaDAORateProvider | unknown | bsc | n/a | [`0x833213...2c47df`](./contracts/bsc-56/0x83321333463dd459e6c6629cceed5e226c2c47df/) | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x95cacf...b14635`](./contracts/bsc-56/0x95cacf296483efafbc924c8c30f72f9f51b14635/); bsc `0xa45625...5dacba` | ⚠️ Unaudited |
| ListaStakeManager | governance | bsc | n/a | 3 deployments: bsc [`0x5bf5c3...9f301c`](./contracts/bsc-56/0x5bf5c3b5f5c29dbc647d2557cc22b00ed29f301c/); bsc `0x89b2eb...e9486a`; bsc `0xd99ab8...c64e91` | ⚠️ Unaudited |
| ListaVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x29202d...457167`](./contracts/bsc-56/0x29202d64986097a099575807ed8284b0fd457167/); bsc `0x7dcafc...36adaf` | ⚠️ Unaudited |
| lisUSDPriceFeed | operational_periphery | bsc | n/a | [`0x989af6...d7c2c0`](./contracts/bsc-56/0x989af6aa3db449e49f1b3210b8750446bed7c2c0/) | ⚠️ Unaudited |
| LpProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x12b09b...1424c0`](./contracts/bsc-56/0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0/); bsc `0x81d163...6e2e4d` | ⚠️ Unaudited |
| LpUsd | unknown | bsc | n/a | [`0xbe924a...6d02ee`](./contracts/bsc-56/0xbe924a2ef7e0cf41370df15899783f9ead6d02ee/) | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | n/a | [`0xad745b...731521`](./contracts/bsc-56/0xad745bcb555746317e3c2bc6aa583f43ad731521/) | ⚠️ Unaudited |
| MerkleVerifier | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x92dffe...a1aa3e`](./contracts/bsc-56/0x92dffe843068f43d66505d0d16a9c16329a1aa3e/); bsc `0xac6a68...a95739`; bsc `0xaf2982...6a722d`; bsc `0xcf7b18...9fe9d0`; bsc `0xd69e7b...281eac` | ⚠️ Unaudited |
| MockGauge | operational_periphery | bsc | n/a | 3 deployments: bsc [`0xb03e82...684ce0`](./contracts/bsc-56/0xb03e82cc86deedeca94a06a3741213347a684ce0/); bsc `0xc8dd8a...2a2f7f`; bsc `0xf08d6c...384c0f` | ⚠️ Unaudited |
| Moolah | unknown | bsc | n/a | 10 deployments: bsc [`0x0af5cd...6bc34f`](./contracts/bsc-56/0x0af5cd9555bc52c34a5f7b20042109d0136bc34f/); bsc `0x316039...95e316`; bsc `0x4b1ec9...3510b9`; bsc `0x627527...294be9`; bsc `0x75c42e...059686`; bsc `0x7ee9ed...2b13b6`; bsc `0xa621ef...f14dca`; bsc `0xd3b6aa...53004a`; bsc `0xdb33cc...c20e2f`; bsc `0xf97ce1...0d8568` | ⚠️ Unaudited |
| MoolahVault | core_logic | bsc | n/a | 9 deployments: bsc [`0x2d98c9...a47405`](./contracts/bsc-56/0x2d98c9185a35bb4ee6a4f9cf5ff8348f70a47405/); bsc `0x33a343...d15a1b`; bsc `0x6357a5...8f2714`; bsc `0x89d6f9...2617b6`; bsc `0x8de848...1eeee4`; bsc `0xb5854e...e7841f`; bsc `0xb5fcba...97702c`; bsc `0xd39429...5158fe`; bsc `0xfaeccd...785f4c` | ⚠️ Unaudited |
| MoolahVaultFactory | registry | bsc | n/a | 7 deployments: bsc [`0x0d1fac...b9fb52`](./contracts/bsc-56/0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52/); bsc `0x3984e9...28a443`; bsc `0x49fab7...7d5bdf`; bsc `0x55a937...8cf5fc`; bsc `0xa505ac...4af80f`; bsc `0xcd13a4...cb91ac`; bsc `0xdcae13...535134` | ⚠️ Unaudited |
| MoolahVaultManager | core_logic | bsc | n/a | [`0xd4a678...14db12`](./contracts/bsc-56/0xd4a6789d17958dcf7d7c31950b8c161eb414db12/) | ⚠️ Unaudited |
| mXRPPriceFeed | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x0999ca...3f84bf`](./contracts/bsc-56/0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf/); bsc `0xcec9dd...6d2a51` | ⚠️ Unaudited |
| OwnershipFacet | unknown | bsc | n/a | 3 deployments: bsc [`0x84047b...238c77`](./contracts/bsc-56/0x84047bc18c45fcd2303f36a220aa41ffc4238c77/); bsc `0xb83d60...4abd6d`; bsc `0xdc7365...f622f8` | ⚠️ Unaudited |
| PancakeSwapExample | unknown | bsc | n/a | 2 deployments: bsc [`0x354c4b...2e46bc`](./contracts/bsc-56/0x354c4bc4cc6c81362e049c0de57dffd3632e46bc/); bsc `0x89f85f...675e1e` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | bsc | n/a | [`0x9d23ef...d5493c`](./contracts/bsc-56/0x9d23ef572729284c00d387ac19ae853c73d5493c/) | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | bsc | n/a | [`0x871f80...fee1fa`](./contracts/bsc-56/0x871f808e7827244053fbb81c89cf7f5c02fee1fa/) | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | core_logic | bsc | n/a | [`0x0998cd...71941d`](./contracts/bsc-56/0x0998cd70b60ee5cf5a41a69d7d121d065d71941d/) | ⚠️ Unaudited |
| PancakeV3SpotPriceReader | operational_periphery | bsc | n/a | 16 deployments: bsc [`0x033555...4e4e67`](./contracts/bsc-56/0x0335554570fa20773b760c55e0141845104e4e67/); bsc `0x0871bb...554389`; bsc `0x11cf98...a18def`; bsc `0x1fea48...c05eed`; bsc `0x211c99...47a32d`; bsc `0x220ed3...4780e5`; bsc `0x4b1a50...6923c4`; bsc `0xbcaa5b...af316c`; bsc `0xc2f0dd...7a921c`; bsc `0xc30d13...935ff0`; bsc `0xcb1132...9ee05e`; bsc `0xd76387...2dc46a`; bsc `0xdb0b57...ed32fa`; bsc `0xdf23e3...8989b8`; bsc `0xeded81...be3c84`; bsc `0xf39e92...1691e5` | ⚠️ Unaudited |
| PausableMock | unknown | bsc | n/a | 3 deployments: bsc [`0x7e8ef7...4a5ee0`](./contracts/bsc-56/0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0/); bsc `0xead4fe...fda3a7`; bsc `0xf5e80f...fc77a0` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | 33 deployments: bsc [`0x0c1879...cff8ad`](./contracts/bsc-56/0x0c1879b1205312dbcd738d1eaf53b09e4ecff8ad/); bsc `0x2088df...b5c138`; bsc `0x252b59...e840b3`; bsc `0x288e44...e533da`; bsc `0x2d332f...4434f4`; bsc `0x2f0927...032c11`; bsc `0x37e0b4...af9fd3`; bsc `0x3ed43c...95a9d6`; bsc `0x3ee560...e71c73`; bsc `0x5afc98...8d3492`; bsc `0x6560d1...8fdc46`; bsc `0x696001...5a2b20`; bsc `0x7254bf...39c136`; bsc `0x794105...d5e9be`; bsc `0x808d1b...a08105`; bsc `0x8662ce...585d8f`; bsc `0x8f0512...29a4a1`; bsc `0x9627b4...a9ac7d`; bsc `0x9acdc9...fee1f3`; bsc `0x9c0e2b...c3fc20`; bsc `0x9f114e...eeee22`; bsc `0xa05c04...028fcf`; bsc `0xa1e000...bb51f7`; bsc `0xa2e52c...aad0a4`; bsc `0xb6df19...920134`; bsc `0xb9e701...9c9f6c`; bsc `0xe2a252...7b9d2a`; bsc `0xe4a1c4...98d2ca`; bsc `0xeeda1b...ed5cab`; bsc `0xf094b0...219a61`; bsc `0xf12b56...0cd409`; bsc `0xf3bd8d...a3fb02`; bsc `0xff8cb5...30f22a` | ⚠️ Unaudited |
| PTLinearDiscountOracle | operational_periphery | bsc | n/a | 20 deployments: bsc [`0x0f5fef...c72695`](./contracts/bsc-56/0x0f5fef35bf29ae48f3ed50e7d67d9a5cdcc72695/); bsc `0x1b2d36...4cd91b`; bsc `0x246917...6915ec`; bsc `0x25efb2...cb8e91`; bsc `0x3340df...efc133`; bsc `0x358614...3a0c66`; bsc `0x3afcaa...4849d8`; bsc `0x3e739b...9a44bd`; bsc `0x75856b...57edd1`; bsc `0x7b4717...3b6aa4`; bsc `0x97093f...3afea3`; bsc `0xa23b3b...384c8f`; bsc `0xb3be6e...7387f0`; bsc `0xc948b0...e9e7bb`; bsc `0xcd5aea...83c880`; bsc `0xd84d26...8f57e5`; bsc `0xe09e7b...6ac914`; bsc `0xf5ed7f...fce294`; bsc `0xf87e99...e77ef3`; bsc `0xffe3a7...d5074d` | ⚠️ Unaudited |
| PublicLiquidator | operational_periphery | bsc | n/a | [`0x50c542...e42572`](./contracts/bsc-56/0x50c542774620da722c90cc2ce709c4c1d2e42572/) | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | n/a | [`0xe701f1...d10b1e`](./contracts/bsc-56/0xe701f1a3064c3c06f2a6092c921e2a9946d10b1e/) | ⚠️ Unaudited |
| RateCalculator | unknown | bsc | n/a | 2 deployments: bsc [`0x3a8431...05c5de`](./contracts/bsc-56/0x3a84315d6e14291dace3fbc62d24f52c3505c5de/); bsc `0xd7e46d...3342d8` | ⚠️ Unaudited |
| ReservePool | core_logic | bsc | n/a | 13 deployments: bsc [`0x0776c7...b0790d`](./contracts/bsc-56/0x0776c78a6ee9849ec5adac10d902b460bcb0790d/); bsc `0x1be63b...a810f7`; bsc `0x3a94a1...e3e371`; bsc `0x72c551...418e60`; bsc `0x7c5e3c...bc4611`; bsc `0x8b6a5b...fc4639`; bsc `0xb5b2d8...0f4237`; bsc `0xc7c7ef...b663e0`; bsc `0xd54344...b035e3`; bsc `0xec69a0...09d363`; bsc `0xf7314c...6064b6`; bsc `0xfc6b69...928570`; bsc `0xfe708f...a373f4` | ⚠️ Unaudited |
| ReverseStabilityPool | core_logic | bsc | n/a | 5 deployments: bsc [`0x2f4d20...4a8657`](./contracts/bsc-56/0x2f4d20169a2c00805e8b2b93e8633e56e94a8657/); bsc `0x720961...fb60f6`; bsc `0x95bece...645e1b`; bsc `0x992b0d...09c376`; bsc `0xc01898...84503b` | ⚠️ Unaudited |
| RouterManagementFacet | adapter | bsc | n/a | [`0xc24de5...49e4b6`](./contracts/bsc-56/0xc24de5d98a933a2be10be48451a252b65049e4b6/) | ⚠️ Unaudited |
| RWAAdapter | adapter | bsc | n/a | 3 deployments: bsc [`0x0b116d...e350eb`](./contracts/bsc-56/0x0b116d1944e05348003479b517355b1ccee350eb/); bsc `0x24ef66...17516e`; bsc `0x86f7c1...41ce7a` | ⚠️ Unaudited |
| RWAEarnPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x505829...357a33`](./contracts/bsc-56/0x505829773ebda34d6f627bb493cf993a1e357a33/); bsc `0xaf886f...21901a` | ⚠️ Unaudited |
| SafeGuard | governance | bsc | n/a | 3 deployments: bsc [`0x59828a...770ef6`](./contracts/bsc-56/0x59828a98b4ba4e69a12718bbdd831f10a2770ef6/); bsc `0xb35276...0ffb6c`; bsc `0xb4a366...7d3097` | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0x0609c8...317f34`](./contracts/bsc-56/0x0609c8c37baab0f38f4a99e63eb0d4b433317f34/) | ⚠️ Unaudited |
| SigmaClisBNBPriceOracle | operational_periphery | bsc | n/a | 11 deployments: bsc [`0x7fe50e...d2f8c9`](./contracts/bsc-56/0x7fe50ef455a8b6f482d45f85fadc3a1348d2f8c9/); bsc `0x8f9d40...ae5ee0`; bsc `0x949673...1496d1`; bsc `0x987dad...45996c`; bsc `0x9a62b8...d046d7`; bsc `0xcae968...6bea3e`; bsc `0xce315d...f93564`; bsc `0xd1a55e...5e1bb1`; bsc `0xdcadbe...06d40b`; bsc `0xe23d61...72a6a5`; bsc `0xef9f01...b7a4fa` | ⚠️ Unaudited |
| SigmaClisBNBSY | governance | bsc | n/a | 7 deployments: bsc [`0x4ad309...783b6c`](./contracts/bsc-56/0x4ad309221004373328109f39318deb71b7783b6c/); bsc `0x9c16d5...2c9f4c`; bsc `0xa1f57c...c7be5c`; bsc `0xa4476f...661c04`; bsc `0xc80a20...406659`; bsc `0xd72bea...ec89c8`; bsc `0xfbf84c...0d6ed1` | ⚠️ Unaudited |
| SigmaDisperser | unknown | bsc | n/a | [`0xf9a16c...292dbe`](./contracts/bsc-56/0xf9a16ccc27680a8880c7a2f8673f4e40ab292dbe/) | ⚠️ Unaudited |
| SigmaSPAdapterExample | adapter | bsc | n/a | [`0x03557a...890bb3`](./contracts/bsc-56/0x03557a350ec139190ee2914f6f3558b5bb890bb3/) | ⚠️ Unaudited |
| SlisBnbOracle | operational_periphery | bsc | n/a | [`0xc49b40...c7a58d`](./contracts/bsc-56/0xc49b40e34fbbf32a710e6c8339d89b4091c7a58d/) | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | n/a | 7 deployments: bsc [`0x53c14f...280f1c`](./contracts/bsc-56/0x53c14f8d20745680e296b9763fdcf1fa35280f1c/); bsc `0x9498e3...c6e890`; bsc `0x9d9d18...d0adf8`; bsc `0xb3c4ed...693db0`; bsc `0xbae10a...7f2f59`; bsc `0xc4ebc6...9085ae`; bsc `0xd10a02...8b0d30` | ⚠️ Unaudited |
| slisBNBx | unknown | bsc | n/a | [`0x44f987...64c5aa`](./contracts/bsc-56/0x44f987fe1fd3597abcf95b8790351d00ff64c5aa/) | ⚠️ Unaudited |
| SLisLibrary | unknown | bsc | n/a | [`0xb03518...d36da8`](./contracts/bsc-56/0xb03518022f7845e901f35ea39c64b0904cd36da8/) | ⚠️ Unaudited |
| SmartProvider | unknown | bsc | n/a | 7 deployments: bsc [`0x450cfe...6667f2`](./contracts/bsc-56/0x450cfe8925c8d729cfbf9e9f583cbda3e86667f2/); bsc `0x59fa44...6baeda`; bsc `0x6bdb0d...039369`; bsc `0x8dadaf...c63ff6`; bsc `0x99bf20...31caf3`; bsc `0xb51e9c...3bf9d2`; bsc `0xc3ea03...b35de3` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | operational_periphery | bsc | n/a | [`0xd5342f...a60042`](./contracts/bsc-56/0xd5342ff1ae0621be72c11ecb620a5cec0aa60042/) | ⚠️ Unaudited |
| StableSwapLP | unknown | bsc | n/a | [`0x7c43dc...87a84c`](./contracts/bsc-56/0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c/) | ⚠️ Unaudited |
| StableSwapLPCollateral | unknown | bsc | n/a | 8 deployments: bsc [`0x1a7226...81a806`](./contracts/bsc-56/0x1a7226eafb48ad71d28ade957f20d9dc4d81a806/); bsc `0x1d76e2...b86f59`; bsc `0x225f3f...4f9c1c`; bsc `0x637020...105098`; bsc `0x94f1af...b1c0ba`; bsc `0xacb63b...712478`; bsc `0xc0c4a8...496cc6`; bsc `0xc68d35...3e77db` | ⚠️ Unaudited |
| StableSwapPool | core_logic | bsc | n/a | 3 deployments: bsc [`0x212b83...a3a126`](./contracts/bsc-56/0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126/); bsc `0x74082e...0c2615`; bsc `0xfe76a4...387862` | ⚠️ Unaudited |
| StonePriceFeed | operational_periphery | bsc | n/a | [`0xd6860a...55c4d8`](./contracts/bsc-56/0xd6860a2e20d7b158aac422a4030648bf2655c4d8/) | ⚠️ Unaudited |
| sUSD1PriceFeed | operational_periphery | bsc | n/a | [`0x54e881...b380b3`](./contracts/bsc-56/0x54e8810cdde88f531485d2f04321a28e7db380b3/) | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | operational_periphery | bsc | n/a | [`0x152624...7c81c0`](./contracts/bsc-56/0x1526249ef1501bb4207e1431c285ffc2e17c81c0/) | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | operational_periphery | bsc | n/a | [`0x573ca8...c5c308`](./contracts/bsc-56/0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308/) | ⚠️ Unaudited |
| TimeLock | governance | bsc | n/a | 2 deployments: bsc [`0x90b1f0...01b08a`](./contracts/bsc-56/0x90b1f073dda06efbce3612df8e8135d87101b08a/); bsc `0x9705cd...0e7e3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 53 deployments: bsc [`0x0ef74a...7f13a0`](./contracts/bsc-56/0x0ef74a5572e4cf2cb0faf3fb0fa17d6f6b7f13a0/); bsc `0x112612...b7296c`; bsc `0x1523b0...a605b7`; bsc `0x169469...3c3683`; bsc `0x18878a...933fc9`; bsc `0x1bf29b...9d34fc`; bsc `0x22ebf9...4d97e7`; bsc `0x23d0a4...55cf1c`; bsc `0x2b01c6...5b5337`; bsc `0x2e4276...8de4fa`; bsc `0x2fdcf2...c7ff5b`; bsc `0x36eb3a...c3bf73`; bsc `0x393dbd...163835`; bsc `0x3a9aee...f2d697`; bsc `0x43be4c...f6f7c6`; bsc `0x4fbd64...cbeb65`; bsc `0x5ce9d3...531848`; bsc `0x5f394d...82c258`; bsc `0x69c692...d165ec`; bsc `0x6d5a76...f43c02`; bsc `0x6df2e2...751e1c`; bsc `0x6f1c4a...6f0f6b`; bsc `0x72dac4...01ab24`; bsc `0x7c62e9...653346`; bsc `0x837854...b7f10a`; bsc `0x86c193...9473c0`; bsc `0x8ea874...26ec3d`; bsc `0x8eaf54...f015e1`; bsc `0x92ab25...163b7a`; bsc `0x9c0724...d4fe50`; bsc `0x9cb24d...5c92a4`; bsc `0xaa0d47...ffd1ff`; bsc `0xabc2d0...cad1e9`; bsc `0xbb557b...b38e55`; bsc `0xbb78ee...0b8329`; bsc `0xc0a44a...435754`; bsc `0xc23675...9e9d7f`; bsc `0xc2a6dc...85d335`; bsc `0xc83dfd...95f191`; bsc `0xd042f9...d1e4af`; bsc `0xd3a168...a51ab5`; bsc `0xd40cf9...6a7cbf`; bsc `0xd6527d...7adc9c`; bsc `0xd690ab...7ec5b4`; bsc `0xda230c...7f273c`; bsc `0xe1d0bb...c18afe`; bsc `0xe2b995...6a4ab0`; bsc `0xe2ec4c...c5daf6`; bsc `0xea5e7e...d37948`; bsc `0xec6a6a...16c895`; bsc `0xecf341...465254`; bsc `0xf0ba22...07fbc8`; bsc `0xf9a27d...9da1ad` | ⚠️ Unaudited |
| uniBTCPriceFeed | operational_periphery | bsc | n/a | [`0x150d8f...bbb936`](./contracts/bsc-56/0x150d8f804ebfd30202f59bc374301512e6bbb936/) | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | operational_periphery | bsc | n/a | [`0x7a4c41...626d2d`](./contracts/bsc-56/0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d/) | ⚠️ Unaudited |
| VeLista | unknown | bsc | n/a | [`0x765d17...70274e`](./contracts/bsc-56/0x765d17e43be4fa44b1cf75a01dc10ab95470274e/) | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | n/a | [`0x321abb...19caee`](./contracts/bsc-56/0x321abb57a8355818211d460fc91ca9b79019caee/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | bsc | n/a | 9 deployments: bsc [`0x0e45f7...8229df`](./contracts/bsc-56/0x0e45f70831642454d2102392c38977e2938229df/); bsc `0x260df7...53ee56`; bsc `0x315e18...6b2218`; bsc `0x6789e8...c50a40`; bsc `0x86a305...047b72`; bsc `0x86a412...7d68ba`; bsc `0xa1f41a...e9c242`; bsc `0xc248fe...1e305c`; bsc `0xea0197...6e6122` | ⚠️ Unaudited |
| WBETHOracle | operational_periphery | bsc | n/a | [`0x6f3da9...384584`](./contracts/bsc-56/0x6f3da9ee8965ef22228a103df4719a74b7384584/) | ⚠️ Unaudited |
| WBETHPriceFeed | operational_periphery | bsc | n/a | [`0xeb3ac5...92f5a6`](./contracts/bsc-56/0xeb3ac57d6af35519db62bd150bef7388f892f5a6/) | ⚠️ Unaudited |
| WBNBSlisBNBConverter | unknown | bsc | n/a | [`0xf30c24...0f8134`](./contracts/bsc-56/0xf30c24cd63860cd73cf2dae7f9cfe9549b0f8134/) | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | operational_periphery | bsc | n/a | [`0xf86155...de4262`](./contracts/bsc-56/0xf86155a27b5cd958732a29829d80017727de4262/) | ⚠️ Unaudited |
| wsrUSDPriceFeed | operational_periphery | bsc | n/a | [`0xfee2c5...76a46f`](./contracts/bsc-56/0xfee2c5ad734e64c8a63105187a5b465c3176a46f/) | ⚠️ Unaudited |
| WstETHPriceFeed | operational_periphery | bsc | n/a | [`0x950620...d23fc5`](./contracts/bsc-56/0x950620918c66b080990b18635f1d7d4f70d23fc5/) | ⚠️ Unaudited |
| wstUSRNewPriceFeed | operational_periphery | bsc | n/a | [`0xdc3360...324104`](./contracts/bsc-56/0xdc3360252a4f94c1e0d93816ff1335440e324104/) | ⚠️ Unaudited |
| wstUSRPriceFeed | operational_periphery | bsc | n/a | [`0x5439ec...4722c8`](./contracts/bsc-56/0x5439ec87e111b1ac0ae676dbf561cd66164722c8/) | ⚠️ Unaudited |
| xSolvBTCOracle | operational_periphery | bsc | n/a | [`0xd7e6cb...26527c`](./contracts/bsc-56/0xd7e6cb9dd8ee997d341e80cddb448beee526527c/) | ⚠️ Unaudited |
| xSolvBtcPriceFeed | operational_periphery | bsc | n/a | [`0x267cbe...a0bc5e`](./contracts/bsc-56/0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e/) | ⚠️ Unaudited |
| yUSDFixedPriceFeed | operational_periphery | bsc | n/a | [`0xaaff27...6d3365`](./contracts/bsc-56/0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365/) | ⚠️ Unaudited |
| yUSDPriceFeed | operational_periphery | bsc | n/a | [`0x687c3e...e24a04`](./contracts/bsc-56/0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x04bd5c...05b2ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05a8d0...143a54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11a77a...065e28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11eb9f...7209eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17e6e5...59c62b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f04a2...5d95f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2903fd...67942b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d4662...44ba37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2eb07a...ac00b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3591d7...e4d045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49d842...7f7a0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x582388...f41561` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5934b8...4a3387` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5eb696...910c4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x623fd8...81e405` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66eb74...d24fae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a25b4...a74ae5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3568...4348f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x703e54...4b06a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76928a...4855c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76cb63...7cd38d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b35e3...804dfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e1f2e...8a07ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x844860...fced24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a6786...d081ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x936454...ee1151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x947d86...43c490` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x984cae...7c777a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c369e...9cf85a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ee9ba...642b8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fa29e...58796a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2f28f...50b089` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8c4a0...912063` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa930c5...96f56d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa5b88...4f1a1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba500b...0176e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcc285...fc0a48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1d993...6d2c97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdced7e...60d8fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc477...f2559f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeb0f0...eda6c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SigmaMoney round 2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%202%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-07 | fresh | Direct | contract_name | 103 | high |
| [Supremacy-Audit-Report-SigmaMoney-v1.2.pdf](https://github.com/SupremacyTeam/publications/blob/main/Sigma%20Money/Supremacy-Audit-Report-SigmaMoney-v1.2.pdf) | Supremacy | Audit | 2025-07 | fresh | Direct | contract_name | 17 | high |
| [SigmaMoney round 3 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%203%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-08 | fresh | Direct | contract_name | 47 | high |
| [Supremacy-Audit-Report-SigmaMoney-v1.6.pdf](https://github.com/SupremacyTeam/publications/blob/main/Sigma%20Money/Supremacy-Audit-Report-SigmaMoney-v1.6.pdf) | Supremacy | Audit | 2025-08 | fresh | Direct | contract_name | 20 | high |
| [SigmaMoney round 4 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%204%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-09 | fresh | Direct | contract_name | 22 | high |
| [Sigma DAO round 1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%201%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-09 | fresh | Direct | contract_name | 24 | high |
| [Sigma DAO round 2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%202%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 7 | high |
| [Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%203%264%265%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 14 | high |
| [SigmaMoney Round 7 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20Round%207%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-11 | fresh | Direct | contract_name | 8 | high |
| [Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma_Dao_round_6_%26_Money_round_8_SlowMist_Audit_Report.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | contract_name | 49 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9844e7...be9693`](./contracts/bsc-56/0x9844e7db4497065c99764a9f9d6b3232d7be9693/) | BNBSlisBNBConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e67e4...3a658f`](./contracts/bsc-56/0x7e67e4d9949f0b291a3458c139b49e6b113a658f/) | Buyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ce9c8...5123b5`](./contracts/bsc-56/0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5/) | CDPLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbc44ba...0fcedd`](./contracts/bsc-56/0xbc44bad7c0643b4b23fe5e0d326f63f65b0fcedd/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f6de1...00a5b1`](./contracts/bsc-56/0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1/) | EmergencyShutdown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01d2c1...af068e`](./contracts/bsc-56/0x01d2c1df6686453595d423bc946d457682af068e/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x93cc21...d144b5`](./contracts/bsc-56/0x93cc21b713cc78264b6c060105429dd805d144b5/) | FxUSDBasePoolV2Facet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c9f8c...f37c11`](./contracts/bsc-56/0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11/) | HelioProviderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d482d...db439d`](./contracts/bsc-56/0x7d482de96d35daa1ce48c7ab1f7264206adb439d/) | Interaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b64f6...97b824`](./contracts/bsc-56/0x4b64f6d94f987880288c71e6dd4a48c71797b824/) | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13fc1e...721790`](./contracts/bsc-56/0x13fc1e6430c22c63a7af4b2445d6d363ab721790/) | L2FxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x039c4a...36bbe9`](./contracts/bsc-56/0x039c4a60c53ff684b5113f0303a91f1d5336bbe9/) | LendingBroker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x534ae7...1973d0`](./contracts/bsc-56/0x534ae76dd9fccb0aa483f309b1a350d4f61973d0/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x087b98...7d5089`](./contracts/bsc-56/0x087b9843155597bd447088c4eccde485357d5089/) | ListaAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95cacf...b14635`](./contracts/bsc-56/0x95cacf296483efafbc924c8c30f72f9f51b14635/) | ListaRevenueDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bf5c3...9f301c`](./contracts/bsc-56/0x5bf5c3b5f5c29dbc647d2557cc22b00ed29f301c/) | ListaStakeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29202d...457167`](./contracts/bsc-56/0x29202d64986097a099575807ed8284b0fd457167/) | ListaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x989af6...d7c2c0`](./contracts/bsc-56/0x989af6aa3db449e49f1b3210b8750446bed7c2c0/) | lisUSDPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12b09b...1424c0`](./contracts/bsc-56/0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0/) | LpProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb03e82...684ce0`](./contracts/bsc-56/0xb03e82cc86deedeca94a06a3741213347a684ce0/) | MockGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0af5cd...6bc34f`](./contracts/bsc-56/0x0af5cd9555bc52c34a5f7b20042109d0136bc34f/) | Moolah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d98c9...a47405`](./contracts/bsc-56/0x2d98c9185a35bb4ee6a4f9cf5ff8348f70a47405/) | MoolahVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d1fac...b9fb52`](./contracts/bsc-56/0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52/) | MoolahVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0999ca...3f84bf`](./contracts/bsc-56/0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf/) | mXRPPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0998cd...71941d`](./contracts/bsc-56/0x0998cd70b60ee5cf5a41a69d7d121d065d71941d/) | PancakeSwapV3LpStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e8ef7...4a5ee0`](./contracts/bsc-56/0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0/) | PausableMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f5fef...c72695`](./contracts/bsc-56/0x0f5fef35bf29ae48f3ed50e7d67d9a5cdcc72695/) | PTLinearDiscountOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50c542...e42572`](./contracts/bsc-56/0x50c542774620da722c90cc2ce709c4c1d2e42572/) | PublicLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a8431...05c5de`](./contracts/bsc-56/0x3a84315d6e14291dace3fbc62d24f52c3505c5de/) | RateCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0776c7...b0790d`](./contracts/bsc-56/0x0776c78a6ee9849ec5adac10d902b460bcb0790d/) | ReservePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f4d20...4a8657`](./contracts/bsc-56/0x2f4d20169a2c00805e8b2b93e8633e56e94a8657/) | ReverseStabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b116d...e350eb`](./contracts/bsc-56/0x0b116d1944e05348003479b517355b1ccee350eb/) | RWAAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x505829...357a33`](./contracts/bsc-56/0x505829773ebda34d6f627bb493cf993a1e357a33/) | RWAEarnPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x59828a...770ef6`](./contracts/bsc-56/0x59828a98b4ba4e69a12718bbdd831f10a2770ef6/) | SafeGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7fe50e...d2f8c9`](./contracts/bsc-56/0x7fe50ef455a8b6f482d45f85fadc3a1348d2f8c9/) | SigmaClisBNBPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03557a...890bb3`](./contracts/bsc-56/0x03557a350ec139190ee2914f6f3558b5bb890bb3/) | SigmaSPAdapterExample | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53c14f...280f1c`](./contracts/bsc-56/0x53c14f8d20745680e296b9763fdcf1fa35280f1c/) | SlisBNBProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44f987...64c5aa`](./contracts/bsc-56/0x44f987fe1fd3597abcf95b8790351d00ff64c5aa/) | slisBNBx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x450cfe...6667f2`](./contracts/bsc-56/0x450cfe8925c8d729cfbf9e9f583cbda3e86667f2/) | SmartProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c43dc...87a84c`](./contracts/bsc-56/0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c/) | StableSwapLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a7226...81a806`](./contracts/bsc-56/0x1a7226eafb48ad71d28ade957f20d9dc4d81a806/) | StableSwapLPCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x212b83...a3a126`](./contracts/bsc-56/0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126/) | StableSwapPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54e881...b380b3`](./contracts/bsc-56/0x54e8810cdde88f531485d2f04321a28e7db380b3/) | sUSD1PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x573ca8...c5c308`](./contracts/bsc-56/0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308/) | SyrupUSDTPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x90b1f0...01b08a`](./contracts/bsc-56/0x90b1f073dda06efbce3612df8e8135d87101b08a/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a4c41...626d2d`](./contracts/bsc-56/0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d/) | USDXLiquidationPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f3da9...384584`](./contracts/bsc-56/0x6f3da9ee8965ef22228a103df4719a74b7384584/) | WBETHOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x950620...d23fc5`](./contracts/bsc-56/0x950620918c66b080990b18635f1d7d4f70d23fc5/) | WstETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5439ec...4722c8`](./contracts/bsc-56/0x5439ec87e111b1ac0ae676dbf561cd66164722c8/) | wstUSRPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x267cbe...a0bc5e`](./contracts/bsc-56/0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e/) | xSolvBtcPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x687c3e...e24a04`](./contracts/bsc-56/0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04/) | yUSDPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 6 |
| standard_library | 3 |
| needs_review | 93 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=708

Fork inheritance lineage and inherited audits are included when available.
