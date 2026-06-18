# Agentic Audit Brief: Silo Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 70.7% over 90 days

## Project Overview

- Project: Silo Finance (`silo-finance`)
- Website: [https://app.silo.finance](https://app.silo.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T10:20:51.214Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5311
- Chains: arbitrum, avalanche, base, ethereum, optimism, sonic
- Contract surface: 87 unique implementations (680 raw deployments)
- DeFi Llama TVL: $66,946,598.00
- On-chain TVL (included contracts): $3,336,530.40
- TVL by chain: Ethereum $3,336,530.40

## Project Description

Silo Finance is a decentralized lending protocol that enables isolated, risk-isolated money markets for any token pair. It allows users to deposit collateral and borrow assets within individual silos, minimizing systemic risk across different markets.

### Architecture

Silo V1, V2, and V3 represent progressive versions of the core lending protocol, each using factory contracts to deploy isolated silos. The ETH and USDC families provide asset-specific configurations and vaults that integrate with these silos, while shared infrastructure like ChainlinkV3OracleFactory bridges V2 and V3 for price feeds.

## Contract Surface Quality

- Indexed contracts: 1825; live-surface contracts included: 680 (673 live, 7 unknown).
- Excluded by liveness: 1125 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 0/11 live.
- Detected codebases: none
- Unverified dependencies: 2/34.

## Audit Coverage Summary

- Verified implementations audited: 23/68 (33.8%)
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 87
- Raw deployments: 680
- Audits discovered: 18
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $641,315.14
- Latest audit: 2026-03 (fresh)
- Staleness: 9 fresh, 2 aging, 0 stale, 7 unknown
- Tier 1 coverage: 14.7% (Certora, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $641,315.14 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 17 | 25.0% | 2026-03 |
| Certora | Tier 1 | 7 | 10.3% | 2025-07 |
| Sigma Prime | Tier 2 | 7 | 10.3% | 2025-04 |
| Spearbit | Tier 1 | 5 | 7.4% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SiloVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x5362d5...0c5b9c`](./contracts/ethereum-1/0x5362d5086fdef73450145492a66f8ebf210c5b9c/); ethereum `0xccd487...604417`; arbitrum `0x6bb55a...ab181e`; arbitrum `0xdaca54...1298b1`; arbitrum `0xe49122...4c26d9`; avalanche `0xb6f3a9...370475` | ✅ Audited |
| ERC4626Oracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x08a52e...3f9849`](./contracts/ethereum-1/0x08a52ec31e0e981bbd64082224185e420d3f9849/); ethereum `0xa5478c...b82189`; arbitrum `0x18c4db...56302e`; avalanche `0xccd487...604417` | ✅ Audited |
| ERC4626OracleHardcodeQuote | operational_periphery | arbitrum | n/a | 3 deployments: ethereum `0xd831ad...7694cf`; arbitrum [`0x72b387...35945f`](./contracts/arbitrum-42161/0x72b387cede7f25d24e9f139e2175bb80d135945f/); avalanche `0xb49329...398abd` | ✅ Audited |
| InterestRateModelV2 | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x700730...d8673a`](./contracts/avalanche-43114/0x70073098984050f5563333be76bcd94d21d8673a/); avalanche `0xc0a646...607a8a`; avalanche `0xf66825...3caa67` | ✅ Audited |
| LeverageRouter | adapter | arbitrum | n/a | 12 deployments: ethereum `0x50daac...da22b1`; ethereum `0x612b08...c0886e`; ethereum `0x931e59...3b9bde`; ethereum `0xf5d029...b7a6b3`; sonic `0x2a3ba3...05e3e2`; sonic `0x451b35...9e28a5`; sonic `0xb1c407...4ce59b`; arbitrum [`0x128b7b...0af94b`](./contracts/arbitrum-42161/0x128b7b7457e35e201da5024c9e8d024e1b0af94b/); arbitrum `0x9e6bd1...04301b`; avalanche `0x2aec24...2c1fd1`; avalanche `0x9ac693...b08629`; avalanche `0xcfbebc...3db22d` | ✅ Audited |
| LeverageUsingSiloFlashloanWithGeneralSwap | unknown | sonic | n/a | 5 deployments: ethereum `0x570730...f88167`; ethereum `0xcbee46...829df9`; sonic [`0x503628...358d8c`](./contracts/sonic-146/0x503628e0799ba076df56da7c0a51fe1426358d8c/); sonic `0x5f0234...aaef65`; sonic `0x7d5d34...9a8ca1` | ✅ Audited |
| LiquidationHelper | periphery | sonic | n/a | 35 deployments: ethereum `0x116c85...0d7b47`; ethereum `0x340a07...bbd10b`; ethereum `0x3c9b67...f2f668`; ethereum `0x904871...2a9afb`; ethereum `0x931cf9...d735d3`; ethereum `0xad84b0...9dfcfa`; ethereum `0xd384c9...dbf72e`; ethereum `0xd634d8...d72a61`; ethereum `0xe90b09...514efc`; optimism `0xc3f01b...8c052a`; sonic [`0x0094c5...2b2a2c`](./contracts/sonic-146/0x0094c5d6b460a2efff23420db097921bcc2b2a2c/); sonic `0x08a52e...3f9849`; sonic `0x16bb96...0082fd`; sonic `0x1a5bba...e30316`; sonic `0x5660e3...d3bcbc`; sonic `0xccd487...604417`; sonic `0xefca82...c6dfef`; sonic `0xf363c6...3e8740`; base `0xf89e18...e732c8`; arbitrum `0x069a9a...ad3a18`; arbitrum `0x1a7f0b...c3860f`; arbitrum `0x1f39ed...99b7fe`; arbitrum `0x20dd36...665204`; arbitrum `0x2ab8d9...c7f2e1`; arbitrum `0x4b8cbf...6457b6`; arbitrum `0x7f736f...b08a47`; arbitrum `0xe78e99...897ebf`; arbitrum `0xf3e0dc...4992bc`; avalanche `0x1157de...fbf779`; avalanche `0x2e0da2...aea09a`; avalanche `0x666146...2538cb`; avalanche `0x83d787...c6c7ff`; avalanche `0xad84b0...9dfcfa`; avalanche `0xca1658...6efd83`; avalanche `0xdb8838...231d87` | ✅ Audited |
| ManageableOracleFactory | operational_periphery | sonic | n/a | 5 deployments: ethereum `0x9ff077...876c8d`; ethereum `0xe07783...1356be`; sonic [`0x26dd1f...624d90`](./contracts/sonic-146/0x26dd1fd7a429ced75e5042fa20d80539a6624d90/); arbitrum `0xccd487...604417`; avalanche `0xb1d1b1...4603d4` | ✅ Audited |
| OracleForQA | operational_periphery | sonic | n/a | 7 deployments: sonic [`0x200ae3...2b4cc1`](./contracts/sonic-146/0x200ae3dc21f6dfbab81842db21dbbf285e2b4cc1/); sonic `0xd27853...4e544b`; sonic `0xff03cb...8597cd`; arbitrum `0x5bb409...cb0e11`; arbitrum `0xa761e5...42f818`; arbitrum `0xcedbca...5e52ab`; avalanche `0x7f4910...bc067d` | ✅ Audited |
| ShareDebtToken | token | avalanche | n/a | 17 deployments: ethereum `0x977e9b...3439cf`; ethereum `0xa69fa9...c78f49`; ethereum `0xc65de3...430354`; ethereum `0xd9070b...1ac001`; sonic `0x2ca8f5...efef3c`; sonic `0x4a6c34...0737a6`; sonic `0x9e64f0...013d0e`; sonic `0xf0c5ea...cfa0d3`; arbitrum `0x3c9737...6f267e`; arbitrum `0x8cb547...f3b5ba`; arbitrum `0xcf8278...bf8627`; arbitrum `0xd27853...4e544b`; arbitrum `0xee6845...2ddedd`; avalanche [`0x1f39ed...99b7fe`](./contracts/avalanche-43114/0x1f39ed01ac23a1abc4038e87291d4e9ff599b7fe/); avalanche `0x2ca8f5...efef3c`; avalanche `0x5420ef...37acea`; avalanche `0x7dc39c...9202ea` | ✅ Audited |
| Silo | unknown | sonic | n/a | 43 deployments: ethereum `0x1de3ba...bd9bc2`; ethereum `0x1f39ed...99b7fe`; ethereum `0x650b50...0f0d09`; ethereum `0x90957a...99eb2d`; ethereum `0x97d6d6...11d8bd`; sonic [`0x0ab02d...3e06d4`](./contracts/sonic-146/0x0ab02dd08c1555d1a20c76a6ea30e3e36f3e06d4/); sonic `0x1a0894...9e1d51`; sonic `0x1c1791...13f0fb`; sonic `0x219656...aca2aa`; sonic `0x27968d...b104be`; sonic `0x390216...6a861f`; sonic `0x4935fa...86f8d0`; sonic `0x4c5526...178043`; sonic `0x501ee3...a25e4d`; sonic `0x5954ce...3ab2de`; sonic `0x5ea25a...265c46`; sonic `0x6e8c15...2e2c22`; sonic `0x75c550...23b66e`; sonic `0x76df75...04eedf`; sonic `0x8c98b4...ca2a90`; sonic `0xa1627a...bed4b1`; sonic `0xaf1bda...a26aa9`; sonic `0xb14124...66e43f`; sonic `0xc6ee9a...3142b4`; sonic `0xccddbb...25ba71`; sonic `0xe5b39b...2da3ac`; sonic `0xed9777...f40908`; arbitrum `0x2433d6...8ad18a`; arbitrum `0x38d712...a7a725`; arbitrum `0x92b70a...7940df`; arbitrum `0x9b550b...766238`; arbitrum `0xacb743...04f6f9`; arbitrum `0xad1875...11b9bf`; arbitrum `0xd9393f...2eabb5`; arbitrum `0xf5d7d0...8d1144`; avalanche `0x147857...0ddae8`; avalanche `0x4a6c34...0737a6`; avalanche `0x4c5526...178043`; avalanche `0x672b77...d321a6`; avalanche `0x7437ac...13e2f1`; avalanche `0x9c4d48...e603f3`; avalanche `0xe0fc62...5a63f7`; avalanche `0xe3ae3f...7e8a87` | ✅ Audited |
| SiloConfig | governance | ethereum | n/a | 4 deployments: ethereum [`0xad1875...11b9bf`](./contracts/ethereum-1/0xad1875af7e720e0058c27466a65372533b11b9bf/); ethereum `0xae01a8...faf7f8`; ethereum `0xf8d32d...b2c09d`; ethereum `0xfaa8b2...59357a` | ✅ Audited |
| SiloDeployer | unknown | sonic | n/a | 44 deployments: ethereum `0x1a5bba...e30316`; ethereum `0x3fc40c...40545f`; ethereum `0x5418cc...ed558c`; ethereum `0x55c5b7...cd1372`; ethereum `0xa95314...0bfe3a`; ethereum `0xb2f453...f30a00`; ethereum `0xb627bd...8338f8`; ethereum `0xc4832a...16311d`; ethereum `0xcdd4b5...168085`; ethereum `0xde3a6c...da633a`; sonic [`0x03e03b...b54279`](./contracts/sonic-146/0x03e03b56bd24e0b3b206403596a40cf48fb54279/); sonic `0x09402f...c0ae55`; sonic `0x1f39ed...99b7fe`; sonic `0x228a86...91d11c`; sonic `0x2efa5c...519c23`; sonic `0x363c09...a16b00`; sonic `0x3c9737...6f267e`; sonic `0x3ce73c...66d967`; sonic `0x78330c...54f944`; sonic `0x931e59...3b9bde`; sonic `0x95a7bc...66affd`; arbitrum `0x128982...0f9013`; arbitrum `0x1bdebe...9bc2f4`; arbitrum `0x72ed06...039a5d`; arbitrum `0x74a421...cea85e`; arbitrum `0x8c3024...26db98`; arbitrum `0xa33b15...27b540`; arbitrum `0xa77baa...0aad00`; arbitrum `0xc6a7a0...72952e`; arbitrum `0xc8cd42...ad09ba`; arbitrum `0xc95cce...a9f521`; arbitrum `0xd248d7...a06658`; arbitrum `0xdb3062...1f6b45`; arbitrum `0xe09bd7...64486b`; avalanche `0x2976d3...d49d30`; avalanche `0x3ce73c...66d967`; avalanche `0x3d1fe4...1ccd39`; avalanche `0x5660e3...d3bcbc`; avalanche `0xa59340...d1bbde`; avalanche `0xafbb48...7465e9`; avalanche `0xba4a54...39344e`; avalanche `0xcf8d34...9a8992`; avalanche `0xde67a8...4450cf`; avalanche `0xfdc13d...65ab47` | ✅ Audited |
| SiloFactory | registry | ethereum | n/a | 16 deployments: ethereum [`0x1dab4a...c3b48f`](./contracts/ethereum-1/0x1dab4a310447185144467076b116dac7aec3b48f/); ethereum `0x2534b2...7b96be`; ethereum `0xccf804...8878f8`; optimism `0xfa773e...236bc5`; sonic `0x4e9de3...be9203`; sonic `0x55c5b7...cd1372`; sonic `0xf81d90...be58ad`; base `0x408822...d36f2b`; arbitrum `0x504b8c...f9269f`; arbitrum `0x5418cc...ed558c`; arbitrum `0x9ff077...876c8d`; arbitrum `0xafd8f7...3b6fe2`; avalanche `0x55c5b7...cd1372`; avalanche `0x92cecb...4c6ff9`; avalanche `0x931e59...3b9bde`; avalanche `0x9e64f0...013d0e` | ✅ Audited |
| SiloHookV2 | unknown | arbitrum | n/a | 26 deployments: ethereum `0x74a421...cea85e`; ethereum `0x9673d1...e45f07`; ethereum `0x9e6bd1...04301b`; ethereum `0xabcf5a...e08f22`; ethereum `0xda3975...330b85`; sonic `0x491961...9a9811`; sonic `0x8e1948...952126`; sonic `0x9e6bd1...04301b`; sonic `0xe9e4f5...b09283`; sonic `0xee6845...2ddedd`; sonic `0xf2d603...8cbcff`; arbitrum [`0x087ae3...c42697`](./contracts/arbitrum-42161/0x087ae3df6b4316e88a674cb691dfd644a6c42697/); arbitrum `0x2273c8...c7eded`; arbitrum `0x324e69...e31064`; arbitrum `0x491961...9a9811`; arbitrum `0x7f4910...bc067d`; arbitrum `0xca848f...cd773f`; arbitrum `0xe3ae3f...7e8a87`; arbitrum `0xf81d90...be58ad`; avalanche `0x5992e9...b1e494`; avalanche `0x6f3251...4f395f`; avalanche `0x8e1948...952126`; avalanche `0xe12a7a...9412c9`; avalanche `0xeb5a0e...5aa335`; avalanche `0xf2d603...8cbcff`; avalanche `0xff03cb...8597cd` | ✅ Audited |
| SiloHookV3 | unknown | avalanche | n/a | 23 deployments: ethereum `0x2458ee...bdd845`; ethereum `0x5660e3...d3bcbc`; ethereum `0x6870a4...45db5e`; ethereum `0x889be5...8dbdf0`; ethereum `0x8c3024...26db98`; sonic `0x8c3024...26db98`; sonic `0xa8c5eb...78b390`; sonic `0xabcf5a...e08f22`; sonic `0xc759de...213c39`; sonic `0xd9393f...2eabb5`; arbitrum `0x83d787...c6c7ff`; arbitrum `0xa678ae...76ec9f`; arbitrum `0xc759de...213c39`; arbitrum `0xde67a8...4450cf`; arbitrum `0xe28a8e...993cd7`; arbitrum `0xea5359...45687b`; arbitrum `0xeb3c9f...07a21f`; avalanche [`0x04e209...e88049`](./contracts/avalanche-43114/0x04e209d70f7f834a7a5ab7bd31f48827f0e88049/); avalanche `0x087ae3...c42697`; avalanche `0x2aee31...20ea2a`; avalanche `0x2c650c...8a0678`; avalanche `0xabcf5a...e08f22`; avalanche `0xd27853...4e544b` | ✅ Audited |
| SiloIncentivesController | governance | ethereum | n/a | 7 deployments: ethereum [`0x361384...6b6461`](./contracts/ethereum-1/0x361384a0d755f972e5eea26e4f4efbaf976b6461/); ethereum `0x6c1603...a3c229`; ethereum `0xb14f20...a220e4`; optimism `0x6b2c80...20da7b`; base `0x626e6a...e3100e`; arbitrum `0xb03a9c...83bb9d`; arbitrum `0xbdbbf7...37facf` | ✅ Audited |
| SiloIncentivesControllerCompatible | governance | ethereum | n/a | [`0xe55eef...694eac`](./contracts/ethereum-1/0xe55eef968d564bef3aded428335badc864694eac/) | ✅ Audited |
| SiloIncentivesControllerFactory | registry | avalanche | n/a | 17 deployments: ethereum `0x2a3ba3...05e3e2`; ethereum `0x57448f...01b151`; ethereum `0xbc4ee0...6f3f75`; sonic `0x43c70c...65e923`; sonic `0x9ea286...e21a10`; sonic `0xcdd4b5...168085`; sonic `0xd55a06...f21fba`; arbitrum `0x2c650c...8a0678`; arbitrum `0x390216...6a861f`; arbitrum `0x66cfbf...27bab8`; arbitrum `0x8e5715...bff5e8`; arbitrum `0xdce8da...6285b3`; avalanche [`0x2375eb...887493`](./contracts/avalanche-43114/0x2375eba92e1b7ace8585ae7e2d23fedc10887493/); avalanche `0x2a3ba3...05e3e2`; avalanche `0x66cfbf...27bab8`; avalanche `0xa013e7...afcfef`; avalanche `0xd9393f...2eabb5` | ✅ Audited |
| SiloLens | periphery | avalanche | n/a | 34 deployments: ethereum `0x27a969...384688`; ethereum `0x2c47f0...c180a1`; ethereum `0x80e3f3...cdee8e`; ethereum `0xb2d0fc...16ff2a`; ethereum `0xb47713...68a30c`; ethereum `0xc0e1bc...68b22b`; ethereum `0xf2d603...8cbcff`; ethereum `0xf58754...bcdc88`; optimism `0x812033...100fb6`; optimism `0x944bbd...fd8ec1`; sonic `0x4d2503...6c6a5f`; sonic `0x52ad68...452cc2`; sonic `0x9f2647...7a638e`; sonic `0xad84b0...9dfcfa`; sonic `0xb95ad4...822c69`; sonic `0xdce8da...6285b3`; sonic `0xea5359...45687b`; arbitrum `0x2458ee...bdd845`; arbitrum `0x363c09...a16b00`; arbitrum `0x39f7ee...eee1cf`; arbitrum `0x81f55f...e503ab`; arbitrum `0xb627bd...8338f8`; arbitrum `0xbdd37b...21d089`; arbitrum `0xdd3efa...a4a740`; arbitrum `0xe07783...1356be`; arbitrum `0xf0b021...539336`; avalanche [`0x02c7b5...7d50f8`](./contracts/avalanche-43114/0x02c7b50b210a54390405f2ebb77c7697767d50f8/); avalanche `0x228a86...91d11c`; avalanche `0x2c47f0...c180a1`; avalanche `0x319f71...04c0b8`; avalanche `0x5c1d59...5ae5d1`; avalanche `0xa0380d...4dd521`; avalanche `0xca22fb...95c51c`; avalanche `0xe09bd7...64486b` | ✅ Audited |
| SiloRouter | adapter | sonic | n/a | 6 deployments: ethereum `0x871ea4...fbd887`; optimism `0xc66d2a...2c76a9`; sonic [`0x22aacd...7bdb76`](./contracts/sonic-146/0x22aacdec57b13911de9f188cf69633cc537bdb76/); base `0x757748...f0584e`; base `0xc3f01b...8c052a`; arbitrum `0x9992f6...4e3681` | ✅ Audited |
| SiloRouterV2Implementation | adapter | avalanche | n/a | 7 deployments: ethereum `0xd2bf58...55a235`; sonic `0x2c47f0...c180a1`; arbitrum `0x2aec24...2c1fd1`; arbitrum `0x6ac197...2cfb30`; arbitrum `0xd9070b...1ac001`; avalanche [`0x16876a...503b1c`](./contracts/avalanche-43114/0x16876af41e8beddbf9b67d2b66bb50abf3503b1c/); avalanche `0x4b8cbf...6457b6` | ✅ Audited |
| SiloVaultsFactory | registry | arbitrum | n/a | 9 deployments: ethereum `0x9a5bb9...60a78b`; ethereum `0xe09bd7...64486b`; ethereum `0xffd3cb...420506`; sonic `0x4b8cbf...6457b6`; arbitrum [`0x2976d3...d49d30`](./contracts/arbitrum-42161/0x2976d3ea35adcd185bbf79b201424f9607d49d30/); arbitrum `0xf2d131...223e70`; arbitrum `0xffd3cb...420506`; avalanche `0x6ec69e...f46bd7`; avalanche `0xb38182...0e3409` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SiloToken | token | ethereum | n/a | [`0xf0b2dd...486bb0`](./contracts/ethereum-1/0xf0b2dd79324a66d2108c961d680f7616e1486bb0/) | ⚠️ Unaudited |
| SiloGovernanceToken | token | ethereum | n/a | [`0x6f8031...8ab1f8`](./contracts/ethereum-1/0x6f80310ca7f2c654691d1383149fa1a57d8ab1f8/) | ⚠️ Unaudited |
| ChainlinkV3OracleFactory | operational_periphery | ethereum | n/a | [`0xf7dc97...521442`](./contracts/ethereum-1/0xf7dc975c96b434d436b9bf45e7a45c95f0521442/) | ⚠️ Unaudited |
| DIAOracleFactory | operational_periphery | sonic | n/a | 9 deployments: ethereum `0x66cfbf...27bab8`; ethereum `0xf5d7d0...8d1144`; ethereum `0xf81d90...be58ad`; sonic [`0x147857...0ddae8`](./contracts/sonic-146/0x1478570fc9c8422b6733455db5504378940ddae8/); sonic `0x2aec24...2c1fd1`; arbitrum `0x4fd711...e2dcd2`; arbitrum `0xca22fb...95c51c`; avalanche `0x72ed06...039a5d`; avalanche `0x9ff077...876c8d` | ⚠️ Unaudited |
| DynamicKinkModel | unknown | ethereum | n/a | 25 deployments: ethereum [`0x09402f...c0ae55`](./contracts/ethereum-1/0x09402f0f9f490e38413a5d4892d1e927acc0ae55/); ethereum `0x2c8ed9...7e3c2a`; ethereum `0x5420ef...37acea`; ethereum `0x8ab5d8...8e4a9d`; ethereum `0xa1be84...8db7b1`; ethereum `0xa1d547...0ffa97`; sonic `0x2b58b3...7d827e`; sonic `0x4fff70...dbfe7c`; sonic `0x5bb409...cb0e11`; sonic `0x744a30...c7b702`; sonic `0xc65de3...430354`; sonic `0xeb3c9f...07a21f`; arbitrum `0x1157de...fbf779`; arbitrum `0x1d51f3...a03ed1`; arbitrum `0x34490c...2b079b`; arbitrum `0x774c59...5067bf`; arbitrum `0x95a7bc...66affd`; arbitrum `0xa8c5eb...78b390`; arbitrum `0xbdf161...4d58bc`; avalanche `0x363c09...a16b00`; avalanche `0x499c6e...1d9e5f`; avalanche `0x744a30...c7b702`; avalanche `0x9e6bd1...04301b`; avalanche `0xc65de3...430354`; avalanche `0xcf8278...bf8627` | ⚠️ Unaudited |
| DynamicKinkModelFactory | registry | ethereum | n/a | 25 deployments: ethereum [`0x1d51f3...a03ed1`](./contracts/ethereum-1/0x1d51f30e5c8ec1c6efeb5d1877f7302a09a03ed1/); ethereum `0x315a83...00e479`; ethereum `0xba4a54...39344e`; ethereum `0xca22fb...95c51c`; ethereum `0xe9e4f5...b09283`; ethereum `0xedef34...a6d154`; sonic `0x7bd4d7...53b83f`; sonic `0xa1d547...0ffa97`; sonic `0xc4832a...16311d`; sonic `0xe60dfa...c99fdc`; sonic `0xf279ee...a04ef3`; sonic `0xfdc13d...65ab47`; arbitrum `0x205451...3d69b9`; arbitrum `0x28fcf0...965449`; arbitrum `0x4fff70...dbfe7c`; arbitrum `0x52ad68...452cc2`; arbitrum `0x98f231...cffb1c`; arbitrum `0xca1658...6efd83`; arbitrum `0xe37949...aa1024`; avalanche `0x5bb409...cb0e11`; avalanche `0x774c59...5067bf`; avalanche `0x8c3024...26db98`; avalanche `0xa1d547...0ffa97`; avalanche `0xc4832a...16311d`; avalanche `0xf0c5ea...cfa0d3` | ⚠️ Unaudited |
| ERC4626OracleFactory | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x0094c5...2b2a2c`](./contracts/ethereum-1/0x0094c5d6b460a2efff23420db097921bcc2b2a2c/); ethereum `0x2aec24...2c1fd1`; ethereum `0xa678ae...76ec9f`; ethereum `0xcedbca...5e52ab`; ethereum `0xcf8278...bf8627`; sonic `0x7dc39c...9202ea`; sonic `0xcf8d34...9a8992`; arbitrum `0x6d4ce6...c24cd5`; arbitrum `0x72a852...c5e7c9`; arbitrum `0xb47713...68a30c`; avalanche `0x1a5bba...e30316`; avalanche `0x38d712...a7a725`; avalanche `0x7f736f...b08a47` | ⚠️ Unaudited |
| ERC4626OracleHardcodeQuoteFactory | operational_periphery | arbitrum | n/a | 18 deployments: ethereum `0x72ed06...039a5d`; ethereum `0x774c59...5067bf`; ethereum `0xafd8f7...3b6fe2`; ethereum `0xcf8d34...9a8992`; ethereum `0xda393f...8f7aab`; ethereum `0xed2211...bc018d`; sonic `0x3a2b2a...806dfd`; sonic `0x986009...95386a`; sonic `0xcf8278...bf8627`; arbitrum [`0x1ced03...90045a`](./contracts/arbitrum-42161/0x1ced03b5a0650d5ecb5d690e1e7f8e2afb90045a/); arbitrum `0x27fbd4...d4c7b2`; arbitrum `0xb49329...398abd`; arbitrum `0xde3a6c...da633a`; avalanche `0x72a852...c5e7c9`; avalanche `0xa87a04...bd4145`; avalanche `0xbf3c74...023446`; avalanche `0xc3f01b...8c052a`; avalanche `0xe07783...1356be` | ⚠️ Unaudited |
| ERC4626OracleWithUnderlyingFactory | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x0d9256...033254`](./contracts/ethereum-1/0x0d925653b179f6f661b7e99d634b7479ed033254/); ethereum `0x28fcf0...965449`; ethereum `0x3a2b2a...806dfd`; ethereum `0x7f736f...b08a47`; sonic `0x774c59...5067bf`; sonic `0x9ff077...876c8d`; arbitrum `0x1a5bba...e30316`; arbitrum `0xdb9141...67c68c`; avalanche `0x6ac197...2cfb30`; avalanche `0x8cb547...f3b5ba` | ⚠️ Unaudited |
| FixedPricePTAMMOracleFactory | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x047801...27505c`](./contracts/avalanche-43114/0x047801ed4f53ad3dc28649ab972b3c949f27505c/); avalanche `0x22c426...7f391d`; avalanche `0xb43406...d68358` | ⚠️ Unaudited |
| FlatPriceOracleFactory | operational_periphery | arbitrum | n/a | 10 deployments: ethereum `0xde67a8...4450cf`; sonic `0x9a5bb9...60a78b`; arbitrum [`0x45909b...24317b`](./contracts/arbitrum-42161/0x45909be5015c2d0771ce687f26055c1cf124317b/); arbitrum `0x466cd1...857879`; arbitrum `0x8c11ed...c13577`; arbitrum `0xa65193...bc8868`; arbitrum `0xa86c22...c84244`; arbitrum `0xc87fb1...8b45dc`; arbitrum `0xe460e9...325a92`; avalanche `0xe55eef...694eac` | ⚠️ Unaudited |
| Getters | unknown | sonic | n/a | [`0xe569bd...81733f`](./contracts/sonic-146/0xe569bdc18cd807ac1cfb2c926f50d0c9b881733f/) | ⚠️ Unaudited |
| GlobalPause | unknown | ethereum | n/a | 16 deployments: ethereum [`0x2a1ee8...932bfa`](./contracts/ethereum-1/0x2a1ee876ed23d356a7b73b42c1c16a9bcd932bfa/); ethereum `0xdda2e9...aa1c44`; optimism `0x3bc972...511904`; optimism `0x81e92d...e90929`; optimism `0x9d52c4...84cf3f`; optimism `0xb6bc6b...14b8be`; sonic `0x6b70cd...1bfdf3`; sonic `0x7d827f...8a27b8`; sonic `0xdc2a02...972c11`; arbitrum `0x446ab3...ba4105`; arbitrum `0x795079...565676`; arbitrum `0x959595...4cb97d`; arbitrum `0x9b2ae5...f46c9d`; avalanche `0x528e61...9591a2`; avalanche `0xc9c78b...6245e2`; avalanche `0xfce6c6...f351a8` | ⚠️ Unaudited |
| IdleVault | core_logic | arbitrum | n/a | [`0xc6925c...4632da`](./contracts/arbitrum-42161/0xc6925c71f6ece02b1ee5ee18d7af0ba8f84632da/) | ⚠️ Unaudited |
| IdleVaultsFactory | registry | arbitrum | n/a | 3 deployments: ethereum `0xb6f3a9...370475`; arbitrum [`0x391f04...cdd34c`](./contracts/arbitrum-42161/0x391f047683f60f7cbc29ca39b19fd70091cdd34c/); avalanche `0x889be5...8dbdf0` | ⚠️ Unaudited |
| IRMZero | unknown | arbitrum | n/a | [`0xf4a46d...5ad6f3`](./contracts/arbitrum-42161/0xf4a46dc09e3e17d60ab54e1e9aeb47faaa5ad6f3/) | ⚠️ Unaudited |
| ManualLiquidation | unknown | optimism | n/a | 3 deployments: ethereum `0x669229...69c72e`; optimism [`0x662c3a...33e5fc`](./contracts/optimism-10/0x662c3afd2a1b5912c8c798af84f5abe25d33e5fc/); arbitrum `0xebf50c...022453` | ⚠️ Unaudited |
| ManualLiquidationHelper | periphery | sonic | n/a | 10 deployments: ethereum `0x899788...c2e043`; ethereum `0xed6673...cc1b56`; optimism `0xb03a9c...83bb9d`; sonic [`0x361384...6b6461`](./contracts/sonic-146/0x361384a0d755f972e5eea26e4f4efbaf976b6461/); sonic `0x9ba51a...90cd42`; sonic `0xb49329...398abd`; arbitrum `0x56b928...4a59e2`; arbitrum `0x5b7930...25002a`; avalanche `0x6ca841...a18462`; avalanche `0xc759de...213c39` | ⚠️ Unaudited |
| MaxWithdraw | operational_periphery | sonic | n/a | [`0xdb8838...231d87`](./contracts/sonic-146/0xdb8838f8d035e5fa48b3481867424f5fc6231d87/) | ⚠️ Unaudited |
| OracleForwarderFactory | operational_periphery | sonic | n/a | [`0x38d712...a7a725`](./contracts/sonic-146/0x38d712f9e105cdbe9367be9d8061d63bcba7a725/) | ⚠️ Unaudited |
| OracleScalerFactory | operational_periphery | arbitrum | n/a | 19 deployments: ethereum `0x26dd1f...624d90`; ethereum `0x50f790...907789`; ethereum `0x6ac197...2cfb30`; ethereum `0x7dc39c...9202ea`; sonic `0x546b94...aa4cbe`; sonic `0xbf3c74...023446`; sonic `0xed2211...bc018d`; sonic `0xf5d7d0...8d1144`; arbitrum [`0x0094c5...2b2a2c`](./contracts/arbitrum-42161/0x0094c5d6b460a2efff23420db097921bcc2b2a2c/); arbitrum `0x9ce430...b031ae`; arbitrum `0xa59340...d1bbde`; arbitrum `0xb80271...35514b`; arbitrum `0xc2b3eb...35a06a`; arbitrum `0xd55a06...f21fba`; avalanche `0x01c6dc...67cd34`; avalanche `0x14e624...bce90a`; avalanche `0x26dd1f...624d90`; avalanche `0x390216...6a861f`; avalanche `0x51eaf3...ba93fb` | ⚠️ Unaudited |
| PermissionedLiquidationControllerFactory | registry | arbitrum | n/a | 12 deployments: ethereum `0x2976d3...d49d30`; ethereum `0x75153a...93a99b`; ethereum `0xff8032...d31255`; sonic `0x8cee05...fe6ea2`; sonic `0xcedbca...5e52ab`; sonic `0xffd3cb...420506`; arbitrum [`0x1ff3be...35c243`](./contracts/arbitrum-42161/0x1ff3be55911289e5c794157ca285e6572835c243/); arbitrum `0xe36ed8...b33621`; arbitrum `0xe786fb...395926`; avalanche `0x78330c...54f944`; avalanche `0xad1875...11b9bf`; avalanche `0xbdd37b...21d089` | ⚠️ Unaudited |
| PTLinearOracleFactory | operational_periphery | arbitrum | n/a | 13 deployments: ethereum `0x9e64f0...013d0e`; ethereum `0xbdf161...4d58bc`; ethereum `0xe12a7a...9412c9`; sonic `0x1bdebe...9bc2f4`; sonic `0x28fcf0...965449`; sonic `0xe37949...aa1024`; arbitrum [`0x08a52e...3f9849`](./contracts/arbitrum-42161/0x08a52ec31e0e981bbd64082224185e420d3f9849/); arbitrum `0x1c7861...78f6eb`; arbitrum `0x2cfc18...6c58a3`; arbitrum `0x3ce73c...66d967`; arbitrum `0x5992e9...b1e494`; arbitrum `0x79339e...d3de08`; avalanche `0x504b8c...f9269f` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | arbitrum | n/a | 5 deployments: ethereum `0x8cee05...fe6ea2`; ethereum `0xafbb48...7465e9`; sonic `0xc95149...a193b7`; arbitrum [`0x75153a...93a99b`](./contracts/arbitrum-42161/0x75153a486244dae7c469cb2098c200f01f93a99b/); avalanche `0xda3975...330b85` | ⚠️ Unaudited |
| PythAggregatorFactory | registry | sonic | n/a | [`0xb38182...0e3409`](./contracts/sonic-146/0xb381828ef5a8158893aa647823b73893d00e3409/) | ⚠️ Unaudited |
| RescueVaultBalance | core_logic | arbitrum | n/a | [`0x75e88c...8f982d`](./contracts/arbitrum-42161/0x75e88c5c11e8c7fa2357f8855912c37e758f982d/) | ⚠️ Unaudited |
| RescueWAVAX | token | avalanche | n/a | [`0x315a83...00e479`](./contracts/avalanche-43114/0x315a8319e94eff8aa5fb11923c32e73fca00e479/) | ⚠️ Unaudited |
| RevertingOracle | operational_periphery | sonic | n/a | 4 deployments: ethereum `0xefd889...9e6075`; sonic [`0x889be5...8dbdf0`](./contracts/sonic-146/0x889be50f7ef7e0d88c2023c509f4e02d378dbdf0/); arbitrum `0xd5e41d...5d3b27`; avalanche `0xf238bf...c7be53` | ⚠️ Unaudited |
| ShareProtectedCollateralToken | token | arbitrum | n/a | 16 deployments: ethereum `0x2ca8f5...efef3c`; ethereum `0x81f55f...e503ab`; ethereum `0xa761e5...42f818`; sonic `0x499c6e...1d9e5f`; sonic `0x504b8c...f9269f`; sonic `0x6af76e...6e9b3d`; sonic `0x97d6d6...11d8bd`; arbitrum [`0x1dab4a...c3b48f`](./contracts/arbitrum-42161/0x1dab4a310447185144467076b116dac7aec3b48f/); arbitrum `0x78330c...54f944`; arbitrum `0x7dc39c...9202ea`; arbitrum `0xbf3c74...023446`; arbitrum `0xff03cb...8597cd`; avalanche `0x97d6d6...11d8bd`; avalanche `0xb28869...fbad67`; avalanche `0xea5359...45687b`; avalanche `0xf5d7d0...8d1144` | ⚠️ Unaudited |
| SiloHookV1 | unknown | arbitrum | n/a | 17 deployments: ethereum `0x205451...3d69b9`; ethereum `0x4bdde8...54e9bb`; ethereum `0x8e1948...952126`; ethereum `0xc51f04...da3f5b`; optimism `0xc5d8a1...a622fd`; sonic `0x1f28be...37fbaf`; sonic `0x6f3fe5...5b7d5d`; sonic `0xedef34...a6d154`; arbitrum [`0x0b6c64...e6a456`](./contracts/arbitrum-42161/0x0b6c649ffba713e45958a2c394ed8b422ae6a456/); arbitrum `0x7bd4d7...53b83f`; arbitrum `0xa7495e...ff42b0`; arbitrum `0xb38182...0e3409`; arbitrum `0xe12a7a...9412c9`; avalanche `0x28fcf0...965449`; avalanche `0x75153a...93a99b`; avalanche `0x91cdec...cab6ad`; avalanche `0xedef34...a6d154` | ⚠️ Unaudited |
| SiloIncentivesControllerCLDeployer | governance | arbitrum | n/a | 7 deployments: ethereum `0xb49329...398abd`; ethereum `0xc759de...213c39`; sonic `0xa59340...d1bbde`; arbitrum [`0x6b298f...a5d817`](./contracts/arbitrum-42161/0x6b298fbd033715062ffcc8db7e558ab5f2a5d817/); arbitrum `0xe588ea...78e5e5`; avalanche `0xcedbca...5e52ab`; avalanche `0xffd3cb...420506` | ⚠️ Unaudited |
| SiloIncentivesControllerCLFactory | registry | avalanche | n/a | 8 deployments: ethereum `0x491961...9a9811`; ethereum `0x4fd711...e2dcd2`; sonic `0xbfde5f...6b8d51`; sonic `0xca22fb...95c51c`; arbitrum `0x38c5cc...f2269d`; arbitrum `0x6f3251...4f395f`; avalanche [`0x08a52e...3f9849`](./contracts/avalanche-43114/0x08a52ec31e0e981bbd64082224185e420d3f9849/); avalanche `0x9a5bb9...60a78b` | ⚠️ Unaudited |
| SiloRouterV2 | adapter | sonic | n/a | 12 deployments: ethereum `0x865804...10ff0a`; ethereum `0xc5d945...6a1d08`; ethereum `0xf380f0...147004`; optimism `0x539ac1...3d53a4`; sonic [`0x16876a...503b1c`](./contracts/sonic-146/0x16876af41e8beddbf9b67d2b66bb50abf3503b1c/); sonic `0x21cfe3...00b59c`; arbitrum `0x637658...9e1467`; arbitrum `0xb1d1b1...4603d4`; arbitrum `0xcf8d34...9a8992`; arbitrum `0xeb5a0e...5aa335`; avalanche `0x39f7ee...eee1cf`; avalanche `0x9ea286...e21a10` | ⚠️ Unaudited |
| SiloVaultDeployer | core_logic | sonic | n/a | 17 deployments: ethereum `0x463736...f8bcb4`; ethereum `0x4b8cbf...6457b6`; ethereum `0x72a852...c5e7c9`; ethereum `0xe7ed54...8469b0`; sonic [`0x02bbb8...171b1d`](./contracts/sonic-146/0x02bbb86731ec6aa81b52961e14dd1aebe5171b1d/); sonic `0x04e209...e88049`; sonic `0x39f7ee...eee1cf`; sonic `0xa387a5...ed6f4b`; arbitrum `0x2aee31...20ea2a`; arbitrum `0x408a8d...a2c7ff`; arbitrum `0x451b35...9e28a5`; arbitrum `0xafbb48...7465e9`; arbitrum `0xd18634...e6561b`; avalanche `0x77cbcb...aaac6a`; avalanche `0x8cee05...fe6ea2`; avalanche `0xc1749f...c4c564`; avalanche `0xf81d90...be58ad` | ⚠️ Unaudited |
| SiloVirtualAssetBTC | unknown | arbitrum | n/a | 4 deployments: ethereum `0xe90c78...509f0e`; sonic `0xdb9141...67c68c`; arbitrum [`0x6f6c31...78e3eb`](./contracts/arbitrum-42161/0x6f6c3101506ccb5d9cbfe0f419e49b00a078e3eb/); avalanche `0xd831ad...7694cf` | ⚠️ Unaudited |
| SiloVirtualAssetEUR | unknown | arbitrum | n/a | 4 deployments: ethereum `0xd248d7...a06658`; sonic `0xde3a6c...da633a`; arbitrum [`0x52eb48...fed92a`](./contracts/arbitrum-42161/0x52eb48ecc36ccbbe0def05963ad80d13ebfed92a/); avalanche `0xafd8f7...3b6fe2` | ⚠️ Unaudited |
| SiloVirtualAssetUSD | unknown | arbitrum | n/a | 4 deployments: ethereum `0xbdd37b...21d089`; sonic `0xb47713...68a30c`; arbitrum [`0x38d94c...687065`](./contracts/arbitrum-42161/0x38d94cf961bab0ca8f6ba394c0706ec19d687065/); avalanche `0xa5478c...b82189` | ⚠️ Unaudited |
| Stream | adapter | sonic | n/a | 2 deployments: sonic [`0x023d9b...06b90e`](./contracts/sonic-146/0x023d9bcb63532d1215d4adbdb66a4410e506b90e/); sonic `0x182057...eb3aa3` | ⚠️ Unaudited |
| Tower | unknown | sonic | n/a | 6 deployments: ethereum `0xd98c02...c750f8`; ethereum `0xf238bf...c7be53`; optimism `0xbacbbe...ed2d49`; sonic [`0x597d27...f9fff7`](./contracts/sonic-146/0x597d275faa31e7eb8261b33bd32563fcf3f9fff7/); arbitrum `0xc1b3fb...0b53ef`; avalanche `0xd13921...529a5d` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | n/a | 9 deployments: ethereum [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/); ethereum `0x0bc03a...d9372b`; ethereum `0x239f61...128bdb`; ethereum `0x3a6df8...26e8e1`; ethereum `0x48a6e2...0c4cc5`; ethereum `0x6f29fe...1efe4a`; ethereum `0xb0ba55...4cf0b9`; ethereum `0xc43de3...dbf79e`; ethereum `0xcd7ac4...caa070` | ⚠️ Unaudited |
| VirtualTokenPrice | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x25a39b...73a6b8`](./contracts/ethereum-1/0x25a39b66fc3a85d13b3e9143d5095560fa73a6b8/); sonic `0x5992e9...b1e494`; arbitrum `0x27276d...784aac`; avalanche `0xc09ad8...71105c` | ⚠️ Unaudited |
| WrappedMetaVaultOracleAdapter | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x12a9fe...32e1c5`](./contracts/sonic-146/0x12a9fe9f6a1fea5f3c76773d09baa9e1a332e1c5/); sonic `0x4d5f6a...f0d199` | ⚠️ Unaudited |
| WstEthToStEthAdapterMainnet | adapter | ethereum | n/a | 4 deployments: ethereum [`0x2fb48d...6ba718`](./contracts/ethereum-1/0x2fb48d62349dc24df1bf7dd44395aef6f86ba718/); ethereum `0x92b70a...7940df`; ethereum `0xa81745...bb1f27`; ethereum `0xe37949...aa1024` | ⚠️ Unaudited |
| Xai | unknown | ethereum | n/a | [`0xd7c9f0...c3beac`](./contracts/ethereum-1/0xd7c9f0e536dc865ae858b0c0453fe76d13c3beac/) | ⚠️ Unaudited |
| XSilo | unknown | sonic | n/a | [`0x445176...e1dcc9`](./contracts/sonic-146/0x4451765739b2d7bce5f8bc95beaf966c45e1dcc9/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | n/a | `0x757748...f0584e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x087ae3...c42697` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe12a7a...9412c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04e209...e88049` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ec69e...f46bd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x889be5...8dbdf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2aa2e...f30807` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda3975...330b85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x081856...07fff9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a4507...0f3faa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a0408...29cceb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x626e6a...e3100e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ccf6a...c6b21e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad525f...fcaf0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb19c46...151bf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb2f667...13e360` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4576d...2fb73b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde73c3...16e6b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc4038...bcd42f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xJCN Audit GitHub.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/develop/audits/v3/0xJCN%20Audit%20%C2%B7%20GitHub.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Silo - Silo - Aggregator and Manageable Oracle - Final Report.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/develop/audits/v3/Silo%20-%20Silo%20-%20Aggregator%20and%20Manageable%20Oracle%20-%20Final%20Report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 19 | high |
| [Silo Enterprise Continuous Audit.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/develop/audits/v3/Silo%20Enterprise%20Continuous%20Audit.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 61 | high |
| [Kink_Interest_Rate_Model_V2_2025_10_16.pdf](https://github.com/silo-finance/silo-contracts-v3/blob/develop/silo-core/docs/Kink_Interest_Rate_Model_V2_2025_10_16.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1D2EIOb0XaRov5Ph2AE0DTfIsMISd7UXG/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1WXaB3ICLv4rSEX86POK3-NaOIxXwyq9l/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/10GyfA-nBJ5jqLWW9LEYJQeFem8qSgNH6/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Silo - Defaulting Liquidations - Final Report .pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v2/Silo%20-%20Defaulting%20Liquidations%20-%20Final%20Report%20.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 187 | high |
| [25-11-2024_Certora.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v2/reports/25-11-2024_Certora.pdf) | Certora | Audit | 2024-11 | aging | Direct | contract_name | 73 | high |
| [Silo - Liquidation-by-Defaulting - Draft Report.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v2/reports/Silo%20-%20Liquidation-by-Defaulting%20-%20Draft%20Report.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | contract_name | 187 | high |
| [2026-02_Security Review_Silo Finance_Silo_v3.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v3/2026-02_Security%20Review_Silo%20Finance_Silo_v3.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | contract_name | 97 | high |
| [Silo - Description - Final Report (2ad3aec).pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v3/Silo%20-%20Description%20-%20Final%20Report%20(2ad3aec).pdf) | Unknown | Audit | 2026-02 | fresh | Direct | contract_name | 187 | high |
| [report-cli-cantina-silo-finance-0124.pdf (also discovered via alternate URL)](https://github.com/silo-finance/silo-contracts-v3/blob/master/audits/v3/report-cli-cantina-silo-finance-0124.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 97 | high |
| [SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf](https://docs.silo.finance/assets/files/SP_Silo_Core_Security_Assessment_Report_v2.0-6c5f5bb40b34450300b9fe59133ea870.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | contract_name | 179 | high |
| [Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf](https://docs.silo.finance/assets/files/Certora_Silo_Leverage_Formal_Verification_Report-98045fcc87e8f4ee46a92bca82d58c85.pdf) | Certora | Audit | 2025-07 | fresh | Direct | contract_name | 17 | high |
| [/URI ()>>](https://prover.certora.com/output/40726/5ded49442eb744f48db2be31fdf4bcca?anonymousKey=3ac339bd3d9c26dba41c4ac84c680239a332ef9) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [/URI ()>>](https://prover.certora.com/output/40726/b781ebc4e8dd4625befda44aef45c3d6?anonymousKey=b2d48d6ff66d30dc474092a6234b41de07fe83b9) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [/URI ()>>](https://prover.certora.com/output/40726/df2a8289a92642b798925e5ee028f102?anonymousKey=91b09db29d355f1a326f14d874985a724c46cee0) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf0b2dd...486bb0`](./contracts/ethereum-1/0xf0b2dd79324a66d2108c961d680f7616e1486bb0/) | SiloToken | token | $641,209.89 | Verified native implementation with $641,209.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f8031...8ab1f8`](./contracts/ethereum-1/0x6f80310ca7f2c654691d1383149fa1a57d8ab1f8/) | SiloGovernanceToken | token | $105.26 | Verified native implementation with $105.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09402f...c0ae55`](./contracts/ethereum-1/0x09402f0f9f490e38413a5d4892d1e927acc0ae55/) | DynamicKinkModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d51f3...a03ed1`](./contracts/ethereum-1/0x1d51f30e5c8ec1c6efeb5d1877f7302a09a03ed1/) | DynamicKinkModelFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0094c5...2b2a2c`](./contracts/ethereum-1/0x0094c5d6b460a2efff23420db097921bcc2b2a2c/) | ERC4626OracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d9256...033254`](./contracts/ethereum-1/0x0d925653b179f6f661b7e99d634b7479ed033254/) | ERC4626OracleWithUnderlyingFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe569bd...81733f`](./contracts/sonic-146/0xe569bdc18cd807ac1cfb2c926f50d0c9b881733f/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a1ee8...932bfa`](./contracts/ethereum-1/0x2a1ee876ed23d356a7b73b42c1c16a9bcd932bfa/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x361384...6b6461`](./contracts/sonic-146/0x361384a0d755f972e5eea26e4f4efbaf976b6461/) | ManualLiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xdb8838...231d87`](./contracts/sonic-146/0xdb8838f8d035e5fa48b3481867424f5fc6231d87/) | MaxWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x38d712...a7a725`](./contracts/sonic-146/0x38d712f9e105cdbe9367be9d8061d63bcba7a725/) | OracleForwarderFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x889be5...8dbdf0`](./contracts/sonic-146/0x889be50f7ef7e0d88c2023c509f4e02d378dbdf0/) | RevertingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x16876a...503b1c`](./contracts/sonic-146/0x16876af41e8beddbf9b67d2b66bb50abf3503b1c/) | SiloRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02bbb8...171b1d`](./contracts/sonic-146/0x02bbb86731ec6aa81b52961e14dd1aebe5171b1d/) | SiloVaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x023d9b...06b90e`](./contracts/sonic-146/0x023d9bcb63532d1215d4adbdb66a4410e506b90e/) | Stream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x597d27...f9fff7`](./contracts/sonic-146/0x597d275faa31e7eb8261b33bd32563fcf3f9fff7/) | Tower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a39b...73a6b8`](./contracts/ethereum-1/0x25a39b66fc3a85d13b3e9143d5095560fa73a6b8/) | VirtualTokenPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12a9fe...32e1c5`](./contracts/sonic-146/0x12a9fe9f6a1fea5f3c76773d09baa9e1a332e1c5/) | WrappedMetaVaultOracleAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fb48d...6ba718`](./contracts/ethereum-1/0x2fb48d62349dc24df1bf7dd44395aef6f86ba718/) | WstEthToStEthAdapterMainnet | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x445176...e1dcc9`](./contracts/sonic-146/0x4451765739b2d7bce5f8bc95beaf966c45e1dcc9/) | XSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=5548

Zero-match audit list:

- [4906] 0xJCN Audit GitHub.pdf
- [4914] Kink_Interest_Rate_Model_V2_2025_10_16.pdf
- [15217] DL audit link
- [15218] DL audit link
- [15219] DL audit link
- [15240] /URI ()>>
- [15241] /URI ()>>
- [15242] /URI ()>>

Fork inheritance lineage and inherited audits are included when available.
