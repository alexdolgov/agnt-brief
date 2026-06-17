# Agentic Audit Brief: Concentrator

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: active (Tier 0, 55.8% below peak)
- Generated: 2026-06-17T07:00:41.585Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 131 unique implementations (252 raw deployments)
- DeFi Llama TVL: $63,560,592.71
- On-chain TVL (included contracts): $21,011,861.47
- TVL by chain: Ethereum $21,011,861.47

## Project Description

Concentrator is a yield aggregation and vault platform focused on boosting and auto-compounding rewards for Curve, Convex, Frax and StakeDAO-related assets through Concentrator compounders, harvesters and vaults. f(x)/FxUSD stablecoin mechanics and CLever are separate AladdinDAO product lines unless a specific Concentrator wrapper is in scope.

### Architecture

All contracts belong to a single Concentrator family, sharing infrastructure like upgradeable proxies and beacons for vault and token implementations. Vaults deposit into Curve/Convex, compounders auto-reinvest rewards, and FxUSD is minted via base pools using yield-bearing tokens as collateral.

## Contract Surface Quality

- Indexed contracts: 937; live-surface contracts included: 252 (252 live, 0 unknown).
- Excluded by liveness: 465 inactive, 220 singleton, 0 uninitialized.
- Deployment units: 12/97 live.
- Detected codebases: curve-stableswap, uniswap-v3
- Unverified dependencies: 6/451.

## Audit Coverage Summary

