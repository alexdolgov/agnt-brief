# Agentic Audit Brief: Alchemix

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:59.746Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, ethereum, fantom, optimism
- Contract surface: 483 unique implementations (697 raw deployments)
- DeFi Llama TVL: $30,488,433.00
- On-chain TVL (included contracts): $294,431,043.44
- TVL by chain: Ethereum $261,573,121.74 | Optimism $31,653,197.24 | Arbitrum $1,204,724.45

## Project Description

Synthetics. Structurally: 204 project-authored contract(s) across 3 chain(s); 26 ERC20 tokens, 8 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 23 common project-authored base contract(s) (proxy, multicall, mutexlock). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 830; live-surface contracts included: 680 (305 live, 375 unknown).
- Excluded by liveness: 150 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/88 (13.6%)
- Deployed-live implementations: 123 of 483 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/126
- Verified + Unaudited implementations: 112
- Verified by bytecode match: 0
- Unverified implementations: 357
- Unique implementations: 483
- Raw deployments: 697
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $290,562,444.75
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: 2.3% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of $290,562,444.75 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 9.5% | 2026-03 |
| Spearbit | Tier 1 | 4 | 3.2% | 2025-05 |
| yAudit | Tier 2 | 3 | 2.4% | 2026-04 |

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
| AlchemistV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xeb8311...587e3e`](./contracts/ethereum-1/0xeb83112d925268bede86654c13d423a987587e3e/); ethereum `0xfa995b...bee26b` | ✅ Audited |
| AlchemistV3 | unknown | optimism | n/a | 6 deployments: ethereum `0x763f5d...423059`; ethereum `0xf700c7...f4ad33`; optimism [`0x073598...20bd3c`](./contracts/optimism-10/0x073598132f37756a7e665fb52f1757463120bd3c/); optimism `0xeb380d...64bf7a`; arbitrum [`0x073598...20bd3c`](./contracts/arbitrum-42161/0x073598132f37756a7e665fb52f1757463120bd3c/); arbitrum `0xeb380d...64bf7a` | ✅ Audited |
| AlchemistV3 | unknown | optimism | n/a | 2 deployments: optimism [`0x930750...ffc1de`](./contracts/optimism-10/0x930750a3510e703535e943e826aba3c364ffc1de/); optimism `0xded3a0...d28114` | ✅ Audited |
| AlchemistV3Position | unknown | ethereum | n/a | 6 deployments: ethereum [`0x15da4c...8a263d`](./contracts/ethereum-1/0x15da4c7db6404b92894d5214fac92057fb8a263d/); ethereum `0x872a03...719beb`; optimism `0x763f5d...423059`; optimism `0xf700c7...f4ad33`; arbitrum `0x763f5d...423059`; arbitrum `0xf700c7...f4ad33` | ✅ Audited |
| AlchemistV3PositionRenderer | unknown | ethereum | n/a | 6 deployments: ethereum [`0x541fb2...c73463`](./contracts/ethereum-1/0x541fb28d158aa33e6db93cd1f713567407c73463/); ethereum `0x5fb5a4...30f5ff`; optimism `0xeb8311...587e3e`; optimism `0xfa995b...bee26b`; arbitrum `0xeb8311...587e3e`; arbitrum `0xfa995b...bee26b` | ✅ Audited |
| Transmuter | unknown | ethereum | n/a | 6 deployments: ethereum [`0x073598...20bd3c`](./contracts/ethereum-1/0x073598132f37756a7e665fb52f1757463120bd3c/); ethereum `0x2584e8...410cb9`; optimism `0x2584e8...410cb9`; optimism `0x693b75...f5b281`; arbitrum `0x2584e8...410cb9`; arbitrum `0x693b75...f5b281` | ✅ Audited |
| Whitelist | unknown | arbitrum | n/a | 10 deployments: optimism `0x36033e...47fca5`; optimism `0x56574e...87e06f`; optimism `0x89926e...2c0edb`; optimism `0xf911d8...005918`; optimism `0xfa6a5d...119e45`; arbitrum [`0x2e76a6...aa668b`](./contracts/arbitrum-42161/0x2e76a67ee5f134c939c4380c9e2b6bbf93aa668b/); arbitrum `0x5e06d7...351b80`; arbitrum `0x85e851...27ec85`; arbitrum `0x8ab017...344fbb`; arbitrum `0xd691f5...197f99` | ✅ Audited |

### ⚠️ Verified + Unaudited (112)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FRAXStablecoin | token | ethereum | n/a | [`0x853d95...75b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | optimism | n/a | 2 deployments: optimism [`0x3e29d3...7c5f04`](./contracts/optimism-10/0x3e29d3a9316dab217754d13b28646b76607c5f04/); optimism `0xcb8fa9...a3326a` | ⚠️ Unaudited |
| Pool | core_logic | optimism | n/a | 9 deployments: optimism [`0x124d69...91164e`](./contracts/optimism-10/0x124d69daeda338b1b31ffc8e429e39c9a991164e/); optimism `0x1ad06c...cbeaf0`; optimism `0x4d7959...21bb88`; optimism `0x60be3f...1170aa`; optimism `0x67c253...417ac3`; optimism `0xa10557...d6280a`; optimism `0xa5edb0...58a4f8`; optimism `0xaf03f5...6b0a29`; optimism `0xfa0947...658d76` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | n/a | 20 deployments: ethereum [`0x0538c8...9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0x252c80...aadff2`; ethereum `0x2b6c40...a3e324`; ethereum `0x35b225...7d516e`; ethereum `0x6f8d5f...53488c`; ethereum `0x8209f3...d5b402`; ethereum `0x83a99d...a0fecf`; ethereum `0x83c608...2d4495`; ethereum `0x8bcdd6...98db25`; ethereum `0x9b91ab...795663`; ethereum `0xa5bc6e...ac52ad`; ethereum `0xa8b607...a80452`; ethereum `0xabff8f...859ef0`; ethereum `0xb4edce...fd5f7d`; ethereum `0xba680a...f26e47`; ethereum `0xc14900...157ba5`; ethereum `0xe4fe64...805d93`; ethereum `0xebcf77...d75f49`; ethereum `0xef4f46...b475c1`; ethereum `0xff43c3...42c257` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | arbitrum | n/a | 3 deployments: arbitrum [`0x175731...868b03`](./contracts/arbitrum-42161/0x17573150d67d820542efb24210371545a4868b03/); arbitrum `0x37704b...4a1f16`; arbitrum `0xcb8fa9...a3326a` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| VWBTC | token | ethereum | n/a | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x02e215...41d5b3`](./contracts/ethereum-1/0x02e2151d4f351881017abdf2dd2b51150841d5b3/); ethereum `0x26598e...741104`; ethereum `0x48bc30...fee410` | ⚠️ Unaudited |
| WstETHL2Strategy | core_logic | optimism | n/a | [`0xd77e2b...6572f8`](./contracts/optimism-10/0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8/) | ⚠️ Unaudited |
| StaticATokenV3 | token | arbitrum | n/a | 5 deployments: optimism `0x2680b5...76dd3b`; optimism `0x337b4b...049810`; optimism `0x4186eb...373cc4`; optimism `0x43a502...53abc6`; arbitrum [`0x248a43...4100f5`](./contracts/arbitrum-42161/0x248a431116c6f6fcd5fe1097d16d0597e24100f5/) | ⚠️ Unaudited |
| ThreePoolAssetManager | core_logic | ethereum | n/a | [`0x9735f7...fad31b`](./contracts/ethereum-1/0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlchemistEth | unknown | ethereum | n/a | [`0xf8317b...40b73b`](./contracts/ethereum-1/0xf8317bd5f48b6fe608a52b48c856d3367540b73b/) | ⚠️ Unaudited |
| AlchemistV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x062bf7...b13b5c`](./contracts/ethereum-1/0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c/); ethereum `0x5c6374...dd94dd` | ⚠️ Unaudited |
| AlchemistV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x10294d...1484af`](./contracts/optimism-10/0x10294d57a419c8eb78c648372c5baa27fd1484af/); optimism `0xe04bb5...69d5b4` | ⚠️ Unaudited |
| AlchemistV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x1bce0a...00a2f0`](./contracts/optimism-10/0x1bce0aca8b0e4139e4390cf1a7a6eb644000a2f0/); optimism `0x673054...d75483` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0dadc9...4e01d5`](./contracts/arbitrum-42161/0x0dadc9e7b14d329d879cd4980e3db3a9224e01d5/); arbitrum `0x84672c...b36d1e` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x654e16...60703a`](./contracts/arbitrum-42161/0x654e16a0b161b150f5d1c8a5ba6e7a7b7760703a/); arbitrum `0x755461...7d095c`; arbitrum `0xb46ee2...1ac66f` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | [`0xb3058d...8e9ff5`](./contracts/arbitrum-42161/0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5/) | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x83adea...2a84a9`](./contracts/arbitrum-42161/0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9/); arbitrum `0xd031bd...4ee55d` | ⚠️ Unaudited |
| AlchemixHarvester | operational_periphery | arbitrum | n/a | [`0x9b2ef5...00ab11`](./contracts/arbitrum-42161/0x9b2ef5617430b13741bc95157a3fa3387a00ab11/) | ⚠️ Unaudited |
| ArbitrumRewardCollector | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x34e390...ebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/); arbitrum `0xa05bea...86e6cf` | ⚠️ Unaudited |
| ATokenGateway | token | arbitrum | n/a | 3 deployments: arbitrum [`0x0bafd3...c66c03`](./contracts/arbitrum-42161/0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03/); arbitrum `0x3e1ccc...daf304`; arbitrum `0xa8a74f...d85a80` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x843b66...7fad92`](./contracts/arbitrum-42161/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/); arbitrum `0x870d36...adee4f` | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/); optimism `0xda1000...000da1` | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0fbcba...8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/); arbitrum `0x5979d7...800529` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | optimism | n/a | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x8aacc9...f35d87`; ethereum `0x968234...dd5d23`; ethereum `0xa8ccbf...7cc9b3`; ethereum `0xdfdc17...8ae220`; arbitrum [`0x4bd4fa...0288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/); arbitrum `0x5aa8e0...d60de2`; arbitrum `0xaeea02...3393d4` | ⚠️ Unaudited |
| EthAssetManager | governance | ethereum | n/a | [`0xe761bf...933110`](./contracts/ethereum-1/0xe761bf731a06fe8259fee05897b2687d56933110/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| frxETHMinter | unknown | ethereum | n/a | [`0xbafa44...9c1138`](./contracts/ethereum-1/0xbafa44efe7901e04e39dad13167d089c559c1138/) | ⚠️ Unaudited |
| Gauge | operational_periphery | optimism | n/a | 8 deployments: optimism [`0x13baec...fe1615`](./contracts/optimism-10/0x13baec9c12544066a7918efc3d8b626dbbfe1615/); optimism `0x610123...eab52f`; optimism `0xa68808...437a02`; optimism `0xa8e075...e3817c`; optimism `0xb715d2...82791e`; optimism `0xc16adb...0eee3c`; optimism `0xe8b219...cb8890`; optimism `0xfc0b9a...15e6c5` | ⚠️ Unaudited |
| Gauge | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x43fbf3...e33cd7`](./contracts/arbitrum-42161/0x43fbf34df6da5fc66e15e023d3b690fd0de33cd7/); arbitrum `0x72b659...5d4b10`; arbitrum `0xc3f26d...005cdb` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x653e76...add273`](./contracts/arbitrum-42161/0x653e76977c275df945a5c7417297d50ebcadd273/); arbitrum `0xc129bd...5dacb0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | n/a | [`0xb29617...4284f9`](./contracts/optimism-10/0xb29617209961db995dd30a4ab94ba0034a4284f9/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0x7e1087...9ca043`](./contracts/arbitrum-42161/0x7e108711771dfdb10743f016d46d75a9379ca043/) | ⚠️ Unaudited |
| HarvestResolver | operational_periphery | arbitrum | n/a | [`0xf91597...1d7a6b`](./contracts/arbitrum-42161/0xf91597f5b107eb4e2662739499e5937b291d7a6b/) | ⚠️ Unaudited |
| JonesUSDCAdapter | adapter | arbitrum | n/a | [`0xd2385b...9f314b`](./contracts/arbitrum-42161/0xd2385ba9656b58e8a2928d5eb4de2da3649f314b/) | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | optimism | n/a | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | n/a | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | ⚠️ Unaudited |
| MigrationTool | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x6e94c5...41bffb`](./contracts/arbitrum-42161/0x6e94c527e6a1def124ebf5be38c8c876a541bffb/); arbitrum `0x81b1d4...1705e8`; arbitrum `0xb6d30d...76910a`; arbitrum `0xececc1...f146a9` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NextAlchemicToken | token | arbitrum | n/a | 3 deployments: arbitrum [`0x303241...d8faf3`](./contracts/arbitrum-42161/0x303241e2b3b4aed0bb0f8623e7442368fed8faf3/); arbitrum `0x380cbf...7d2302`; arbitrum `0x49000f...08e498` | ⚠️ Unaudited |
| NextAlchemicTokenV2 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x27b58d...815aa7`](./contracts/arbitrum-42161/0x27b58d226fe8f792730a795764945cf146815aa7/); arbitrum `0x649020...56007e` | ⚠️ Unaudited |
| Pair | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x510a49...4cca58`](./contracts/arbitrum-42161/0x510a496b2443ba52a3b269fee5a241a4ed4cca58/); arbitrum `0xfb4fe9...ef6886`; arbitrum `0xfd599d...213010` | ⚠️ Unaudited |
| PoolAccountant | operational_periphery | ethereum | n/a | 21 deployments: ethereum [`0x13c88a...91b1fd`](./contracts/ethereum-1/0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd/); ethereum `0x2337c5...c442c0`; ethereum `0x4d25e0...2c5a24`; ethereum `0x4e713d...c80fe9`; ethereum `0x6f466f...aea70f`; ethereum `0x745c10...5bd70d`; ethereum `0x75619e...c0a737`; ethereum `0x7c6226...0e639e`; ethereum `0x7f896d...f2be93`; ethereum `0x85b694...ec6167`; ethereum `0x88df6a...d113dd`; ethereum `0x8b41b4...aecda1`; ethereum `0x92d102...f179ef`; ethereum `0x963a95...1f7074`; ethereum `0xa17f64...a6088c`; ethereum `0xa34dc8...825e72`; ethereum `0xa9af8f...eee400`; ethereum `0xa9e886...e33240`; ethereum `0xc0a7eb...30b212`; ethereum `0xe25d8f...fd844f`; ethereum `0xfb7fa7...24eb44` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolRewards | core_logic | ethereum | n/a | [`0x479a86...295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 5 deployments: ethereum [`0x20c572...d124cf`](./contracts/ethereum-1/0x20c572cbd7c3e40b580af22582398b6580d124cf/); ethereum `0xe0fc5c...46347d`; optimism `0xd4bd68...2eae85`; arbitrum `0x80c715...e0ff86`; arbitrum `0xa44f69...8beac6` | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| SDLController | governance | ethereum | n/a | 2 deployments: ethereum [`0x6a1883...3050d1`](./contracts/ethereum-1/0x6a1883833e86a7110a59be817cae9742bc3050d1/); ethereum `0x851abe...35d028` | ⚠️ Unaudited |
| SDTController | governance | ethereum | n/a | [`0x3216d2...6e6273`](./contracts/ethereum-1/0x3216d2a52f0094aa860ca090bc5c335de36e6273/) | ⚠️ Unaudited |
| SDTController | governance | ethereum | n/a | 2 deployments: ethereum [`0x91bf16...c1a08c`](./contracts/ethereum-1/0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c/); ethereum `0xbcd7fb...13699a` | ⚠️ Unaudited |
| sfrxETH | unknown | ethereum | n/a | [`0xac3e01...bbe38f`](./contracts/ethereum-1/0xac3e018457b222d93114458476f3e3416abbe38f/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StaticAToken | token | ethereum | n/a | 5 deployments: ethereum [`0x318334...fb416e`](./contracts/ethereum-1/0x318334a6dd21d16a8442ab0b7204e81aa3fb416e/); ethereum `0x611345...563967`; ethereum `0xbc11de...94e315`; ethereum `0xce4a49...1688d8`; ethereum `0xf591d8...bae37a` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokeAutoStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x461081...83c188`](./contracts/ethereum-1/0x4610815e65901e66237ef07493a06cbac783c188/); ethereum `0x467ec8...4908a5` | ⚠️ Unaudited |
| TransmuterB | unknown | ethereum | n/a | [`0xee69bd...b796e7`](./contracts/ethereum-1/0xee69bd81bd056339368c97c4b2837b4dc4b796e7/) | ⚠️ Unaudited |
| TransmuterBuffer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0fba36...167f42`](./contracts/ethereum-1/0x0fba3630ddf56457d3ffc2864f260fbe73167f42/); ethereum `0x1eed2d...f79bac`; ethereum `0xbc2fb2...c90b9e` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | optimism | n/a | 6 deployments: optimism [`0x143a08...b7a4e7`](./contracts/optimism-10/0x143a08f0c2c1820eff9d0e749683396c7bb7a4e7/); optimism `0x36e8d1...440be5`; optimism `0x719fe4...be5e03`; optimism `0x7f5092...a28f68`; optimism `0x971c2d...0e2d6d`; optimism `0xe99a9a...beb3b9` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x00e337...eeabcc`](./contracts/arbitrum-42161/0x00e33722ba54545667e76a18ce9d544130eeabcc/); arbitrum `0x752ca4...a22e2b`; arbitrum `0xecad08...8bb9d2` | ⚠️ Unaudited |
| TransmuterEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d513e...38f19f`](./contracts/ethereum-1/0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f/); ethereum `0x9fd994...cfd4ac` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x033231...d64811`](./contracts/ethereum-1/0x03323143a5f0d0679026c2a9fb6b0391e4d64811/); ethereum `0x49930a...24df55`; ethereum `0xa840c7...a5197f`; ethereum `0xfc3082...bdf5b9` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | n/a | [`0xe107fa...4262b2`](./contracts/ethereum-1/0xe107fa35d775c77924926c0292a9ec1fc14262b2/) | ⚠️ Unaudited |
| TransmuterV2 | unknown | optimism | n/a | 4 deployments: optimism [`0x4e7d21...4415fa`](./contracts/optimism-10/0x4e7d2115e4feecd802c96e77b8e03d98104415fa/); optimism `0xa7ea9e...aab723`; optimism `0xb7c425...19491a`; optimism `0xfcd619...91bbb4` | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1b0361...ca4d19`](./contracts/arbitrum-42161/0x1b03612cf7881b8bc16def13c94d0097adca4d19/); arbitrum `0x1eb7d7...a9c0d4`; arbitrum `0x2a8b5f...0755ed`; arbitrum `0xd6a557...b408e9`; arbitrum `0xe7ec71...940ea8` | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | [`0x21cfa8...78ddff`](./contracts/arbitrum-42161/0x21cfa80d878104890b327038c44d8dfab278ddff/) | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7037d4...3e6007`](./contracts/arbitrum-42161/0x7037d479180cb9514af4ed6f77b8390b1f3e6007/); arbitrum `0xb0a2db...8739dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d994b...9d2f37`](./contracts/ethereum-1/0x0d994b40c63e0e8ea485010aee1d472ea19d2f37/); ethereum `0x1435f2...908653` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 5 deployments: ethereum [`0x210a3a...4e1766`](./contracts/ethereum-1/0x210a3a20bfe11f4200918134aae34d753d4e1766/); ethereum `0x407bdc...ef2764`; ethereum `0x6fb0fe...d1f72c`; ethereum `0x7d0038...040834`; ethereum `0xe4503e...402333` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x25bc1f...9aa14e`](./contracts/ethereum-1/0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e/); ethereum `0x51c1a7...9e6142`; ethereum `0x77394f...c81eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb7c425...19491a`](./contracts/ethereum-1/0xb7c4250f83289ff3ea9f21f01aad0b02fb19491a/); ethereum `0xcad336...561780` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x43cd4c...9b24ba`](./contracts/arbitrum-42161/0x43cd4c711100ba68589d83d1a7d7c552cd9b24ba/); arbitrum `0xa5b00d...37f771` | ⚠️ Unaudited |
| USDT | token | optimism | n/a | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| VaultV2Factory | registry | optimism | n/a | 3 deployments: ethereum `0xdd56b0...c58984`; optimism [`0x8c7c0c...c11ca2`](./contracts/optimism-10/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/); arbitrum [`0x8c7c0c...c11ca2`](./contracts/arbitrum-42161/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | [`0xd1c117...eb05f2`](./contracts/ethereum-1/0xd1c117319b3595fbc39b471ab1fd485629eb05f2/) | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | n/a | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VLINK | unknown | ethereum | n/a | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ⚠️ Unaudited |
| VSP | unknown | ethereum | n/a | [`0x1b4018...998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | n/a | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |
| VUSDC | unknown | ethereum | n/a | [`0x0c4906...bf113d`](./contracts/ethereum-1/0x0c49066c0808ee8c673553b7cbd99bcc9abf113d/) | ⚠️ Unaudited |
| VVSP | unknown | ethereum | n/a | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3669c4...fce737`](./contracts/ethereum-1/0x3669c421b77340b2979d1a00a792cc2ee0fce737/); ethereum `0x707f91...963fc8`; ethereum `0x7da96a...8d87a7`; ethereum `0xa258c4...4d168c`; ethereum `0xa354f3...3dc4de`; ethereum `0xc8418a...adc5b0`; ethereum `0xda8164...970c95` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | arbitrum | n/a | 3 deployments: optimism `0xdb3fe4...af3933`; arbitrum [`0x39299e...4e5453`](./contracts/arbitrum-42161/0x39299e7153c28faf4420ca4126f0d834874e5453/); arbitrum `0x7c679d...e98d8c` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | n/a | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x077b17...efc826`](./contracts/arbitrum-42161/0x077b17dce83d1e7e1847b470b138336dc2efc826/); arbitrum `0x1944eb...13f262` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x0e52af...3fabd6`](./contracts/arbitrum-42161/0x0e52af83ddd0dd8014c5fa7a0f14d971663fabd6/); arbitrum `0x0e9a17...9d0d21` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x7a6c69...3ebac6`](./contracts/arbitrum-42161/0x7a6c69be3626bada6e7e64033d1d9bf2163ebac6/); arbitrum `0x9964aa...3d5e7c` | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WstETHAdapterArbitrum | adapter | arbitrum | n/a | 5 deployments: arbitrum [`0x10124e...cd00d6`](./contracts/arbitrum-42161/0x10124e56948759a4b571ad08d25f01e4b5cd00d6/); arbitrum `0x41bf48...d6a7ab`; arbitrum `0xa03162...e19c4a`; arbitrum `0xa68fa3...01c4f7`; arbitrum `0xa8c4da...a51698` | ⚠️ Unaudited |
| YearnStakingToken | token | optimism | n/a | 3 deployments: optimism [`0x059eaa...175eed`](./contracts/optimism-10/0x059eaa296b18e0d954632c8242ddb4a271175eed/); optimism `0x0a86ad...730ecd`; optimism `0xe62dda...c59ce3` | ⚠️ Unaudited |
| YearnVaultAdapter | adapter | ethereum | n/a | [`0xb039ea...68214a`](./contracts/ethereum-1/0xb039ea6153c827e59b620bdcd974f7bbfe68214a/) | ⚠️ Unaudited |
| YearnVaultAdapterEth | adapter | ethereum | n/a | [`0x546e67...85b3bc`](./contracts/ethereum-1/0x546e6711032ec744a7708d4b7b283a210a85b3bc/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | adapter | ethereum | n/a | [`0x6fe02b...17f661`](./contracts/ethereum-1/0x6fe02be0ec79dcf582cbdb936d7037d2eb17f661/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirectionEth | adapter | ethereum | n/a | [`0x6d7565...160132`](./contracts/ethereum-1/0x6d75657771256c7a8cb4d475fdf5047b70160132/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (357)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00160b...8b8478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x011881...ca7128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0304a3...f0c00e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0363a3...8b8182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x042565...760213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057a48...f981df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05b143...c8b4b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0648e5...7957cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0827f1...dad19a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x084d7a...7440ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0879f1...e89542` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x097ee0...6dafd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a46a9...9e10f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bb35d...e4a666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c712f...e29ce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7a61...6d8e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d296e...3704c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d858d...cb754f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2ba4...7faf49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2ddf...4d3db4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f4192...7d508b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10dea9...d6d3bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11e21c...cc80ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x133ecd...882d8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13aecc...2d6f1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13b844...9b26ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x140ecd...2656df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16cdfe...055659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x175a78...df18ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17845e...f2656e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17eff8...4d417b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x187c51...12c0f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a02f...2798ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a3a83...22f12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b0151...da8a09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b0b99...3882f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c282e...a3eaad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cd0f3...85cf08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e8604...a7097f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ea632...f9fbbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe9e0...0039c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x223809...13152c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x228cdf...b1b3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230f8f...0f7602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23140f...94db99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x233ada...958319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23c901...849175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x240023...c66df4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e927...7865fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27723d...a3b2d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a135a...1f8d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a1b6f...bc94f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c3619...b87abf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c37fb...2773c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cd0b4...6bb10b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ce898...fc718f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dd1b4...b3b532` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f59b0...cfeda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31b855...5e938c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d9b0...8ee863` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31fc48...0867d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323e34...ecc995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32fd3b...0c2fcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x334fa9...4cabd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x339b20...6b3b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3405e8...eea320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x354fc6...10e189` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f9e7...5efdcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37b54f...60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39450c...c4de19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a7644...d16653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b5180...dbbe6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e281c...44046f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e89f1...4b447d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f4681...58f380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400509...4f0f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40971a...78b61f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41f4e1...f73eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x421efd...cbd9de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4279cc...c01106` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43ef34...34f841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x443d61...f0f4e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x452086...3d03dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45aba6...e5e94e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45ccd3...4293d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x463c83...e6a46f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x469c9f...400d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46a279...402921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46ca85...43b6c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x479dfa...2778ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x487f4f...9e9211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a29f4...b64545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a4a54...411101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a5398...bd5486` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a7ce5...951d5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b8a42...d807fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bc1a2...370599` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bc77c...ff5ef7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d71a0...e5d674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4da20a...bbcf29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7300...38f0bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f193b...67a7a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52581e...74f4bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x525fd1...fd9e2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53d885...b80fab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56ee98...2e581b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59417c...9c097f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59543a...ad29c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59928b...99c88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a6aad...5f6314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d72a9...afca80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f5a65...c4c9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fe5de...a45489` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x603d9b...e05209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612fd3...a55fb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x614020...98fa93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61bf33...56599b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62514f...e18438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6349e8...82aa83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x636a02...f54409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64a76d...3619b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x650845...f789e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x651e09...78c87d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x656636...e1db6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67218f...5a42da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672e58...20c881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x684647...d259df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68e031...cbb4cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x693c78...2b6cfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b9eb0...65e679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c2b3d...a54300` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cb3b9...727fff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cf8b8...bcee2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d7746...e64153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70900c...982484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x715ae7...7d88c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72a7cb...a9945a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72dcf9...ff1b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7465e3...ea733b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74cc5b...88a8af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75c1e2...1ffddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x762ff5...20380d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777a78...49cf85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77898f...cb91f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7927fc...1816f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a75d9...273b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b0729...829eef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b2db7...4484ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bceae...5864d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c1482...f11397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d1e43...eee6be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e198a...5c5dd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0088...9d5c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f5092...a28f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x804cd6...7bc7ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x804f33...c82ea3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80f1c4...c0379e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x813e89...902bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x817310...7371a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82bb18...f670f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842547...06030e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x853f81...6a89d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85c786...547a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x861db1...71a0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x881259...ba0257` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a36f2...f6fbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ad5b3...a62e0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b3ac0...6604d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b3c86...8e3639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b57bc...5dd0e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b609c...14b9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c2d8b...8ec6f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c657a...c48770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d0b8e...f3e899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8eacba...89590b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92574e...fd066c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x935673...9dc738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94c7c5...334e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95c0b3...13bdff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x968d60...199e94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x980e76...c8e697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9852c6...8d86dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9abaea...5aecf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aec18...833715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b1107...f796d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b59f7...037f5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b6ca9...36eaf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9da865...d5a26b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f29f0...9eae57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa163dc...7ad9ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3b031...29c772` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4f167...bd0217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa60982...63e20e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa63f56...1a55f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa72054...a0bfaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7ea9e...aab723` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa89566...07d2b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa92951...5b2cbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa92f21...befb65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa938b8...8caff0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95ccf...55bd4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabc648...bf8c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabfe39...80a6cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad680b...f440b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad947c...4a5e68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae0c89...f57c2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaff40f...f1a736` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0582c...396d66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb075ab...893a7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0ea1d...66769d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1c0d6...3bcde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1c4e5...916462` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2205b...bfa8c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb436d8...8e0999` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb440a6...dbefff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4e7cc...761b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5e999...b218e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb76ec4...a641f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7bdd2...ab52fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7cec2...6d27bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8208c...c8906d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb92d60...e569e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc390a...68dff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd7ae7...64db39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdb0fb...5d93ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe3379...3574ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0497c...feb6b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1fe9a...d17749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3a483...9166b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc40ece...48112d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc48ea9...010174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4c81b...043018` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5bdba...8e5a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5c0d3...068c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5cdf8...c6bb54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6e550...c426d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7e98c...5fd6c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc88a0a...93c4b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a679...f03a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca0c34...014d80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca9aee...2fdec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc9be1...ac0605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd6bf2...71fd35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0ae5...e19659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd01062...b1de7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd11e67...b3be75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1738e...9c2562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3111a...2d8d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd36aa4...33f3cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5579a...e32aa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd57a13...31fc75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59996...0343b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd773ca...af168b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd81995...ee9268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd837f0...a93838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd87b3b...25b421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9a5df...cf51f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e153...3336b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda5e6d...368b2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda92f9...42cf04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc1046...5bc93c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc55f6...4d4efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd3662...1117b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0222d...4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0ac0f...b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1d66c...a16be6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2751f...acb121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe30521...a667e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3b3fe...fad906` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4e3da...f39a29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6cffe...76ff12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe82cec...2e7a9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93428...657b33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94046...1dfd1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9b31c...5d395f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea6c37...564791` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebedfd...e29b23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec5a0f...512a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec8c44...6f0505` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecc32e...d46641` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecc4be...7524df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecf139...ca0bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedac70...35adfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeed0e5...1b94ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef5d81...f7a53a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8737...a0e8c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef9a76...8ed35e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d4eb...d99941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf336f4...623b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf350c6...722236` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4431b...963e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4bb58...b53786` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf502d1...4602ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5a661...663825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6aa8d...9ccc9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8051d...bf4217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf858a3...fb40ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ea0e...3f6067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ffaa...4f70bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf95fb6...6559bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9c786...b69c08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9fbc8...cc064c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3552...a666f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb0df6...94561a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbcb0f...d6276f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd61f9...5794b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe711b...dfe007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff9799...bb0532` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x10cf9d...586a69` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1dc389...589f8d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x23b96a...08f4c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x318334...fb416e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x393dd1...a5f204` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x41125d...471602` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4183c9...f688f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x485af4...aa68bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4b4968...790d85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x65d288...7a2157` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6caeef...414018` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7f7195...aac91e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x843b66...7fad92` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x870d36...adee4f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8ba1e9...16925a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92834c...46538e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9d4c27...2715e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa44f69...8beac6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaf7ad0...c472de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb0269e...316fa8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcd87ba...1f6cb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd24c4c...06e382` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb6c56...235a51` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 8 deployments: fantom `0x04068d...5d5b75`; fantom `0x049d68...3a3c7a`; fantom `0x148c05...54bc4c`; fantom `0x5a07d3...9fe5cf`; fantom `0x637ec6...892439`; fantom `0x76b2e3...6d3a0e`; fantom `0x8d11ec...8abf3e`; fantom `0xef0210...935607` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdbdb4d...90c8df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x082b50...35dbc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e1793...b9cc06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x108464...20d840` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17995b...98d163` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d2be8...1c4962` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27423e...231ab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ff291...aa38c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x718660...3ab333` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7918da...52e43e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x853334...13bc0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x868f8e...567e20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b36dc...6d7915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x930750...ffc1de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaffd7f...b27d28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd05a08...41a2a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd65ebf...ef1bf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9168e...f4da56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc8eb1...22fa0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xded3a0...d28114` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa5cef...b86293` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0x07a4d7...bd44df` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0x19bede...836c85` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0x353068...89bd74` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0xf4a40b...2fc856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hackmd.io/@geistermeister/SkSZiU9ybe](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | contract_name | 4 | n/a |
| [cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 2 | n/a |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 1 | n/a |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 2 | n/a |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 12 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | token | $10,261,435.42 | Verified native implementation with $10,261,435.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $6,906,906.57 | Verified native implementation with $6,906,906.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | $375,569.94 | Verified native implementation with $375,569.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | $266,839.04 | Verified native implementation with $266,839.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9735f7...fad31b`](./contracts/ethereum-1/0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b/) | ThreePoolAssetManager | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8317b...40b73b`](./contracts/ethereum-1/0xf8317bd5f48b6fe608a52b48c856d3367540b73b/) | AlchemistEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3058d...8e9ff5`](./contracts/arbitrum-42161/0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5/) | AlchemistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x83adea...2a84a9`](./contracts/arbitrum-42161/0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9/) | AlchemixConnextGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9b2ef5...00ab11`](./contracts/arbitrum-42161/0x9b2ef5617430b13741bc95157a3fa3387a00ab11/) | AlchemixHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34e390...ebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/) | ArbitrumRewardCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bafd3...c66c03`](./contracts/arbitrum-42161/0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03/) | ATokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x843b66...7fad92`](./contracts/arbitrum-42161/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/) | CrossChainCanonicalGALCX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0fbcba...8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/) | ERC20Bridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4bd4fa...0288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe761bf...933110`](./contracts/ethereum-1/0xe761bf731a06fe8259fee05897b2687d56933110/) | EthAssetManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf91597...1d7a6b`](./contracts/arbitrum-42161/0xf91597f5b107eb4e2662739499e5937b291d7a6b/) | HarvestResolver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e94c5...41bffb`](./contracts/arbitrum-42161/0x6e94c527e6a1def124ebf5be38c8c876a541bffb/) | MigrationTool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x479a86...295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | PoolRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a1883...3050d1`](./contracts/ethereum-1/0x6a1883833e86a7110a59be817cae9742bc3050d1/) | SDLController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91bf16...c1a08c`](./contracts/ethereum-1/0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c/) | SDTController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | StakingRewardsMultiGauge_StakeDAO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee69bd...b796e7`](./contracts/ethereum-1/0xee69bd81bd056339368c97c4b2837b4dc4b796e7/) | TransmuterB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fba36...167f42`](./contracts/ethereum-1/0x0fba3630ddf56457d3ffc2864f260fbe73167f42/) | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d513e...38f19f`](./contracts/ethereum-1/0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f/) | TransmuterEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b0361...ca4d19`](./contracts/arbitrum-42161/0x1b03612cf7881b8bc16def13c94d0097adca4d19/) | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21cfa8...78ddff`](./contracts/arbitrum-42161/0x21cfa80d878104890b327038c44d8dfab278ddff/) | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25bc1f...9aa14e`](./contracts/ethereum-1/0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e/) | TransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8c7c0c...c11ca2`](./contracts/optimism-10/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/) | VaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | veFXSYieldDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | veFXSYieldDistributorV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/) | VETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | VLINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4906...bf113d`](./contracts/ethereum-1/0x0c49066c0808ee8c673553b7cbd99bcc9abf113d/) | VUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10124e...cd00d6`](./contracts/arbitrum-42161/0x10124e56948759a4b571ad08d25f01e4b5cd00d6/) | WstETHAdapterArbitrum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 23 |
| standard_library | 25 |
| needs_review | 353 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=21

Zero-match audit list:

- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b

Fork inheritance lineage and inherited audits are included when available.
