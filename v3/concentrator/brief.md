# Agentic Audit Brief: Concentrator

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.048Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: ethereum
- Contract surface: 521 unique implementations (641 raw deployments)
- DeFi Llama TVL: $56,501,343.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 119 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens, 9 ERC721 NFTs, 3 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 15 common project-authored base contract(s) (poolconstant, poolerrors, protocolfees). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 641; live-surface contracts included: 641 (248 live, 393 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/128 (17.2%)
- Deployed-live implementations: 128 of 521 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/128
- Verified + Unaudited implementations: 106
- Verified by bytecode match: 0
- Unverified implementations: 393
- Unique implementations: 521
- Raw deployments: 641
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 22
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 32 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 20 match-unverified
- Tier 1 coverage: 0.8% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 21 | 16.4% | 2025-03 |
| PeckShield | Tier 2 | 1 | 0.8% | 2022-07 |
| Trail of Bits | Tier 1 | 1 | 0.8% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AladdinConvexVault | core_logic | ethereum | n/a | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ✅ Audited |
| AladdinFXSConvexVault | core_logic | ethereum | n/a | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ✅ Audited |
| AutoCompoundingConvexFraxStrategy | core_logic | ethereum | n/a | [`0xc9cfd6...c58187`](./contracts/ethereum-1/0xc9cfd6205914ab1e209ffe70326d8dd15fc58187/) | ✅ Audited |
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| CvxCompounder | adapter | ethereum | n/a | [`0xb0903a...8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ✅ Audited |
| CvxFxnCompounder | adapter | ethereum | n/a | [`0x00bac6...349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ✅ Audited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ✅ Audited |
| FxUSD | unknown | ethereum | n/a | [`0x676c35...cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ✅ Audited |
| FxUSDCompounder4626 | adapter | ethereum | n/a | [`0x07d171...945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ✅ Audited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ✅ Audited |
| PlatformFeeBurner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/); ethereum `0x695eb5...411403` | ✅ Audited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x323668...2380c8` | ✅ Audited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b` | ✅ Audited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5d...ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ✅ Audited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ✅ Audited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ✅ Audited |
| SdCRVBribeBurnerV2 | operational_periphery | ethereum | n/a | [`0x680f26...476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | ✅ Audited |
| SdCrvCompounder | adapter | ethereum | n/a | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ✅ Audited |
| SdPendleCompounder | adapter | ethereum | n/a | [`0x606462...c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ✅ Audited |
| SdPendleGaugeStrategy | operational_periphery | ethereum | n/a | [`0x94992d...dfe5cd`](./contracts/ethereum-1/0x94992da38be9adadd359c2959588fddfa2dfe5cd/) | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x2290ee...c10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/); ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e` | ✅ Audited |
| VestingManagerProxy | operational_periphery | ethereum | n/a | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ✅ Audited |

### ⚠️ Verified + Unaudited (106)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveFundingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6ecfa3...0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e...952473` | ⚠️ Unaudited |
| Accumulator | unknown | ethereum | n/a | 6 deployments: ethereum [`0x615959...88056f`](./contracts/ethereum-1/0x615959a1d3e2740054d7130028613ecfa988056f/); ethereum `0x65682c...bc4526`; ethereum `0xb1d778...e588a6`; ethereum `0xba445c...4776c8`; ethereum `0xc74c0e...9ee75b`; ethereum `0xe75da6...d88423` | ⚠️ Unaudited |
| AdapterFactory | adapter | ethereum | n/a | [`0x1662a5...adccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | ⚠️ Unaudited |
| AdapterRegistry | adapter | ethereum | n/a | [`0xdd89f9...d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | ethereum | n/a | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | ⚠️ Unaudited |
| AngleMerklClaimer | operational_periphery | ethereum | n/a | [`0x32ee46...04515b`](./contracts/ethereum-1/0x32ee46755ae81ce917392ed1fb21f74a8104515b/) | ⚠️ Unaudited |
| AngleVaultGamma | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1649ff...f18ece`](./contracts/ethereum-1/0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece/); ethereum `0x1e6f87...8d042d`; ethereum `0x4a277e...27bb2e`; ethereum `0xa0022d...ab89a6` | ⚠️ Unaudited |
| Booster | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x01363d...a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/); ethereum `0x1b3a4e...62d2f1` | ⚠️ Unaudited |
| BoostMarketplace | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa52f3d...c407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/); ethereum `0xbc38d2...3fb6b8` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | ethereum | n/a | [`0x097d23...bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/) | ⚠️ Unaudited |
| CompounderGateway | adapter | ethereum | n/a | [`0x883fd3...f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | ⚠️ Unaudited |
| ControllerModule | governance | ethereum | n/a | 2 deployments: ethereum [`0xb3f463...017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/); ethereum `0xe56ce1...bde0b4` | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | ethereum | n/a | [`0x789e72...f1a034`](./contracts/ethereum-1/0x789e729713ddc80cf2db4e59ca064d3770f1a034/) | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | ethereum | n/a | [`0x88c88a...c64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | ⚠️ Unaudited |
| CRVPoolFactory | registry | ethereum | n/a | [`0xdc9718...4c20aa`](./contracts/ethereum-1/0xdc9718e7704f10db1afaad737f8a04bcd14c20aa/) | ⚠️ Unaudited |
| CRVStrategy | core_logic | ethereum | n/a | [`0x941550...46d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | ⚠️ Unaudited |
| CurveShutdownStrategy | core_logic | ethereum | n/a | [`0x69d614...1ea2cd`](./contracts/ethereum-1/0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd/) | ⚠️ Unaudited |
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
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0xa0fb1b...804e99`](./contracts/ethereum-1/0xa0fb1b11cca5871fb0225b64308e249b97804e99/); ethereum `0xc40549...afe23f` | ⚠️ Unaudited |
| InflationReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f78dd...66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/); ethereum `0xc9104e...4391ad` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x28604f...44343a`](./contracts/ethereum-1/0x28604ff7b4aeae28d4d9e54d14038c910844343a/); ethereum `0xf54bce...a0f68d` | ⚠️ Unaudited |
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
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
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
| SdPendleBribeBurner | operational_periphery | ethereum | n/a | [`0x8bde1d...56ade2`](./contracts/ethereum-1/0x8bde1d771423b8d2fe0b046b934fb9a7f956ade2/) | ⚠️ Unaudited |
| SDT | unknown | ethereum | n/a | [`0x73968b...6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/) | ⚠️ Unaudited |
| sdToken | token | ethereum | n/a | 7 deployments: ethereum [`0x0c0575...85a43f`](./contracts/ethereum-1/0x0c057598dce1891688829581f890dd2a3685a43f/); ethereum `0x402f87...68ac36`; ethereum `0x4df454...118d9d`; ethereum `0x58aad8...b59ffd`; ethereum `0x5ea630...dc10a9`; ethereum `0x752b4c...00f87c`; ethereum `0xe19d1c...9653ad` | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | ethereum | n/a | [`0xf95420...c05d5b`](./contracts/ethereum-1/0xf954200fd969443b8f853b4083b71cd073c05d5b/) | ⚠️ Unaudited |
| StakeDaoNFT | token | ethereum | n/a | [`0xdd4f84...e66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | ethereum | n/a | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | ethereum | n/a | [`0x6dd223...e38ea2`](./contracts/ethereum-1/0x6dd2236b1e089762cc264c85eebcff195ae38ea2/) | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | ethereum | n/a | [`0x221738...8c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x07fa4c...64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/); ethereum `0x6382d8...1cdea3`; ethereum `0x94405b...da2580`; ethereum `0xdda6ad...e50240` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863f...e4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| UniformBoostProvider | unknown | ethereum | n/a | [`0x7c3867...13c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5af15d...6e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/); ethereum `0xa2761b...075250`; ethereum `0xbc10c4...db7065`; ethereum `0xf3c2bd...56563f` | ⚠️ Unaudited |
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
| yVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x24129b...975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/); ethereum `0xb17640...af9567`; ethereum `0xcd6997...e70e84` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (393)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0089e0...a60af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x008cfa...7ac315` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x017db2...1e1d39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0303e5...2e4768` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ef23...222619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057810...ca4eb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0665ef...993ad4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06dfaf...94df74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06f66b...a2b5dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x070df1...eef1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x078672...8c75e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08bb29...c75130` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08d36c...ab8f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x096c04...cafb5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6e11...aa0b97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0acca1...cefd76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c3047...6c9e8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d4bb5...6d022a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0f27...cf1a23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e20d8...eaae8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e5caa...3afbb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1066ab...a11f7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1104b4...48dc8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12b132...7762a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x151740...78a50c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x160d6e...9cb78f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x165a7a...be6edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x172573...194c01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177eaa...70e7ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x188bd8...a802de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18fa0c...c4f6c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x190c58...0ed85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x193aa4...06cff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x198bd2...c228d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aaea3...a663db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1af163...2c9fa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b544b...63cd98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c0d72...eead09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cc16b...c59fb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ce37b...1c8560` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ee1a4...4febfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f4903...9f1d51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f5728...dc87ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe537...787fce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x201798...7ea04c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21042b...45266b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x210dfe...07a68a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x213119...42e209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216e18...388272` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21cea3...33cac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ba8e...12baa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d0b6...d094ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23384d...c099bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23ab51...a3bc4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24529a...8a7ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2717c6...a9754d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28bf9d...a31e6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28f576...a7309b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2903db...6d0eb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2953a3...42f687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d378...73f08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a906e...745748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b3e72...e1e3f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b95a1...7e0884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c37f1...86157e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2de8e9...0d4f5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e158e...9463ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eb244...73032d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed5c3...f5b82a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f5e8c...39136b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x304047...d869b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30849b...ac91ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30f291...ccef01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x327d16...07fab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335fde...95a1cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33bb0e...250067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3415fc...6473c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x344959...8c88c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x348831...4d9181` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3557bd...f63318` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x359eb1...6f230f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x369256...9b1cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36e0f6...df3845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x373f19...2f694c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37e838...95f1b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38d107...c66270` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3abf0b...bc2b0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b76bc...1f86f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ce751...8696e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cf54f...4450b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d09c5...763f01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d8fac...6262c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3deb1b...297886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7b4d...aa7ec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e88f7...fbc574` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3eb6da...b0e17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404d77...8b86ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x408179...2116ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40845c...3815c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4153f8...3f97d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41c94e...b11db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42027f...5f2390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4329c8...7934f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4657e9...c84283` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496e3d...ea824b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a4494...e37152` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ad5a8...d908e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b2c6f...ce0750` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b6e96...21f598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b7eb1...f056e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c2f99...1bef8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c5c52...6e7c21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d90ba...061e65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dcb55...4718c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e0915...f22273` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e3736...dd996b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eb744...87f611` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eeca6...0fa8c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x505002...e90bd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5080c2...ca4344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50b47c...29346d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50dc9a...b8184e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51452b...64fde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518129...16c91f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51a00f...5d9e61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53805a...633726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5380d2...1cf94a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539e65...ca512c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x543252...d1e2b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55055b...907985` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5519d8...552c0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56ae77...b5b530` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x572dec...d11983` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x576d7a...dbe080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x578669...ff8d89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x588add...18370d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5892df...22d1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x594061...a8dff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59866e...ada3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a8fdc...77c8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b0944...007dc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b75c6...a37bb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ccbae...1b02da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5cfb16...2b1312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d7f95...182827` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5db3a1...c3d5d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dfdf4...5479ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eb30c...852082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f75a0...b7879a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60136f...4318d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6037bb...e3ff64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60dcc2...9efd18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x617408...52295a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6258b0...96c425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x633120...b1be0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x644a15...b26322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64acb0...4e732f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6543b0...a2a2f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65ef12...e53a0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x668d88...9131be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x674a74...6de935` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e513d...6c857b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f7768...7950f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f81a0...a095c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70386d...1019a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x705299...0042fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7059ea...e81e3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7185e3...6591d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x760230...7339e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76147c...2e335e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a6f2...e190f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79b738...a0e05f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf291...a64db5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d07fa...dfed72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3b52...821911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d5980...af98b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d60f2...7ec120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d6c00...9da998` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dd09b...8acda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ed96e...bf360b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f160e...5761a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f5078...4e3466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f6ce8...b8f9be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f845a...16d344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x806323...080376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829c3d...da5e44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836019...44a99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x858d62...c5346f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x870099...2495f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x877745...3bff1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x884784...2809aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88cae3...2b66be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x895867...c43382` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x896451...38abc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8996cb...ccc265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a97e8...ce7121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bd664...233119` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c7e36...9c444d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fb539...d8abf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9098e2...6e58ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9142d4...de92fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x917d8b...6f18cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x922837...e3b9d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x926cc4...698941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x927ddc...eb6c0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92b2cb...e96dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92cff1...2e3356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92d0cb...75fe83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93c951...2f4c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x943671...c6aa51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94b4df...c5d45b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94cc62...75f345` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x958149...d2910e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95fa41...64e194` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x963bac...8f6563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96c68d...c64154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98626a...188e2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99373a...c07b40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99780b...f4e52f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99851d...9edef5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a3c5e...ee3c98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ac7dd...114575` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9afd2d...51eb8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b54b7...2edda4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d6dc3...1573f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d75c8...9b909c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d967c...6f4510` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dddf9...d1c888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9de558...6c114e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e7f8d...b0036c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ebbb3...7cf5c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eef12...fce257` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f99fd...2eb8c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa054b8...70e7f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa06395...d832ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa29646...a1339d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa324a2...68bdd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ecf0...a6359a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3fd14...317206` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa47a8a...a75c5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4d46e...3f2627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5d31b...ae0f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa61720...3dfb2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa619cb...965d58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa65d25...f46c87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa677d9...01a49e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7625d...9fcaf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa783d3...c6a70c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7fd73...a6db1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa1ba3...b30d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab8a21...910bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabc533...0a252f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad4cac...c730e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadc6a8...d29f66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae762a...e7e7e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae7691...96c918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae9ad1...fda964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf3406...89e35b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf345c...3f3b95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafc6ae...4f7814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb09e34...75b658` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb15ad6...be5aba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1a5a6...4cc8c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2fcee...673cc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4d4fd...4a61f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb53943...035a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f963...cf99bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb71cb9...15defe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7892e...5e92dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7f790...0e9af3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb926f1...96fdcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb97133...4e2331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb992e8...af5b63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9cd99...08fbdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba30c4...d6335b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb6fbb...5bcacb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbd909...26d49d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbccb5b...5832cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcfe5c...8d42e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd4dc0...f56da1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe3e89...cd782b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe81e3...a5467a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeb3e5...3c3a5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf6cbd...0cf8f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfb147...370422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc03504...266f30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc03544...f56fe5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1e3ca...f69191` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc434de...dfb607` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4763c...eb96b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc56b67...18249c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5e69b...9adf87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc629a0...701497` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc65d58...6ace6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc71621...642777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7f201...54cd93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7f5d0...1c3cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc88acb...f45531` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc99989...e852f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca9ca3...09197d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaf1f3...70c44a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb6158...d3e067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb968e...c36075` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9c51...7e57a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3040...da058f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3a26...ce448f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4dcc...7ab72a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce938c...28bd74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xced78d...b3bf27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceda55...94b2bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf837b...25ab19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcffd49...70ef90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd00fdb...096371` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd05ad7...30d564` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd06986...8292b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd072d3...1c66ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd13f8c...4dcaf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd24d1f...c9a04e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd27917...76e973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2b094...6ae099` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b158...fb777c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3cfc4...411616` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3eb99...425a84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd41509...105bc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd479c1...ef3195` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd67bdb...173506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd69f52...d25ade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6efa5...2a35be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7b810...21e089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd80016...c5ae4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd912d9...0abed2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9cc44...f99258` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9f15a...397bda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda396c...dec43d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdad7bd...fa1d59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaf03d...6d3ec9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbb1aa...0c8acc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc4ca2...23545e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc846c...eced94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf819...9f3f8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde65a1...be9375` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdec800...c8e359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe063f0...703ae2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0dff1...67403f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3a135...a48ef3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe42a46...f94f17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c978...9cdc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe55843...3f35d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe56d97...7e25db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6aaf8...a9d217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6fbe0...2b5844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe73b8a...2a79b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7b9c7...5108db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7ce05...e38739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe86cf5...6e4aad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe953d9...0f6b33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea9914...97fc0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb0ea9...4f53b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb5eb0...e5ba2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb937d...009773` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeba9a8...a78054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebdb53...1a718e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecebb5...e28825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed8ffe...abd5e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf08fa0...7d4e7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf148cd...5c5851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf29faf...d254c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf30f23...c9f8c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf34ae3...274f1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c6e8...d63106` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3d4f5...1950d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf51610...0151c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf56c26...0c2166` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf57b53...cb87b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5d1ca...75c8ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf758be...50f979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf98af6...e231a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa1cdc...5c9014` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa2685...9c4b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa86aa...6ec515` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaf374...9b6285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc7ea9...c35267` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91ae...718bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe110b...9d2439` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe612c...f91b9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffec6c...8810fb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [AladdinETH_Report_v1.0_2022_12_22.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/AladdinETH_Report_v1.0_2022_12_22.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_AladdinCVX_v1.0_20221209.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.0_20221209.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_AladdinCVX_v1.1_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.1_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_AladdinDAO_aFXS_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 3 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Furnace_Update_20221111.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |
| [SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report_v1.1.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_aCRV_Update_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aCRV_Update_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 1 | n/a |
| [SECBIT_Generic_CLever_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Generic_CLever_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_TokenSale_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_TokenSale_Report_v1.1.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 3 | n/a |
| [SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 2 | n/a |
| [SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_sdCRV_Report_v1.2_20230616.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.2_20230616.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [TrailofBits_fx_oracle_202406.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_oracle_202406.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [TrailofBits_fx_protocol_202403.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_protocol_202403.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [AladdinDao_V3_Report_Secbit.pdf](https://aladdin.club/audits/AladdinDao_V3_Report_Secbit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 521 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=28, extraction_exact=3

Zero-match audit list:

- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf
- [5585] SECBIT_Generic_CLever_Report.pdf
- [5586] SECBIT_TokenSale_Report_v1.1.pdf
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf
- [5605] TrailofBits_fx_oracle_202406.pdf

Fork inheritance lineage and inherited audits are included when available.
