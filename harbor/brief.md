# Agentic Audit Brief: Harbor

⚠️ Lifecycle status: UNKNOWN - TVL dropped 31.7% over 90 days

## Project Overview

- Project: Harbor (`harbor`)
- Website: [https://app.harborfinance.io](https://app.harborfinance.io)
- Lifecycle: unknown (Tier 0, 64.4% below peak)
- Generated: 2026-06-21T08:06:47.172Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, ethereum
- Contract surface: 109 unique implementations (157 raw deployments)
- DeFi Llama TVL: $94,132.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Harbor is a DeFi protocol that provides yield-bearing synthetic assets and leveraged tokens by aggregating price feeds and rates. It enables users to gain exposure to various asset pairs (e.g., stETH, USDE, sUSDe) and stock indices through oracle-driven products.

### Architecture

The oracle families (stETH Pairs, USDE Pairs, sUSDe Pairs, fxUSD Pairs, and Leveraged Token Oracles) all rely on the same aggregator infrastructure (HarborDoubleFeedAndRateAggregator_v1, HarborCustomFeedAndRateAggregator_v1, HarborSingleFeedAndRateAggregator_v1) deployed via ERC1967Proxy. The Harbor Core Infrastructure family provides the foundational proxy and likely governance/treasury contracts that manage these oracles and the overall protocol.

## Contract Surface Quality

- Indexed contracts: 376; live-surface contracts included: 157 (142 live, 15 unknown).
- Excluded by liveness: 145 inactive, 74 singleton, 0 uninitialized.
- Deployment units: 1/13 live.
- Detected codebases: none
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/45 (2.2%)
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 2
- Unverified implementations: 64
- Unique implementations: 109
- Raw deployments: 157
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.2% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PriceOracle_v1 | operational_periphery | arbitrum | n/a | 2 deployments: base `0x90e877...0f27e1`; arbitrum [`0x07f347...19a6a5`](./contracts/arbitrum-42161/0x07f347b979fce7cd7bb761feda6bd7dfea19a6a5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aggregator_stETH_AAPL_arbitrum | unknown | arbitrum | n/a | [`0xa8643e...3e3372`](./contracts/arbitrum-42161/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | ⚠️ Unaudited |
| Aggregator_stETH_AMZN_arbitrum | unknown | arbitrum | n/a | [`0x28bbaa...e6edca`](./contracts/arbitrum-42161/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | ⚠️ Unaudited |
| Aggregator_stETH_BOM5_base | unknown | base | n/a | [`0x287733...12b05a`](./contracts/base-8453/0x2877330d6fba9bc0299588bcbaf16ba42d12b05a/) | ⚠️ Unaudited |
| Aggregator_stETH_GOOGL_arbitrum | unknown | arbitrum | n/a | [`0x52b66a...068bd2`](./contracts/arbitrum-42161/0x52b66ad600dc6051cf056951153355d457068bd2/) | ⚠️ Unaudited |
| Aggregator_stETH_MAG7_arbitrum | unknown | arbitrum | n/a | [`0xa8a130...0d1294`](./contracts/arbitrum-42161/0xa8a130bbf041962b60e81009f09c41bd930d1294/) | ⚠️ Unaudited |
| Aggregator_stETH_MAG7i26_arbitrum | unknown | arbitrum | n/a | [`0x436c33...b7fe3d`](./contracts/arbitrum-42161/0x436c33222136554192733c6771669c4b51b7fe3d/) | ⚠️ Unaudited |
| Aggregator_stETH_META_arbitrum | unknown | arbitrum | n/a | [`0x677f59...3bbb72`](./contracts/arbitrum-42161/0x677f597d3013dbf76552ec6c605eeb551d3bbb72/) | ⚠️ Unaudited |
| Aggregator_stETH_MSFT_arbitrum | unknown | arbitrum | n/a | [`0xf18676...66884d`](./contracts/arbitrum-42161/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | ⚠️ Unaudited |
| Aggregator_stETH_NVDA_arbitrum | unknown | arbitrum | n/a | [`0x0d0fdb...7cc310`](./contracts/arbitrum-42161/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | ⚠️ Unaudited |
| Aggregator_stETH_SPY_arbitrum | unknown | arbitrum | n/a | [`0x969fb6...9f2b7f`](./contracts/arbitrum-42161/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | ⚠️ Unaudited |
| Aggregator_stETH_TSLA_arbitrum | unknown | arbitrum | n/a | [`0xda6097...d3e206`](./contracts/arbitrum-42161/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | ⚠️ Unaudited |
| Aggregator_USDE_AAPL_arbitrum | unknown | arbitrum | n/a | [`0x91f5c9...b12621`](./contracts/arbitrum-42161/0x91f5c981c3676af8ee40003c79e96582fdb12621/) | ⚠️ Unaudited |
| Aggregator_USDE_AMZN_arbitrum | unknown | arbitrum | n/a | [`0xf5dafb...d193b5`](./contracts/arbitrum-42161/0xf5dafbf1a1abe5eadc16799e69b7b53c58d193b5/) | ⚠️ Unaudited |
| Aggregator_USDE_GOOGL_arbitrum | unknown | arbitrum | n/a | [`0xc351a5...d3efc0`](./contracts/arbitrum-42161/0xc351a54b3ed4a930d8b30958a112a1e6dcd3efc0/) | ⚠️ Unaudited |
| Aggregator_USDE_MAG7_arbitrum | unknown | arbitrum | n/a | [`0xff37db...942fd7`](./contracts/arbitrum-42161/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | ⚠️ Unaudited |
| Aggregator_USDE_MAG7i26_arbitrum | unknown | arbitrum | n/a | [`0xf36648...cc3fe1`](./contracts/arbitrum-42161/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | ⚠️ Unaudited |
| Aggregator_USDE_META_arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9a3074...d4c69a`](./contracts/arbitrum-42161/0x9a307462964b3936a3a5160e852bf2bfe9d4c69a/); arbitrum `0x9dadff...3e8234` | ⚠️ Unaudited |
| Aggregator_USDE_MSFT_arbitrum | unknown | arbitrum | n/a | [`0x2b6360...f59659`](./contracts/arbitrum-42161/0x2b63607299e7645d883168906befb13cb7f59659/) | ⚠️ Unaudited |
| Aggregator_USDE_NVDA_arbitrum | unknown | arbitrum | n/a | [`0xb772b8...575dd6`](./contracts/arbitrum-42161/0xb772b800982127a3e1489daacbe214b3c8575dd6/) | ⚠️ Unaudited |
| Aggregator_USDE_SPY_arbitrum | unknown | arbitrum | n/a | [`0x657be7...d598c5`](./contracts/arbitrum-42161/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | ⚠️ Unaudited |
| Aggregator_USDE_TSLA_arbitrum | unknown | arbitrum | n/a | [`0x777bd1...683c00`](./contracts/arbitrum-42161/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | ⚠️ Unaudited |
| HarborTripleFeedAndRateAggregator_v2 | unknown | base | n/a | 6 deployments: base [`0x756b95...0036ac`](./contracts/base-8453/0x756b95d0bb61c195d1196eb2143d8d88570036ac/); base `0x7ec5fa...0e4959`; base `0x830ab2...f166d8`; base `0xdc976b...b330a1`; base `0xe2962a...b4a980`; base `0xf9cb23...ebc615` | ⚠️ Unaudited |
| Oracle_stETH_AAPL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x6dc935...5e8c2f`](./contracts/arbitrum-42161/0x6dc935c12818e8213b7764b5c58d1f07645e8c2f/); arbitrum `0xe15183...7b2d20` | ⚠️ Unaudited |
| Oracle_stETH_AMZN_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x31e4be...2e6197`](./contracts/arbitrum-42161/0x31e4be9a43c863e985e2903c707f380fd12e6197/); arbitrum `0xf3b64c...95e319` | ⚠️ Unaudited |
| Oracle_stETH_GOOGL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0facfb...978fdf`](./contracts/arbitrum-42161/0x0facfbbcbb7ee77f6ec8932559bfa98a8e978fdf/); arbitrum `0x88c52a...a75b73` | ⚠️ Unaudited |
| Oracle_stETH_MAG7_arbitrum | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x65cc72...c6907c`](./contracts/arbitrum-42161/0x65cc7256218450542e3b9c04ef413acb87c6907c/); arbitrum `0x898c3a...50f96f`; arbitrum `0x9af8fb...b99907` | ⚠️ Unaudited |
| Oracle_stETH_MAG7i26_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x2fab0a...cc79bb`](./contracts/arbitrum-42161/0x2fab0ad567b92b1b78b2e91e6fc64c4286cc79bb/); arbitrum `0xe5870a...1fbaee` | ⚠️ Unaudited |
| Oracle_stETH_META_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x3fe7ad...5cfc6f`](./contracts/arbitrum-42161/0x3fe7ad560cbade8609b0b7a6f9eb41b6405cfc6f/); arbitrum `0xa2d1b7...173747` | ⚠️ Unaudited |
| Oracle_stETH_MSFT_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x27c8d5...866ea5`](./contracts/arbitrum-42161/0x27c8d5178f742aa67fd653f0c71c5524b6866ea5/); arbitrum `0xd929d4...7fb162` | ⚠️ Unaudited |
| Oracle_stETH_NVDA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x098563...3bb9cb`](./contracts/arbitrum-42161/0x09856313762a225a076bfb2e2445a2680c3bb9cb/); arbitrum `0xcb3340...6241fa` | ⚠️ Unaudited |
| Oracle_stETH_SPY_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x15cc8f...4ddaa9`](./contracts/arbitrum-42161/0x15cc8fca219bce4bca3d6c689cb34532d14ddaa9/); arbitrum `0x2f4313...e7c980` | ⚠️ Unaudited |
| Oracle_stETH_TSLA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x89d139...804a97`](./contracts/arbitrum-42161/0x89d1392ce4eb5b487c7a309e4f650e8427804a97/); arbitrum `0xdba52c...d715ef` | ⚠️ Unaudited |
| Oracle_USDE_AAPL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x94545f...6dd690`](./contracts/arbitrum-42161/0x94545f7d0a58b10ef31d98da956843f9296dd690/); arbitrum `0xfeac74...50aee8` | ⚠️ Unaudited |
| Oracle_USDE_AMZN_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x3a27f4...dd3d04`](./contracts/arbitrum-42161/0x3a27f4f42e8767de00bb1d3b3ba1fc986fdd3d04/); arbitrum `0xa71534...70aeda` | ⚠️ Unaudited |
| Oracle_USDE_GOOGL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x63469a...ec3c77`](./contracts/arbitrum-42161/0x63469a18e9c14b76c7b32010e7b8596e90ec3c77/); arbitrum `0x945248...2532f9` | ⚠️ Unaudited |
| Oracle_USDE_MAG7_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x6c02ba...d78293`](./contracts/arbitrum-42161/0x6c02ba3173e39371de761f2f804dfdc62fd78293/); arbitrum `0xb201f4...7c3103` | ⚠️ Unaudited |
| Oracle_USDE_MAG7i26_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xc19bb5...03d0d6`](./contracts/arbitrum-42161/0xc19bb51cbca03430b8c1c152ebf3298ba003d0d6/); arbitrum `0xde8005...8f15b6` | ⚠️ Unaudited |
| Oracle_USDE_META_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x28d842...b6f435`](./contracts/arbitrum-42161/0x28d842b390d73f37a5e8a33ba038f531dbb6f435/); arbitrum `0x947cd2...dd171f` | ⚠️ Unaudited |
| Oracle_USDE_MSFT_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x69c1b2...348fde`](./contracts/arbitrum-42161/0x69c1b2bb8805add31815dea5ba06423055348fde/); arbitrum `0x99f0c0...593e55` | ⚠️ Unaudited |
| Oracle_USDE_NVDA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0c0a93...daa143`](./contracts/arbitrum-42161/0x0c0a93d76d17d7ae93ff85550cf11fcfc2daa143/); arbitrum `0x814eff...c39489` | ⚠️ Unaudited |
| Oracle_USDE_SPY_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5d9b1b...0078d5`](./contracts/arbitrum-42161/0x5d9b1b4aaceedc2ae4f0bc9332d7c7a1230078d5/); arbitrum `0x7e4f98...a79357` | ⚠️ Unaudited |
| Oracle_USDE_TSLA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x59634b...986aad`](./contracts/arbitrum-42161/0x59634bbe968d969f98ee9f95f94d90ff9b986aad/); arbitrum `0xb2f444...4889a3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | ethereum | unit-41699 | 8 deployments: ethereum [`0x0aa2b6...542b51`](./contracts/ethereum-1/0x0aa2b6ee6d079f39a52725b33b15854505542b51/); ethereum `0x1e326f...d5e492`; ethereum `0x40ff76...5905fd`; ethereum `0x64e72c...d30539`; ethereum `0x68eda2...a594cf`; ethereum `0x7e1d48...94e3c2`; ethereum `0xbae2ca...43ec22`; ethereum `0xc14837...81e69b` | ⚠️ Unaudited (bytecode match) |
| HarborCustomFeedNormalization_v2 | unknown | base | n/a | 14 deployments: ethereum `0x71437c...14c097`; ethereum `0x8f76a2...524a73`; base [`0x19f5ac...5b1389`](./contracts/base-8453/0x19f5ac27905726b81ce91b61d45c0b267d5b1389/); base `0x26b916...238843`; base `0x2f6093...d8fc52`; base `0x4b05cf...5f826c`; base `0x54314f...191d60`; base `0x6fbf25...042755`; base `0x70bd55...f35061`; base `0x76d5eb...67d0d7`; base `0xa4dc9f...20fe91`; base `0xaf3327...41b91e`; base `0xefc5c2...b2ec4e`; base `0xf28c00...c9bfc4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (64)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0d0fdb...7cc310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14816f...f817b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177bb5...aa75ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c0067...65b3e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f7f62...16d147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28bbaa...e6edca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2962ec...7939ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cbf45...9daa66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305454...4f5e9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33e32f...1e4888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34dfdf...dd8187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d3eae...4606de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x420189...bfbe90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42cc9a...f0bc1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x436c33...b7fe3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ebde6...c04a31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe6fa...81859f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50e198...8d1637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c38c7...aaac26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e2796...caf7c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x652e9b...bb29e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657be7...d598c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66d18b...6118c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68911e...3641ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x703875...1cd1f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7223e1...ebc995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777bd1...683c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a4ac7...663cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bfb83...cecda4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe8d4...9dad78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87292e...948080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x880600...234a8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88430c...b7e1a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ad6b1...ce526c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f655c...6439dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x969fb6...9f2b7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6c02d...cb438d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8643e...3e3372` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a130...0d1294` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9eb43...29699b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb315dc...be91b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4e46a...d4c153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc64fc4...e6cc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9df4f...27ebdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd696e5...0ec458` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6e2f8...ad989f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd71538...1623e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8df89...fe23ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda6097...d3e206` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdefb2c...23b246` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe37028...a156db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe37e34...0691b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea5292...665ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf18676...66884d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ac28...6e03c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf36648...cc3fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf42516...000919` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4f972...805a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7657c...e2bbc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff37db...942fd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e36d4...b9642c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31cb93...581814` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x600e35...823b9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3f710...40ca3e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.harborfinance.io/2025_10_21_Final_Harbor_Collaborative_Audit_Report_1761050317.pdf) | unknown | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Audited by Sherlock](https://www.harborfinance.io/) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xa8643e...3e3372`](./contracts/arbitrum-42161/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | Aggregator_stETH_AAPL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28bbaa...e6edca`](./contracts/arbitrum-42161/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | Aggregator_stETH_AMZN_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x287733...12b05a`](./contracts/base-8453/0x2877330d6fba9bc0299588bcbaf16ba42d12b05a/) | Aggregator_stETH_BOM5_base | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52b66a...068bd2`](./contracts/arbitrum-42161/0x52b66ad600dc6051cf056951153355d457068bd2/) | Aggregator_stETH_GOOGL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa8a130...0d1294`](./contracts/arbitrum-42161/0xa8a130bbf041962b60e81009f09c41bd930d1294/) | Aggregator_stETH_MAG7_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x436c33...b7fe3d`](./contracts/arbitrum-42161/0x436c33222136554192733c6771669c4b51b7fe3d/) | Aggregator_stETH_MAG7i26_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x677f59...3bbb72`](./contracts/arbitrum-42161/0x677f597d3013dbf76552ec6c605eeb551d3bbb72/) | Aggregator_stETH_META_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf18676...66884d`](./contracts/arbitrum-42161/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | Aggregator_stETH_MSFT_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d0fdb...7cc310`](./contracts/arbitrum-42161/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | Aggregator_stETH_NVDA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x969fb6...9f2b7f`](./contracts/arbitrum-42161/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | Aggregator_stETH_SPY_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xda6097...d3e206`](./contracts/arbitrum-42161/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | Aggregator_stETH_TSLA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x91f5c9...b12621`](./contracts/arbitrum-42161/0x91f5c981c3676af8ee40003c79e96582fdb12621/) | Aggregator_USDE_AAPL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf5dafb...d193b5`](./contracts/arbitrum-42161/0xf5dafbf1a1abe5eadc16799e69b7b53c58d193b5/) | Aggregator_USDE_AMZN_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc351a5...d3efc0`](./contracts/arbitrum-42161/0xc351a54b3ed4a930d8b30958a112a1e6dcd3efc0/) | Aggregator_USDE_GOOGL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff37db...942fd7`](./contracts/arbitrum-42161/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | Aggregator_USDE_MAG7_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf36648...cc3fe1`](./contracts/arbitrum-42161/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | Aggregator_USDE_MAG7i26_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9a3074...d4c69a`](./contracts/arbitrum-42161/0x9a307462964b3936a3a5160e852bf2bfe9d4c69a/) | Aggregator_USDE_META_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2b6360...f59659`](./contracts/arbitrum-42161/0x2b63607299e7645d883168906befb13cb7f59659/) | Aggregator_USDE_MSFT_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb772b8...575dd6`](./contracts/arbitrum-42161/0xb772b800982127a3e1489daacbe214b3c8575dd6/) | Aggregator_USDE_NVDA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x657be7...d598c5`](./contracts/arbitrum-42161/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | Aggregator_USDE_SPY_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x777bd1...683c00`](./contracts/arbitrum-42161/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | Aggregator_USDE_TSLA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19f5ac...5b1389`](./contracts/base-8453/0x19f5ac27905726b81ce91b61d45c0b267d5b1389/) | HarborCustomFeedNormalization_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x756b95...0036ac`](./contracts/base-8453/0x756b95d0bb61c195d1196eb2143d8d88570036ac/) | HarborTripleFeedAndRateAggregator_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6dc935...5e8c2f`](./contracts/arbitrum-42161/0x6dc935c12818e8213b7764b5c58d1f07645e8c2f/) | Oracle_stETH_AAPL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31e4be...2e6197`](./contracts/arbitrum-42161/0x31e4be9a43c863e985e2903c707f380fd12e6197/) | Oracle_stETH_AMZN_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0facfb...978fdf`](./contracts/arbitrum-42161/0x0facfbbcbb7ee77f6ec8932559bfa98a8e978fdf/) | Oracle_stETH_GOOGL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65cc72...c6907c`](./contracts/arbitrum-42161/0x65cc7256218450542e3b9c04ef413acb87c6907c/) | Oracle_stETH_MAG7_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fab0a...cc79bb`](./contracts/arbitrum-42161/0x2fab0ad567b92b1b78b2e91e6fc64c4286cc79bb/) | Oracle_stETH_MAG7i26_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fe7ad...5cfc6f`](./contracts/arbitrum-42161/0x3fe7ad560cbade8609b0b7a6f9eb41b6405cfc6f/) | Oracle_stETH_META_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27c8d5...866ea5`](./contracts/arbitrum-42161/0x27c8d5178f742aa67fd653f0c71c5524b6866ea5/) | Oracle_stETH_MSFT_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x098563...3bb9cb`](./contracts/arbitrum-42161/0x09856313762a225a076bfb2e2445a2680c3bb9cb/) | Oracle_stETH_NVDA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15cc8f...4ddaa9`](./contracts/arbitrum-42161/0x15cc8fca219bce4bca3d6c689cb34532d14ddaa9/) | Oracle_stETH_SPY_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89d139...804a97`](./contracts/arbitrum-42161/0x89d1392ce4eb5b487c7a309e4f650e8427804a97/) | Oracle_stETH_TSLA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x94545f...6dd690`](./contracts/arbitrum-42161/0x94545f7d0a58b10ef31d98da956843f9296dd690/) | Oracle_USDE_AAPL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a27f4...dd3d04`](./contracts/arbitrum-42161/0x3a27f4f42e8767de00bb1d3b3ba1fc986fdd3d04/) | Oracle_USDE_AMZN_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x63469a...ec3c77`](./contracts/arbitrum-42161/0x63469a18e9c14b76c7b32010e7b8596e90ec3c77/) | Oracle_USDE_GOOGL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c02ba...d78293`](./contracts/arbitrum-42161/0x6c02ba3173e39371de761f2f804dfdc62fd78293/) | Oracle_USDE_MAG7_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc19bb5...03d0d6`](./contracts/arbitrum-42161/0xc19bb51cbca03430b8c1c152ebf3298ba003d0d6/) | Oracle_USDE_MAG7i26_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28d842...b6f435`](./contracts/arbitrum-42161/0x28d842b390d73f37a5e8a33ba038f531dbb6f435/) | Oracle_USDE_META_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x69c1b2...348fde`](./contracts/arbitrum-42161/0x69c1b2bb8805add31815dea5ba06423055348fde/) | Oracle_USDE_MSFT_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c0a93...daa143`](./contracts/arbitrum-42161/0x0c0a93d76d17d7ae93ff85550cf11fcfc2daa143/) | Oracle_USDE_NVDA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d9b1b...0078d5`](./contracts/arbitrum-42161/0x5d9b1b4aaceedc2ae4f0bc9332d7c7a1230078d5/) | Oracle_USDE_SPY_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59634b...986aad`](./contracts/arbitrum-42161/0x59634bbe968d969f98ee9f95f94d90ff9b986aad/) | Oracle_USDE_TSLA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13213] Audited by Sherlock

Fork inheritance lineage and inherited audits are included when available.
