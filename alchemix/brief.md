# Agentic Audit Brief: Alchemix

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:37.784Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, fantom, optimism
- Contract surface: 98 unique implementations (249 raw deployments)
- DeFi Llama TVL: $31,914,645.00
- On-chain TVL (included contracts): $339,306,903.55
- TVL by chain: Ethereum $304,724,511.08 | Optimism $34,582,392.47

## Project Description

Alchemix is a DeFi protocol for self-repaying loans and vaults. Users deposit collateral such as ETH or USDC to borrow against future yield, with current product positioning emphasizing self-repaying vaults, up to 90% LTV, 0% interest, no market-liquidation risk, and fixed-rate returns. The protocol also includes the alAsset and transmuter system, where synthetic assets represent yield-backed debt that can be repaid over time as deposited collateral earns yield.

### Architecture

Alchemix V2 and V3 share the same governance infrastructure (GnosisSafe) and cross-chain token standards (CrossChainCanonicalAlchemicTokenV2). V3's VaultV2Factory likely deploys vaults that interact with V2's existing alAsset and transmuter ecosystem, while V2's adapters and gauges support yield generation and liquidity incentives across both versions.

## Contract Surface Quality

- Indexed contracts: 1035; live-surface contracts included: 249 (241 live, 8 unknown).
- Excluded by liveness: 637 inactive, 149 singleton, 0 uninitialized.
- Deployment units: 22/97 live.
- Detected codebases: aave-v2, compound-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 28/368.

## Audit Coverage Summary

