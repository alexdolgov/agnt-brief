# Agentic Audit Brief: Synapse

⚠️ Lifecycle status: DECLINING - TVL dropped 18.9% over 90 days

## Project Overview

- Project: Synapse (`synapse`)
- Website: [https://synapseprotocol.com](https://synapseprotocol.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:48.956Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, blast, boba, bsc, canto, cronos, ethereum, fantom, harmony, klaytn, linea, metis, moonbeam, moonriver, optimism, polygon, scroll
- Contract surface: 236 unique implementations (494 raw deployments)
- DeFi Llama TVL: $11,745,060.65
- On-chain TVL (included contracts): $25,569,883.31
- TVL by chain: Ethereum $25,569,883.31

## Contract Surface Quality

- Indexed contracts: 2632; live-surface contracts included: 494 (153 live, 341 unknown).
- Excluded by liveness: 2102 inactive, 36 singleton, 0 uninitialized.
- Deployment units: 12/39 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 14/117.

## Audit Coverage Summary

- Verified implementations audited: 0/112 (0.0%)
- Verified + Unaudited implementations: 106
- Verified by bytecode match: 6
- Unverified implementations: 124
- Unique implementations: 236
- Raw deployments: 494
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $25,569,883.31
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $25,569,883.31 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (106)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| yVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x24129b...975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/); ethereum `0xb17640...af9567`; ethereum `0xcd6997...e70e84` | ⚠️ Unaudited |
| AaveSwap | unknown | avalanche | n/a | [`0x77a7e6...212d44`](./contracts/avalanche-43114/0x77a7e60555bc18b4be44c181b2575eee46212d44/) | ⚠️ Unaudited |
| AgEURNameable | unknown | ethereum | unit-29696 | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| AmplificationUtils | unknown | base | n/a | 6 deployments: polygon `0x6f4e8e...dc19c9`; polygon `0xa1f889...e59cc3`; metis `0xdb9f78...8f5069`; base [`0x003107...b51dce`](./contracts/base-8453/0x003107b3aeee133804eabe7d1df200ddfbb51dce/); arbitrum [`0x003107...b51dce`](./contracts/arbitrum-42161/0x003107b3aeee133804eabe7d1df200ddfbb51dce/); arbitrum `0xffd73e...a218e8` | ⚠️ Unaudited |
| AToken | token | avalanche | unit-29725 | [`0x53f7c5...492f21`](./contracts/avalanche-43114/0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21/) | ⚠️ Unaudited |
| BalancePass | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2fd0ff...9adbb7`](./contracts/ethereum-1/0x2fd0ff45263143dcd616ecada45c0d22e49adbb7/); ethereum `0x3707cf...ec8d91` | ⚠️ Unaudited |
| BaseSwapDeposit | unknown | arbitrum | n/a | [`0x544450...733381`](./contracts/arbitrum-42161/0x544450ffdfa5ea20528f21918e8aac7b2c733381/) | ⚠️ Unaudited |
| BatchSender | periphery | avalanche | n/a | [`0xf0f929...d4957b`](./contracts/avalanche-43114/0xf0f929162751dd723fba5b86a9b3c88dc1d4957b/) | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | polygon | n/a | [`0x7f1bae...f125e2`](./contracts/polygon-137/0x7f1baeb399997e1eca9a090a4df6decbd4f125e2/) | ⚠️ Unaudited |
| BridgeConfigV2 | operational_periphery | polygon | n/a | 5 deployments: polygon [`0x594863...df6df4`](./contracts/polygon-137/0x5948635463a9c8cecaa17b5d9ba846d789df6df4/); polygon `0x8c7d54...e82cc3`; polygon `0x93616b...29713c`; polygon `0xce02a6...d94866`; polygon `0xd4d277...9952d2` | ⚠️ Unaudited |
| BridgeConfigV3 | operational_periphery | polygon | n/a | 5 deployments: polygon [`0x50042b...0115c8`](./contracts/polygon-137/0x50042b5afeee30426ce48be43c9cefb7400115c8/); polygon `0xb51e73...e61c6a`; polygon `0xbaf195...b3f6f9`; polygon `0xc53051...ca1efc`; polygon `0xdedfe3...fa9dd9` | ⚠️ Unaudited |
| BytesManipulation | unknown | arbitrum | n/a | [`0x594863...df6df4`](./contracts/arbitrum-42161/0x5948635463a9c8cecaa17b5d9ba846d789df6df4/) | ⚠️ Unaudited |
| Coin | unknown | ethereum | n/a | [`0x064202...0e1701`](./contracts/ethereum-1/0x0642026e7f0b6ccac5925b4e7fa61384250e1701/) | ⚠️ Unaudited |
| CrossHop | unknown | metis | n/a | [`0x6c8c6e...04e3b3`](./contracts/metis-1088/0x6c8c6e68604e78b549c96907bfe9ebdaac04e3b3/) | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | ethereum | n/a | [`0x20d1b5...e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | ⚠️ Unaudited |
| DisbursementCliff | unknown | ethereum | n/a | [`0x833666...7f11fd`](./contracts/ethereum-1/0x8336660efbdec2ee59bc1be183046470f47f11fd/) | ⚠️ Unaudited |
| ECDSAFactory | registry | polygon | n/a | [`0x07ca54...0c7b17`](./contracts/polygon-137/0x07ca54031c81a76fc943d00ce2423fa8f60c7b17/) | ⚠️ Unaudited |
| ECDSANodeManagement | unknown | polygon | n/a | [`0x1bfe50...dbff8f`](./contracts/polygon-137/0x1bfe50bb2a8a75fefa46892db10313898ddbff8f/) | ⚠️ Unaudited |
| EsGMX | unknown | avalanche | n/a | [`0xff1489...6ddd17`](./contracts/avalanche-43114/0xff1489227bbaac61a9209a08929e4c2a526ddd17/) | ⚠️ Unaudited |
| FastBridge | operational_periphery | linea | n/a | 7 deployments: ethereum `0x5523d3...0fb59e`; optimism `0x5523d3...0fb59e`; base `0x5523d3...0fb59e`; arbitrum `0x5523d3...0fb59e`; linea [`0x34f527...9f24dd`](./contracts/linea-59144/0x34f52752975222d5994c206ce08c1d5b329f24dd/); blast [`0x34f527...9f24dd`](./contracts/blast-81457/0x34f52752975222d5994c206ce08c1d5b329f24dd/); scroll `0x5523d3...0fb59e` | ⚠️ Unaudited |
| FastBridgeRouterV2 | operational_periphery | ethereum | n/a | [`0x00cd00...690000`](./contracts/ethereum-1/0x00cd000000003f7f682be4813200893d4e690000/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0xabbc5f...2f4064`](./contracts/avalanche-43114/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/); avalanche `0xe547ca...d02fd2` | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | ethereum | n/a | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | ⚠️ Unaudited |
| GMX | unknown | avalanche | n/a | [`0x62edc0...11c661`](./contracts/avalanche-43114/0x62edc0692bd897d2295872a9ffcac5425011c661/) | ⚠️ Unaudited |
| gOHM | unknown | ethereum | n/a | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| GovernanceTokenPausable | token | ethereum | n/a | [`0x98585d...237d96`](./contracts/ethereum-1/0x98585dfc8d9e7d48f0b1ae47ce33332cf4237d96/) | ⚠️ Unaudited |
| HIGH | unknown | ethereum | n/a | [`0x71ab77...420282`](./contracts/ethereum-1/0x71ab77b7dbb4fa7e017bc15090b2163221420282/) | ⚠️ Unaudited |
| L2BridgeZap | operational_periphery | avalanche | n/a | 5 deployments: polygon `0x1c6ae1...af9cc8`; arbitrum `0x265326...dd08d8`; arbitrum `0x375e92...7089f9`; arbitrum `0x37f9ae...b3862b`; avalanche [`0x0ef812...9c2f3a`](./contracts/avalanche-43114/0x0ef812f4c68dc84c22a4821ef30ba2ffab9c2f3a/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xfea5e2...b61e1c`](./contracts/ethereum-1/0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0xcfbd94...469223`](./contracts/ethereum-1/0xcfbd94a94b4a680af7ff275c842e99af61469223/) | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | ethereum | n/a | [`0xf442e3...6f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | ⚠️ Unaudited |
| MetaSwap | unknown | arbitrum | n/a | 3 deployments: polygon `0xe59916...35bedf`; arbitrum [`0x911766...76f8d6`](./contracts/arbitrum-42161/0x911766fa1a425cb7cccb0377bc152f37f276f8d6/); arbitrum `0xaed5b2...28ddfe` | ⚠️ Unaudited |
| MetaSwapDeployer | unknown | polygon | n/a | 5 deployments: polygon [`0x104127...0b6e9e`](./contracts/polygon-137/0x104127ccd4b1378898916894eb59c97e690b6e9e/); polygon `0x1259ad...9f4454`; polygon `0x88e7af...5c8f7c`; arbitrum `0x84a420...67d32f`; arbitrum `0x9f7200...d15599` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | polygon | n/a | 5 deployments: polygon [`0x41e95b...de945f`](./contracts/polygon-137/0x41e95b1f1c7849c50bb9caf92ab33302c0de945f/); polygon `0x5d5f01...35f21a`; polygon `0x9f7200...d15599`; arbitrum `0x9508bf...73f299`; arbitrum `0xc36501...01d586` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | polygon | n/a | 4 deployments: polygon [`0x809dc5...771036`](./contracts/polygon-137/0x809dc529f07651bd43a172e8db6f4a7a0d771036/); polygon `0xe21a31...b92bfb`; arbitrum `0x874577...ce505f`; arbitrum `0xffc2d6...8c36e9` | ⚠️ Unaudited |
| MiniChefV2 | unknown | blast | n/a | 11 deployments: ethereum `0xd10ef2...0b62cf`; optimism `0xe8c610...12aaa0`; bsc `0x8f5bbb...9c1280`; polygon `0x7875af...418be5`; metis `0xa67b71...e11f0b`; metis `0xab0d8f...34ebf5`; base `0xffc2d6...8c36e9`; arbitrum `0x5d5f01...35f21a`; arbitrum `0x73186f...34e207`; avalanche `0x3a0152...e18249`; blast [`0x3100dc...d6e590`](./contracts/blast-81457/0x3100dc8464a8523306c3c5034de24a8927d6e590/) | ⚠️ Unaudited |
| Multicall2 | periphery | polygon | n/a | 6 deployments: polygon [`0x1d4c2a...7b7d7e`](./contracts/polygon-137/0x1d4c2a246311bb9f827f4c768e277ff5787b7d7e/); polygon `0x244268...fc9fcf`; polygon `0xffc2d6...8c36e9`; metis `0x266557...13bf59`; base `0x22cdc9...49950e`; arbitrum `0xf07d1c...867089` | ⚠️ Unaudited |
| MultiSigWalletFactory | registry | metis | n/a | [`0xb60326...a721af`](./contracts/metis-1088/0xb6032677a85f65ea4932adb25f7514bf04a721af/) | ⚠️ Unaudited |
| NerveMetaBridgeZap | operational_periphery | polygon | n/a | 16 deployments: polygon [`0x06aee5...1f6320`](./contracts/polygon-137/0x06aee5fbada43b3383782b7e7388ab592b1f6320/); polygon `0x077563...2d0f48`; polygon `0x278fd4...8ca709`; polygon `0x2f4617...43d503`; polygon `0x9d526c...345fe6`; polygon `0xb34c67...72e177`; polygon `0xb74141...edd4ab`; polygon `0xe862c9...88b1ca`; polygon `0xff0047...11d54a`; arbitrum `0x244268...fc9fcf`; arbitrum `0x2d8ee8...2596ed`; arbitrum `0x47b359...3bd932`; arbitrum `0x5a5fff...431655`; arbitrum `0x77aa7c...c6feb3`; arbitrum `0x9413b5...cd278e`; arbitrum `0xe1b880...38166c` | ⚠️ Unaudited |
| NewOrderGovernance | unknown | ethereum | n/a | [`0x1b890f...5fabd5`](./contracts/ethereum-1/0x1b890fd37cd50bea59346fc2f8ddb7cd9f5fabd5/) | ⚠️ Unaudited |
| OlympusTokenMigrator | token | ethereum | n/a | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OpynPerpVault | core_logic | ethereum | n/a | [`0x9b8f14...4fde1a`](./contracts/ethereum-1/0x9b8f14554f40705de7908879e2228d2ac94fde1a/) | ⚠️ Unaudited |
| OrderBook | unknown | avalanche | n/a | [`0x4296e3...574ae5`](./contracts/avalanche-43114/0x4296e307f108b2f583ff2f7b7270ee7831574ae5/) | ⚠️ Unaudited |
| PositionManager | governance | avalanche | n/a | [`0xa21b83...dcb866`](./contracts/avalanche-43114/0xa21b83e579f4315951ba658654c371520bdcb866/) | ⚠️ Unaudited |
| PositionRouter | adapter | avalanche | n/a | [`0xfff6d2...6420f8`](./contracts/avalanche-43114/0xfff6d276bc37c61a23f06410dce4a400f66420f8/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | avalanche | n/a | [`0xca8b5f...b97228`](./contracts/avalanche-43114/0xca8b5f2ff7b8d452be8972b44dc026be96b97228/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 10 deployments: polygon `0x3d63cb...0ec1ea`; polygon `0x43eee8...2a6a36`; polygon `0x598aa1...b9dc30`; polygon `0x612f3a...38bcb9`; metis `0x874577...ce505f`; metis `0x9f7200...d15599`; base `0xaed5b2...28ddfe`; arbitrum [`0x1307d4...128955`](./contracts/arbitrum-42161/0x1307d4dabbe0b4403714b15918e27c5018128955/); arbitrum `0x289606...739c15`; arbitrum `0x432036...d69540` | ⚠️ Unaudited |
| ReferralStorage | token | avalanche | n/a | [`0x827ed0...d322f8`](./contracts/avalanche-43114/0x827ed045002ecdabeb6e2b0d1604cf5fc3d322f8/) | ⚠️ Unaudited |
| ReferralStorageTimelock | governance | avalanche | n/a | [`0x370a34...208ac5`](./contracts/avalanche-43114/0x370a34f6200770d79b54080150b61c0326208ac5/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x1de098...4f5554`](./contracts/avalanche-43114/0x1de098faf30bd74f22753c28db17a2560d4f5554/); avalanche `0x8db453...779064` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | avalanche | n/a | 2 deployments: avalanche [`0x82147c...4ba327`](./contracts/avalanche-43114/0x82147c5a7e850ea4e28155df107f2590fd4ba327/); avalanche `0xb70b91...8eb3b3` | ⚠️ Unaudited |
| RewardTracker | unknown | avalanche | n/a | 3 deployments: avalanche [`0x4d268a...3fea13`](./contracts/avalanche-43114/0x4d268a7d4c16ceb5a606c173bd974984343fea13/); avalanche `0x9e295b...299660`; avalanche `0xd2d116...2a728f` | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x5f719c...b6abe8`](./contracts/avalanche-43114/0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8/) | ⚠️ Unaudited |
| rSFI | unknown | ethereum | n/a | [`0x5db451...c28510`](./contracts/ethereum-1/0x5db451f9913c57dc103c6b9df46ff9be42c28510/) | ⚠️ Unaudited |
| SafeERC20 | token | arbitrum | n/a | [`0x882b1b...8277f2`](./contracts/arbitrum-42161/0x882b1b918641bb1b588a111811a55e48a18277f2/) | ⚠️ Unaudited |
| SaffronERC20StakingPool | core_logic | ethereum | n/a | [`0x223cbf...f691c2`](./contracts/ethereum-1/0x223cbf51f154ffe81f29b825ef47b0cad8f691c2/) | ⚠️ Unaudited |
| SaffronLPBalanceToken | token | ethereum | n/a | 7 deployments: ethereum [`0x19e5a6...071faa`](./contracts/ethereum-1/0x19e5a60c1646c921ac592409548d1bce5b071faa/); ethereum `0x28dcaf...3b6ad3`; ethereum `0x29bfed...b89b01`; ethereum `0x372bc2...526de3`; ethereum `0x8218c5...dd900e`; ethereum `0x87c4a2...32792d`; ethereum `0x9be973...84f1ac` | ⚠️ Unaudited |
| Sanctuary | unknown | ethereum | n/a | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | ⚠️ Unaudited |
| sdCRV | unknown | ethereum | n/a | [`0xd1b565...f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | ⚠️ Unaudited |
| SDT | unknown | ethereum | n/a | [`0x73968b...6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/) | ⚠️ Unaudited |
| sdToken | token | ethereum | n/a | 2 deployments: ethereum [`0x402f87...68ac36`](./contracts/ethereum-1/0x402f878bdd1f5c66fdaf0fababcf74741b68ac36/); ethereum `0x752b4c...00f87c` | ⚠️ Unaudited |
| SFI | unknown | ethereum | n/a | [`0xb75342...04902c`](./contracts/ethereum-1/0xb753428af26e81097e7fd17f40c88aaa3e04902c/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | avalanche | n/a | [`0xd90f33...e03470`](./contracts/avalanche-43114/0xd90f337564609e786a039ee39828e902cae03470/) | ⚠️ Unaudited |
| StakeDaoNFT | token | ethereum | n/a | [`0xdd4f84...e66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | ethereum | n/a | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | ethereum | n/a | [`0x6dd223...e38ea2`](./contracts/ethereum-1/0x6dd2236b1e089762cc264c85eebcff195ae38ea2/) | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | ethereum | n/a | [`0x221738...8c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | ⚠️ Unaudited |
| StakedGlp | token | avalanche | n/a | 3 deployments: avalanche [`0x0b82a1...73d57b`](./contracts/avalanche-43114/0x0b82a1ad2138e9f62454ac41b702b64e0b73d57b/); avalanche `0x5643f4...1bcb9d`; avalanche `0xae64d5...896a69` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x798fcf...3295f7`](./contracts/ethereum-1/0x798fcfc792e7aa09c0e08f3395bda5a75c3295f7/); ethereum `0xbc9016...e86cab` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | n/a | 4 deployments: polygon `0xd26664...4a4521`; base `0xaf41a6...f2dc6b`; arbitrum [`0x22cdc9...49950e`](./contracts/arbitrum-42161/0x22cdc93f53ee3f6b8ad66fad6f98915a5349950e/); arbitrum `0x4cdacb...da8007` | ⚠️ Unaudited |
| SwapDeployer | unknown | base | n/a | 8 deployments: polygon `0x911766...76f8d6`; polygon `0xaf41a6...f2dc6b`; polygon `0xba1001...7bcb0f`; polygon `0xdde5be...3606e0`; metis `0xe1e1e6...f3049d`; base [`0x20b587...f358c5`](./contracts/base-8453/0x20b587484e75752adac381ae577a7562e7f358c5/); arbitrum `0x9695fa...7ecc21`; arbitrum `0xaf41a6...f2dc6b` | ⚠️ Unaudited |
| SwapEthWrapper | unknown | arbitrum | n/a | 7 deployments: optimism `0x8c7d5f...32ef7b`; base `0xa9e905...b4ac89`; arbitrum [`0x109523...2f878c`](./contracts/arbitrum-42161/0x109523db4336e01f030ed51c581c3fa9222f878c/); arbitrum `0x1c3fe7...42e102`; arbitrum `0x91fd4e...1573e5`; arbitrum `0xe21a31...b92bfb`; blast `0x43b961...78841c` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | arbitrum | n/a | 16 deployments: ethereum `0x111689...8af2d8`; optimism `0xe27bff...8f5ee9`; optimism `0xf44938...f22004`; bsc `0x28ec0b...ca4d13`; polygon `0x85fcd7...1c3ee5`; polygon `0xaa959e...64892c`; base `0x6223bd...4c225f`; base `0x9508bf...73f299`; arbitrum [`0x0db3fe...6c0dd8`](./contracts/arbitrum-42161/0x0db3fe3b770c95a0b99d1ed6f2627933466c0dd8/); arbitrum `0x9dd329...f0cb40`; arbitrum `0xa06766...c34352`; arbitrum `0xce762c...2c0166`; arbitrum `0xe0fa08...970413`; avalanche `0xed2a7e...abab66`; blast `0x999fcd...4641c0`; blast `0xa4bd1a...32ac9c` | ⚠️ Unaudited |
| SwapQuoter | periphery | base | n/a | 7 deployments: polygon `0x78a83c...075295`; base [`0x06fea8...f42a5c`](./contracts/base-8453/0x06fea8513ff03a0d3f61324da709d4cf06f42a5c/); base `0x78a83c...075295`; base `0xb37a2c...85b07c`; arbitrum `0x1c1fce...372fe1`; arbitrum `0x78a83c...075295`; arbitrum `0xb37a2c...85b07c` | ⚠️ Unaudited |
| SwapQuoterV2 | periphery | base | n/a | 2 deployments: base [`0x9fbff5...dd6b07`](./contracts/base-8453/0x9fbff54b967654b0c76b174d2b95614060dd6b07/); arbitrum [`0x9fbff5...dd6b07`](./contracts/arbitrum-42161/0x9fbff54b967654b0c76b174d2b95614060dd6b07/) | ⚠️ Unaudited |
| SwapUtils | unknown | polygon | n/a | 7 deployments: polygon [`0x20b587...f358c5`](./contracts/polygon-137/0x20b587484e75752adac381ae577a7562e7f358c5/); polygon `0xab0d8f...34ebf5`; polygon `0xd5609c...aab17c`; metis `0xa9e905...b4ac89`; base `0x874577...ce505f`; arbitrum [`0x20b587...f358c5`](./contracts/arbitrum-42161/0x20b587484e75752adac381ae577a7562e7f358c5/); arbitrum `0xe74f2e...373ef0` | ⚠️ Unaudited |
| SynapseBaseAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x2376d5...edb59c`](./contracts/arbitrum-42161/0x2376d589b5029876f866754538025aa1d2edb59c/); arbitrum `0xebb07d...68a8d6` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | ethereum | unit-29697 | [`0x279631...b8ceb6`](./contracts/ethereum-1/0x2796317b0ff8538f253012862c06787adfb8ceb6/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | optimism | unit-29708 | [`0xaf41a6...f2dc6b`](./contracts/optimism-10/0xaf41a65f786339e7911f4acdad6bd49426f2dc6b/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | bsc | unit-29711 | [`0xd123f7...a8749f`](./contracts/bsc-56/0xd123f70ae324d34a9e76b67a27bf77593ba8749f/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | polygon | unit-29715 | [`0x8f5bbb...9c1280`](./contracts/polygon-137/0x8f5bbb2bb8c2ee94639e55d5f41de9b4839c1280/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | base | unit-29719 | [`0xf07d1c...867089`](./contracts/base-8453/0xf07d1c752fab503e47fef309bf14fbdd3e867089/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | arbitrum | unit-29723 | [`0x6f4e8e...dc19c9`](./contracts/arbitrum-42161/0x6f4e8eba4d337f874ab57478acc2cb5bacdc19c9/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | avalanche | unit-29728 | [`0xc05e61...91aace`](./contracts/avalanche-43114/0xc05e61d0e7a63d27546389b7ad62fdff5a91aace/) | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | blast | unit-29730 | [`0x55769b...07ef3c`](./contracts/blast-81457/0x55769baf6ec39b3bf4aae948eb890ea33307ef3c/) | ⚠️ Unaudited |
| SynapseCCTP | unknown | optimism | unit-29704 | [`0x12715a...4bd35e`](./contracts/optimism-10/0x12715a66773bd9c54534a01abf01d05f6b4bd35e/) | ⚠️ Unaudited |
| SynapseCCTP | unknown | polygon | unit-29713 | [`0x12715a...4bd35e`](./contracts/polygon-137/0x12715a66773bd9c54534a01abf01d05f6b4bd35e/) | ⚠️ Unaudited |
| SynapseCCTP | unknown | base | unit-29718 | [`0x12715a...4bd35e`](./contracts/base-8453/0x12715a66773bd9c54534a01abf01d05f6b4bd35e/) | ⚠️ Unaudited |
| SynapseCCTP | unknown | base | n/a | 2 deployments: base [`0xfb2bfc...a74e84`](./contracts/base-8453/0xfb2bfc368a7edfd51aa2cbec513ad50edea74e84/); arbitrum [`0xfb2bfc...a74e84`](./contracts/arbitrum-42161/0xfb2bfc368a7edfd51aa2cbec513ad50edea74e84/) | ⚠️ Unaudited |
| SynapseCCTP | unknown | arbitrum | unit-29721 | [`0x12715a...4bd35e`](./contracts/arbitrum-42161/0x12715a66773bd9c54534a01abf01d05f6b4bd35e/) | ⚠️ Unaudited |
| SynapseERC20Factory | registry | polygon | n/a | 5 deployments: polygon [`0x0adf87...3d2362`](./contracts/polygon-137/0x0adf879bd8215654abdc354b66dbfdfb013d2362/); polygon `0x786e7c...f9165f`; metis `0x22cdc9...49950e`; base `0x6f4e8e...dc19c9`; arbitrum `0xd5609c...aab17c` | ⚠️ Unaudited |
| SynapseRouter | adapter | base | n/a | 10 deployments: ethereum `0x7e7a0e...18c96a`; optimism `0x7e7a0e...18c96a`; polygon `0x7e7a0e...18c96a`; base [`0x25f8fa...8c1f19`](./contracts/base-8453/0x25f8fa4917180ff308883e37ea27ceaeb68c1f19/); base `0x6c8c6e...04e3b3`; base `0x7e7a0e...18c96a`; arbitrum [`0x25f8fa...8c1f19`](./contracts/arbitrum-42161/0x25f8fa4917180ff308883e37ea27ceaeb68c1f19/); arbitrum `0x7e7a0e...18c96a`; arbitrum `0xc6c8e5...2825ad`; avalanche `0x7e7a0e...18c96a` | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | 3 deployments: avalanche [`0x4b5c3c...ca9587`](./contracts/avalanche-43114/0x4b5c3c2682c44c1c2142fbccbfb38a5bffca9587/); avalanche `0x8a68a0...afca75`; avalanche `0x8ea128...bc3718` | ⚠️ Unaudited |
| TimelockController | governance | metis | n/a | 6 deployments: polygon `0x254fec...0bd21f`; polygon `0xa12a03...ec1747`; metis [`0x003107...b51dce`](./contracts/metis-1088/0x003107b3aeee133804eabe7d1df200ddfbb51dce/); metis `0x911766...76f8d6`; base `0xe0fa08...970413`; arbitrum `0xa67b71...e11f0b` | ⚠️ Unaudited |
| TokenManager | governance | avalanche | n/a | 2 deployments: avalanche [`0x7f98d2...d7f653`](./contracts/avalanche-43114/0x7f98d265ba2609c1534d12cf6b0976505ad7f653/); avalanche `0x8b25ba...3b4bc2` | ⚠️ Unaudited |
| TokenVault | core_logic | ethereum | unit-29699 | [`0xbaac2b...fe8899`](./contracts/ethereum-1/0xbaac2b4491727d78d2b78815144570b9f2fe8899/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | 3 deployments: polygon `0xee26d4...aaeab1`; metis [`0x06fea8...f42a5c`](./contracts/metis-1088/0x06fea8513ff03a0d3f61324da709d4cf06f42a5c/); metis `0xaf41a6...f2dc6b` | ⚠️ Unaudited |
| UnilikeAdapter | adapter | arbitrum | n/a | [`0xead21e...9c223d`](./contracts/arbitrum-42161/0xead21e79f2b7a4493b7d587b285c747c809c223d/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x4a86c0...097c31`](./contracts/ethereum-1/0x4a86c01d67965f8cb3d0aaa2c655705e64097c31/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x5af15d...6e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/); ethereum `0xa2761b...075250`; ethereum `0xbc10c4...db7065`; ethereum `0xf3c2bd...56563f`; avalanche `0x9ab2de...5e8595` | ⚠️ Unaudited |
| VeNewO | unknown | ethereum | n/a | [`0x44dd83...068a65`](./contracts/ethereum-1/0x44dd83e0598e7a3709cf0b2e59d3319418068a65/) | ⚠️ Unaudited |
| Vester | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x472361...18b445`](./contracts/avalanche-43114/0x472361d3ca5f49c8e633fb50385bfad1e018b445/); avalanche `0x62331a...a3154a` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | ethereum | unit-29693 | [`0x0c3047...6c9e8a`](./contracts/ethereum-1/0x0c30476f66034e11782938df8e4384970b6c9e8a/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x29f3dd...3e5d92`](./contracts/ethereum-1/0x29f3dd38db24d3935cf1bf841e6b2b461a3e5d92/); ethereum `0x552dad...357851`; ethereum `0x75f8f7...fce882`; ethereum `0xc78fa2...8cf247` | ⚠️ Unaudited |
| WETH | token | moonriver | n/a | 2 deployments: moonriver [`0x98878b...032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/); moonriver `0xa91d6e...296071` | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | [`0x121ab8...350204`](./contracts/optimism-10/0x121ab82b49b2bc4c7901ca46b8277962b4350204/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (6)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SynapseERC20 | token | arbitrum | n/a | 36 deployments: ethereum `0x0f2d71...fd9f29`; optimism `0x5a5fff...431655`; optimism `0x67c10c...a7cd00`; optimism `0x809dc5...771036`; bsc `0x23b891...b817b3`; bsc `0x5f300a...54e68a`; bsc `0xa4080f...9e9484`; polygon `0x50882f...e63f4f`; polygon `0xb6c473...9b02af`; polygon `0xc0384e...35fb37`; polygon `0xca3281...3c140d`; polygon `0xd1c374...1ae46b`; polygon `0xd8ca34...b45195`; polygon `0xf8f9ef...70e695`; metis `0x67c10c...a7cd00`; metis `0x931b8f...211231`; metis `0x9508bf...73f299`; metis `0x961318...5200ab`; metis `0xbda037...46d823`; metis `0xe3c82a...afbf48`; moonbeam `0x1d4c2a...7b7d7e`; moonbeam `0xa1f889...e59cc3`; moonriver `0xd80d86...ad0445`; base `0x432036...d69540`; base `0xa67b71...e11f0b`; base `0xb554a5...06be8c`; arbitrum [`0x080f6a...8f46eb`](./contracts/arbitrum-42161/0x080f6aed32fc474dd5717105dba5ea57268f46eb/); arbitrum `0x2913e8...497688`; arbitrum `0x3ea9b0...cf908e`; arbitrum `0x809dc5...771036`; avalanche `0x1f1e7c...9ca251`; avalanche `0x321e70...f84251`; avalanche `0xcfc37a...1bdf46`; blast `0x3194b0...f6c6e0`; blast `0x9592f0...5ede0e`; blast `0xce9712...ccc855` | ⚠️ Unaudited (bytecode match) |
| LPToken | token | base | n/a | 9 deployments: ethereum `0x1b8476...3dde4f`; polygon `0x432036...d69540`; polygon `0x4cdacb...da8007`; polygon `0x77aa7c...c6feb3`; metis `0xdde5be...3606e0`; base [`0x15ada3...3e100f`](./contracts/base-8453/0x15ada3716a7e589b1c31b7131a0cc546203e100f/); arbitrum [`0x15ada3...3e100f`](./contracts/arbitrum-42161/0x15ada3716a7e589b1c31b7131a0cc546203e100f/); arbitrum `0x997108...345173`; arbitrum `0xe1e1e6...f3049d` | ⚠️ Unaudited (bytecode match) |
| GmxTimelock | unknown | avalanche | n/a | 2 deployments: avalanche [`0x62f455...d561ad`](./contracts/avalanche-43114/0x62f45504f093ebfcc42a88e7443131898dd561ad/); avalanche `0xe57fe4...1d18b9` | ⚠️ Unaudited (bytecode match) |
| SynapseBridge | operational_periphery | polygon | n/a | 36 deployments: bsc `0x279631...b8ceb6`; polygon [`0x00d1c1...a81f40`](./contracts/polygon-137/0x00d1c14a6f0be0c42252d81fec494aa5b9a81f40/); polygon `0x040735...859d46`; polygon `0x145000...2a8cce`; polygon `0x368d26...9bd978`; polygon `0x39ab21...bf75a1`; polygon `0x3c726e...cdc750`; polygon `0x41dec9...0a3ea6`; polygon `0x46aea9...2389df`; polygon `0x5b8365...b83546`; polygon `0x6cd2ba...4b3f7b`; polygon `0x7103a3...f0bab5`; polygon `0x75224b...150ba7`; polygon `0x7b3c1f...d095f2`; polygon `0x85f819...aba8d2`; polygon `0x966e35...f62a8a`; polygon `0xa7f9b7...fdfa8a`; polygon `0xb68281...985d7c`; polygon `0xb899e9...da91fa`; polygon `0xbd6eca...c75e20`; polygon `0xcd8a2e...9fc3c1`; polygon `0xf0284f...c3e022`; polygon `0xf76256...4261e4`; polygon `0xfefd11...acc336`; metis `0x20b587...f358c5`; moonbeam `0x22cdc9...49950e`; base `0x84a420...67d32f`; arbitrum `0x037527...54cf82`; arbitrum `0x15779f...12a873`; arbitrum `0x1b9651...dbe5fd`; arbitrum `0x25544c...6a1490`; arbitrum `0x97a7af...7c9b68`; arbitrum `0xab0d8f...34ebf5`; arbitrum `0xba1001...7bcb0f`; arbitrum `0xe27bff...8f5ee9`; arbitrum `0xf7e621...b26888` | ⚠️ Unaudited (bytecode match) |
| SynapseCCTP | unknown | ethereum | unit-29695 | 2 deployments: ethereum [`0x12715a...4bd35e`](./contracts/ethereum-1/0x12715a66773bd9c54534a01abf01d05f6b4bd35e/); avalanche [`0x12715a...4bd35e`](./contracts/avalanche-43114/0x12715a66773bd9c54534a01abf01d05f6b4bd35e/) | ⚠️ Unaudited (bytecode match) |
| SynapseCCTPRouter | adapter | base | n/a | 8 deployments: ethereum `0xd5a597...902f48`; optimism `0xd5a597...902f48`; polygon `0xd5a597...902f48`; base [`0xd359bc...349ddf`](./contracts/base-8453/0xd359bc471554504f683fbd4f6e36848612349ddf/); base `0xd5a597...902f48`; arbitrum [`0xd359bc...349ddf`](./contracts/arbitrum-42161/0xd359bc471554504f683fbd4f6e36848612349ddf/); arbitrum `0xd5a597...902f48`; avalanche `0xd5a597...902f48` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (124)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x396c9c...ac623b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x991adb...9377c2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xcb6674...8814de` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe27bff...8f5ee9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xfd0f80...a31616` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x003107...b51dce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x06fea8...f42a5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11199a...147f5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20fb56...cba354` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22cdc9...49950e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25556c...eae0b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bc93f...c67596` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c8c6e...04e3b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84a420...67d32f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x874577...ce505f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93124c...a67ed6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9508bf...73f299` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9e905...b4ac89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb60326...a721af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb883a9...57b584` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce762c...2c0166` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd123f7...a8749f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb9f78...8f5069` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe0fa08...970413` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1e1e6...f3049d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecd72d...0aa3b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf07d1c...867089` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe986b...c753b0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6fc938...4f62ca` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x85662f...8dc3b4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8d9ba5...e65fb1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x91fa20...233fdc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xaf41a6...f2dc6b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb003e7...8c0ded` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe55e19...1e25b2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xed2a7e...abab66` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x432036...d69540` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x64b409...427a2d` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x6b4712...28a1cf` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x753bb8...022be5` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x75ff03...72fead` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x964199...a40431` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xb554a5...06be8c` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xd5609c...aab17c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0783a7...c095a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x09fec3...e2e240` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x104127...0b6e9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x244268...fc9fcf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x555982...15f78e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6571d5...a4da81` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x94a423...61eb42` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe37f21...778704` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xffd73e...a218e8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0db672...c781fc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x266557...13bf59` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x47b359...3bd932` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4b9c51...71f9c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4d476a...7c6de4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x537004...fca9f1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66136a...f0a3b3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa8a6fd...607831` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa8d3a6...393dab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb3fb48...107db7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb497c3...cfc9d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd8ef5f...ab612a` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x073795...f2a21c` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x09fec3...e2e240` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x273508...ee91a5` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x555982...15f78e` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x8671a0...c655b7` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x93124c...a67ed6` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0xd8836a...7e8f80` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0xdde5be...3606e0` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0xf60f88...3c22f9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5819b6...e9335f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6270b5...b2c86c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xaf41a6...f2dc6b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xcd6f29...871a86` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xd6dab4...8c05a3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xdcbacf...c37dfa` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xfdbad1...d3833c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x027198...9920e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b74d6...ce778b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x206b46...186e5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2acfa0...b7693a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38770a...97621b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39a095...ae4e71` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x405fe6...d92fef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x464b84...2e5611` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4743cd...39ba1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50042b...0115c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x598aa1...b9dc30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6bf856...9581ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x755895...3a7393` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x966e35...f62a8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6bb4b...6c8152` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac9b0b...9086ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf180c...bcefb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc15241...5134a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc87fc2...d515ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdedfe3...fa9dd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2de28...7739e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebae41...145c92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x091ed8...ce0630` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x101944...5c58e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3502f9...27836a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60145e...16687a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6d03fa...f29444` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x754ec0...f326f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa252b8...08a45f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x24ea0d...963d04` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x3c2b8b...5aba8f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x3ea9b0...cf908e` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x6983d1...3ea013` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x985458...9dfab4` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xaf41a6...f2dc6b` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xb003e7...8c0ded` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xe55e19...1e25b2` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xed2a7e...abab66` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xef977d...0d0339` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 236 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
