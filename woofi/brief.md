# Agentic Audit Brief: WOOFi

⚠️ Lifecycle status: DECLINING - TVL dropped 76.9% over 90 days

## Project Overview

- Project: WOOFi (`woofi`)
- Website: [https://woofi.com/en/trade?ref=DEFILLAMA](https://woofi.com/en/trade?ref=DEFILLAMA)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T04:12:55.757Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: arbitrum, avalanche, base, berachain, ethereum, fantom, linea, mantle, optimism, polygon, polygon-zkevm, sonic
- Contract surface: 200 unique implementations (735 raw deployments)
- DeFi Llama TVL: $21,325,145.00
- On-chain TVL (included contracts): $9,772,871.22
- TVL by chain: Arbitrum $8,816,113.02 | Polygon $629,994.06 | Avalanche $307,025.27 | Optimism $19,738.87

## Project Description

WOOFi is a multichain decentralized exchange and trade-and-earn platform offering spot swaps, cross-chain swaps and routing, staking, and single-sided yield products.

### Architecture

Both families share cross-chain infrastructure via AutoFarmV2_CrossChain and proxy patterns like TransparentUpgradeableProxy. WOOFi Swap provides liquidity and token infrastructure that may be utilized by WooFi Pro Perps for settlement or collateral.

## Audit Coverage Summary

- Verified implementations audited: 16/85 (18.8%)
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 1
- Unverified implementations: 115
- Unique implementations: 200
- Raw deployments: 735
- Audits discovered: 6
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $9,659,532.82
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9,659,532.82 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 11 | 12.9% | 2024-08 |
| Verilog | Tier 2 | 4 | 4.7% | 2021-10 |
| CertiK | Tier 2 | 2 | 2.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WooSuperChargerVaultV2 | core_logic | polygon | 17 deployments: polygon [`0x1109e0...3cf549`](./contracts/polygon-137/0x1109e03516eb25eab2150d0b274b8d4f5f3cf549/); polygon `0x2caa3e...4e7c7a`; polygon `0x3c5379...79f890`; polygon `0x4ab421...af63b5`; polygon `0x7f2571...f950ac`; polygon `0x90a2aa...abd085`; polygon `0x9dd5dd...9b0699`; polygon `0xedbb74...1799ac`; arbitrum `0x7f3f2a...295bb1`; arbitrum `0xa78043...52f7d8`; arbitrum `0xd2fdab...5b56b1`; avalanche `0x11b29a...da836a`; avalanche `0x1cd7b3...02e6c4`; avalanche `0x4df8d3...cd0cfc`; avalanche `0x734738...5be0ba`; avalanche `0x866810...c60625`; avalanche `0xcbe2ae...f79cee` | ✅ Audited |
| WooCrossChainRouterV4 | adapter | arbitrum | [`0x934bcc...9e9bb8`](./contracts/arbitrum-42161/0x934bccc16c02c40b08484ae33806bb4bd59e9bb8/) | ✅ Audited |
| WooGuardian | governance | polygon | [`0xf5d215...83a2d6`](./contracts/polygon-137/0xf5d215d9c84778f85746d15762daf39b9e83a2d6/) | ✅ Audited |
| WooLendingManager | core_logic | polygon | 40 deployments: polygon [`0x01e42c...63f139`](./contracts/polygon-137/0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139/); polygon `0x154e8b...66c67e`; polygon `0x27021e...4b87bf`; polygon `0x3bb5aa...8adaa8`; polygon `0x3e2942...4fc382`; polygon `0x4f4abc...d27b95`; polygon `0x53b42b...d54acf`; polygon `0x63b244...b28358`; polygon `0x697c97...6ffccd`; polygon `0x74486b...3c7c73`; polygon `0x8cd11c...14b108`; polygon `0x96329d...87e15e`; polygon `0x9f46a7...bff18d`; polygon `0xa2f2d3...d4d673`; polygon `0xbae04c...e5f499`; polygon `0xbf401e...b57c22`; polygon `0xc4abb9...393cca`; polygon `0xcb342e...a9ae21`; polygon `0xec0541...cb2b90`; polygon `0xf6be9c...9ad083`; arbitrum `0x21886d...636103`; arbitrum `0x2cc993...ae2376`; arbitrum `0x371a25...5d6f91`; arbitrum `0x5c7ff2...bb7bc5`; arbitrum `0x604ff7...3ede52`; arbitrum `0x632626...7d603e`; arbitrum `0x6fc2c9...8f3f08`; arbitrum `0x79a545...3be767`; arbitrum `0xfeeced...3ac2d6`; avalanche `0x113d31...b71a73`; avalanche `0x1331a0...dbdef4`; avalanche `0x385e06...b10f73`; avalanche `0x4c1987...1b634f`; avalanche `0x68ece3...737267`; avalanche `0x697c97...6ffccd`; avalanche `0xab014a...9d5cf6`; avalanche `0xb19093...ab1e73`; avalanche `0xc8ec7f...dd9dc7`; avalanche `0xeccc83...731fd8`; avalanche `0xf13879...b465a9` | ✅ Audited |
| WooPP | unknown | polygon | [`0x7400b6...78723d`](./contracts/polygon-137/0x7400b665c8f4f3a951a99f1ee9872efb8778723d/) | ✅ Audited |
| Wooracle | operational_periphery | polygon | 2 deployments: polygon [`0x2fe5e5...b0f7ec`](./contracts/polygon-137/0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec/); arbitrum `0x925afa...5dd965` | ✅ Audited |
| WooracleV2 | operational_periphery | avalanche | 2 deployments: polygon `0xeff23b...bf3062`; avalanche [`0x9aca55...bf8000`](./contracts/avalanche-43114/0x9aca557590f5020bda4ba63065fc3a1253bf8000/) | ✅ Audited |
| WooracleV2_2 | operational_periphery | polygon | 2 deployments: polygon [`0x2a8ede...1a8428`](./contracts/polygon-137/0x2a8ede62d0717c8c92b88639ecf603fdf31a8428/); arbitrum `0xcf4ea1...8934ec` | ✅ Audited |
| WooRouter | adapter | avalanche | [`0x160020...2062ff`](./contracts/avalanche-43114/0x160020b09ded3d862f7f851b5c50632bcf2062ff/) | ✅ Audited |
| WooRouterV2 | adapter | arbitrum | 9 deployments: polygon `0x44df09...746cb8`; polygon `0x73bd3c...1aca15`; polygon `0x817eb4...a39b74`; polygon `0x9d1a92...ca3128`; polygon `0xa1bb8a...8e34e5`; arbitrum [`0x2f1617...2f6e7d`](./contracts/arbitrum-42161/0x2f1617ecd1cee8892c54fbde11d2cc751e2f6e7d/); arbitrum `0x9aed3a...629a30`; arbitrum `0xd2635b...eda899`; avalanche `0xc22fbb...cea2f9` | ✅ Audited |
| WooStakingController | governance | arbitrum | 5 deployments: arbitrum [`0x13d902...ce40b3`](./contracts/arbitrum-42161/0x13d9027a5060e6728240de075055f0b9bcce40b3/); arbitrum `0x747f99...5c4a9e`; arbitrum `0x83108a...817198`; arbitrum `0x93e63f...ad5a04`; arbitrum `0xf75566...9a2253` | ✅ Audited |
| WooStakingLocal | unknown | arbitrum | 4 deployments: arbitrum [`0x106da3...20a6a1`](./contracts/arbitrum-42161/0x106da37e556e77f02d47743e92fc317bd320a6a1/); arbitrum `0x2cfa72...b7d8e2`; arbitrum `0x6b31bc...0d61d7`; arbitrum `0xf702c1...04ee61` | ✅ Audited |
| WooStakingManager | governance | arbitrum | 4 deployments: arbitrum [`0x0feb09...363006`](./contracts/arbitrum-42161/0x0feb09120fd725961cfdebf49140f73d98363006/); arbitrum `0x297ad0...24d25b`; arbitrum `0xa9e245...2924fb`; arbitrum `0xba91ff...a89b13` | ✅ Audited |
| WooStakingProxy | proxy | arbitrum | 10 deployments: ethereum `0xba91ff...a89b13`; optimism `0xba91ff...a89b13`; polygon `0x5cb492...55d406`; polygon `0xba91ff...a89b13`; arbitrum [`0x1553a0...ecacca`](./contracts/arbitrum-42161/0x1553a071c135137610699f93c9834e8165ecacca/); arbitrum `0x581185...65b3b2`; arbitrum `0x7e48f3...899bd1`; arbitrum `0xa9fecf...3554f9`; arbitrum `0xc5e220...2cad88`; avalanche `0x3bd968...1386e3` | ✅ Audited |
| WooWithdrawManagerV2 | operational_periphery | avalanche | 16 deployments: polygon `0x382a9b...150efb`; polygon `0x3fe2c8...48b3b9`; polygon `0x4c51d3...128c6a`; polygon `0x6f09ae...8dfc01`; polygon `0x7f7821...87fd4c`; polygon `0x83b904...8d5ea0`; polygon `0x84b76e...2b7e5f`; arbitrum `0xbfe3d2...9f09ac`; arbitrum `0xd05b95...5d03ac`; arbitrum `0xe76c97...53d3fe`; avalanche [`0x0add2a...acede9`](./contracts/avalanche-43114/0x0add2ad63a70f5e009c36070421a63c96facede9/); avalanche `0x1bb2eb...9602c9`; avalanche `0x3645dd...22baf0`; avalanche `0x3d06b3...026661`; avalanche `0x755e4a...1b56f6`; avalanche `0xa429b4...a59664` | ✅ Audited |

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | [`0xcafcd8...efd07b`](./contracts/arbitrum-42161/0xcafcd85d8ca7ad1e1c6f82f651fa15e33aefd07b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | arbitrum | 40 deployments: polygon `0x12e687...056592`; polygon `0x28f88a...de014c`; polygon `0x2da7de...520d86`; polygon `0x3b3e4b...c88524`; polygon `0x49d26a...d3614a`; polygon `0x4a7bbb...56c943`; polygon `0x930fa1...c0f9c0`; polygon `0x99ad6e...a2d230`; polygon `0xb54e1d...8853b2`; polygon `0xb8db69...d98f55`; polygon `0xd5befe...a0c343`; arbitrum [`0x0510e5...fcc53b`](./contracts/arbitrum-42161/0x0510e56edb651fa39c3330d2f5bf8fbecdfcc53b/); arbitrum `0x10aeb5...550d25`; arbitrum `0x13b3c9...14c6e1`; arbitrum `0x2aa18a...823a31`; arbitrum `0x2df393...4f5208`; arbitrum `0x367f11...233df3`; arbitrum `0x38506f...503796`; arbitrum `0x478e7f...ef6f13`; arbitrum `0x4fbec6...d7996b`; arbitrum `0x65003b...dfd070`; arbitrum `0x73c364...2d8fe2`; arbitrum `0x915ef9...ea90ec`; arbitrum `0x9e999f...a3d25d`; arbitrum `0xa2e70f...4d02e0`; arbitrum `0xcbc141...025903`; arbitrum `0xcf4a40...ead07b`; arbitrum `0xd3d86c...850ae7`; arbitrum `0xea6790...28554a`; avalanche `0x0c9044...4be49e`; avalanche `0x218864...12c538`; avalanche `0x305f06...66de4d`; avalanche `0x34c384...0ebcde`; avalanche `0x6de98d...6ae82d`; avalanche `0xba91ff...a89b13`; avalanche `0xc48ab7...e2e112`; avalanche `0xc57b3e...f745b3`; avalanche `0xda442c...091bfe`; avalanche `0xdecc54...a8cf4b`; avalanche `0xf8ee71...ba81a8` | ⚠️ Unaudited |
| VoidStrategy | core_logic | arbitrum | 25 deployments: polygon `0x337060...e77d5b`; polygon `0x4fe764...c34e66`; polygon `0x88ef2b...bfa3fa`; polygon `0xc22fbb...cea2f9`; polygon `0xce66ab...978bb3`; polygon `0xee8402...e03f20`; arbitrum [`0x00daaa...de8ba1`](./contracts/arbitrum-42161/0x00daaab002049a6ac2d7d58c2ee5b5f363de8ba1/); arbitrum `0x113d31...b71a73`; arbitrum `0x31a06d...b1d149`; arbitrum `0x36a106...6489d4`; arbitrum `0x4c51d3...128c6a`; arbitrum `0x637645...ae6ed6`; arbitrum `0x91d11e...6b93cd`; arbitrum `0x9d71a7...3abe15`; arbitrum `0xac5cf6...10a81b`; arbitrum `0xc930e2...af7db2`; arbitrum `0xdeefc0...0a5d0f`; arbitrum `0xec0417...f13bb8`; arbitrum `0xf80475...476f02`; avalanche `0x110155...a70192`; avalanche `0x3ff0a5...6987ea`; avalanche `0x6ba5b4...a23f9f`; avalanche `0xa5e994...8a4af3`; avalanche `0xb07683...07e927`; avalanche `0xf8ad4e...6ac63a` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | polygon | 16 deployments: polygon [`0x08357e...93f3fb`](./contracts/polygon-137/0x08357edec2a033257ceb6029622e0921e093f3fb/); polygon `0x0ba6c3...0ecb9e`; polygon `0x404b18...a9d503`; polygon `0x7fdf58...e63881`; polygon `0x8c6030...5736e7`; polygon `0x8ea0eb...e07a5c`; polygon `0xb29de0...ad747b`; polygon `0xe56758...b33647`; arbitrum `0x230441...f7d718`; arbitrum `0x5a6b07...8cad62`; arbitrum `0x81ab34...17075d`; arbitrum `0x872b6f...ad7049`; arbitrum `0xa4b686...aeed7a`; arbitrum `0xba452b...1c2d08`; avalanche `0x86a639...b9abc7`; avalanche `0xfc0e57...e312af` | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | [`0x871f2f...a5e527`](./contracts/optimism-10/0x871f2f2ff935fd1ed867842ff2a7bfd051a5e527/) | ⚠️ Unaudited |
| WooVaultManager | core_logic | polygon | 9 deployments: polygon [`0x049d48...396e92`](./contracts/polygon-137/0x049d48e1503e8cb5c90305a07456d5986a396e92/); polygon `0x2e668b...0c0383`; polygon `0x7e8949...627254`; polygon `0x887482...07db17`; arbitrum `0xa8452e...161d5b`; arbitrum `0xc036ba...fb09ef`; arbitrum `0xf357ec...dc0182`; avalanche `0x68f1ec...cf9700`; avalanche `0xfd7ed9...4d7ccb` | ⚠️ Unaudited |
| VaultAvax | core_logic | avalanche | 28 deployments: avalanche [`0x0208d7...bf0563`](./contracts/avalanche-43114/0x0208d735576b3d974024237393f4617285bf0563/); avalanche `0x0c4d6a...f09a0f`; avalanche `0x26c37d...6f790f`; avalanche `0x2711cc...066fa1`; avalanche `0x2f22c3...254d7e`; avalanche `0x2f97e4...6a5147`; avalanche `0x40c90c...632219`; avalanche `0x505ac7...3efa3f`; avalanche `0x6eeb59...b6a65a`; avalanche `0x7081a3...887d7e`; avalanche `0x758231...355d33`; avalanche `0x764f5d...682744`; avalanche `0x7de3fc...bca340`; avalanche `0x7e8949...627254`; avalanche `0x86b174...6abf0a`; avalanche `0x872b6f...ad7049`; avalanche `0xa2101f...027001`; avalanche `0xa94034...cdbfd7`; avalanche `0xb0e923...3b5007`; avalanche `0xb29de0...ad747b`; avalanche `0xc7498b...2c0dc4`; avalanche `0xcdc155...f20578`; avalanche `0xcf4a40...ead07b`; avalanche `0xd14a99...caa99e`; avalanche `0xda4b53...4c3438`; avalanche `0xe3222b...f508c1`; avalanche `0xe56758...b33647`; avalanche `0xf5d215...83a2d6` | ⚠️ Unaudited |
| StrategyTraderJoeDualLP | core_logic | avalanche | 6 deployments: avalanche [`0x1f79f8...2df448`](./contracts/avalanche-43114/0x1f79f8a65e02f8a137ce7f79c038cc44332df448/); avalanche `0x479dbc...0a7e45`; avalanche `0x542fd4...9df49d`; avalanche `0xbdeea8...f580a4`; avalanche `0xf357ec...dc0182`; avalanche `0xf702c1...04ee61` | ⚠️ Unaudited |
| StrategyTraderJoeLP | core_logic | avalanche | 4 deployments: avalanche [`0x0176a4...0d6586`](./contracts/avalanche-43114/0x0176a42a277e6e466cf62eb37e62dda5400d6586/); avalanche `0x2cc993...ae2376`; avalanche `0x758640...6307b5`; avalanche `0x930fa1...c0f9c0` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | arbitrum | 9 deployments: arbitrum [`0x1109e0...3cf549`](./contracts/arbitrum-42161/0x1109e03516eb25eab2150d0b274b8d4f5f3cf549/); arbitrum `0x29ca8b...f52407`; arbitrum `0x452c32...6eff4d`; arbitrum `0x48c9ee...7224b2`; arbitrum `0x968d3b...416b22`; arbitrum `0xc63c64...58b9cb`; arbitrum `0xd23944...dcbf17`; arbitrum `0xff0a28...2a86f6`; avalanche `0xa71f67...a158d0` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/) | ⚠️ Unaudited |
| DataProvider | unknown | polygon | 6 deployments: polygon [`0x1ce18a...f8bcdb`](./contracts/polygon-137/0x1ce18ae6886940be8c04ed954c747c4082f8bcdb/); polygon `0xffd6e0...1658f3`; arbitrum `0x4f052d...b9a978`; arbitrum `0xc3938e...b4331f`; avalanche `0x518f6a...e79066`; avalanche `0x73c364...2d8fe2` | ⚠️ Unaudited |
| Gist | unknown | avalanche | [`0x636230...82f4f1`](./contracts/avalanche-43114/0x636230c0477463f5ad33134603e693879282f4f1/) | ⚠️ Unaudited |
| IntegrationHelper | periphery | avalanche | 3 deployments: polygon `0x7ba560...81850d`; arbitrum `0x28d2b9...148e40`; avalanche [`0x020630...2b6ad1`](./contracts/avalanche-43114/0x020630613e296c3e9b06186f630d1bf97a2b6ad1/) | ⚠️ Unaudited |
| MasterChefWoo | unknown | avalanche | 3 deployments: arbitrum `0x7f2571...f950ac`; avalanche [`0x615571...2ff09d`](./contracts/avalanche-43114/0x6155719d35eae023d87626c391c425be6c2ff09d/); avalanche `0xab7c09...ee65c4` | ⚠️ Unaudited |
| MigrationBSC | operational_periphery | ethereum | 2 deployments: ethereum [`0xdcf084...711071`](./contracts/ethereum-1/0xdcf08427aad1c0e7d31dfd5846aaacae5f711071/); ethereum `0xe72d93...eb702d` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| MpRewarder | unknown | arbitrum | 5 deployments: arbitrum [`0x5b4a31...feee74`](./contracts/arbitrum-42161/0x5b4a310bb6096eae195d133834e66882a8feee74/); arbitrum `0x5c3abb...c22c6c`; arbitrum `0xa74bb3...a743d7`; arbitrum `0xd0e03d...503fe3`; arbitrum `0xe6f03c...75d4bc` | ⚠️ Unaudited |
| MysteryBox | unknown | arbitrum | 6 deployments: arbitrum [`0x15b11a...65d606`](./contracts/arbitrum-42161/0x15b11a8c2b9d7b439fdbebdcfb633b8f6665d606/); arbitrum `0x371a35...e6c347`; arbitrum `0x3dc662...2da2cb`; arbitrum `0x8b5da2...a68d2f`; arbitrum `0x9d9200...90715e`; arbitrum `0xb14ec1...3a3962` | ⚠️ Unaudited |
| NftBooster | core_logic | arbitrum | 3 deployments: arbitrum [`0x06b00f...539655`](./contracts/arbitrum-42161/0x06b00fceebc13caa49de8037609e7e6a97539655/); arbitrum `0x114c36...a77b63`; arbitrum `0xa805ed...38291f` | ⚠️ Unaudited |
| NftBoosterV2 | core_logic | arbitrum | 8 deployments: arbitrum [`0x1d8664...4f830b`](./contracts/arbitrum-42161/0x1d8664d884ebfb03f3cff978fdd205ce244f830b/); arbitrum `0x2ebca5...3ee90f`; arbitrum `0x52dda0...0a5206`; arbitrum `0x82aee0...3fd8fc`; arbitrum `0xa1a2ed...aafb50`; arbitrum `0xb42a4e...b2adf1`; arbitrum `0xcd1844...4a8a28`; arbitrum `0xe96507...87abb2` | ⚠️ Unaudited |
| NonceCounter | unknown | arbitrum | 6 deployments: arbitrum [`0x50f347...d0ecc1`](./contracts/arbitrum-42161/0x50f347d0c33e5b12cb76daa64ebc0f09d0d0ecc1/); arbitrum `0x664195...776d9a`; arbitrum `0x6c2d14...0b09da`; arbitrum `0xcb256b...ac1711`; arbitrum `0xccb878...148024`; arbitrum `0xce66ab...978bb3` | ⚠️ Unaudited |
| NonceCounterV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x0ab13d...2bdc2b`](./contracts/arbitrum-42161/0x0ab13d6d5f42f595f86f193ab90112894a2bdc2b/); arbitrum `0x3b3e4b...c88524` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 5 deployments: polygon [`0x2f97e4...6a5147`](./contracts/polygon-137/0x2f97e40d827b7b5a1421f3c75e8bf9639c6a5147/); polygon `0xf95117...0a37dd`; arbitrum `0x497abd...f3c60f`; arbitrum `0x7081a3...887d7e`; avalanche `0x845952...5b1d89` | ⚠️ Unaudited |
| QuestTokenRewardManager | governance | arbitrum | [`0xca8edc...c00b72`](./contracts/arbitrum-42161/0xca8edccf471a213cfd70d73117ac7f49bfc00b72/) | ⚠️ Unaudited |
| RewardBooster | core_logic | arbitrum | 15 deployments: arbitrum [`0x1c2998...a957df`](./contracts/arbitrum-42161/0x1c29986ff01c65665393e55c73ade2aa6da957df/); arbitrum `0x1e5bd7...1ea8fb`; arbitrum `0x2839d2...626c4a`; arbitrum `0x652e75...af5c7a`; arbitrum `0x65f2d7...582172`; arbitrum `0x6833e5...cf0bc5`; arbitrum `0x74e20a...8661f1`; arbitrum `0x7800bd...9cb8db`; arbitrum `0x8dd7b1...d3c36b`; arbitrum `0x994b05...68d57e`; arbitrum `0xa08782...259b08`; arbitrum `0xb6d5e7...efda36`; arbitrum `0xf26eb5...92747b`; arbitrum `0xfa09f1...b8dac2`; arbitrum `0xfc190d...e15a14` | ⚠️ Unaudited |
| RewardCampaignManager | core_logic | arbitrum | 8 deployments: arbitrum [`0x0d42b2...8aa6a5`](./contracts/arbitrum-42161/0x0d42b27153c185b2b60b8ab6d77af9c4668aa6a5/); arbitrum `0x2a0fa0...1f31d3`; arbitrum `0x38cb87...b63387`; arbitrum `0x43054b...1ac44b`; arbitrum `0x6f905b...87cd58`; arbitrum `0x927f8c...8d4234`; arbitrum `0xe39db5...ae5ac9`; arbitrum `0xefda56...56c8da` | ⚠️ Unaudited |
| RewardNFT | token | arbitrum | 16 deployments: arbitrum [`0x06c7e4...4e336b`](./contracts/arbitrum-42161/0x06c7e4cdd71a9fd637b92ca23f57ab6f924e336b/); arbitrum `0x121135...67bc55`; arbitrum `0x23433a...a38d09`; arbitrum `0x2a73a5...0f60e3`; arbitrum `0x2aaf89...219050`; arbitrum `0x50c931...332a8d`; arbitrum `0x52082c...0aefd4`; arbitrum `0x572605...8e86a3`; arbitrum `0x6317a2...527b55`; arbitrum `0x69cbff...50e705`; arbitrum `0xc2c1e8...1d86ff`; arbitrum `0xc410c1...eab62b`; arbitrum `0xd208b6...ff426f`; arbitrum `0xdd3c56...8548e3`; arbitrum `0xe2e464...fbee02`; arbitrum `0xf3f577...1e3629` | ⚠️ Unaudited |
| SelectWinners | unknown | arbitrum | 3 deployments: arbitrum [`0x28f88a...de014c`](./contracts/arbitrum-42161/0x28f88a809ccc085956ab9f978067698d25de014c/); arbitrum `0x2a8ede...1a8428`; arbitrum `0x2ff261...c303d8` | ⚠️ Unaudited |
| SgInfoV2 | periphery | arbitrum | 3 deployments: arbitrum [`0x5b87c6...1cc807`](./contracts/arbitrum-42161/0x5b87c631308c6fb0ead5aa89b6fb8c78421cc807/); arbitrum `0x64a734...e90f4b`; arbitrum `0xfba7cd...932c5c` | ⚠️ Unaudited |
| SimpleRewarder | unknown | arbitrum | 15 deployments: arbitrum [`0x10dcf5...d64c8f`](./contracts/arbitrum-42161/0x10dcf57cca73246a81bf5e0a4b0496d91ed64c8f/); arbitrum `0x28f846...0ceb86`; arbitrum `0x31828f...729f9f`; arbitrum `0x3784a4...8f95da`; arbitrum `0x401ff5...aaabcb`; arbitrum `0x523752...77244e`; arbitrum `0x666e11...39d04c`; arbitrum `0x81ca6c...2e4775`; arbitrum `0xa27116...8d9f7f`; arbitrum `0xa6000b...e65bd3`; arbitrum `0xb38a05...47ed80`; arbitrum `0xd9b75e...f23f70`; arbitrum `0xde1272...91f2da`; arbitrum `0xe74f29...23efd5`; arbitrum `0xec3d40...99214a` | ⚠️ Unaudited |
| SimpleRewarderForWOO | unknown | arbitrum | [`0x4ea3b7...b1262f`](./contracts/arbitrum-42161/0x4ea3b7cc1efcdb92a9fe67d2e45d5c46afb1262f/) | ⚠️ Unaudited |
| StrategyBankerJoe | core_logic | avalanche | 9 deployments: avalanche [`0x4f4abc...d27b95`](./contracts/avalanche-43114/0x4f4abc969718982ed86c62b214607b31cfd27b95/); avalanche `0x5db04b...39b4b8`; avalanche `0x6dbef5...17b4b5`; avalanche `0x938021...3e0dd5`; avalanche `0x9e999f...a3d25d`; avalanche `0xcc96ba...681ee9`; avalanche `0xec0541...cb2b90`; avalanche `0xf2be87...15e94e`; avalanche `0xf60d27...46115d` | ⚠️ Unaudited |
| StrategyBankerJoeNative | core_logic | avalanche | 3 deployments: avalanche [`0x044c08...3534e8`](./contracts/avalanche-43114/0x044c08639bd59beb4f6ec52c0da6cd47283534e8/); avalanche `0x7400b6...78723d`; avalanche `0x932178...3dc99d` | ⚠️ Unaudited |
| StrategyBenqi | core_logic | avalanche | 4 deployments: avalanche [`0x47037d...e19e71`](./contracts/avalanche-43114/0x47037d1d5b44ccf5b2c7ec31b3191bd040e19e71/); avalanche `0xac9244...d2eddb`; avalanche `0xb4e0bc...82caa9`; avalanche `0xee4338...1c44ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 13 deployments: optimism `0x552038...f69fa4`; polygon `0x552038...f69fa4`; sonic `0x552038...f69fa4`; mantle `0x552038...f69fa4`; base `0x552038...f69fa4`; arbitrum [`0x2743d7...beb7bd`](./contracts/arbitrum-42161/0x2743d776eb222d10bb45ca0d847a83b82cbeb7bd/); arbitrum `0x552038...f69fa4`; arbitrum `0x651040...5f58ef`; arbitrum `0x6838b7...537fb1`; arbitrum `0x6b4912...f7aec7`; avalanche `0x552038...f69fa4`; linea `0x552038...f69fa4`; berachain `0x552038...f69fa4` | ⚠️ Unaudited |
| Utils | unknown | arbitrum | [`0x438241...9c098f`](./contracts/arbitrum-42161/0x4382417d3e9ca0af608f120203464c71739c098f/) | ⚠️ Unaudited |
| VaultAggregator | core_logic | polygon | 18 deployments: polygon [`0x049989...c882ee`](./contracts/polygon-137/0x0499892866c986027149f28721ac8fd630c882ee/); polygon `0x4df34a...617975`; polygon `0x632626...7d603e`; polygon `0x9144d5...4c51db`; polygon `0xa79e2c...2c97bb`; polygon `0xb964bb...8775bf`; polygon `0xed6e5c...a64aaf`; polygon `0xf2be87...15e94e`; arbitrum `0x2cf870...688dce`; arbitrum `0x39ee28...d14577`; arbitrum `0x817eb4...a39b74`; arbitrum `0xac9244...d2eddb`; avalanche `0x53b42b...d54acf`; avalanche `0x891aae...5e8b5b`; avalanche `0xc44843...080c04`; avalanche `0xcbc141...025903`; avalanche `0xd18d33...82d89a`; avalanche `0xf5d656...fa2ad1` | ⚠️ Unaudited |
| VoidRewardRouter | adapter | arbitrum | [`0x1f2868...422778`](./contracts/arbitrum-42161/0x1f2868d1dc715b8503973367b82dd4bfed422778/) | ⚠️ Unaudited |
| WooAccessManager | governance | arbitrum | 4 deployments: polygon `0x925afa...5dd965`; arbitrum [`0x2fe5e5...b0f7ec`](./contracts/arbitrum-42161/0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec/); arbitrum `0x8cd11c...14b108`; arbitrum `0xd14a99...caa99e` | ⚠️ Unaudited |
| WooBuybackSwap | unknown | arbitrum | 5 deployments: arbitrum [`0x15a035...1d0e74`](./contracts/arbitrum-42161/0x15a0358cf225f8ec884e353a8acc081d3b1d0e74/); arbitrum `0x53c660...8d683b`; arbitrum `0x640b42...d82fdf`; arbitrum `0x79afa5...8d852c`; arbitrum `0xa18655...7ae24a` | ⚠️ Unaudited |
| WooCrossChainExternalRouter | adapter | arbitrum | 2 deployments: arbitrum [`0xd0db92...751b51`](./contracts/arbitrum-42161/0xd0db92069e7faeb5c8e55c424443451391751b51/); arbitrum `0xeccc83...731fd8` | ⚠️ Unaudited |
| WooCrossChainOFTDemo | unknown | avalanche | 9 deployments: arbitrum `0x1349e5...c78636`; arbitrum `0x2b76b9...853d88`; arbitrum `0x7a7a3f...781ee0`; arbitrum `0x7eb8d4...be4cad`; avalanche [`0x00c47d...264165`](./contracts/avalanche-43114/0x00c47dd23ffc1de5ef52a840018fc600de264165/); avalanche `0x44d92d...57001e`; avalanche `0x4f16a1...cea69d`; avalanche `0x928e11...6a9487`; avalanche `0x9a6d88...74d4db` | ⚠️ Unaudited |
| WooCrossChainRouter | adapter | arbitrum | 12 deployments: polygon `0x0ad1a3...b7593f`; polygon `0x0c6c19...209cd5`; polygon `0x376d56...5b482c`; polygon `0x574b9c...c008fd`; polygon `0xa325dd...477bf1`; arbitrum [`0x0972a0...35aa73`](./contracts/arbitrum-42161/0x0972a0fa37984e7ff2aefa53a0bb10dce535aa73/); arbitrum `0x44df09...746cb8`; avalanche `0x1e6bb5...e31e33`; avalanche `0x3e2af6...f4a205`; avalanche `0x7b2e29...ba08dd`; avalanche `0x9b4196...108237`; avalanche `0xdf37f7...669b7a` | ⚠️ Unaudited |
| WooCrossChainRouterV2 | adapter | arbitrum | 19 deployments: polygon `0x562003...4ed968`; polygon `0x997bc3...a4a52c`; polygon `0xa0d702...e898e4`; polygon `0xaa9c15...bcc173`; arbitrum [`0x48fd9b...ec8c9e`](./contracts/arbitrum-42161/0x48fd9b3443b0948c320da16bd9b1217f51ec8c9e/); arbitrum `0x4ab421...af63b5`; arbitrum `0x6f09ae...8dfc01`; arbitrum `0xb6f776...485354`; arbitrum `0xda4b53...4c3438`; arbitrum `0xf0b4d1...76bd5e`; arbitrum `0xf0cfe8...3ccffc`; avalanche `0x4ea3b7...b1262f`; avalanche `0x51af49...18dae8`; avalanche `0x523ca9...9edc2b`; avalanche `0x5fca0c...3885b2`; avalanche `0x6f7e84...6814e8`; avalanche `0x860746...c417dd`; avalanche `0xabea7e...11431c`; avalanche `0xb5b3c7...ab2f2d` | ⚠️ Unaudited |
| WooCrossChainRouterV3 | adapter | arbitrum | 4 deployments: arbitrum [`0x366e2f...c5aa3f`](./contracts/arbitrum-42161/0x366e2fda969649980dbc0d10c7fc959f0ac5aa3f/); arbitrum `0xc05a4d...1d5cf9`; arbitrum `0xc3f15d...d0848f`; arbitrum `0xf52ddc...0e275e` | ⚠️ Unaudited |
| WooCrossChainRouterV5 | adapter | arbitrum | 6 deployments: arbitrum [`0x070d5c...5bdb09`](./contracts/arbitrum-42161/0x070d5c603b5c7bb451916dca718d3e800f5bdb09/); arbitrum `0x7cd5bc...3d0981`; arbitrum `0xcc8704...757361`; arbitrum `0xd6961d...275c59`; arbitrum `0xd7d585...ae993a`; arbitrum `0xd7efa0...f75db7` | ⚠️ Unaudited |
| WooCrossRouterForWidget | adapter | arbitrum | 3 deployments: arbitrum [`0x4926eb...ee7e79`](./contracts/arbitrum-42161/0x4926eb102d0e5ff65aac336ba028fb77c1ee7e79/); arbitrum `0x4c7621...0e1668`; arbitrum `0xed8ca3...032694` | ⚠️ Unaudited |
| WooFeeManager | governance | arbitrum | 6 deployments: polygon `0x721483...c18937`; polygon `0x938021...3e0dd5`; arbitrum [`0x0ba6c3...0ecb9e`](./contracts/arbitrum-42161/0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e/); arbitrum `0x36dbf0...746603`; avalanche `0x6cb1bc...70f169`; avalanche `0xdd7f14...bd79cf` | ⚠️ Unaudited |
| WOOFiCrossRouterV5 | adapter | arbitrum | 7 deployments: arbitrum [`0x138047...f3804c`](./contracts/arbitrum-42161/0x138047d643d68c5ffe770bc554b61fdd01f3804c/); arbitrum `0x308984...ef8000`; arbitrum `0x4a54e5...c1bdac`; arbitrum `0x4d7cb5...5d721a`; arbitrum `0x552f22...508a40`; arbitrum `0x8bd32c...1a0578`; arbitrum `0xb4402c...0aa957` | ⚠️ Unaudited |
| WOOFiDexCrossChainRouter | adapter | arbitrum | 3 deployments: arbitrum [`0x6124c9...c77903`](./contracts/arbitrum-42161/0x6124c960dc4d19023d3bb11b5619782ff4c77903/); arbitrum `0x6b4488...cb12d4`; arbitrum `0x728eb9...eec6c2` | ⚠️ Unaudited |
| WOOFiDexDepositor | unknown | arbitrum | 3 deployments: arbitrum [`0x21becb...34b032`](./contracts/arbitrum-42161/0x21becba18fc08376fd33f1b9c7deb5709d34b032/); arbitrum `0x734738...5be0ba`; arbitrum `0xd68173...de8898` | ⚠️ Unaudited |
| WOOFiDexTestVault | core_logic | arbitrum | [`0x81d34d...024044`](./contracts/arbitrum-42161/0x81d34d64321fce8b405a2f0f21c4b09d47024044/) | ⚠️ Unaudited |
| WooIntegrator | unknown | polygon | 2 deployments: polygon [`0x11b29a...da836a`](./contracts/polygon-137/0x11b29ae3037f4526e4aa56952318e0d01ada836a/); polygon `0xf13879...b465a9` | ⚠️ Unaudited |
| WooPPV3 | unknown | arbitrum | 8 deployments: polygon `0x6124c9...c77903`; polygon `0x91d11e...6b93cd`; polygon `0xcbe2ae...f79cee`; polygon `0xde1272...91f2da`; arbitrum [`0x26f33e...1c14f5`](./contracts/arbitrum-42161/0x26f33ea1e476ad8a016834107f9889b6c31c14f5/); arbitrum `0x49e1b5...78ccdf`; arbitrum `0xa08fbd...0014a3`; arbitrum `0xfb59c2...980eaa` | ⚠️ Unaudited |
| WooracleV2_1 | operational_periphery | polygon | 2 deployments: polygon [`0x31ae60...e2a48e`](./contracts/polygon-137/0x31ae608cbadd1214d6a3d5dcf49e45fb18e2a48e/); avalanche `0xc13843...173d19` | ⚠️ Unaudited |
| WooracleV2_1_ZipInherit | operational_periphery | arbitrum | [`0x73504e...cb3620`](./contracts/arbitrum-42161/0x73504eacb100c7576146618dc306c97454cb3620/) | ⚠️ Unaudited |
| WooracleV2Zip | operational_periphery | arbitrum | [`0xa43305...a75127`](./contracts/arbitrum-42161/0xa43305ce0164d87d7b2368f91a1dcc4ebda75127/) | ⚠️ Unaudited |
| WooracleV3ZipInherit | operational_periphery | polygon | [`0xb0d84f...5432ad`](./contracts/polygon-137/0xb0d84fff607dca65a047b2493eba3e55855432ad/) | ⚠️ Unaudited |
| WooRebateManager | governance | arbitrum | 10 deployments: polygon `0x3d605f...ca8a2b`; polygon `0x913e11...11b390`; polygon `0xb77212...e8cb43`; polygon `0xc2c0e0...a69492`; arbitrum [`0x15ba47...1629c2`](./contracts/arbitrum-42161/0x15ba47e540e1b197e30d16a93b0c568b251629c2/); arbitrum `0x505ac7...3efa3f`; arbitrum `0xadae7a...5fe4c1`; avalanche `0x49d26a...d3614a`; avalanche `0xbf401e...b57c22`; avalanche `0xd293d5...126650` | ⚠️ Unaudited |
| WooRouterV3 | adapter | arbitrum | 2 deployments: arbitrum [`0x1ce18a...f8bcdb`](./contracts/arbitrum-42161/0x1ce18ae6886940be8c04ed954c747c4082f8bcdb/); arbitrum `0xb130a4...5d723f` | ⚠️ Unaudited |
| WooSimpleRewarder | unknown | polygon | 28 deployments: polygon [`0x076aff...ab9bdb`](./contracts/polygon-137/0x076aff456b04a84adb3eb207cb1e28ea3bab9bdb/); polygon `0x5c1792...42f9bc`; polygon `0x6de98d...6ae82d`; polygon `0x8ec402...fec784`; arbitrum `0x181d8e...423a60`; arbitrum `0x2eeb12...d14bd4`; arbitrum `0x3aad22...52ace5`; arbitrum `0x3bb5aa...8adaa8`; arbitrum `0x4d0ec3...06ca57`; arbitrum `0x9ca742...076799`; arbitrum `0xa397fb...f43662`; arbitrum `0xbd9044...135166`; arbitrum `0xdf0006...df23e1`; arbitrum `0xfbbfcc...f873bf`; avalanche `0x2ff261...c303d8`; avalanche `0x371a35...e6c347`; avalanche `0x65003b...dfd070`; avalanche `0x8116b1...96ae34`; avalanche `0x919219...fa61eb`; avalanche `0x927f8c...8d4234`; avalanche `0x947e89...cd0499`; avalanche `0xa50258...5a9dc1`; avalanche `0xacdf57...11dcf8`; avalanche `0xd6961d...275c59`; avalanche `0xd7efa0...f75db7`; avalanche `0xee5134...a66749`; avalanche `0xeed179...ca7790`; avalanche `0xfba7cd...932c5c` | ⚠️ Unaudited |
| WooStakingVault | core_logic | polygon | 5 deployments: polygon [`0x6875eb...00e98f`](./contracts/polygon-137/0x6875eb0496b6baa0527c5915d78b9bcdc800e98f/); polygon `0x9bcf8b...9b405b`; arbitrum `0x932178...3dc99d`; avalanche `0x71a862...d3a375`; avalanche `0xcd1b98...e09db0` | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WooUsdOFT | unknown | arbitrum | 4 deployments: polygon `0x3784a4...8f95da`; arbitrum [`0x2500ad...955777`](./contracts/arbitrum-42161/0x2500ad59b46ff4b96f8e1eac3fe1f78eaf955777/); arbitrum `0x58005b...3f5659`; arbitrum `0xf5242e...afde4e` | ⚠️ Unaudited |
| WooUsdOFTCrossRouter | adapter | arbitrum | 4 deployments: arbitrum [`0x3382c5...f0ea14`](./contracts/arbitrum-42161/0x3382c567ad7026731545bdd765166607faf0ea14/); arbitrum `0x37e98b...15b034`; arbitrum `0xa8887f...7a4ae5`; arbitrum `0xb59b84...8d22f9` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | arbitrum | 14 deployments: polygon `0x39467a...2ec735`; polygon `0x3ec979...fcd8d4`; polygon `0x409df2...2a1dcf`; polygon `0xb6f776...485354`; polygon `0xcf6ce5...059de5`; polygon `0xf0b4d1...76bd5e`; arbitrum [`0x1ddd22...9c89ed`](./contracts/arbitrum-42161/0x1ddd225ef26714bb8055ddceaee2589ba09c89ed/); arbitrum `0x2711cc...066fa1`; arbitrum `0x758231...355d33`; arbitrum `0x7de3fc...bca340`; arbitrum `0xa14c57...f05701`; arbitrum `0xe77adf...0ead6a`; avalanche `0xc05a4d...1d5cf9`; avalanche `0xec0417...f13bb8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WooPPV2 | unknown | arbitrum | 16 deployments: optimism `0x6aebc6...0c8fcc`; polygon `0x6aebc6...0c8fcc`; polygon `0x7081a3...887d7e`; sonic `0x6aebc6...0c8fcc`; mantle `0x6aebc6...0c8fcc`; base `0x6aebc6...0c8fcc`; arbitrum [`0x1f79f8...2df448`](./contracts/arbitrum-42161/0x1f79f8a65e02f8a137ce7f79c038cc44332df448/); arbitrum `0x39d361...fb0877`; arbitrum `0x6aebc6...0c8fcc`; arbitrum `0x8693f9...e39ae0`; arbitrum `0x86b174...6abf0a`; arbitrum `0xeff23b...bf3062`; avalanche `0x3b3e4b...c88524`; avalanche `0x6aebc6...0c8fcc`; linea `0x6aebc6...0c8fcc`; berachain `0x6aebc6...0c8fcc` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (115)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7b5fdb...654281` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x35e3fe...e77237` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe33a53...995646` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xec0417...f13bb8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1416e1...0703d9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x286ab1...f4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6626c4...5e8d8a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x44a6d5...4a544d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b5fdb...654281` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01c8f6...624ca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x04736d...c707cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0aed81...5c6ba2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0cee55...1df408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x114ff6...2321af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e14ca...0cd7c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x31ae60...e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3509ff...117b00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3be04d...9db10a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3cd52e...215c26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41c790...71c16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4b9736...522ef9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f57cb...ae54d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5994fa...c712a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c2db3...d86cb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66c883...e8c10c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70ea48...226343` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b5fdb...654281` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d8f20...52add3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x84a0bc...578ee1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a532c...6ae4fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8b4aca...548a87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f46a7...bff18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa254ee...669e29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaacf22...cd9198` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba3d62...7d215c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbae04c...e5f499` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbb1566...9be193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc21a8d...d260ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc44843...080c04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd12087...a7d815` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda442c...091bfe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe1eb61...fc733c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1eeb7...63b875` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd7ed9...4d7ccb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfe019f...17a5c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x06d435...d467c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22d2ad...bde99c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3cda15...2428ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x43054b...1ac44b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4780be...fd02f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4a4f63...f98a9e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ad64a...5ecdbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x563e71...926c3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6051a3...8895a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x76e177...df5d05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x778098...437b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x77beaa...9d1b9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7bcb0c...9855c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7ee34c...375e77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x84b76e...2b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8840e2...3cbf04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x911d9a...3c345d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x944dc1...bdceb5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x95414f...1f4417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa2dd99...e42efd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaaa945...bdf74b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae7b24...f80894` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb59755...1de669` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb9ff58...bdf8d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb6b08...4f2695` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf779b...64b7b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc4abb9...393cca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7160d...cabf8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc92352...6e024d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd321ac...890da4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xde87b5...ea92e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe6261a...4e0f8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf23965...5d506d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf7b28f...69bbcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfb8401...7c4245` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcfe824...cedb10` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x5a988a...3d4f99` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xcf8b70...5e457d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xcfe824...cedb10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes) | Sherlock | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [here](https://audits.sherlock.xyz/contests/277) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://skynet.certik.com/projects/woofiswap) | CertiK | Audit | 2025-05 | aging | Direct | contract_name | 10 | high |
| [here](https://hackmd.io/@verilog/woofi-swap) | Verilog | Audit | 2021-10 | stale | Direct | contract_name | 5 | high |
| [WOOFI Stake - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFI%20Stake%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-08 | aging | Direct | contract_name | 96 | high |
| [WOOFi Swap - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFi%20Swap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | 20 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0510e5...fcc53b`](./contracts/arbitrum-42161/0x0510e56edb651fa39c3330d2f5bf8fbecdfcc53b/) | WOOFiVaultV2 | core_logic | $370,601.64 | Verified native implementation with $370,601.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00daaa...de8ba1`](./contracts/arbitrum-42161/0x00daaab002049a6ac2d7d58c2ee5b5f363de8ba1/) | VoidStrategy | core_logic | $355,834.72 | Verified native implementation with $355,834.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08357e...93f3fb`](./contracts/polygon-137/0x08357edec2a033257ceb6029622e0921e093f3fb/) | WooSuperChargerVault | core_logic | $233,346.36 | Verified native implementation with $233,346.36 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x049d48...396e92`](./contracts/polygon-137/0x049d48e1503e8cb5c90305a07456d5986a396e92/) | WooVaultManager | core_logic | $131.84 | Verified native implementation with $131.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0208d7...bf0563`](./contracts/avalanche-43114/0x0208d735576b3d974024237393f4617285bf0563/) | VaultAvax | core_logic | $14.55 | Verified native implementation with $14.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1f79f8...2df448`](./contracts/avalanche-43114/0x1f79f8a65e02f8a137ce7f79c038cc44332df448/) | StrategyTraderJoeDualLP | core_logic | $4.55 | Verified native implementation with $4.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0176a4...0d6586`](./contracts/avalanche-43114/0x0176a42a277e6e466cf62eb37e62dda5400d6586/) | StrategyTraderJoeLP | core_logic | $0.03 | Verified native implementation with $0.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1109e0...3cf549`](./contracts/arbitrum-42161/0x1109e03516eb25eab2150d0b274b8d4f5f3cf549/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ce18a...f8bcdb`](./contracts/polygon-137/0x1ce18ae6886940be8c04ed954c747c4082f8bcdb/) | DataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x636230...82f4f1`](./contracts/avalanche-43114/0x636230c0477463f5ad33134603e693879282f4f1/) | Gist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x020630...2b6ad1`](./contracts/avalanche-43114/0x020630613e296c3e9b06186f630d1bf97a2b6ad1/) | IntegrationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x615571...2ff09d`](./contracts/avalanche-43114/0x6155719d35eae023d87626c391c425be6c2ff09d/) | MasterChefWoo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcf084...711071`](./contracts/ethereum-1/0xdcf08427aad1c0e7d31dfd5846aaacae5f711071/) | MigrationBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15b11a...65d606`](./contracts/arbitrum-42161/0x15b11a8c2b9d7b439fdbebdcfb633b8f6665d606/) | MysteryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06b00f...539655`](./contracts/arbitrum-42161/0x06b00fceebc13caa49de8037609e7e6a97539655/) | NftBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d8664...4f830b`](./contracts/arbitrum-42161/0x1d8664d884ebfb03f3cff978fdd205ce244f830b/) | NftBoosterV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50f347...d0ecc1`](./contracts/arbitrum-42161/0x50f347d0c33e5b12cb76daa64ebc0f09d0d0ecc1/) | NonceCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ab13d...2bdc2b`](./contracts/arbitrum-42161/0x0ab13d6d5f42f595f86f193ab90112894a2bdc2b/) | NonceCounterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca8edc...c00b72`](./contracts/arbitrum-42161/0xca8edccf471a213cfd70d73117ac7f49bfc00b72/) | QuestTokenRewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c2998...a957df`](./contracts/arbitrum-42161/0x1c29986ff01c65665393e55c73ade2aa6da957df/) | RewardBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d42b2...8aa6a5`](./contracts/arbitrum-42161/0x0d42b27153c185b2b60b8ab6d77af9c4668aa6a5/) | RewardCampaignManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06c7e4...4e336b`](./contracts/arbitrum-42161/0x06c7e4cdd71a9fd637b92ca23f57ab6f924e336b/) | RewardNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28f88a...de014c`](./contracts/arbitrum-42161/0x28f88a809ccc085956ab9f978067698d25de014c/) | SelectWinners | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10dcf5...d64c8f`](./contracts/arbitrum-42161/0x10dcf57cca73246a81bf5e0a4b0496d91ed64c8f/) | SimpleRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ea3b7...b1262f`](./contracts/arbitrum-42161/0x4ea3b7cc1efcdb92a9fe67d2e45d5c46afb1262f/) | SimpleRewarderForWOO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4f4abc...d27b95`](./contracts/avalanche-43114/0x4f4abc969718982ed86c62b214607b31cfd27b95/) | StrategyBankerJoe | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x044c08...3534e8`](./contracts/avalanche-43114/0x044c08639bd59beb4f6ec52c0da6cd47283534e8/) | StrategyBankerJoeNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x47037d...e19e71`](./contracts/avalanche-43114/0x47037d1d5b44ccf5b2c7ec31b3191bd040e19e71/) | StrategyBenqi | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x438241...9c098f`](./contracts/arbitrum-42161/0x4382417d3e9ca0af608f120203464c71739c098f/) | Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x049989...c882ee`](./contracts/polygon-137/0x0499892866c986027149f28721ac8fd630c882ee/) | VaultAggregator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f2868...422778`](./contracts/arbitrum-42161/0x1f2868d1dc715b8503973367b82dd4bfed422778/) | VoidRewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fe5e5...b0f7ec`](./contracts/arbitrum-42161/0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec/) | WooAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15a035...1d0e74`](./contracts/arbitrum-42161/0x15a0358cf225f8ec884e353a8acc081d3b1d0e74/) | WooBuybackSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd0db92...751b51`](./contracts/arbitrum-42161/0xd0db92069e7faeb5c8e55c424443451391751b51/) | WooCrossChainExternalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00c47d...264165`](./contracts/avalanche-43114/0x00c47dd23ffc1de5ef52a840018fc600de264165/) | WooCrossChainOFTDemo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0972a0...35aa73`](./contracts/arbitrum-42161/0x0972a0fa37984e7ff2aefa53a0bb10dce535aa73/) | WooCrossChainRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48fd9b...ec8c9e`](./contracts/arbitrum-42161/0x48fd9b3443b0948c320da16bd9b1217f51ec8c9e/) | WooCrossChainRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x366e2f...c5aa3f`](./contracts/arbitrum-42161/0x366e2fda969649980dbc0d10c7fc959f0ac5aa3f/) | WooCrossChainRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070d5c...5bdb09`](./contracts/arbitrum-42161/0x070d5c603b5c7bb451916dca718d3e800f5bdb09/) | WooCrossChainRouterV5 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4926eb...ee7e79`](./contracts/arbitrum-42161/0x4926eb102d0e5ff65aac336ba028fb77c1ee7e79/) | WooCrossRouterForWidget | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ba6c3...0ecb9e`](./contracts/arbitrum-42161/0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e/) | WooFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21becb...34b032`](./contracts/arbitrum-42161/0x21becba18fc08376fd33f1b9c7deb5709d34b032/) | WOOFiDexDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x81d34d...024044`](./contracts/arbitrum-42161/0x81d34d64321fce8b405a2f0f21c4b09d47024044/) | WOOFiDexTestVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x11b29a...da836a`](./contracts/polygon-137/0x11b29ae3037f4526e4aa56952318e0d01ada836a/) | WooIntegrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26f33e...1c14f5`](./contracts/arbitrum-42161/0x26f33ea1e476ad8a016834107f9889b6c31c14f5/) | WooPPV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x31ae60...e2a48e`](./contracts/polygon-137/0x31ae608cbadd1214d6a3d5dcf49e45fb18e2a48e/) | WooracleV2_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x73504e...cb3620`](./contracts/arbitrum-42161/0x73504eacb100c7576146618dc306c97454cb3620/) | WooracleV2_1_ZipInherit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa43305...a75127`](./contracts/arbitrum-42161/0xa43305ce0164d87d7b2368f91a1dcc4ebda75127/) | WooracleV2Zip | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb0d84f...5432ad`](./contracts/polygon-137/0xb0d84fff607dca65a047b2493eba3e55855432ad/) | WooracleV3ZipInherit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15ba47...1629c2`](./contracts/arbitrum-42161/0x15ba47e540e1b197e30d16a93b0c568b251629c2/) | WooRebateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ce18a...f8bcdb`](./contracts/arbitrum-42161/0x1ce18ae6886940be8c04ed954c747c4082f8bcdb/) | WooRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x076aff...ab9bdb`](./contracts/polygon-137/0x076aff456b04a84adb3eb207cb1e28ea3bab9bdb/) | WooSimpleRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6875eb...00e98f`](./contracts/polygon-137/0x6875eb0496b6baa0527c5915d78b9bcdc800e98f/) | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | WootradeNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2500ad...955777`](./contracts/arbitrum-42161/0x2500ad59b46ff4b96f8e1eac3fe1f78eaf955777/) | WooUsdOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3382c5...f0ea14`](./contracts/arbitrum-42161/0x3382c567ad7026731545bdd765166607faf0ea14/) | WooUsdOFTCrossRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ddd22...9c89ed`](./contracts/arbitrum-42161/0x1ddd225ef26714bb8055ddceaee2589ba09c89ed/) | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 117 |
| upstream | 1 |
| standard_library | 6 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=131

Zero-match audit list:

- [3828] here
- [3830] here

Fork inheritance lineage and inherited audits are included when available.