- Verified implementations audited: 14/87 (16.1%)
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 98
- Raw deployments: 249
- Audits discovered: 6
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $337,309,038.16
- Latest audit: 2026-04 (fresh)
- Staleness: 4 fresh, 1 aging, 0 stale, 1 unknown
- Tier 1 coverage: 4.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 13.8% | 2026-03 |
| Spearbit | Tier 1 | 4 | 4.6% | 2025-05 |
| yAudit | Tier 2 | 3 | 3.4% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WstETHEthereumStrategy | core_logic | ethereum | n/a | [`0xde44c2...e80681`](./contracts/ethereum-1/0xde44c213f0730e9f38401daf8edf31129de80681/) | ✅ Audited |
| WstethStrategy | core_logic | optimism | n/a | 2 deployments: ethereum `0x7da70f...353189`; optimism [`0x4bd4fa...0288b4`](./contracts/optimism-10/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ✅ Audited |
| AlchemistAllocator | operational_periphery | optimism | n/a | 6 deployments: ethereum `0x23a3c2...450e7e`; ethereum `0x693b75...f5b281`; optimism [`0x12114e...8e0be0`](./contracts/optimism-10/0x12114eb8e17800b3b2e777339b9e0c32638e0be0/); optimism `0x143c21...906865`; arbitrum [`0x12114e...8e0be0`](./contracts/arbitrum-42161/0x12114eb8e17800b3b2e777339b9e0c32638e0be0/); arbitrum `0x143c21...906865` | ✅ Audited |
| AlchemistCurator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7d61e3...9302a4`](./contracts/ethereum-1/0x7d61e3cde8b58c4be192a7a35e9d626c419302a4/); optimism `0xc8a2bd...aef20d`; arbitrum `0xc8a2bd...aef20d` | ✅ Audited |
| AlchemistRouter | adapter | optimism | n/a | 6 deployments: ethereum `0x6733aa...6b00fd`; ethereum `0xdb8528...d086ab`; optimism [`0x3c0546...2d8bbd`](./contracts/optimism-10/0x3c0546587d27354635a4972390a7b96f962d8bbd/); optimism `0xc774f3...be3e5a`; arbitrum [`0x3c0546...2d8bbd`](./contracts/arbitrum-42161/0x3c0546587d27354635a4972390a7b96f962d8bbd/); arbitrum `0xc774f3...be3e5a` | ✅ Audited |
| AlchemistStrategyClassifier | core_logic | optimism | n/a | 3 deployments: ethereum `0xdb7d25...7253cc`; optimism [`0x3c28ba...ce3a70`](./contracts/optimism-10/0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70/); arbitrum [`0x3c28ba...ce3a70`](./contracts/arbitrum-42161/0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70/) | ✅ Audited |
| AlchemistTokenVault | core_logic | optimism | n/a | 6 deployments: ethereum `0x5b1c71...0425ba`; ethereum `0x5fe396...93f9c1`; optimism [`0x0a2dc3...ecd857`](./contracts/optimism-10/0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857/); optimism `0x347371...d83d50`; arbitrum [`0x0a2dc3...ecd857`](./contracts/arbitrum-42161/0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857/); arbitrum `0x347371...d83d50` | ✅ Audited |
| AlchemistV3 | unknown | ethereum | unit-18344 (2 proxies) | 2 deployments: ethereum [`0xeb8311...587e3e`](./contracts/ethereum-1/0xeb83112d925268bede86654c13d423a987587e3e/); ethereum `0xfa995b...bee26b` | ✅ Audited |
| AlchemistV3 | unknown | optimism | n/a | 6 deployments: ethereum `0x763f5d...423059`; ethereum `0xf700c7...f4ad33`; optimism [`0x073598...20bd3c`](./contracts/optimism-10/0x073598132f37756a7e665fb52f1757463120bd3c/); optimism `0xeb380d...64bf7a`; arbitrum [`0x073598...20bd3c`](./contracts/arbitrum-42161/0x073598132f37756a7e665fb52f1757463120bd3c/); arbitrum `0xeb380d...64bf7a` | ✅ Audited |
| AlchemistV3 | unknown | optimism | unit-18357 (2 proxies) | 2 deployments: optimism [`0x930750...ffc1de`](./contracts/optimism-10/0x930750a3510e703535e943e826aba3c364ffc1de/); optimism `0xded3a0...d28114` | ✅ Audited |
| AlchemistV3Position | unknown | ethereum | n/a | 6 deployments: ethereum [`0x15da4c...8a263d`](./contracts/ethereum-1/0x15da4c7db6404b92894d5214fac92057fb8a263d/); ethereum `0x872a03...719beb`; optimism `0x763f5d...423059`; optimism `0xf700c7...f4ad33`; arbitrum `0x763f5d...423059`; arbitrum `0xf700c7...f4ad33` | ✅ Audited |
| AlchemistV3PositionRenderer | unknown | ethereum | n/a | 6 deployments: ethereum [`0x541fb2...c73463`](./contracts/ethereum-1/0x541fb28d158aa33e6db93cd1f713567407c73463/); ethereum `0x5fb5a4...30f5ff`; optimism `0xeb8311...587e3e`; optimism `0xfa995b...bee26b`; arbitrum `0xeb8311...587e3e`; arbitrum `0xfa995b...bee26b` | ✅ Audited |
| Transmuter | unknown | ethereum | n/a | 6 deployments: ethereum [`0x073598...20bd3c`](./contracts/ethereum-1/0x073598132f37756a7e665fb52f1757463120bd3c/); ethereum `0x2584e8...410cb9`; optimism `0x2584e8...410cb9`; optimism `0x693b75...f5b281`; arbitrum `0x2584e8...410cb9`; arbitrum `0x693b75...f5b281` | ✅ Audited |
| Whitelist | unknown | arbitrum | n/a | 10 deployments: optimism `0x36033e...47fca5`; optimism `0x56574e...87e06f`; optimism `0x89926e...2c0edb`; optimism `0xf911d8...005918`; optimism `0xfa6a5d...119e45`; arbitrum [`0x2e76a6...aa668b`](./contracts/arbitrum-42161/0x2e76a67ee5f134c939c4380c9e2b6bbf93aa668b/); arbitrum `0x5e06d7...351b80`; arbitrum `0x85e851...27ec85`; arbitrum `0x8ab017...344fbb`; arbitrum `0xd691f5...197f99` | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FRAXStablecoin | token | ethereum | n/a | [`0x853d95...75b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | optimism | unit-18352 (2 proxies) | 2 deployments: optimism [`0x3e29d3...7c5f04`](./contracts/optimism-10/0x3e29d3a9316dab217754d13b28646b76607c5f04/); optimism `0xcb8fa9...a3326a` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | unit-18290 (20 proxies) | 20 deployments: ethereum [`0x0538c8...9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0x252c80...aadff2`; ethereum `0x2b6c40...a3e324`; ethereum `0x35b225...7d516e`; ethereum `0x6f8d5f...53488c`; ethereum `0x8209f3...d5b402`; ethereum `0x83a99d...a0fecf`; ethereum `0x83c608...2d4495`; ethereum `0x8bcdd6...98db25`; ethereum `0x9b91ab...795663`; ethereum `0xa5bc6e...ac52ad`; ethereum `0xa8b607...a80452`; ethereum `0xabff8f...859ef0`; ethereum `0xb4edce...fd5f7d`; ethereum `0xba680a...f26e47`; ethereum `0xc14900...157ba5`; ethereum `0xe4fe64...805d93`; ethereum `0xebcf77...d75f49`; ethereum `0xef4f46...b475c1`; ethereum `0xff43c3...42c257` | ⚠️ Unaudited |
| Pool | core_logic | optimism | n/a | 9 deployments: optimism [`0x124d69...91164e`](./contracts/optimism-10/0x124d69daeda338b1b31ffc8e429e39c9a991164e/); optimism `0x1ad06c...cbeaf0`; optimism `0x4d7959...21bb88`; optimism `0x60be3f...1170aa`; optimism `0x67c253...417ac3`; optimism `0xa10557...d6280a`; optimism `0xa5edb0...58a4f8`; optimism `0xaf03f5...6b0a29`; optimism `0xfa0947...658d76` | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| VWBTC | token | ethereum | n/a | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| WstETHL2Strategy | core_logic | optimism | n/a | [`0xd77e2b...6572f8`](./contracts/optimism-10/0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8/) | ⚠️ Unaudited |
| StaticATokenV3 | token | arbitrum | n/a | 5 deployments: optimism `0x2680b5...76dd3b`; optimism `0x337b4b...049810`; optimism `0x4186eb...373cc4`; optimism `0x43a502...53abc6`; arbitrum [`0x248a43...4100f5`](./contracts/arbitrum-42161/0x248a431116c6f6fcd5fe1097d16d0597e24100f5/) | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-18380 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlchemistV2 | unknown | ethereum | unit-18292 (2 proxies) | 2 deployments: ethereum [`0x062bf7...b13b5c`](./contracts/ethereum-1/0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c/); ethereum `0x5c6374...dd94dd` | ⚠️ Unaudited |
| AlchemistV2 | unknown | optimism | unit-18349 (2 proxies) | 2 deployments: optimism [`0x10294d...1484af`](./contracts/optimism-10/0x10294d57a419c8eb78c648372c5baa27fd1484af/); optimism `0xe04bb5...69d5b4` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | [`0xb3058d...8e9ff5`](./contracts/arbitrum-42161/0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5/) | ⚠️ Unaudited |
| AlchemixHarvester | operational_periphery | arbitrum | n/a | [`0x9b2ef5...00ab11`](./contracts/arbitrum-42161/0x9b2ef5617430b13741bc95157a3fa3387a00ab11/) | ⚠️ Unaudited |
| ArbitrumRewardCollector | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x34e390...ebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/); arbitrum `0xa05bea...86e6cf` | ⚠️ Unaudited |
| ATokenGateway | token | arbitrum | n/a | 3 deployments: arbitrum [`0x0bafd3...c66c03`](./contracts/arbitrum-42161/0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03/); arbitrum `0x3e1ccc...daf304`; arbitrum `0xa8a74f...d85a80` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/); optimism `0xda1000...000da1` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | optimism | unit-18351 | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x8aacc9...f35d87`; ethereum `0x968234...dd5d23`; ethereum `0xa8ccbf...7cc9b3`; ethereum `0xdfdc17...8ae220`; arbitrum [`0x4bd4fa...0288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/); arbitrum `0x5aa8e0...d60de2`; arbitrum `0xaeea02...3393d4` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-18330 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-18383 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| frxETHMinter | unknown | ethereum | n/a | [`0xbafa44...9c1138`](./contracts/ethereum-1/0xbafa44efe7901e04e39dad13167d089c559c1138/) | ⚠️ Unaudited |
| Gauge | operational_periphery | optimism | n/a | 8 deployments: optimism [`0x13baec...fe1615`](./contracts/optimism-10/0x13baec9c12544066a7918efc3d8b626dbbfe1615/); optimism `0x610123...eab52f`; optimism `0xa68808...437a02`; optimism `0xa8e075...e3817c`; optimism `0xb715d2...82791e`; optimism `0xc16adb...0eee3c`; optimism `0xe8b219...cb8890`; optimism `0xfc0b9a...15e6c5` | ⚠️ Unaudited |
| Gauge | operational_periphery | arbitrum | unit-18372 (3 proxies) | 3 deployments: arbitrum [`0x43fbf3...e33cd7`](./contracts/arbitrum-42161/0x43fbf34df6da5fc66e15e023d3b690fd0de33cd7/); arbitrum `0x72b659...5d4b10`; arbitrum `0xc3f26d...005cdb` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | unit-18358 | [`0xb29617...4284f9`](./contracts/optimism-10/0xb29617209961db995dd30a4ab94ba0034a4284f9/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-18379 | [`0x7e1087...9ca043`](./contracts/arbitrum-42161/0x7e108711771dfdb10743f016d46d75a9379ca043/) | ⚠️ Unaudited |
| HarvestResolver | operational_periphery | arbitrum | n/a | [`0xf91597...1d7a6b`](./contracts/arbitrum-42161/0xf91597f5b107eb4e2662739499e5937b291d7a6b/) | ⚠️ Unaudited |
| JonesUSDCAdapter | adapter | arbitrum | n/a | [`0xd2385b...9f314b`](./contracts/arbitrum-42161/0xd2385ba9656b58e8a2928d5eb4de2da3649f314b/) | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | optimism | unit-18356 | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | n/a | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | ⚠️ Unaudited |
| MigrationTool | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x6e94c5...41bffb`](./contracts/arbitrum-42161/0x6e94c527e6a1def124ebf5be38c8c876a541bffb/); arbitrum `0x81b1d4...1705e8`; arbitrum `0xb6d30d...76910a`; arbitrum `0xececc1...f146a9` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| PoolAccountant | operational_periphery | ethereum | unit-18295 (21 proxies) | 21 deployments: ethereum [`0x13c88a...91b1fd`](./contracts/ethereum-1/0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd/); ethereum `0x2337c5...c442c0`; ethereum `0x4d25e0...2c5a24`; ethereum `0x4e713d...c80fe9`; ethereum `0x6f466f...aea70f`; ethereum `0x745c10...5bd70d`; ethereum `0x75619e...c0a737`; ethereum `0x7c6226...0e639e`; ethereum `0x7f896d...f2be93`; ethereum `0x85b694...ec6167`; ethereum `0x88df6a...d113dd`; ethereum `0x8b41b4...aecda1`; ethereum `0x92d102...f179ef`; ethereum `0x963a95...1f7074`; ethereum `0xa17f64...a6088c`; ethereum `0xa34dc8...825e72`; ethereum `0xa9af8f...eee400`; ethereum `0xa9e886...e33240`; ethereum `0xc0a7eb...30b212`; ethereum `0xe25d8f...fd844f`; ethereum `0xfb7fa7...24eb44` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolRewards | core_logic | ethereum | n/a | [`0x479a86...295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x80c715...e0ff86`](./contracts/arbitrum-42161/0x80c715df236aa4fe89938b8976d1d45453e0ff86/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| sfrxETH | unknown | ethereum | n/a | [`0xac3e01...bbe38f`](./contracts/ethereum-1/0xac3e018457b222d93114458476f3e3416abbe38f/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokeAutoStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x461081...83c188`](./contracts/ethereum-1/0x4610815e65901e66237ef07493a06cbac783c188/); ethereum `0x467ec8...4908a5` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | unit-18289 (4 proxies) | 4 deployments: ethereum [`0x033231...d64811`](./contracts/ethereum-1/0x03323143a5f0d0679026c2a9fb6b0391e4d64811/); ethereum `0x49930a...24df55`; ethereum `0xa840c7...a5197f`; ethereum `0xfc3082...bdf5b9` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | unit-18342 | [`0xe107fa...4262b2`](./contracts/ethereum-1/0xe107fa35d775c77924926c0292a9ec1fc14262b2/) | ⚠️ Unaudited |
| TransmuterV2 | unknown | optimism | unit-18353 (4 proxies) | 4 deployments: optimism [`0x4e7d21...4415fa`](./contracts/optimism-10/0x4e7d2115e4feecd802c96e77b8e03d98104415fa/); optimism `0xa7ea9e...aab723`; optimism `0xb7c425...19491a`; optimism `0xfcd619...91bbb4` | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | [`0x21cfa8...78ddff`](./contracts/arbitrum-42161/0x21cfa80d878104890b327038c44d8dfab278ddff/) | ⚠️ Unaudited |
| USDT | token | optimism | n/a | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| VaultV2Factory | registry | optimism | n/a | 3 deployments: ethereum `0xdd56b0...c58984`; optimism [`0x8c7c0c...c11ca2`](./contracts/optimism-10/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/); arbitrum [`0x8c7c0c...c11ca2`](./contracts/arbitrum-42161/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/) | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | n/a | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VLINK | unknown | ethereum | n/a | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ⚠️ Unaudited |
| VSP | unknown | ethereum | n/a | [`0x1b4018...998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | n/a | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |
| VUSDC | unknown | ethereum | n/a | [`0x0c4906...bf113d`](./contracts/ethereum-1/0x0c49066c0808ee8c673553b7cbd99bcc9abf113d/) | ⚠️ Unaudited |
| VVSP | unknown | ethereum | n/a | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3669c4...fce737`](./contracts/ethereum-1/0x3669c421b77340b2979d1a00a792cc2ee0fce737/); ethereum `0x707f91...963fc8`; ethereum `0x7da96a...8d87a7`; ethereum `0xa258c4...4d168c`; ethereum `0xa354f3...3dc4de`; ethereum `0xc8418a...adc5b0`; ethereum `0xda8164...970c95` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | unit-18331 | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | arbitrum | n/a | 3 deployments: optimism `0xdb3fe4...af3933`; arbitrum [`0x39299e...4e5453`](./contracts/arbitrum-42161/0x39299e7153c28faf4420ca4126f0d834874e5453/); arbitrum `0x7c679d...e98d8c` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | unit-18337 | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WstETHAdapterArbitrum | adapter | arbitrum | n/a | 5 deployments: arbitrum [`0x10124e...cd00d6`](./contracts/arbitrum-42161/0x10124e56948759a4b571ad08d25f01e4b5cd00d6/); arbitrum `0x41bf48...d6a7ab`; arbitrum `0xa03162...e19c4a`; arbitrum `0xa68fa3...01c4f7`; arbitrum `0xa8c4da...a51698` | ⚠️ Unaudited |
| YearnStakingToken | token | optimism | n/a | [`0xe62dda...c59ce3`](./contracts/optimism-10/0xe62dda84e579e6a37296bcfc74c97349d2c59ce3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x8b57bc...5dd0e8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x148c05...54bc4c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5a07d3...9fe5cf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x637ec6...892439` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x76b2e3...6d3a0e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8d11ec...8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xef0210...935607` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | unit-18361 | `0x07a4d7...bd44df` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | unit-18366 | `0x19bede...836c85` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [- [View Report]()](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | contract_name | 16 | low |
| [- [View Report]()](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 9 | high |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 8 | high |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 58 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $13,013,313.11 | Verified native implementation with $13,013,313.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | token | $12,245,295.96 | Verified native implementation with $12,245,295.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x124d69...91164e`](./contracts/optimism-10/0x124d69daeda338b1b31ffc8e429e39c9a991164e/) | Pool | core_logic | $2,716,934.66 | Verified native implementation with $2,716,934.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | $380,017.26 | Verified native implementation with $380,017.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | $348,246.30 | Verified native implementation with $348,246.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | Stake_FXS_WETH | token | $136,737.53 | Verified native implementation with $136,737.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd77e2b...6572f8`](./contracts/optimism-10/0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8/) | WstETHL2Strategy | core_logic | $57.60 | Verified native implementation with $57.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | FPIControllerPool | core_logic | $0.20 | Verified native implementation with $0.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3058d...8e9ff5`](./contracts/arbitrum-42161/0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5/) | AlchemistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34e390...ebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/) | ArbitrumRewardCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bafd3...c66c03`](./contracts/arbitrum-42161/0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03/) | ATokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | CommunalFarm_SaddleD4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ERC20BridgedPermit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4bd4fa...0288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x13baec...fe1615`](./contracts/optimism-10/0x13baec9c12544066a7918efc3d8b626dbbfe1615/) | Gauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | L2ERC20ExtendedTokensBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e94c5...41bffb`](./contracts/arbitrum-42161/0x6e94c527e6a1def124ebf5be38c8c876a541bffb/) | MigrationTool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x479a86...295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | PoolRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x461081...83c188`](./contracts/ethereum-1/0x4610815e65901e66237ef07493a06cbac783c188/) | TokeAutoStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21cfa8...78ddff`](./contracts/arbitrum-42161/0x21cfa80d878104890b327038c44d8dfab278ddff/) | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | veFPISYieldDistributorV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | veFXSYieldDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | veFXSYieldDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | veFXSYieldDistributorV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | VVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39299e...4e5453`](./contracts/arbitrum-42161/0x39299e7153c28faf4420ca4126f0d834874e5453/) | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 14 |
| standard_library | 14 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, low=1
- Match method counts: extraction_exact=111

Zero-match audit list:

- [4307] - [View Report]()

Fork inheritance lineage and inherited audits are included when available.
