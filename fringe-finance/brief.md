# Agentic Audit Brief: Fringe Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 8.0% over 90 days

## Project Overview

- Project: Fringe Finance (`fringe-finance`)
- Website: [https://fringe.fi](https://fringe.fi)
- Lifecycle: unknown (Tier 0, 90.9% below peak)
- Generated: 2026-06-21T06:42:39.658Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, ethereum, optimism, polygon, zksync-era
- Contract surface: 232 unique implementations (336 raw deployments)
- DeFi Llama TVL: $45,141.00
- On-chain TVL (included contracts): $2,140,402,481.08
- TVL by chain: Ethereum $1,416,908,452.82 | Arbitrum $479,154,278.25 | Base $183,502,851.73 | Optimism $32,553,736.74 | Polygon $28,283,161.54

## Contract Surface Quality

- Indexed contracts: 3609; live-surface contracts included: 336 (336 live, 0 unknown).
- Excluded by liveness: 2338 inactive, 935 singleton, 0 uninitialized.
- Deployment units: 45/396 live.
- Detected codebases: compound-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 13/277.

## Audit Coverage Summary

- Verified implementations audited: 0/213 (0.0%)
- Verified + Unaudited implementations: 213
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 232
- Raw deployments: 336
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,140,402,481.08
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $2,140,402,481.08 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (213)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ENSToken | token | ethereum | n/a | [`0xc18360...7f9d72`](./contracts/ethereum-1/0xc18360217d8f7ab5e7c516566761ea12ce7f9d72/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-41454 (12 proxies) | 12 deployments: arbitrum [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/); arbitrum `0x13ad51...5efa60`; arbitrum `0x2f2a25...fc5b0f`; arbitrum `0x561877...be0766`; arbitrum `0x93b346...41425b`; arbitrum `0xae6aab...aba689`; arbitrum `0xd4d42f...85c61a`; arbitrum `0xe4dddf...dc01cb`; arbitrum `0xe72ba9...a37333`; arbitrum `0xec70dc...a5ffa8`; arbitrum `0xf97f4d...539fb4`; arbitrum `0xfa7f89...f1f7f0` | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/); ethereum `0x5a98fc...ef1b32` | ⚠️ Unaudited |
| GraphToken | token | ethereum | n/a | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| DSToken | token | ethereum | n/a | [`0x9f8f72...a579a2`](./contracts/ethereum-1/0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2/) | ⚠️ Unaudited |
| ProxyERC20 | token | ethereum | n/a | [`0xc011a7...af2a6f`](./contracts/ethereum-1/0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f/) | ⚠️ Unaudited |
| DegenToken | token | base | n/a | [`0x4ed4e8...efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | ⚠️ Unaudited |
| BrettToken | token | base | n/a | [`0x532f27...b142e4`](./contracts/base-8453/0x532f27101965dd16442e59d40670faf5ebb142e4/) | ⚠️ Unaudited |
| SushiToken | token | ethereum | n/a | [`0x6b3595...c90fe2`](./contracts/ethereum-1/0x6b3595068778dd592e39a122f4f5a5cf09c90fe2/) | ⚠️ Unaudited |
| Tranche | core_logic | base | unit-41425 | [`0x944766...c9e7f9`](./contracts/base-8453/0x944766f715b51967e56afde5f0aa76ceacc9e7f9/) | ⚠️ Unaudited |
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x6cdcb1...fb971d`](./contracts/base-8453/0x6cdcb1c4a4d1c3c6d054b27ac5b77e89eafb971d/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-41280 | [`0x03b54a...b3bccd`](./contracts/polygon-137/0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd/) | ⚠️ Unaudited |
| GainsNetworkToken | token | arbitrum | n/a | [`0x18c11f...63a122`](./contracts/arbitrum-42161/0x18c11fd286c5ec11c3b683caa813b77f5163a122/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| MaviaToken | token | ethereum | n/a | [`0x24fcfc...c93584`](./contracts/ethereum-1/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | 5 deployments: optimism [`0x9bcef7...8eb81d`](./contracts/optimism-10/0x9bcef72be871e61ed4fbbc7630889bee758eb81d/); optimism `0x9e1028...6840e0`; optimism `0xa00e3a...753819`; optimism `0xc40f94...7b2819`; optimism `0xfdb794...96735f` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-41380 | [`0xd6df93...21c90b`](./contracts/polygon-137/0xd6df932a45c0f255f85145f286ea0b292b21c90b/) | ⚠️ Unaudited |
| GrailTokenV2 | token | arbitrum | n/a | [`0x3d9907...0982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | ⚠️ Unaudited |
| PerpToken | token | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| LinkTokenOptimism | token | optimism | n/a | [`0x350a79...ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| SandRewardPool | core_logic | polygon | n/a | [`0xa6e383...669abd`](./contracts/polygon-137/0xa6e383bda26e4c52a3a3a3463552c42494669abd/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-41308 | [`0x385eea...fb54a7`](./contracts/polygon-137/0x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7/) | ⚠️ Unaudited |
| VaultManager | core_logic | base | unit-41431 | [`0xe9fb8c...7348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| ERC20RewardPool | core_logic | polygon | n/a | [`0xd3a9ca...3d8b8f`](./contracts/polygon-137/0xd3a9caa25393765c05ce9f332b5e33b5e33d8b8f/) | ⚠️ Unaudited |
| JoeTokenOFT | token | arbitrum | n/a | [`0x371c7e...f52f07`](./contracts/arbitrum-42161/0x371c7ec6d8039ff7933a2aa28eb827ffe1f52f07/) | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| NFT | token | ethereum | n/a | [`0x198d14...3f850a`](./contracts/ethereum-1/0x198d14f2ad9ce69e76ea330b374de4957c3f850a/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-41354 | [`0x9a7101...0e76a3`](./contracts/polygon-137/0x9a71012b13ca4d3d0cdc72a177df3ef03b0e76a3/) | ⚠️ Unaudited |
| UChildERC20 | token | ethereum | n/a | 2 deployments: ethereum [`0x2791bc...a84174`](./contracts/ethereum-1/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/); polygon `0x422432...804046` | ⚠️ Unaudited |
| VelaToken | token | arbitrum | n/a | [`0x088cd8...0cd704`](./contracts/arbitrum-42161/0x088cd8f5ef3652623c22d48b1605dcfe860cd704/) | ⚠️ Unaudited |
| Tranche | core_logic | base | unit-41419 | [`0x83084c...7b66f7`](./contracts/base-8453/0x83084cb182162473d6feffcd3aa48ba55a7b66f7/) | ⚠️ Unaudited |
| PolygonLandWeightedSANDRewardPool | core_logic | polygon | n/a | [`0x4ab071...b20f30`](./contracts/polygon-137/0x4ab071c42c28c4858c4bac171f06b13586b20f30/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| LandWeightedSANDRewardPool | core_logic | ethereum | n/a | [`0xeae6fd...60b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| ReferralStorage | token | arbitrum | n/a | [`0xe6fab3...06e99d`](./contracts/arbitrum-42161/0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d/) | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | unit-41509 | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | unit-41416 | [`0x7bf094...8efb05`](./contracts/base-8453/0x7bf094c44b3cff8c95e06a76557443f5408efb05/) | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | arbitrum | n/a | 4 deployments: arbitrum [`0x018d9a...f9f27e`](./contracts/arbitrum-42161/0x018d9a3f0d06ccb7c305b7c9219a4307e1f9f27e/); arbitrum `0x4ca163...30e0d1`; arbitrum `0x990ba9...a4a23d`; arbitrum `0xbf55c7...d47982` | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | unit-41414 | [`0x691411...d21693`](./contracts/base-8453/0x6914110efe4e61cfa0f28de5f6606baa33d21693/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | unit-41448 | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-41520 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | ethereum | n/a | [`0xfde4c9...699bb2`](./contracts/ethereum-1/0xfde4c96c8593536e31f229ea8f37b2ada2699bb2/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-41567 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| Asset | unknown | ethereum | n/a | [`0x067a1e...d299a8`](./contracts/ethereum-1/0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8/) | ⚠️ Unaudited |
| AssetSignedAuction | unknown | ethereum | n/a | [`0x921fd4...4c2858`](./contracts/ethereum-1/0x921fd42f147b26b51aa3c7fa3f2e2ce7704c2858/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | ethereum | n/a | [`0xfac7be...b31e04`](./contracts/ethereum-1/0xfac7bea255a6990f749363002136af6556b31e04/) | ⚠️ Unaudited |
| BatchSender | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x5179d7...3107a6` | ⚠️ Unaudited |
| Bitcoin | unknown | ethereum | n/a | [`0x72e4f9...4eeea9`](./contracts/ethereum-1/0x72e4f9f808c49a2a61de9c5896298920dc4eeea9/) | ⚠️ Unaudited |
| BTT | unknown | ethereum | n/a | [`0xc66992...797957`](./contracts/ethereum-1/0xc669928185dbce49d2230cc9b0979be6dc797957/) | ⚠️ Unaudited |
| CamelotFactory | registry | arbitrum | n/a | [`0x6eccab...43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | ⚠️ Unaudited |
| Chain | unknown | ethereum | n/a | [`0xa2cd3d...94fb18`](./contracts/ethereum-1/0xa2cd3d43c775978a96bdbf12d733d5a1ed94fb18/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-41363 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | optimism | n/a | 2 deployments: optimism [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/); arbitrum `0x9d2f29...a988a7` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | arbitrum | n/a | 5 deployments: optimism `0x484c2d...36578c`; optimism `0x680641...b9838b`; optimism `0x8368dc...428dee`; arbitrum [`0x178412...770c2a`](./contracts/arbitrum-42161/0x178412e79c25968a32e89b11f63b33f733770c2a/); arbitrum `0x95ab45...053f39` | ⚠️ Unaudited |
| CrossChainOracle | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/); arbitrum `0xe5fd90...b9a474` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | operational_periphery | arbitrum | n/a | 3 deployments: optimism `0x7655a3...23d502`; optimism `0xc55a7f...f83071`; arbitrum [`0x6a0fc2...7f3d03`](./contracts/arbitrum-42161/0x6a0fc220d129f4d21e40764ed0bea4ec777f3d03/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/); arbitrum `0xda1000...000da1` | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/); arbitrum `0xd4f3dc...47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | arbitrum | n/a | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/); ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | arbitrum | n/a | [`0x01caaa...5fa5e2`](./contracts/arbitrum-42161/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2/) | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | optimism | unit-41263 | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | unit-41193 | [`0x40ec5b...5bbbdf`](./contracts/ethereum-1/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf/) | ⚠️ Unaudited |
| ERC20SubToken | token | ethereum | n/a | 9 deployments: ethereum [`0x3b8af2...ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/); ethereum `0x3d0c16...442cbb`; ethereum `0x3d0e26...db539b`; ethereum `0x483305...4f0a78`; ethereum `0x53b5f2...16c8b6`; ethereum `0x68fa88...4012ea`; ethereum `0x725079...919b18`; ethereum `0x939d2a...226070`; ethereum `0xe4315c...865e95` | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0xf42ae1...a426ca`](./contracts/arbitrum-42161/0xf42ae1d54fd613c9bb14810b0588faaa09a426ca/) | ⚠️ Unaudited |
| EtherPredicate | unknown | ethereum | unit-41213 | [`0x8484ef...922b30`](./contracts/ethereum-1/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30/) | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | ethereum | n/a | [`0xc32659...27231d`](./contracts/ethereum-1/0xc32659651d137a18b79925449722855aa327231d/) | ⚠️ Unaudited |
| EXCLegacyToken | token | arbitrum | n/a | [`0x83bbc9...13c3b5`](./contracts/arbitrum-42161/0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5/) | ⚠️ Unaudited |
| Execute | unknown | base | unit-41429 | [`0xdbdd7b...2c306a`](./contracts/base-8453/0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a/) | ⚠️ Unaudited |
| FairAuction | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0ca4fc...f6c20b`](./contracts/arbitrum-42161/0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b/); arbitrum `0x149ace...87975b`; arbitrum `0x2eb79e...36ffe1` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | arbitrum | n/a | [`0x11d628...f43bb7`](./contracts/arbitrum-42161/0x11d62807dae812a0f1571243460bf94325f43bb7/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | unit-41245 | [`0xcbb7c0...ed33bf`](./contracts/ethereum-1/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-41427 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-41233 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-41412 (2 proxies) | 2 deployments: base [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589...a02913` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| FRAXShares | unknown | ethereum | n/a | [`0x3432b6...c964d0`](./contracts/ethereum-1/0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0/) | ⚠️ Unaudited |
| frxETH | unknown | ethereum | n/a | [`0x5e8422...8caa1f`](./contracts/ethereum-1/0x5e8422345238f34275888049021821e8e08caa1f/) | ⚠️ Unaudited |
| frxETHMinter | unknown | ethereum | n/a | [`0xbafa44...9c1138`](./contracts/ethereum-1/0xbafa44efe7901e04e39dad13167d089c559c1138/) | ⚠️ Unaudited |
| FundRetriever | unknown | ethereum | unit-41217 | [`0x912ce5...9e6548`](./contracts/ethereum-1/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GainsNetworkNft1 | token | arbitrum | n/a | [`0x75cbcc...2d6f89`](./contracts/arbitrum-42161/0x75cbcc5414c539c2b302a5fa60e30b949d2d6f89/) | ⚠️ Unaudited |
| GainsNetworkNft2 | token | arbitrum | n/a | [`0xd1f024...8e8a4e`](./contracts/arbitrum-42161/0xd1f024ba4dbb1593b486cb5031b3ac5ac28e8a4e/) | ⚠️ Unaudited |
| GainsNetworkNft3 | token | arbitrum | n/a | [`0x983415...84b384`](./contracts/arbitrum-42161/0x9834159eaf9811cf4c568294d5c7c9158f84b384/) | ⚠️ Unaudited |
| GainsNetworkNft4 | token | arbitrum | n/a | [`0x40f0ae...1a21a1`](./contracts/arbitrum-42161/0x40f0aeab6383be2f254ce40b79089070fa1a21a1/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0xfc5a1a...35ad0a`](./contracts/arbitrum-42161/0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a/) | ⚠️ Unaudited |
| GnosisToken | token | ethereum | n/a | [`0x6810e7...386b96`](./contracts/ethereum-1/0x6810e776880c02933d47db1b9fc05908e5386b96/) | ⚠️ Unaudited |
| GNSTradingInteractions | unknown | arbitrum | n/a | [`0x9197b7...db471a`](./contracts/arbitrum-42161/0x9197b730af08b9f8b5ab233560feb2ecd1db471a/) | ⚠️ Unaudited |
| GTokenLockedDepositNft | token | arbitrum | n/a | [`0xd846b1...df3804`](./contracts/arbitrum-42161/0xd846b17a07e26f9832f8de940101c5f764df3804/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| L1GNS | unknown | ethereum | unit-41240 | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | unit-41258 | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | unit-41526 | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | unit-41446 | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2DaiGateway | unknown | arbitrum | n/a | [`0x467194...c76c65`](./contracts/arbitrum-42161/0x467194771dae2967aef3ecbedd3bf9a310c76c65/) | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | optimism | unit-41271 | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | unit-41492 | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2TBTC | unknown | optimism | unit-41267 | [`0x6c84a8...d0de40`](./contracts/optimism-10/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| L2TBTC | unknown | polygon | unit-41298 | [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2TBTC | unknown | base | unit-41405 | [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-41511 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| Land | unknown | ethereum | n/a | [`0x50f547...fd6d4a`](./contracts/ethereum-1/0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a/) | ⚠️ Unaudited |
| Launchpad | unknown | arbitrum | n/a | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | n/a | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LRC_v2 | unknown | ethereum | n/a | [`0xbbbbca...7aeafd`](./contracts/ethereum-1/0xbbbbca6a901c926f240b89eacb641d8aec7aeafd/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: base [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/); base `0x223039...ed52e1` | ⚠️ Unaudited |
| MaticToken | token | ethereum | n/a | [`0x7d1afa...cfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MaviaOFT | unknown | base | n/a | [`0x24fcfc...c93584`](./contracts/base-8453/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | ⚠️ Unaudited |
| MaviaOFTAdapter | adapter | ethereum | n/a | [`0xe6c2b6...7abd4d`](./contracts/ethereum-1/0xe6c2b672b3eb64a1f460adcd9676a3b6c67abd4d/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| MerklePatriciaProof | operational_periphery | ethereum | n/a | [`0xa6fa4f...d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| MintableBaseToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x352471...486921`](./contracts/arbitrum-42161/0x35247165119b69a40edd5304969560d0ef486921/); arbitrum `0x626010...95a954` | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x842ec2...c54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| MultiGiveaway | unknown | polygon | n/a | [`0x214d52...dd4020`](./contracts/polygon-137/0x214d52880b1e4e17d020908cd8eaa988ffdd4020/) | ⚠️ Unaudited |
| Ondo | unknown | ethereum | n/a | [`0xfaba6f...269be3`](./contracts/ethereum-1/0xfaba6f8e4a5e8ab82f62fe7c39859fa577269be3/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x368181...86b8c6`](./contracts/base-8453/0x368181499736d0c0cc614dbb145e2ec1ac86b8c6/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| PairInfos | periphery | base | unit-41418 | [`0x81f22d...d977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | ⚠️ Unaudited |
| PolygonLand | unknown | polygon | unit-41357 | [`0x9d305a...dce63f`](./contracts/polygon-137/0x9d305a42a3975ee4c1c57555bed5919889dce63f/) | ⚠️ Unaudited |
| PolygonSand | unknown | polygon | n/a | [`0xbbba07...695683`](./contracts/polygon-137/0xbbba073c31bf03b8acf7c28ef0738decf3695683/) | ⚠️ Unaudited |
| Portico | unknown | base | n/a | 4 deployments: ethereum `0x48b610...e6f476`; ethereum `0x4db168...b9d06e`; base [`0x4568aa...9be9bf`](./contracts/base-8453/0x4568aa1ea0ed54db666c58b4526b3fc9bd9be9bf/); base `0x610d4d...6a1889` | ⚠️ Unaudited |
| PositionManager | governance | arbitrum | n/a | [`0x75e42e...8a4a0c`](./contracts/arbitrum-42161/0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c/) | ⚠️ Unaudited |
| PositionRouter | adapter | arbitrum | n/a | [`0xb87a43...b09868`](./contracts/arbitrum-42161/0xb87a436b93ffe9d75c5cfa7bacfff96430b09868/) | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | unit-41413 | [`0x64e262...3da511`](./contracts/base-8453/0x64e2625621970f8cfa17b294670d61cb883da511/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| ProtocolEarnings | unknown | arbitrum | n/a | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | n/a | [`0x226159...ed68b8`](./contracts/ethereum-1/0x226159d592e2b063810a10ebf6dcbada94ed68b8/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | unit-41197 | [`0x4976fb...baba41`](./contracts/ethereum-1/0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0xb5c064...94ee17`](./contracts/polygon-137/0xb5c064f955d8e7f38fe0460c556a72987494ee17/) | ⚠️ Unaudited |
| RadiantOFT | unknown | arbitrum | n/a | [`0x3082cc...50aaa0`](./contracts/arbitrum-42161/0x3082cc23568ea640225c2467653db90e9250aaa0/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0xa96f57...dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5c04a1...90150d`](./contracts/arbitrum-42161/0x5c04a12eb54a093c396f61355c6da0b15890150d/); arbitrum `0x986b4e...7f43aa` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x1addd8...4c8903`; arbitrum `0x4e971a...5400b6`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | unit-41234 | [`0xa0c68c...c77c77`](./contracts/ethereum-1/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | n/a | 2 deployments: base `0xcf77a3...874e43`; arbitrum [`0xabbc5f...2f4064`](./contracts/arbitrum-42161/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/) | ⚠️ Unaudited |
| Sand | unknown | ethereum | n/a | [`0x3845ba...03a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | ⚠️ Unaudited |
| sfrxETH | unknown | ethereum | n/a | [`0xac3e01...bbe38f`](./contracts/ethereum-1/0xac3e018457b222d93114458476f3e3416abbe38f/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| StakedGlp | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f546a...3e89ae`](./contracts/arbitrum-42161/0x2f546ad4edd93b956c8999be404cdcafde3e89ae/); arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| SUN | unknown | ethereum | n/a | [`0xf6a36a...bfb505`](./contracts/ethereum-1/0xf6a36a5a942dec8bb60e5cbf005d70d89abfb505/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | n/a | 8 deployments: ethereum `0x1a9c81...be35bc`; arbitrum [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/); arbitrum `0x460e1a...82bc6e`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | n/a | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | ⚠️ Unaudited |
| Trading | unknown | base | unit-41411 | [`0x5ff292...20535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | ⚠️ Unaudited |
| TradingStorage | unknown | base | unit-41422 | [`0x8a311d...f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| TRX | unknown | ethereum | n/a | [`0x50327c...f87ab5`](./contracts/ethereum-1/0x50327c6c5a14dcade707abad2e27eb517df87ab5/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-41373 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| Uni | unknown | ethereum | n/a | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0d4a11...1f1852`](./contracts/ethereum-1/0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852/); polygon `0x34965b...8dea27`; polygon `0xc4e595...0bac0e`; polygon `0xe62ec2...f89816`; polygon `0xfc4912...9cba04` | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | token | base | unit-41406 | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | ⚠️ Unaudited |
| USDT | token | optimism | n/a | 2 deployments: optimism [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/); base `0xfde4c9...699bb2` | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| Vester | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x7c100c...df49b2`; arbitrum `0xa75287...72042e` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3669c4...fce737`](./contracts/ethereum-1/0x3669c421b77340b2979d1a00a792cc2ee0fce737/); ethereum `0x707f91...963fc8`; ethereum `0xbbcf16...8b29cf`; ethereum `0xc8418a...adc5b0` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | unit-41236 | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/); optimism `0x68f180...0a2095` | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 3 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/); base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | unit-41242 | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| XGrailToken | token | arbitrum | n/a | [`0x3caae2...3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3355df...83aaf4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3a287a...31cecd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3ecf9b...609f17` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x493257...52ba4c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4b9eb6...8cb656` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5a7d6b...7eaf3e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x703b52...9fe867` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x787c09...9ee508` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x8f1d37...a9fec8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbbeb51...281011` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbf26d0...000e7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x279fa5...ade413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77025d...405aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dbc6c...3fdde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa8a6...6184fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e01e...4606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2b2a9...273bd6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fringe Finance.pdf](https://github.com/HashEx/public_audits/blob/master/Fringe%20Finance/Fringe%20Finance.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 232 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=450

Zero-match audit list:

- [13140] Fringe Finance.pdf

Fork inheritance lineage and inherited audits are included when available.
