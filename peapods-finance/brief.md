# Agentic Audit Brief: Peapods Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 30.6% over 90 days

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T01:50:21.273Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-1f48
- Chains: arbitrum, base, berachain, ethereum, mode, sonic
- Contract surface: 130 unique implementations (418 raw deployments)
- DeFi Llama TVL: $6,984,703.21
- On-chain TVL (included contracts): $949,461.81
- TVL by chain: Ethereum $816,310.33 | Arbitrum $97,895.03 | Base $35,256.44

## Project Description

Peapods Finance is a DeFi protocol focused on Volatility Farming: enabling users to generate sustainable yield for liquid assets through Pods and related staking/liquidity mechanisms. Its index, pod, leverage, and DEX-integration components should be treated as implementation mechanics rather than the sole project identity, and any PEAS governance or utility claims should be separately substantiated.

### Architecture

IndexManager creates and manages Pods using WeightedIndex implementations, while LeverageManager adds leverage to these Pods. StakingPoolToken and TokenRewards handle staking and yield distribution for Pod tokens, and ERC20Bridgeable facilitates cross-chain token transfers. All families rely on UpgradeableBeacon proxies for upgradeability and share the PEAS token as a common utility and governance asset.

## Audit Coverage Summary

- Verified implementations audited: 26/49 (53.1%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 3
- Unverified implementations: 81
- Unique implementations: 130
- Raw deployments: 418
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $949,461.81
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 3 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $949,461.81 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 26 | 53.1% | 2024-12 |
| yAudit | Tier 2 | 3 | 6.1% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AerodromeDexAdapter | adapter | base | 3 deployments: base [`0x04595a...dfce35`](./contracts/base-8453/0x04595a47216076fd418cdd3fcfd9255e59dfce35/); base `0xb9f885...1ff944`; base `0xf24f39...f9ca0f` | ✅ Audited |
| AutoCompoundingPodLpFactory | registry | mode | [`0xeec282...03faea`](./contracts/mode-34443/0xeec2820fd5750541511ac032e42f57bdf603faea/) | ✅ Audited |
| CamelotDexAdapter | adapter | arbitrum | 6 deployments: mode `0x77683b...af7f57`; mode `0x97be1f...b65a36`; mode `0xc38d42...56198f`; arbitrum [`0x22dc5b...1aad7a`](./contracts/arbitrum-42161/0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a/); arbitrum `0x83eccb...823f94`; arbitrum `0xac9d76...ceb10e` | ✅ Audited |
| DIAOracleV2SinglePriceOracle | operational_periphery | arbitrum | 6 deployments: ethereum `0xc815d4...e4466e`; sonic `0xa335cc...9df131`; sonic `0xb80510...a82d74`; base `0x420180...cbe179`; arbitrum [`0x0d71e8...ac6653`](./contracts/arbitrum-42161/0x0d71e8487df7ed8ac111bfab9cc44cc69bac6653/); berachain `0x486d45...17d276` | ✅ Audited |
| ERC20Bridgeable | operational_periphery | sonic | 5 deployments: sonic [`0x02f928...2df875`](./contracts/sonic-146/0x02f92800f57bcd74066f5709f1daa1a4302df875/); base [`0x02f928...2df875`](./contracts/base-8453/0x02f92800f57bcd74066f5709f1daa1a4302df875/); mode [`0x02f928...2df875`](./contracts/mode-34443/0x02f92800f57bcd74066f5709f1daa1a4302df875/); arbitrum [`0x02f928...2df875`](./contracts/arbitrum-42161/0x02f92800f57bcd74066f5709f1daa1a4302df875/); berachain [`0x02f928...2df875`](./contracts/berachain-80094/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| IndexManager | governance | ethereum | 12 deployments: ethereum [`0x0bb39b...b4ae6b`](./contracts/ethereum-1/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); ethereum `0x6effcf...b7666e`; ethereum `0xdb9dc6...4a3fa5`; sonic `0x301846...9660fd`; sonic `0x9e054f...166060`; base [`0x0bb39b...b4ae6b`](./contracts/base-8453/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); base `0x556059...94ec30`; mode [`0x0bb39b...b4ae6b`](./contracts/mode-34443/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); mode `0x93121a...a567bc`; arbitrum [`0x0bb39b...b4ae6b`](./contracts/arbitrum-42161/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); arbitrum `0x64511c...b14fd8`; berachain `0xc9260c...932f01` | ✅ Audited |
| IndexUtils | unknown | arbitrum | 23 deployments: ethereum `0x2bcca7...a1054c`; ethereum `0x521e24...bd03cc`; ethereum `0x88b6db...87d9b7`; ethereum `0x9a103a...7b8db6`; sonic `0x242325...0f5eca`; sonic `0x37e845...7a8390`; sonic `0xf29778...97d168`; base `0x37cd1f...659dde`; base `0x490b03...15826d`; base `0x59b730...a0a962`; base `0xa15cf7...5f0042`; mode `0x9e3417...e3400c`; mode `0x9e9350...efdbe6`; arbitrum [`0x19f6bd...96724d`](./contracts/arbitrum-42161/0x19f6bdfb1c22c3636525a1a07734313d7b96724d/); arbitrum `0x1f422d...c9190b`; arbitrum `0x25648a...e83d2e`; arbitrum `0x36c5e5...e1ad83`; arbitrum `0x3e462a...e06c19`; arbitrum `0x4b6d3f...745e0d`; arbitrum `0x5c5c28...65f0c0`; arbitrum `0xa06439...350c10`; arbitrum `0xbb6f81...252bed`; berachain `0x40bd82...386717` | ✅ Audited |
| LendingAssetVaultFactory | registry | berachain | 11 deployments: ethereum `0xa811d1...191875`; ethereum `0xbab29f...7912c6`; sonic `0x6786d3...b7a8ec`; sonic `0x898cc8...21d55c`; sonic `0xbf9d21...546855`; base `0x3cc2a9...875cfc`; base `0x48f39f...b7c31e`; mode `0xb7d368...c2b0a3`; arbitrum `0xa9a92c...e1c95e`; arbitrum `0xf252b0...3bda3a`; berachain [`0x37cd1f...659dde`](./contracts/berachain-80094/0x37cd1fd593639d453cd97670bac4e59fd5659dde/) | ✅ Audited |
| LeverageManager | governance | base | 19 deployments: ethereum `0x138ce9...49c629`; ethereum `0x4e1086...ee403c`; ethereum `0x4e6ef3...c62d0b`; ethereum `0x8c3837...47f90e`; sonic `0x0c4b19...118b61`; sonic `0x3c12e5...cc5f98`; sonic `0x550382...247cf6`; sonic `0x588bf5...6faa35`; base [`0x002373...fdc6c7`](./contracts/base-8453/0x002373c90ca02869024f6acc0c61874063fdc6c7/); base `0x31e355...6ab82d`; base `0x62eadf...b05f2a`; base `0x817e65...a40edb`; arbitrum `0x3f2257...e8e2b0`; arbitrum `0x55af47...40bf76`; arbitrum `0x77214f...31900b`; arbitrum `0xe89c47...a3ac46`; berachain `0x0ff519...bf5a69`; berachain `0x4cc453...13536f`; berachain `0x718964...2461a5` | ✅ Audited |
| PEAS | unknown | ethereum | [`0x02f928...2df875`](./contracts/ethereum-1/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| ProtocolFeeRouter | adapter | sonic | 11 deployments: ethereum `0x7d544d...1e949b`; ethereum `0x868797...11a5ff`; sonic [`0x0d7a0f...9bc24e`](./contracts/sonic-146/0x0d7a0f0deba08c984c6517f5eec59503ff9bc24e/); sonic `0xcb1843...d5bf7d`; base `0x45c4ad...572611`; base `0xabcafc...affcdb`; mode `0x9f8c3e...c92355`; mode `0xdbac33...9aa00f`; arbitrum `0x98bb5a...59fe39`; arbitrum `0xeebb4b...054ae2`; berachain `0x94a006...51d44e` | ✅ Audited |
| ProtocolFees | unknown | arbitrum | 11 deployments: ethereum `0x26f6bf...a216c7`; ethereum `0xc2b0a3...e62374`; sonic `0x27d809...010f8a`; sonic `0xabcafc...affcdb`; base `0x301846...9660fd`; base `0x83eccb...823f94`; mode `0xc1081b...b67476`; mode `0xeaf725...e1955f`; arbitrum [`0x2492fd...4ec8a2`](./contracts/arbitrum-42161/0x2492fd2134a68fbfb3471390ac2d13fd2d4ec8a2/); arbitrum `0xbf9d21...546855`; berachain `0xc0b947...c6ce10` | ✅ Audited |
| RewardsWhitelist | unknown | base | 11 deployments: ethereum `0x5cdad2...d14eea`; ethereum `0xec0eb4...e9450f`; sonic `0x1f422d...c9190b`; sonic `0x36c5e5...e1ad83`; base [`0x0d7a0f...9bc24e`](./contracts/base-8453/0x0d7a0f0deba08c984c6517f5eec59503ff9bc24e/); base `0xfa9d58...e0296f`; mode `0x635f5b...11569a`; mode `0xdb9dc6...4a3fa5`; arbitrum `0x14940e...9396ba`; arbitrum `0xac4050...93cbf1`; berachain `0x4dd1a2...ae0ba0` | ✅ Audited |
| StakingPoolToken | core_logic | sonic | 13 deployments: ethereum `0x28cd26...cb0257`; ethereum `0x7c9c6c...88f91b`; sonic [`0x006076...7114cc`](./contracts/sonic-146/0x006076d007c4db62f1809f636d2f4314bb7114cc/); sonic `0x229874...272919`; sonic `0x9f8c3e...c92355`; sonic `0xeaf725...e1955f`; base `0x045769...3b63cf`; base `0x8a581e...7e016b`; mode `0xe50d25...c87a72`; arbitrum `0x1f8d9f...c31988`; arbitrum `0x211c85...134945`; berachain `0x0f7650...44471d`; berachain `0xa4f43c...e63044` | ✅ Audited |
| TokenRewards | token | berachain | 16 deployments: ethereum `0x0a7734...0618cc`; ethereum `0x2d2d83...e0ca31`; ethereum `0xba72a2...4a85e2`; sonic `0x635f5b...11569a`; sonic `0xb8f9e6...bec010`; sonic `0xc38d42...56198f`; sonic `0xc9ec2a...4a2fb0`; base `0x7189b9...7573f5`; base `0xaa2adb...a32a06`; base `0xbd91d0...dde50e`; mode `0x290e6d...787f7a`; arbitrum `0x37247d...3e4aae`; arbitrum `0xe74397...0005b1`; arbitrum `0xfcd30d...ae7fd8`; berachain [`0x0663ab...6f38eb`](./contracts/berachain-80094/0x0663ab773a4d00d65fe0e0c3e9727c898f6f38eb/); berachain `0x6116b4...952b38` | ✅ Audited |
| UniswapDexAdapter | adapter | mode | [`0xf05ef8...1727cd`](./contracts/mode-34443/0xf05ef850f9ee3d94c7a5609153a82638d41727cd/) | ✅ Audited |
| UnweightedIndex | unknown | ethereum | 2 deployments: ethereum [`0x290e6d...787f7a`](./contracts/ethereum-1/0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a/); ethereum `0x3c56ca...f5451c` | ✅ Audited |
| V2ReservesCamelot | unknown | arbitrum | [`0xec8a49...3eeaf8`](./contracts/arbitrum-42161/0xec8a490000e9553a373e54ed71c09c7aa73eeaf8/) | ✅ Audited |
| V3Locker | unknown | ethereum | [`0xe4abbe...003fba`](./contracts/ethereum-1/0xe4abbe1b9c4382c550eb81e9f4dd908918003fba/) | ✅ Audited |
| V3TwapAerodromeUtilities | unknown | base | [`0x024ff4...d5229d`](./contracts/base-8453/0x024ff47d552cb222b265d68c7aeb26e586d5229d/) | ✅ Audited |
| V3TwapCamelotUtilities | unknown | arbitrum | 4 deployments: mode `0x948e2e...18ad48`; arbitrum [`0x0b9d4c...60c32f`](./contracts/arbitrum-42161/0x0b9d4c3fbf57777283979537baed9b834a60c32f/); arbitrum `0x88b6db...87d9b7`; arbitrum `0xe8869f...e11458` | ✅ Audited |
| V3TwapKimUtilities | unknown | mode | 3 deployments: mode [`0x0b9d4c...60c32f`](./contracts/mode-34443/0x0b9d4c3fbf57777283979537baed9b834a60c32f/); mode `0x17b55d...a5b610`; mode `0x903016...4fe622` | ✅ Audited |
| V3TwapUtilities | unknown | ethereum | 8 deployments: ethereum [`0x024ff4...d5229d`](./contracts/ethereum-1/0x024ff47d552cb222b265d68c7aeb26e586d5229d/); ethereum `0x9de8aa...504533`; sonic `0xce4ab2...eb6b6e`; base `0x0b9d4c...60c32f`; base `0x920093...c9bdc0`; arbitrum [`0x024ff4...d5229d`](./contracts/arbitrum-42161/0x024ff47d552cb222b265d68c7aeb26e586d5229d/); arbitrum `0x948e2e...18ad48`; arbitrum `0xadb070...49466b` | ✅ Audited |
| WeightedIndex | unknown | base | 47 deployments: ethereum `0x027ce4...f9b1c7`; ethereum `0x1e4567...2f2d8a`; ethereum `0x21eadf...ce8685`; ethereum `0x2556d7...0c0200`; ethereum `0x260e50...33b3a3`; ethereum `0x294067...9c324a`; ethereum `0x35e828...db4979`; ethereum `0x50d2ac...87491a`; ethereum `0x515e7f...10a49b`; ethereum `0x60f8bd...d2faaa`; ethereum `0x6d0ac9...39dab0`; ethereum `0x88e08a...2d1ca4`; ethereum `0xbe0eb5...87da55`; ethereum `0xc38d42...56198f`; ethereum `0xcd742f...ef5161`; ethereum `0xd41f97...6cd359`; ethereum `0xd75175...42b62d`; sonic `0x3c56ca...f5451c`; sonic `0x4081ba...b433d8`; sonic `0x7ca355...b9e569`; sonic `0xe4aff4...37bd3e`; base [`0x016c3f...2e02d0`](./contracts/base-8453/0x016c3f33a008e99ba332da0002b08521bd2e02d0/); base `0x252dae...55ca3e`; base `0x4edabe...b727a6`; base `0x52c2cf...9ca0ac`; base `0x54ddb5...a60fd5`; base `0x6786d3...b7a8ec`; base `0x74e7cb...9a0e13`; base `0xb11fe7...b2c3fd`; base `0xd1a4d1...296d5b`; base `0xe04257...a796d8`; mode `0x064efc...34f855`; mode `0xfe6d4d...1d0380`; arbitrum `0x04595a...dfce35`; arbitrum `0x185127...c09fb7`; arbitrum `0x288e94...c31f52`; arbitrum `0x491393...763d32`; arbitrum `0x4cf859...e24433`; arbitrum `0x5288e7...1ef07b`; arbitrum `0x60dc09...4a35ab`; arbitrum `0x6116b4...952b38`; arbitrum `0xce354a...07bebd`; arbitrum `0xce4ab2...eb6b6e`; arbitrum `0xe519b7...fe6f50`; arbitrum `0xf38009...e7e625`; berachain `0x4f325f...aa0320`; berachain `0xc96a6e...df3a4f` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UniswapV3Pool | core_logic | arbitrum | 5 deployments: ethereum `0x44c95b...b044a3`; ethereum `0x526800...c56b36`; ethereum `0xae7505...d79160`; base `0x5abdb2...f5a72b`; arbitrum [`0x23d177...f3f8b2`](./contracts/arbitrum-42161/0x23d17764f41aea93fdbb5beffa83571f0bf3f8b2/) | ⚠️ Unaudited |
| CLPool | core_logic | base | 3 deployments: base [`0x2787d7...f529d6`](./contracts/base-8453/0x2787d72d17db123351ebe903237e761ebcf529d6/); base `0xb0a65b...17309e`; base `0xd53398...98c37e` | ⚠️ Unaudited |
| AlgebraPool | core_logic | arbitrum | 2 deployments: arbitrum [`0x44cc8b...584a77`](./contracts/arbitrum-42161/0x44cc8b40b1483e62e59ef937441ba6aa8e584a77/); arbitrum `0xcf7145...7bd6d5` | ⚠️ Unaudited |
| ArbitragePP | unknown | ethereum | 2 deployments: ethereum [`0x26947f...944265`](./contracts/ethereum-1/0x26947f4ddccd36604b141989ebf3e66f78944265/); ethereum `0x8a581e...7e016b` | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | arbitrum | [`0x48b50c...3888a1`](./contracts/arbitrum-42161/0x48b50c792d993a56cdf23b0ad64c257f2a3888a1/) | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | ethereum | [`0x8b55d5...d4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | ⚠️ Unaudited |
| EulerFlashSource | unknown | berachain | 3 deployments: berachain [`0x17b55d...a5b610`](./contracts/berachain-80094/0x17b55d4ce08a55fe6235149d7b4fe97911a5b610/); berachain `0x93121a...a567bc`; berachain `0xeec282...03faea` | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | base | 4 deployments: base [`0x429fff...3ee7e0`](./contracts/base-8453/0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0/); base `0x5d8290...2777f8`; base `0x87f6a1...4905ee`; base `0xa89283...5f2ca0` | ⚠️ Unaudited |
| IndirectOFT | unknown | sonic | 6 deployments: sonic [`0x14dec8...4e4965`](./contracts/sonic-146/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); sonic `0x7d8c80...17755e`; base [`0x14dec8...4e4965`](./contracts/base-8453/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); mode [`0x14dec8...4e4965`](./contracts/mode-34443/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); arbitrum [`0x14dec8...4e4965`](./contracts/arbitrum-42161/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); berachain [`0x14dec8...4e4965`](./contracts/berachain-80094/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/) | ⚠️ Unaudited |
| LeverageFactory | registry | ethereum | 5 deployments: ethereum [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/); sonic `0xf2db5e...800f96`; base `0x459b54...f38d5f`; arbitrum `0x7225d7...4a1d2f`; berachain `0xe50d25...c87a72` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | base | 4 deployments: ethereum `0xff673a...c8ae2b`; sonic `0xedd48a...d55544`; base [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/); arbitrum `0x97bbe6...beccb3` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | [`0x801642...d9b433`](./contracts/ethereum-1/0x801642b6efb861fe624dad704b7a747779d9b433/) | ⚠️ Unaudited |
| PodFlashMintSource | unknown | arbitrum | 11 deployments: ethereum `0x12aa48...1a1eef`; ethereum `0x4c86a6...344350`; ethereum `0xc73c64...eda601`; sonic `0xacee05...a01ff5`; sonic `0xb2a28e...7679de`; base `0x1b59d4...af84a0`; base `0x67be5a...c101fd`; base `0xf59c79...4bcd1a`; arbitrum [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/); arbitrum `0x8cf3b7...6347e9`; berachain `0xab3104...a5c682` | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | sonic | 5 deployments: ethereum `0xace71c...959d74`; sonic [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/); base `0x76d6bb...6619c2`; arbitrum `0xcb19e5...ca8a3a`; berachain `0x4e4766...31bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | arbitrum | 5 deployments: ethereum `0x7f782f...0afeef`; ethereum `0xebebc4...159910`; sonic `0x08bafc...1de253`; base `0xaee454...757a5e`; arbitrum [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | ⚠️ Unaudited |
| ShadowDexAdapter | adapter | sonic | 3 deployments: sonic [`0x4a7687...7dcc72`](./contracts/sonic-146/0x4a76876f4c792f1de90eddac6c24b222967dcc72/); sonic `0x515e7f...10a49b`; sonic `0x652ab0...a53ffc` | ⚠️ Unaudited |
| StakingVault | core_logic | ethereum | [`0xdab175...7b1ecc`](./contracts/ethereum-1/0xdab17556ae10062f5939e56d44063c12eb7b1ecc/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x9af2bf...482606`](./contracts/ethereum-1/0x9af2bfb7117d24eb97961ce6f747cd0c80482606/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | mode | 3 deployments: mode [`0x21053b...e7a06e`](./contracts/mode-34443/0x21053b76188426e354e0fc22f3e5da8a4ae7a06e/); mode `0x30a1f8...bdb3a3`; mode `0x515e7f...10a49b` | ⚠️ Unaudited |
| V3TwapKodiakUtilities | unknown | berachain | [`0x0b025c...29adcc`](./contracts/berachain-80094/0x0b025cfe2ecc57a62864d823aef6c6a78629adcc/) | ⚠️ Unaudited |
| V3TwapShadowUtilities | unknown | sonic | 2 deployments: sonic [`0x041482...3a3f52`](./contracts/sonic-146/0x041482b897b96eb4525da1449ec99978263a3f52/); sonic `0x694a36...f36635` | ⚠️ Unaudited |
| WeightedIndexFactory | registry | ethereum | 7 deployments: ethereum [`0x1a3f5e...48b5cd`](./contracts/ethereum-1/0x1a3f5e320b86293017b6e36b75eb9e8bb048b5cd/); sonic `0x983853...e2e971`; sonic `0xeebb4b...054ae2`; base `0x389ac6...5eee89`; mode `0x317531...8e2595`; arbitrum `0xae2cb5...46985c`; berachain `0xbd6e75...7ea680` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LeveragePositions | unknown | sonic | 2 deployments: sonic [`0x26947f...944265`](./contracts/sonic-146/0x26947f4ddccd36604b141989ebf3e66f78944265/); berachain `0xf290d5...9beb16` | ✅ Audited (bytecode match) |
| VariableInterestRate | operational_periphery | base | 17 deployments: ethereum `0x4e8d33...28e888`; ethereum `0x638050...f8acd0`; ethereum `0x823e88...dfded0`; ethereum `0x8cec61...79bc27`; ethereum `0xa8afef...fe9c94`; sonic `0x87b05f...776cfa`; sonic `0xbde78e...7f44f2`; base [`0x11c96e...de5064`](./contracts/base-8453/0x11c96ef61b7c08f1eedab3ee141a4b10eade5064/); base `0x4777f8...8df291`; base `0x5288e7...1ef07b`; base `0x544361...000a81`; base `0xb38177...450869`; arbitrum `0x28da3f...f0519d`; arbitrum `0x41799b...a48310`; arbitrum `0x769707...6ea044`; arbitrum `0x8b6018...fde9ca`; arbitrum `0xf0f08c...a8923a` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| aspTKNMinimalOracleFactory | unknown | base | 25 deployments: ethereum `0x24df48...6c71cb`; ethereum `0x40b7b0...d275e2`; ethereum `0x62f95a...f8c621`; ethereum `0x7b68b5...30adbe`; ethereum `0x938afc...4ef794`; ethereum `0xa4bc13...5d827b`; sonic `0x26134a...7dadf9`; sonic `0x37a7fc...ee0764`; sonic `0x46f081...9f33d0`; sonic `0xa922ad...d9c6dd`; base [`0x0fc6ca...6a608d`](./contracts/base-8453/0x0fc6ca1ad988bb08111584b419ea21519d6a608d/); base `0x25b9dd...0fdb8d`; base `0x39d284...58d2fb`; base `0xa24b7c...a068e2`; base `0xc2b0a3...e62374`; base `0xeed5e9...2d0a67`; mode `0xf29778...97d168`; arbitrum `0x186dfe...3c2f80`; arbitrum `0x5c9715...98305e`; arbitrum `0x73a97a...403c1c`; arbitrum `0x9c2ef6...256aa2`; arbitrum `0xcd64e9...213f5e`; arbitrum `0xd8eea1...d6759b`; berachain `0x903016...4fe622`; berachain `0xc2d75b...45e140` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f) | proxy | sonic | `0x4f325f...aa0320` | ❓ Unverified |
| Proxy (impl: 0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f) | proxy | sonic | `0xa4f43c...e63044` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c4b19...118b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e0f52...d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x120109...8832d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1686b6...8ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f422d...c9190b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27d809...010f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45c4ad...572611` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48b50c...3888a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a7687...7dcc72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50e6f9...85301d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55af47...40bf76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6974a9...08ab8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7581f7...9f37ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84e4b1...42a1d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88c6ee...df3db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9acabc...a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb58556...d33c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbfb4ca...60f75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc58941...e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb5cc2...1fd598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb2d4c...ff3ba3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2315f...0361f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0f7650...44471d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1ce46d...b4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x21eadf...ce8685` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x294067...9c324a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2d2d83...e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4dd1a2...ae0ba0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x66d39b...daf291` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8e9b4d...4eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa3d59c...9bb656` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc4ba49...1ae039` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc96a6e...df3a4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xef6ca1...601734` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf79e97...c598bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x074686...db649a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0d05d3...265a51` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x264509...b96ed3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x336836...35d16b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x363c8a...4e75fd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x37e845...7a8390` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x50e6f9...85301d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x56427d...eb2c95` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x62603f...34668c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x652ab0...a53ffc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x667487...327e37` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x694a36...f36635` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b0079...125714` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87875d...d958c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x88f19d...1625ff` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x915b8f...fb2268` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x929f65...07eddf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaad319...e3824c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac4050...93cbf1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc97938...253fb7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcd8a57...a55797` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x54f0b2...1b9243` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xbf9d21...546855` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x027ce4...f9b1c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x08bafc...1de253` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17b55d...a5b610` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a1bf8...53dd98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x700bad...c2d0cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8afee0...002caf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb56fce...7b314f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc91104...65fc6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdeb779...ed83d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe4abbe...003fba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe7caed...dfc805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf79e47...1dd261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0ada7a...a13ed6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0d9d37...57b0cd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x31e355...6ab82d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4c7378...0ddc21` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa415a0...957cdf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | contract_name | 133 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 21 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | contract_name | 142 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | contract_name | 216 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x26947f...944265`](./contracts/ethereum-1/0x26947f4ddccd36604b141989ebf3e66f78944265/) | ArbitragePP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fc6ca...6a608d`](./contracts/base-8453/0x0fc6ca1ad988bb08111584b419ea21519d6a608d/) | aspTKNMinimalOracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b55d5...d4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | DIAMultiFeedConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/) | LeverageFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/) | LeverageFeeProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | PodFlashMintSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/) | PodUnwrapLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | PodVaultUtility | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdab175...7b1ecc`](./contracts/ethereum-1/0xdab17556ae10062f5939e56d44063c12eb7b1ecc/) | StakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0b025c...29adcc`](./contracts/berachain-80094/0x0b025cfe2ecc57a62864d823aef6c6a78629adcc/) | V3TwapKodiakUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x041482...3a3f52`](./contracts/sonic-146/0x041482b897b96eb4525da1449ec99978263a3f52/) | V3TwapShadowUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a3f5e...48b5cd`](./contracts/ethereum-1/0x1a3f5e320b86293017b6e36b75eb9e8bb048b5cd/) | WeightedIndexFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 93 |
| upstream | 10 |
| standard_library | 3 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=512

Fork inheritance lineage and inherited audits are included when available.
