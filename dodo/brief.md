# Agentic Audit Brief: DODO

⚠️ Lifecycle status: DECLINING - TVL dropped 42.9% over 90 days

## Project Overview

- Project: DODO (`dodo`)
- Website: [https://dodoex.io](https://dodoex.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:45.266Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, manta, mantle, optimism, polygon
- Contract surface: 79 unique implementations (189 raw deployments)
- DeFi Llama TVL: $11,026,124.00
- On-chain TVL (included contracts): $19,129,279.70
- TVL by chain: Ethereum $18,098,975.31 | Bsc $1,030,304.39

## Project Description

DODO is a decentralized exchange protocol and on-chain liquidity provider that uses a proactive market maker (PMM) algorithm to support efficient trading and liquidity provisioning across multiple chains, with AMM pool factories and routing/aggregation products.

### Architecture

The DODO family provides the foundational AMM factories and token, while DODO Agg builds on top with vaults and staking contracts that interact with DODO pools and external liquidity sources. DODO AMM is a parallel set of factory deployments sharing the same PMM design, often on separate chains, and may be used by aggregation services.

## Contract Surface Quality

- Indexed contracts: 1604; live-surface contracts included: 189 (119 live, 70 unknown).
- Excluded by liveness: 1338 inactive, 77 singleton, 0 uninitialized.
- Deployment units: 1/24 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 19/53.

## Audit Coverage Summary

- Verified implementations audited: 0/74 (0.0%)
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 79
- Raw deployments: 189
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $19,129,279.70
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $19,129,279.70 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DODOToken | token | ethereum | n/a | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | ⚠️ Unaudited |
| DODOBscToken | token | bsc | n/a | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | ⚠️ Unaudited |
| Atlantis | unknown | bsc | n/a | [`0x1fd991...c10271`](./contracts/bsc-56/0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271/) | ⚠️ Unaudited |
| BirdlayerRouteProxy | unknown | arbitrum | n/a | 4 deployments: ethereum `0x464494...c6b744`; bsc `0x669c8c...f19ace`; bsc `0xdbaf29...75074a`; arbitrum [`0x255416...8f1992`](./contracts/arbitrum-42161/0x255416bc03b5f5c6fa4425691f3e5dac108f1992/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | n/a | [`0x306227...b404b2`](./contracts/ethereum-1/0x306227d964511a260d14563fbfa82aa75db404b2/) | ⚠️ Unaudited |
| CloneFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x5e5a7b...a80b88`](./contracts/ethereum-1/0x5e5a7b76462e4bdf83aa98795644281bdba80b88/); manta `0x628e50...e58852` | ⚠️ Unaudited |
| CP | unknown | manta | n/a | [`0x3dd629...073f11`](./contracts/manta-169/0x3dd629473a2ed7f3c6299ffd9f3e0c283d073f11/) | ⚠️ Unaudited |
| CrowdPoolingFactory | registry | manta | n/a | [`0xfd2b79...500df1`](./contracts/manta-169/0xfd2b7994f91c08aaa5e013e899334a2dbb500df1/) | ⚠️ Unaudited |
| CustomERC20 | token | manta | n/a | [`0xeac4bf...adc596`](./contracts/manta-169/0xeac4bfef7d1c872ed705b01856af7f9802adc596/) | ⚠️ Unaudited |
| CustomMintableERC20 | token | manta | n/a | [`0x04f7ba...dc89ea`](./contracts/manta-169/0x04f7bae2a4c05cd567f762e33450debcebdc89ea/) | ⚠️ Unaudited |
| D3MMFactory | registry | arbitrum | n/a | [`0x482432...be4cd6`](./contracts/arbitrum-42161/0x482432c15a1657020991aa60e856ac440dbe4cd6/) | ⚠️ Unaudited |
| D3Proxy | unknown | ethereum | n/a | [`0x411ec3...523e6b`](./contracts/ethereum-1/0x411ec324598ef53b1e8663e335e9094464523e6b/) | ⚠️ Unaudited |
| D3Vault | core_logic | arbitrum | n/a | [`0xbaf350...0744d9`](./contracts/arbitrum-42161/0xbaf350b14ed48429a7772f7d05b2cfc6620744d9/) | ⚠️ Unaudited |
| DataStreamsConsumer | unknown | arbitrum | n/a | [`0x01ae7f...331c97`](./contracts/arbitrum-42161/0x01ae7f0633e1d8d642c5a6a6d39b00a36b331c97/) | ⚠️ Unaudited |
| DODO | unknown | bsc | n/a | 3 deployments: ethereum `0xc9f931...7d61ad`; bsc [`0x6064db...8cfe10`](./contracts/bsc-56/0x6064dbd0ff10bfed5a797807042e9f63f18cfe10/); bsc `0xbe60d4...deb4c7` | ⚠️ Unaudited |
| DODOApprove | unknown | manta | n/a | 2 deployments: polygon `0x6d3103...8cb4f4`; manta [`0x0226fc...3e13c2`](./contracts/manta-169/0x0226fce8c969604c3a0ad19c37d1fafac73e13c2/) | ⚠️ Unaudited |
| DODOApproveProxy | unknown | manta | n/a | 2 deployments: bsc `0xb76de2...76314c`; manta [`0xa23137...49eeae`](./contracts/manta-169/0xa23137871c4a4ce8514f581ee82262cd1a49eeae/) | ⚠️ Unaudited |
| DODOCalleeHelper | periphery | manta | n/a | [`0x440234...01e269`](./contracts/manta-169/0x44023441f2bad375b6b5c6354b03c3e9ad01e269/) | ⚠️ Unaudited |
| DODOCpProxy | unknown | manta | n/a | 3 deployments: polygon `0x6bd374...8138fa`; manta [`0x2f66c5...d35fd3`](./contracts/manta-169/0x2f66c5aaf006bd9c51615d617589c16c0ed35fd3/); avalanche `0x973cab...c1143c` | ⚠️ Unaudited |
| DODODppProxy | unknown | base | n/a | 9 deployments: ethereum `0xff7c8f...6dae7a`; optimism `0x51a70a...2e85dd`; bsc `0x624fc8...ec21b9`; polygon `0xf6f1a1...abc2f7`; manta `0xcda4a6...f3c897`; mantle `0xa5fc92...69d6c2`; base [`0x0b1467...93cf36`](./contracts/base-8453/0x0b1467f71c082d8d410af4376c685d9a6893cf36/); avalanche `0xe44f14...1753c9`; linea `0xcda4a6...f3c897` | ⚠️ Unaudited |
| DODODspProxy | unknown | manta | n/a | 11 deployments: ethereum `0x4599ed...5c644d`; ethereum `0x5245f5...cd879b`; bsc `0x2442a8...d4e65a`; bsc `0x69716e...11c594`; polygon `0xa3dff6...ef683e`; polygon `0xfddca6...178048`; manta [`0x0b1467...93cf36`](./contracts/manta-169/0x0b1467f71c082d8d410af4376c685d9a6893cf36/); mantle `0x2933c0...9debee`; base `0x49186e...d41414`; arbitrum `0xf0f8fb...6fac9d`; avalanche `0xeceade...95dc32` | ⚠️ Unaudited |
| DODOFeeRouteProxy | unknown | bsc | n/a | 12 deployments: ethereum `0x5977f1...254da8`; ethereum `0xfe837a...c4dffc`; bsc [`0x0343c5...c71c64`](./contracts/bsc-56/0x0343c5757fb98ad9ef39824e08b852af61c71c64/); bsc `0x701ac6...c93368`; manta `0x200d86...a5eb80`; manta `0x2933c0...9debee`; mantle `0x70b9c5...570698`; base `0x987bfb...c16d32`; arbitrum `0x056fce...7bfc1a`; arbitrum `0x69716e...11c594`; linea `0x03e89f...bf391b`; linea `0x70b9c5...570698` | ⚠️ Unaudited |
| DODOMigrationBSC | operational_periphery | ethereum | n/a | [`0x02fcb2...d32bc7`](./contracts/ethereum-1/0x02fcb21dc1cf221939c1d4277fb54016b5d32bc7/) | ⚠️ Unaudited |
| DODOMine | unknown | bsc | n/a | 3 deployments: ethereum `0xaed738...0a632c`; bsc [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/); polygon `0xb14da6...6fc3ad` | ⚠️ Unaudited |
| DODOMineV2Factory | registry | manta | n/a | [`0x46af6b...f6cd5c`](./contracts/manta-169/0x46af6b152f2cb02a3cfcc74014c2617bc4f6cd5c/) | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0d9685...00bbdc`](./contracts/ethereum-1/0x0d9685d4037580f68d9f77b08971f17e1000bbdc/); bsc `0x8f3fb1...b5c590`; polygon `0x47a65e...a234ad`; manta `0xa6d006...dd9719`; avalanche `0x5d6e6a...16b245` | ⚠️ Unaudited |
| DODOMineV3Registry | registry | manta | n/a | [`0x66c45f...3a3fec`](./contracts/manta-169/0x66c45ff040e86dc613f239123a5e21ffdc3a3fec/) | ⚠️ Unaudited |
| DODONFT | token | bsc | n/a | [`0x5ed972...489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | ⚠️ Unaudited |
| DODONFT1155 | token | ethereum | n/a | 2 deployments: ethereum [`0x3ab9b8...4cfd5b`](./contracts/ethereum-1/0x3ab9b8bcc97db111bf14b04ebd4c08dce94cfd5b/); bsc `0xdc9224...f56119` | ⚠️ Unaudited |
| DODORouteProxy | unknown | avalanche | n/a | 2 deployments: bsc `0x6b3d81...9737ca`; avalanche [`0x409e37...5d1dd9`](./contracts/avalanche-43114/0x409e377a7affb1fd3369cfc24880ad58895d1dd9/) | ⚠️ Unaudited |
| DODOSellHelper | periphery | manta | n/a | [`0x8ea40e...543bac`](./contracts/manta-169/0x8ea40e8da3ae64bad5e77a5f7db346499f543bac/) | ⚠️ Unaudited |
| DODOSwapCalcHelper | periphery | manta | n/a | [`0xbcd2fd...8c62da`](./contracts/manta-169/0xbcd2fdc3b884cf0dfd932f55ec2fe1fb7e8c62da/) | ⚠️ Unaudited |
| DODOV1PmmHelper | periphery | manta | n/a | [`0x17644d...2946a7`](./contracts/manta-169/0x17644d3b366273fac75a07996e2f90a99a2946a7/) | ⚠️ Unaudited |
| DODOV2Adapter | adapter | manta | n/a | [`0x7db214...bd2b93`](./contracts/manta-169/0x7db214f2d46d94846936a0f8bd9044c5c5bd2b93/) | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | avalanche | n/a | 10 deployments: ethereum `0xa35686...231fdc`; optimism `0xfd9d28...db3c98`; bsc `0x8f8dd7...d58486`; polygon `0x45894c...dfef0d`; polygon `0xa222e6...1d0e70`; manta `0x2f8665...c188c7`; mantle `0xe7979e...3e33a2`; base `0x4cad00...295f33`; avalanche [`0x2cd185...c9ea26`](./contracts/avalanche-43114/0x2cd18557e14af72daa8090bcaa95b231ffc9ea26/); linea `0x4cad00...295f33` | ⚠️ Unaudited |
| DODOV2RouteHelper | periphery | manta | n/a | [`0x4cad00...295f33`](./contracts/manta-169/0x4cad0052524648a7fa2cfe279997b00239295f33/) | ⚠️ Unaudited |
| DPPAdvanced | unknown | bsc | n/a | 2 deployments: bsc [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/); manta `0xcb3dc9...06495e` | ⚠️ Unaudited |
| DPPAdvancedAdmin | unknown | manta | n/a | [`0xcd536b...de2e48`](./contracts/manta-169/0xcd536b4decfd2fa0443666b6becd145f8ade2e48/) | ⚠️ Unaudited |
| DPPFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x5336ed...6a2fbe`](./contracts/ethereum-1/0x5336ede8f971339f6c0e304c66ba16f1296a2fbe/); ethereum `0x6b4fa0...d3e5ef`; bsc `0xd9cac3...51daae`; manta `0xa71415...35bf0a` | ⚠️ Unaudited |
| DSP | unknown | manta | n/a | [`0x6a9de0...183b3e`](./contracts/manta-169/0x6a9de0c6235bdd14b52eea53f5a08ff7d4183b3e/) | ⚠️ Unaudited |
| DSPFactory | registry | manta | n/a | 2 deployments: polygon `0xa35686...231fdc`; manta [`0x29c771...875de1`](./contracts/manta-169/0x29c7718e8b606cef1c44fe6e43e07af9d0875de1/) | ⚠️ Unaudited |
| DVM | unknown | manta | n/a | [`0x1fc8ec...4bd4cc`](./contracts/manta-169/0x1fc8ec204549c865a17b4059a57deca66a4bd4cc/) | ⚠️ Unaudited |
| DVMFactory | registry | base | n/a | 6 deployments: ethereum `0x72d220...598f6c`; optimism `0x2b800d...fe0b40`; bsc `0x790b4a...1733fb`; manta `0x97bbf5...416a83`; base [`0x0226fc...3e13c2`](./contracts/base-8453/0x0226fce8c969604c3a0ad19c37d1fafac73e13c2/); avalanche `0xff133a...a8ae6a` | ⚠️ Unaudited |
| ERC20Factory | registry | bsc | n/a | [`0x5e8419...81bb01`](./contracts/bsc-56/0x5e84190a270333ace5b9202a3f4cebf11b81bb01/) | ⚠️ Unaudited |
| ERC20Helper | token | manta | n/a | 2 deployments: polygon `0xfd2431...25a9b3`; manta [`0xb5c7ba...373780`](./contracts/manta-169/0xb5c7ba1eade74800cd6cf5f56b1c4562de373780/) | ⚠️ Unaudited |
| ERC20Mine | token | bsc | n/a | 3 deployments: ethereum `0xa6d368...912331`; bsc [`0x322b43...b0385f`](./contracts/bsc-56/0x322b43e406d1b4df9bc36d058317dd1cd3b0385f/); manta `0x898726...db7e3b` | ⚠️ Unaudited |
| ERC20MineV3 | token | manta | n/a | 2 deployments: manta [`0x6de4d8...babeb1`](./contracts/manta-169/0x6de4d882a84a98f4ccd5d33ea6b3c99a07babeb1/); arbitrum `0x78d43a...178d55` | ⚠️ Unaudited |
| ERC20V2Factory | registry | avalanche | n/a | [`0x141b44...dbe07a`](./contracts/avalanche-43114/0x141b4497a298340e8b451ac4eee947b00adbe07a/) | ⚠️ Unaudited |
| ERC20V3Factory | registry | avalanche | n/a | 9 deployments: ethereum `0x7466c6...5a7e16`; optimism `0x5a274f...0e0acc`; bsc `0x5ed22a...e7dc92`; polygon `0x5258db...b8be91`; manta `0xc0f955...c360f7`; mantle `0xfd2b79...500df1`; base `0xcb3dc9...06495e`; avalanche [`0x00971e...96ee42`](./contracts/avalanche-43114/0x00971e21955f1bb8021a5ef2546bec2ff896ee42/); linea `0x0226fc...3e13c2` | ⚠️ Unaudited |
| Fear | unknown | bsc | n/a | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | ⚠️ Unaudited |
| FeeRateDIP3Impl | unknown | manta | n/a | [`0x4aae1d...caf931`](./contracts/manta-169/0x4aae1d041c01078725db016ba4d4f72455caf931/) | ⚠️ Unaudited |
| FeeRateModel | operational_periphery | manta | n/a | [`0x7b0716...c75aa0`](./contracts/manta-169/0x7b07164ecfaf0f0d85dfc062bc205a4674c75aa0/) | ⚠️ Unaudited |
| GatewaySend | unknown | ethereum | n/a | 10 deployments: ethereum [`0x070615...c7e433`](./contracts/ethereum-1/0x07061554978b6b6645cf074e9d85df409cc7e433/); ethereum `0x470525...31d3ff`; ethereum `0x56d74f...46b4e9`; ethereum `0xf3234a...5a0a6b`; bsc `0x08f9f0...9f79f0`; bsc `0x3f1ed2...2d0a4d`; bsc `0x8683c9...b7e029`; bsc `0xaf2403...4b8471`; bsc `0xcd636c...b75e96`; bsc `0xe02e1b...d42ea0` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-27321 | [`0x95c4f5...891cb0`](./contracts/ethereum-1/0x95c4f5b83aa70810d4f142d58e5f7242bd891cb0/) | ⚠️ Unaudited |
| GSP | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x2e50e3...9b962e`](./contracts/arbitrum-42161/0x2e50e3e18c19c7d80b81888a961a13aee49b962e/); arbitrum `0x3a7bc5...6d1aaa`; arbitrum `0x710409...df6473`; arbitrum `0x8b09db...e6ef3e`; arbitrum `0xb63ca5...3c0241`; arbitrum `0xc88492...f16ba8`; arbitrum `0xd2b805...89ea36`; arbitrum `0xe6cecb...85686f` | ⚠️ Unaudited |
| GSPFactory | registry | arbitrum | n/a | [`0x46e55a...6f0c29`](./contracts/arbitrum-42161/0x46e55a974c5995675b025f7f607c3278b36f0c29/) | ⚠️ Unaudited |
| InitializableERC20 | token | manta | n/a | [`0x841456...3cbe81`](./contracts/manta-169/0x8414560d69650bc0c915d5d4385e1714a23cbe81/) | ⚠️ Unaudited |
| InitializableMintableERC20 | token | bsc | n/a | [`0x6373ce...064ac4`](./contracts/bsc-56/0x6373ceb657c83c91088d328622573fb766064ac4/) | ⚠️ Unaudited |
| LockedTokenVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/); ethereum `0x1e02fe...483dd3`; ethereum `0x300ad0...98233f`; ethereum `0x6cedea...6d0ab3` | ⚠️ Unaudited |
| Multicall | periphery | manta | n/a | [`0xf5ec1a...7270b1`](./contracts/manta-169/0xf5ec1a19e1570bdf0a3aaa6585274f27027270b1/) | ⚠️ Unaudited |
| MulticallWithValid | periphery | manta | n/a | [`0x6d3bd0...650e03`](./contracts/manta-169/0x6d3bd005a8a75d6522c9cfe7d309bb1cf9650e03/) | ⚠️ Unaudited |
| MultiSigWalletWithTimelock | governance | polygon | n/a | 8 deployments: optimism `0x677dd9...037a00`; polygon [`0x3cd6d7...162b42`](./contracts/polygon-137/0x3cd6d7f5ff977bf8069548ea1f9441b061162b42/); manta `0xa7b9c3...f0bd97`; mantle `0x7b0716...c75aa0`; arbitrum `0x470525...31d3ff`; arbitrum `0xdbaf29...75074a`; avalanche `0x9fcfd9...0eb5ca`; linea `0x6292e8...30e0f9` | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | bsc | n/a | [`0xdf7e00...20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | bsc | n/a | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | ⚠️ Unaudited |
| NativeAdapter | adapter | arbitrum | n/a | [`0x070615...c7e433`](./contracts/arbitrum-42161/0x07061554978b6b6645cf074e9d85df409cc7e433/) | ⚠️ Unaudited |
| NativeV3Adapter | adapter | ethereum | n/a | [`0xdbaf29...75074a`](./contracts/ethereum-1/0xdbaf291a4380749a0e6474e25ab8a3186475074a/) | ⚠️ Unaudited |
| PermissionManager | governance | manta | n/a | [`0x5fe43c...aaaa65`](./contracts/manta-169/0x5fe43c0ebfe66b83c10a9a37ad1e4ac640aaaa65/) | ⚠️ Unaudited |
| RingAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x1d2bc7...14433b`](./contracts/ethereum-1/0x1d2bc7963fe592f08155fcaa6158186eb414433b/); bsc `0xcdd753...6bfedf`; arbitrum `0x895df3...0d7193` | ⚠️ Unaudited |
| SolvOracleAdapter | operational_periphery | arbitrum | n/a | [`0x577389...afa387`](./contracts/arbitrum-42161/0x577389ef538f8767865f68f3edbbfbfd60afa387/) | ⚠️ Unaudited |
| TimeLockContract | governance | arbitrum | n/a | [`0xb95ed7...b10ab9`](./contracts/arbitrum-42161/0xb95ed7e958e196688984951f41ac2888f4b10ab9/) | ⚠️ Unaudited |
| UniV4Adapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x1e8df8...1971eb`](./contracts/ethereum-1/0x1e8df8bf06fe3dac7396b0cb4e5d4f71aa1971eb/); ethereum `0x3e83b9...47e783`; ethereum `0x650527...c5fdc0` | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x08c971...fc772b`](./contracts/arbitrum-42161/0x08c971aa807c21cfa354c3001683a9f4dbfc772b/); arbitrum `0x1d2bc7...14433b` | ⚠️ Unaudited |
| vDODOMine | unknown | bsc | n/a | 2 deployments: ethereum `0xd84c90...f899cb`; bsc [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | ⚠️ Unaudited |
| vDODOToken | token | ethereum | n/a | [`0xc4436f...bd402a`](./contracts/ethereum-1/0xc4436fbae6eba5d95bf7d53ae515f8a707bd402a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x53d009...1bb794` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x297da0...d81005` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb38d39...0066cd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2e50e3...9b962e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fea37...739968` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.md](https://github.com/DODOEX/docs/blob/master/docs/audit.md) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | DODOBscToken | token | $1,030,304.39 | Verified native implementation with $1,030,304.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fd991...c10271`](./contracts/bsc-56/0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271/) | Atlantis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x411ec3...523e6b`](./contracts/ethereum-1/0x411ec324598ef53b1e8663e335e9094464523e6b/) | D3Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6064db...8cfe10`](./contracts/bsc-56/0x6064dbd0ff10bfed5a797807042e9f63f18cfe10/) | DODO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0343c5...c71c64`](./contracts/bsc-56/0x0343c5757fb98ad9ef39824e08b852af61c71c64/) | DODOFeeRouteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02fcb2...d32bc7`](./contracts/ethereum-1/0x02fcb21dc1cf221939c1d4277fb54016b5d32bc7/) | DODOMigrationBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | DODOMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d9685...00bbdc`](./contracts/ethereum-1/0x0d9685d4037580f68d9f77b08971f17e1000bbdc/) | DODOMineV3Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ed972...489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | DODONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ab9b8...4cfd5b`](./contracts/ethereum-1/0x3ab9b8bcc97db111bf14b04ebd4c08dce94cfd5b/) | DODONFT1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/) | DPPAdvanced | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e8419...81bb01`](./contracts/bsc-56/0x5e84190a270333ace5b9202a3f4cebf11b81bb01/) | ERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | Fear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x070615...c7e433`](./contracts/ethereum-1/0x07061554978b6b6645cf074e9d85df409cc7e433/) | GatewaySend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6373ce...064ac4`](./contracts/bsc-56/0x6373ceb657c83c91088d328622573fb766064ac4/) | InitializableMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/) | LockedTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbaf29...75074a`](./contracts/ethereum-1/0xdbaf291a4380749a0e6474e25ab8a3186475074a/) | NativeV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | vDODOMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4436f...bd402a`](./contracts/ethereum-1/0xc4436fbae6eba5d95bf7d53ae515f8a707bd402a/) | vDODOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3401] audit.md

Fork inheritance lineage and inherited audits are included when available.
