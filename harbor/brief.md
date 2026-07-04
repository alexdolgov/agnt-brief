# Agentic Audit Brief: Harbor

## Project Overview

- Project: Harbor (`harbor`)
- Website: [https://app.harborfinance.io](https://app.harborfinance.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.192Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, ethereum
- Contract surface: 153 unique implementations (258 raw deployments)
- DeFi Llama TVL: $88,715.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 114 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 4 ERC20 tokens, 69 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Its contracts share 25 common project-authored base contract(s) (proxy, harboraggregator_v3, baofixedownable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 408; live-surface contracts included: 256 (203 live, 53 unknown).
- Excluded by liveness: 152 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/120 (0.8%)
- Deployed-live implementations: 120 of 153 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/120
- Verified + Unaudited implementations: 119
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 153
- Raw deployments: 258
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 0.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PriceOracle_v1 | operational_periphery | arbitrum | n/a | 2 deployments: base `0x90e877...0f27e1`; arbitrum [`0x07f347...19a6a5`](./contracts/arbitrum-42161/0x07f347b979fce7cd7bb761feda6bd7dfea19a6a5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aggregator_fxUSD_BTC_mainnet | unknown | ethereum | n/a | [`0xf7657c...e2bbc0`](./contracts/ethereum-1/0xf7657cd7890904d108384e289997c993e2e2bbc0/) | ⚠️ Unaudited |
| Aggregator_fxUSD_ETH_mainnet | unknown | ethereum | n/a | [`0xea5292...665ebc`](./contracts/ethereum-1/0xea5292c58288dce24c52c1db13ca048275665ebc/) | ⚠️ Unaudited |
| Aggregator_fxUSD_EUR_mainnet | unknown | ethereum | n/a | [`0x305454...4f5e9f`](./contracts/ethereum-1/0x305454f8b46aa3485d8b350d8e832459974f5e9f/) | ⚠️ Unaudited |
| Aggregator_fxUSD_GOLD_mainnet | unknown | ethereum | n/a | [`0x1f7f62...16d147`](./contracts/ethereum-1/0x1f7f62889e599e51b9e21b27d589fa521516d147/) | ⚠️ Unaudited |
| Aggregator_fxUSD_MCAP_mainnet | unknown | ethereum | n/a | [`0x88430c...b7e1a8`](./contracts/ethereum-1/0x88430c0f09a6d603c43e2816f2ea9ab45db7e1a8/) | ⚠️ Unaudited |
| Aggregator_fxUSD_SILVER_mainnet | unknown | ethereum | n/a | [`0x14816f...f817b5`](./contracts/ethereum-1/0x14816ff286f2ea46ab48c3275401fd4b1ef817b5/) | ⚠️ Unaudited |
| Aggregator_fxUSD_XAG_mainnet | unknown | ethereum | n/a | [`0xb4e46a...d4c153`](./contracts/ethereum-1/0xb4e46a2e299f28ffa86baee19201b1bb9cd4c153/) | ⚠️ Unaudited |
| Aggregator_fxUSD_XAU_mainnet | unknown | ethereum | n/a | [`0xd71538...1623e2`](./contracts/ethereum-1/0xd71538769af1c8f4d663bd0a5ea667d67e1623e2/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_BTC_USD_mainnet | unknown | ethereum | n/a | [`0xf36648...cc3fe1`](./contracts/ethereum-1/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_ETH_USD_mainnet | unknown | ethereum | n/a | [`0xa8643e...3e3372`](./contracts/ethereum-1/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_EUR_USD_mainnet | unknown | ethereum | n/a | [`0x657be7...d598c5`](./contracts/ethereum-1/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_GOLD_USD_mainnet | unknown | ethereum | n/a | [`0x652e9b...bb29e8`](./contracts/ethereum-1/0x652e9b0ad84fd2a0c3806129bdbdef4585bb29e8/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_SILVER_USD_mainnet | unknown | ethereum | n/a | [`0x703875...1cd1f3`](./contracts/ethereum-1/0x70387587a0d3a01a2c75904dd8ca355a921cd1f3/) | ⚠️ Unaudited |
| Aggregator_hsstETH_BTC_USD_mainnet | unknown | ethereum | n/a | [`0xff37db...942fd7`](./contracts/ethereum-1/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | ⚠️ Unaudited |
| Aggregator_hsstETH_EUR_USD_mainnet | unknown | ethereum | n/a | [`0x777bd1...683c00`](./contracts/ethereum-1/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | ⚠️ Unaudited |
| Aggregator_hsstETH_GOLD_USD_mainnet | unknown | ethereum | n/a | [`0x34dfdf...dd8187`](./contracts/ethereum-1/0x34dfdf00262e1a3b61c7a0616f0645a928dd8187/) | ⚠️ Unaudited |
| Aggregator_hsstETH_SILVER_USD_mainnet | unknown | ethereum | n/a | [`0x50e198...8d1637`](./contracts/ethereum-1/0x50e198a8fa7e4c95b355e34cba026133f68d1637/) | ⚠️ Unaudited |
| Aggregator_PAXG_USD_mainnet | unknown | ethereum | n/a | [`0xf18676...66884d`](./contracts/ethereum-1/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | ⚠️ Unaudited |
| Aggregator_stETH_AAPL_arbitrum | unknown | arbitrum | n/a | [`0xa8643e...3e3372`](./contracts/arbitrum-42161/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | ⚠️ Unaudited |
| Aggregator_stETH_AMZN_arbitrum | unknown | arbitrum | n/a | [`0x28bbaa...e6edca`](./contracts/arbitrum-42161/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | ⚠️ Unaudited |
| Aggregator_stETH_BOM5_base | unknown | base | n/a | [`0x287733...12b05a`](./contracts/base-8453/0x2877330d6fba9bc0299588bcbaf16ba42d12b05a/) | ⚠️ Unaudited |
| Aggregator_stETH_BTC_mainnet | unknown | ethereum | n/a | [`0x420189...bfbe90`](./contracts/ethereum-1/0x42018953e5174dc07058beee0618aa569fbfbe90/) | ⚠️ Unaudited |
| Aggregator_stETH_EUR_mainnet | unknown | ethereum | n/a | [`0x5e2796...caf7c7`](./contracts/ethereum-1/0x5e27965689b4b8b425d98fbc676fe22d74caf7c7/) | ⚠️ Unaudited |
| Aggregator_stETH_GOLD_mainnet | unknown | ethereum | n/a | [`0x4ebde6...c04a31`](./contracts/ethereum-1/0x4ebde6143c5e366264ba7416fdea18bc27c04a31/) | ⚠️ Unaudited |
| Aggregator_stETH_GOOGL_arbitrum | unknown | arbitrum | n/a | [`0x52b66a...068bd2`](./contracts/arbitrum-42161/0x52b66ad600dc6051cf056951153355d457068bd2/) | ⚠️ Unaudited |
| Aggregator_stETH_MAG7_arbitrum | unknown | arbitrum | n/a | [`0xa8a130...0d1294`](./contracts/arbitrum-42161/0xa8a130bbf041962b60e81009f09c41bd930d1294/) | ⚠️ Unaudited |
| Aggregator_stETH_MAG7i26_arbitrum | unknown | arbitrum | n/a | [`0x436c33...b7fe3d`](./contracts/arbitrum-42161/0x436c33222136554192733c6771669c4b51b7fe3d/) | ⚠️ Unaudited |
| Aggregator_stETH_MCAP_mainnet | unknown | ethereum | n/a | [`0x4fe6fa...81859f`](./contracts/ethereum-1/0x4fe6fa14db0d3c8a4709a4f3e37c1c862381859f/) | ⚠️ Unaudited |
| Aggregator_stETH_META_arbitrum | unknown | arbitrum | n/a | [`0x677f59...3bbb72`](./contracts/arbitrum-42161/0x677f597d3013dbf76552ec6c605eeb551d3bbb72/) | ⚠️ Unaudited |
| Aggregator_stETH_MSFT_arbitrum | unknown | arbitrum | n/a | [`0xf18676...66884d`](./contracts/arbitrum-42161/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | ⚠️ Unaudited |
| Aggregator_stETH_NVDA_arbitrum | unknown | arbitrum | n/a | [`0x0d0fdb...7cc310`](./contracts/arbitrum-42161/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | ⚠️ Unaudited |
| Aggregator_stETH_SILVER_mainnet | unknown | ethereum | n/a | [`0x7223e1...ebc995`](./contracts/ethereum-1/0x7223e17bd4527acbe44644300ea0f09a4aebc995/) | ⚠️ Unaudited |
| Aggregator_stETH_SPY_arbitrum | unknown | arbitrum | n/a | [`0x969fb6...9f2b7f`](./contracts/arbitrum-42161/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | ⚠️ Unaudited |
| Aggregator_stETH_TSLA_arbitrum | unknown | arbitrum | n/a | [`0xda6097...d3e206`](./contracts/arbitrum-42161/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | ⚠️ Unaudited |
| Aggregator_stETH_XAG_mainnet | unknown | ethereum | n/a | [`0x7fe8d4...9dad78`](./contracts/ethereum-1/0x7fe8d4590a5aa0c8bdca581bbc30d68ab59dad78/) | ⚠️ Unaudited |
| Aggregator_stETH_XAU_mainnet | unknown | ethereum | n/a | [`0x2962ec...7939ee`](./contracts/ethereum-1/0x2962eccf1b9cc46fe1aff7bfc0f7179fc87939ee/) | ⚠️ Unaudited |
| Aggregator_sUSDe_BTC_mainnet | unknown | ethereum | n/a | [`0x0d0fdb...7cc310`](./contracts/ethereum-1/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | ⚠️ Unaudited |
| Aggregator_sUSDe_ETH_mainnet | unknown | ethereum | n/a | [`0x969fb6...9f2b7f`](./contracts/ethereum-1/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | ⚠️ Unaudited |
| Aggregator_sUSDe_EUR_mainnet | unknown | ethereum | n/a | [`0xda6097...d3e206`](./contracts/ethereum-1/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | ⚠️ Unaudited |
| Aggregator_sUSDe_GOLD_mainnet | unknown | ethereum | n/a | [`0x5c38c7...aaac26`](./contracts/ethereum-1/0x5c38c744cff6ec051d955566384bf921cfaaac26/) | ⚠️ Unaudited |
| Aggregator_sUSDe_MCAP_mainnet | unknown | ethereum | n/a | [`0xf2ac28...6e03c9`](./contracts/ethereum-1/0xf2ac2880e1569d2cab50be41f6bfa92e5e6e03c9/) | ⚠️ Unaudited |
| Aggregator_sUSDe_SILVER_mainnet | unknown | ethereum | n/a | [`0x7a4ac7...663cfd`](./contracts/ethereum-1/0x7a4ac7b91bcbd069fa0b45bdb5e393915a663cfd/) | ⚠️ Unaudited |
| Aggregator_tBTC_USD_mainnet | unknown | ethereum | n/a | [`0xd8df89...fe23ee`](./contracts/ethereum-1/0xd8df89f1c15a26f8a6c119161812f199cdfe23ee/) | ⚠️ Unaudited |
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
| Aggregator_wBTC_USD_mainnet | token | ethereum | n/a | [`0x87292e...948080`](./contracts/ethereum-1/0x87292e650040b2d284983c0e0814344506948080/) | ⚠️ Unaudited |
| Aggregator_wstETH_USD_mainnet | unknown | ethereum | n/a | [`0x28bbaa...e6edca`](./contracts/ethereum-1/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | ⚠️ Unaudited |
| BaoFactory_v1 | registry | base | n/a | 2 deployments: ethereum `0xd696e5...0ec458`; base [`0xa3f710...40ca3e`](./contracts/base-8453/0xa3f71025ce5ddde817b98e8bcb92365b4040ca3e/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x2cbf45...9daa66`](./contracts/ethereum-1/0x2cbf457112ef5a16cfca10fb173d56a5cc9daa66/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x40ff76...5905fd`](./contracts/ethereum-1/0x40ff767ff4055d53b1bc1b0141221a37b25905fd/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x42cc9a...f0bc1c`](./contracts/ethereum-1/0x42cc9a19b358a2a918f891d8a6199d8b05f0bc1c/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x64e72c...d30539`](./contracts/ethereum-1/0x64e72cbb24d1f80a0f66778da0b95a46ead30539/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x66d18b...6118c8`](./contracts/ethereum-1/0x66d18b9dd5d1cd51957dfea0e0373b54e06118c8/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x68eda2...a594cf`](./contracts/ethereum-1/0x68eda29187587def950d566f862ffa85fda594cf/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x7bfb83...cecda4`](./contracts/ethereum-1/0x7bfb831e6360d4600c7b9b200f8aca6f89cecda4/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x8ad6b1...ce526c`](./contracts/ethereum-1/0x8ad6b177137a6c33070c27d98355717849ce526c/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x8f655c...6439dc`](./contracts/ethereum-1/0x8f655ca32a1fa8032955989c19e91886f26439dc/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xa6c02d...cb438d`](./contracts/ethereum-1/0xa6c02de8e3150c6ffa9c80f98185d42653cb438d/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xa9eb43...29699b`](./contracts/ethereum-1/0xa9eb43ed6ba3b953a82741f3e226c1d6b029699b/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xbae2ca...43ec22`](./contracts/ethereum-1/0xbae2cab2ed87d488cf264ba9411a3fddab43ec22/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xc64fc4...e6cc00`](./contracts/ethereum-1/0xc64fc46eed431e92c1b5e24dc296b5985ce6cc00/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xc9df4f...27ebdc`](./contracts/ethereum-1/0xc9df4f62474cf6cde6c064db29416a9f4f27ebdc/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xf4f972...805a89`](./contracts/ethereum-1/0xf4f97218a00213a57a32e4606aaecc99e1805a89/) | ⚠️ Unaudited |
| HarborCustomFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4600b1...598fe0`](./contracts/arbitrum-42161/0x4600b14992f0b5b6ee629cc09f5ab7d0f1598fe0/); arbitrum `0x4e3bbb...3160da`; arbitrum `0xe3a0ab...67cc7d` | ⚠️ Unaudited |
| HarborCustomFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4be450...4d34cc`](./contracts/arbitrum-42161/0x4be4501336130e61e5872cb953e886a3a84d34cc/); arbitrum `0x9243ed...96fc5c`; arbitrum `0xdf21f3...1c378f` | ⚠️ Unaudited |
| HarborCustomFeedNormalization_v2 | unknown | base | n/a | 13 deployments: base [`0x19f5ac...5b1389`](./contracts/base-8453/0x19f5ac27905726b81ce91b61d45c0b267d5b1389/); base `0x26b916...238843`; base `0x2f6093...d8fc52`; base `0x31cb93...581814`; base `0x4b05cf...5f826c`; base `0x54314f...191d60`; base `0x6fbf25...042755`; base `0x70bd55...f35061`; base `0x76d5eb...67d0d7`; base `0xa4dc9f...20fe91`; base `0xaf3327...41b91e`; base `0xefc5c2...b2ec4e`; base `0xf28c00...c9bfc4` | ⚠️ Unaudited |
| HarborDoubleFeedAndRateAggregator_v1 | unknown | ethereum | n/a | [`0xe37028...a156db`](./contracts/ethereum-1/0xe370289af2145a5b2f0f7a4a900ebfd478a156db/) | ⚠️ Unaudited |
| HarborDoubleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 17 deployments: arbitrum [`0x06cd57...2ba3ad`](./contracts/arbitrum-42161/0x06cd5701d9ffd9f7aadfe28c57b481e99d2ba3ad/); arbitrum `0x3df39f...b89a86`; arbitrum `0x424d37...ce4f7a`; arbitrum `0x63d961...3326fe`; arbitrum `0x76453e...bd411b`; arbitrum `0x78d74e...5c8536`; arbitrum `0x7dae17...d2bbaf`; arbitrum `0x82b8ab...4912d0`; arbitrum `0x8391ea...ba711e`; arbitrum `0x891971...1ff6cb`; arbitrum `0x8e02c8...eb3b88`; arbitrum `0x8ee0d6...ea6781`; arbitrum `0x8f6f9c...fa6353`; arbitrum `0x9f6250...201034`; arbitrum `0xa70dc2...fa400a`; arbitrum `0xd59a1c...173f91`; arbitrum `0xf012a1...d7de32` | ⚠️ Unaudited |
| HarborDoubleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 17 deployments: arbitrum [`0x0c7266...28254e`](./contracts/arbitrum-42161/0x0c72662f59ccd99a086ac7e8f651248aef28254e/); arbitrum `0x116611...9e9a2e`; arbitrum `0x30b3ed...40d3ef`; arbitrum `0x49f588...6823fa`; arbitrum `0x60e55f...d7865a`; arbitrum `0x69c456...da83fc`; arbitrum `0x754876...1fb5c7`; arbitrum `0x79548a...7398fa`; arbitrum `0x7ca393...81c02b`; arbitrum `0x864d1b...f4f787`; arbitrum `0x924ee2...5be0ad`; arbitrum `0xabbd1b...4b8227`; arbitrum `0xb310ab...7f2b89`; arbitrum `0xc19960...1333de`; arbitrum `0xc3722c...f2c5da`; arbitrum `0xe34bf6...bec23b`; arbitrum `0xf0e4aa...6f685e` | ⚠️ Unaudited |
| HarborSingleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x15a6af...4c574e`](./contracts/arbitrum-42161/0x15a6af3cc91456bf757dcc24b1d421ae204c574e/); arbitrum `0xa79191...7ce92c`; arbitrum `0xea567b...148335` | ⚠️ Unaudited |
| HarborSingleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6beb1a...3e408e`](./contracts/arbitrum-42161/0x6beb1a1189ac68a2a26b5210e5ccfb9e8a3e408e/); arbitrum `0xcf5392...5ed4a9`; arbitrum `0xd8789e...89b1bc` | ⚠️ Unaudited |
| HarborSingleFeedAndRateAggregator_v2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x71437c...14c097`](./contracts/ethereum-1/0x71437c90f1e0785dd691fd02f7be0b90cd14c097/); ethereum `0x8f76a2...524a73` | ⚠️ Unaudited |
| HarborTideToken_v1 | token | base | n/a | 2 deployments: base [`0x2e36d4...b9642c`](./contracts/base-8453/0x2e36d436ff3469a0a6d03d44e3c67dc63bb9642c/); base `0x600e35...823b9b` | ⚠️ Unaudited |
| HarborTripleFeedAndRateAggregator_v2 | unknown | base | n/a | 6 deployments: base [`0x756b95...0036ac`](./contracts/base-8453/0x756b95d0bb61c195d1196eb2143d8d88570036ac/); base `0x7ec5fa...0e4959`; base `0x830ab2...f166d8`; base `0xdc976b...b330a1`; base `0xe2962a...b4a980`; base `0xf9cb23...ebc615` | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x0aa2b6...542b51`](./contracts/ethereum-1/0x0aa2b6ee6d079f39a52725b33b15854505542b51/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x177bb5...aa75ef`](./contracts/ethereum-1/0x177bb50574cda129bdd0b0f50d4e061d38aa75ef/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x1c0067...65b3e9`](./contracts/ethereum-1/0x1c0067bee039a293804b8be951b368d2ec65b3e9/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x1e326f...d5e492`](./contracts/ethereum-1/0x1e326fff476a5d107f1f6684380f677d2fd5e492/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x33e32f...1e4888`](./contracts/ethereum-1/0x33e32ff4d0677862fa31582cc654a25b9b1e4888/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x3d3eae...4606de`](./contracts/ethereum-1/0x3d3eae3a4ee52ef703216c62efec3157694606de/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x68911e...3641ce`](./contracts/ethereum-1/0x68911ea33e11bc77e07f6da4db6cd23d723641ce/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x7e1d48...94e3c2`](./contracts/ethereum-1/0x7e1d48774f6fad0aa41cbb47a66bb8ec3094e3c2/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x880600...234a8f`](./contracts/ethereum-1/0x880600e0c803d836e305b7c242fc095eed234a8f/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xb315dc...be91b5`](./contracts/ethereum-1/0xb315dc4698df45a477d8bb4b0bc694c4d1be91b5/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xc14837...81e69b`](./contracts/ethereum-1/0xc14837c30bedf3081cba2cdeb067fa6f0381e69b/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xd6e2f8...ad989f`](./contracts/ethereum-1/0xd6e2f8e57b4afb51c6fa4cbc012e1ce6aead989f/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xdefb2c...23b246`](./contracts/ethereum-1/0xdefb2c04062350678965cbf38a216cc50723b246/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xe37e34...0691b6`](./contracts/ethereum-1/0xe37e34ab0aaaabac0e20c911349c1defad0691b6/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xf42516...000919`](./contracts/ethereum-1/0xf42516eb885e737780eb864dd07cec8628000919/) | ⚠️ Unaudited |
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
| sBaoSynth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4abce5...35e5e9`](./contracts/arbitrum-42161/0x4abce5dfb2664f46b7b9a35e72b339e60a35e5e9/); arbitrum `0xbd06de...62385b` | ⚠️ Unaudited |
| sBaoSynth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x937982...cb4ff6`](./contracts/arbitrum-42161/0x937982c5ea62bd6765bd5387e5c6b45e24cb4ff6/); arbitrum `0xf3c870...02c182` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x906ea022f159f2939f953edde787b87bf5a2f123) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x6e08c7...7f4648`; arbitrum `0x906ea0...a2f123`; arbitrum `0xfef7ca...477d37` | ❓ Unverified |
| Proxy (impl: 0xe473190ab246a0880bd3be05da2194253f1bfd11) | unknown | arbitrum | n/a | 17 deployments: arbitrum `0x0a3dd8...0b109e`; arbitrum `0x0de5cc...d1f424`; arbitrum `0x15f6ea...34b891`; arbitrum `0x173b98...a21657`; arbitrum `0x18681b...d0ef11`; arbitrum `0x22bc08...ae0a8f`; arbitrum `0x335ce7...ae38ae`; arbitrum `0x46cfcb...2795e2`; arbitrum `0x6e30ff...8c93a8`; arbitrum `0x7ae87c...d7e481`; arbitrum `0xc19f35...e3d90e`; arbitrum `0xdaa15e...d38e9a`; arbitrum `0xddfa1a...3a2cc1`; arbitrum `0xe3e68c...12ec7d`; arbitrum `0xe47319...1bfd11`; arbitrum `0xe4f3ce...0802ca`; arbitrum `0xf0ff6d...3f8873` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x436c33...b7fe3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a130...0d1294` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x077bde...649e05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1044c5...acdc66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x1048a2...2dc1ef`; arbitrum `0x3ce5e8...6f0fec`; arbitrum `0x74c65b...4f8866` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x113aa3...6b35e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27a1c8...e0f50c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x282f19...f2dda3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a9bd9...813534` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fa33c...ee9a11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x399003...878f49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c7b4e...65a979` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50ea38...362908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x527371...1747d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ad8fd...5cf689` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x677474...80790e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75569b...385316` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7671ef...1e1f83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc39a...a6cd69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cf0c0...8ded5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x849d11...3ae102` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a3df4...fe966f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9aeac0...11bab5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3287c...1bda3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa44db3...aa5667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb196a0...de3e4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb497c7...405974` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce23e5...0bf38c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf04fa...eb9ba0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda55f1...b34aba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf183d6...87617d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025_10_21_Final_Harbor_Collaborative_Audit_Report_1761050317.pdf](https://www.harborfinance.io/2025_10_21_Final_Harbor_Collaborative_Audit_Report_1761050317.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | 1 | n/a |
| [www.harborfinance.io](https://www.harborfinance.io/) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf7657c...e2bbc0`](./contracts/ethereum-1/0xf7657cd7890904d108384e289997c993e2e2bbc0/) | Aggregator_fxUSD_BTC_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea5292...665ebc`](./contracts/ethereum-1/0xea5292c58288dce24c52c1db13ca048275665ebc/) | Aggregator_fxUSD_ETH_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305454...4f5e9f`](./contracts/ethereum-1/0x305454f8b46aa3485d8b350d8e832459974f5e9f/) | Aggregator_fxUSD_EUR_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f7f62...16d147`](./contracts/ethereum-1/0x1f7f62889e599e51b9e21b27d589fa521516d147/) | Aggregator_fxUSD_GOLD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88430c...b7e1a8`](./contracts/ethereum-1/0x88430c0f09a6d603c43e2816f2ea9ab45db7e1a8/) | Aggregator_fxUSD_MCAP_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14816f...f817b5`](./contracts/ethereum-1/0x14816ff286f2ea46ab48c3275401fd4b1ef817b5/) | Aggregator_fxUSD_SILVER_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4e46a...d4c153`](./contracts/ethereum-1/0xb4e46a2e299f28ffa86baee19201b1bb9cd4c153/) | Aggregator_fxUSD_XAG_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd71538...1623e2`](./contracts/ethereum-1/0xd71538769af1c8f4d663bd0a5ea667d67e1623e2/) | Aggregator_fxUSD_XAU_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf36648...cc3fe1`](./contracts/ethereum-1/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | Aggregator_hsfxUSD_BTC_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8643e...3e3372`](./contracts/ethereum-1/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | Aggregator_hsfxUSD_ETH_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x657be7...d598c5`](./contracts/ethereum-1/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | Aggregator_hsfxUSD_EUR_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x652e9b...bb29e8`](./contracts/ethereum-1/0x652e9b0ad84fd2a0c3806129bdbdef4585bb29e8/) | Aggregator_hsfxUSD_GOLD_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x703875...1cd1f3`](./contracts/ethereum-1/0x70387587a0d3a01a2c75904dd8ca355a921cd1f3/) | Aggregator_hsfxUSD_SILVER_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff37db...942fd7`](./contracts/ethereum-1/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | Aggregator_hsstETH_BTC_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x777bd1...683c00`](./contracts/ethereum-1/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | Aggregator_hsstETH_EUR_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34dfdf...dd8187`](./contracts/ethereum-1/0x34dfdf00262e1a3b61c7a0616f0645a928dd8187/) | Aggregator_hsstETH_GOLD_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50e198...8d1637`](./contracts/ethereum-1/0x50e198a8fa7e4c95b355e34cba026133f68d1637/) | Aggregator_hsstETH_SILVER_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf18676...66884d`](./contracts/ethereum-1/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | Aggregator_PAXG_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa8643e...3e3372`](./contracts/arbitrum-42161/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | Aggregator_stETH_AAPL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28bbaa...e6edca`](./contracts/arbitrum-42161/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | Aggregator_stETH_AMZN_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x287733...12b05a`](./contracts/base-8453/0x2877330d6fba9bc0299588bcbaf16ba42d12b05a/) | Aggregator_stETH_BOM5_base | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420189...bfbe90`](./contracts/ethereum-1/0x42018953e5174dc07058beee0618aa569fbfbe90/) | Aggregator_stETH_BTC_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e2796...caf7c7`](./contracts/ethereum-1/0x5e27965689b4b8b425d98fbc676fe22d74caf7c7/) | Aggregator_stETH_EUR_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ebde6...c04a31`](./contracts/ethereum-1/0x4ebde6143c5e366264ba7416fdea18bc27c04a31/) | Aggregator_stETH_GOLD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52b66a...068bd2`](./contracts/arbitrum-42161/0x52b66ad600dc6051cf056951153355d457068bd2/) | Aggregator_stETH_GOOGL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa8a130...0d1294`](./contracts/arbitrum-42161/0xa8a130bbf041962b60e81009f09c41bd930d1294/) | Aggregator_stETH_MAG7_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x436c33...b7fe3d`](./contracts/arbitrum-42161/0x436c33222136554192733c6771669c4b51b7fe3d/) | Aggregator_stETH_MAG7i26_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fe6fa...81859f`](./contracts/ethereum-1/0x4fe6fa14db0d3c8a4709a4f3e37c1c862381859f/) | Aggregator_stETH_MCAP_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x677f59...3bbb72`](./contracts/arbitrum-42161/0x677f597d3013dbf76552ec6c605eeb551d3bbb72/) | Aggregator_stETH_META_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf18676...66884d`](./contracts/arbitrum-42161/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | Aggregator_stETH_MSFT_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d0fdb...7cc310`](./contracts/arbitrum-42161/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | Aggregator_stETH_NVDA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7223e1...ebc995`](./contracts/ethereum-1/0x7223e17bd4527acbe44644300ea0f09a4aebc995/) | Aggregator_stETH_SILVER_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x969fb6...9f2b7f`](./contracts/arbitrum-42161/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | Aggregator_stETH_SPY_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xda6097...d3e206`](./contracts/arbitrum-42161/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | Aggregator_stETH_TSLA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fe8d4...9dad78`](./contracts/ethereum-1/0x7fe8d4590a5aa0c8bdca581bbc30d68ab59dad78/) | Aggregator_stETH_XAG_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2962ec...7939ee`](./contracts/ethereum-1/0x2962eccf1b9cc46fe1aff7bfc0f7179fc87939ee/) | Aggregator_stETH_XAU_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d0fdb...7cc310`](./contracts/ethereum-1/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | Aggregator_sUSDe_BTC_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x969fb6...9f2b7f`](./contracts/ethereum-1/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | Aggregator_sUSDe_ETH_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda6097...d3e206`](./contracts/ethereum-1/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | Aggregator_sUSDe_EUR_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c38c7...aaac26`](./contracts/ethereum-1/0x5c38c744cff6ec051d955566384bf921cfaaac26/) | Aggregator_sUSDe_GOLD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2ac28...6e03c9`](./contracts/ethereum-1/0xf2ac2880e1569d2cab50be41f6bfa92e5e6e03c9/) | Aggregator_sUSDe_MCAP_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a4ac7...663cfd`](./contracts/ethereum-1/0x7a4ac7b91bcbd069fa0b45bdb5e393915a663cfd/) | Aggregator_sUSDe_SILVER_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8df89...fe23ee`](./contracts/ethereum-1/0xd8df89f1c15a26f8a6c119161812f199cdfe23ee/) | Aggregator_tBTC_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| ethereum | [`0x87292e...948080`](./contracts/ethereum-1/0x87292e650040b2d284983c0e0814344506948080/) | Aggregator_wBTC_USD_mainnet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28bbaa...e6edca`](./contracts/ethereum-1/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | Aggregator_wstETH_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa3f710...40ca3e`](./contracts/base-8453/0xa3f71025ce5ddde817b98e8bcb92365b4040ca3e/) | BaoFactory_v1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf45...9daa66`](./contracts/ethereum-1/0x2cbf457112ef5a16cfca10fb173d56a5cc9daa66/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ff76...5905fd`](./contracts/ethereum-1/0x40ff767ff4055d53b1bc1b0141221a37b25905fd/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42cc9a...f0bc1c`](./contracts/ethereum-1/0x42cc9a19b358a2a918f891d8a6199d8b05f0bc1c/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64e72c...d30539`](./contracts/ethereum-1/0x64e72cbb24d1f80a0f66778da0b95a46ead30539/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d18b...6118c8`](./contracts/ethereum-1/0x66d18b9dd5d1cd51957dfea0e0373b54e06118c8/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68eda2...a594cf`](./contracts/ethereum-1/0x68eda29187587def950d566f862ffa85fda594cf/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bfb83...cecda4`](./contracts/ethereum-1/0x7bfb831e6360d4600c7b9b200f8aca6f89cecda4/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ad6b1...ce526c`](./contracts/ethereum-1/0x8ad6b177137a6c33070c27d98355717849ce526c/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f655c...6439dc`](./contracts/ethereum-1/0x8f655ca32a1fa8032955989c19e91886f26439dc/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6c02d...cb438d`](./contracts/ethereum-1/0xa6c02de8e3150c6ffa9c80f98185d42653cb438d/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9eb43...29699b`](./contracts/ethereum-1/0xa9eb43ed6ba3b953a82741f3e226c1d6b029699b/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbae2ca...43ec22`](./contracts/ethereum-1/0xbae2cab2ed87d488cf264ba9411a3fddab43ec22/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc64fc4...e6cc00`](./contracts/ethereum-1/0xc64fc46eed431e92c1b5e24dc296b5985ce6cc00/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9df4f...27ebdc`](./contracts/ethereum-1/0xc9df4f62474cf6cde6c064db29416a9f4f27ebdc/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4f972...805a89`](./contracts/ethereum-1/0xf4f97218a00213a57a32e4606aaecc99e1805a89/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4600b1...598fe0`](./contracts/arbitrum-42161/0x4600b14992f0b5b6ee629cc09f5ab7d0f1598fe0/) | HarborCustomFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4be450...4d34cc`](./contracts/arbitrum-42161/0x4be4501336130e61e5872cb953e886a3a84d34cc/) | HarborCustomFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19f5ac...5b1389`](./contracts/base-8453/0x19f5ac27905726b81ce91b61d45c0b267d5b1389/) | HarborCustomFeedNormalization_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe37028...a156db`](./contracts/ethereum-1/0xe370289af2145a5b2f0f7a4a900ebfd478a156db/) | HarborDoubleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06cd57...2ba3ad`](./contracts/arbitrum-42161/0x06cd5701d9ffd9f7aadfe28c57b481e99d2ba3ad/) | HarborDoubleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c7266...28254e`](./contracts/arbitrum-42161/0x0c72662f59ccd99a086ac7e8f651248aef28254e/) | HarborDoubleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15a6af...4c574e`](./contracts/arbitrum-42161/0x15a6af3cc91456bf757dcc24b1d421ae204c574e/) | HarborSingleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6beb1a...3e408e`](./contracts/arbitrum-42161/0x6beb1a1189ac68a2a26b5210e5ccfb9e8a3e408e/) | HarborSingleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71437c...14c097`](./contracts/ethereum-1/0x71437c90f1e0785dd691fd02f7be0b90cd14c097/) | HarborSingleFeedAndRateAggregator_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2e36d4...b9642c`](./contracts/base-8453/0x2e36d436ff3469a0a6d03d44e3c67dc63bb9642c/) | HarborTideToken_v1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x756b95...0036ac`](./contracts/base-8453/0x756b95d0bb61c195d1196eb2143d8d88570036ac/) | HarborTripleFeedAndRateAggregator_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa2b6...542b51`](./contracts/ethereum-1/0x0aa2b6ee6d079f39a52725b33b15854505542b51/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x177bb5...aa75ef`](./contracts/ethereum-1/0x177bb50574cda129bdd0b0f50d4e061d38aa75ef/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c0067...65b3e9`](./contracts/ethereum-1/0x1c0067bee039a293804b8be951b368d2ec65b3e9/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e326f...d5e492`](./contracts/ethereum-1/0x1e326fff476a5d107f1f6684380f677d2fd5e492/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33e32f...1e4888`](./contracts/ethereum-1/0x33e32ff4d0677862fa31582cc654a25b9b1e4888/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d3eae...4606de`](./contracts/ethereum-1/0x3d3eae3a4ee52ef703216c62efec3157694606de/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68911e...3641ce`](./contracts/ethereum-1/0x68911ea33e11bc77e07f6da4db6cd23d723641ce/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e1d48...94e3c2`](./contracts/ethereum-1/0x7e1d48774f6fad0aa41cbb47a66bb8ec3094e3c2/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880600...234a8f`](./contracts/ethereum-1/0x880600e0c803d836e305b7c242fc095eed234a8f/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb315dc...be91b5`](./contracts/ethereum-1/0xb315dc4698df45a477d8bb4b0bc694c4d1be91b5/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc14837...81e69b`](./contracts/ethereum-1/0xc14837c30bedf3081cba2cdeb067fa6f0381e69b/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6e2f8...ad989f`](./contracts/ethereum-1/0xd6e2f8e57b4afb51c6fa4cbc012e1ce6aead989f/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdefb2c...23b246`](./contracts/ethereum-1/0xdefb2c04062350678965cbf38a216cc50723b246/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe37e34...0691b6`](./contracts/ethereum-1/0xe37e34ab0aaaabac0e20c911349c1defad0691b6/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42516...000919`](./contracts/ethereum-1/0xf42516eb885e737780eb864dd07cec8628000919/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| arbitrum | [`0x4abce5...35e5e9`](./contracts/arbitrum-42161/0x4abce5dfb2664f46b7b9a35e72b339e60a35e5e9/) | sBaoSynth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x937982...cb4ff6`](./contracts/arbitrum-42161/0x937982c5ea62bd6765bd5387e5c6b45e24cb4ff6/) | sBaoSynth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 120 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [13213] www.harborfinance.io

Fork inheritance lineage and inherited audits are included when available.