- Verified implementations audited: 20/121 (16.5%)
- Verified + Unaudited implementations: 101
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 131
- Raw deployments: 252
- Audits discovered: 33
- Scoreable audits (matched contracts): 19
- ASD (verified + unaudited TVL): $19,312,442.90
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 29 stale, 0 unknown
- Tier 1 coverage: 0.8% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 19 | 15.7% | 2025-03 |
| PeckShield | Tier 2 | 1 | 0.8% | 2022-07 |
| Trail of Bits | Tier 1 | 1 | 0.8% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5d...ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ✅ Audited |
| AladdinConvexVault | core_logic | ethereum | unit-25044 | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ✅ Audited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ✅ Audited |
| AladdinFXSConvexVault | core_logic | ethereum | unit-25050 | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ✅ Audited |
| CvxCompounder | adapter | ethereum | unit-25039 | [`0xb0903a...8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ✅ Audited |
| CvxFxnCompounder | adapter | ethereum | unit-24965 | [`0x00bac6...349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ✅ Audited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ✅ Audited |
| FxUSD | unknown | ethereum | unit-25016 (3 proxies) | 3 deployments: ethereum [`0x65d72a...ae7d18`](./contracts/ethereum-1/0x65d72aa8da931f047169112fcf34f52dbaae7d18/); ethereum `0x9d11ab...9ba20e`; ethereum `0x9f0d5e...f09269` | ✅ Audited |
| FxUSDCompounder4626 | adapter | ethereum | unit-24968 | [`0x07d171...945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ✅ Audited |
| PlatformFeeBurner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/); ethereum `0x695eb5...411403` | ✅ Audited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x323668...2380c8` | ✅ Audited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b` | ✅ Audited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ✅ Audited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ✅ Audited |
| SdCRVBribeBurnerV2 | operational_periphery | ethereum | n/a | [`0x680f26...476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | ✅ Audited |
| SdCrvCompounder | adapter | ethereum | unit-24997 | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ✅ Audited |
| SdPendleCompounder | adapter | ethereum | unit-25013 | [`0x606462...c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x2290ee...c10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/); ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e` | ✅ Audited |
| VestingManagerProxy | operational_periphery | ethereum | unit-24974 | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ✅ Audited |

### ⚠️ Verified + Unaudited (101)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| yVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x24129b...975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/); ethereum `0xb17640...af9567`; ethereum `0xcd6997...e70e84` | ⚠️ Unaudited |
| sdToken | token | ethereum | n/a | 7 deployments: ethereum [`0x0c0575...85a43f`](./contracts/ethereum-1/0x0c057598dce1891688829581f890dd2a3685a43f/); ethereum `0x402f87...68ac36`; ethereum `0x4df454...118d9d`; ethereum `0x58aad8...b59ffd`; ethereum `0x5ea630...dc10a9`; ethereum `0x752b4c...00f87c`; ethereum `0xe19d1c...9653ad` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5af15d...6e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/); ethereum `0xa2761b...075250`; ethereum `0xbc10c4...db7065`; ethereum `0xf3c2bd...56563f` | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| AngleVaultGamma | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1649ff...f18ece`](./contracts/ethereum-1/0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece/); ethereum `0x1e6f87...8d042d`; ethereum `0x4a277e...27bb2e`; ethereum `0xa0022d...ab89a6` | ⚠️ Unaudited |
| AaveFundingPool | core_logic | ethereum | unit-25019 (2 proxies) | 2 deployments: ethereum [`0x6ecfa3...0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e...952473` | ⚠️ Unaudited |
| Accumulator | unknown | ethereum | n/a | 6 deployments: ethereum [`0x615959...88056f`](./contracts/ethereum-1/0x615959a1d3e2740054d7130028613ecfa988056f/); ethereum `0x65682c...bc4526`; ethereum `0xb1d778...e588a6`; ethereum `0xba445c...4776c8`; ethereum `0xc74c0e...9ee75b`; ethereum `0xe75da6...d88423` | ⚠️ Unaudited |
| AdapterFactory | adapter | ethereum | n/a | [`0x1662a5...adccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | ⚠️ Unaudited |
| AdapterRegistry | adapter | ethereum | n/a | [`0xdd89f9...d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | ethereum | n/a | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | ⚠️ Unaudited |
| AngleMerklClaimer | operational_periphery | ethereum | n/a | [`0x32ee46...04515b`](./contracts/ethereum-1/0x32ee46755ae81ce917392ed1fb21f74a8104515b/) | ⚠️ Unaudited |
| Booster | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x01363d...a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/); ethereum `0x1b3a4e...62d2f1` | ⚠️ Unaudited |
| BoostMarketplace | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa52f3d...c407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/); ethereum `0xbc38d2...3fb6b8` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | ethereum | n/a | [`0x097d23...bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/) | ⚠️ Unaudited |
| ControllerModule | governance | ethereum | n/a | 2 deployments: ethereum [`0xb3f463...017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/); ethereum `0xe56ce1...bde0b4` | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | ethereum | n/a | [`0x88c88a...c64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | ⚠️ Unaudited |
| CRVPoolFactory | registry | ethereum | n/a | [`0xdc9718...4c20aa`](./contracts/ethereum-1/0xdc9718e7704f10db1afaad737f8a04bcd14c20aa/) | ⚠️ Unaudited |
| CRVStrategy | core_logic | ethereum | n/a | [`0x941550...46d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | ⚠️ Unaudited |
| CurveShutdownStrategy | core_logic | ethereum | unit-25018 | [`0x69d614...1ea2cd`](./contracts/ethereum-1/0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd/) | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | ethereum | n/a | [`0x20d1b5...e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| Depositor | unknown | ethereum | n/a | [`0x7f5c48...58acb5`](./contracts/ethereum-1/0x7f5c485d24fb1832a14f122c8722ef15c158acb5/) | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x51df76...9cfd2b`](./contracts/ethereum-1/0x51df7675b8f7b970ded3596c00624a30ec9cfd2b/); ethereum `0x6d57d3...0d38f9`; ethereum `0xca9439...270d30` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| FXNAccumulator | unknown | ethereum | n/a | [`0x87978a...5bfb13`](./contracts/ethereum-1/0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13/) | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | ethereum | n/a | [`0xab1938...667ede`](./contracts/ethereum-1/0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede/) | ⚠️ Unaudited |
| FXNDepositor | unknown | ethereum | n/a | [`0x799519...f1c7ab`](./contracts/ethereum-1/0x7995192be61ea0b28ce14183dda51edf78f1c7ab/) | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9...c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8...6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | ethereum | n/a | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ⚠️ Unaudited |
| InflationReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f78dd...66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/); ethereum `0xc9104e...4391ad` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | unit-24985 (2 proxies) | 2 deployments: ethereum [`0x28604f...44343a`](./contracts/ethereum-1/0x28604ff7b4aeae28d4d9e54d14038c910844343a/); ethereum `0xf54bce...a0f68d` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4887ae...bd0cd8`](./contracts/ethereum-1/0x4887aea49758b413e9bab127ffa4e59104bd0cd8/); ethereum `0xc1e477...13ca3c` | ⚠️ Unaudited |
| LockerPreLaunch | unknown | ethereum | n/a | [`0x5c5ccb...cf0922`](./contracts/ethereum-1/0x5c5ccb2e511fcdeaa16737810787a47507cf0922/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xfea5e2...b61e1c`](./contracts/ethereum-1/0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c/) | ⚠️ Unaudited |
| MAVDepositor | unknown | ethereum | n/a | [`0x3ac34f...83a13c`](./contracts/ethereum-1/0x3ac34fe88e434812ddc4a29caa8234328983a13c/) | ⚠️ Unaudited |
| Merkle | operational_periphery | ethereum | n/a | [`0x414cbb...c10c29`](./contracts/ethereum-1/0x414cbb5c7cf637b7030965b5ee84504c64c10c29/) | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | ethereum | n/a | [`0xf442e3...6f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | ⚠️ Unaudited |
| MockERC20 | token | ethereum | n/a | 2 deployments: ethereum [`0x2989df...f7448c`](./contracts/ethereum-1/0x2989df9c8c9897f07d464366607dcbfaebf7448c/); ethereum `0x9e0ee6...38b9fa` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98` | ⚠️ Unaudited |
| OnlyBoostAllocator | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x3680cc...a7364f`](./contracts/ethereum-1/0x3680cce0d97bbbfa47765d7429ff207d03a7364f/); ethereum `0xa1b3d6...76350a`; ethereum `0xa1ffb2...dfdaa9`; ethereum `0xbcb9cc...4fae9c`; ethereum `0xc02385...d7de69`; ethereum `0xf59f24...e3f507` | ⚠️ Unaudited |
| Optimizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x48af33...91bce7`](./contracts/ethereum-1/0x48af330a99a4cee2f367a4ab447ba816d091bce7/); ethereum `0x63adcf...866a71`; ethereum `0x6d2cd2...f9a599`; ethereum `0xf82473...d7d578` | ⚠️ Unaudited |
| OpynPerpVault | core_logic | ethereum | n/a | [`0x9b8f14...4fde1a`](./contracts/ethereum-1/0x9b8f14554f40705de7908879e2228d2ac94fde1a/) | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909...03fbad`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x9af12d...ef97f9` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a...b66b52` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b162d...87a3bb`](./contracts/ethereum-1/0x2b162de7fbd942f142aa21865f685f71a687a3bb/); ethereum `0x8d4142...0a6280` | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | [`0x1d8a9c...c4d356`](./contracts/ethereum-1/0x1d8a9c30e4e25033498347c1a054717bd0c4d356/) | ⚠️ Unaudited |
| Registrar | unknown | ethereum | n/a | [`0x1c3a4d...a5c6de`](./contracts/ethereum-1/0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de/) | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| RewardHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x524fce...c3a3b3`](./contracts/ethereum-1/0x524fce03270c60279d604ea3b374194e96c3a3b3/); ethereum `0xc47bde...a7e336` | ⚠️ Unaudited |
| RewardReceiver | unknown | ethereum | n/a | [`0x78f1bb...c85ad7`](./contracts/ethereum-1/0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7/) | ⚠️ Unaudited |
| RewardReceiverMigrationModule | operational_periphery | ethereum | n/a | [`0x2c043d...cbfd46`](./contracts/ethereum-1/0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46/) | ⚠️ Unaudited |
| RewardRouter | adapter | ethereum | n/a | [`0x9a207a...05ba12`](./contracts/ethereum-1/0x9a207a85e372fcdac3014f945a65868f2a05ba12/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0xc3a6cf...505eef`](./contracts/ethereum-1/0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef/) | ⚠️ Unaudited |
| RouterModuleClaim | adapter | ethereum | n/a | [`0xfd98ce...222ff5`](./contracts/ethereum-1/0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5/) | ⚠️ Unaudited |
| RouterModuleDeposit | adapter | ethereum | n/a | [`0xbf0a5d...09b7c9`](./contracts/ethereum-1/0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9/) | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | operational_periphery | ethereum | n/a | [`0xf0b84b...53c120`](./contracts/ethereum-1/0xf0b84b9334132843fc256830fb941d535853c120/) | ⚠️ Unaudited |
| RouterModuleVLSDT | adapter | ethereum | n/a | [`0x8155b8...557707`](./contracts/ethereum-1/0x8155b8858af2b12baf8a79e22021b14f91557707/) | ⚠️ Unaudited |
| RouterModuleWithdraw | operational_periphery | ethereum | n/a | [`0xe88772...4cf63c`](./contracts/ethereum-1/0xe88772dfb857317476b77f1a25b888b9424cf63c/) | ⚠️ Unaudited |
| Sanctuary | unknown | ethereum | n/a | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | ⚠️ Unaudited |
| sdCRV | unknown | ethereum | n/a | [`0xd1b565...f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | ⚠️ Unaudited |
| sdMAV | unknown | ethereum | n/a | [`0x506875...bb02f9`](./contracts/ethereum-1/0x50687515e93c43964733282f9db8683f80bb02f9/) | ⚠️ Unaudited |
| SDT | unknown | ethereum | n/a | [`0x73968b...6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/) | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | ⚠️ Unaudited |
| StakeDaoNFT | token | ethereum | n/a | [`0xdd4f84...e66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | ethereum | n/a | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | ethereum | n/a | [`0x6dd223...e38ea2`](./contracts/ethereum-1/0x6dd2236b1e089762cc264c85eebcff195ae38ea2/) | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | ethereum | n/a | [`0x221738...8c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x07fa4c...64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/); ethereum `0x6382d8...1cdea3`; ethereum `0x94405b...da2580`; ethereum `0xdda6ad...e50240` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863f...e4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| UniformBoostProvider | unknown | ethereum | n/a | [`0x7c3867...13c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | ⚠️ Unaudited |
| VeBoostDelegation | unknown | ethereum | n/a | 2 deployments: ethereum [`0xce00ad...6be923`](./contracts/ethereum-1/0xce00ad8df94d8c365dc415b84963aa37a06be923/); ethereum `0xfda13d...eb1688` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0xda9846...2bebdf`](./contracts/ethereum-1/0xda9846665bdb44b0d0caffd0d1d4a539932bebdf/); ethereum `0xe1f9c8...63b9cf` | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| vlBoost | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab05ca...d2adda`](./contracts/ethereum-1/0xab05ca46d1c78cabb051effe35099714cad2adda/); ethereum `0xba1b43...82f570` | ⚠️ Unaudited |
| vlSDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75d96b...e88ef1`](./contracts/ethereum-1/0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1/); ethereum `0x94818a...0b80b8` | ⚠️ Unaudited |
| VoteBountyManagerFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x752893...183e32`](./contracts/ethereum-1/0x75289388d50364c3013583d97bd70ced0e183e32/); ethereum `0xa20b14...10693f` | ⚠️ Unaudited |
| VoteWeightRegistry | registry | ethereum | n/a | [`0x619ede...dd5a5c`](./contracts/ethereum-1/0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0xec6b8a...f1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | ethereum | n/a | [`0x09943c...a894a8`](./contracts/ethereum-1/0x09943c4f27f2ada5bb58b845d27405a4b3a894a8/) | ⚠️ Unaudited |
| vsdCRVOFTAdapter | adapter | ethereum | n/a | [`0x92b8d4...921e95`](./contracts/ethereum-1/0x92b8d4d4db1555ba4e928ccdea02b52126921e95/) | ⚠️ Unaudited |
| vsdToken | token | ethereum | n/a | 2 deployments: ethereum [`0x7346aa...3834fc`](./contracts/ethereum-1/0x7346aa8959fb138787bf9a579b4d86098a3834fc/); ethereum `0xe079ac...96f3b8` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 38 deployments: ethereum [`0x051d7e...a74301`](./contracts/ethereum-1/0x051d7e5609917bd9b73f04bac0ded8dd46a74301/); ethereum `0x08780f...aa95da`; ethereum `0x1005f7...13d546`; ethereum `0x2932a8...3423f5`; ethereum `0x29f3dd...3e5d92`; ethereum `0x3175df...3473cc`; ethereum `0x33e411...7fdab0`; ethereum `0x3f0e79...f2e5df`; ethereum `0x4aa2af...18566a`; ethereum `0x501611...d160aa`; ethereum `0x552dad...357851`; ethereum `0x5bc3dd...9c9dca`; ethereum `0x696b5d...72a53d`; ethereum `0x6d7871...6e5af3`; ethereum `0x72953a...581bbf`; ethereum `0x742c3c...de9571`; ethereum `0x75f8f7...fce882`; ethereum `0x81c46f...cd3dd7`; ethereum `0x86e917...cf114f`; ethereum `0x94be07...2e051e`; ethereum `0x99a584...b5788f`; ethereum `0x9b0254...7a2fe8`; ethereum `0x9f330d...2109d8`; ethereum `0xa1f8a6...24e577`; ethereum `0xa2d40e...ba628e`; ethereum `0xa5d935...a4458c`; ethereum `0xb3ad64...6890b8`; ethereum `0xc50222...67f2f0`; ethereum `0xc78fa2...8cf247`; ethereum `0xcfc251...a59503`; ethereum `0xd09216...9d3778`; ethereum `0xdcef96...4241a2`; ethereum `0xe4c099...4b4968`; ethereum `0xf253f8...55a07f`; ethereum `0xf2f12b...82ba09`; ethereum `0xf3a433...0dc768`; ethereum `0xf43211...366c7a`; ethereum `0xf9078f...d1a5a6` | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | ethereum | n/a | [`0xc7793b...0d5fde`](./contracts/ethereum-1/0xc7793bc89724925615d7e4080bd6b893d50d5fde/) | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | ethereum | n/a | [`0xf908c0...2608c8`](./contracts/ethereum-1/0xf908c0281f4bafbca67e490edae816b8472608c8/) | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | ethereum | n/a | [`0xfb9aa6...595785`](./contracts/ethereum-1/0xfb9aa699f1badb31a7c4b40f7fa1f49469595785/) | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | ethereum | n/a | [`0x325229...808ea9`](./contracts/ethereum-1/0x325229508513d484a90f3618e6aca8a9fb808ea9/) | ⚠️ Unaudited |
| YieldnestDepositor | unknown | ethereum | n/a | [`0x8f0e63...a3352e`](./contracts/ethereum-1/0x8f0e636a19c1677fdf37da0e3af602f96da3352e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x760230...7339e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf56c26...0c2166` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91ae...718bcd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [AladdinETH_Report_v1.0_2022_12_22.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/AladdinETH_Report_v1.0_2022_12_22.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_AladdinCVX_v1.0_20221209.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.0_20221209.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_AladdinCVX_v1.1_20230203.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.1_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_AladdinDAO_aFXS_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 5 | high |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 4 | high |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [SECBIT_CLever_Furnace_Update_20221111.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Furnace_Update_20221111.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_CLever_Report_v1.1.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 6 | high |
| [SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [SECBIT_Concentrator_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [SECBIT_Concentrator_Report_v1.1.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report_v1.1.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [SECBIT_Concentrator_aCRV_Update_20230203.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aCRV_Update_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 2 | high |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [SECBIT_Generic_CLever_Report.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Generic_CLever_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_TokenSale_Report_v1.1.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_TokenSale_Report_v1.1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 3 | high |
| [SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |
| [SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 5 | high |
| [SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |
| [SECBIT_sdCRV_Report_v1.2_20230616.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.2_20230616.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [TrailofBits_fx_oracle_202406.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_oracle_202406.pdf) | Trail of Bits | Audit | 2024-07 | aging | Direct | contract_name | 0 | n/a |
| [TrailofBits_fx_protocol_202403.pdf (also discovered via alternate URL)](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_protocol_202403.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5af15d...6e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/) | Vault | core_logic | $329,218.60 | Verified native implementation with $329,218.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | $28.73 | Verified native implementation with $28.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x615959...88056f`](./contracts/ethereum-1/0x615959a1d3e2740054d7130028613ecfa988056f/) | Accumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1662a5...adccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | AdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd89f9...d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | AdapterRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | AladdinOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01363d...a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/) | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa52f3d...c407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/) | BoostMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097d23...bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/) | ClaimRewardsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3f463...017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/) | ControllerModule | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c88a...c64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | CRVDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc9718...4c20aa`](./contracts/ethereum-1/0xdc9718e7704f10db1afaad737f8a04bcd14c20aa/) | CRVPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941550...46d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | CRVStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20d1b5...e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | DarkParadiseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f5c48...58acb5`](./contracts/ethereum-1/0x7f5c485d24fb1832a14f122c8722ef15c158acb5/) | Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51df76...9cfd2b`](./contracts/ethereum-1/0x51df7675b8f7b970ded3596c00624a30ec9cfd2b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87978a...5bfb13`](./contracts/ethereum-1/0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13/) | FXNAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1938...667ede`](./contracts/ethereum-1/0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede/) | FXNAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x799519...f1c7ab`](./contracts/ethereum-1/0x7995192be61ea0b28ce14183dda51edf78f1c7ab/) | FXNDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3374b9...c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | FxUSDBasePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | GaugeMultiRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | GaugeRewarder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f78dd...66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/) | InflationReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c5ccb...cf0922`](./contracts/ethereum-1/0x5c5ccb2e511fcdeaa16737810787a47507cf0922/) | LockerPreLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfea5e2...b61e1c`](./contracts/ethereum-1/0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ac34f...83a13c`](./contracts/ethereum-1/0x3ac34fe88e434812ddc4a29caa8234328983a13c/) | MAVDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf442e3...6f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | MerkleDistributorSdt | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2989df...f7448c`](./contracts/ethereum-1/0x2989df9c8c9897f07d464366607dcbfaebf7448c/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3680cc...a7364f`](./contracts/ethereum-1/0x3680cce0d97bbbfa47765d7429ff207d03a7364f/) | OnlyBoostAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48af33...91bce7`](./contracts/ethereum-1/0x48af330a99a4cee2f367a4ab447ba816d091bce7/) | Optimizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/) | PoolConfiguration | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d8a9c...c4d356`](./contracts/ethereum-1/0x1d8a9c30e4e25033498347c1a054717bd0c4d356/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c3a4d...a5c6de`](./contracts/ethereum-1/0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de/) | Registrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x524fce...c3a3b3`](./contracts/ethereum-1/0x524fce03270c60279d604ea3b374194e96c3a3b3/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78f1bb...c85ad7`](./contracts/ethereum-1/0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7/) | RewardReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c043d...cbfd46`](./contracts/ethereum-1/0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46/) | RewardReceiverMigrationModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a207a...05ba12`](./contracts/ethereum-1/0x9a207a85e372fcdac3014f945a65868f2a05ba12/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3a6cf...505eef`](./contracts/ethereum-1/0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd98ce...222ff5`](./contracts/ethereum-1/0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5/) | RouterModuleClaim | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf0a5d...09b7c9`](./contracts/ethereum-1/0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9/) | RouterModuleDeposit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8155b8...557707`](./contracts/ethereum-1/0x8155b8858af2b12baf8a79e22021b14f91557707/) | RouterModuleVLSDT | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe88772...4cf63c`](./contracts/ethereum-1/0xe88772dfb857317476b77f1a25b888b9424cf63c/) | RouterModuleWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | Sanctuary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | StakeDaoNFT_V2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fa4c...64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/) | StrategyWrapperLeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | Token Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c3867...13c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | UniformBoostProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce00ad...6be923`](./contracts/ethereum-1/0xce00ad8df94d8c365dc415b84963aa37a06be923/) | VeBoostDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda9846...2bebdf`](./contracts/ethereum-1/0xda9846665bdb44b0d0caffd0d1d4a539932bebdf/) | VeBoostDelegationMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab05ca...d2adda`](./contracts/ethereum-1/0xab05ca46d1c78cabb051effe35099714cad2adda/) | vlBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x752893...183e32`](./contracts/ethereum-1/0x75289388d50364c3013583d97bd70ced0e183e32/) | VoteBountyManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x619ede...dd5a5c`](./contracts/ethereum-1/0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c/) | VoteWeightRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7346aa...3834fc`](./contracts/ethereum-1/0x7346aa8959fb138787bf9a579b4d86098a3834fc/) | vsdToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051d7e...a74301`](./contracts/ethereum-1/0x051d7e5609917bd9b73f04bac0ded8dd46a74301/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7793b...0d5fde`](./contracts/ethereum-1/0xc7793bc89724925615d7e4080bd6b893d50d5fde/) | YFIAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf908c0...2608c8`](./contracts/ethereum-1/0xf908c0281f4bafbca67e490edae816b8472608c8/) | YFIDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb9aa6...595785`](./contracts/ethereum-1/0xfb9aa699f1badb31a7c4b40f7fa1f49469595785/) | YieldBasisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325229...808ea9`](./contracts/ethereum-1/0x325229508513d484a90f3618e6aca8a9fb808ea9/) | YieldBasisFallbackHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f0e63...a3352e`](./contracts/ethereum-1/0x8f0e636a19c1677fdf37da0e3af602f96da3352e/) | YieldnestDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 8 |
| standard_library | 4 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=19
- Match method counts: extraction_exact=926

Zero-match audit list:

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf
- [5585] SECBIT_Generic_CLever_Report.pdf
- [5586] SECBIT_TokenSale_Report_v1.1.pdf
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf
- [5605] TrailofBits_fx_oracle_202406.pdf

Fork inheritance lineage and inherited audits are included when available.
