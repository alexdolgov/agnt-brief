# Agentic Audit Brief: Concentrator

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.433Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: ethereum
- Contract surface: 206 unique implementations (326 raw deployments)
- DeFi Llama TVL: $56,501,343.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 119 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens, 9 ERC721 NFTs, 3 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 15 common project-authored base contract(s) (poolconstant, poolerrors, protocolfees). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 326; live-surface contracts included: 326 (248 live, 78 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/122 (18.0%)
- Deployed-live implementations: 128 of 206 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/128
- Verified + Unaudited implementations: 106
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 206
- Raw deployments: 326
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
| AladdinConvexVault | core_logic | ethereum | n/a | [`0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ✅ Audited |
| AladdinFXSConvexVault | core_logic | ethereum | n/a | [`0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ✅ Audited |
| AutoCompoundingConvexFraxStrategy | core_logic | ethereum | n/a | [`0xc9cfd6205914ab1e209ffe70326d8dd15fc58187`](./contracts/ethereum-1/0xc9cfd6205914ab1e209ffe70326d8dd15fc58187/) | ✅ Audited |
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac688410be8f391be1fb00afc5c212972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58fcea29ab4da01a495140b349f8410ba904` | ✅ Audited |
| CvxCompounder | adapter | ethereum | n/a | [`0xb0903ab70a7467ee5756074b31ac88aebb8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ✅ Audited |
| CvxFxnCompounder | adapter | ethereum | n/a | [`0x00bac667a4ccf9089ab1db978238c555c4349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ✅ Audited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ✅ Audited |
| FxUSD | unknown | ethereum | n/a | [`0x676c359c78f75581ab2da5c353d2577c41cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ✅ Audited |
| FxUSDCompounder4626 | adapter | ethereum | n/a | [`0x07d1718ff05a8c53c8f05adaed57c0d672945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ✅ Audited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ✅ Audited |
| PlatformFeeBurner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6440e21a3634c319c69cef8d17601dbc4e97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/); ethereum `0x695eb50a92ad2aebb89c6dd1f3c7546a28411403` | ✅ Audited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2e1b1823564e597ff4848a88d61ac63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ✅ Audited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be52c411cc08434d28645fd391497c69c815`; ethereum `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428`; ethereum `0x835191186745e63f9e325e741b273ff925174d7e`; ethereum `0xb259515748c75a7216a4849e67ceb166b0daa98b` | ✅ Audited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ✅ Audited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ✅ Audited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe091c9028154cc5cb721258e9360803b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ✅ Audited |
| SdCRVBribeBurnerV2 | operational_periphery | ethereum | n/a | [`0x680f26dbc8fa2b463607ebb49a68a69c33476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | ✅ Audited |
| SdCrvCompounder | adapter | ethereum | n/a | [`0x43e54c2e7b3e294de3a155785f52ab49d87b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ✅ Audited |
| SdPendleCompounder | adapter | ethereum | n/a | [`0x606462126e4bd5c4d153fe09967e4c46c9c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ✅ Audited |
| SdPendleGaugeStrategy | operational_periphery | ethereum | n/a | [`0x94992da38be9adadd359c2959588fddfa2dfe5cd`](./contracts/ethereum-1/0x94992da38be9adadd359c2959588fddfa2dfe5cd/) | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x2290eefea24a6e43b26c27187742bd1fedc10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/); ethereum `0x592e353c5b97356e99eaf6a72b971ba1c9695593`; ethereum `0x8341889905bdef85b87cb7644a93f7a482f28742`; ethereum `0x84c82d43f1cc64730849f3e389fe3f6d776f7a4e` | ✅ Audited |
| VestingManagerProxy | operational_periphery | ethereum | n/a | [`0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ✅ Audited |

### ⚠️ Verified + Unaudited (106)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveFundingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6ecfa38fee8a5277b91efda204c235814f0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ⚠️ Unaudited |
| Accumulator | unknown | ethereum | n/a | 6 deployments: ethereum [`0x615959a1d3e2740054d7130028613ecfa988056f`](./contracts/ethereum-1/0x615959a1d3e2740054d7130028613ecfa988056f/); ethereum `0x65682cb35c8dea1d3027cd37f37a245356bc4526`; ethereum `0xb1d7787b8db300b2d664da3897116a0135e588a6`; ethereum `0xba445cbd4b94d98e0ac530caff3623dca54776c8`; ethereum `0xc74c0e02cbca62045c3a0375d31daa40e49ee75b`; ethereum `0xe75da6ef028b49140953e84ad097d4deedd88423` | ⚠️ Unaudited |
| AdapterFactory | adapter | ethereum | n/a | [`0x1662a5c9ce635f2322a9aadeaa060654aaadccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | ⚠️ Unaudited |
| AdapterRegistry | adapter | ethereum | n/a | [`0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | ethereum | n/a | [`0xcad2b9c980322f460db51cc8e45539f677c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | ⚠️ Unaudited |
| AngleMerklClaimer | operational_periphery | ethereum | n/a | [`0x32ee46755ae81ce917392ed1fb21f74a8104515b`](./contracts/ethereum-1/0x32ee46755ae81ce917392ed1fb21f74a8104515b/) | ⚠️ Unaudited |
| AngleVaultGamma | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece`](./contracts/ethereum-1/0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece/); ethereum `0x1e6f87a9ddf744af31157d8daa1e3025648d042d`; ethereum `0x4a277e11f55be48b27c453188a74f115a327bb2e`; ethereum `0xa0022debeb2275cf05b9c659493f89efe3ab89a6` | ⚠️ Unaudited |
| Booster | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x01363db6e185433ae63de4c745ca0aef49a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/); ethereum `0x1b3a4e4d44e53f4a90ef26e980a3d45f4662d2f1` | ⚠️ Unaudited |
| BoostMarketplace | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa52f3dd9c456f77d766075a727c7c045fcc407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/); ethereum `0xbc38d256e559fed3fa95a6cdc633c667283fb6b8` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | ethereum | n/a | [`0x097d23d07f1061cb4ace410a3ddc634820bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/) | ⚠️ Unaudited |
| CompounderGateway | adapter | ethereum | n/a | [`0x883fd355debf417f82aa9a3e2936971487f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | ⚠️ Unaudited |
| ControllerModule | governance | ethereum | n/a | 2 deployments: ethereum [`0xb3f46356ca516664c305dad356ddee5491017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/); ethereum `0xe56ce16f36f9a92281d6296ef9ca14c271bde0b4` | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | ethereum | n/a | [`0x789e729713ddc80cf2db4e59ca064d3770f1a034`](./contracts/ethereum-1/0x789e729713ddc80cf2db4e59ca064d3770f1a034/) | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | ethereum | n/a | [`0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | ⚠️ Unaudited |
| CRVPoolFactory | registry | ethereum | n/a | [`0xdc9718e7704f10db1afaad737f8a04bcd14c20aa`](./contracts/ethereum-1/0xdc9718e7704f10db1afaad737f8a04bcd14c20aa/) | ⚠️ Unaudited |
| CRVStrategy | core_logic | ethereum | n/a | [`0x94155052e2be3c9ad6d57f1b13f914626946d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | ⚠️ Unaudited |
| CurveShutdownStrategy | core_logic | ethereum | n/a | [`0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd`](./contracts/ethereum-1/0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd/) | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | ethereum | n/a | [`0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ⚠️ Unaudited |
| Depositor | unknown | ethereum | n/a | [`0x7f5c485d24fb1832a14f122c8722ef15c158acb5`](./contracts/ethereum-1/0x7f5c485d24fb1832a14f122c8722ef15c158acb5/) | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd116513eea4efe3908212afbaefc76cb29245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x51df7675b8f7b970ded3596c00624a30ec9cfd2b`](./contracts/ethereum-1/0x51df7675b8f7b970ded3596c00624a30ec9cfd2b/); ethereum `0x6d57d34259f6dc31c9a241c199822861940d38f9`; ethereum `0xca94395469a88e9cac0d5e5e308910e298270d30` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| FXNAccumulator | unknown | ethereum | n/a | [`0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13`](./contracts/ethereum-1/0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13/) | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | ethereum | n/a | [`0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede`](./contracts/ethereum-1/0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede/) | ⚠️ Unaudited |
| FXNDepositor | unknown | ethereum | n/a | [`0x7995192be61ea0b28ce14183dda51edf78f1c7ab`](./contracts/ethereum-1/0x7995192be61ea0b28ce14183dda51edf78f1c7ab/) | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9466d571edd695cf5e198f7c89b33c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8098b34ed775ac44b1dde864e098c6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | ethereum | n/a | [`0x3c310fc54c0534dc3c45312934508722284352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a882e6cedc58511b7e42b02bab42e2c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0xa0fb1b11cca5871fb0225b64308e249b97804e99`](./contracts/ethereum-1/0xa0fb1b11cca5871fb0225b64308e249b97804e99/); ethereum `0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f` | ⚠️ Unaudited |
| InflationReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f78ddf344e20b92b03c13d82d1316fc0a66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/); ethereum `0xc9104ee11269731e1f81b4055b6293d71a4391ad` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786833b5fd5ee21532d8b576391babefdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x28604ff7b4aeae28d4d9e54d14038c910844343a`](./contracts/ethereum-1/0x28604ff7b4aeae28d4d9e54d14038c910844343a/); ethereum `0xf54bceed6396e4698cd688eab5b58b86cca0f68d` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4887aea49758b413e9bab127ffa4e59104bd0cd8`](./contracts/ethereum-1/0x4887aea49758b413e9bab127ffa4e59104bd0cd8/); ethereum `0xc1e4775b3a589784aacd15265ac39d3b3c13ca3c` | ⚠️ Unaudited |
| LockerPreLaunch | unknown | ethereum | n/a | [`0x5c5ccb2e511fcdeaa16737810787a47507cf0922`](./contracts/ethereum-1/0x5c5ccb2e511fcdeaa16737810787a47507cf0922/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2319289e56830b50a282c25af4f0045c724b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303`; ethereum `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c`](./contracts/ethereum-1/0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c/) | ⚠️ Unaudited |
| MAVDepositor | unknown | ethereum | n/a | [`0x3ac34fe88e434812ddc4a29caa8234328983a13c`](./contracts/ethereum-1/0x3ac34fe88e434812ddc4a29caa8234328983a13c/) | ⚠️ Unaudited |
| Merkle | operational_periphery | ethereum | n/a | [`0x414cbb5c7cf637b7030965b5ee84504c64c10c29`](./contracts/ethereum-1/0x414cbb5c7cf637b7030965b5ee84504c64c10c29/) | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | ethereum | n/a | [`0xf442e3a8041199747f94b01a64632134256f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | ⚠️ Unaudited |
| MockERC20 | token | ethereum | n/a | 2 deployments: ethereum [`0x2989df9c8c9897f07d464366607dcbfaebf7448c`](./contracts/ethereum-1/0x2989df9c8c9897f07d464366607dcbfaebf7448c/); ethereum `0x9e0ee6aebeb7a5655b227f7893f5cf34b338b9fa` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9eefd6965296722890bb5fb977363fc2066`; ethereum `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98` | ⚠️ Unaudited |
| OnlyBoostAllocator | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x3680cce0d97bbbfa47765d7429ff207d03a7364f`](./contracts/ethereum-1/0x3680cce0d97bbbfa47765d7429ff207d03a7364f/); ethereum `0xa1b3d61156d45f3fd293040604dfcb1b0776350a`; ethereum `0xa1ffb26d128d9cd5a09e6206f518c92aa1dfdaa9`; ethereum `0xbcb9cc044c28300374b5b7dd45dbd1990b4fae9c`; ethereum `0xc0238579e281dae9403b7a3c1d22a14d61d7de69`; ethereum `0xf59f24907d03c9288d884dc2100b739e49e3f507` | ⚠️ Unaudited |
| Optimizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x48af330a99a4cee2f367a4ab447ba816d091bce7`](./contracts/ethereum-1/0x48af330a99a4cee2f367a4ab447ba816d091bce7/); ethereum `0x63adcf5630702205ba985f30e96cd58459866a71`; ethereum `0x6d2cd2436ab494cf74a725c9258e7fe4b2f9a599`; ethereum `0xf82473028ff1f063d57179fd4efe04172ed7d578` | ⚠️ Unaudited |
| OpynPerpVault | core_logic | ethereum | n/a | [`0x9b8f14554f40705de7908879e2228d2ac94fde1a`](./contracts/ethereum-1/0x9b8f14554f40705de7908879e2228d2ac94fde1a/) | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a7c0ad24e2d2876793172d046db05d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10`; ethereum `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909c828fa57d271e6b208036d24943503fbad`; ethereum `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462`; ethereum `0x88f9e901487b635d1403eaabcb97fc1935fc62ac`; ethereum `0x9af12dabd518a6da606caac455b2d0efb3ef97f9` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fce197cf743016cd1a620939a1a80df259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f844447ecf5b1523bfbadad3d9dea975982ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b162de7fbd942f142aa21865f685f71a687a3bb`](./contracts/ethereum-1/0x2b162de7fbd942f142aa21865f685f71a687a3bb/); ethereum `0x8d41424694e9b4c41f6a39c0a20369a71e0a6280` | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | [`0x1d8a9c30e4e25033498347c1a054717bd0c4d356`](./contracts/ethereum-1/0x1d8a9c30e4e25033498347c1a054717bd0c4d356/) | ⚠️ Unaudited |
| Registrar | unknown | ethereum | n/a | [`0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de`](./contracts/ethereum-1/0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de/) | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e67460226a71df07115c1f169418dd159e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88157073b8522def857761484ca7b1d5c8be`; ethereum `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285`; ethereum `0x94172e0b1714792c54f0b077b64e37c8050e89d6`; ethereum `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d144357dcc8a852ad601f27bf6310b657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| RewardHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x524fce03270c60279d604ea3b374194e96c3a3b3`](./contracts/ethereum-1/0x524fce03270c60279d604ea3b374194e96c3a3b3/); ethereum `0xc47bdefd00fc5ac204fedc1e204e06ce8ba7e336` | ⚠️ Unaudited |
| RewardReceiver | unknown | ethereum | n/a | [`0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7`](./contracts/ethereum-1/0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7/) | ⚠️ Unaudited |
| RewardReceiverMigrationModule | operational_periphery | ethereum | n/a | [`0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46`](./contracts/ethereum-1/0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46/) | ⚠️ Unaudited |
| RewardRouter | adapter | ethereum | n/a | [`0x9a207a85e372fcdac3014f945a65868f2a05ba12`](./contracts/ethereum-1/0x9a207a85e372fcdac3014f945a65868f2a05ba12/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef`](./contracts/ethereum-1/0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef/) | ⚠️ Unaudited |
| RouterModuleClaim | adapter | ethereum | n/a | [`0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5`](./contracts/ethereum-1/0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5/) | ⚠️ Unaudited |
| RouterModuleDeposit | adapter | ethereum | n/a | [`0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9`](./contracts/ethereum-1/0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9/) | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | operational_periphery | ethereum | n/a | [`0xf0b84b9334132843fc256830fb941d535853c120`](./contracts/ethereum-1/0xf0b84b9334132843fc256830fb941d535853c120/) | ⚠️ Unaudited |
| RouterModuleVLSDT | adapter | ethereum | n/a | [`0x8155b8858af2b12baf8a79e22021b14f91557707`](./contracts/ethereum-1/0x8155b8858af2b12baf8a79e22021b14f91557707/) | ⚠️ Unaudited |
| RouterModuleWithdraw | operational_periphery | ethereum | n/a | [`0xe88772dfb857317476b77f1a25b888b9424cf63c`](./contracts/ethereum-1/0xe88772dfb857317476b77f1a25b888b9424cf63c/) | ⚠️ Unaudited |
| Sanctuary | unknown | ethereum | n/a | [`0xac14864ce5a98af3248ffbf549441b04421247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | ⚠️ Unaudited |
| sdCRV | unknown | ethereum | n/a | [`0xd1b5651e55d4ceed36251c61c50c889b36f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | ⚠️ Unaudited |
| sdMAV | unknown | ethereum | n/a | [`0x50687515e93c43964733282f9db8683f80bb02f9`](./contracts/ethereum-1/0x50687515e93c43964733282f9db8683f80bb02f9/) | ⚠️ Unaudited |
| SdPendleBribeBurner | operational_periphery | ethereum | n/a | [`0x8bde1d771423b8d2fe0b046b934fb9a7f956ade2`](./contracts/ethereum-1/0x8bde1d771423b8d2fe0b046b934fb9a7f956ade2/) | ⚠️ Unaudited |
| SDT | unknown | ethereum | n/a | [`0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/) | ⚠️ Unaudited |
| sdToken | token | ethereum | n/a | 7 deployments: ethereum [`0x0c057598dce1891688829581f890dd2a3685a43f`](./contracts/ethereum-1/0x0c057598dce1891688829581f890dd2a3685a43f/); ethereum `0x402f878bdd1f5c66fdaf0fababcf74741b68ac36`; ethereum `0x4df454443d6e9a888e9b1571b2375e8ab4118d9d`; ethereum `0x58aad88516bd26439e68bfb1dead78538ab59ffd`; ethereum `0x5ea630e00d6ee438d3dea1556a110359acdc10a9`; ethereum `0x752b4c6e92d96467fe9b9a2522ef07228e00f87c`; ethereum `0xe19d1c837b8a1c83a56cd9165b2c0256d39653ad` | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e248ee7feab91969b77ab32f184b72be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70`; ethereum `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b689a4f4afba497123b4831f58d6379d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff`; ethereum `0x6844aaab4131041b563e6217eb0ba218123f5e45`; ethereum `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc5948c948f131ddd9e3a341b99e45174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6`; ethereum `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | ethereum | n/a | [`0xf954200fd969443b8f853b4083b71cd073c05d5b`](./contracts/ethereum-1/0xf954200fd969443b8f853b4083b71cd073c05d5b/) | ⚠️ Unaudited |
| StakeDaoNFT | token | ethereum | n/a | [`0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | ethereum | n/a | [`0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | ethereum | n/a | [`0x6dd2236b1e089762cc264c85eebcff195ae38ea2`](./contracts/ethereum-1/0x6dd2236b1e089762cc264c85eebcff195ae38ea2/) | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | ethereum | n/a | [`0x221738f73fa4bfca91918e77d112b87d918c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x07fa4cca2a020fa9477ef7db5848bd976b64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/); ethereum `0x6382d84095cf9acc5b3690dbefcb0567971cdea3`; ethereum `0x94405b3ddfb47d42104c38547b3d31108ada2580`; ethereum `0xdda6ad61f347b7b821e69ee7c93f55f633e50240` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863fb8855b04509a835082478d6e3d0be4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194925d55d5de9555ad1db74c149329f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| UniformBoostProvider | unknown | ethereum | n/a | [`0x7c3867e04d5a69b750332300643b36135313c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5af15da84a4a6edf2d9fa6720de921e1026e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/); ethereum `0xa2761b0539374eb7af2155f76eb09864af075250`; ethereum `0xbc10c4f7b9fe0b305e8639b04c536633a3db7065`; ethereum `0xf3c2bdfccb75cafda3d69d807c336bede956563f` | ⚠️ Unaudited |
| VeBoostDelegation | unknown | ethereum | n/a | 2 deployments: ethereum [`0xce00ad8df94d8c365dc415b84963aa37a06be923`](./contracts/ethereum-1/0xce00ad8df94d8c365dc415b84963aa37a06be923/); ethereum `0xfda13d04e56ffcc7d2aa4ee93fb59b49afeb1688` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0xda9846665bdb44b0d0caffd0d1d4a539932bebdf`](./contracts/ethereum-1/0xda9846665bdb44b0d0caffd0d1d4a539932bebdf/); ethereum `0xe1f9c8ebbc80a013caf0940fdd1a8554d763b9cf` | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc7906fc6047679dad53c0c3b40e135486421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| vlBoost | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab05ca46d1c78cabb051effe35099714cad2adda`](./contracts/ethereum-1/0xab05ca46d1c78cabb051effe35099714cad2adda/); ethereum `0xba1b4362b2ded59b3ae5ee893ee3463ba382f570` | ⚠️ Unaudited |
| vlSDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1`](./contracts/ethereum-1/0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1/); ethereum `0x94818a7baa7e9f5dc62ce4da1b52ef9a760b80b8` | ⚠️ Unaudited |
| VoteBountyManagerFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x75289388d50364c3013583d97bd70ced0e183e32`](./contracts/ethereum-1/0x75289388d50364c3013583d97bd70ced0e183e32/); ethereum `0xa20b142c2d52193e9de618dc694eba673410693f` | ⚠️ Unaudited |
| VoteWeightRegistry | registry | ethereum | n/a | [`0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c`](./contracts/ethereum-1/0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | ethereum | n/a | [`0x09943c4f27f2ada5bb58b845d27405a4b3a894a8`](./contracts/ethereum-1/0x09943c4f27f2ada5bb58b845d27405a4b3a894a8/) | ⚠️ Unaudited |
| vsdCRVOFTAdapter | adapter | ethereum | n/a | [`0x92b8d4d4db1555ba4e928ccdea02b52126921e95`](./contracts/ethereum-1/0x92b8d4d4db1555ba4e928ccdea02b52126921e95/) | ⚠️ Unaudited |
| vsdToken | token | ethereum | n/a | 2 deployments: ethereum [`0x7346aa8959fb138787bf9a579b4d86098a3834fc`](./contracts/ethereum-1/0x7346aa8959fb138787bf9a579b4d86098a3834fc/); ethereum `0xe079ac07463ff375ce48e8a9d76211c10696f3b8` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 38 deployments: ethereum [`0x051d7e5609917bd9b73f04bac0ded8dd46a74301`](./contracts/ethereum-1/0x051d7e5609917bd9b73f04bac0ded8dd46a74301/); ethereum `0x08780fb7e580e492c1935bee4fa5920b94aa95da`; ethereum `0x1005f7406f32a61bd760cfa14accd2737913d546`; ethereum `0x2932a86df44fe8d2a706d8e9c5d51c24883423f5`; ethereum `0x29f3dd38db24d3935cf1bf841e6b2b461a3e5d92`; ethereum `0x3175df0976dfa876431c2e9ee6bc45b65d3473cc`; ethereum `0x33e411ebe366d72d058f3ef22f1d0cf8077fdab0`; ethereum `0x3f0e7916681452d23cd36b1281457da721f2e5df`; ethereum `0x4aa2afd5616beec2321a9efd7349400d4f18566a`; ethereum `0x50161102a240b1456d770dbb55c76d8dc2d160aa`; ethereum `0x552dad974da30d67f25be444991e22cbae357851`; ethereum `0x5bc3dd6e6b4e5dd811d558843da6a1bfbb9c9dca`; ethereum `0x696b5d296a8aef7482b726fcf0616e32fe72a53d`; ethereum `0x6d787113f23bed1d5e1530402b3f364d0a6e5af3`; ethereum `0x72953a5c32413614d24c29c84a66ae4b59581bbf`; ethereum `0x742c3cf9af45f91b109a81efeaf11535ecde9571`; ethereum `0x75f8f7fa4b6da6de9f4fe972c811b778cefce882`; ethereum `0x81c46feca27b31f3adc2b91ee4be9717d1cd3dd7`; ethereum `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f`; ethereum `0x94be07d45d57c7973a535c1c517bd79e602e051e`; ethereum `0x99a58482bd75cbab83b27ec03ca68ff489b5788f`; ethereum `0x9b02548de409d7aaee228bfa3ff2bca70e7a2fe8`; ethereum `0x9f330db38caaae5b61b410e2f0aad63fff2109d8`; ethereum `0xa1f8a6807c402e4a15ef4eba36528a3fed24e577`; ethereum `0xa2d40edbf76c6c0701ba8899e2d059798eba628e`; ethereum `0xa5d9358c60fc9bd2b508eda17c78c67a43a4458c`; ethereum `0xb3ad645db386d7f6d753b2b9c3f4b853da6890b8`; ethereum `0xc5022291ca8281745d173bb855dcd34dda67f2f0`; ethereum `0xc78fa2af0ca7990bb5ff32c9a728125be58cf247`; ethereum `0xcfc25170633581bf896cb6cdee170e3e3aa59503`; ethereum `0xd0921691c7debc698e6e372c6f74dc01fc9d3778`; ethereum `0xdcef968d416a41cdac0ed8702fac8128a64241a2`; ethereum `0xe4c09928d834cd58d233cd77b5af3545484b4968`; ethereum `0xf253f83aca21aabd2a20553ae0bf7f65c755a07f`; ethereum `0xf2f12b364f614925ab8e2c8bfc606edb9282ba09`; ethereum `0xf3a43307dcafa93275993862aae628fcb50dc768`; ethereum `0xf43211935c781d5ca1a41d2041f397b8a7366c7a`; ethereum `0xf9078fb962a7d13f55d40d49c8aa6472abd1a5a6` | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | ethereum | n/a | [`0xc7793bc89724925615d7e4080bd6b893d50d5fde`](./contracts/ethereum-1/0xc7793bc89724925615d7e4080bd6b893d50d5fde/) | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | ethereum | n/a | [`0xf908c0281f4bafbca67e490edae816b8472608c8`](./contracts/ethereum-1/0xf908c0281f4bafbca67e490edae816b8472608c8/) | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | ethereum | n/a | [`0xfb9aa699f1badb31a7c4b40f7fa1f49469595785`](./contracts/ethereum-1/0xfb9aa699f1badb31a7c4b40f7fa1f49469595785/) | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | ethereum | n/a | [`0x325229508513d484a90f3618e6aca8a9fb808ea9`](./contracts/ethereum-1/0x325229508513d484a90f3618e6aca8a9fb808ea9/) | ⚠️ Unaudited |
| YieldnestDepositor | unknown | ethereum | n/a | [`0x8f0e636a19c1677fdf37da0e3af602f96da3352e`](./contracts/ethereum-1/0x8f0e636a19c1677fdf37da0e3af602f96da3352e/) | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x24129b935aff071c4f0554882c0d9573f4975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/); ethereum `0xb17640796e4c27a39af51887aff3f8dc0daf9567`; ethereum `0xcd6997334867728ba14d7922f72c893fcee70e84` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04ef23094b40bca5655bbc8442886e1c45222619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08d36c723b8213122f678025c2d9eb1ec7ab8f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0f27b9d5f2bc742bf547968d2f07decbcf1a23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1725738f3295d3f8eb68da864a2ade9c39194c01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177eaa1a7c26da6dc84c0cc3f9ae6fd0a470e7ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ce37bee8f2db0c9c4960c4b7af3f7c75d1c8560` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f49037fa2979753545b51b7f58e20874a9f1d51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe537bd59a221854a53a5b7a81585b572787fce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x210dfec4fc0c3b88e7984a86dc315f43aa07a68a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2131197fc08623c971916e076af4ea3c0f42e209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23ab5100acaff53d00ad92bb8df75a72e7a3bc4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2903dbec58d193c34708de22f89fd7a42b6d0eb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f5e8c0a3bab996c570e4fc5f9bd2f19eb39136b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38d10708ce535361f178f55e68df7e85acc66270` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3deb1b1648edcd35088da8f4a428f7c900297886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7b4de8a29c90e0052c27bad365bbfe2aaa7ec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e88f78d4e961366117ebc015e1ee8944efbc574` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4153f858bbbc3b7763b91295feb3c7d3663f97d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ad5a81234533e2881022f8fb29aa07a6ed908e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c2f999e7378beabf1c6f1e63409c6eabe1bef8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e3736eafb179f80e2442507f59a6c7725dd996b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50dc9ae51f78c593d4138263da7088a973b8184e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51452b51fbb8e8b200d369a55366ec7a1564fde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5181291355abe5f3f1812a0aa888a73b9a16c91f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539e65190a371ce73244a98dec42ba635cca512c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x576d7ad8eae92d9a972104aac56c15255ddbe080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x588adda67b728c6ddc5b77a72920a012a718370d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5892dff85a2ae0cee9a0efa4c95e5e977122d1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5940611b5d6f16ea670f032f13e8a09567a8dff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b0944335fd62e4ca92396fd1d4e807de5007dc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b75c60d45bfb053f91b5a9eae22519dfaa37bb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dfdf492e52112d670be9df5bdc6b500e35479ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60136fefe23d269af41ab72de483d186dc4318d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x644a15e85aa4a56afe1461e7ff4f75d733b26322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6543b0f69c87bca8edb2ab75023c2bfbb4a2a2f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65ef1297e25c933d44d364df49852f8f59e53a0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76023039b5255977ea51da6786370c5b167339e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d5980fda6b2869e5f21bde8eb6bd89cb7af98b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88cae351ccd28cbf3e9d91c27a6f8a64602b66be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89645148cb8d7530f4ddb51ea72e2d05ba38abc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8996cb5f5abc5e8dd6425baa7d32179e38ccc265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x917d8bbca8d7a9e7ba46edbc67725acb036f18cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92cff1bc1af2a3cb03d969f3b4a1f63d782e3356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x963bacb5b0df6950814c572e3f9ea005458f6563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d967cf3043287ebae052a0a7cb6330f496f4510` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ebbb3d59d53d6ad3fa5464f36c2e84abb7cf5c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa054b857b7a06e04fe9768a86a24fe76ba70e7f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa29646350f098c9830f88b530ea9f19021a1339d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ecf0cc8e88136134203aaafb21f7bd2da6359a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab8a21516465d9fc57c621f57ecab838c1910bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae762a0bae17b2edeb76e6cd95822d0af2e7e7e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae76916ee6ccf50e06489509af6a17afd296c918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae9ad1b6f40e4ae7f74ce8eaafd570522bfda964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafc6aea868062e50a082400aea92f7260b4f7814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb539433ff0c477b350e50df5f36d049d28035a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f9633ff35a24fc0b08b9cba771a09789cf99bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7f79090190c297f59a2b7d51d3aef7aad0e9af3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcfe5c47129253c6b8a9a00565b3358b488d42e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaf1f31c6d7b5fbd5df2ea9767f08999d670c44a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3040becb009efdb65f4b1b844f4438b5da058f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd24d1fa18605006d222fbfe8476858b2dfc9a04e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd69f52a4390eff6d4dd70c1d5b52055cedd25ade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7b81067896c918d4d21fb814b08e0be3821e089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9f15a541152984e39a5795ca8f8cf487f397bda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde65a189ebf9b698a935e13cd58c3e7ceabe9375` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe42a462dbf54f281f95776e663d8c942dcf94f17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c978731617096d04ea271a2499cf48b99cdc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe56d9776fbb287a2f8ba3f11375f51a24d7e25db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf56c26431132ee09fa989cefc197bd49780c2166` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffec6cff6780c9f9f3c324e976751ffcfc8810fb` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x615959a1d3e2740054d7130028613ecfa988056f`](./contracts/ethereum-1/0x615959a1d3e2740054d7130028613ecfa988056f/) | Accumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1662a5c9ce635f2322a9aadeaa060654aaadccf4`](./contracts/ethereum-1/0x1662a5c9ce635f2322a9aadeaa060654aaadccf4/) | AdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b`](./contracts/ethereum-1/0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b/) | AdapterRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcad2b9c980322f460db51cc8e45539f677c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | AladdinOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32ee46755ae81ce917392ed1fb21f74a8104515b`](./contracts/ethereum-1/0x32ee46755ae81ce917392ed1fb21f74a8104515b/) | AngleMerklClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece`](./contracts/ethereum-1/0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece/) | AngleVaultGamma | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01363db6e185433ae63de4c745ca0aef49a569d8`](./contracts/ethereum-1/0x01363db6e185433ae63de4c745ca0aef49a569d8/) | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa52f3dd9c456f77d766075a727c7c045fcc407f0`](./contracts/ethereum-1/0xa52f3dd9c456f77d766075a727c7c045fcc407f0/) | BoostMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097d23d07f1061cb4ace410a3ddc634820bb79c6`](./contracts/ethereum-1/0x097d23d07f1061cb4ace410a3ddc634820bb79c6/) | ClaimRewardsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x883fd355debf417f82aa9a3e2936971487f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | CompounderGateway | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3f46356ca516664c305dad356ddee5491017945`](./contracts/ethereum-1/0xb3f46356ca516664c305dad356ddee5491017945/) | ControllerModule | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026`](./contracts/ethereum-1/0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026/) | CRVDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc9718e7704f10db1afaad737f8a04bcd14c20aa`](./contracts/ethereum-1/0xdc9718e7704f10db1afaad737f8a04bcd14c20aa/) | CRVPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94155052e2be3c9ad6d57f1b13f914626946d8f7`](./contracts/ethereum-1/0x94155052e2be3c9ad6d57f1b13f914626946d8f7/) | CRVStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | DarkParadiseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f5c485d24fb1832a14f122c8722ef15c158acb5`](./contracts/ethereum-1/0x7f5c485d24fb1832a14f122c8722ef15c158acb5/) | Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd116513eea4efe3908212afbaefc76cb29245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51df7675b8f7b970ded3596c00624a30ec9cfd2b`](./contracts/ethereum-1/0x51df7675b8f7b970ded3596c00624a30ec9cfd2b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13`](./contracts/ethereum-1/0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13/) | FXNAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede`](./contracts/ethereum-1/0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede/) | FXNAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7995192be61ea0b28ce14183dda51edf78f1c7ab`](./contracts/ethereum-1/0x7995192be61ea0b28ce14183dda51edf78f1c7ab/) | FXNDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3374b9466d571edd695cf5e198f7c89b33c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | FxUSDBasePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe60eb8098b34ed775ac44b1dde864e098c6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | Gauge Controller | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c310fc54c0534dc3c45312934508722284352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | GaugeMultiRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac1a882e6cedc58511b7e42b02bab42e2c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | GaugeRewarder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f78ddf344e20b92b03c13d82d1316fc0a66820e`](./contracts/ethereum-1/0x8f78ddf344e20b92b03c13d82d1316fc0a66820e/) | InflationReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786833b5fd5ee21532d8b576391babefdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28604ff7b4aeae28d4d9e54d14038c910844343a`](./contracts/ethereum-1/0x28604ff7b4aeae28d4d9e54d14038c910844343a/) | Liquidity Gauge v4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4887aea49758b413e9bab127ffa4e59104bd0cd8`](./contracts/ethereum-1/0x4887aea49758b413e9bab127ffa4e59104bd0cd8/) | Liquidity Gauge v4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c5ccb2e511fcdeaa16737810787a47507cf0922`](./contracts/ethereum-1/0x5c5ccb2e511fcdeaa16737810787a47507cf0922/) | LockerPreLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2319289e56830b50a282c25af4f0045c724b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c`](./contracts/ethereum-1/0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ac34fe88e434812ddc4a29caa8234328983a13c`](./contracts/ethereum-1/0x3ac34fe88e434812ddc4a29caa8234328983a13c/) | MAVDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414cbb5c7cf637b7030965b5ee84504c64c10c29`](./contracts/ethereum-1/0x414cbb5c7cf637b7030965b5ee84504c64c10c29/) | Merkle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf442e3a8041199747f94b01a64632134256f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | MerkleDistributorSdt | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2989df9c8c9897f07d464366607dcbfaebf7448c`](./contracts/ethereum-1/0x2989df9c8c9897f07d464366607dcbfaebf7448c/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3680cce0d97bbbfa47765d7429ff207d03a7364f`](./contracts/ethereum-1/0x3680cce0d97bbbfa47765d7429ff207d03a7364f/) | OnlyBoostAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48af330a99a4cee2f367a4ab447ba816d091bce7`](./contracts/ethereum-1/0x48af330a99a4cee2f367a4ab447ba816d091bce7/) | Optimizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b8f14554f40705de7908879e2228d2ac94fde1a`](./contracts/ethereum-1/0x9b8f14554f40705de7908879e2228d2ac94fde1a/) | OpynPerpVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be95a7c0ad24e2d2876793172d046db05d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/) | PoolConfiguration | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f844447ecf5b1523bfbadad3d9dea975982ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b162de7fbd942f142aa21865f685f71a687a3bb`](./contracts/ethereum-1/0x2b162de7fbd942f142aa21865f685f71a687a3bb/) | ProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d8a9c30e4e25033498347c1a054717bd0c4d356`](./contracts/ethereum-1/0x1d8a9c30e4e25033498347c1a054717bd0c4d356/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de`](./contracts/ethereum-1/0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de/) | Registrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e67460226a71df07115c1f169418dd159e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d144357dcc8a852ad601f27bf6310b657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x524fce03270c60279d604ea3b374194e96c3a3b3`](./contracts/ethereum-1/0x524fce03270c60279d604ea3b374194e96c3a3b3/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7`](./contracts/ethereum-1/0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7/) | RewardReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46`](./contracts/ethereum-1/0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46/) | RewardReceiverMigrationModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a207a85e372fcdac3014f945a65868f2a05ba12`](./contracts/ethereum-1/0x9a207a85e372fcdac3014f945a65868f2a05ba12/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef`](./contracts/ethereum-1/0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5`](./contracts/ethereum-1/0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5/) | RouterModuleClaim | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9`](./contracts/ethereum-1/0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9/) | RouterModuleDeposit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0b84b9334132843fc256830fb941d535853c120`](./contracts/ethereum-1/0xf0b84b9334132843fc256830fb941d535853c120/) | RouterModuleMigrationStakeDAOV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8155b8858af2b12baf8a79e22021b14f91557707`](./contracts/ethereum-1/0x8155b8858af2b12baf8a79e22021b14f91557707/) | RouterModuleVLSDT | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe88772dfb857317476b77f1a25b888b9424cf63c`](./contracts/ethereum-1/0xe88772dfb857317476b77f1a25b888b9424cf63c/) | RouterModuleWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac14864ce5a98af3248ffbf549441b04421247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | Sanctuary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1b5651e55d4ceed36251c61c50c889b36f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | sdCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50687515e93c43964733282f9db8683f80bb02f9`](./contracts/ethereum-1/0x50687515e93c43964733282f9db8683f80bb02f9/) | sdMAV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bde1d771423b8d2fe0b046b934fb9a7f956ade2`](./contracts/ethereum-1/0x8bde1d771423b8d2fe0b046b934fb9a7f956ade2/) | SdPendleBribeBurner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/) | SDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c057598dce1891688829581f890dd2a3685a43f`](./contracts/ethereum-1/0x0c057598dce1891688829581f890dd2a3685a43f/) | sdToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e248ee7feab91969b77ab32f184b72be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b689a4f4afba497123b4831f58d6379d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc5948c948f131ddd9e3a341b99e45174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf954200fd969443b8f853b4083b71cd073c05d5b`](./contracts/ethereum-1/0xf954200fd969443b8f853b4083b71cd073c05d5b/) | StakeDAOCompounderBurner | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | StakeDaoNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | StakeDaoNFT_V2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd2236b1e089762cc264c85eebcff195ae38ea2`](./contracts/ethereum-1/0x6dd2236b1e089762cc264c85eebcff195ae38ea2/) | StakeDaoNFT_V3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x221738f73fa4bfca91918e77d112b87d918c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | StakeDaoNFTPalace | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fa4cca2a020fa9477ef7db5848bd976b64eebc`](./contracts/ethereum-1/0x07fa4cca2a020fa9477ef7db5848bd976b64eebc/) | StrategyWrapperLeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c3867e04d5a69b750332300643b36135313c5b7`](./contracts/ethereum-1/0x7c3867e04d5a69b750332300643b36135313c5b7/) | UniformBoostProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5af15da84a4a6edf2d9fa6720de921e1026e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce00ad8df94d8c365dc415b84963aa37a06be923`](./contracts/ethereum-1/0xce00ad8df94d8c365dc415b84963aa37a06be923/) | VeBoostDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda9846665bdb44b0d0caffd0d1d4a539932bebdf`](./contracts/ethereum-1/0xda9846665bdb44b0d0caffd0d1d4a539932bebdf/) | VeBoostDelegationMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc7906fc6047679dad53c0c3b40e135486421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab05ca46d1c78cabb051effe35099714cad2adda`](./contracts/ethereum-1/0xab05ca46d1c78cabb051effe35099714cad2adda/) | vlBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1`](./contracts/ethereum-1/0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1/) | vlSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75289388d50364c3013583d97bd70ced0e183e32`](./contracts/ethereum-1/0x75289388d50364c3013583d97bd70ced0e183e32/) | VoteBountyManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c`](./contracts/ethereum-1/0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c/) | VoteWeightRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09943c4f27f2ada5bb58b845d27405a4b3a894a8`](./contracts/ethereum-1/0x09943c4f27f2ada5bb58b845d27405a4b3a894a8/) | Voting Escrow v2.0.0 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92b8d4d4db1555ba4e928ccdea02b52126921e95`](./contracts/ethereum-1/0x92b8d4d4db1555ba4e928ccdea02b52126921e95/) | vsdCRVOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7346aa8959fb138787bf9a579b4d86098a3834fc`](./contracts/ethereum-1/0x7346aa8959fb138787bf9a579b4d86098a3834fc/) | vsdToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051d7e5609917bd9b73f04bac0ded8dd46a74301`](./contracts/ethereum-1/0x051d7e5609917bd9b73f04bac0ded8dd46a74301/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7793bc89724925615d7e4080bd6b893d50d5fde`](./contracts/ethereum-1/0xc7793bc89724925615d7e4080bd6b893d50d5fde/) | YFIAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf908c0281f4bafbca67e490edae816b8472608c8`](./contracts/ethereum-1/0xf908c0281f4bafbca67e490edae816b8472608c8/) | YFIDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb9aa699f1badb31a7c4b40f7fa1f49469595785`](./contracts/ethereum-1/0xfb9aa699f1badb31a7c4b40f7fa1f49469595785/) | YieldBasisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325229508513d484a90f3618e6aca8a9fb808ea9`](./contracts/ethereum-1/0x325229508513d484a90f3618e6aca8a9fb808ea9/) | YieldBasisFallbackHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f0e636a19c1677fdf37da0e3af602f96da3352e`](./contracts/ethereum-1/0x8f0e636a19c1677fdf37da0e3af602f96da3352e/) | YieldnestDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24129b935aff071c4f0554882c0d9573f4975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/) | yVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 122 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 78 |

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
