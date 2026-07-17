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
| PriceOracle_v1 | operational_periphery | arbitrum | n/a | 2 deployments: base `0x90e877e9660a52443cbabd86ca0871a1d60f27e1`; arbitrum [`0x07f347b979fce7cd7bb761feda6bd7dfea19a6a5`](./contracts/arbitrum-42161/0x07f347b979fce7cd7bb761feda6bd7dfea19a6a5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aggregator_fxUSD_BTC_mainnet | unknown | ethereum | n/a | [`0xf7657cd7890904d108384e289997c993e2e2bbc0`](./contracts/ethereum-1/0xf7657cd7890904d108384e289997c993e2e2bbc0/) | ⚠️ Unaudited |
| Aggregator_fxUSD_ETH_mainnet | unknown | ethereum | n/a | [`0xea5292c58288dce24c52c1db13ca048275665ebc`](./contracts/ethereum-1/0xea5292c58288dce24c52c1db13ca048275665ebc/) | ⚠️ Unaudited |
| Aggregator_fxUSD_EUR_mainnet | unknown | ethereum | n/a | [`0x305454f8b46aa3485d8b350d8e832459974f5e9f`](./contracts/ethereum-1/0x305454f8b46aa3485d8b350d8e832459974f5e9f/) | ⚠️ Unaudited |
| Aggregator_fxUSD_GOLD_mainnet | unknown | ethereum | n/a | [`0x1f7f62889e599e51b9e21b27d589fa521516d147`](./contracts/ethereum-1/0x1f7f62889e599e51b9e21b27d589fa521516d147/) | ⚠️ Unaudited |
| Aggregator_fxUSD_MCAP_mainnet | unknown | ethereum | n/a | [`0x88430c0f09a6d603c43e2816f2ea9ab45db7e1a8`](./contracts/ethereum-1/0x88430c0f09a6d603c43e2816f2ea9ab45db7e1a8/) | ⚠️ Unaudited |
| Aggregator_fxUSD_SILVER_mainnet | unknown | ethereum | n/a | [`0x14816ff286f2ea46ab48c3275401fd4b1ef817b5`](./contracts/ethereum-1/0x14816ff286f2ea46ab48c3275401fd4b1ef817b5/) | ⚠️ Unaudited |
| Aggregator_fxUSD_XAG_mainnet | unknown | ethereum | n/a | [`0xb4e46a2e299f28ffa86baee19201b1bb9cd4c153`](./contracts/ethereum-1/0xb4e46a2e299f28ffa86baee19201b1bb9cd4c153/) | ⚠️ Unaudited |
| Aggregator_fxUSD_XAU_mainnet | unknown | ethereum | n/a | [`0xd71538769af1c8f4d663bd0a5ea667d67e1623e2`](./contracts/ethereum-1/0xd71538769af1c8f4d663bd0a5ea667d67e1623e2/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_BTC_USD_mainnet | unknown | ethereum | n/a | [`0xf36648f44763efe7c528140a2f804b2124cc3fe1`](./contracts/ethereum-1/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_ETH_USD_mainnet | unknown | ethereum | n/a | [`0xa8643e35ef119f983b09c322039e8aa49a3e3372`](./contracts/ethereum-1/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_EUR_USD_mainnet | unknown | ethereum | n/a | [`0x657be7a2b91f95222d163bee3b5f4c27bed598c5`](./contracts/ethereum-1/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_GOLD_USD_mainnet | unknown | ethereum | n/a | [`0x652e9b0ad84fd2a0c3806129bdbdef4585bb29e8`](./contracts/ethereum-1/0x652e9b0ad84fd2a0c3806129bdbdef4585bb29e8/) | ⚠️ Unaudited |
| Aggregator_hsfxUSD_SILVER_USD_mainnet | unknown | ethereum | n/a | [`0x70387587a0d3a01a2c75904dd8ca355a921cd1f3`](./contracts/ethereum-1/0x70387587a0d3a01a2c75904dd8ca355a921cd1f3/) | ⚠️ Unaudited |
| Aggregator_hsstETH_BTC_USD_mainnet | unknown | ethereum | n/a | [`0xff37db6dea33228a5d84546250a5d0d0da942fd7`](./contracts/ethereum-1/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | ⚠️ Unaudited |
| Aggregator_hsstETH_EUR_USD_mainnet | unknown | ethereum | n/a | [`0x777bd12e1f61b8cac19cbd30c0233c46b4683c00`](./contracts/ethereum-1/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | ⚠️ Unaudited |
| Aggregator_hsstETH_GOLD_USD_mainnet | unknown | ethereum | n/a | [`0x34dfdf00262e1a3b61c7a0616f0645a928dd8187`](./contracts/ethereum-1/0x34dfdf00262e1a3b61c7a0616f0645a928dd8187/) | ⚠️ Unaudited |
| Aggregator_hsstETH_SILVER_USD_mainnet | unknown | ethereum | n/a | [`0x50e198a8fa7e4c95b355e34cba026133f68d1637`](./contracts/ethereum-1/0x50e198a8fa7e4c95b355e34cba026133f68d1637/) | ⚠️ Unaudited |
| Aggregator_PAXG_USD_mainnet | unknown | ethereum | n/a | [`0xf1867657ef7f65b745e47b7f70d15de50b66884d`](./contracts/ethereum-1/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | ⚠️ Unaudited |
| Aggregator_stETH_AAPL_arbitrum | unknown | arbitrum | n/a | [`0xa8643e35ef119f983b09c322039e8aa49a3e3372`](./contracts/arbitrum-42161/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | ⚠️ Unaudited |
| Aggregator_stETH_AMZN_arbitrum | unknown | arbitrum | n/a | [`0x28bbaaf05dee8a06d4206089bcd17c1129e6edca`](./contracts/arbitrum-42161/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | ⚠️ Unaudited |
| Aggregator_stETH_BOM5_base | unknown | base | n/a | [`0x2877330d6fba9bc0299588bcbaf16ba42d12b05a`](./contracts/base-8453/0x2877330d6fba9bc0299588bcbaf16ba42d12b05a/) | ⚠️ Unaudited |
| Aggregator_stETH_BTC_mainnet | unknown | ethereum | n/a | [`0x42018953e5174dc07058beee0618aa569fbfbe90`](./contracts/ethereum-1/0x42018953e5174dc07058beee0618aa569fbfbe90/) | ⚠️ Unaudited |
| Aggregator_stETH_EUR_mainnet | unknown | ethereum | n/a | [`0x5e27965689b4b8b425d98fbc676fe22d74caf7c7`](./contracts/ethereum-1/0x5e27965689b4b8b425d98fbc676fe22d74caf7c7/) | ⚠️ Unaudited |
| Aggregator_stETH_GOLD_mainnet | unknown | ethereum | n/a | [`0x4ebde6143c5e366264ba7416fdea18bc27c04a31`](./contracts/ethereum-1/0x4ebde6143c5e366264ba7416fdea18bc27c04a31/) | ⚠️ Unaudited |
| Aggregator_stETH_GOOGL_arbitrum | unknown | arbitrum | n/a | [`0x52b66ad600dc6051cf056951153355d457068bd2`](./contracts/arbitrum-42161/0x52b66ad600dc6051cf056951153355d457068bd2/) | ⚠️ Unaudited |
| Aggregator_stETH_MAG7_arbitrum | unknown | arbitrum | n/a | [`0xa8a130bbf041962b60e81009f09c41bd930d1294`](./contracts/arbitrum-42161/0xa8a130bbf041962b60e81009f09c41bd930d1294/) | ⚠️ Unaudited |
| Aggregator_stETH_MAG7i26_arbitrum | unknown | arbitrum | n/a | [`0x436c33222136554192733c6771669c4b51b7fe3d`](./contracts/arbitrum-42161/0x436c33222136554192733c6771669c4b51b7fe3d/) | ⚠️ Unaudited |
| Aggregator_stETH_MCAP_mainnet | unknown | ethereum | n/a | [`0x4fe6fa14db0d3c8a4709a4f3e37c1c862381859f`](./contracts/ethereum-1/0x4fe6fa14db0d3c8a4709a4f3e37c1c862381859f/) | ⚠️ Unaudited |
| Aggregator_stETH_META_arbitrum | unknown | arbitrum | n/a | [`0x677f597d3013dbf76552ec6c605eeb551d3bbb72`](./contracts/arbitrum-42161/0x677f597d3013dbf76552ec6c605eeb551d3bbb72/) | ⚠️ Unaudited |
| Aggregator_stETH_MSFT_arbitrum | unknown | arbitrum | n/a | [`0xf1867657ef7f65b745e47b7f70d15de50b66884d`](./contracts/arbitrum-42161/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | ⚠️ Unaudited |
| Aggregator_stETH_NVDA_arbitrum | unknown | arbitrum | n/a | [`0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310`](./contracts/arbitrum-42161/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | ⚠️ Unaudited |
| Aggregator_stETH_SILVER_mainnet | unknown | ethereum | n/a | [`0x7223e17bd4527acbe44644300ea0f09a4aebc995`](./contracts/ethereum-1/0x7223e17bd4527acbe44644300ea0f09a4aebc995/) | ⚠️ Unaudited |
| Aggregator_stETH_SPY_arbitrum | unknown | arbitrum | n/a | [`0x969fb67331d6fa3e729292faa5752bba759f2b7f`](./contracts/arbitrum-42161/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | ⚠️ Unaudited |
| Aggregator_stETH_TSLA_arbitrum | unknown | arbitrum | n/a | [`0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206`](./contracts/arbitrum-42161/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | ⚠️ Unaudited |
| Aggregator_stETH_XAG_mainnet | unknown | ethereum | n/a | [`0x7fe8d4590a5aa0c8bdca581bbc30d68ab59dad78`](./contracts/ethereum-1/0x7fe8d4590a5aa0c8bdca581bbc30d68ab59dad78/) | ⚠️ Unaudited |
| Aggregator_stETH_XAU_mainnet | unknown | ethereum | n/a | [`0x2962eccf1b9cc46fe1aff7bfc0f7179fc87939ee`](./contracts/ethereum-1/0x2962eccf1b9cc46fe1aff7bfc0f7179fc87939ee/) | ⚠️ Unaudited |
| Aggregator_sUSDe_BTC_mainnet | unknown | ethereum | n/a | [`0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310`](./contracts/ethereum-1/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | ⚠️ Unaudited |
| Aggregator_sUSDe_ETH_mainnet | unknown | ethereum | n/a | [`0x969fb67331d6fa3e729292faa5752bba759f2b7f`](./contracts/ethereum-1/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | ⚠️ Unaudited |
| Aggregator_sUSDe_EUR_mainnet | unknown | ethereum | n/a | [`0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206`](./contracts/ethereum-1/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | ⚠️ Unaudited |
| Aggregator_sUSDe_GOLD_mainnet | unknown | ethereum | n/a | [`0x5c38c744cff6ec051d955566384bf921cfaaac26`](./contracts/ethereum-1/0x5c38c744cff6ec051d955566384bf921cfaaac26/) | ⚠️ Unaudited |
| Aggregator_sUSDe_MCAP_mainnet | unknown | ethereum | n/a | [`0xf2ac2880e1569d2cab50be41f6bfa92e5e6e03c9`](./contracts/ethereum-1/0xf2ac2880e1569d2cab50be41f6bfa92e5e6e03c9/) | ⚠️ Unaudited |
| Aggregator_sUSDe_SILVER_mainnet | unknown | ethereum | n/a | [`0x7a4ac7b91bcbd069fa0b45bdb5e393915a663cfd`](./contracts/ethereum-1/0x7a4ac7b91bcbd069fa0b45bdb5e393915a663cfd/) | ⚠️ Unaudited |
| Aggregator_tBTC_USD_mainnet | unknown | ethereum | n/a | [`0xd8df89f1c15a26f8a6c119161812f199cdfe23ee`](./contracts/ethereum-1/0xd8df89f1c15a26f8a6c119161812f199cdfe23ee/) | ⚠️ Unaudited |
| Aggregator_USDE_AAPL_arbitrum | unknown | arbitrum | n/a | [`0x91f5c981c3676af8ee40003c79e96582fdb12621`](./contracts/arbitrum-42161/0x91f5c981c3676af8ee40003c79e96582fdb12621/) | ⚠️ Unaudited |
| Aggregator_USDE_AMZN_arbitrum | unknown | arbitrum | n/a | [`0xf5dafbf1a1abe5eadc16799e69b7b53c58d193b5`](./contracts/arbitrum-42161/0xf5dafbf1a1abe5eadc16799e69b7b53c58d193b5/) | ⚠️ Unaudited |
| Aggregator_USDE_GOOGL_arbitrum | unknown | arbitrum | n/a | [`0xc351a54b3ed4a930d8b30958a112a1e6dcd3efc0`](./contracts/arbitrum-42161/0xc351a54b3ed4a930d8b30958a112a1e6dcd3efc0/) | ⚠️ Unaudited |
| Aggregator_USDE_MAG7_arbitrum | unknown | arbitrum | n/a | [`0xff37db6dea33228a5d84546250a5d0d0da942fd7`](./contracts/arbitrum-42161/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | ⚠️ Unaudited |
| Aggregator_USDE_MAG7i26_arbitrum | unknown | arbitrum | n/a | [`0xf36648f44763efe7c528140a2f804b2124cc3fe1`](./contracts/arbitrum-42161/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | ⚠️ Unaudited |
| Aggregator_USDE_META_arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9a307462964b3936a3a5160e852bf2bfe9d4c69a`](./contracts/arbitrum-42161/0x9a307462964b3936a3a5160e852bf2bfe9d4c69a/); arbitrum `0x9dadffe3fd7c14bf1c023fd736510464ea3e8234` | ⚠️ Unaudited |
| Aggregator_USDE_MSFT_arbitrum | unknown | arbitrum | n/a | [`0x2b63607299e7645d883168906befb13cb7f59659`](./contracts/arbitrum-42161/0x2b63607299e7645d883168906befb13cb7f59659/) | ⚠️ Unaudited |
| Aggregator_USDE_NVDA_arbitrum | unknown | arbitrum | n/a | [`0xb772b800982127a3e1489daacbe214b3c8575dd6`](./contracts/arbitrum-42161/0xb772b800982127a3e1489daacbe214b3c8575dd6/) | ⚠️ Unaudited |
| Aggregator_USDE_SPY_arbitrum | unknown | arbitrum | n/a | [`0x657be7a2b91f95222d163bee3b5f4c27bed598c5`](./contracts/arbitrum-42161/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | ⚠️ Unaudited |
| Aggregator_USDE_TSLA_arbitrum | unknown | arbitrum | n/a | [`0x777bd12e1f61b8cac19cbd30c0233c46b4683c00`](./contracts/arbitrum-42161/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | ⚠️ Unaudited |
| Aggregator_wBTC_USD_mainnet | token | ethereum | n/a | [`0x87292e650040b2d284983c0e0814344506948080`](./contracts/ethereum-1/0x87292e650040b2d284983c0e0814344506948080/) | ⚠️ Unaudited |
| Aggregator_wstETH_USD_mainnet | unknown | ethereum | n/a | [`0x28bbaaf05dee8a06d4206089bcd17c1129e6edca`](./contracts/ethereum-1/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | ⚠️ Unaudited |
| BaoFactory_v1 | registry | base | n/a | 2 deployments: ethereum `0xd696e56b3a054734d4c6dcbd32e11a278b0ec458`; base [`0xa3f71025ce5ddde817b98e8bcb92365b4040ca3e`](./contracts/base-8453/0xa3f71025ce5ddde817b98e8bcb92365b4040ca3e/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x2cbf457112ef5a16cfca10fb173d56a5cc9daa66`](./contracts/ethereum-1/0x2cbf457112ef5a16cfca10fb173d56a5cc9daa66/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x40ff767ff4055d53b1bc1b0141221a37b25905fd`](./contracts/ethereum-1/0x40ff767ff4055d53b1bc1b0141221a37b25905fd/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x42cc9a19b358a2a918f891d8a6199d8b05f0bc1c`](./contracts/ethereum-1/0x42cc9a19b358a2a918f891d8a6199d8b05f0bc1c/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x64e72cbb24d1f80a0f66778da0b95a46ead30539`](./contracts/ethereum-1/0x64e72cbb24d1f80a0f66778da0b95a46ead30539/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x66d18b9dd5d1cd51957dfea0e0373b54e06118c8`](./contracts/ethereum-1/0x66d18b9dd5d1cd51957dfea0e0373b54e06118c8/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x68eda29187587def950d566f862ffa85fda594cf`](./contracts/ethereum-1/0x68eda29187587def950d566f862ffa85fda594cf/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x7bfb831e6360d4600c7b9b200f8aca6f89cecda4`](./contracts/ethereum-1/0x7bfb831e6360d4600c7b9b200f8aca6f89cecda4/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x8ad6b177137a6c33070c27d98355717849ce526c`](./contracts/ethereum-1/0x8ad6b177137a6c33070c27d98355717849ce526c/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0x8f655ca32a1fa8032955989c19e91886f26439dc`](./contracts/ethereum-1/0x8f655ca32a1fa8032955989c19e91886f26439dc/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xa6c02de8e3150c6ffa9c80f98185d42653cb438d`](./contracts/ethereum-1/0xa6c02de8e3150c6ffa9c80f98185d42653cb438d/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xa9eb43ed6ba3b953a82741f3e226c1d6b029699b`](./contracts/ethereum-1/0xa9eb43ed6ba3b953a82741f3e226c1d6b029699b/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xbae2cab2ed87d488cf264ba9411a3fddab43ec22`](./contracts/ethereum-1/0xbae2cab2ed87d488cf264ba9411a3fddab43ec22/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xc64fc46eed431e92c1b5e24dc296b5985ce6cc00`](./contracts/ethereum-1/0xc64fc46eed431e92c1b5e24dc296b5985ce6cc00/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xc9df4f62474cf6cde6c064db29416a9f4f27ebdc`](./contracts/ethereum-1/0xc9df4f62474cf6cde6c064db29416a9f4f27ebdc/) | ⚠️ Unaudited |
| Genesis_v1 | unknown | ethereum | n/a | [`0xf4f97218a00213a57a32e4606aaecc99e1805a89`](./contracts/ethereum-1/0xf4f97218a00213a57a32e4606aaecc99e1805a89/) | ⚠️ Unaudited |
| HarborCustomFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4600b14992f0b5b6ee629cc09f5ab7d0f1598fe0`](./contracts/arbitrum-42161/0x4600b14992f0b5b6ee629cc09f5ab7d0f1598fe0/); arbitrum `0x4e3bbbcd346aeb88927aa87ac345d46cbb3160da`; arbitrum `0xe3a0ab69965b013cffce470315a6ba67a667cc7d` | ⚠️ Unaudited |
| HarborCustomFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4be4501336130e61e5872cb953e886a3a84d34cc`](./contracts/arbitrum-42161/0x4be4501336130e61e5872cb953e886a3a84d34cc/); arbitrum `0x9243ed7d94bb59b27a6fe31b76010dbef796fc5c`; arbitrum `0xdf21f32c522b2a871d5a6ad303638051b51c378f` | ⚠️ Unaudited |
| HarborCustomFeedNormalization_v2 | unknown | base | n/a | 13 deployments: base [`0x19f5ac27905726b81ce91b61d45c0b267d5b1389`](./contracts/base-8453/0x19f5ac27905726b81ce91b61d45c0b267d5b1389/); base `0x26b916649e643faa557409fc597bab2600238843`; base `0x2f6093902c6d5c8ea2b62f371a02932feed8fc52`; base `0x31cb93b926162bcd1db398914080d4c031581814`; base `0x4b05cf577b967f45fa50a9d215a0c3129f5f826c`; base `0x54314fa695b4943b95b50b5f0979d0d1b3191d60`; base `0x6fbf25cf4fa05e9bf49a5288c4a66bd98a042755`; base `0x70bd551e3b069b905b5fadb09ea3f30dbef35061`; base `0x76d5ebfe459643326149b488841a0228bd67d0d7`; base `0xa4dc9f417659f9e9d2893e36c52a57e1ed20fe91`; base `0xaf3327801e0bbefcb9741314e5fb45fe3241b91e`; base `0xefc5c2b4234a4655efdbda6e2e3b65fab4b2ec4e`; base `0xf28c008a837f0f2fb5345186923ae9e378c9bfc4` | ⚠️ Unaudited |
| HarborDoubleFeedAndRateAggregator_v1 | unknown | ethereum | n/a | [`0xe370289af2145a5b2f0f7a4a900ebfd478a156db`](./contracts/ethereum-1/0xe370289af2145a5b2f0f7a4a900ebfd478a156db/) | ⚠️ Unaudited |
| HarborDoubleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 17 deployments: arbitrum [`0x06cd5701d9ffd9f7aadfe28c57b481e99d2ba3ad`](./contracts/arbitrum-42161/0x06cd5701d9ffd9f7aadfe28c57b481e99d2ba3ad/); arbitrum `0x3df39f74e9538414bcca0ec71abca3b487b89a86`; arbitrum `0x424d373141a845eb2822b2a8e5ed0f529ece4f7a`; arbitrum `0x63d961913cd855f5f8c8ca7cdc22771aba3326fe`; arbitrum `0x76453e0eaf1a54c0e939b2e66d9825808cbd411b`; arbitrum `0x78d74ea76fbfd476a06c1678dc89c025595c8536`; arbitrum `0x7dae17b00dcd5c37d4992a17c3cf8f5e15d2bbaf`; arbitrum `0x82b8ab2c8b4781f2b3d52e7807d4afa5704912d0`; arbitrum `0x8391ea5daa500ef69d76544172ec666b77ba711e`; arbitrum `0x8919713b1620bca8be6e774fffa735b0051ff6cb`; arbitrum `0x8e02c828635d9519bed050fe1cbebc646feb3b88`; arbitrum `0x8ee0d6ad1d15b3515ba81cce16bba344deea6781`; arbitrum `0x8f6f9c8af44f5f15a18d0fa93b5814a623fa6353`; arbitrum `0x9f62503d61cda530216ad46c1d239258bd201034`; arbitrum `0xa70dc2f2a40695669a1f453e3777b10b63fa400a`; arbitrum `0xd59a1c8d1fa8f3fae1e1f835e243a7bfb6173f91`; arbitrum `0xf012a1ba66a411404feae0a2aed68deb18d7de32` | ⚠️ Unaudited |
| HarborDoubleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 17 deployments: arbitrum [`0x0c72662f59ccd99a086ac7e8f651248aef28254e`](./contracts/arbitrum-42161/0x0c72662f59ccd99a086ac7e8f651248aef28254e/); arbitrum `0x1166110b541200e5a07a41ac55eaf6676a9e9a2e`; arbitrum `0x30b3edebcf9e3af3860f6ad83caf52f13040d3ef`; arbitrum `0x49f58851d36edaac961d938a3283881e4e6823fa`; arbitrum `0x60e55ff98811a8555eabf8cd76f25e80bed7865a`; arbitrum `0x69c456cc09b41c9a81cfec64ab47644abada83fc`; arbitrum `0x7548764f9da92bf094c0e9eb16d610b8bb1fb5c7`; arbitrum `0x79548a8b0295eeede42fac41d64f0dca877398fa`; arbitrum `0x7ca393aacc429b3777c1c38e6c437b24ee81c02b`; arbitrum `0x864d1b5297e1819645df348d440705eca7f4f787`; arbitrum `0x924ee2e6cd99790d61223fe0f5f597bee75be0ad`; arbitrum `0xabbd1bc15365d3bab403612b96f4a3c3aa4b8227`; arbitrum `0xb310abb30203ed6babc745c44d0a377c187f2b89`; arbitrum `0xc199605a723d21fd597ac206fe650be4191333de`; arbitrum `0xc3722c0ef476df2fe4a88d793210e53620f2c5da`; arbitrum `0xe34bf6cbd0a1a6588328ba059392a75974bec23b`; arbitrum `0xf0e4aa35b33c0847e3bae3c2f4e49846b46f685e` | ⚠️ Unaudited |
| HarborSingleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x15a6af3cc91456bf757dcc24b1d421ae204c574e`](./contracts/arbitrum-42161/0x15a6af3cc91456bf757dcc24b1d421ae204c574e/); arbitrum `0xa79191bbb7542805b30326165516a8fed77ce92c`; arbitrum `0xea567be547f4af72be3ae559c631540d69148335` | ⚠️ Unaudited |
| HarborSingleFeedAndRateAggregator_v1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6beb1a1189ac68a2a26b5210e5ccfb9e8a3e408e`](./contracts/arbitrum-42161/0x6beb1a1189ac68a2a26b5210e5ccfb9e8a3e408e/); arbitrum `0xcf5392b7d3c81b1bc4aa81de02de4a4c265ed4a9`; arbitrum `0xd8789eb86dd57f9fe10d0d8dfa803286b389b1bc` | ⚠️ Unaudited |
| HarborSingleFeedAndRateAggregator_v2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x71437c90f1e0785dd691fd02f7be0b90cd14c097`](./contracts/ethereum-1/0x71437c90f1e0785dd691fd02f7be0b90cd14c097/); ethereum `0x8f76a260c5d21586afff18f880ffc808d0524a73` | ⚠️ Unaudited |
| HarborTideToken_v1 | token | base | n/a | 2 deployments: base [`0x2e36d436ff3469a0a6d03d44e3c67dc63bb9642c`](./contracts/base-8453/0x2e36d436ff3469a0a6d03d44e3c67dc63bb9642c/); base `0x600e353fa3414abdd08b5f20b20b4cd701823b9b` | ⚠️ Unaudited |
| HarborTripleFeedAndRateAggregator_v2 | unknown | base | n/a | 6 deployments: base [`0x756b95d0bb61c195d1196eb2143d8d88570036ac`](./contracts/base-8453/0x756b95d0bb61c195d1196eb2143d8d88570036ac/); base `0x7ec5fa8b84041f4619beaf9954ce586d750e4959`; base `0x830ab2b3a936f727ee2ff67e9c073380b6f166d8`; base `0xdc976b5ab4b8210be5a580f8ab45bac047b330a1`; base `0xe2962ab29c723415f023451e9f166122d8b4a980`; base `0xf9cb23e2e882c67a899c448cbe2542df9eebc615` | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x0aa2b6ee6d079f39a52725b33b15854505542b51`](./contracts/ethereum-1/0x0aa2b6ee6d079f39a52725b33b15854505542b51/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x177bb50574cda129bdd0b0f50d4e061d38aa75ef`](./contracts/ethereum-1/0x177bb50574cda129bdd0b0f50d4e061d38aa75ef/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x1c0067bee039a293804b8be951b368d2ec65b3e9`](./contracts/ethereum-1/0x1c0067bee039a293804b8be951b368d2ec65b3e9/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x1e326fff476a5d107f1f6684380f677d2fd5e492`](./contracts/ethereum-1/0x1e326fff476a5d107f1f6684380f677d2fd5e492/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x33e32ff4d0677862fa31582cc654a25b9b1e4888`](./contracts/ethereum-1/0x33e32ff4d0677862fa31582cc654a25b9b1e4888/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x3d3eae3a4ee52ef703216c62efec3157694606de`](./contracts/ethereum-1/0x3d3eae3a4ee52ef703216c62efec3157694606de/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x68911ea33e11bc77e07f6da4db6cd23d723641ce`](./contracts/ethereum-1/0x68911ea33e11bc77e07f6da4db6cd23d723641ce/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x7e1d48774f6fad0aa41cbb47a66bb8ec3094e3c2`](./contracts/ethereum-1/0x7e1d48774f6fad0aa41cbb47a66bb8ec3094e3c2/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0x880600e0c803d836e305b7c242fc095eed234a8f`](./contracts/ethereum-1/0x880600e0c803d836e305b7c242fc095eed234a8f/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xb315dc4698df45a477d8bb4b0bc694c4d1be91b5`](./contracts/ethereum-1/0xb315dc4698df45a477d8bb4b0bc694c4d1be91b5/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xc14837c30bedf3081cba2cdeb067fa6f0381e69b`](./contracts/ethereum-1/0xc14837c30bedf3081cba2cdeb067fa6f0381e69b/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xd6e2f8e57b4afb51c6fa4cbc012e1ce6aead989f`](./contracts/ethereum-1/0xd6e2f8e57b4afb51c6fa4cbc012e1ce6aead989f/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xdefb2c04062350678965cbf38a216cc50723b246`](./contracts/ethereum-1/0xdefb2c04062350678965cbf38a216cc50723b246/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xe37e34ab0aaaabac0e20c911349c1defad0691b6`](./contracts/ethereum-1/0xe37e34ab0aaaabac0e20c911349c1defad0691b6/) | ⚠️ Unaudited |
| Minter_v2 | unknown | ethereum | n/a | [`0xf42516eb885e737780eb864dd07cec8628000919`](./contracts/ethereum-1/0xf42516eb885e737780eb864dd07cec8628000919/) | ⚠️ Unaudited |
| Oracle_stETH_AAPL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x6dc935c12818e8213b7764b5c58d1f07645e8c2f`](./contracts/arbitrum-42161/0x6dc935c12818e8213b7764b5c58d1f07645e8c2f/); arbitrum `0xe1518302696223e000cfef967268b12a417b2d20` | ⚠️ Unaudited |
| Oracle_stETH_AMZN_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x31e4be9a43c863e985e2903c707f380fd12e6197`](./contracts/arbitrum-42161/0x31e4be9a43c863e985e2903c707f380fd12e6197/); arbitrum `0xf3b64c2da5cc92f3bd70de6c5315807d6f95e319` | ⚠️ Unaudited |
| Oracle_stETH_GOOGL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0facfbbcbb7ee77f6ec8932559bfa98a8e978fdf`](./contracts/arbitrum-42161/0x0facfbbcbb7ee77f6ec8932559bfa98a8e978fdf/); arbitrum `0x88c52a4f5f4678866c4147128cb3a11e58a75b73` | ⚠️ Unaudited |
| Oracle_stETH_MAG7_arbitrum | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x65cc7256218450542e3b9c04ef413acb87c6907c`](./contracts/arbitrum-42161/0x65cc7256218450542e3b9c04ef413acb87c6907c/); arbitrum `0x898c3a6ab501576f1ea33ded096eaa1d0f50f96f`; arbitrum `0x9af8fbf66bf3645f505d58614d7a13d411b99907` | ⚠️ Unaudited |
| Oracle_stETH_MAG7i26_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x2fab0ad567b92b1b78b2e91e6fc64c4286cc79bb`](./contracts/arbitrum-42161/0x2fab0ad567b92b1b78b2e91e6fc64c4286cc79bb/); arbitrum `0xe5870aaa574b638c788951dc64c0b345431fbaee` | ⚠️ Unaudited |
| Oracle_stETH_META_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x3fe7ad560cbade8609b0b7a6f9eb41b6405cfc6f`](./contracts/arbitrum-42161/0x3fe7ad560cbade8609b0b7a6f9eb41b6405cfc6f/); arbitrum `0xa2d1b7cd7dd66c197c053a8cd8045c5e00173747` | ⚠️ Unaudited |
| Oracle_stETH_MSFT_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x27c8d5178f742aa67fd653f0c71c5524b6866ea5`](./contracts/arbitrum-42161/0x27c8d5178f742aa67fd653f0c71c5524b6866ea5/); arbitrum `0xd929d40d8770d2fd867533c6cef6d1d8b77fb162` | ⚠️ Unaudited |
| Oracle_stETH_NVDA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x09856313762a225a076bfb2e2445a2680c3bb9cb`](./contracts/arbitrum-42161/0x09856313762a225a076bfb2e2445a2680c3bb9cb/); arbitrum `0xcb3340a845cd6dc5ebd2d0c75fb00060666241fa` | ⚠️ Unaudited |
| Oracle_stETH_SPY_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x15cc8fca219bce4bca3d6c689cb34532d14ddaa9`](./contracts/arbitrum-42161/0x15cc8fca219bce4bca3d6c689cb34532d14ddaa9/); arbitrum `0x2f4313c5f3df954784286cf3e24b8fbc36e7c980` | ⚠️ Unaudited |
| Oracle_stETH_TSLA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x89d1392ce4eb5b487c7a309e4f650e8427804a97`](./contracts/arbitrum-42161/0x89d1392ce4eb5b487c7a309e4f650e8427804a97/); arbitrum `0xdba52c346a94c487bd5440e43c4706dfb6d715ef` | ⚠️ Unaudited |
| Oracle_USDE_AAPL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x94545f7d0a58b10ef31d98da956843f9296dd690`](./contracts/arbitrum-42161/0x94545f7d0a58b10ef31d98da956843f9296dd690/); arbitrum `0xfeac74fda17f0772f2262cfda75bc7a50350aee8` | ⚠️ Unaudited |
| Oracle_USDE_AMZN_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x3a27f4f42e8767de00bb1d3b3ba1fc986fdd3d04`](./contracts/arbitrum-42161/0x3a27f4f42e8767de00bb1d3b3ba1fc986fdd3d04/); arbitrum `0xa71534ed8753e59d2fb7b1cb3d01c50e2c70aeda` | ⚠️ Unaudited |
| Oracle_USDE_GOOGL_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x63469a18e9c14b76c7b32010e7b8596e90ec3c77`](./contracts/arbitrum-42161/0x63469a18e9c14b76c7b32010e7b8596e90ec3c77/); arbitrum `0x945248b6d1cc8ace4c3d41dc8ea4796a052532f9` | ⚠️ Unaudited |
| Oracle_USDE_MAG7_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x6c02ba3173e39371de761f2f804dfdc62fd78293`](./contracts/arbitrum-42161/0x6c02ba3173e39371de761f2f804dfdc62fd78293/); arbitrum `0xb201f4b10fdfa3700dc683f67d328301e27c3103` | ⚠️ Unaudited |
| Oracle_USDE_MAG7i26_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xc19bb51cbca03430b8c1c152ebf3298ba003d0d6`](./contracts/arbitrum-42161/0xc19bb51cbca03430b8c1c152ebf3298ba003d0d6/); arbitrum `0xde8005922723b6b3ad37bb06c87b41578d8f15b6` | ⚠️ Unaudited |
| Oracle_USDE_META_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x28d842b390d73f37a5e8a33ba038f531dbb6f435`](./contracts/arbitrum-42161/0x28d842b390d73f37a5e8a33ba038f531dbb6f435/); arbitrum `0x947cd2043cd3eefb98ed95816715c8f535dd171f` | ⚠️ Unaudited |
| Oracle_USDE_MSFT_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x69c1b2bb8805add31815dea5ba06423055348fde`](./contracts/arbitrum-42161/0x69c1b2bb8805add31815dea5ba06423055348fde/); arbitrum `0x99f0c0307bed4767ba8acfe8611657b705593e55` | ⚠️ Unaudited |
| Oracle_USDE_NVDA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0c0a93d76d17d7ae93ff85550cf11fcfc2daa143`](./contracts/arbitrum-42161/0x0c0a93d76d17d7ae93ff85550cf11fcfc2daa143/); arbitrum `0x814eff07b73562da5387d56621085fd6edc39489` | ⚠️ Unaudited |
| Oracle_USDE_SPY_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5d9b1b4aaceedc2ae4f0bc9332d7c7a1230078d5`](./contracts/arbitrum-42161/0x5d9b1b4aaceedc2ae4f0bc9332d7c7a1230078d5/); arbitrum `0x7e4f98217a085f1a06332edff805513b6ea79357` | ⚠️ Unaudited |
| Oracle_USDE_TSLA_arbitrum | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x59634bbe968d969f98ee9f95f94d90ff9b986aad`](./contracts/arbitrum-42161/0x59634bbe968d969f98ee9f95f94d90ff9b986aad/); arbitrum `0xb2f444717e2e969dd64ae58b4289129d094889a3` | ⚠️ Unaudited |
| sBaoSynth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4abce5dfb2664f46b7b9a35e72b339e60a35e5e9`](./contracts/arbitrum-42161/0x4abce5dfb2664f46b7b9a35e72b339e60a35e5e9/); arbitrum `0xbd06dec45d23f10841def9aa1b4bb6e7e662385b` | ⚠️ Unaudited |
| sBaoSynth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x937982c5ea62bd6765bd5387e5c6b45e24cb4ff6`](./contracts/arbitrum-42161/0x937982c5ea62bd6765bd5387e5c6b45e24cb4ff6/); arbitrum `0xf3c870f63a889e9781cb14297b7160b7de02c182` | ⚠️ Unaudited |

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
| Proxy (impl: 0x906ea022f159f2939f953edde787b87bf5a2f123) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x6e08c7f589f3a4859e18bc56285c150f827f4648`; arbitrum `0x906ea022f159f2939f953edde787b87bf5a2f123`; arbitrum `0xfef7ca2b840f43f7ec15b50a7d163c95d0477d37` | ❓ Unverified |
| Proxy (impl: 0xe473190ab246a0880bd3be05da2194253f1bfd11) | unknown | arbitrum | n/a | 17 deployments: arbitrum `0x0a3dd88ebc04d5e728dc656e4215de9bac0b109e`; arbitrum `0x0de5cc22f6b4e909a237541aed7e3a43f7d1f424`; arbitrum `0x15f6eacc86b0bb095da5a80a1edf93d64a34b891`; arbitrum `0x173b98e27df83dc6fc930c1465f65cd10aa21657`; arbitrum `0x18681bd6a8d12ce5d8ed621cbf643b5958d0ef11`; arbitrum `0x22bc085dd284f79364b6a512c063e1b469ae0a8f`; arbitrum `0x335ce7842cee543fc360469b3263842010ae38ae`; arbitrum `0x46cfcb10d1fabf157a872f68aa7f2e61962795e2`; arbitrum `0x6e30ffe745aa7058280c44cb5451e1d52f8c93a8`; arbitrum `0x7ae87cd2064d0a4cd1acec88f4e764b607d7e481`; arbitrum `0xc19f35b343ccb3b4320b5e64a12b495420e3d90e`; arbitrum `0xdaa15e17d2ce2d3bf6dbc2d07de122608fd38e9a`; arbitrum `0xddfa1a603c268d46e96173a6fdac8297a53a2cc1`; arbitrum `0xe3e68ca829f24d939f5d21b2ca1ac1472c12ec7d`; arbitrum `0xe473190ab246a0880bd3be05da2194253f1bfd11`; arbitrum `0xe4f3ce4f27f6bb520668f35101052831c80802ca`; arbitrum `0xf0ff6d8d707d81d87caf2faa2447253f283f8873` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x436c33222136554192733c6771669c4b51b7fe3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a130bbf041962b60e81009f09c41bd930d1294` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x077bdebf2c261eeaad8fffa1b934506d04649e05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1044c5d6acb8d280511840050a0789c0c7acdc66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x1048a287ddeff38e9a5c1e564a83f6978a2dc1ef`; arbitrum `0x3ce5e801a89ea0ac36fc29c12562695d4e6f0fec`; arbitrum `0x74c65bab339f9079521e74bfe1ba3b62cf4f8866` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x113aa3c78a58825c2b66ab0e544638bdc16b35e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27a1c86749d336a5dd0403635834dd7d53e0f50c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x282f19d147ed5e0208970e9d914905c472f2dda3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a9bd9829b690ee36b79f735412e0959f7813534` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fa33c10a5833c1a983d6a373128c736d5ee9a11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3990031bfa48a1f64c76d3584cff264393878f49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c7b4e9ad36b9837fabc1f5c4007f65af665a979` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50ea38b09612b508ecbeb432cb9bf9ae91362908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x527371e60e99572e79c6ee8b2b1492356c1747d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ad8fda1076bd3c297d03f7c6fc02a4bfc5cf689` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6774745afc1574cda36d7cc2d53df0028480790e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75569b8212b9da954fa82a96301019f158385316` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7671efd4ba6e46a60e5a84a525abaf6ecf1e1f83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc39a29b358faae718fe50e6571e1c80aa6cd69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cf0c0d93381f8216ace9b31774e4893fb8ded5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x849d11c6ad6e5041cdf64e9921990916113ae102` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a3df4d84aad840846599ef9e1f3ef38fefe966f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9aeac00d1222b4e9a94a4028d3f6359da011bab5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3287c1a9a777426bc3022d2a94afda9561bda3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa44db3b34b8d3490a239a4aa21cef13b4aaa5667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb196a0220ad46485ca1bcfc70b5f6bcbc4de3e4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb497c7add3fe3710b287950cacbab30ec2405974` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce23e54b1b47277f2b5f1deff06908e95e0bf38c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf04fa17ddcf0ba56dc27729e952c9ff02eb9ba0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda55f1fc11da3b62032f51d4b40307c2c5b34aba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf183d68f7d4e47f0546bf67f56677d35ce87617d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025_10_21_Final_Harbor_Collaborative_Audit_Report_1761050317.pdf](https://www.harborfinance.io/2025_10_21_Final_Harbor_Collaborative_Audit_Report_1761050317.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | 1 | n/a |
| [www.harborfinance.io](https://www.harborfinance.io/) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf7657cd7890904d108384e289997c993e2e2bbc0`](./contracts/ethereum-1/0xf7657cd7890904d108384e289997c993e2e2bbc0/) | Aggregator_fxUSD_BTC_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea5292c58288dce24c52c1db13ca048275665ebc`](./contracts/ethereum-1/0xea5292c58288dce24c52c1db13ca048275665ebc/) | Aggregator_fxUSD_ETH_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305454f8b46aa3485d8b350d8e832459974f5e9f`](./contracts/ethereum-1/0x305454f8b46aa3485d8b350d8e832459974f5e9f/) | Aggregator_fxUSD_EUR_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f7f62889e599e51b9e21b27d589fa521516d147`](./contracts/ethereum-1/0x1f7f62889e599e51b9e21b27d589fa521516d147/) | Aggregator_fxUSD_GOLD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88430c0f09a6d603c43e2816f2ea9ab45db7e1a8`](./contracts/ethereum-1/0x88430c0f09a6d603c43e2816f2ea9ab45db7e1a8/) | Aggregator_fxUSD_MCAP_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14816ff286f2ea46ab48c3275401fd4b1ef817b5`](./contracts/ethereum-1/0x14816ff286f2ea46ab48c3275401fd4b1ef817b5/) | Aggregator_fxUSD_SILVER_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4e46a2e299f28ffa86baee19201b1bb9cd4c153`](./contracts/ethereum-1/0xb4e46a2e299f28ffa86baee19201b1bb9cd4c153/) | Aggregator_fxUSD_XAG_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd71538769af1c8f4d663bd0a5ea667d67e1623e2`](./contracts/ethereum-1/0xd71538769af1c8f4d663bd0a5ea667d67e1623e2/) | Aggregator_fxUSD_XAU_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf36648f44763efe7c528140a2f804b2124cc3fe1`](./contracts/ethereum-1/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | Aggregator_hsfxUSD_BTC_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8643e35ef119f983b09c322039e8aa49a3e3372`](./contracts/ethereum-1/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | Aggregator_hsfxUSD_ETH_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x657be7a2b91f95222d163bee3b5f4c27bed598c5`](./contracts/ethereum-1/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | Aggregator_hsfxUSD_EUR_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x652e9b0ad84fd2a0c3806129bdbdef4585bb29e8`](./contracts/ethereum-1/0x652e9b0ad84fd2a0c3806129bdbdef4585bb29e8/) | Aggregator_hsfxUSD_GOLD_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70387587a0d3a01a2c75904dd8ca355a921cd1f3`](./contracts/ethereum-1/0x70387587a0d3a01a2c75904dd8ca355a921cd1f3/) | Aggregator_hsfxUSD_SILVER_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff37db6dea33228a5d84546250a5d0d0da942fd7`](./contracts/ethereum-1/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | Aggregator_hsstETH_BTC_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x777bd12e1f61b8cac19cbd30c0233c46b4683c00`](./contracts/ethereum-1/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | Aggregator_hsstETH_EUR_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34dfdf00262e1a3b61c7a0616f0645a928dd8187`](./contracts/ethereum-1/0x34dfdf00262e1a3b61c7a0616f0645a928dd8187/) | Aggregator_hsstETH_GOLD_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50e198a8fa7e4c95b355e34cba026133f68d1637`](./contracts/ethereum-1/0x50e198a8fa7e4c95b355e34cba026133f68d1637/) | Aggregator_hsstETH_SILVER_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1867657ef7f65b745e47b7f70d15de50b66884d`](./contracts/ethereum-1/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | Aggregator_PAXG_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa8643e35ef119f983b09c322039e8aa49a3e3372`](./contracts/arbitrum-42161/0xa8643e35ef119f983b09c322039e8aa49a3e3372/) | Aggregator_stETH_AAPL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28bbaaf05dee8a06d4206089bcd17c1129e6edca`](./contracts/arbitrum-42161/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | Aggregator_stETH_AMZN_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2877330d6fba9bc0299588bcbaf16ba42d12b05a`](./contracts/base-8453/0x2877330d6fba9bc0299588bcbaf16ba42d12b05a/) | Aggregator_stETH_BOM5_base | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42018953e5174dc07058beee0618aa569fbfbe90`](./contracts/ethereum-1/0x42018953e5174dc07058beee0618aa569fbfbe90/) | Aggregator_stETH_BTC_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e27965689b4b8b425d98fbc676fe22d74caf7c7`](./contracts/ethereum-1/0x5e27965689b4b8b425d98fbc676fe22d74caf7c7/) | Aggregator_stETH_EUR_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ebde6143c5e366264ba7416fdea18bc27c04a31`](./contracts/ethereum-1/0x4ebde6143c5e366264ba7416fdea18bc27c04a31/) | Aggregator_stETH_GOLD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52b66ad600dc6051cf056951153355d457068bd2`](./contracts/arbitrum-42161/0x52b66ad600dc6051cf056951153355d457068bd2/) | Aggregator_stETH_GOOGL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa8a130bbf041962b60e81009f09c41bd930d1294`](./contracts/arbitrum-42161/0xa8a130bbf041962b60e81009f09c41bd930d1294/) | Aggregator_stETH_MAG7_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x436c33222136554192733c6771669c4b51b7fe3d`](./contracts/arbitrum-42161/0x436c33222136554192733c6771669c4b51b7fe3d/) | Aggregator_stETH_MAG7i26_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fe6fa14db0d3c8a4709a4f3e37c1c862381859f`](./contracts/ethereum-1/0x4fe6fa14db0d3c8a4709a4f3e37c1c862381859f/) | Aggregator_stETH_MCAP_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x677f597d3013dbf76552ec6c605eeb551d3bbb72`](./contracts/arbitrum-42161/0x677f597d3013dbf76552ec6c605eeb551d3bbb72/) | Aggregator_stETH_META_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf1867657ef7f65b745e47b7f70d15de50b66884d`](./contracts/arbitrum-42161/0xf1867657ef7f65b745e47b7f70d15de50b66884d/) | Aggregator_stETH_MSFT_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310`](./contracts/arbitrum-42161/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | Aggregator_stETH_NVDA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7223e17bd4527acbe44644300ea0f09a4aebc995`](./contracts/ethereum-1/0x7223e17bd4527acbe44644300ea0f09a4aebc995/) | Aggregator_stETH_SILVER_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x969fb67331d6fa3e729292faa5752bba759f2b7f`](./contracts/arbitrum-42161/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | Aggregator_stETH_SPY_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206`](./contracts/arbitrum-42161/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | Aggregator_stETH_TSLA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fe8d4590a5aa0c8bdca581bbc30d68ab59dad78`](./contracts/ethereum-1/0x7fe8d4590a5aa0c8bdca581bbc30d68ab59dad78/) | Aggregator_stETH_XAG_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2962eccf1b9cc46fe1aff7bfc0f7179fc87939ee`](./contracts/ethereum-1/0x2962eccf1b9cc46fe1aff7bfc0f7179fc87939ee/) | Aggregator_stETH_XAU_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310`](./contracts/ethereum-1/0x0d0fdbb10b9eaf18a1034e9942f95af0147cc310/) | Aggregator_sUSDe_BTC_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x969fb67331d6fa3e729292faa5752bba759f2b7f`](./contracts/ethereum-1/0x969fb67331d6fa3e729292faa5752bba759f2b7f/) | Aggregator_sUSDe_ETH_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206`](./contracts/ethereum-1/0xda6097f2b8805a01fcbe8ba8fc2c45fcb7d3e206/) | Aggregator_sUSDe_EUR_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c38c744cff6ec051d955566384bf921cfaaac26`](./contracts/ethereum-1/0x5c38c744cff6ec051d955566384bf921cfaaac26/) | Aggregator_sUSDe_GOLD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2ac2880e1569d2cab50be41f6bfa92e5e6e03c9`](./contracts/ethereum-1/0xf2ac2880e1569d2cab50be41f6bfa92e5e6e03c9/) | Aggregator_sUSDe_MCAP_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a4ac7b91bcbd069fa0b45bdb5e393915a663cfd`](./contracts/ethereum-1/0x7a4ac7b91bcbd069fa0b45bdb5e393915a663cfd/) | Aggregator_sUSDe_SILVER_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8df89f1c15a26f8a6c119161812f199cdfe23ee`](./contracts/ethereum-1/0xd8df89f1c15a26f8a6c119161812f199cdfe23ee/) | Aggregator_tBTC_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x91f5c981c3676af8ee40003c79e96582fdb12621`](./contracts/arbitrum-42161/0x91f5c981c3676af8ee40003c79e96582fdb12621/) | Aggregator_USDE_AAPL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf5dafbf1a1abe5eadc16799e69b7b53c58d193b5`](./contracts/arbitrum-42161/0xf5dafbf1a1abe5eadc16799e69b7b53c58d193b5/) | Aggregator_USDE_AMZN_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc351a54b3ed4a930d8b30958a112a1e6dcd3efc0`](./contracts/arbitrum-42161/0xc351a54b3ed4a930d8b30958a112a1e6dcd3efc0/) | Aggregator_USDE_GOOGL_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff37db6dea33228a5d84546250a5d0d0da942fd7`](./contracts/arbitrum-42161/0xff37db6dea33228a5d84546250a5d0d0da942fd7/) | Aggregator_USDE_MAG7_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf36648f44763efe7c528140a2f804b2124cc3fe1`](./contracts/arbitrum-42161/0xf36648f44763efe7c528140a2f804b2124cc3fe1/) | Aggregator_USDE_MAG7i26_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9a307462964b3936a3a5160e852bf2bfe9d4c69a`](./contracts/arbitrum-42161/0x9a307462964b3936a3a5160e852bf2bfe9d4c69a/) | Aggregator_USDE_META_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2b63607299e7645d883168906befb13cb7f59659`](./contracts/arbitrum-42161/0x2b63607299e7645d883168906befb13cb7f59659/) | Aggregator_USDE_MSFT_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb772b800982127a3e1489daacbe214b3c8575dd6`](./contracts/arbitrum-42161/0xb772b800982127a3e1489daacbe214b3c8575dd6/) | Aggregator_USDE_NVDA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x657be7a2b91f95222d163bee3b5f4c27bed598c5`](./contracts/arbitrum-42161/0x657be7a2b91f95222d163bee3b5f4c27bed598c5/) | Aggregator_USDE_SPY_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x777bd12e1f61b8cac19cbd30c0233c46b4683c00`](./contracts/arbitrum-42161/0x777bd12e1f61b8cac19cbd30c0233c46b4683c00/) | Aggregator_USDE_TSLA_arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87292e650040b2d284983c0e0814344506948080`](./contracts/ethereum-1/0x87292e650040b2d284983c0e0814344506948080/) | Aggregator_wBTC_USD_mainnet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28bbaaf05dee8a06d4206089bcd17c1129e6edca`](./contracts/ethereum-1/0x28bbaaf05dee8a06d4206089bcd17c1129e6edca/) | Aggregator_wstETH_USD_mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa3f71025ce5ddde817b98e8bcb92365b4040ca3e`](./contracts/base-8453/0xa3f71025ce5ddde817b98e8bcb92365b4040ca3e/) | BaoFactory_v1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf457112ef5a16cfca10fb173d56a5cc9daa66`](./contracts/ethereum-1/0x2cbf457112ef5a16cfca10fb173d56a5cc9daa66/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ff767ff4055d53b1bc1b0141221a37b25905fd`](./contracts/ethereum-1/0x40ff767ff4055d53b1bc1b0141221a37b25905fd/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42cc9a19b358a2a918f891d8a6199d8b05f0bc1c`](./contracts/ethereum-1/0x42cc9a19b358a2a918f891d8a6199d8b05f0bc1c/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64e72cbb24d1f80a0f66778da0b95a46ead30539`](./contracts/ethereum-1/0x64e72cbb24d1f80a0f66778da0b95a46ead30539/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d18b9dd5d1cd51957dfea0e0373b54e06118c8`](./contracts/ethereum-1/0x66d18b9dd5d1cd51957dfea0e0373b54e06118c8/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68eda29187587def950d566f862ffa85fda594cf`](./contracts/ethereum-1/0x68eda29187587def950d566f862ffa85fda594cf/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bfb831e6360d4600c7b9b200f8aca6f89cecda4`](./contracts/ethereum-1/0x7bfb831e6360d4600c7b9b200f8aca6f89cecda4/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ad6b177137a6c33070c27d98355717849ce526c`](./contracts/ethereum-1/0x8ad6b177137a6c33070c27d98355717849ce526c/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f655ca32a1fa8032955989c19e91886f26439dc`](./contracts/ethereum-1/0x8f655ca32a1fa8032955989c19e91886f26439dc/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6c02de8e3150c6ffa9c80f98185d42653cb438d`](./contracts/ethereum-1/0xa6c02de8e3150c6ffa9c80f98185d42653cb438d/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9eb43ed6ba3b953a82741f3e226c1d6b029699b`](./contracts/ethereum-1/0xa9eb43ed6ba3b953a82741f3e226c1d6b029699b/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbae2cab2ed87d488cf264ba9411a3fddab43ec22`](./contracts/ethereum-1/0xbae2cab2ed87d488cf264ba9411a3fddab43ec22/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc64fc46eed431e92c1b5e24dc296b5985ce6cc00`](./contracts/ethereum-1/0xc64fc46eed431e92c1b5e24dc296b5985ce6cc00/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9df4f62474cf6cde6c064db29416a9f4f27ebdc`](./contracts/ethereum-1/0xc9df4f62474cf6cde6c064db29416a9f4f27ebdc/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4f97218a00213a57a32e4606aaecc99e1805a89`](./contracts/ethereum-1/0xf4f97218a00213a57a32e4606aaecc99e1805a89/) | Genesis_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4600b14992f0b5b6ee629cc09f5ab7d0f1598fe0`](./contracts/arbitrum-42161/0x4600b14992f0b5b6ee629cc09f5ab7d0f1598fe0/) | HarborCustomFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4be4501336130e61e5872cb953e886a3a84d34cc`](./contracts/arbitrum-42161/0x4be4501336130e61e5872cb953e886a3a84d34cc/) | HarborCustomFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19f5ac27905726b81ce91b61d45c0b267d5b1389`](./contracts/base-8453/0x19f5ac27905726b81ce91b61d45c0b267d5b1389/) | HarborCustomFeedNormalization_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe370289af2145a5b2f0f7a4a900ebfd478a156db`](./contracts/ethereum-1/0xe370289af2145a5b2f0f7a4a900ebfd478a156db/) | HarborDoubleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06cd5701d9ffd9f7aadfe28c57b481e99d2ba3ad`](./contracts/arbitrum-42161/0x06cd5701d9ffd9f7aadfe28c57b481e99d2ba3ad/) | HarborDoubleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c72662f59ccd99a086ac7e8f651248aef28254e`](./contracts/arbitrum-42161/0x0c72662f59ccd99a086ac7e8f651248aef28254e/) | HarborDoubleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15a6af3cc91456bf757dcc24b1d421ae204c574e`](./contracts/arbitrum-42161/0x15a6af3cc91456bf757dcc24b1d421ae204c574e/) | HarborSingleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6beb1a1189ac68a2a26b5210e5ccfb9e8a3e408e`](./contracts/arbitrum-42161/0x6beb1a1189ac68a2a26b5210e5ccfb9e8a3e408e/) | HarborSingleFeedAndRateAggregator_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71437c90f1e0785dd691fd02f7be0b90cd14c097`](./contracts/ethereum-1/0x71437c90f1e0785dd691fd02f7be0b90cd14c097/) | HarborSingleFeedAndRateAggregator_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2e36d436ff3469a0a6d03d44e3c67dc63bb9642c`](./contracts/base-8453/0x2e36d436ff3469a0a6d03d44e3c67dc63bb9642c/) | HarborTideToken_v1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x756b95d0bb61c195d1196eb2143d8d88570036ac`](./contracts/base-8453/0x756b95d0bb61c195d1196eb2143d8d88570036ac/) | HarborTripleFeedAndRateAggregator_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa2b6ee6d079f39a52725b33b15854505542b51`](./contracts/ethereum-1/0x0aa2b6ee6d079f39a52725b33b15854505542b51/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x177bb50574cda129bdd0b0f50d4e061d38aa75ef`](./contracts/ethereum-1/0x177bb50574cda129bdd0b0f50d4e061d38aa75ef/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c0067bee039a293804b8be951b368d2ec65b3e9`](./contracts/ethereum-1/0x1c0067bee039a293804b8be951b368d2ec65b3e9/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e326fff476a5d107f1f6684380f677d2fd5e492`](./contracts/ethereum-1/0x1e326fff476a5d107f1f6684380f677d2fd5e492/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33e32ff4d0677862fa31582cc654a25b9b1e4888`](./contracts/ethereum-1/0x33e32ff4d0677862fa31582cc654a25b9b1e4888/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d3eae3a4ee52ef703216c62efec3157694606de`](./contracts/ethereum-1/0x3d3eae3a4ee52ef703216c62efec3157694606de/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68911ea33e11bc77e07f6da4db6cd23d723641ce`](./contracts/ethereum-1/0x68911ea33e11bc77e07f6da4db6cd23d723641ce/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e1d48774f6fad0aa41cbb47a66bb8ec3094e3c2`](./contracts/ethereum-1/0x7e1d48774f6fad0aa41cbb47a66bb8ec3094e3c2/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880600e0c803d836e305b7c242fc095eed234a8f`](./contracts/ethereum-1/0x880600e0c803d836e305b7c242fc095eed234a8f/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb315dc4698df45a477d8bb4b0bc694c4d1be91b5`](./contracts/ethereum-1/0xb315dc4698df45a477d8bb4b0bc694c4d1be91b5/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc14837c30bedf3081cba2cdeb067fa6f0381e69b`](./contracts/ethereum-1/0xc14837c30bedf3081cba2cdeb067fa6f0381e69b/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6e2f8e57b4afb51c6fa4cbc012e1ce6aead989f`](./contracts/ethereum-1/0xd6e2f8e57b4afb51c6fa4cbc012e1ce6aead989f/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdefb2c04062350678965cbf38a216cc50723b246`](./contracts/ethereum-1/0xdefb2c04062350678965cbf38a216cc50723b246/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe37e34ab0aaaabac0e20c911349c1defad0691b6`](./contracts/ethereum-1/0xe37e34ab0aaaabac0e20c911349c1defad0691b6/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42516eb885e737780eb864dd07cec8628000919`](./contracts/ethereum-1/0xf42516eb885e737780eb864dd07cec8628000919/) | Minter_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6dc935c12818e8213b7764b5c58d1f07645e8c2f`](./contracts/arbitrum-42161/0x6dc935c12818e8213b7764b5c58d1f07645e8c2f/) | Oracle_stETH_AAPL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31e4be9a43c863e985e2903c707f380fd12e6197`](./contracts/arbitrum-42161/0x31e4be9a43c863e985e2903c707f380fd12e6197/) | Oracle_stETH_AMZN_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0facfbbcbb7ee77f6ec8932559bfa98a8e978fdf`](./contracts/arbitrum-42161/0x0facfbbcbb7ee77f6ec8932559bfa98a8e978fdf/) | Oracle_stETH_GOOGL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65cc7256218450542e3b9c04ef413acb87c6907c`](./contracts/arbitrum-42161/0x65cc7256218450542e3b9c04ef413acb87c6907c/) | Oracle_stETH_MAG7_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fab0ad567b92b1b78b2e91e6fc64c4286cc79bb`](./contracts/arbitrum-42161/0x2fab0ad567b92b1b78b2e91e6fc64c4286cc79bb/) | Oracle_stETH_MAG7i26_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fe7ad560cbade8609b0b7a6f9eb41b6405cfc6f`](./contracts/arbitrum-42161/0x3fe7ad560cbade8609b0b7a6f9eb41b6405cfc6f/) | Oracle_stETH_META_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27c8d5178f742aa67fd653f0c71c5524b6866ea5`](./contracts/arbitrum-42161/0x27c8d5178f742aa67fd653f0c71c5524b6866ea5/) | Oracle_stETH_MSFT_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09856313762a225a076bfb2e2445a2680c3bb9cb`](./contracts/arbitrum-42161/0x09856313762a225a076bfb2e2445a2680c3bb9cb/) | Oracle_stETH_NVDA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15cc8fca219bce4bca3d6c689cb34532d14ddaa9`](./contracts/arbitrum-42161/0x15cc8fca219bce4bca3d6c689cb34532d14ddaa9/) | Oracle_stETH_SPY_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89d1392ce4eb5b487c7a309e4f650e8427804a97`](./contracts/arbitrum-42161/0x89d1392ce4eb5b487c7a309e4f650e8427804a97/) | Oracle_stETH_TSLA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x94545f7d0a58b10ef31d98da956843f9296dd690`](./contracts/arbitrum-42161/0x94545f7d0a58b10ef31d98da956843f9296dd690/) | Oracle_USDE_AAPL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a27f4f42e8767de00bb1d3b3ba1fc986fdd3d04`](./contracts/arbitrum-42161/0x3a27f4f42e8767de00bb1d3b3ba1fc986fdd3d04/) | Oracle_USDE_AMZN_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x63469a18e9c14b76c7b32010e7b8596e90ec3c77`](./contracts/arbitrum-42161/0x63469a18e9c14b76c7b32010e7b8596e90ec3c77/) | Oracle_USDE_GOOGL_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c02ba3173e39371de761f2f804dfdc62fd78293`](./contracts/arbitrum-42161/0x6c02ba3173e39371de761f2f804dfdc62fd78293/) | Oracle_USDE_MAG7_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc19bb51cbca03430b8c1c152ebf3298ba003d0d6`](./contracts/arbitrum-42161/0xc19bb51cbca03430b8c1c152ebf3298ba003d0d6/) | Oracle_USDE_MAG7i26_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28d842b390d73f37a5e8a33ba038f531dbb6f435`](./contracts/arbitrum-42161/0x28d842b390d73f37a5e8a33ba038f531dbb6f435/) | Oracle_USDE_META_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x69c1b2bb8805add31815dea5ba06423055348fde`](./contracts/arbitrum-42161/0x69c1b2bb8805add31815dea5ba06423055348fde/) | Oracle_USDE_MSFT_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c0a93d76d17d7ae93ff85550cf11fcfc2daa143`](./contracts/arbitrum-42161/0x0c0a93d76d17d7ae93ff85550cf11fcfc2daa143/) | Oracle_USDE_NVDA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d9b1b4aaceedc2ae4f0bc9332d7c7a1230078d5`](./contracts/arbitrum-42161/0x5d9b1b4aaceedc2ae4f0bc9332d7c7a1230078d5/) | Oracle_USDE_SPY_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59634bbe968d969f98ee9f95f94d90ff9b986aad`](./contracts/arbitrum-42161/0x59634bbe968d969f98ee9f95f94d90ff9b986aad/) | Oracle_USDE_TSLA_arbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4abce5dfb2664f46b7b9a35e72b339e60a35e5e9`](./contracts/arbitrum-42161/0x4abce5dfb2664f46b7b9a35e72b339e60a35e5e9/) | sBaoSynth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x937982c5ea62bd6765bd5387e5c6b45e24cb4ff6`](./contracts/arbitrum-42161/0x937982c5ea62bd6765bd5387e5c6b45e24cb4ff6/) | sBaoSynth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
