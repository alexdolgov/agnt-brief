# Agentic Audit Brief: THENA

## Project Overview

- Project: THENA (`thena`)
- Website: [https://www.thena.fi](https://www.thena.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.426Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc, opbnb
- Contract surface: 128 unique implementations (242 raw deployments)
- DeFi Llama TVL: $3,095,581.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 123 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 13 common project-authored base contract(s) (multicall, tradingcompetitionmanagerevents, thenianfeeconverterrouter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 460; live-surface contracts included: 171 (145 live, 26 unknown).
- Excluded by liveness: 289 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/104 (2.9%)
- Deployed-live implementations: 107 of 128 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/107
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 128
- Raw deployments: 242
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 1.0% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 1.9% | 2023-03 |
| OpenZeppelin | Tier 1 | 1 | 0.9% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardsDistributor | operational_periphery | bsc | n/a | [`0xa6e0e7...18727d`](./contracts/bsc-56/0xa6e0e731cb1e99aede0f9c9128d04f948e18727d/) | ✅ Audited |
| VoterV3 | unknown | bsc | n/a | [`0x3a1d09...2c4fcb`](./contracts/bsc-56/0x3a1d0952809f4948d15ebce8d345962a282c4fcb/) | ✅ Audited |
| VotingEscrow | operational_periphery | bsc | n/a | [`0xfbbf37...1c070d`](./contracts/bsc-56/0xfbbf371c9b0b994eebfcc977cef603f7f31c070d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | unknown | bsc | n/a | 2 deployments: bsc [`0x8bb54e...da1bb2`](./contracts/bsc-56/0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2/); bsc `0xaa42d6...4b7e0e` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | bsc | n/a | [`0x6f866d...7c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/) | ⚠️ Unaudited |
| AlgebraFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x212de9...614c9b`](./contracts/bsc-56/0x212de9ae4b1beca60be0e8fa0210a26b81614c9b/); bsc `0x30055f...fb4a98` | ⚠️ Unaudited |
| BribeFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x2d61bf...5b57d2`](./contracts/bsc-56/0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2/); bsc `0xe04723...3a4f6a` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x242e4e...18a984`](./contracts/bsc-56/0x242e4ee00aecc6b2c728a8e065c746ad8218a984/); bsc `0xb9db4b...cf1c1e` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x2b01fc...3d6fb9`](./contracts/bsc-56/0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9/); bsc `0x355895...a28ffe` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4e9a8e...fdc095`](./contracts/bsc-56/0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095/); bsc `0xcb78f8...7f2820` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4ffcf8...3c7770`](./contracts/bsc-56/0x4ffcf83feae8a44f61575722aefc2706e73c7770/); bsc `0xe63b89...e314b5` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x6a2cab...c50e86`](./contracts/bsc-56/0x6a2caba827f0851612595ab9e52a2e16c7c50e86/); bsc `0xc29d96...591c2f` | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x997687...192ecb`](./contracts/bsc-56/0x99768701cce63da41311f959f120425ed2192ecb/); bsc `0xd50cea...c91375` | ⚠️ Unaudited |
| BribesDistribution | unknown | bsc | n/a | 3 deployments: bsc [`0x198dab...138a14`](./contracts/bsc-56/0x198dab4b4e03f9f3f44e605d567b15bb72138a14/); bsc `0x448ded...73b560`; bsc `0x89a10b...545ac9` | ⚠️ Unaudited |
| Claimer | operational_periphery | bsc | n/a | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | ⚠️ Unaudited |
| DibsRewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x444efa...92e194`](./contracts/bsc-56/0x444efae67c5763d48105440a457b6f89e792e194/); bsc `0x6e2989...d7f03b` | ⚠️ Unaudited |
| DistributeFees | unknown | bsc | n/a | 3 deployments: bsc [`0x8ca434...7ec6fa`](./contracts/bsc-56/0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa/); bsc `0x974a96...a8b340`; bsc `0x9f0d34...e6f65d` | ⚠️ Unaudited |
| DistributeFees | unknown | bsc | n/a | 2 deployments: bsc [`0x8db743...0b4608`](./contracts/bsc-56/0x8db743c5ad37eccece39be36ed4657c1670b4608/); bsc `0xfd71f0...5d7cf6` | ⚠️ Unaudited |
| EpochController | unknown | bsc | n/a | 2 deployments: bsc [`0x15b0f1...d39275`](./contracts/bsc-56/0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275/); bsc `0xbc197e...103911` | ⚠️ Unaudited |
| EpochNFTSplitManager | unknown | bsc | n/a | 2 deployments: bsc [`0x999b56...de3fe3`](./contracts/bsc-56/0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3/); bsc `0xccfcba...420ad8` | ⚠️ Unaudited |
| FarmingCenter | unknown | bsc | n/a | [`0x0cd53e...1d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | bsc | n/a | [`0xc9e5c9...c6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | ⚠️ Unaudited |
| GaugeFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x620eaa...cb180b`](./contracts/bsc-56/0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b/); bsc `0xfc1bc6...8c99a4` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | bsc | n/a | 4 deployments: bsc [`0x2a9551...16f787`](./contracts/bsc-56/0x2a9551cdae59a6fd8396f11fb987fc0ce116f787/); bsc `0x415d29...ce34c7`; bsc `0xa43354...bc18a2`; bsc `0xcfe13d...9fad78` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | bsc | n/a | 3 deployments: bsc [`0x2c788f...5bf130`](./contracts/bsc-56/0x2c788fe40a417612cb654b14a944cd549b5bf130/); bsc `0xbe670d...9dba2a`; bsc `0xc37ca8...b9f55b` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | bsc | n/a | 2 deployments: bsc [`0x0248fd...a36c73`](./contracts/bsc-56/0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73/); bsc `0xb065e4...3cabeb` | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x42e1bf...26ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/); bsc `0x6f8024...1481b5`; bsc `0x9d2c09...5e3b4b`; bsc `0xb4dee5...61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/); bsc `0xa95186...a9b8d6`; bsc `0xba4456...33e871`; bsc `0xcf2071...64541a`; bsc `0xe6519b...bc3b0c` | ⚠️ Unaudited |
| GlobalFactory | registry | bsc | n/a | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x7d70ee...caa184`](./contracts/bsc-56/0x7d70ee3774325c51e021af1f7987c214d2caa184/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | n/a | [`0x2814a4...72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | n/a | [`0x80ad2f...ef0701`](./contracts/bsc-56/0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x11746f...a92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/); bsc `0xe58e64...5adfbb` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x406ec2...a91ab9`](./contracts/bsc-56/0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9/); bsc `0x7959a7...5da3ab` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | n/a | 3 deployments: bsc [`0x5115c1...b4261d`](./contracts/bsc-56/0x5115c12b2d8dbed8be5239dfabd046aa85b4261d/); bsc `0x6c1a35...664dfe`; bsc `0x86069f...bee996` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x5e3d6e...e9ea5b`](./contracts/bsc-56/0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b/); bsc `0xb7ed8f...dea1d8` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | bsc | n/a | 4 deployments: bsc [`0x02308f...40e1f7`](./contracts/bsc-56/0x02308f4455cd6d2109092c7903d1ed843440e1f7/); bsc `0x0c6e17...119ac4`; bsc `0x36792f...adf507`; bsc `0x880a58...7d6628` | ⚠️ Unaudited |
| NFTSplitAutomation | unknown | bsc | n/a | 2 deployments: bsc [`0x2e974a...04524e`](./contracts/bsc-56/0x2e974a81f68eafa2a197a3a6eb6e75949504524e/); bsc `0xad8502...88604c` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x643b68...21d02e`](./contracts/bsc-56/0x643b68bf3f855b8475c0a700b6d1020bfc21d02e/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0xa51adb...6b77ab`](./contracts/bsc-56/0xa51adb08cbe6ae398046a23bec013979816b77ab/) | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x0c0448...73045b`](./contracts/bsc-56/0x0c04481fe0ebbb3655d51827ea0364272d73045b/); bsc `0xd9f2a8...526380` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x1a9764...82ec84`](./contracts/bsc-56/0x1a976411cb618a0ca3c89a902a9528cd4482ec84/); bsc `0xe7b379...e82a5b` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x1c0bc6...55d8a5`](./contracts/bsc-56/0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5/); bsc `0x839042...a61d84` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x2dcc9c...2a14ab`](./contracts/bsc-56/0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab/); bsc `0x4c941d...46de12` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x43e55f...49137f`](./contracts/bsc-56/0x43e55fccd1462e9edfeb4c6dd2b358323049137f/); bsc `0x514609...3a1aba` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x53a67b...b72e15`](./contracts/bsc-56/0x53a67b6b57907aa1926e95b004578a9bacb72e15/); bsc `0xc2b480...302950` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x6a3040...13e08e`](./contracts/bsc-56/0x6a304087d888e48ed94de6c1efe05aec6913e08e/); bsc `0xd96d2f...7ab147` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x711f29...388daf`](./contracts/bsc-56/0x711f29161cc49b1656f162600ba121bcc6388daf/); bsc `0xf22f8a...9ddf34` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x741947...b288b3`](./contracts/bsc-56/0x7419477c03b0feb9286f216b9d19e42f86b288b3/); bsc `0xd73ad1...03fdc5` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 3 deployments: bsc [`0x87627d...7be5e4`](./contracts/bsc-56/0x87627d13800eed68026fdc5d0f151b518c7be5e4/); bsc `0xf10355...89f2fc`; bsc `0xf22983...0309f1` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xe89080...78a32e`](./contracts/bsc-56/0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e/); bsc `0xebff38...d91862` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x879f8f...760dc8`](./contracts/bsc-56/0x879f8fd307ba4442e22e77d47683f35313760dc8/); bsc `0xafd89d...2b3970` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x96f8b6...602df4`](./contracts/bsc-56/0x96f8b6972775c9435d46166acdb3b806f8602df4/); bsc `0xedfa2a...15bf08` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 4 deployments: bsc [`0x5d120a...8d990e`](./contracts/bsc-56/0x5d120a288f1c9b9d382e7deb64573f15e18d990e/); bsc `0x8b9ca0...533e06`; bsc `0x90c0df...492efb`; bsc `0xc06cb2...e04575` | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | [`0x71af3b...c3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 4 deployments: bsc [`0x07678a...d808ee`](./contracts/bsc-56/0x07678a2309dbed40576b2dcc723ee5f1b5d808ee/); bsc `0x2083e6...4825b9`; bsc `0xa63647...c664e9`; bsc `0xe4253e...bddf31` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x0b6cff...d96c46`](./contracts/bsc-56/0x0b6cff48836eea83795ab8b9a04b1b4654d96c46/); bsc `0xc548c1...4f3e67` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x15b04e...d6bf0d`](./contracts/bsc-56/0x15b04e78143499f916a94458c03e090a5fd6bf0d/); bsc `0x8953d7...3d1245` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 3 deployments: bsc [`0x46d9ea...5d6c34`](./contracts/bsc-56/0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34/); bsc `0xdb65c1...de413c`; bsc `0xfbf342...e5bc77` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x54a3e5...bb4787`](./contracts/bsc-56/0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787/); bsc `0xc472dd...7dfcf2` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x6e75e0...931c16`](./contracts/bsc-56/0x6e75e035a1cea646b994fab0e119e18ae8931c16/); bsc `0xf94e04...832dc1` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x976c5c...d54fc5`](./contracts/bsc-56/0x976c5c046451aa1b4fdaada1aa5493a789d54fc5/); bsc `0xaa859c...ce7a8d` | ⚠️ Unaudited |
| RewardEarnedHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x1ec88f...2c1692`](./contracts/bsc-56/0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692/); bsc `0x9870d4...397319` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x09c318...e98019`](./contracts/bsc-56/0x09c318865c54e2250b5e72cc486f1fdcfce98019/); bsc `0x3754ae...e456a5` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x0da0b5...b9aba9`](./contracts/bsc-56/0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9/); bsc `0x7f0cd8...b1c3bc` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x66117d...76a9cb`](./contracts/bsc-56/0x66117d9c7a019760b02fb45abc65158c4e76a9cb/); bsc `0xb789f1...442fd1` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 3 deployments: bsc [`0x67da2f...a95b56`](./contracts/bsc-56/0x67da2f552e72231635b66568c6a801125aa95b56/); bsc `0xa2bc09...9624de`; bsc `0xe70381...b32365` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0xb528c3...484649`](./contracts/bsc-56/0xb528c3a6f1981d23856521104a9e337c7f484649/); bsc `0xed7561...90c3c4` | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | 2 deployments: bsc [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/); bsc `0x9b2378...187d0d` | ⚠️ Unaudited |
| RouterV2 | adapter | bsc | n/a | [`0xd4ae6e...78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | ⚠️ Unaudited |
| Royalties | unknown | bsc | n/a | [`0xbb2caf...913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0x327dd3...a4efa0`](./contracts/bsc-56/0x327dd3208f0bcf590a66110acb6e5e6941a4efa0/) | ⚠️ Unaudited |
| SwapRouter | adapter | opbnb | n/a | [`0x935693...4f0122`](./contracts/opbnb-204/0x9356934eb3fbae6274eae6efc905b292f04f0122/) | ⚠️ Unaudited |
| Thena | unknown | bsc | n/a | [`0xf4c8e3...863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | bsc | n/a | [`0x6c1c0a...f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ⚠️ Unaudited |
| TradingCompetitionManager | governance | bsc | n/a | [`0x8d03fe...f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0c54d3...76e8be`](./contracts/bsc-56/0x0c54d33eb8adcd46a87214f920a77914a676e8be/); bsc `0xf4f02c...8a38ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 9 deployments: bsc [`0x0e0c68...cd769f`](./contracts/bsc-56/0x0e0c68f11bf2c84a5a0e800823a969355dcd769f/); bsc `0x26b813...8e3b26`; bsc `0x357379...51ffc0`; bsc `0x4025e0...6f4508`; bsc `0x961c45...e893c7`; bsc `0x97f146...d2ceb0`; bsc `0xc64f46...e831d6`; bsc `0xeacf96...184721`; opbnb `0x2ac561...fc9011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x23ab45...709a92`](./contracts/bsc-56/0x23ab452eacb33ea84584fd5e0a916f4f93709a92/); bsc `0xc1b508...b52b63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x33b1c4...936c60`](./contracts/bsc-56/0x33b1c4fe9bef9c38ba92ab4cae2f9beb16936c60/); bsc `0xbd4952...a72545` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x478449...425008`](./contracts/bsc-56/0x478449283ccedbd7dda8f86ef5686048cf425008/); bsc `0x4f5b8a...d88adc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xa0a04d...ccac50`](./contracts/bsc-56/0xa0a04d75b00a8d5e06538e34ae692ce7baccac50/); bsc `0xdd7d7e...d97f47` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | bsc | n/a | 4 deployments: bsc [`0x15d7c2...4b8503`](./contracts/bsc-56/0x15d7c232e6781f724c29c67e23c15ceeec4b8503/); bsc `0x77f6ef...6ed9de`; bsc `0xb2b37c...03e516`; bsc `0xd6f6e2...3e765f` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x0a554b...20e58a`](./contracts/bsc-56/0x0a554b6b99792cc4b3b60f24e81d596a0020e58a/); bsc `0x73767e...1d65a5` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x190b16...20d36d`](./contracts/bsc-56/0x190b166edf30baa8c1cdbf6653107cec1020d36d/); bsc `0x2c417f...96ca07` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 3 deployments: bsc [`0x212ede...493507`](./contracts/bsc-56/0x212ede9937a9800b7c8543f0527a0826cb493507/); bsc `0x64039b...4a4549`; bsc `0xec83ed...d846e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x2a0b2f...f13660`](./contracts/bsc-56/0x2a0b2ff90405971f4878f37ce1cf7521dff13660/); bsc `0x8be4ec...87eeb5` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x47a02a...c772d9`](./contracts/bsc-56/0x47a02aa02c7d2ee818778039ba4f20dfdac772d9/); bsc `0x833529...c341e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x630f7a...41c07e`](./contracts/bsc-56/0x630f7a926bca11cb445f0bed34a73d66ef41c07e/); bsc `0xef71d8...bf6f09` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x66b6ea...455c79`](./contracts/bsc-56/0x66b6ea901c31b665ad75b7b2193273effd455c79/); bsc `0xf2d626...f80080` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x6942f0...f8381d`](./contracts/bsc-56/0x6942f06b7916e908a5a88aaae3a44e9f27f8381d/); bsc `0xe09e1a...1283b0` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x949d5b...df813b`](./contracts/bsc-56/0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b/); bsc `0xffb2ad...5c7bc2` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x9c50be...48e925`](./contracts/bsc-56/0x9c50be8e54560844dd6b7921e1e1bacc8448e925/); bsc `0xc0e2f5...97b9d5` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xad439c...b4c6e1`](./contracts/bsc-56/0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1/); bsc `0xfae924...3c926e` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xc0f8c0...a1ebb6`](./contracts/bsc-56/0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6/); bsc `0xcfcacc...b6f0bc` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xc19079...cf4cda`](./contracts/bsc-56/0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda/); bsc `0xf13b61...99c84d` | ⚠️ Unaudited |
| Voter | unknown | bsc | n/a | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | ⚠️ Unaudited |
| VoterUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x4e02ac...369b47`](./contracts/bsc-56/0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47/); bsc `0xc3136b...2cbe96` | ⚠️ Unaudited |
| VoterV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x43659f...3a706b`](./contracts/bsc-56/0x43659f29356b7d84f6464957db06f1fd883a706b/); bsc `0x50b2fb...24ad79` | ⚠️ Unaudited |
| VoterV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x596845...3f25b0`](./contracts/bsc-56/0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0/); bsc `0x9dcbc4...996456` | ⚠️ Unaudited |
| VoterV2_1 | unknown | bsc | n/a | 2 deployments: bsc [`0x62ee96...2d7b26`](./contracts/bsc-56/0x62ee96e6365ab515ec647c065c2707d1122d7b26/); bsc `0xfdacbe...dfff34` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x410c01...b2e0ee`](./contracts/bsc-56/0x410c014ec262f2de5de285874123370419b2e0ee/); bsc `0xf1194d...276d92` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x5647ab...596ba6`](./contracts/bsc-56/0x5647abcec6df18c40a4f22b483e8c865be596ba6/); bsc `0xa47741...c17ff0` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x69cca7...37db41`](./contracts/bsc-56/0x69cca77586c02b932f6344d12ab77f244c37db41/); bsc `0xbd87e2...64f30c` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0xd2c9e0...adb83f`](./contracts/bsc-56/0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f/); bsc `0xf96cf5...e28f33` | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | bsc | n/a | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | ⚠️ Unaudited |
| WrappedExternalBribeFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x4bf5a4...6235bc`](./contracts/bsc-56/0x4bf5a42202927b0263d2279e509b3da05a6235bc/); bsc `0xef2975...fa42d3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0cb322...6ab554` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12f0a7...961ab9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f94f8...85e4a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4477e8...2aab2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c7cac...e19fe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6524a5...bad700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ba6a5...6e670f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ed7ba...89db40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x883899...3b8401` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e50ac...479830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90f4e5...24a354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e92b5...5a91f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa283f4...ac6e2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb126ad...3fea19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc70285...613b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9f5d6...fdfa4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda6cef...818c49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6a1ee...88859d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf02a0b...f2d71a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7fb6b6...189036` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc64f46...e831d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/retro-thena-audit](https://www.openzeppelin.com/news/retro-thena-audit) | OpenZeppelin | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [hacken.io/audits/thena](https://hacken.io/audits/thena) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Thena-v1.0.pdf](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Thena-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8bb54e...da1bb2`](./contracts/bsc-56/0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f866d...7c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x212de9...614c9b`](./contracts/bsc-56/0x212de9ae4b1beca60be0e8fa0210a26b81614c9b/) | AlgebraFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d61bf...5b57d2`](./contracts/bsc-56/0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2/) | BribeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x242e4e...18a984`](./contracts/bsc-56/0x242e4ee00aecc6b2c728a8e065c746ad8218a984/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b01fc...3d6fb9`](./contracts/bsc-56/0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e9a8e...fdc095`](./contracts/bsc-56/0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ffcf8...3c7770`](./contracts/bsc-56/0x4ffcf83feae8a44f61575722aefc2706e73c7770/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a2cab...c50e86`](./contracts/bsc-56/0x6a2caba827f0851612595ab9e52a2e16c7c50e86/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x997687...192ecb`](./contracts/bsc-56/0x99768701cce63da41311f959f120425ed2192ecb/) | BribeFactoryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x198dab...138a14`](./contracts/bsc-56/0x198dab4b4e03f9f3f44e605d567b15bb72138a14/) | BribesDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x444efa...92e194`](./contracts/bsc-56/0x444efae67c5763d48105440a457b6f89e792e194/) | DibsRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ca434...7ec6fa`](./contracts/bsc-56/0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8db743...0b4608`](./contracts/bsc-56/0x8db743c5ad37eccece39be36ed4657c1670b4608/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15b0f1...d39275`](./contracts/bsc-56/0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x999b56...de3fe3`](./contracts/bsc-56/0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3/) | EpochNFTSplitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cd53e...1d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9e5c9...c6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x620eaa...cb180b`](./contracts/bsc-56/0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b/) | GaugeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a9551...16f787`](./contracts/bsc-56/0x2a9551cdae59a6fd8396f11fb987fc0ce116f787/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c788f...5bf130`](./contracts/bsc-56/0x2c788fe40a417612cb654b14a944cd549b5bf130/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0248fd...a36c73`](./contracts/bsc-56/0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73/) | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42e1bf...26ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/) | GaugeIchiFeeDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/) | GaugeSimple | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | GlobalFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2814a4...72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x80ad2f...ef0701`](./contracts/bsc-56/0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11746f...a92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x406ec2...a91ab9`](./contracts/bsc-56/0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5115c1...b4261d`](./contracts/bsc-56/0x5115c12b2d8dbed8be5239dfabd046aa85b4261d/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e3d6e...e9ea5b`](./contracts/bsc-56/0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02308f...40e1f7`](./contracts/bsc-56/0x02308f4455cd6d2109092c7903d1ed843440e1f7/) | NFTSalesSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e974a...04524e`](./contracts/bsc-56/0x2e974a81f68eafa2a197a3a6eb6e75949504524e/) | NFTSplitAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x643b68...21d02e`](./contracts/bsc-56/0x643b68bf3f855b8475c0a700b6d1020bfc21d02e/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa51adb...6b77ab`](./contracts/bsc-56/0xa51adb08cbe6ae398046a23bec013979816b77ab/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c0448...73045b`](./contracts/bsc-56/0x0c04481fe0ebbb3655d51827ea0364272d73045b/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a9764...82ec84`](./contracts/bsc-56/0x1a976411cb618a0ca3c89a902a9528cd4482ec84/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c0bc6...55d8a5`](./contracts/bsc-56/0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2dcc9c...2a14ab`](./contracts/bsc-56/0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43e55f...49137f`](./contracts/bsc-56/0x43e55fccd1462e9edfeb4c6dd2b358323049137f/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53a67b...b72e15`](./contracts/bsc-56/0x53a67b6b57907aa1926e95b004578a9bacb72e15/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a3040...13e08e`](./contracts/bsc-56/0x6a304087d888e48ed94de6c1efe05aec6913e08e/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x711f29...388daf`](./contracts/bsc-56/0x711f29161cc49b1656f162600ba121bcc6388daf/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x741947...b288b3`](./contracts/bsc-56/0x7419477c03b0feb9286f216b9d19e42f86b288b3/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x87627d...7be5e4`](./contracts/bsc-56/0x87627d13800eed68026fdc5d0f151b518c7be5e4/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe89080...78a32e`](./contracts/bsc-56/0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x879f8f...760dc8`](./contracts/bsc-56/0x879f8fd307ba4442e22e77d47683f35313760dc8/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x96f8b6...602df4`](./contracts/bsc-56/0x96f8b6972775c9435d46166acdb3b806f8602df4/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71af3b...c3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07678a...d808ee`](./contracts/bsc-56/0x07678a2309dbed40576b2dcc723ee5f1b5d808ee/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b6cff...d96c46`](./contracts/bsc-56/0x0b6cff48836eea83795ab8b9a04b1b4654d96c46/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15b04e...d6bf0d`](./contracts/bsc-56/0x15b04e78143499f916a94458c03e090a5fd6bf0d/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46d9ea...5d6c34`](./contracts/bsc-56/0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54a3e5...bb4787`](./contracts/bsc-56/0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e75e0...931c16`](./contracts/bsc-56/0x6e75e035a1cea646b994fab0e119e18ae8931c16/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x976c5c...d54fc5`](./contracts/bsc-56/0x976c5c046451aa1b4fdaada1aa5493a789d54fc5/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ec88f...2c1692`](./contracts/bsc-56/0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692/) | RewardEarnedHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09c318...e98019`](./contracts/bsc-56/0x09c318865c54e2250b5e72cc486f1fdcfce98019/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0da0b5...b9aba9`](./contracts/bsc-56/0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66117d...76a9cb`](./contracts/bsc-56/0x66117d9c7a019760b02fb45abc65158c4e76a9cb/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67da2f...a95b56`](./contracts/bsc-56/0x67da2f552e72231635b66568c6a801125aa95b56/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb528c3...484649`](./contracts/bsc-56/0xb528c3a6f1981d23856521104a9e337c7f484649/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4ae6e...78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb2caf...913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | Royalties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x327dd3...a4efa0`](./contracts/bsc-56/0x327dd3208f0bcf590a66110acb6e5e6941a4efa0/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x935693...4f0122`](./contracts/opbnb-204/0x9356934eb3fbae6274eae6efc905b292f04f0122/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4c8e3...863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | Thena | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c1c0a...f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ThenianFeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d03fe...f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | TradingCompetitionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15d7c2...4b8503`](./contracts/bsc-56/0x15d7c232e6781f724c29c67e23c15ceeec4b8503/) | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a554b...20e58a`](./contracts/bsc-56/0x0a554b6b99792cc4b3b60f24e81d596a0020e58a/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x190b16...20d36d`](./contracts/bsc-56/0x190b166edf30baa8c1cdbf6653107cec1020d36d/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x212ede...493507`](./contracts/bsc-56/0x212ede9937a9800b7c8543f0527a0826cb493507/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a0b2f...f13660`](./contracts/bsc-56/0x2a0b2ff90405971f4878f37ce1cf7521dff13660/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47a02a...c772d9`](./contracts/bsc-56/0x47a02aa02c7d2ee818778039ba4f20dfdac772d9/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x630f7a...41c07e`](./contracts/bsc-56/0x630f7a926bca11cb445f0bed34a73d66ef41c07e/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66b6ea...455c79`](./contracts/bsc-56/0x66b6ea901c31b665ad75b7b2193273effd455c79/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6942f0...f8381d`](./contracts/bsc-56/0x6942f06b7916e908a5a88aaae3a44e9f27f8381d/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x949d5b...df813b`](./contracts/bsc-56/0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c50be...48e925`](./contracts/bsc-56/0x9c50be8e54560844dd6b7921e1e1bacc8448e925/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad439c...b4c6e1`](./contracts/bsc-56/0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0f8c0...a1ebb6`](./contracts/bsc-56/0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc19079...cf4cda`](./contracts/bsc-56/0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e02ac...369b47`](./contracts/bsc-56/0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47/) | VoterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43659f...3a706b`](./contracts/bsc-56/0x43659f29356b7d84f6464957db06f1fd883a706b/) | VoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596845...3f25b0`](./contracts/bsc-56/0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0/) | VoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62ee96...2d7b26`](./contracts/bsc-56/0x62ee96e6365ab515ec647c065c2707d1122d7b26/) | VoterV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x410c01...b2e0ee`](./contracts/bsc-56/0x410c014ec262f2de5de285874123370419b2e0ee/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5647ab...596ba6`](./contracts/bsc-56/0x5647abcec6df18c40a4f22b483e8c865be596ba6/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69cca7...37db41`](./contracts/bsc-56/0x69cca77586c02b932f6344d12ab77f244c37db41/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd2c9e0...adb83f`](./contracts/bsc-56/0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | VotingIncentivesFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4bf5a4...6235bc`](./contracts/bsc-56/0x4bf5a42202927b0263d2279e509b3da05a6235bc/) | WrappedExternalBribeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [2581] hacken.io/audits/thena

Fork inheritance lineage and inherited audits are included when available.
