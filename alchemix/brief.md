# Agentic Audit Brief: Alchemix

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:58:56.668Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum, fantom, optimism
- Contract surface: 388 unique implementations (1035 raw deployments)
- DeFi Llama TVL: $37,880,562.00
- On-chain TVL (included contracts): $340,698,321.48
- TVL by chain: Ethereum $304,733,070.72 | Optimism $34,582,392.47 | Arbitrum $1,382,858.30

## Project Description

Alchemix is a DeFi protocol for self-repaying loans and vaults. Users deposit collateral such as ETH or USDC to borrow against future yield, with current product positioning emphasizing self-repaying vaults, up to 90% LTV, 0% interest, no market-liquidation risk, and fixed-rate returns. The protocol also includes the alAsset and transmuter system, where synthetic assets represent yield-backed debt that can be repaid over time as deposited collateral earns yield.

### Architecture

Alchemix V2 and V3 share the same governance infrastructure (GnosisSafe) and cross-chain token standards (CrossChainCanonicalAlchemicTokenV2). V3's VaultV2Factory likely deploys vaults that interact with V2's existing alAsset and transmuter ecosystem, while V2's adapters and gauges support yield generation and liquidity incentives across both versions.

## Audit Coverage Summary

- Verified implementations audited: 13/202 (6.4%)
- Verified + Unaudited implementations: 189
- Verified by bytecode match: 0
- Unverified implementations: 186
- Unique implementations: 388
- Raw deployments: 1035
- Audits discovered: 11
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $338,700,456.10
- Latest audit: 2026-04 (fresh)
- Staleness: 8 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 1.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 10 | 5.0% | 2026-03 |
| yAudit | Tier 2 | 3 | 1.5% | 2026-04 |
| Spearbit | Tier 1 | 2 | 1.0% | 2025-08 |
| Zellic | Tier 2 | 1 | 0.5% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WstETHEthereumStrategy | core_logic | ethereum | [`0xde44c2...e80681`](./contracts/ethereum-1/0xde44c213f0730e9f38401daf8edf31129de80681/) | ✅ Audited |
| WstethStrategy | core_logic | optimism | 2 deployments: ethereum `0x7da70f...353189`; optimism [`0x4bd4fa...0288b4`](./contracts/optimism-10/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ✅ Audited |
| AlchemistAllocator | operational_periphery | optimism | 6 deployments: ethereum `0x23a3c2...450e7e`; ethereum `0x693b75...f5b281`; optimism [`0x12114e...8e0be0`](./contracts/optimism-10/0x12114eb8e17800b3b2e777339b9e0c32638e0be0/); optimism `0x143c21...906865`; arbitrum [`0x12114e...8e0be0`](./contracts/arbitrum-42161/0x12114eb8e17800b3b2e777339b9e0c32638e0be0/); arbitrum `0x143c21...906865` | ✅ Audited |
| AlchemistCurator | unknown | ethereum | 3 deployments: ethereum [`0x7d61e3...9302a4`](./contracts/ethereum-1/0x7d61e3cde8b58c4be192a7a35e9d626c419302a4/); optimism `0xc8a2bd...aef20d`; arbitrum `0xc8a2bd...aef20d` | ✅ Audited |
| AlchemistRouter | adapter | optimism | 6 deployments: ethereum `0x6733aa...6b00fd`; ethereum `0xdb8528...d086ab`; optimism [`0x3c0546...2d8bbd`](./contracts/optimism-10/0x3c0546587d27354635a4972390a7b96f962d8bbd/); optimism `0xc774f3...be3e5a`; arbitrum [`0x3c0546...2d8bbd`](./contracts/arbitrum-42161/0x3c0546587d27354635a4972390a7b96f962d8bbd/); arbitrum `0xc774f3...be3e5a` | ✅ Audited |
| AlchemistStrategyClassifier | core_logic | optimism | 3 deployments: ethereum `0xdb7d25...7253cc`; optimism [`0x3c28ba...ce3a70`](./contracts/optimism-10/0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70/); arbitrum [`0x3c28ba...ce3a70`](./contracts/arbitrum-42161/0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70/) | ✅ Audited |
| AlchemistTokenVault | core_logic | optimism | 6 deployments: ethereum `0x5b1c71...0425ba`; ethereum `0x5fe396...93f9c1`; optimism [`0x0a2dc3...ecd857`](./contracts/optimism-10/0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857/); optimism `0x347371...d83d50`; arbitrum [`0x0a2dc3...ecd857`](./contracts/arbitrum-42161/0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857/); arbitrum `0x347371...d83d50` | ✅ Audited |
| AlchemistV3 | unknown | optimism | 13 deployments: ethereum `0x763f5d...423059`; ethereum `0xeb8311...587e3e`; ethereum `0xf700c7...f4ad33`; ethereum `0xfa995b...bee26b`; optimism [`0x073598...20bd3c`](./contracts/optimism-10/0x073598132f37756a7e665fb52f1757463120bd3c/); optimism `0x930750...ffc1de`; optimism `0xded3a0...d28114`; optimism `0xeb380d...64bf7a`; arbitrum [`0x073598...20bd3c`](./contracts/arbitrum-42161/0x073598132f37756a7e665fb52f1757463120bd3c/); arbitrum `0x3ddf4a...70f6f7`; arbitrum `0x930750...ffc1de`; arbitrum `0xded3a0...d28114`; arbitrum `0xeb380d...64bf7a` | ✅ Audited |
| AlchemistV3Position | unknown | ethereum | 6 deployments: ethereum [`0x15da4c...8a263d`](./contracts/ethereum-1/0x15da4c7db6404b92894d5214fac92057fb8a263d/); ethereum `0x872a03...719beb`; optimism `0x763f5d...423059`; optimism `0xf700c7...f4ad33`; arbitrum `0x763f5d...423059`; arbitrum `0xf700c7...f4ad33` | ✅ Audited |
| AlchemistV3PositionRenderer | unknown | ethereum | 6 deployments: ethereum [`0x541fb2...c73463`](./contracts/ethereum-1/0x541fb28d158aa33e6db93cd1f713567407c73463/); ethereum `0x5fb5a4...30f5ff`; optimism `0xeb8311...587e3e`; optimism `0xfa995b...bee26b`; arbitrum `0xeb8311...587e3e`; arbitrum `0xfa995b...bee26b` | ✅ Audited |
| Transmuter | unknown | ethereum | 7 deployments: ethereum [`0x073598...20bd3c`](./contracts/ethereum-1/0x073598132f37756a7e665fb52f1757463120bd3c/); ethereum `0x2584e8...410cb9`; ethereum `0xab7a49...122086`; optimism `0x2584e8...410cb9`; optimism `0x693b75...f5b281`; arbitrum `0x2584e8...410cb9`; arbitrum `0x693b75...f5b281` | ✅ Audited |
| VaultV2Factory | registry | optimism | 3 deployments: ethereum `0xdd56b0...c58984`; optimism [`0x8c7c0c...c11ca2`](./contracts/optimism-10/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/); arbitrum [`0x8c7c0c...c11ca2`](./contracts/arbitrum-42161/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/) | ✅ Audited |
| Whitelist | unknown | ethereum | 21 deployments: ethereum [`0x211c74...25ef59`](./contracts/ethereum-1/0x211c74db951c161c5a379363716ebdca5125ef59/); ethereum `0x35b2c1...78ade6`; ethereum `0x3f950f...4b2096`; ethereum `0x46f992...435ace`; ethereum `0x78537a...8f1132`; ethereum `0xa3dfcc...79e653`; ethereum `0xdd8ac2...e83ff1`; optimism `0x36033e...47fca5`; optimism `0x56574e...87e06f`; optimism `0x89926e...2c0edb`; optimism `0xc33659...f6380f`; optimism `0xc5fe32...90a68f`; optimism `0xf911d8...005918`; optimism `0xfa6a5d...119e45`; arbitrum `0x2e76a6...aa668b`; arbitrum `0x5e06d7...351b80`; arbitrum `0x6996b4...665710`; arbitrum `0x85e851...27ec85`; arbitrum `0x8ab017...344fbb`; arbitrum `0xd691f5...197f99`; arbitrum `0xda94b6...2921db` | ✅ Audited |

### ⚠️ Verified + Unaudited (189)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FRAXStablecoin | token | ethereum | [`0x853d95...75b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlToken | token | ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | arbitrum | 10 deployments: optimism `0x3e29d3...7c5f04`; optimism `0x9d4c27...2715e1`; optimism `0xcb8fa9...a3326a`; arbitrum [`0x175731...868b03`](./contracts/arbitrum-42161/0x17573150d67d820542efb24210371545a4868b03/); arbitrum `0x37704b...4a1f16`; arbitrum `0x57d45c...fa4f9a`; arbitrum `0x88e483...c4f053`; arbitrum `0x9d4c27...2715e1`; arbitrum `0xb9b47f...4822ad`; arbitrum `0xcb8fa9...a3326a` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | 49 deployments: ethereum [`0x0538c8...9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0x05b143...c8b4b6`; ethereum `0x0c7a61...6d8e47`; ethereum `0x1fe9e0...0039c7`; ethereum `0x230f8f...0f7602`; ethereum `0x252c80...aadff2`; ethereum `0x2b6c40...a3e324`; ethereum `0x35b225...7d516e`; ethereum `0x43ef34...34f841`; ethereum `0x479dfa...2778ca`; ethereum `0x4b8a42...d807fe`; ethereum `0x4da20a...bbcf29`; ethereum `0x614020...98fa93`; ethereum `0x61bf33...56599b`; ethereum `0x672e58...20c881`; ethereum `0x6f8d5f...53488c`; ethereum `0x7e198a...5c5dd7`; ethereum `0x7f0088...9d5c0f`; ethereum `0x8209f3...d5b402`; ethereum `0x83a99d...a0fecf`; ethereum `0x83c608...2d4495`; ethereum `0x842547...06030e`; ethereum `0x853f81...6a89d0`; ethereum `0x8b3c86...8e3639`; ethereum `0x8bcdd6...98db25`; ethereum `0x8c2d8b...8ec6f3`; ethereum `0x8c657a...c48770`; ethereum `0x9852c6...8d86dc`; ethereum `0x9b91ab...795663`; ethereum `0xa5bc6e...ac52ad`; ethereum `0xa8b607...a80452`; ethereum `0xabff8f...859ef0`; ethereum `0xad680b...f440b5`; ethereum `0xb0582c...396d66`; ethereum `0xb440a6...dbefff`; ethereum `0xb4edce...fd5f7d`; ethereum `0xb7cec2...6d27bf`; ethereum `0xba680a...f26e47`; ethereum `0xbd7ae7...64db39`; ethereum `0xc14900...157ba5`; ethereum `0xc40ece...48112d`; ethereum `0xda92f9...42cf04`; ethereum `0xe4fe64...805d93`; ethereum `0xebcf77...d75f49`; ethereum `0xef4f46...b475c1`; ethereum `0xf9c786...b69c08`; ethereum `0xfe711b...dfe007`; ethereum `0xff43c3...42c257`; ethereum `0xff9799...bb0532` | ⚠️ Unaudited |
| Pool | core_logic | optimism | 9 deployments: optimism [`0x124d69...91164e`](./contracts/optimism-10/0x124d69daeda338b1b31ffc8e429e39c9a991164e/); optimism `0x1ad06c...cbeaf0`; optimism `0x4d7959...21bb88`; optimism `0x60be3f...1170aa`; optimism `0x67c253...417ac3`; optimism `0xa10557...d6280a`; optimism `0xa5edb0...58a4f8`; optimism `0xaf03f5...6b0a29`; optimism `0xfa0947...658d76` | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| VWBTC | token | ethereum | 2 deployments: ethereum [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/); ethereum `0xcc9be1...ac0605` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | 4 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec`; ethereum `0xdc65f3...771c88` | ⚠️ Unaudited |
| Pool_USDC | core_logic | ethereum | 2 deployments: ethereum [`0x1864ca...da1c0d`](./contracts/ethereum-1/0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d/); ethereum `0x3c2982...212659` | ⚠️ Unaudited |
| VesperMakerStrategyWBTC | core_logic | ethereum | [`0x1a3a83...22f12b`](./contracts/ethereum-1/0x1a3a83d1a9a667c61df54b109ed88da58022f12b/) | ⚠️ Unaudited |
| EarnVesperStrategyDAIWETH | core_logic | ethereum | [`0xd9e153...3336b0`](./contracts/ethereum-1/0xd9e153f629a55992f5fc699442e50e386e3336b0/) | ⚠️ Unaudited |
| EarnVesperStrategyDAIWBTC | core_logic | ethereum | [`0x9b1107...f796d3`](./contracts/ethereum-1/0x9b11078f5e8345d074498a83c4f9824942f796d3/) | ⚠️ Unaudited |
| VBetaWBTC | token | ethereum | [`0x74cc5b...88a8af`](./contracts/ethereum-1/0x74cc5bc20b0c396df5680ee4aeb6169a6288a8af/) | ⚠️ Unaudited |
| EarnVesperStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x1cd0f3...85cf08`](./contracts/ethereum-1/0x1cd0f3bd73d60d56b487073a0cab2e8a9085cf08/); ethereum `0x3e281c...44046f`; ethereum `0x62514f...e18438`; ethereum `0xa60982...63e20e`; ethereum `0xa95ccf...55bd4a`; ethereum `0xe9b31c...5d395f` | ⚠️ Unaudited |
| Pool_USDT | core_logic | ethereum | [`0x7d3fcd...d54968`](./contracts/ethereum-1/0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968/) | ⚠️ Unaudited |
| RariFuseLendingAMO | core_logic | ethereum | 3 deployments: ethereum [`0x843df6...ddb0a2`](./contracts/ethereum-1/0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2/); ethereum `0x94d97d...681086`; ethereum `0x96665d...c93c45` | ⚠️ Unaudited |
| EarnVesperStrategyDAIVSP | core_logic | ethereum | [`0xdc1046...5bc93c`](./contracts/ethereum-1/0xdc1046dbb73e7be8c0b2b72a4987522d425bc93c/) | ⚠️ Unaudited |
| WstETHL2Strategy | core_logic | optimism | [`0xd77e2b...6572f8`](./contracts/optimism-10/0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8/) | ⚠️ Unaudited |
| StaticATokenV3 | token | arbitrum | 5 deployments: optimism `0x2680b5...76dd3b`; optimism `0x337b4b...049810`; optimism `0x4186eb...373cc4`; optimism `0x43a502...53abc6`; arbitrum [`0x248a43...4100f5`](./contracts/arbitrum-42161/0x248a431116c6f6fcd5fe1097d16d0597e24100f5/) | ⚠️ Unaudited |
| VUSDT | token | ethereum | [`0x95c0b3...13bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | ⚠️ Unaudited |
| Crv3PoolStrategyDAI | core_logic | ethereum | 4 deployments: ethereum [`0x0c712f...e29ce3`](./contracts/ethereum-1/0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3/); ethereum `0x656636...e1db6f`; ethereum `0xd11e67...b3be75`; ethereum `0xe94046...1dfd1d` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| TwoPoolAssetManager | core_logic | ethereum | [`0x063787...2d3495`](./contracts/ethereum-1/0x06378717d86b8cd2dba58c87383da1eda92d3495/) | ⚠️ Unaudited |
| ThreePoolAssetManager | core_logic | ethereum | [`0x9735f7...fad31b`](./contracts/ethereum-1/0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b/) | ⚠️ Unaudited |
| EarnVesperStrategyDAIDPI | core_logic | ethereum | [`0x612fd3...a55fb8`](./contracts/ethereum-1/0x612fd30e2d7dd963a1513cbf781eb5dfe8a55fb8/) | ⚠️ Unaudited |
| Address | unknown | ethereum | 2 deployments: ethereum [`0x6b9eb0...65e679`](./contracts/ethereum-1/0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679/); ethereum `0x7d1e43...eee6be` | ⚠️ Unaudited |
| AddressQueueStorage | unknown | ethereum | [`0x44e319...e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| AlchemistEth | unknown | ethereum | [`0xf8317b...40b73b`](./contracts/ethereum-1/0xf8317bd5f48b6fe608a52b48c856d3367540b73b/) | ⚠️ Unaudited |
| AlchemistV2 | unknown | ethereum | 25 deployments: ethereum [`0x062bf7...b13b5c`](./contracts/ethereum-1/0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c/); ethereum `0x5c6374...dd94dd`; ethereum `0x938dba...7c0ed7`; ethereum `0xb678be...538c4c`; ethereum `0xd55c73...24ca6d`; ethereum `0xd6cd22...15bd30`; ethereum `0xde399d...bc7261`; ethereum `0xf547b8...f4acfb`; ethereum `0xf747e9...84c50b`; ethereum `0xf7e137...20b438`; optimism `0x10294d...1484af`; optimism `0x1bce0a...00a2f0`; optimism `0x673054...d75483`; optimism `0xe04bb5...69d5b4`; arbitrum `0x0dadc9...4e01d5`; arbitrum `0x436473...964f06`; arbitrum `0x654e16...60703a`; arbitrum `0x755461...7d095c`; arbitrum `0x84672c...b36d1e`; arbitrum `0x98cabf...b1f83b`; arbitrum `0xa40cff...245926`; arbitrum `0xb3058d...8e9ff5`; arbitrum `0xb46ee2...1ac66f`; arbitrum `0xbb2f5d...264293`; arbitrum `0xdd8888...0c7fc1` | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | arbitrum | 7 deployments: arbitrum [`0x036609...e801a9`](./contracts/arbitrum-42161/0x0366093c869fbf4888f96e8f589e0493aae801a9/); arbitrum `0x83adea...2a84a9`; arbitrum `0xb58609...cea90a`; arbitrum `0xb77750...a8321f`; arbitrum `0xb85efc...036a43`; arbitrum `0xd031bd...4ee55d`; arbitrum `0xfaafe7...165693` | ⚠️ Unaudited |
| AlchemixHarvester | operational_periphery | arbitrum | 7 deployments: ethereum `0x7879a9...034f91`; ethereum `0x9f3031...a4cd3d`; optimism `0x990162...0f2d0c`; optimism `0x99e7d4...21e1a0`; optimism `0xf0faf4...e04870`; arbitrum [`0x52e4c3...e7fc0e`](./contracts/arbitrum-42161/0x52e4c31933b466cd8a7cb0aab819abaf7be7fc0e/); arbitrum `0x9b2ef5...00ab11` | ⚠️ Unaudited |
| AlchemixTokenMath | token | ethereum | 3 deployments: ethereum [`0x80d6ea...4c5971`](./contracts/ethereum-1/0x80d6ea0e9098a5993546f13e5d04da76f94c5971/); ethereum `0xfb56f5...26d785`; ethereum `0xff7d5c...b37ee9` | ⚠️ Unaudited |
| AlphaLendStrategyDPI | core_logic | ethereum | [`0xef9a76...8ed35e`](./contracts/ethereum-1/0xef9a768880b4996cddb8c24a26f4b00d6e8ed35e/) | ⚠️ Unaudited |
| ArbitrumRewardCollector | unknown | arbitrum | 5 deployments: arbitrum [`0x34e390...ebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/); arbitrum `0x6428f6...cb6c9b`; arbitrum `0xa05bea...86e6cf`; arbitrum `0xe10fff...5fe3ac`; arbitrum `0xf1d334...f6fc95` | ⚠️ Unaudited |
| ATokenGateway | token | arbitrum | 10 deployments: ethereum `0x67ec82...39f4d3`; ethereum `0x6b6bd4...72166c`; ethereum `0xa067c8...384809`; ethereum `0xbea839...506401`; optimism `0x6076a6...5e7193`; optimism `0xba3e84...203afd`; arbitrum [`0x07b8dd...d477db`](./contracts/arbitrum-42161/0x07b8dd83a7cf6f6934064203032224c4c4d477db/); arbitrum `0x0bafd3...c66c03`; arbitrum `0x3e1ccc...daf304`; arbitrum `0xa8a74f...d85a80` | ⚠️ Unaudited |
| BlockMiner | unknown | ethereum | [`0xc0dc49...4fcaeb`](./contracts/ethereum-1/0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb/) | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | ethereum | [`0x90503d...624736`](./contracts/ethereum-1/0x90503d86e120b3b309cebf00c2ca013ab3624736/) | ⚠️ Unaudited |
| BundleUtils | unknown | ethereum | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | ⚠️ Unaudited |
| CollateralManager | governance | ethereum | 6 deployments: ethereum [`0x6349e8...82aa83`](./contracts/ethereum-1/0x6349e8dda81c2e997130bc99827284355e82aa83/); ethereum `0x684647...d259df`; ethereum `0x8d0b8e...f3e899`; ethereum `0xabc648...bf8c18`; ethereum `0xf8ffaa...4f70bc`; ethereum `0xfa3552...a666f5` | ⚠️ Unaudited |
| ComboOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x4462df...34490c`](./contracts/ethereum-1/0x4462df433d01f32ac0c4adb0a76dcf255634490c/); ethereum `0x878f20...43b6d4`; ethereum `0xbdcb57...274caf` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | operational_periphery | ethereum | [`0x734fd1...ca4a73`](./contracts/ethereum-1/0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73/) | ⚠️ Unaudited |
| ComboOracle_KyberSwapElasticV2 | operational_periphery | ethereum | 3 deployments: ethereum [`0x603d9b...e05209`](./contracts/ethereum-1/0x603d9bb3a14d4289f622a35e40d05f0e24e05209/); ethereum `0xc3a483...9166b3`; ethereum `0xd3111a...2d8d28` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | operational_periphery | ethereum | 4 deployments: ethereum [`0x184fe0...ab315b`](./contracts/ethereum-1/0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b/); ethereum `0x1cbe07...ec2dff`; ethereum `0xa038ef...d1bc3d`; ethereum `0xd13c9a...099862` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| Controller | governance | ethereum | 2 deployments: ethereum [`0xa4f167...bd0217`](./contracts/ethereum-1/0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217/); ethereum `0xf8ea0e...3f6067` | ⚠️ Unaudited |
| ConvexAMO_V1_Recoverer | unknown | ethereum | [`0x49ee75...66bd71`](./contracts/ethereum-1/0x49ee75278820f409ecd67063d8d717b38d66bd71/) | ⚠️ Unaudited |
| CPITrackerOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x04baf3...ad8808`](./contracts/ethereum-1/0x04baf30115d7bac714709910dd286718cfad8808/); ethereum `0x5fca68...fd9adb`; ethereum `0x7086f2...f4f452`; ethereum `0x90e7ef...753490` | ⚠️ Unaudited |
| CreamStrategyETH | core_logic | ethereum | 3 deployments: ethereum [`0x3e89f1...4b447d`](./contracts/ethereum-1/0x3e89f1a781e2776bbecd101164b8d98c914b447d/); ethereum `0x7b2db7...4484ec`; ethereum `0xb92d60...e569e6` | ⚠️ Unaudited |
| CreamStrategyUSDT | core_logic | ethereum | 3 deployments: ethereum [`0x5a6aad...5f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/); ethereum `0x8eacba...89590b`; ethereum `0xc7e98c...5fd6c8` | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | optimism | 4 deployments: optimism [`0x843b66...7fad92`](./contracts/optimism-10/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/); optimism `0x870d36...adee4f`; arbitrum [`0x843b66...7fad92`](./contracts/arbitrum-42161/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/); arbitrum `0x870d36...adee4f` | ⚠️ Unaudited |
| CurveAMO_V2 | unknown | ethereum | [`0x7e983e...de8769`](./contracts/ethereum-1/0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769/) | ⚠️ Unaudited |
| CurveAMO_V3 | unknown | ethereum | [`0x72170c...105da2`](./contracts/ethereum-1/0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | 2 deployments: ethereum [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/); optimism `0xda1000...000da1` | ⚠️ Unaudited |
| DepositSecurityModule | unknown | ethereum | [`0xdb1492...1790e7`](./contracts/ethereum-1/0xdb149235b6f40dc08810aa69869783be101790e7/) | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | arbitrum | 3 deployments: optimism `0x92834c...46538e`; arbitrum [`0x0fbcba...8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/); arbitrum `0x5979d7...800529` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | optimism | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | arbitrum | 7 deployments: ethereum `0x8aacc9...f35d87`; ethereum `0x968234...dd5d23`; ethereum `0xa8ccbf...7cc9b3`; ethereum `0xdfdc17...8ae220`; arbitrum [`0x4bd4fa...0288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/); arbitrum `0x5aa8e0...d60de2`; arbitrum `0xaeea02...3393d4` | ⚠️ Unaudited |
| EthAssetManager | governance | ethereum | [`0xe761bf...933110`](./contracts/ethereum-1/0xe761bf731a06fe8259fee05897b2687d56933110/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | 2 deployments: ethereum [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/); arbitrum `0xaf88d0...8e5831` | ⚠️ Unaudited |
| FPI | unknown | ethereum | [`0x76c8ce...626767`](./contracts/ethereum-1/0x76c8cef5b18994a85bc2be1991e5b9c716626767/) | ⚠️ Unaudited |
| FPIS | unknown | ethereum | [`0xdb68c6...698d15`](./contracts/ethereum-1/0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15/) | ⚠️ Unaudited |
| frxETH | unknown | ethereum | 5 deployments: ethereum [`0x0304a3...f0c00e`](./contracts/ethereum-1/0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e/); ethereum `0x0363a3...8b8182`; ethereum `0x2c37fb...2773c3`; ethereum `0x67218f...5a42da`; ethereum `0xd1738e...9c2562` | ⚠️ Unaudited |
| frxETHMinter | unknown | ethereum | 6 deployments: ethereum [`0x2dd1b4...b3b532`](./contracts/ethereum-1/0x2dd1b4d4548accea497050619965f91f78b3b532/); ethereum `0x3405e8...eea320`; ethereum `0xa63f56...1a55f3`; ethereum `0xb1c4e5...916462`; ethereum `0xbafa44...9c1138`; ethereum `0xfbcb0f...d6276f` | ⚠️ Unaudited |
| FXS1559_AMO | unknown | ethereum | 2 deployments: ethereum [`0x9c6a04...1f51ee`](./contracts/ethereum-1/0x9c6a04871d11b33645ab592f68c41bb2b41f51ee/); ethereum `0xaf02be...8bc077` | ⚠️ Unaudited |
| FXS1559_AMO_V2 | unknown | ethereum | 2 deployments: ethereum [`0xc80c48...717c24`](./contracts/ethereum-1/0xc80c48862e4254f37047235298edb6aa35717c24/); ethereum `0xcde9a4...54294f` | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | ethereum | 2 deployments: ethereum [`0x7301bb...cedae5`](./contracts/ethereum-1/0x7301bb959ee286d8abc46f341144afe443cedae5/); ethereum `0xb52462...7c7dc5` | ⚠️ Unaudited |
| FXSOracleWrapper | operational_periphery | ethereum | [`0xee0f15...ab3480`](./contracts/ethereum-1/0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480/) | ⚠️ Unaudited |
| Gauge | operational_periphery | optimism | 11 deployments: optimism [`0x13baec...fe1615`](./contracts/optimism-10/0x13baec9c12544066a7918efc3d8b626dbbfe1615/); optimism `0x610123...eab52f`; optimism `0xa68808...437a02`; optimism `0xa8e075...e3817c`; optimism `0xb715d2...82791e`; optimism `0xc16adb...0eee3c`; optimism `0xe8b219...cb8890`; optimism `0xfc0b9a...15e6c5`; arbitrum `0x43fbf3...e33cd7`; arbitrum `0x72b659...5d4b10`; arbitrum `0xc3f26d...005cdb` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | arbitrum | 4 deployments: arbitrum [`0x653e76...add273`](./contracts/arbitrum-42161/0x653e76977c275df945a5c7417297d50ebcadd273/); arbitrum `0xb1cfd0...15bb86`; arbitrum `0xc129bd...5dacb0`; arbitrum `0xfcc143...b04617` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | 2 deployments: optimism `0xb29617...4284f9`; arbitrum [`0x7e1087...9ca043`](./contracts/arbitrum-42161/0x7e108711771dfdb10743f016d46d75a9379ca043/) | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | 2 deployments: ethereum [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/); ethereum `0xd74034...dcb00e` | ⚠️ Unaudited |
| HarvestResolver | operational_periphery | arbitrum | 7 deployments: ethereum `0x9825f7...f15b49`; ethereum `0xe1be7d...66cf22`; optimism `0x91b5f8...015c2e`; optimism `0xe9044a...8a1e96`; optimism `0xf6dd52...7faa07`; arbitrum [`0x0370ad...3ef754`](./contracts/arbitrum-42161/0x0370ada82f7a9397ca26ea5c9f13b937513ef754/); arbitrum `0xf91597...1d7a6b` | ⚠️ Unaudited |
| IdleTrancheAdapter | adapter | ethereum | 4 deployments: ethereum [`0x0b20f9...38a1c5`](./contracts/ethereum-1/0x0b20f9fcaf67b2a90bc881a68562569d8638a1c5/); ethereum `0x215895...858434`; ethereum `0xa3d66d...2b6a5b`; ethereum `0xa3f16f...9c16d9` | ⚠️ Unaudited |
| InvestorAMO_V2 | operational_periphery | ethereum | 4 deployments: ethereum [`0x2b4d25...da01b4`](./contracts/ethereum-1/0x2b4d259a8f6e765ad881c4c1d04045d629da01b4/); ethereum `0xb8315a...7444f1`; ethereum `0xde3c8a...9cb341`; ethereum `0xecca5a...8c0a0c` | ⚠️ Unaudited |
| InvestorAMO_V2_upgrade | operational_periphery | ethereum | 2 deployments: ethereum [`0x1e5acc...bbf64d`](./contracts/ethereum-1/0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d/); ethereum `0x9b6c44...8391d0` | ⚠️ Unaudited |
| JonesUSDCAdapter | adapter | arbitrum | 2 deployments: arbitrum [`0x87c4a2...f9bbe5`](./contracts/arbitrum-42161/0x87c4a26c6a00c91acf2344a43074563085f9bbe5/); arbitrum `0xd2385b...9f314b` | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | optimism | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | ⚠️ Unaudited |
| L2ERC20TokenBridge | operational_periphery | optimism | [`0x23b96a...08f4c7`](./contracts/optimism-10/0x23b96add54c479c6784dd504670b5376b808f4c7/) | ⚠️ Unaudited |
| L2ERC20TokenGateway | token | arbitrum | 2 deployments: arbitrum [`0x07d469...331b82`](./contracts/arbitrum-42161/0x07d4692291b9e30e326fd31706f686f83f331b82/); arbitrum `0xe75886...a4b0a7` | ⚠️ Unaudited |
| ManualTokenTrackerAMO | token | ethereum | 3 deployments: ethereum [`0x1be588...683f5a`](./contracts/ethereum-1/0x1be588641fb28eb8c2a51f1129707fb1e2683f5a/); ethereum `0xb3d07e...19b586`; ethereum `0xec8672...f6a413` | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | 3 deployments: ethereum [`0x469c9f...400d2f`](./contracts/ethereum-1/0x469c9fb59ebc19e141927c0308d98f2a9c400d2f/); ethereum `0x693c78...2b6cfb`; ethereum `0xe67516...94bf73` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xdb46c2...546296`](./contracts/ethereum-1/0xdb46c277da1599390eab394327602889e9546296/) | ⚠️ Unaudited |
| MicroVeFXSStaker | core_logic | ethereum | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | ethereum | 2 deployments: ethereum [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/); ethereum `0xe16723...1e78d6` | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | [`0x0aab73...1a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | ⚠️ Unaudited |
| MigrationTool | operational_periphery | ethereum | 14 deployments: ethereum [`0x1dff11...2645bd`](./contracts/ethereum-1/0x1dff114dfbbcaedca5f0d46dc8e9615dfc2645bd/); ethereum `0x7a88c7...d0fa45`; ethereum `0x88970e...7b5c47`; ethereum `0xe1f27a...97e1d3`; optimism `0x2c68d0...cb8126`; optimism `0x3892a5...2ca9e4`; optimism `0x7018cb...e5ced0`; optimism `0xbcf001...611cb9`; optimism `0xc56209...fb4302`; optimism `0xf87510...609a8c`; arbitrum `0x6e94c5...41bffb`; arbitrum `0x81b1d4...1705e8`; arbitrum `0xb6d30d...76910a`; arbitrum `0xececc1...f146a9` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | ethereum | 2 deployments: ethereum [`0x5d72a9...afca80`](./contracts/ethereum-1/0x5d72a9f081990219c97af877e0e79eadaeafca80/); ethereum `0xda5e6d...368b2d` | ⚠️ Unaudited |
| Minter | operational_periphery | ethereum | 2 deployments: ethereum [`0x4bc1a2...370599`](./contracts/ethereum-1/0x4bc1a26ec4ab5948b950a64479a4046701370599/); ethereum `0x7c1482...f11397` | ⚠️ Unaudited |
| MSIGHelper | periphery | ethereum | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | ⚠️ Unaudited |
| Multicall_Oz | periphery | ethereum | 5 deployments: ethereum [`0x00160b...8b8478`](./contracts/ethereum-1/0x00160baf84b3d2014837cc12e838ea399f8b8478/); ethereum `0x1ea632...f9fbbb`; ethereum `0x46a279...402921`; ethereum `0x52581e...74f4bb`; ethereum `0x80f1c4...c0379e` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NextAlchemicToken | token | arbitrum | 5 deployments: arbitrum [`0x303241...d8faf3`](./contracts/arbitrum-42161/0x303241e2b3b4aed0bb0f8623e7442368fed8faf3/); arbitrum `0x380cbf...7d2302`; arbitrum `0x49000f...08e498`; arbitrum `0x6e5780...a04483`; arbitrum `0xaf1168...15e386` | ⚠️ Unaudited |
| NextAlchemicTokenV2 | token | arbitrum | 2 deployments: arbitrum [`0x27b58d...815aa7`](./contracts/arbitrum-42161/0x27b58d226fe8f792730a795764945cf146815aa7/); arbitrum `0x649020...56007e` | ⚠️ Unaudited |
| NodeOperatorsRegistry | registry | ethereum | [`0xec3567...16c5fe`](./contracts/ethereum-1/0xec3567ae258639a0ff5a02f7eaf4e4ae4416c5fe/) | ⚠️ Unaudited |
| NoopRewardsDistributor | operational_periphery | ethereum | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | ⚠️ Unaudited |
| OHM_AMO | unknown | ethereum | 2 deployments: ethereum [`0x5699d2...c4db96`](./contracts/ethereum-1/0x5699d20732a2efa9a895ef04bb210aa751c4db96/); ethereum `0x89a5ce...d3dffa` | ⚠️ Unaudited |
| optimismCompress | unknown | optimism | 5 deployments: optimism [`0x138e30...01a33d`](./contracts/optimism-10/0x138e30d0f35a14d25317d83863eb7e4e0501a33d/); optimism `0x65c732...dae130`; optimism `0x9d15e5...918d35`; optimism `0xc58b2b...95533a`; optimism `0xd2b1d9...66650c` | ⚠️ Unaudited |
| Pair | unknown | arbitrum | 3 deployments: arbitrum [`0x510a49...4cca58`](./contracts/arbitrum-42161/0x510a496b2443ba52a3b269fee5a241a4ed4cca58/); arbitrum `0xfb4fe9...ef6886`; arbitrum `0xfd599d...213010` | ⚠️ Unaudited |
| PaymentSplitter | operational_periphery | ethereum | 3 deployments: ethereum [`0x097ee0...6dafd7`](./contracts/ethereum-1/0x097ee00f42f9d7512929a6434185ae94ac6dafd7/); ethereum `0x223809...13152c`; ethereum `0xecc4be...7524df` | ⚠️ Unaudited |
| PoolAccountant | operational_periphery | ethereum | 57 deployments: ethereum [`0x011881...ca7128`](./contracts/ethereum-1/0x011881efbdbb250702f9d7ca2a74788b26ca7128/); ethereum `0x042565...760213`; ethereum `0x0879f1...e89542`; ethereum `0x13c88a...91b1fd`; ethereum `0x16cdfe...055659`; ethereum `0x2337c5...c442c0`; ethereum `0x354fc6...10e189`; ethereum `0x39450c...c4de19`; ethereum `0x3b5180...dbbe6d`; ethereum `0x45aba6...e5e94e`; ethereum `0x45ccd3...4293d5`; ethereum `0x4d25e0...2c5a24`; ethereum `0x4d71a0...e5d674`; ethereum `0x4e713d...c80fe9`; ethereum `0x4f193b...67a7a1`; ethereum `0x5f5a65...c4c9a6`; ethereum `0x64a76d...3619b5`; ethereum `0x650845...f789e2`; ethereum `0x651e09...78c87d`; ethereum `0x6cf8b8...bcee2a`; ethereum `0x6f466f...aea70f`; ethereum `0x715ae7...7d88c9`; ethereum `0x745c10...5bd70d`; ethereum `0x75619e...c0a737`; ethereum `0x762ff5...20380d`; ethereum `0x7bceae...5864d9`; ethereum `0x7c6226...0e639e`; ethereum `0x7f896d...f2be93`; ethereum `0x804cd6...7bc7ed`; ethereum `0x82bb18...f670f9`; ethereum `0x85b694...ec6167`; ethereum `0x88df6a...d113dd`; ethereum `0x8ad5b3...a62e0a`; ethereum `0x8b41b4...aecda1`; ethereum `0x92d102...f179ef`; ethereum `0x963a95...1f7074`; ethereum `0xa17f64...a6088c`; ethereum `0xa34dc8...825e72`; ethereum `0xa92951...5b2cbb`; ethereum `0xa9af8f...eee400`; ethereum `0xa9e886...e33240`; ethereum `0xad947c...4a5e68`; ethereum `0xc0a7eb...30b212`; ethereum `0xc5bdba...8e5a04`; ethereum `0xc88a0a...93c4b6`; ethereum `0xcd6bf2...71fd35`; ethereum `0xce0ae5...e19659`; ethereum `0xd01062...b1de7c`; ethereum `0xd81995...ee9268`; ethereum `0xd87b3b...25b421`; ethereum `0xdd3662...1117b4`; ethereum `0xe25d8f...fd844f`; ethereum `0xec8c44...6f0505`; ethereum `0xecc32e...d46641`; ethereum `0xeed0e5...1b94ee`; ethereum `0xfb0df6...94561a`; ethereum `0xfb7fa7...24eb44` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolRewards | core_logic | ethereum | 36 deployments: ethereum [`0x17eff8...4d417b`](./contracts/ethereum-1/0x17eff816ef9646481c8bac6a50b3c9a67f4d417b/); ethereum `0x233ada...958319`; ethereum `0x23c901...849175`; ethereum `0x2f59b0...cfeda6`; ethereum `0x31d9b0...8ee863`; ethereum `0x3a7644...d16653`; ethereum `0x40971a...78b61f`; ethereum `0x41f4e1...f73eac`; ethereum `0x4279cc...c01106`; ethereum `0x479a86...295f8d`; ethereum `0x487f4f...9e9211`; ethereum `0x4a5398...bd5486`; ethereum `0x4a7ce5...951d5c`; ethereum `0x53d885...b80fab`; ethereum `0x68e031...cbb4cb`; ethereum `0x6d7746...e64153`; ethereum `0x72dcf9...ff1b56`; ethereum `0x77898f...cb91f8`; ethereum `0x7a75d9...273b1c`; ethereum `0x8a36f2...f6fbb7`; ethereum `0x92574e...fd066c`; ethereum `0x935673...9dc738`; ethereum `0x968d60...199e94`; ethereum `0xa163dc...7ad9ac`; ethereum `0xa72054...a0bfaa`; ethereum `0xb8208c...c8906d`; ethereum `0xbe3379...3574ad`; ethereum `0xc1fe9a...d17749`; ethereum `0xca9aee...2fdec5`; ethereum `0xd59996...0343b0`; ethereum `0xe2751f...acb121`; ethereum `0xe82cec...2e7a9f`; ethereum `0xec5a0f...512a3e`; ethereum `0xef8737...a0e8c8`; ethereum `0xf1d4eb...d99941`; ethereum `0xf9fbc8...cc064c` | ⚠️ Unaudited |
| PoolToken | core_logic | ethereum | 2 deployments: ethereum [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/); ethereum `0x9122ee...208e35` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 12 deployments: ethereum [`0x069c24...76f577`](./contracts/ethereum-1/0x069c24600c2a03147d4e1d9b04d193151676f577/); ethereum `0x19a02f...2798ca`; ethereum `0x20c572...d124cf`; ethereum `0x900909...6df69c`; ethereum `0xcaa487...c6a692`; ethereum `0xd9a5df...cf51f8`; ethereum `0xe0fc5c...46347d`; ethereum `0xe53d45...a0ce0a`; optimism `0xa44f69...8beac6`; optimism `0xd4bd68...2eae85`; arbitrum `0x80c715...e0ff86`; arbitrum `0xa44f69...8beac6` | ⚠️ Unaudited |
| RariFuseStrategy | core_logic | ethereum | 12 deployments: ethereum [`0x0a46a9...9e10f8`](./contracts/ethereum-1/0x0a46a9716b4632a57863d52123c5c10fdf9e10f8/); ethereum `0x13aecc...2d6f1e`; ethereum `0x187c51...12c0f6`; ethereum `0x3f4681...58f380`; ethereum `0x463c83...e6a46f`; ethereum `0x8b3ac0...6604d6`; ethereum `0xa92f21...befb65`; ethereum `0xc6e550...c426d0`; ethereum `0xecf139...ca0bd6`; ethereum `0xf4bb58...b53786`; ethereum `0xf5a661...663825`; ethereum `0xf95fb6...6559bb` | ⚠️ Unaudited |
| RariFuseStrategyAPE | core_logic | ethereum | [`0xb436d8...8e0999`](./contracts/ethereum-1/0xb436d8a2e3e23af57040b2da8e01463c818e0999/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| RETHAdapterV1 | adapter | ethereum | 2 deployments: ethereum [`0x7a1728...614047`](./contracts/ethereum-1/0x7a172816c0560964e6ad54ef54afabb035614047/); ethereum `0x80ca99...e3739d` | ⚠️ Unaudited |
| RewardCollector | unknown | optimism | 2 deployments: optimism [`0xd83208...b6b058`](./contracts/optimism-10/0xd8320859860f8e116e9bda13cdd60b27bcb6b058/); optimism `0xf34517...f896f9` | ⚠️ Unaudited |
| RewardCollectorOptimism | unknown | optimism | 3 deployments: optimism [`0x1e0bd5...2831bd`](./contracts/optimism-10/0x1e0bd5c0e3ab80d66b6225263d6739488a2831bd/); optimism `0x3fa562...a7d02d`; optimism `0xffd61c...922e9a` | ⚠️ Unaudited |
| RewardRouter | adapter | optimism | 5 deployments: optimism [`0x2931b8...d58075`](./contracts/optimism-10/0x2931b84d59f6f570eebdaaae182867c5e5d58075/); optimism `0x2e0e6b...81bb47`; arbitrum `0x5ea092...c6b258`; arbitrum `0xabad1a...f1a6db`; arbitrum `0xae8e5e...21a881` | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| SDLController | governance | ethereum | 7 deployments: ethereum [`0x06bf54...be53db`](./contracts/ethereum-1/0x06bf5490e4e8d678944b7e1b79be2cdb6fbe53db/); ethereum `0x0992d9...373b7a`; ethereum `0x13ee9d...0c60e8`; ethereum `0x483a73...a65afc`; ethereum `0x6a1883...3050d1`; ethereum `0x851abe...35d028`; ethereum `0xa77b4e...588037` | ⚠️ Unaudited |
| SDTController | governance | ethereum | 7 deployments: ethereum [`0x31e606...b75a46`](./contracts/ethereum-1/0x31e606c9cdbd1c1ebc322ef8b91004b8b8b75a46/); ethereum `0x3216d2...6e6273`; ethereum `0x52552a...17cc11`; ethereum `0x91bf16...c1a08c`; ethereum `0x9543af...13db0c`; ethereum `0x9debb1...4c61be`; ethereum `0xbcd7fb...13699a` | ⚠️ Unaudited |
| sfrxETH | unknown | ethereum | 6 deployments: ethereum [`0x17845e...f2656e`](./contracts/ethereum-1/0x17845ea6a9bfd2caf1b9e558948bb4999df2656e/); ethereum `0x1b0151...da8a09`; ethereum `0x4e7300...38f0bf`; ethereum `0xac3e01...bbe38f`; ethereum `0xc0497c...feb6b5`; ethereum `0xe30521...a667e6` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | 2 deployments: ethereum [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/); ethereum `0x81903f...b7c71b` | ⚠️ Unaudited |
| StableSwapStateOracle | operational_periphery | ethereum | [`0x3a6bd1...41ffd6`](./contracts/ethereum-1/0x3a6bd15abf19581e411621d669b6a2bbe741ffd6/) | ⚠️ Unaudited |
| StakeDAO_AMO | unknown | ethereum | 4 deployments: ethereum [`0x375278...efe465`](./contracts/ethereum-1/0x375278d3c65f29c1a90e8550888f1439cfefe465/); ethereum `0x4740b7...940359`; ethereum `0x7ebef3...4300bc`; ethereum `0xcf1e69...93e646` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | [`0xa30606...6e1778`](./contracts/ethereum-1/0xa306065a144a16dbc99f06e16737dd400e6e1778/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StaticAToken | token | ethereum | 5 deployments: ethereum [`0x318334...fb416e`](./contracts/ethereum-1/0x318334a6dd21d16a8442ab0b7204e81aa3fb416e/); ethereum `0x611345...563967`; ethereum `0xbc11de...94e315`; ethereum `0xce4a49...1688d8`; ethereum `0xf591d8...bae37a` | ⚠️ Unaudited |
| SwapManager | governance | ethereum | [`0xc48ea9...010174`](./contracts/ethereum-1/0xc48ea9a2daa4d816e4c9333d6689c70070010174/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/); ethereum `0xb72b88...fd69be` | ⚠️ Unaudited |
| TimeToken | token | ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokeAutoStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x461081...83c188`](./contracts/ethereum-1/0x4610815e65901e66237ef07493a06cbac783c188/); ethereum `0x467ec8...4908a5` | ⚠️ Unaudited |
| TokemakAMO | unknown | ethereum | 2 deployments: ethereum [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/); ethereum `0x8f8273...44d723` | ⚠️ Unaudited |
| TokenTrackerAMO | token | ethereum | 3 deployments: ethereum [`0x1e077b...11a612`](./contracts/ethereum-1/0x1e077b2a6a67f543629c8fccc97229452211a612/); ethereum `0x3f702a...368600`; ethereum `0x4b56b6...3eeb0d` | ⚠️ Unaudited |
| TokenTrackerV2 | token | ethereum | [`0x37336a...4d09ee`](./contracts/ethereum-1/0x37336ad1f3a145c710247e6a14c9acc7f34d09ee/) | ⚠️ Unaudited |
| TransmuterB | unknown | ethereum | [`0xee69bd...b796e7`](./contracts/ethereum-1/0xee69bd81bd056339368c97c4b2837b4dc4b796e7/) | ⚠️ Unaudited |
| TransmuterBuffer | unknown | arbitrum | 13 deployments: ethereum `0x0fba36...167f42`; ethereum `0x1eed2d...f79bac`; ethereum `0x437067...b5948f`; ethereum `0xbc2fb2...c90b9e`; optimism `0x143a08...b7a4e7`; optimism `0x36e8d1...440be5`; optimism `0x719fe4...be5e03`; optimism `0x7f5092...a28f68`; optimism `0x971c2d...0e2d6d`; optimism `0xe99a9a...beb3b9`; arbitrum [`0x00e337...eeabcc`](./contracts/arbitrum-42161/0x00e33722ba54545667e76a18ce9d544130eeabcc/); arbitrum `0x752ca4...a22e2b`; arbitrum `0xecad08...8bb9d2` | ⚠️ Unaudited |
| TransmuterConduit | unknown | ethereum | 5 deployments: ethereum [`0x440e92...0d2835`](./contracts/ethereum-1/0x440e9296007864a571f6555fb6015369150d2835/); ethereum `0x4ac237...cfb41c`; ethereum `0x8412d4...011eee`; ethereum `0xefc8a5...c4f20f`; ethereum `0xf65a1e...f7e424` | ⚠️ Unaudited |
| TransmuterEth | unknown | ethereum | 2 deployments: ethereum [`0x8d513e...38f19f`](./contracts/ethereum-1/0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f/); ethereum `0x9fd994...cfd4ac` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | 24 deployments: ethereum [`0x033231...d64811`](./contracts/ethereum-1/0x03323143a5f0d0679026c2a9fb6b0391e4d64811/); ethereum `0x49930a...24df55`; ethereum `0x645ce9...bd65cb`; ethereum `0xa840c7...a5197f`; ethereum `0xad2a6c...220298`; ethereum `0xe04bb5...69d5b4`; ethereum `0xe107fa...4262b2`; ethereum `0xfc3082...bdf5b9`; optimism `0x4e7d21...4415fa`; optimism `0x54aed3...36b6a1`; optimism `0xa7ea9e...aab723`; optimism `0xb7c425...19491a`; optimism `0xfcd619...91bbb4`; arbitrum `0x1b0361...ca4d19`; arbitrum `0x1eb7d7...a9c0d4`; arbitrum `0x21cfa8...78ddff`; arbitrum `0x2a8b5f...0755ed`; arbitrum `0x4be3d2...673011`; arbitrum `0x7037d4...3e6007`; arbitrum `0xb0a2db...8739dd`; arbitrum `0xd6a557...b408e9`; arbitrum `0xe7ec71...940ea8`; arbitrum `0xfaf833...65452e`; arbitrum `0xfd092e...6af5c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 14 deployments: ethereum [`0x0d858d...cb754f`](./contracts/ethereum-1/0x0d858d6d96a8b40414ec54b3019aaee431cb754f/); ethereum `0x11e21c...cc80ed`; ethereum `0x1435f2...908653`; ethereum `0x210a3a...4e1766`; ethereum `0x23140f...94db99`; ethereum `0x407bdc...ef2764`; ethereum `0x51c1a7...9e6142`; ethereum `0x6cb3b9...727fff`; ethereum `0x6fb0fe...d1f72c`; ethereum `0x77394f...c81eec`; ethereum `0x7d0038...040834`; ethereum `0xbdb0fb...5d93ae`; ethereum `0xcad336...561780`; arbitrum `0x43cd4c...9b24ba` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 4 deployments: ethereum [`0x0e2ba4...7faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/); ethereum `0x813e89...902bd8`; ethereum `0x8b609c...14b9d9`; ethereum `0xe6cffe...76ff12` | ⚠️ Unaudited |
| TWAMM_AMO | unknown | ethereum | 2 deployments: ethereum [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/); ethereum `0x629c47...a78dc4` | ⚠️ Unaudited |
| UniV3LiquidityAMO | unknown | ethereum | 4 deployments: ethereum [`0x381430...f8f4e6`](./contracts/ethereum-1/0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6/); ethereum `0xb70a04...764a86`; ethereum `0xc687e6...dbe886`; ethereum `0xef2b08...99751f` | ⚠️ Unaudited |
| UniV3LiquidityAMO_V2 | unknown | ethereum | 2 deployments: ethereum [`0x0e8943...847440`](./contracts/ethereum-1/0x0e894387c073c6f62c9bbded21e33d3062847440/); ethereum `0xc91bb4...363a79` | ⚠️ Unaudited |
| UniV3TWAPOracle | operational_periphery | ethereum | [`0xfa7c66...ce1559`](./contracts/ethereum-1/0xfa7c660683ff22989413256bd57f569562ce1559/) | ⚠️ Unaudited |
| USDT | token | optimism | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| V1Deprecatooooor | unknown | ethereum | [`0xdb3928...23b4ec`](./contracts/ethereum-1/0xdb39286fadb3f6039c8b5d79bafa21615c23b4ec/) | ⚠️ Unaudited |
| VBetaETH | unknown | ethereum | [`0x2c3619...b87abf`](./contracts/ethereum-1/0x2c361913e2da663e1898162ec01497c46eb87abf/) | ⚠️ Unaudited |
| VBetaUSDC | unknown | ethereum | [`0x1e8604...a7097f`](./contracts/ethereum-1/0x1e86044468b92c310800d4b350e0f83387a7097f/) | ⚠️ Unaudited |
| VBTC | unknown | ethereum | [`0xd773ca...af168b`](./contracts/ethereum-1/0xd773ca264b5363f25f7f96319076753849af168b/) | ⚠️ Unaudited |
| VDAI | unknown | ethereum | [`0xca0c34...014d80`](./contracts/ethereum-1/0xca0c34a3f35520b9490c1d58b35a19ab64014d80/) | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | operational_periphery | ethereum | 3 deployments: ethereum [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/); ethereum `0x95702e...8b4c0f`; ethereum `0xc3eb88...4d0331` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | operational_periphery | ethereum | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/); ethereum `0xed2647...e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | 2 deployments: ethereum [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/); ethereum `0xfe5113...763b4d` | ⚠️ Unaudited |
| VesperAdapterV1 | adapter | ethereum | 4 deployments: ethereum [`0x36033e...47fca5`](./contracts/ethereum-1/0x36033e1fd88470a5192692e01150c3593847fca5/); ethereum `0x54aed3...36b6a1`; ethereum `0xbc8003...810819`; ethereum `0xfcd619...91bbb4` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | 22 deployments: ethereum [`0x175a78...df18ce`](./contracts/ethereum-1/0x175a7815393d4f2e71ba37f53afdf96278df18ce/); ethereum `0x1c282e...a3eaad`; ethereum `0x228cdf...b1b3d2`; ethereum `0x27723d...a3b2d9`; ethereum `0x339b20...6b3b08`; ethereum `0x4bc77c...ff5ef7`; ethereum `0x525fd1...fd9e2d`; ethereum `0x59928b...99c88c`; ethereum `0x5fe5de...a45489`; ethereum `0x6c2b3d...a54300`; ethereum `0x7465e3...ea733b`; ethereum `0x7b0729...829eef`; ethereum `0x9b6ca9...36eaf5`; ethereum `0xb2205b...bfa8c2`; ethereum `0xb76ec4...a641f9`; ethereum `0xbc390a...68dff6`; ethereum `0xd36aa4...33f3cb`; ethereum `0xea6c37...564791`; ethereum `0xef5d81...f7a53a`; ethereum `0xf336f4...623b01`; ethereum `0xf6aa8d...9ccc9e`; ethereum `0xf8051d...bf4217` | ⚠️ Unaudited |
| VesperMakerStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x0827f1...dad19a`](./contracts/ethereum-1/0x0827f18a1fad688c5c720fc27ef0cc00d6dad19a/); ethereum `0x70900c...982484` | ⚠️ Unaudited |
| VesperMakerStrategyETH | core_logic | ethereum | 2 deployments: ethereum [`0x980e76...c8e697`](./contracts/ethereum-1/0x980e7693fdbba39ba75a9be85cda6c336ec8e697/); ethereum `0xc5cdf8...c6bb54` | ⚠️ Unaudited |
| VesperMakerStrategyLINK | core_logic | ethereum | 2 deployments: ethereum [`0x59543a...ad29c0`](./contracts/ethereum-1/0x59543a595b69897b295f12964d3c7c37b3ad29c0/); ethereum `0x636a02...f54409` | ⚠️ Unaudited |
| VesperRewarder | unknown | ethereum | [`0x36f9e7...5efdcb`](./contracts/ethereum-1/0x36f9e78aa9012ff2df8923074de3fa52075efdcb/) | ⚠️ Unaudited |
| VesperV3StrategyDAI | core_logic | ethereum | [`0x0e2ddf...4d3db4`](./contracts/ethereum-1/0x0e2ddfc22afed1ac0476685fb81cc237434d3db4/) | ⚠️ Unaudited |
| VesperVotingPower | unknown | ethereum | [`0xebedfd...e29b23`](./contracts/ethereum-1/0xebedfd259c9fb1f5c0ab9a9f24e79f8d80e29b23/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | 5 deployments: ethereum [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/); ethereum `0x804f33...c82ea3`; ethereum `0xa89566...07d2b3`; ethereum `0xd1c117...eb05f2`; ethereum `0xe4e3da...f39a29` | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VLINK | unknown | ethereum | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ⚠️ Unaudited |
| VSP | unknown | ethereum | [`0x1b4018...998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ⚠️ Unaudited |
| VSPStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x2a1b6f...bc94f4`](./contracts/ethereum-1/0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4/); ethereum `0x94c7c5...334e7e`; ethereum `0xd5579a...e32aa2`; ethereum `0xfd61f9...5794b6` | ⚠️ Unaudited |
| VSPT | unknown | ethereum | [`0xaff40f...f1a736`](./contracts/ethereum-1/0xaff40fc748bb27ceffed88c0e9fd39027ff1a736/) | ⚠️ Unaudited |
| VUNI | unknown | ethereum | [`0xf858a3...fb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |
| VUSDC | unknown | ethereum | 7 deployments: ethereum [`0x0648e5...7957cf`](./contracts/ethereum-1/0x0648e517670d71ba46d7a27ba04677db7c7957cf/); ethereum `0x0c4906...bf113d`; ethereum `0x4a4a54...411101`; ethereum `0x56ee98...2e581b`; ethereum `0x777a78...49cf85`; ethereum `0x85c786...547a46`; ethereum `0xb1c0d6...3bcde5` | ⚠️ Unaudited |
| VVSP | unknown | ethereum | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 52 deployments: ethereum [`0x0129c6...de930d`](./contracts/ethereum-1/0x0129c6f26ba8ab0f9575ffe2c0678253a5de930d/); ethereum `0x02454e...4c1c27`; ethereum `0x062705...ffd45a`; ethereum `0x07be9b...36a171`; ethereum `0x082a59...9fdf3c`; ethereum `0x19bc15...97892d`; ethereum `0x1b0b99...3882f5`; ethereum `0x1f1818...255015`; ethereum `0x2618e9...2ed40c`; ethereum `0x2bdfd3...efe701`; ethereum `0x2c1b89...d027e3`; ethereum `0x2ca788...505cf4`; ethereum `0x310459...77332b`; ethereum `0x3669c4...fce737`; ethereum `0x40c5fb...13869a`; ethereum `0x421efd...cbd9de`; ethereum `0x44ade9...9166ce`; ethereum `0x489f04...a74775`; ethereum `0x50103e...a89b1f`; ethereum `0x513251...1affad`; ethereum `0x59e132...44da0e`; ethereum `0x640b8c...2a629e`; ethereum `0x6875ce...34914f`; ethereum `0x707f91...963fc8`; ethereum `0x70f1ce...028649`; ethereum `0x76c6f1...97ba45`; ethereum `0x777cee...34051d`; ethereum `0x7859f9...f21ee4`; ethereum `0x7b64b0...3d6bdd`; ethereum `0x7da96a...8d87a7`; ethereum `0x86bb5d...39c2ae`; ethereum `0xa258c4...4d168c`; ethereum `0xa2f987...b72bdf`; ethereum `0xa354f3...3dc4de`; ethereum `0xa9b2f5...7fa70e`; ethereum `0xaad661...6f60c9`; ethereum `0xab55bf...692fe6`; ethereum `0xb2022e...feaa52`; ethereum `0xb4277e...331eb1`; ethereum `0xb4eb45...89b82e`; ethereum `0xc619ff...4ba99d`; ethereum `0xc8418a...adc5b0`; ethereum `0xcb75a1...31f0a6`; ethereum `0xda8164...970c95`; ethereum `0xdb99fd...bfa321`; ethereum `0xe3b3fe...fad906`; ethereum `0xe3c8a4...697fb7`; ethereum `0xec9189...8a6aa6`; ethereum `0xf53cc5...08e3de`; ethereum `0xf8b237...c1ffad`; ethereum `0xfb2731...0da180`; ethereum `0xfef762...33fe27` | ⚠️ Unaudited |
| WETH9 | token | optimism | 2 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | arbitrum | 5 deployments: ethereum `0x3b3636...0d4f9f`; ethereum `0xa22a7e...76d67a`; optimism `0xdb3fe4...af3933`; arbitrum [`0x39299e...4e5453`](./contracts/arbitrum-42161/0x39299e7153c28faf4420ca4126f0d834874e5453/); arbitrum `0x7c679d...e98d8c` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WstETHAdapterArbitrum | adapter | arbitrum | 6 deployments: arbitrum [`0x10124e...cd00d6`](./contracts/arbitrum-42161/0x10124e56948759a4b571ad08d25f01e4b5cd00d6/); arbitrum `0x41bf48...d6a7ab`; arbitrum `0x576bc8...ca7e48`; arbitrum `0xa03162...e19c4a`; arbitrum `0xa68fa3...01c4f7`; arbitrum `0xa8c4da...a51698` | ⚠️ Unaudited |
| WstETHAdapterOptimism | adapter | optimism | [`0x1f563a...586ed0`](./contracts/optimism-10/0x1f563a8be28acdcc5546543a227afb9373586ed0/) | ⚠️ Unaudited |
| WstETHAdapterV1 | adapter | ethereum | 3 deployments: ethereum [`0x3c2c6f...01bcf8`](./contracts/ethereum-1/0x3c2c6fa5398cdd933465f6fd04f3575f7201bcf8/); ethereum `0x58846e...79fcc5`; ethereum `0x6999b6...4bb30c` | ⚠️ Unaudited |
| YearnStakingToken | token | optimism | 3 deployments: optimism [`0x059eaa...175eed`](./contracts/optimism-10/0x059eaa296b18e0d954632c8242ddb4a271175eed/); optimism `0x0a86ad...730ecd`; optimism `0xe62dda...c59ce3` | ⚠️ Unaudited |
| YearnVaultAdapter | adapter | ethereum | [`0xb039ea...68214a`](./contracts/ethereum-1/0xb039ea6153c827e59b620bdcd974f7bbfe68214a/) | ⚠️ Unaudited |
| YearnVaultAdapterEth | adapter | ethereum | [`0x546e67...85b3bc`](./contracts/ethereum-1/0x546e6711032ec744a7708d4b7b283a210a85b3bc/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | adapter | ethereum | [`0x6fe02b...17f661`](./contracts/ethereum-1/0x6fe02be0ec79dcf582cbdb936d7037d2eb17f661/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirectionEth | adapter | ethereum | [`0x6d7565...160132`](./contracts/ethereum-1/0x6d75657771256c7a8cb4d475fdf5047b70160132/) | ⚠️ Unaudited |
| YTokenGateway | token | arbitrum | 4 deployments: optimism `0xc02670...002a56`; optimism `0xede36d...2d9397`; arbitrum [`0x736fa6...cfc4df`](./contracts/arbitrum-42161/0x736fa66a6f4457b29e5a4b1dc78ac1b1d9cfc4df/); arbitrum `0xd65520...906668` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (186)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0e9a173de3dd19adad4489640e89fbfe229d0d21) | proxy | arbitrum | `0x0e52af...3fabd6` | ❓ Unverified |
| Proxy (impl: 0x1944eba354f92641778380e0bd2f2dadb213f262) | proxy | arbitrum | `0x077b17...efc826` | ❓ Unverified |
| Proxy (impl: 0x9964aa9cec85ec687e90de5e566d61544a3d5e7c) | proxy | arbitrum | `0x7a6c69...3ebac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x057a48...f981df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07a5fb...d30a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x084d7a...7440ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x085c11...2147a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x093eda...8d5337` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b5161...cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bb35d...e4a666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d0324...78beb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d296e...3704c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d994b...9d2f37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f4192...7d508b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10dea9...d6d3bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x133ecd...882d8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13b844...9b26ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x140ecd...2656df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ac802...73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d837a...a889b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x239c95...c32e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x240023...c66df4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x240eba...19bf37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24e927...7865fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25bc1f...9aa14e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a135a...1f8d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2cd0b4...6bb10b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ce898...fc718f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2dc7cd...dcb677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ffffb...b173cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30c271...188841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31b855...5e938c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31fc48...0867d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x323e34...ecc995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32d726...304c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32fd3b...0c2fcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x334fa9...4cabd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37b54f...60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x386035...72a673` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x395a34...32c3f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d5643...f5defa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ddb00...568a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x400509...4f0f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x422cd6...c7495b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x443d61...f0f4e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x452086...3d03dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46ca85...43b6c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a29f4...b64545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e7cf3...67314b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5154e7...e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x542572...572997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58258a...cfcf62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59417c...9c097f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x602504...7a2795` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x650a36...b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66e323...476320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f4c7e...73f8b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7228d6...776c26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72a7cb...a9945a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x75c1e2...1ffddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7927fc...1816f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a7c5b...08d31b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f3c6b...a09116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f5092...a28f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x817310...7371a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8545d3...53eef5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x861db1...71a0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x881259...ba0257` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88b2ab...08ae6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b57bc...5dd0e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dfa3c...a5753d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90cb8b...531a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x914cb6...424499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x966aa4...9d9705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96ad3a...0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97f9a6...2dcf71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9aa0eb...0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9abaea...5aecf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9aec18...833715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b59f7...037f5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9da865...d5a26b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e7a52...01b75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f1c42...289c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f29f0...9eae57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa13d78...852647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3b031...29c772` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3cce9...b947bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5200b...29a09b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6623d...8d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7ea9e...aab723` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa938b8...8caff0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabfe39...80a6cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac6714...93b27e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae0c89...f57c2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb075ab...893a7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0ea1d...66769d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4e7cc...761b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5e999...b218e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7bdd2...ab52fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7c425...19491a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb81179...e556e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2df2d...6b37e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3ffc7...abf0e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4c81b...043018` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5c0d3...068c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc805d4...bcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9a679...f03a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc519f...21a753` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd123c4...785967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd223f6...35bd48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd57a13...31fc75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd837f0...a93838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd85bd1...345413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8e4bb...85e6b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd90d7c...b483c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc55f6...4d4efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddd877...c62b27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0222d...4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0ac0f...b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0ec9b...cb850a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1c321...224f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1d66c...a16be6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe25fbb...a3f017` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4503e...402333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe621bb...663a8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6dbd1...835729` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe93428...657b33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb85dd...2b77a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xedac70...35adfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeea5ba...68916f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1000d...866ccc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1ba3e...0ea689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf248aa...972e86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf350c6...722236` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf391a6...72fa1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4431b...963e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf502d1...4602ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5b251...76979a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x10cf9d...586a69` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1dc389...589f8d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x318334...fb416e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x393dd1...a5f204` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x41125d...471602` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4183c9...f688f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x485af4...aa68bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4b4968...790d85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x65d288...7a2157` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6caeef...414018` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7f7195...aac91e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8ba1e9...16925a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xaf7ad0...c472de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb0269e...316fa8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcd87ba...1f6cb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd24c4c...06e382` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfb6c56...235a51` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x148c05...54bc4c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5a07d3...9fe5cf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x637ec6...892439` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x76b2e3...6d3a0e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8d11ec...8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xef0210...935607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x082b50...35dbc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e1793...b9cc06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e9a17...9d0d21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x108464...20d840` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17995b...98d163` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1944eb...13f262` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d2be8...1c4962` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x27423e...231ab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ff291...aa38c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x718660...3ab333` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7918da...52e43e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x853334...13bc0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x868f8e...567e20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8b36dc...6d7915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9964aa...3d5e7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5b00d...37f771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaffd7f...b27d28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd05a08...41a2a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd65ebf...ef1bf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9168e...f4da56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc8eb1...22fa0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa5cef...b86293` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | 4 deployments: arbitrum `0x07a4d7...bd44df`; arbitrum `0x19bede...836c85`; arbitrum `0x353068...89bd74`; arbitrum `0xf4a40b...2fc856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [- [View Report]()](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | contract_name | 20 | low |
| [- [View Report]()](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 9 | high |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 8 | high |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 73 | high |
| [2025-05-19-spearbit.pdf](https://github.com/alchemix-finance/v3/blob/master/lib/vault-v2/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-07-15-zellic.pdf](https://github.com/alchemix-finance/v3/blob/master/lib/vault-v2/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | fresh | Direct | contract_name | 3 | high |
| [2025-08-11-spearbit.pdf](https://github.com/alchemix-finance/v3/blob/master/lib/vault-v2/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2025-09-15-blackthorn.pdf](https://github.com/alchemix-finance/v3/blob/master/lib/vault-v2/audits/2025-09-15-blackthorn.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/alchemix-finance/v3/blob/master/lib/vault-v2/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $13,013,313.11 | Verified native implementation with $13,013,313.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | token | $12,245,295.96 | Verified native implementation with $12,245,295.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x124d69...91164e`](./contracts/optimism-10/0x124d69daeda338b1b31ffc8e429e39c9a991164e/) | Pool | core_logic | $2,716,934.66 | Verified native implementation with $2,716,934.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | $380,017.26 | Verified native implementation with $380,017.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | $348,476.92 | Verified native implementation with $348,476.92 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | Stake_FXS_WETH | token | $136,737.53 | Verified native implementation with $136,737.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1864ca...da1c0d`](./contracts/ethereum-1/0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d/) | Pool_USDC | core_logic | $2,931.85 | Verified native implementation with $2,931.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a3a83...22f12b`](./contracts/ethereum-1/0x1a3a83d1a9a667c61df54b109ed88da58022f12b/) | VesperMakerStrategyWBTC | core_logic | $1,838.76 | Verified native implementation with $1,838.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e153...3336b0`](./contracts/ethereum-1/0xd9e153f629a55992f5fc699442e50e386e3336b0/) | EarnVesperStrategyDAIWETH | core_logic | $1,339.47 | Verified native implementation with $1,339.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b1107...f796d3`](./contracts/ethereum-1/0x9b11078f5e8345d074498a83c4f9824942f796d3/) | EarnVesperStrategyDAIWBTC | core_logic | $1,276.90 | Verified native implementation with $1,276.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cd0f3...85cf08`](./contracts/ethereum-1/0x1cd0f3bd73d60d56b487073a0cab2e8a9085cf08/) | EarnVesperStrategy | core_logic | $290.15 | Verified native implementation with $290.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d3fcd...d54968`](./contracts/ethereum-1/0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968/) | Pool_USDT | core_logic | $100.00 | Verified native implementation with $100.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x843df6...ddb0a2`](./contracts/ethereum-1/0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2/) | RariFuseLendingAMO | core_logic | $89.77 | Verified native implementation with $89.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc1046...5bc93c`](./contracts/ethereum-1/0xdc1046dbb73e7be8c0b2b72a4987522d425bc93c/) | EarnVesperStrategyDAIVSP | core_logic | $79.62 | Verified native implementation with $79.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd77e2b...6572f8`](./contracts/optimism-10/0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8/) | WstETHL2Strategy | core_logic | $57.60 | Verified native implementation with $57.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95c0b3...13bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | VUSDT | token | $3.00 | Verified native implementation with $3.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c712f...e29ce3`](./contracts/ethereum-1/0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3/) | Crv3PoolStrategyDAI | core_logic | $0.73 | Verified native implementation with $0.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | FPIControllerPool | core_logic | $0.20 | Verified native implementation with $0.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063787...2d3495`](./contracts/ethereum-1/0x06378717d86b8cd2dba58c87383da1eda92d3495/) | TwoPoolAssetManager | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9735f7...fad31b`](./contracts/ethereum-1/0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b/) | ThreePoolAssetManager | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x612fd3...a55fb8`](./contracts/ethereum-1/0x612fd30e2d7dd963a1513cbf781eb5dfe8a55fb8/) | EarnVesperStrategyDAIDPI | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44e319...e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | AddressQueueStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | AddressSetStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | Alchemist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8317b...40b73b`](./contracts/ethereum-1/0xf8317bd5f48b6fe608a52b48c856d3367540b73b/) | AlchemistEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x036609...e801a9`](./contracts/arbitrum-42161/0x0366093c869fbf4888f96e8f589e0493aae801a9/) | AlchemixConnextGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52e4c3...e7fc0e`](./contracts/arbitrum-42161/0x52e4c31933b466cd8a7cb0aab819abaf7be7fc0e/) | AlchemixHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80d6ea...4c5971`](./contracts/ethereum-1/0x80d6ea0e9098a5993546f13e5d04da76f94c5971/) | AlchemixTokenMath | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef9a76...8ed35e`](./contracts/ethereum-1/0xef9a768880b4996cddb8c24a26f4b00d6e8ed35e/) | AlphaLendStrategyDPI | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34e390...ebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/) | ArbitrumRewardCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07b8dd...d477db`](./contracts/arbitrum-42161/0x07b8dd83a7cf6f6934064203032224c4c4d477db/) | ATokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | BundleUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6349e8...82aa83`](./contracts/ethereum-1/0x6349e8dda81c2e997130bc99827284355e82aa83/) | CollateralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4462df...34490c`](./contracts/ethereum-1/0x4462df433d01f32ac0c4adb0a76dcf255634490c/) | ComboOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x184fe0...ab315b`](./contracts/ethereum-1/0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b/) | ComboOracle_UniV2_UniV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | CommunalFarm_SaddleD4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4f167...bd0217`](./contracts/ethereum-1/0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04baf3...ad8808`](./contracts/ethereum-1/0x04baf30115d7bac714709910dd286718cfad8808/) | CPITrackerOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a6aad...5f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/) | CreamStrategyUSDT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x843b66...7fad92`](./contracts/optimism-10/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/) | CrossChainCanonicalGALCX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb1492...1790e7`](./contracts/ethereum-1/0xdb149235b6f40dc08810aa69869783be101790e7/) | DepositSecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0fbcba...8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/) | ERC20Bridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ERC20BridgedPermit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4bd4fa...0288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe761bf...933110`](./contracts/ethereum-1/0xe761bf731a06fe8259fee05897b2687d56933110/) | EthAssetManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c6a04...1f51ee`](./contracts/ethereum-1/0x9c6a04871d11b33645ab592f68c41bb2b41f51ee/) | FXS1559_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee0f15...ab3480`](./contracts/ethereum-1/0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480/) | FXSOracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x13baec...fe1615`](./contracts/optimism-10/0x13baec9c12544066a7918efc3d8b626dbbfe1615/) | Gauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0370ad...3ef754`](./contracts/arbitrum-42161/0x0370ada82f7a9397ca26ea5c9f13b937513ef754/) | HarvestResolver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b20f9...38a1c5`](./contracts/ethereum-1/0x0b20f9fcaf67b2a90bc881a68562569d8638a1c5/) | IdleTrancheAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | L2ERC20ExtendedTokensBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x23b96a...08f4c7`](./contracts/optimism-10/0x23b96add54c479c6784dd504670b5376b808f4c7/) | L2ERC20TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07d469...331b82`](./contracts/arbitrum-42161/0x07d4692291b9e30e326fd31706f686f83f331b82/) | L2ERC20TokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1be588...683f5a`](./contracts/ethereum-1/0x1be588641fb28eb8c2a51f1129707fb1e2683f5a/) | ManualTokenTrackerAMO | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469c9f...400d2f`](./contracts/ethereum-1/0x469c9fb59ebc19e141927c0308d98f2a9c400d2f/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | MicroVeFXSStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/) | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aab73...1a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dff11...2645bd`](./contracts/ethereum-1/0x1dff114dfbbcaedca5f0d46dc8e9615dfc2645bd/) | MigrationTool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d72a9...afca80`](./contracts/ethereum-1/0x5d72a9f081990219c97af877e0e79eadaeafca80/) | MiniArmyKnife | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bc1a2...370599`](./contracts/ethereum-1/0x4bc1a26ec4ab5948b950a64479a4046701370599/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | MSIGHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | NoopRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x138e30...01a33d`](./contracts/optimism-10/0x138e30d0f35a14d25317d83863eb7e4e0501a33d/) | optimismCompress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011881...ca7128`](./contracts/ethereum-1/0x011881efbdbb250702f9d7ca2a74788b26ca7128/) | PoolAccountant | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | PoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a46a9...9e10f8`](./contracts/ethereum-1/0x0a46a9716b4632a57863d52123c5c10fdf9e10f8/) | RariFuseStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb436d8...8e0999`](./contracts/ethereum-1/0xb436d8a2e3e23af57040b2da8e01463c818e0999/) | RariFuseStrategyAPE | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a1728...614047`](./contracts/ethereum-1/0x7a172816c0560964e6ad54ef54afabb035614047/) | RETHAdapterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd83208...b6b058`](./contracts/optimism-10/0xd8320859860f8e116e9bda13cdd60b27bcb6b058/) | RewardCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1e0bd5...2831bd`](./contracts/optimism-10/0x1e0bd5c0e3ab80d66b6225263d6739488a2831bd/) | RewardCollectorOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2931b8...d58075`](./contracts/optimism-10/0x2931b84d59f6f570eebdaaae182867c5e5d58075/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06bf54...be53db`](./contracts/ethereum-1/0x06bf5490e4e8d678944b7e1b79be2cdb6fbe53db/) | SDLController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31e606...b75a46`](./contracts/ethereum-1/0x31e606c9cdbd1c1ebc322ef8b91004b8b8b75a46/) | SDTController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa30606...6e1778`](./contracts/ethereum-1/0xa306065a144a16dbc99f06e16737dd400e6e1778/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc48ea9...010174`](./contracts/ethereum-1/0xc48ea9a2daa4d816e4c9333d6689c70070010174/) | SwapManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x461081...83c188`](./contracts/ethereum-1/0x4610815e65901e66237ef07493a06cbac783c188/) | TokeAutoStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/) | TokemakAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e077b...11a612`](./contracts/ethereum-1/0x1e077b2a6a67f543629c8fccc97229452211a612/) | TokenTrackerAMO | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37336a...4d09ee`](./contracts/ethereum-1/0x37336ad1f3a145c710247e6a14c9acc7f34d09ee/) | TokenTrackerV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee69bd...b796e7`](./contracts/ethereum-1/0xee69bd81bd056339368c97c4b2837b4dc4b796e7/) | TransmuterB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x440e92...0d2835`](./contracts/ethereum-1/0x440e9296007864a571f6555fb6015369150d2835/) | TransmuterConduit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d513e...38f19f`](./contracts/ethereum-1/0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f/) | TransmuterEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2ba4...7faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/) | TWAMM_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x381430...f8f4e6`](./contracts/ethereum-1/0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6/) | UniV3LiquidityAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e8943...847440`](./contracts/ethereum-1/0x0e894387c073c6f62c9bbded21e33d3062847440/) | UniV3LiquidityAMO_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb3928...23b4ec`](./contracts/ethereum-1/0xdb39286fadb3f6039c8b5d79bafa21615c23b4ec/) | V1Deprecatooooor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd773ca...af168b`](./contracts/ethereum-1/0xd773ca264b5363f25f7f96319076753849af168b/) | VBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca0c34...014d80`](./contracts/ethereum-1/0xca0c34a3f35520b9490c1d58b35a19ab64014d80/) | VDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/) | veFPISYieldDistributorV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | veFPISYieldDistributorV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | veFXSYieldDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | veFXSYieldDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/) | veFXSYieldDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | veFXSYieldDistributorV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x175a78...df18ce`](./contracts/ethereum-1/0x175a7815393d4f2e71ba37f53afdf96278df18ce/) | VesperEarnDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0827f1...dad19a`](./contracts/ethereum-1/0x0827f18a1fad688c5c720fc27ef0cc00d6dad19a/) | VesperMakerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x980e76...c8e697`](./contracts/ethereum-1/0x980e7693fdbba39ba75a9be85cda6c336ec8e697/) | VesperMakerStrategyETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59543a...ad29c0`](./contracts/ethereum-1/0x59543a595b69897b295f12964d3c7c37b3ad29c0/) | VesperMakerStrategyLINK | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36f9e7...5efdcb`](./contracts/ethereum-1/0x36f9e78aa9012ff2df8923074de3fa52075efdcb/) | VesperRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2ddf...4d3db4`](./contracts/ethereum-1/0x0e2ddfc22afed1ac0476685fb81cc237434d3db4/) | VesperV3StrategyDAI | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebedfd...e29b23`](./contracts/ethereum-1/0xebedfd259c9fb1f5c0ab9a9f24e79f8d80e29b23/) | VesperVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaff40f...f1a736`](./contracts/ethereum-1/0xaff40fc748bb27ceffed88c0e9fd39027ff1a736/) | VSPT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf858a3...fb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | VUNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0648e5...7957cf`](./contracts/ethereum-1/0x0648e517670d71ba46d7a27ba04677db7c7957cf/) | VUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | VVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0129c6...de930d`](./contracts/ethereum-1/0x0129c6f26ba8ab0f9575ffe2c0678253a5de930d/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39299e...4e5453`](./contracts/arbitrum-42161/0x39299e7153c28faf4420ca4126f0d834874e5453/) | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c2c6f...01bcf8`](./contracts/ethereum-1/0x3c2c6fa5398cdd933465f6fd04f3575f7201bcf8/) | WstETHAdapterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x736fa6...cfc4df`](./contracts/arbitrum-42161/0x736fa66a6f4457b29e5a4b1dc78ac1b1d9cfc4df/) | YTokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 214 |
| upstream | 30 |
| standard_library | 21 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, low=1
- Match method counts: extraction_exact=114

Zero-match audit list:

- [4307] - [View Report]()
- [9760] 2025-05-19-spearbit.pdf
- [9762] 2025-08-11-spearbit.pdf
- [9763] 2025-09-15-blackthorn.pdf
- [9764] 2025-09-15-chainsecurity.pdf

Fork inheritance lineage and inherited audits are included when available.
