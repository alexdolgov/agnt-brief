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
| RewardsDistributor | operational_periphery | bsc | n/a | [`0xa6e0e731cb1e99aede0f9c9128d04f948e18727d`](./contracts/bsc-56/0xa6e0e731cb1e99aede0f9c9128d04f948e18727d/) | ✅ Audited |
| VoterV3 | unknown | bsc | n/a | [`0x3a1d0952809f4948d15ebce8d345962a282c4fcb`](./contracts/bsc-56/0x3a1d0952809f4948d15ebce8d345962a282c4fcb/) | ✅ Audited |
| VotingEscrow | operational_periphery | bsc | n/a | [`0xfbbf371c9b0b994eebfcc977cef603f7f31c070d`](./contracts/bsc-56/0xfbbf371c9b0b994eebfcc977cef603f7f31c070d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | unknown | bsc | n/a | 2 deployments: bsc [`0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2`](./contracts/bsc-56/0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2/); bsc `0xaa42d6a54e473d93249b09207f090404814b7e0e` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | bsc | n/a | [`0x6f866dfb4ec07864807217c48e4ff58b137c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/) | ⚠️ Unaudited |
| AlgebraFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x212de9ae4b1beca60be0e8fa0210a26b81614c9b`](./contracts/bsc-56/0x212de9ae4b1beca60be0e8fa0210a26b81614c9b/); bsc `0x30055f87716d3dfd0e5198c27024481099fb4a98` | ⚠️ Unaudited |
| BribeFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2`](./contracts/bsc-56/0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2/); bsc `0xe04723fe7470b0289bdc9dd473a8b6f7703a4f6a` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x242e4ee00aecc6b2c728a8e065c746ad8218a984`](./contracts/bsc-56/0x242e4ee00aecc6b2c728a8e065c746ad8218a984/); bsc `0xb9db4b1c5431dca6fea45e6a2c2a6fa3a2cf1c1e` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9`](./contracts/bsc-56/0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9/); bsc `0x35589589c082a55038fad5090608ea752ca28ffe` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095`](./contracts/bsc-56/0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095/); bsc `0xcb78f8d9dfb78cd43bd2dc9ffe75e39fbe7f2820` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4ffcf83feae8a44f61575722aefc2706e73c7770`](./contracts/bsc-56/0x4ffcf83feae8a44f61575722aefc2706e73c7770/); bsc `0xe63b8939c491a1ac073c394ad76139067be314b5` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x6a2caba827f0851612595ab9e52a2e16c7c50e86`](./contracts/bsc-56/0x6a2caba827f0851612595ab9e52a2e16c7c50e86/); bsc `0xc29d96473eb1fbe1d434407cb76e48cbef591c2f` | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x99768701cce63da41311f959f120425ed2192ecb`](./contracts/bsc-56/0x99768701cce63da41311f959f120425ed2192ecb/); bsc `0xd50ceab3071c61c85d04bdd65feb12fee7c91375` | ⚠️ Unaudited |
| BribesDistribution | unknown | bsc | n/a | 3 deployments: bsc [`0x198dab4b4e03f9f3f44e605d567b15bb72138a14`](./contracts/bsc-56/0x198dab4b4e03f9f3f44e605d567b15bb72138a14/); bsc `0x448dedf43005fccad0cdabd989a4aee63e73b560`; bsc `0x89a10b78b099077d6e3bf9bf5c21179108545ac9` | ⚠️ Unaudited |
| Claimer | operational_periphery | bsc | n/a | [`0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | ⚠️ Unaudited |
| DibsRewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x444efae67c5763d48105440a457b6f89e792e194`](./contracts/bsc-56/0x444efae67c5763d48105440a457b6f89e792e194/); bsc `0x6e298908514c77c2dc1dc8faa150eef46ad7f03b` | ⚠️ Unaudited |
| DistributeFees | unknown | bsc | n/a | 3 deployments: bsc [`0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa`](./contracts/bsc-56/0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa/); bsc `0x974a96fa2db6d87d30d9127f156f8ab297a8b340`; bsc `0x9f0d34271d235fdd1c018df97151ad296de6f65d` | ⚠️ Unaudited |
| DistributeFees | unknown | bsc | n/a | 2 deployments: bsc [`0x8db743c5ad37eccece39be36ed4657c1670b4608`](./contracts/bsc-56/0x8db743c5ad37eccece39be36ed4657c1670b4608/); bsc `0xfd71f0975e5261e507f0b497ef2d879cd45d7cf6` | ⚠️ Unaudited |
| EpochController | unknown | bsc | n/a | 2 deployments: bsc [`0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275`](./contracts/bsc-56/0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275/); bsc `0xbc197ebc05f0f543032493ad63aa2df4dc103911` | ⚠️ Unaudited |
| EpochNFTSplitManager | unknown | bsc | n/a | 2 deployments: bsc [`0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3`](./contracts/bsc-56/0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3/); bsc `0xccfcba7c72f212668a3596dd497a672a8d420ad8` | ⚠️ Unaudited |
| FarmingCenter | unknown | bsc | n/a | [`0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | bsc | n/a | [`0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | ⚠️ Unaudited |
| GaugeFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b`](./contracts/bsc-56/0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b/); bsc `0xfc1bc666a98703505534477e651a2470508c99a4` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | bsc | n/a | 4 deployments: bsc [`0x2a9551cdae59a6fd8396f11fb987fc0ce116f787`](./contracts/bsc-56/0x2a9551cdae59a6fd8396f11fb987fc0ce116f787/); bsc `0x415d2901bac5edf9463d4b438e3c46477bce34c7`; bsc `0xa433549fd374bbd08c8593329c90fe9b9ebc18a2`; bsc `0xcfe13d138d6471b827528b077eadc9330b9fad78` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | bsc | n/a | 3 deployments: bsc [`0x2c788fe40a417612cb654b14a944cd549b5bf130`](./contracts/bsc-56/0x2c788fe40a417612cb654b14a944cd549b5bf130/); bsc `0xbe670d3a23a7250463727f3867a65759ab9dba2a`; bsc `0xc37ca878d351aa45ce51617d91be642457b9f55b` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | bsc | n/a | 2 deployments: bsc [`0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73`](./contracts/bsc-56/0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73/); bsc `0xb065e4f5d71a55a4e4fc2bd871b36e33053cabeb` | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/); bsc `0x6f802469f6bdf9bcafc0bde55156e22cde1481b5`; bsc `0x9d2c099fc3791786a1798045c49da9ee915e3b4b`; bsc `0xb4dee5d77f7432846d12183c2fb3999c2b61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/); bsc `0xa95186c80df0438d4ecbf7df3da6b6153ba9b8d6`; bsc `0xba445618ffcb3edd639304d145e423a57c33e871`; bsc `0xcf2071cc2f8f53f611e528f7558cfcab5e64541a`; bsc `0xe6519bab9dbd868df05584c898ef3c60fabc3b0c` | ⚠️ Unaudited |
| GlobalFactory | registry | bsc | n/a | [`0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x7d70ee3774325c51e021af1f7987c214d2caa184`](./contracts/bsc-56/0x7d70ee3774325c51e021af1f7987c214d2caa184/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | n/a | [`0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | n/a | [`0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701`](./contracts/bsc-56/0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x11746fd90091228a97974435d6be5e10bda92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/); bsc `0xe58e64fb76e3c3246c34ee596fb8da300b5adfbb` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9`](./contracts/bsc-56/0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9/); bsc `0x7959a75a97f52ef154acf59c1f623afb1f5da3ab` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | n/a | 3 deployments: bsc [`0x5115c12b2d8dbed8be5239dfabd046aa85b4261d`](./contracts/bsc-56/0x5115c12b2d8dbed8be5239dfabd046aa85b4261d/); bsc `0x6c1a357f0d737a889ea6b0321257d6d4ca664dfe`; bsc `0x86069feb223ee303085a1a505892c9d4bdbee996` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b`](./contracts/bsc-56/0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b/); bsc `0xb7ed8fa63bea18986fa78d62f33497b1acdea1d8` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | bsc | n/a | 4 deployments: bsc [`0x02308f4455cd6d2109092c7903d1ed843440e1f7`](./contracts/bsc-56/0x02308f4455cd6d2109092c7903d1ed843440e1f7/); bsc `0x0c6e178271558571f54077cd32e97a1579119ac4`; bsc `0x36792f273b1db3469a2b7ba657a5dd3c78adf507`; bsc `0x880a58766cd15139ba816a57197f7393d97d6628` | ⚠️ Unaudited |
| NFTSplitAutomation | unknown | bsc | n/a | 2 deployments: bsc [`0x2e974a81f68eafa2a197a3a6eb6e75949504524e`](./contracts/bsc-56/0x2e974a81f68eafa2a197a3a6eb6e75949504524e/); bsc `0xad85026986d1c887ba715901a45239fece88604c` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x643b68bf3f855b8475c0a700b6d1020bfc21d02e`](./contracts/bsc-56/0x643b68bf3f855b8475c0a700b6d1020bfc21d02e/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0xa51adb08cbe6ae398046a23bec013979816b77ab`](./contracts/bsc-56/0xa51adb08cbe6ae398046a23bec013979816b77ab/) | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x0c04481fe0ebbb3655d51827ea0364272d73045b`](./contracts/bsc-56/0x0c04481fe0ebbb3655d51827ea0364272d73045b/); bsc `0xd9f2a8b8361121d1b2c3f705c99477e9f9526380` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x1a976411cb618a0ca3c89a902a9528cd4482ec84`](./contracts/bsc-56/0x1a976411cb618a0ca3c89a902a9528cd4482ec84/); bsc `0xe7b3795b2d70d3f5f219d1ffdd59acf622e82a5b` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5`](./contracts/bsc-56/0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5/); bsc `0x839042df30d19c112b2ea77544ea2ec222a61d84` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab`](./contracts/bsc-56/0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab/); bsc `0x4c941dc58b960ebd35d2582837abf3e55546de12` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x43e55fccd1462e9edfeb4c6dd2b358323049137f`](./contracts/bsc-56/0x43e55fccd1462e9edfeb4c6dd2b358323049137f/); bsc `0x51460926764fa34f8688ec642e9ca10d293a1aba` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x53a67b6b57907aa1926e95b004578a9bacb72e15`](./contracts/bsc-56/0x53a67b6b57907aa1926e95b004578a9bacb72e15/); bsc `0xc2b480cd0c7c8f3ea57654feac9d8d6c16302950` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x6a304087d888e48ed94de6c1efe05aec6913e08e`](./contracts/bsc-56/0x6a304087d888e48ed94de6c1efe05aec6913e08e/); bsc `0xd96d2f53b43526cc4b2f0bbf53c602d21e7ab147` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x711f29161cc49b1656f162600ba121bcc6388daf`](./contracts/bsc-56/0x711f29161cc49b1656f162600ba121bcc6388daf/); bsc `0xf22f8a14265c909ba562b0166fa3d5733f9ddf34` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x7419477c03b0feb9286f216b9d19e42f86b288b3`](./contracts/bsc-56/0x7419477c03b0feb9286f216b9d19e42f86b288b3/); bsc `0xd73ad1ab5f6b71f811dfc0adcdb7b457fd03fdc5` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 3 deployments: bsc [`0x87627d13800eed68026fdc5d0f151b518c7be5e4`](./contracts/bsc-56/0x87627d13800eed68026fdc5d0f151b518c7be5e4/); bsc `0xf1035551c583dfd2d8b04f4eba70528f5c89f2fc`; bsc `0xf2298325bc2fcd87da804f4cf169553f3e0309f1` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e`](./contracts/bsc-56/0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e/); bsc `0xebff38afad31a09f3e01446f6149bb06c1d91862` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x879f8fd307ba4442e22e77d47683f35313760dc8`](./contracts/bsc-56/0x879f8fd307ba4442e22e77d47683f35313760dc8/); bsc `0xafd89d21bdb66d00817d4153e055830b1c2b3970` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x96f8b6972775c9435d46166acdb3b806f8602df4`](./contracts/bsc-56/0x96f8b6972775c9435d46166acdb3b806f8602df4/); bsc `0xedfa2a7eed6bb11876ae94462a7238a0c515bf08` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 4 deployments: bsc [`0x5d120a288f1c9b9d382e7deb64573f15e18d990e`](./contracts/bsc-56/0x5d120a288f1c9b9d382e7deb64573f15e18d990e/); bsc `0x8b9ca04656a74e218ecbd444c493872d19533e06`; bsc `0x90c0df115e4478702c73f6f7be4881d430492efb`; bsc `0xc06cb27ebb868fa197a24f399680ab674de04575` | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | [`0x71af3b059b1daa81ee65529bca82779edfc3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 4 deployments: bsc [`0x07678a2309dbed40576b2dcc723ee5f1b5d808ee`](./contracts/bsc-56/0x07678a2309dbed40576b2dcc723ee5f1b5d808ee/); bsc `0x2083e6a3674a02747b3ace1cfcd621001c4825b9`; bsc `0xa636471a76dd3777e5b101dea2e07b9656c664e9`; bsc `0xe4253eaefa1ac62bccbf919dff1d113431bddf31` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x0b6cff48836eea83795ab8b9a04b1b4654d96c46`](./contracts/bsc-56/0x0b6cff48836eea83795ab8b9a04b1b4654d96c46/); bsc `0xc548c145def391615a5a62f010122e06f24f3e67` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x15b04e78143499f916a94458c03e090a5fd6bf0d`](./contracts/bsc-56/0x15b04e78143499f916a94458c03e090a5fd6bf0d/); bsc `0x8953d7251eb73ec15e267a526e683f93083d1245` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 3 deployments: bsc [`0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34`](./contracts/bsc-56/0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34/); bsc `0xdb65c1c922632b8b62134d49785316818ade413c`; bsc `0xfbf34269805abc9af6baee182f5f9dbe79e5bc77` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787`](./contracts/bsc-56/0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787/); bsc `0xc472ddec82610f54d431fc864d24ff120d7dfcf2` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x6e75e035a1cea646b994fab0e119e18ae8931c16`](./contracts/bsc-56/0x6e75e035a1cea646b994fab0e119e18ae8931c16/); bsc `0xf94e046c6a4f4c5a4eeea69ac007dbb132832dc1` | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x976c5c046451aa1b4fdaada1aa5493a789d54fc5`](./contracts/bsc-56/0x976c5c046451aa1b4fdaada1aa5493a789d54fc5/); bsc `0xaa859c93451988cf6f1cc70c8ed6514702ce7a8d` | ⚠️ Unaudited |
| RewardEarnedHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692`](./contracts/bsc-56/0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692/); bsc `0x9870d4401d8f17cde16fadeab64559848f397319` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x09c318865c54e2250b5e72cc486f1fdcfce98019`](./contracts/bsc-56/0x09c318865c54e2250b5e72cc486f1fdcfce98019/); bsc `0x3754ae7e4bc247e4ab7ed00b251024f476e456a5` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9`](./contracts/bsc-56/0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9/); bsc `0x7f0cd86b21032d7c2fa9ef513309655fe4b1c3bc` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0x66117d9c7a019760b02fb45abc65158c4e76a9cb`](./contracts/bsc-56/0x66117d9c7a019760b02fb45abc65158c4e76a9cb/); bsc `0xb789f1d040f7d07240bfe5082aef7ce51a442fd1` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 3 deployments: bsc [`0x67da2f552e72231635b66568c6a801125aa95b56`](./contracts/bsc-56/0x67da2f552e72231635b66568c6a801125aa95b56/); bsc `0xa2bc09c290a260cdc6b63a5434ed81614a9624de`; bsc `0xe7038191ba7425bf6de3f89451b69f4191b32365` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | n/a | 2 deployments: bsc [`0xb528c3a6f1981d23856521104a9e337c7f484649`](./contracts/bsc-56/0xb528c3a6f1981d23856521104a9e337c7f484649/); bsc `0xed7561b01930ae04dfb80ebc70a221660b90c3c4` | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | 2 deployments: bsc [`0x20a304a7d126758dfe6b243d0fc515f83bca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/); bsc `0x9b237893321b2d447e1d1ae02004eba30b187d0d` | ⚠️ Unaudited |
| RouterV2 | adapter | bsc | n/a | [`0xd4ae6eca985340dd434d38f470accce4dc78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | ⚠️ Unaudited |
| Royalties | unknown | bsc | n/a | [`0xbb2caf56bf29379e329dfed453cbe60e4d913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0x327dd3208f0bcf590a66110acb6e5e6941a4efa0`](./contracts/bsc-56/0x327dd3208f0bcf590a66110acb6e5e6941a4efa0/) | ⚠️ Unaudited |
| SwapRouter | adapter | opbnb | n/a | [`0x9356934eb3fbae6274eae6efc905b292f04f0122`](./contracts/opbnb-204/0x9356934eb3fbae6274eae6efc905b292f04f0122/) | ⚠️ Unaudited |
| Thena | unknown | bsc | n/a | [`0xf4c8e32eadec4bfe97e0f595add0f4450a863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | bsc | n/a | [`0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ⚠️ Unaudited |
| TradingCompetitionManager | governance | bsc | n/a | [`0x8d03febf03cd8e6f2388e587a6a1263360f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0c54d33eb8adcd46a87214f920a77914a676e8be`](./contracts/bsc-56/0x0c54d33eb8adcd46a87214f920a77914a676e8be/); bsc `0xf4f02ccc3f9317bcd3faf414a2bfb1488d8a38ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 9 deployments: bsc [`0x0e0c68f11bf2c84a5a0e800823a969355dcd769f`](./contracts/bsc-56/0x0e0c68f11bf2c84a5a0e800823a969355dcd769f/); bsc `0x26b813555ffd1169e2a5d04d9abaf93da28e3b26`; bsc `0x357379d50bd0ddeb84064b4d2e582c36f051ffc0`; bsc `0x4025e0320a348ccfe5b24f3b77926a36076f4508`; bsc `0x961c454df36fe7f8388a79008b4e5a8a07e893c7`; bsc `0x97f14669a73aaeb1a89fbce0129fe77e44d2ceb0`; bsc `0xc64f46d8cd1f36eb4b7f1db3dc99022996e831d6`; bsc `0xeacf96e677eefebcb74661f6cda3a019ad184721`; opbnb `0x2ac5617f1c04641393bd3246f38521ede0fc9011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x23ab452eacb33ea84584fd5e0a916f4f93709a92`](./contracts/bsc-56/0x23ab452eacb33ea84584fd5e0a916f4f93709a92/); bsc `0xc1b508c9a476a08b7cc78a875eb6a7963bb52b63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x33b1c4fe9bef9c38ba92ab4cae2f9beb16936c60`](./contracts/bsc-56/0x33b1c4fe9bef9c38ba92ab4cae2f9beb16936c60/); bsc `0xbd4952888928c13b8fa104d2d6651670a7a72545` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x478449283ccedbd7dda8f86ef5686048cf425008`](./contracts/bsc-56/0x478449283ccedbd7dda8f86ef5686048cf425008/); bsc `0x4f5b8a208269664a3b0a1a295aec3921f5d88adc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xa0a04d75b00a8d5e06538e34ae692ce7baccac50`](./contracts/bsc-56/0xa0a04d75b00a8d5e06538e34ae692ce7baccac50/); bsc `0xdd7d7e605f035cde1730cd6bd20836f8b4d97f47` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | bsc | n/a | 4 deployments: bsc [`0x15d7c232e6781f724c29c67e23c15ceeec4b8503`](./contracts/bsc-56/0x15d7c232e6781f724c29c67e23c15ceeec4b8503/); bsc `0x77f6efad7a0137e32d30182cb1a1002e126ed9de`; bsc `0xb2b37c4221dabfff5b34883e95d88d498f03e516`; bsc `0xd6f6e27e96535749587ac77bfc83607a743e765f` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x0a554b6b99792cc4b3b60f24e81d596a0020e58a`](./contracts/bsc-56/0x0a554b6b99792cc4b3b60f24e81d596a0020e58a/); bsc `0x73767eeab9abc1b3587d716f6bb57cfc6b1d65a5` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x190b166edf30baa8c1cdbf6653107cec1020d36d`](./contracts/bsc-56/0x190b166edf30baa8c1cdbf6653107cec1020d36d/); bsc `0x2c417f6fbec9cca20ba6c6a9e2a672919596ca07` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 3 deployments: bsc [`0x212ede9937a9800b7c8543f0527a0826cb493507`](./contracts/bsc-56/0x212ede9937a9800b7c8543f0527a0826cb493507/); bsc `0x64039b95537d2904716d1957dd07061ab94a4549`; bsc `0xec83eddd76b431da486ce61fb36ae77d4dd846e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x2a0b2ff90405971f4878f37ce1cf7521dff13660`](./contracts/bsc-56/0x2a0b2ff90405971f4878f37ce1cf7521dff13660/); bsc `0x8be4ec4e6be990243cf49e611c74f4cb9d87eeb5` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x47a02aa02c7d2ee818778039ba4f20dfdac772d9`](./contracts/bsc-56/0x47a02aa02c7d2ee818778039ba4f20dfdac772d9/); bsc `0x833529e2340593d78e82f2a2de7cd065bcc341e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x630f7a926bca11cb445f0bed34a73d66ef41c07e`](./contracts/bsc-56/0x630f7a926bca11cb445f0bed34a73d66ef41c07e/); bsc `0xef71d840a1b2b563863d48b90b06230dbbbf6f09` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x66b6ea901c31b665ad75b7b2193273effd455c79`](./contracts/bsc-56/0x66b6ea901c31b665ad75b7b2193273effd455c79/); bsc `0xf2d6265369f985a0773f2c8174077a3d43f80080` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x6942f06b7916e908a5a88aaae3a44e9f27f8381d`](./contracts/bsc-56/0x6942f06b7916e908a5a88aaae3a44e9f27f8381d/); bsc `0xe09e1aa537382c82245c04536e90fdb7121283b0` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b`](./contracts/bsc-56/0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b/); bsc `0xffb2ade60d3df7eb5fbdfda355ee13197b5c7bc2` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0x9c50be8e54560844dd6b7921e1e1bacc8448e925`](./contracts/bsc-56/0x9c50be8e54560844dd6b7921e1e1bacc8448e925/); bsc `0xc0e2f563835d4b12a69828d53dce6ba14297b9d5` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1`](./contracts/bsc-56/0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1/); bsc `0xfae924b588ba4c318dfedd5da8caa705cb3c926e` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6`](./contracts/bsc-56/0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6/); bsc `0xcfcacccdb12e68eaa794d1af8c1e302bf6b6f0bc` | ⚠️ Unaudited |
| veNFTAPI | unknown | bsc | n/a | 2 deployments: bsc [`0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda`](./contracts/bsc-56/0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda/); bsc `0xf13b61c40f7b2eeb43bfbb05c2a5c6867d99c84d` | ⚠️ Unaudited |
| Voter | unknown | bsc | n/a | [`0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | ⚠️ Unaudited |
| VoterUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47`](./contracts/bsc-56/0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47/); bsc `0xc3136b6b4a25eb16c5354abfd22e16e7242cbe96` | ⚠️ Unaudited |
| VoterV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x43659f29356b7d84f6464957db06f1fd883a706b`](./contracts/bsc-56/0x43659f29356b7d84f6464957db06f1fd883a706b/); bsc `0x50b2fb332767dad87fc67c99edaa4fcb7c24ad79` | ⚠️ Unaudited |
| VoterV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0`](./contracts/bsc-56/0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0/); bsc `0x9dcbc44fa2095400661b38c28fab625d10996456` | ⚠️ Unaudited |
| VoterV2_1 | unknown | bsc | n/a | 2 deployments: bsc [`0x62ee96e6365ab515ec647c065c2707d1122d7b26`](./contracts/bsc-56/0x62ee96e6365ab515ec647c065c2707d1122d7b26/); bsc `0xfdacbe57802b731a9445821779cddcda54dfff34` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x410c014ec262f2de5de285874123370419b2e0ee`](./contracts/bsc-56/0x410c014ec262f2de5de285874123370419b2e0ee/); bsc `0xf1194ddc62ad26f5581285fa7e011f8067276d92` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x5647abcec6df18c40a4f22b483e8c865be596ba6`](./contracts/bsc-56/0x5647abcec6df18c40a4f22b483e8c865be596ba6/); bsc `0xa477414ad91dceda929a0c95b88c178f0cc17ff0` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x69cca77586c02b932f6344d12ab77f244c37db41`](./contracts/bsc-56/0x69cca77586c02b932f6344d12ab77f244c37db41/); bsc `0xbd87e251f4d44a03e76bd60c94f39b554164f30c` | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | n/a | 2 deployments: bsc [`0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f`](./contracts/bsc-56/0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f/); bsc `0xf96cf59b22a27bf35d65fdd8968a5fce0fe28f33` | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | bsc | n/a | [`0x82f144accf4779ca8c49928be28fac5fa157d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | ⚠️ Unaudited |
| WrappedExternalBribeFactoryUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0x4bf5a42202927b0263d2279e509b3da05a6235bc`](./contracts/bsc-56/0x4bf5a42202927b0263d2279e509b3da05a6235bc/); bsc `0xef297516b9f4dbfcb4e0ced07738db7187fa42d3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x0cb322b8dd377a06800be9f2b90f506e356ab554` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12f0a7b77979fbb9374dbff2b2623941dd961ab9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f94f8189673eccf0797ca985ddf90c6e285e4a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4477e8dd114adaa82a41ced2790687e1812aab2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c7cace72f9c299fd6540b8ddb6a252f61e19fe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6524a54bea5aa83386466f0e2e1d6a3c87bad700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ba6a5cf27ba8b871b9d856fbdd9d9dd8b6e670f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ed7ba7e8a4027f18cc20334ceb674a26589db40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x883899fddc2f1af2eb295e2311420c67f23b8401` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e50ac14c1c7e1bd5cb4c1e51649c8c456479830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90f4e5b528c960a04f470c6f936775cdd924a354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e92b57bff702530a0c3be9ff5fe2c24f95a91f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa283f45cbf0aad9d0db7d2714602f6ed77ac6e2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb126ad60788d94e08b67ac26c04d773acc3fea19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc702859593fd33b457ac6bc262f9c5f324613b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9f5d651336a91aeb80bce5e3bee631648fdfa4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda6cef2b6c9e680fef6ab733f854ed0226818c49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6a1ee816968a8bd6c82b81f4f874ef37e88859d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf02a0b1351aa20072f0a14e67faf1bdfb6f2d71a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7fb6b676b7f7eaf8f60b057697e6e1b108189036` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc64f46d8cd1f36eb4b7f1db3dc99022996e831d6` | ❓ Unverified |

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
| bsc | [`0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2`](./contracts/bsc-56/0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f866dfb4ec07864807217c48e4ff58b137c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x212de9ae4b1beca60be0e8fa0210a26b81614c9b`](./contracts/bsc-56/0x212de9ae4b1beca60be0e8fa0210a26b81614c9b/) | AlgebraFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2`](./contracts/bsc-56/0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2/) | BribeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x242e4ee00aecc6b2c728a8e065c746ad8218a984`](./contracts/bsc-56/0x242e4ee00aecc6b2c728a8e065c746ad8218a984/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9`](./contracts/bsc-56/0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095`](./contracts/bsc-56/0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ffcf83feae8a44f61575722aefc2706e73c7770`](./contracts/bsc-56/0x4ffcf83feae8a44f61575722aefc2706e73c7770/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a2caba827f0851612595ab9e52a2e16c7c50e86`](./contracts/bsc-56/0x6a2caba827f0851612595ab9e52a2e16c7c50e86/) | BribeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99768701cce63da41311f959f120425ed2192ecb`](./contracts/bsc-56/0x99768701cce63da41311f959f120425ed2192ecb/) | BribeFactoryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x198dab4b4e03f9f3f44e605d567b15bb72138a14`](./contracts/bsc-56/0x198dab4b4e03f9f3f44e605d567b15bb72138a14/) | BribesDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x444efae67c5763d48105440a457b6f89e792e194`](./contracts/bsc-56/0x444efae67c5763d48105440a457b6f89e792e194/) | DibsRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa`](./contracts/bsc-56/0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8db743c5ad37eccece39be36ed4657c1670b4608`](./contracts/bsc-56/0x8db743c5ad37eccece39be36ed4657c1670b4608/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275`](./contracts/bsc-56/0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3`](./contracts/bsc-56/0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3/) | EpochNFTSplitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b`](./contracts/bsc-56/0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b/) | GaugeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a9551cdae59a6fd8396f11fb987fc0ce116f787`](./contracts/bsc-56/0x2a9551cdae59a6fd8396f11fb987fc0ce116f787/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c788fe40a417612cb654b14a944cd549b5bf130`](./contracts/bsc-56/0x2c788fe40a417612cb654b14a944cd549b5bf130/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73`](./contracts/bsc-56/0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73/) | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/) | GaugeIchiFeeDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/) | GaugeSimple | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | GlobalFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701`](./contracts/bsc-56/0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11746fd90091228a97974435d6be5e10bda92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9`](./contracts/bsc-56/0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5115c12b2d8dbed8be5239dfabd046aa85b4261d`](./contracts/bsc-56/0x5115c12b2d8dbed8be5239dfabd046aa85b4261d/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b`](./contracts/bsc-56/0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02308f4455cd6d2109092c7903d1ed843440e1f7`](./contracts/bsc-56/0x02308f4455cd6d2109092c7903d1ed843440e1f7/) | NFTSalesSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e974a81f68eafa2a197a3a6eb6e75949504524e`](./contracts/bsc-56/0x2e974a81f68eafa2a197a3a6eb6e75949504524e/) | NFTSplitAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x643b68bf3f855b8475c0a700b6d1020bfc21d02e`](./contracts/bsc-56/0x643b68bf3f855b8475c0a700b6d1020bfc21d02e/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa51adb08cbe6ae398046a23bec013979816b77ab`](./contracts/bsc-56/0xa51adb08cbe6ae398046a23bec013979816b77ab/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c04481fe0ebbb3655d51827ea0364272d73045b`](./contracts/bsc-56/0x0c04481fe0ebbb3655d51827ea0364272d73045b/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a976411cb618a0ca3c89a902a9528cd4482ec84`](./contracts/bsc-56/0x1a976411cb618a0ca3c89a902a9528cd4482ec84/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5`](./contracts/bsc-56/0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab`](./contracts/bsc-56/0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43e55fccd1462e9edfeb4c6dd2b358323049137f`](./contracts/bsc-56/0x43e55fccd1462e9edfeb4c6dd2b358323049137f/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53a67b6b57907aa1926e95b004578a9bacb72e15`](./contracts/bsc-56/0x53a67b6b57907aa1926e95b004578a9bacb72e15/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a304087d888e48ed94de6c1efe05aec6913e08e`](./contracts/bsc-56/0x6a304087d888e48ed94de6c1efe05aec6913e08e/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x711f29161cc49b1656f162600ba121bcc6388daf`](./contracts/bsc-56/0x711f29161cc49b1656f162600ba121bcc6388daf/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7419477c03b0feb9286f216b9d19e42f86b288b3`](./contracts/bsc-56/0x7419477c03b0feb9286f216b9d19e42f86b288b3/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x87627d13800eed68026fdc5d0f151b518c7be5e4`](./contracts/bsc-56/0x87627d13800eed68026fdc5d0f151b518c7be5e4/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e`](./contracts/bsc-56/0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x879f8fd307ba4442e22e77d47683f35313760dc8`](./contracts/bsc-56/0x879f8fd307ba4442e22e77d47683f35313760dc8/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x96f8b6972775c9435d46166acdb3b806f8602df4`](./contracts/bsc-56/0x96f8b6972775c9435d46166acdb3b806f8602df4/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71af3b059b1daa81ee65529bca82779edfc3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07678a2309dbed40576b2dcc723ee5f1b5d808ee`](./contracts/bsc-56/0x07678a2309dbed40576b2dcc723ee5f1b5d808ee/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b6cff48836eea83795ab8b9a04b1b4654d96c46`](./contracts/bsc-56/0x0b6cff48836eea83795ab8b9a04b1b4654d96c46/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15b04e78143499f916a94458c03e090a5fd6bf0d`](./contracts/bsc-56/0x15b04e78143499f916a94458c03e090a5fd6bf0d/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34`](./contracts/bsc-56/0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787`](./contracts/bsc-56/0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e75e035a1cea646b994fab0e119e18ae8931c16`](./contracts/bsc-56/0x6e75e035a1cea646b994fab0e119e18ae8931c16/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x976c5c046451aa1b4fdaada1aa5493a789d54fc5`](./contracts/bsc-56/0x976c5c046451aa1b4fdaada1aa5493a789d54fc5/) | RewardAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692`](./contracts/bsc-56/0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692/) | RewardEarnedHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09c318865c54e2250b5e72cc486f1fdcfce98019`](./contracts/bsc-56/0x09c318865c54e2250b5e72cc486f1fdcfce98019/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9`](./contracts/bsc-56/0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66117d9c7a019760b02fb45abc65158c4e76a9cb`](./contracts/bsc-56/0x66117d9c7a019760b02fb45abc65158c4e76a9cb/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67da2f552e72231635b66568c6a801125aa95b56`](./contracts/bsc-56/0x67da2f552e72231635b66568c6a801125aa95b56/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb528c3a6f1981d23856521104a9e337c7f484649`](./contracts/bsc-56/0xb528c3a6f1981d23856521104a9e337c7f484649/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20a304a7d126758dfe6b243d0fc515f83bca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4ae6eca985340dd434d38f470accce4dc78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb2caf56bf29379e329dfed453cbe60e4d913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | Royalties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x327dd3208f0bcf590a66110acb6e5e6941a4efa0`](./contracts/bsc-56/0x327dd3208f0bcf590a66110acb6e5e6941a4efa0/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x9356934eb3fbae6274eae6efc905b292f04f0122`](./contracts/opbnb-204/0x9356934eb3fbae6274eae6efc905b292f04f0122/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4c8e32eadec4bfe97e0f595add0f4450a863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | Thena | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ThenianFeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d03febf03cd8e6f2388e587a6a1263360f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | TradingCompetitionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15d7c232e6781f724c29c67e23c15ceeec4b8503`](./contracts/bsc-56/0x15d7c232e6781f724c29c67e23c15ceeec4b8503/) | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a554b6b99792cc4b3b60f24e81d596a0020e58a`](./contracts/bsc-56/0x0a554b6b99792cc4b3b60f24e81d596a0020e58a/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x190b166edf30baa8c1cdbf6653107cec1020d36d`](./contracts/bsc-56/0x190b166edf30baa8c1cdbf6653107cec1020d36d/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x212ede9937a9800b7c8543f0527a0826cb493507`](./contracts/bsc-56/0x212ede9937a9800b7c8543f0527a0826cb493507/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a0b2ff90405971f4878f37ce1cf7521dff13660`](./contracts/bsc-56/0x2a0b2ff90405971f4878f37ce1cf7521dff13660/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47a02aa02c7d2ee818778039ba4f20dfdac772d9`](./contracts/bsc-56/0x47a02aa02c7d2ee818778039ba4f20dfdac772d9/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x630f7a926bca11cb445f0bed34a73d66ef41c07e`](./contracts/bsc-56/0x630f7a926bca11cb445f0bed34a73d66ef41c07e/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66b6ea901c31b665ad75b7b2193273effd455c79`](./contracts/bsc-56/0x66b6ea901c31b665ad75b7b2193273effd455c79/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6942f06b7916e908a5a88aaae3a44e9f27f8381d`](./contracts/bsc-56/0x6942f06b7916e908a5a88aaae3a44e9f27f8381d/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b`](./contracts/bsc-56/0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c50be8e54560844dd6b7921e1e1bacc8448e925`](./contracts/bsc-56/0x9c50be8e54560844dd6b7921e1e1bacc8448e925/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1`](./contracts/bsc-56/0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6`](./contracts/bsc-56/0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda`](./contracts/bsc-56/0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda/) | veNFTAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47`](./contracts/bsc-56/0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47/) | VoterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43659f29356b7d84f6464957db06f1fd883a706b`](./contracts/bsc-56/0x43659f29356b7d84f6464957db06f1fd883a706b/) | VoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0`](./contracts/bsc-56/0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0/) | VoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62ee96e6365ab515ec647c065c2707d1122d7b26`](./contracts/bsc-56/0x62ee96e6365ab515ec647c065c2707d1122d7b26/) | VoterV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x410c014ec262f2de5de285874123370419b2e0ee`](./contracts/bsc-56/0x410c014ec262f2de5de285874123370419b2e0ee/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5647abcec6df18c40a4f22b483e8c865be596ba6`](./contracts/bsc-56/0x5647abcec6df18c40a4f22b483e8c865be596ba6/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69cca77586c02b932f6344d12ab77f244c37db41`](./contracts/bsc-56/0x69cca77586c02b932f6344d12ab77f244c37db41/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f`](./contracts/bsc-56/0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82f144accf4779ca8c49928be28fac5fa157d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | VotingIncentivesFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4bf5a42202927b0263d2279e509b3da05a6235bc`](./contracts/bsc-56/0x4bf5a42202927b0263d2279e509b3da05a6235bc/) | WrappedExternalBribeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
