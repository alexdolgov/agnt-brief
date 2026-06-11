# Agentic Audit Brief: Wombat Exchange

⚠️ Lifecycle status: DECLINING - TVL dropped 54.5% over 90 days

## Project Overview

- Project: Wombat Exchange (`wombat-exchange`)
- Website: [https://www.wombat.exchange/](https://www.wombat.exchange/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-11T04:08:45.833Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon, scroll
- Contract surface: 96 unique implementations (714 raw deployments)
- DeFi Llama TVL: $1,648,226.03
- On-chain TVL (included contracts): $817,605.83
- TVL by chain: Bsc $769,782.30 | Arbitrum $35,281.54 | Ethereum $12,541.99

## Project Description

Wombat Exchange is a multi-chain decentralized exchange and cross-chain swap/bridge platform focused on stablecoin and liquid staking token swaps with low slippage using a single-sided liquidity AMM design. It also supports aggregator-style routing for swaps and uses WOM and veWOM governance with emissions and bribe incentives for liquidity direction.

### Architecture

Pools rely on Governance for parameter control and emission rates, while Bribes and Rewarders incentivize liquidity direction and provider participation. Cross-chain functionality is enabled through WormholeAdaptor and CrossChainPool contracts, with Treasury securing protocol funds.

## Audit Coverage Summary

- Verified implementations audited: 18/55 (32.7%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 5
- Unverified implementations: 41
- Unique implementations: 96
- Raw deployments: 714
- Audits discovered: 11
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): $47,823.53
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 10 stale, 0 unknown
- Tier 1 coverage: 7.3% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $47,823.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 14 | 25.5% | 2024-08 |
| Zokyo | Tier 2 | 7 | 12.7% | 2023-09 |
| SlowMist | Tier 1 | 4 | 7.3% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WombatERC20 | token | bsc | [`0xad6742...b94fb1`](./contracts/bsc-56/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1/) | ✅ Audited |
| Asset | unknown | optimism | 114 deployments: ethereum `0x04d4e1...8d563d`; ethereum `0x3c64d9...61b453`; ethereum `0x3f90a5...3d2d9d`; ethereum `0x4dfa92...7b7e12`; ethereum `0x5dace2...c7bea7`; ethereum `0x62a83c...b6b6f4`; ethereum `0x696655...49c7d3`; ethereum `0x6c7b40...d378ce`; ethereum `0x752945...601c95`; ethereum `0x7bb67c...1dcdba`; ethereum `0xb1583d...e2d427`; ethereum `0xb82631...4a8cc8`; optimism [`0x0321d1...740f86`](./contracts/optimism-10/0x0321d1d769cc1e81ba21a157992b635363740f86/); optimism `0x124911...ed89d3`; optimism `0x20d7ee...7302f1`; optimism `0x2943f5...72936e`; optimism `0x375883...9ac624`; optimism `0x4705b4...b46134`; optimism `0x49db5f...523330`; optimism `0x8f5e6f...3b62de`; optimism `0x96b1b2...69f197`; optimism `0xd05cf2...11e47b`; optimism `0xe314d3...7f9b2c`; optimism `0xe933e2...0f762e`; optimism `0xee9b42...9750cd`; bsc `0x082059...8c9078`; bsc `0x17aded...163500`; bsc `0x184eb7...d96f75`; bsc `0x1f502f...f6723e`; bsc `0x1fa71d...e0d38b`; bsc `0x24a70c...2ba073`; bsc `0x34e109...390b57`; bsc `0x3a29df...de962d`; bsc `0x3ac762...86b490`; bsc `0x3c42e4...78d688`; bsc `0x3c8e74...a05367`; bsc `0x47ab51...c371eb`; bsc `0x4968e2...05d2e6`; bsc `0x4d1ba7...0e2113`; bsc `0x4f95fe...b988f7`; bsc `0x591ccb...70ef87`; bsc `0x61e338...345752`; bsc `0x681124...3cd685`; bsc `0x6b6006...a1cc95`; bsc `0x6b98d2...3d1b8c`; bsc `0x77f645...927391`; bsc `0x791b24...5d7946`; bsc `0x7ff1ae...905e8f`; bsc `0x87073b...c120e4`; bsc `0x8df8b5...67b3ce`; bsc `0x93012a...98abbc`; bsc `0x9d0a46...15dd84`; bsc `0x9f9cea...8fda82`; bsc `0xa393d6...2f1a6e`; bsc `0xa45c0a...ba3800`; bsc `0xa649be...661c1a`; bsc `0xa6ef6c...1603e5`; bsc `0xad87cb...d930d6`; bsc `0xb43ee2...00b8e2`; bsc `0xb5c936...48bcf8`; bsc `0xc74a9d...1133cb`; bsc `0xc7a628...f38e43`; bsc `0xcec37c...62279b`; bsc `0xcf4349...efb015`; bsc `0xd55d01...87a521`; bsc `0xeaba29...e68ac2`; bsc `0xf31994...25745a`; bsc `0xf9bdc8...653cac`; base `0x375883...9ac624`; base `0xd05cf2...11e47b`; base `0xe07829...2036d8`; base `0xe2a60c...9dbc67`; arbitrum `0x06228b...2e48b5`; arbitrum `0x08c6e9...d3fd4d`; arbitrum `0x0f959d...6d4d2d`; arbitrum `0x0fa7b7...e73055`; arbitrum `0x191601...ad205b`; arbitrum `0x1bd8ce...a18eeb`; arbitrum `0x278c01...ad9d07`; arbitrum `0x2977b0...66cfd9`; arbitrum `0x35876f...dc6563`; arbitrum `0x4552e8...e65c1f`; arbitrum `0x502a88...abd3a2`; arbitrum `0x51880c...025d0a`; arbitrum `0x59d8dc...350769`; arbitrum `0x5ad0b6...b01266`; arbitrum `0x625b37...01f08b`; arbitrum `0x6add07...bf42c8`; arbitrum `0x6b7c9d...18c7b2`; arbitrum `0x75eaa8...6235fe`; arbitrum `0x7a8ce2...d1a59a`; arbitrum `0x7e2957...7458bc`; arbitrum `0x85cebd...6af003`; arbitrum `0x878004...5ed525`; arbitrum `0x9121af...3c6be2`; arbitrum `0x9a2405...3e975d`; arbitrum `0xb1ad5c...06c3d9`; arbitrum `0xb4beb0...c336fb`; arbitrum `0xb75ed9...aa0fd9`; arbitrum `0xb9e272...f5612b`; arbitrum `0xbcd5e8...1ebd6e`; arbitrum `0xbcf4c3...47a661`; arbitrum `0xc74a9d...1133cb`; arbitrum `0xdce5e1...cf3816`; arbitrum `0xdddc78...900145`; arbitrum `0xe5232c...fb2e43`; arbitrum `0xef9187...df2486`; arbitrum `0xf4b72e...2e4505`; avalanche `0x375883...9ac624`; avalanche `0x8b2ab4...18a09d`; avalanche `0xab8d5b...7dda0d`; avalanche `0xd05cf2...11e47b`; scroll `0xe2a60c...9dbc67`; scroll `0xe43c16...553c21` | ✅ Audited |
| CrossChainPool | core_logic | bsc | 8 deployments: ethereum `0xa45c0a...ba3800`; ethereum `0xddc2c2...ed13d1`; optimism `0x50a39b...c5bd10`; optimism `0xa1acc6...fa2acf`; bsc [`0x1ee156...754bef`](./contracts/bsc-56/0x1ee15673e07105bcf360139fa8cafebdd7754bef/); bsc `0x35560d...d60482`; arbitrum `0xe1c846...f1f454`; arbitrum `0xe78876...1b1145` | ✅ Audited |
| GovernedPriceFeed | operational_periphery | arbitrum | 3 deployments: optimism `0xb98ab9...bc04af`; bsc `0xdd29f2...73fa01`; arbitrum [`0x1d15c4...918797`](./contracts/arbitrum-42161/0x1d15c46e75cc006490c356d29ff357a647918797/) | ✅ Audited |
| MasterWombatV3 | unknown | bsc | 7 deployments: ethereum `0xe85f62...5e0c73`; optimism `0x34e2f9...37f873`; optimism `0xd0599d...c83786`; bsc [`0x0020a8...680db6`](./contracts/bsc-56/0x0020a8890e723cd94660a5404c4bccbb91680db6/); bsc `0x55e4ac...57fe7b`; bsc `0x724515...548068`; arbitrum `0xb789d4...6273db` | ✅ Audited |
| MultiRewarderPerSec | unknown | bsc | 86 deployments: ethereum `0x08401f...8880ed`; ethereum `0x124911...ed89d3`; ethereum `0x1f0ae4...4b09b2`; ethereum `0x408411...9892a1`; ethereum `0x49db5f...523330`; ethereum `0x8843b0...345efb`; ethereum `0x8df112...1adbae`; ethereum `0xa0e74f...61025a`; ethereum `0xa2cbe3...ad2f40`; ethereum `0xc693f3...113c82`; ethereum `0xe9e88b...1df733`; bsc [`0x04299f...15ffa4`](./contracts/bsc-56/0x04299f69b567c6c8dc49162138e0ba32cd15ffa4/); bsc `0x053cd9...19435f`; bsc `0x06228b...2e48b5`; bsc `0x1028a4...1970ca`; bsc `0x129021...f26abb`; bsc `0x1cbb0f...ef4497`; bsc `0x1e9c11...23ea23`; bsc `0x1f7701...efbd3d`; bsc `0x28edda...5f95af`; bsc `0x2d334b...4d0194`; bsc `0x2dc5c0...a27501`; bsc `0x2e14e0...d7e3bc`; bsc `0x322412...f7a986`; bsc `0x36d775...f2e47f`; bsc `0x414d1a...b53976`; bsc `0x437ddb...51d0de`; bsc `0x44b597...7068e4`; bsc `0x54ed8b...b37610`; bsc `0x5ab8f0...c6a62d`; bsc `0x5d0f17...8408e6`; bsc `0x5f027a...26653c`; bsc `0x624be6...eb1e26`; bsc `0x64907b...056870`; bsc `0x6521a5...86cd7b`; bsc `0x71e41c...03e623`; bsc `0x75eaa8...6235fe`; bsc `0x790328...bfd46f`; bsc `0x7a8faa...c6e38e`; bsc `0x7db1b5...d3a1c1`; bsc `0x83bc71...7d20f8`; bsc `0x946207...e84a98`; bsc `0x98e6e3...d3b246`; bsc `0x9d4816...f88ba2`; bsc `0xa12ba2...695502`; bsc `0xa2ccca...642d96`; bsc `0xb06b2e...1828b2`; bsc `0xb7526e...140a84`; bsc `0xb94667...76ad6c`; bsc `0xbd28fb...315f0f`; bsc `0xbda432...c558a6`; bsc `0xc4b2f9...580668`; bsc `0xc7fbef...cfcd6c`; bsc `0xc9bfc3...7e5d1a`; bsc `0xd29b3e...10ca01`; bsc `0xd2d1e5...27207b`; bsc `0xd570f7...3d53dd`; bsc `0xe4fd5d...6c76bd`; bsc `0xe61f78...2fd5d0`; bsc `0xefdec2...d5fc5f`; bsc `0xf3acb2...d80b14`; bsc `0xf7ab0d...6559d0`; bsc `0xf81216...2bc77d`; arbitrum `0x0e2d70...a78278`; arbitrum `0x1242fb...4837d0`; arbitrum `0x1c18aa...ba7dfe`; arbitrum `0x2201ea...e0c138`; arbitrum `0x2980fc...87cee1`; arbitrum `0x49ea55...3eac51`; arbitrum `0x4e811c...dca968`; arbitrum `0x5c85ed...9b9a41`; arbitrum `0x5d5b2b...b9ba76`; arbitrum `0x6001f4...631bb9`; arbitrum `0x6569dd...8940f3`; arbitrum `0x72b46b...ecb2ef`; arbitrum `0x75196f...3f084b`; arbitrum `0x7cb260...17e154`; arbitrum `0x9ad594...22b689`; arbitrum `0xa9a081...cd23cc`; arbitrum `0xdab44b...0335bc`; arbitrum `0xeb87bf...8bc480`; arbitrum `0xf01d86...5ff081`; arbitrum `0xf1db5b...7de18d`; arbitrum `0xf37f78...d88836`; arbitrum `0xf9cdc1...8cfcf6`; arbitrum `0xffc6e8...1932f1` | ✅ Audited |
| Pool | core_logic | bsc | 2 deployments: bsc [`0x2c3c34...bebd20`](./contracts/bsc-56/0x2c3c340233338d875637304b06f4f6faf9bebd20/); bsc `0x5d2390...524572` | ✅ Audited |
| PriceFeedAsset | operational_periphery | arbitrum | 2 deployments: bsc `0xa9a081...cd23cc`; arbitrum [`0x2a2020...346aaa`](./contracts/arbitrum-42161/0x2a20202a6f740200ba188f6d72fa72a08a346aaa/) | ✅ Audited |
| SkimmableAsset | unknown | arbitrum | 5 deployments: bsc `0x88beb1...b87117`; bsc `0xbd459e...c273b1`; arbitrum [`0x51e073...769606`](./contracts/arbitrum-42161/0x51e073d92b0c226f7b0065909440b18a85769606/); arbitrum `0xbd7568...fa35f0`; arbitrum `0xf9c235...82a274` | ✅ Audited |
| TokenVesting | operational_periphery | bsc | 3 deployments: bsc [`0x1e8cbd...8f7fed`](./contracts/bsc-56/0x1e8cbd5c936a1cac223ea51859fd343aa38f7fed/); bsc `0x297622...534fd9`; bsc `0x45a51a...687d29` | ✅ Audited |
| VeWom | unknown | bsc | 5 deployments: bsc [`0x3da628...b5b0cc`](./contracts/bsc-56/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc/); bsc `0x3fef8c...d75d00`; bsc `0x4c2542...8bb1b4`; arbitrum `0x4a88c4...df76cd`; arbitrum `0xc06a59...e4f8b2` | ✅ Audited |
| Voter | unknown | bsc | 11 deployments: ethereum `0x32a936...09442c`; ethereum `0x4a8686...5296e0`; bsc [`0x04d4e1...8d563d`](./contracts/bsc-56/0x04d4e1c1f3d6539071b6d3849fdaed04d48d563d/); bsc `0x3d64a3...b6ebf8`; bsc `0x4e811c...dca968`; bsc `0x4f5fa1...4fc467`; bsc `0x9da4ed...ea5725`; bsc `0xd05cf2...11e47b`; arbitrum `0x34e2f9...37f873`; arbitrum `0x3f90a5...3d2d9d`; arbitrum `0x8e537f...4f3f74` | ✅ Audited |
| WombatRouter | adapter | scroll | 11 deployments: ethereum `0x6bb82a...a0f919`; optimism `0x35d531...8bdf79`; optimism `0x9a6578...f2735d`; bsc `0x19609b...a4add7`; bsc `0x9e22bd...0c6e03`; base `0x4a88c4...df76cd`; arbitrum `0x479be5...8706a4`; arbitrum `0x9da4ed...ea5725`; arbitrum `0xc4b2f9...580668`; avalanche `0x4a88c4...df76cd`; scroll [`0x010931...f78959`](./contracts/scroll-534352/0x010931d4d82ff3f5ae8bd94e0752570711f78959/) | ✅ Audited |
| WormholeAdaptor | unknown | bsc | 7 deployments: ethereum `0xaceb58...3419ca`; optimism `0x3ccc0d...ff463e`; bsc [`0x191601...ad205b`](./contracts/bsc-56/0x191601af39927ba165bf89b238bfbf615bad205b/); polygon `0xd05cf2...11e47b`; base `0x489833...c95830`; arbitrum `0xdaa191...170211`; avalanche `0x489833...c95830` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenImplementation | token | arbitrum | 4 deployments: ethereum `0xc0b314...540cfb`; optimism `0xd2612b...13a668`; base `0xd9541b...235d64`; arbitrum [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | ⚠️ Unaudited |
| ABnbcAsset | unknown | bsc | 2 deployments: bsc [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/); bsc `0xb6d83f...f8855f` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | bsc | 2 deployments: bsc [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/); arbitrum `0x229028...f3f2c4` | ⚠️ Unaudited |
| BnbxAsset | unknown | bsc | 4 deployments: bsc [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/); bsc `0x16b372...a509a7`; bsc `0x37fa82...fc6698`; bsc `0x5d64ed...060f4a` | ⚠️ Unaudited |
| BoostedMasterWombat | unknown | optimism | 17 deployments: ethereum `0x820eac...5c1c45`; ethereum `0xc9bfc3...7e5d1a`; optimism [`0x25c9dd...04c914`](./contracts/optimism-10/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/); optimism `0x6e2db1...f2d83d`; optimism `0x8240aa...f6ac24`; optimism `0x82e62f...541518`; bsc `0x26d67a...1a1933`; bsc `0x489833...c95830`; polygon `0x2722fe...3de182`; polygon `0xc6bc78...ba6cd1`; polygon `0xe85f62...5e0c73`; base `0x2722fe...3de182`; base `0x6521a5...86cd7b`; arbitrum `0x62a83c...b6b6f4`; arbitrum `0xee88c3...b0dea9`; avalanche `0x2722fe...3de182`; avalanche `0x6521a5...86cd7b` | ⚠️ Unaudited |
| Bribe | operational_periphery | bsc | 90 deployments: bsc [`0x015542...bece5e`](./contracts/bsc-56/0x015542b048c4711c52791346247187b5ccbece5e/); bsc `0x048dc3...118047`; bsc `0x08401f...8880ed`; bsc `0x09da88...6705f9`; bsc `0x0aadde...d4744f`; bsc `0x18022e...229c51`; bsc `0x1a4557...56dce7`; bsc `0x20d7b9...a6ecd1`; bsc `0x251577...7a5c9b`; bsc `0x27306b...7ece80`; bsc `0x299642...143b6b`; bsc `0x2c0d2b...207d86`; bsc `0x32816b...376dbb`; bsc `0x3f9ec2...7e61c8`; bsc `0x401384...71b804`; bsc `0x408411...9892a1`; bsc `0x47a881...887d6c`; bsc `0x4d3f5c...900e17`; bsc `0x51655b...fa0101`; bsc `0x51abd2...ef52bd`; bsc `0x52eb70...b2e3d9`; bsc `0x5cc2cb...24031a`; bsc `0x5e5dcb...d3092a`; bsc `0x60aca4...52e1bd`; bsc `0x6aa55c...10e046`; bsc `0x6dd711...782b0b`; bsc `0x7dc7e9...489649`; bsc `0x7f95d3...2202c4`; bsc `0x810287...c67e4a`; bsc `0x861c50...fe2320`; bsc `0x8779d3...a301b1`; bsc `0x8dc7b0...e87b47`; bsc `0x8e926c...167826`; bsc `0x92e8b5...870dcb`; bsc `0x966c37...e71c01`; bsc `0xab7700...3ab145`; bsc `0xaceb58...3419ca`; bsc `0xb2a48d...a655bc`; bsc `0xbd4420...ec77de`; bsc `0xbefb02...6f6091`; bsc `0xc007e8...73676f`; bsc `0xc4992f...74afaf`; bsc `0xc609e2...99fa14`; bsc `0xc7a6ba...431974`; bsc `0xcc24ac...257838`; bsc `0xcd69ca...19e8fe`; bsc `0xcf2e56...2f0536`; bsc `0xd66fe4...2e717d`; bsc `0xd80356...382915`; bsc `0xd8e4fd...f22c10`; bsc `0xdaa336...0a7efa`; bsc `0xdfba6a...b20f1d`; bsc `0xe23753...a0c1cb`; bsc `0xe2a60c...9dbc67`; bsc `0xebb710...66b874`; bsc `0xede96f...a48ab3`; bsc `0xf80722...8de4d2`; arbitrum `0x096f99...4d7b24`; arbitrum `0x153e4b...b17252`; arbitrum `0x19f477...13d3b3`; arbitrum `0x1edfa9...15bf03`; arbitrum `0x259ccd...1a33ee`; arbitrum `0x2badcc...2020f2`; arbitrum `0x332430...7ae41e`; arbitrum `0x381692...58b54c`; arbitrum `0x4ce537...7a08ba`; arbitrum `0x4f7f9b...b52ac2`; arbitrum `0x5a65cb...d2de8b`; arbitrum `0x5fb522...562f54`; arbitrum `0x6f70c8...6ae695`; arbitrum `0x765fda...075543`; arbitrum `0x7b6041...5b7c64`; arbitrum `0x7c9b17...bc11ad`; arbitrum `0x8b892b...cde060`; arbitrum `0x8cd967...6980de`; arbitrum `0x8e16b6...7f8561`; arbitrum `0x8f5e6f...3b62de`; arbitrum `0x96412c...a3791a`; arbitrum `0x9f3f1e...140655`; arbitrum `0xa1fdb8...692979`; arbitrum `0xa2cbe3...ad2f40`; arbitrum `0xb02035...8d481d`; arbitrum `0xce2bb4...38549a`; arbitrum `0xd2592e...e95835`; arbitrum `0xd58d5e...b163ba`; arbitrum `0xd6d42c...d5d82d`; arbitrum `0xdc82b7...419d5f`; arbitrum `0xe3c747...5b8e17`; arbitrum `0xe933e2...0f762e`; arbitrum `0xf76009...9b35d0` | ⚠️ Unaudited |
| BribeRewarderFactory | operational_periphery | optimism | 11 deployments: ethereum `0xa67423...97897a`; ethereum `0xcd69ca...19e8fe`; optimism [`0x160ee9...511a97`](./contracts/optimism-10/0x160ee9edb41d241fcaf4ea8fedb64aa9a8511a97/); optimism `0xcd69ca...19e8fe`; bsc `0x7cb260...17e154`; bsc `0xf53811...4dabdb`; base `0xf8e32c...160734`; arbitrum `0x25e08a...a6f3e1`; arbitrum `0x97e4f5...91d81f`; avalanche `0x8240aa...f6ac24`; avalanche `0xe5e368...62e44c` | ⚠️ Unaudited |
| BribeV2 | operational_periphery | base | 10 deployments: ethereum `0x986237...e23bfb`; optimism `0x51abd2...ef52bd`; bsc `0x3f2e97...05c05d`; bsc `0x407c0f...a1810e`; bsc `0x4cbdc4...1e451f`; bsc `0x7e9fab...adab55`; bsc `0x919a70...069c71`; base [`0x1414cd...b4f8f8`](./contracts/base-8453/0x1414cd7f8e384b875bfbbabcacaae592c2b4f8f8/); arbitrum `0xb29ff5...0fb826`; avalanche `0x84d090...66928e` | ⚠️ Unaudited |
| DynamicAsset | unknown | bsc | 25 deployments: ethereum `0x724515...548068`; ethereum `0x75eaa8...6235fe`; ethereum `0x94019d...760524`; ethereum `0xc096ff...a5a9fa`; bsc [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/); bsc `0x0e99fb...cc5760`; bsc `0x4447de...8a5ac6`; bsc `0x4d41e9...b8e67e`; bsc `0x5a65cb...d2de8b`; bsc `0x5d38a3...91df38`; bsc `0x6c7b40...d378ce`; bsc `0x74f019...092c5b`; bsc `0x90f6f0...2b5201`; bsc `0x934d5c...3b7211`; bsc `0xb268c3...1656e3`; bsc `0xd67ede...7e5bb9`; bsc `0xdfde04...b2a9b3`; bsc `0xe0e763...ba83ec`; bsc `0xe40048...bc199c`; arbitrum `0x35c462...1bc6ac`; arbitrum `0x468830...350978`; arbitrum `0x696655...49c7d3`; arbitrum `0x909715...f19108`; arbitrum `0xe62880...be798d`; avalanche `0x29eeb2...18ec91` | ⚠️ Unaudited |
| DynamicPool | core_logic | bsc | [`0x2b1878...44984f`](./contracts/bsc-56/0x2b187882073dccec42fa9a992c8a54e14b44984f/) | ⚠️ Unaudited |
| DynamicPoolV2 | core_logic | bsc | 38 deployments: ethereum `0x3161f4...16e854`; ethereum `0x5fabce...376454`; ethereum `0x647cc8...d5ac81`; ethereum `0xf8e32c...160734`; optimism `0x0700ad...4eb4a4`; optimism `0xb86ba6...8fcafa`; bsc [`0x0029b7...9d4183`](./contracts/bsc-56/0x0029b7e8e9ed8001c868aa09c74a1ac6269d4183/); bsc `0x024d75...b1f29b`; bsc `0x059208...ccc348`; bsc `0x108c99...9b3c02`; bsc `0x1b507b...276d35`; bsc `0x2ea772...ac5da4`; bsc `0x644c27...44af5d`; bsc `0x6c528b...71ee9e`; bsc `0x6f1c68...ad5bfa`; bsc `0x866f96...7e1a18`; bsc `0x8b892b...cde060`; bsc `0x8df112...1adbae`; bsc `0xa3f645...c14f6c`; bsc `0xa874c8...c7c7f5`; bsc `0xb0219a...01edb0`; bsc `0xb7df4a...2db80f`; bsc `0xbed9b7...297b80`; bsc `0xf1e604...bf3fef`; bsc `0xf2fd53...b36b68`; arbitrum `0x10c13d...bd58bf`; arbitrum `0x201872...e22c8a`; arbitrum `0x20d7ee...7302f1`; arbitrum `0x3dbf3e...7110fb`; arbitrum `0x4d1cc8...087053`; arbitrum `0x7585ba...59c11b`; arbitrum `0xb9bdfe...5db77b`; arbitrum `0xc7a6ba...431974`; arbitrum `0xe14302...9358d9`; avalanche `0x640e7e...f78f47`; avalanche `0xbba437...7aeb77`; avalanche `0xc12c0c...f362d0`; avalanche `0xe3abc2...069d87` | ⚠️ Unaudited |
| ERC4626Asset | unknown | ethereum | 2 deployments: ethereum [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/); ethereum `0x51e073...769606` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x5781b4...b353b1`](./contracts/ethereum-1/0x5781b4fe4fadb61ea2483eedd9498388f9b353b1/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | 3 deployments: bsc [`0xc37a89...aadf48`](./contracts/bsc-56/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/); arbitrum [`0xc37a89...aadf48`](./contracts/arbitrum-42161/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/); scroll `0xdcc1ec...0732b7` | ⚠️ Unaudited |
| HighCovRatioFeePool | core_logic | bsc | 11 deployments: bsc [`0x083640...2f9f55`](./contracts/bsc-56/0x083640c5dbd5a8ddc30100fb09b45901e12f9f55/); bsc `0x2c5464...fd7955`; bsc `0x48f6a8...9f2a14`; bsc `0x6adb50...a7ebf5`; bsc `0x8e4a50...fcb182`; bsc `0x90aea5...f7898d`; bsc `0x9a59f5...c73ba6`; bsc `0x9a5d0d...a510e0`; bsc `0x9ea89d...35cd36`; bsc `0xc5fb02...90fe13`; bsc `0xee48cc...3e715f` | ⚠️ Unaudited |
| HighCovRatioFeePoolV2 | core_logic | ethereum | 77 deployments: ethereum [`0x0020a8...680db6`](./contracts/ethereum-1/0x0020a8890e723cd94660a5404c4bccbb91680db6/); ethereum `0x05a33c...8f4d32`; ethereum `0x4705b4...b46134`; ethereum `0x9c02ea...df25cc`; ethereum `0xcf2e56...2f0536`; ethereum `0xe43c16...553c21`; optimism `0x06228b...2e48b5`; optimism `0x1a0231...0c6fbd`; optimism `0x489818...ad3d01`; optimism `0x4f0ef2...c50122`; optimism `0x6373d1...558741`; optimism `0x6bb82a...a0f919`; optimism `0x6f8ad3...bb266b`; optimism `0x7b1f9c...839623`; optimism `0x7b74ab...d15ea5`; optimism `0x983ce4...1b1372`; optimism `0xc9bfc3...7e5d1a`; optimism `0xe85f62...5e0c73`; bsc `0x052045...fc74b2`; bsc `0x05f727...ead09a`; bsc `0x0c735f...6c41de`; bsc `0x141298...561e98`; bsc `0x1ff949...179503`; bsc `0x2120c8...9436b4`; bsc `0x277e77...33c903`; bsc `0x312bc7...055fb0`; bsc `0x342126...1f175b`; bsc `0x4dfa92...7b7e12`; bsc `0x6569dd...8940f3`; bsc `0x804585...b658f1`; bsc `0x8ad47d...a49da2`; bsc `0x949856...6c201c`; bsc `0x9a39f4...5f3d28`; bsc `0xa61dcc...9b8c27`; bsc `0xa8202e...4db947`; bsc `0xb0d508...801043`; bsc `0xb8b1b7...f9f684`; bsc `0xc26b7c...945a2c`; bsc `0xc897a2...914a9f`; bsc `0xcd3227...3cda5c`; bsc `0xde509f...626dae`; bsc `0xea6cdd...fa7892`; bsc `0xeeb5a7...67ce2e`; bsc `0xf84c59...5cc9de`; bsc `0xfa5b5b...495035`; bsc `0xfcd11c...038d46`; base `0x20d7b9...a6ecd1`; base `0x9a59f5...c73ba6`; arbitrum `0x12fa5a...0af978`; arbitrum `0x29eeb2...18ec91`; arbitrum `0x30e27c...1f554c`; arbitrum `0x3257ea...27a3b1`; arbitrum `0x38d225...36d5ad`; arbitrum `0x3cc8c8...044d4b`; arbitrum `0x3ccc0d...ff463e`; arbitrum `0x3fa1af...e2099b`; arbitrum `0x44a0e2...a3a642`; arbitrum `0x4a8686...5296e0`; arbitrum `0x6a4b59...61f5e1`; arbitrum `0x82e62f...541518`; arbitrum `0x90ecdd...a338b6`; arbitrum `0x917caf...214c1a`; arbitrum `0x956454...370401`; arbitrum `0x9cbee5...105dee`; arbitrum `0xa6ef6c...1603e5`; arbitrum `0xb8fe07...a1abdd`; arbitrum `0xbed050...c7927d`; arbitrum `0xc096ff...a5a9fa`; arbitrum `0xc6bc78...ba6cd1`; arbitrum `0xcf20fd...9e4849`; arbitrum `0xd64816...8305f3`; arbitrum `0xe7159f...c56f48`; arbitrum `0xee9b42...9750cd`; avalanche `0x108c99...9b3c02`; avalanche `0x74163b...b739e9`; avalanche `0x911a98...c4223b`; avalanche `0xe5232c...fb2e43` | ⚠️ Unaudited |
| jUsdcAsset | unknown | arbitrum | [`0xde509f...626dae`](./contracts/arbitrum-42161/0xde509fe1555ab907e5c29f987ba0be1ac0626dae/) | ⚠️ Unaudited |
| MasterWombatV2 | unknown | bsc | 3 deployments: bsc [`0x6cff94...88fe8e`](./contracts/bsc-56/0x6cff948ccce8dc7eba0dda3b1818298e2088fe8e/); bsc `0x96ed73...c54e82`; bsc `0xe2c07d...31f9c8` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | bsc | 16 deployments: bsc [`0x0bd067...ec28cf`](./contracts/bsc-56/0x0bd0676bacc1c4fc838a1237a12df9eae7ec28cf/); bsc `0x440897...c5f52a`; bsc `0x65b5a2...41916d`; bsc `0x79c8e1...ce5993`; bsc `0x915c87...ad24bb`; bsc `0x93cbcf...eb3827`; bsc `0x99f76c...70c486`; bsc `0xc2c94d...f21da0`; bsc `0xd7d1b4...b1d2ff`; bsc `0xda231d...81c93e`; bsc `0xe8a3d6...4388ca`; bsc `0xeb22c7...7d3965`; bsc `0xf9cdc1...8cfcf6`; arbitrum `0x423fa1...0628a6`; arbitrum `0x810287...c67e4a`; arbitrum `0xf2bd16...7099e7` | ⚠️ Unaudited |
| MerkleDistributorAdaptor | operational_periphery | arbitrum | 3 deployments: bsc `0x4d210b...82945c`; arbitrum [`0x2740f3...7fbe09`](./contracts/arbitrum-42161/0x2740f3ecb90e2afbcff63077ba96412e137fbe09/); arbitrum `0x6b6006...a1cc95` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | proxy | arbitrum | 18 deployments: ethereum `0x89b88a...ccaf95`; ethereum `0xef0b4d...6aaf94`; optimism `0xe91cfd...fca279`; bsc `0x24591d...5b5595`; bsc `0xbd7568...fa35f0`; polygon `0x4705b4...b46134`; polygon `0x9a6578...f2735d`; polygon `0x9da4ed...ea5725`; base `0x34e2f9...37f873`; base `0x640e7e...f78f47`; base `0xc9bfc3...7e5d1a`; arbitrum [`0x0b041d...bf6f27`](./contracts/arbitrum-42161/0x0b041d477ff8c7f8709d85a55633a196edbf6f27/); arbitrum `0x488b34...2d3efc`; avalanche `0x34e2f9...37f873`; avalanche `0x89b88a...ccaf95`; avalanche `0xc9bfc3...7e5d1a`; scroll `0x15dcc2...b1a17f`; scroll `0x80f088...7337ce` | ⚠️ Unaudited |
| PoolV2 | core_logic | arbitrum | [`0x6521a5...86cd7b`](./contracts/arbitrum-42161/0x6521a549834f5e6d253cd2e5f4fbe4048f86cd7b/) | ⚠️ Unaudited |
| ProxyAdmin | governance | scroll | 11 deployments: ethereum `0xc6bc78...ba6cd1`; optimism `0x85cebd...6af003`; optimism `0xc6bc78...ba6cd1`; optimism `0xe5e368...62e44c`; bsc `0xa75f18...7e013b`; polygon `0x6521a5...86cd7b`; polygon `0xd673f3...c70fb8`; base `0xd673f3...c70fb8`; arbitrum `0x2722fe...3de182`; avalanche `0xd673f3...c70fb8`; scroll [`0x20d7b9...a6ecd1`](./contracts/scroll-534352/0x20d7b9ed2c4e2dcc55f9b463975b21bbf2a6ecd1/) | ⚠️ Unaudited |
| rBNBAsset | unknown | bsc | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | ⚠️ Unaudited |
| sAVAXAsset | unknown | avalanche | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | ⚠️ Unaudited |
| SnBNBAsset | unknown | bsc | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | ⚠️ Unaudited |
| StkbnbAsset | unknown | bsc | 2 deployments: bsc [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/); bsc `0xc496f4...e0d17f` | ⚠️ Unaudited |
| TimelockController | governance | bsc | 2 deployments: optimism `0xd119d8...faca20`; bsc [`0x9f3f1e...140655`](./contracts/bsc-56/0x9f3f1e89831391214faa57ee7e27667156140655/) | ⚠️ Unaudited |
| TokenBridge | operational_periphery | avalanche | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | ⚠️ Unaudited |
| UnprotectedDynamicPool | core_logic | bsc | [`0x0553f2...c2bd73`](./contracts/bsc-56/0x0553f270e3a219b409770c0c208b68037cc2bd73/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | avalanche | 12 deployments: ethereum `0x51abd2...ef52bd`; ethereum `0xdaa336...0a7efa`; optimism `0x1790f9...19919b`; optimism `0x9ed3de...656d5c`; bsc `0x7e10ff...a2feff`; bsc `0xdea158...900ada`; base `0x8240aa...f6ac24`; base `0xa1acc6...fa2acf`; arbitrum `0xb5952a...681260`; arbitrum `0xdd29e6...e0cbab`; avalanche [`0x164564...722357`](./contracts/avalanche-43114/0x164564c449fa2303e767172dd00d015f1f722357/); avalanche `0x5fabce...376454` | ⚠️ Unaudited |
| VolatileAsset | unknown | ethereum | 3 deployments: ethereum [`0x2086dd...c17aa7`](./contracts/ethereum-1/0x2086dd7e87eb6ec916402151ab7b364e96c17aa7/); ethereum `0x9f8519...471736`; ethereum `0xb91e5a...932c89` | ⚠️ Unaudited |
| WBETHAsset | unknown | bsc | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | ⚠️ Unaudited |
| Whitelist | unknown | polygon | 7 deployments: ethereum `0xf84c59...5cc9de`; optimism `0xfa9576...f69bfb`; bsc `0xd61c53...71b591`; polygon [`0x5dace2...c7bea7`](./contracts/polygon-137/0x5dace27d0b921b177cd9c6706c6acdeb3ec7bea7/); base `0x9a6578...f2735d`; arbitrum `0x9a6578...f2735d`; avalanche `0x9a6578...f2735d` | ⚠️ Unaudited |
| WstETHAsset | unknown | arbitrum | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | ⚠️ Unaudited |
| WstETHAsset_Mainnet | unknown | ethereum | [`0xa12ba2...695502`](./contracts/ethereum-1/0xa12ba2d89a16f57c4b714b03c7951c41c7695502/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CoreV3 | unknown | optimism | 10 deployments: ethereum `0xe7e02c...6f9cb0`; optimism [`0x1414cd...b4f8f8`](./contracts/optimism-10/0x1414cd7f8e384b875bfbbabcacaae592c2b4f8f8/); optimism `0x4d1cc8...087053`; bsc `0x2fff85...90ecc0`; polygon `0xc9bfc3...7e5d1a`; base `0xc6bc78...ba6cd1`; arbitrum `0xaded24...59efdc`; arbitrum `0xae5e81...5ecbdc`; avalanche `0xc6bc78...ba6cd1`; scroll `0x9a59f5...c73ba6` | ✅ Audited (bytecode match) |
| CoreV4 | unknown | ethereum | 2 deployments: ethereum [`0xd9e494...387911`](./contracts/ethereum-1/0xd9e4945b690617e003553d47611f75e46e387911/); avalanche [`0xd9e494...387911`](./contracts/avalanche-43114/0xd9e4945b690617e003553d47611f75e46e387911/) | ✅ Audited (bytecode match) |
| DynamicFeeHelper | periphery | ethereum | 2 deployments: ethereum [`0x84a14a...183d7a`](./contracts/ethereum-1/0x84a14a10e7258c68413168c98e905483f9183d7a/); avalanche [`0x84a14a...183d7a`](./contracts/avalanche-43114/0x84a14a10e7258c68413168c98e905483f9183d7a/) | ✅ Audited (bytecode match) |
| RepegHelper | periphery | ethereum | 2 deployments: ethereum [`0x193c8a...b58e44`](./contracts/ethereum-1/0x193c8a8383689d34517608a3417818a929b58e44/); avalanche [`0x193c8a...b58e44`](./contracts/avalanche-43114/0x193c8a8383689d34517608a3417818a929b58e44/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoostedMultiRewarder | unknown | arbitrum | 7 deployments: ethereum `0xb239b9...1538c6`; optimism `0x820eac...5c1c45`; optimism `0xdaa336...0a7efa`; bsc `0x5ad0b6...b01266`; base `0xe5e368...62e44c`; arbitrum [`0x12d6a5...73bf7e`](./contracts/arbitrum-42161/0x12d6a56e7c6ba8c7299b860428cbd1491d73bf7e/); avalanche `0x389efa...d8c6bc` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x74163b...b739e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92e8b5...870dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x93d911...ce6dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d40cf...f9002f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2d951...22094f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2bb4ea...90e29c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcaa5a9...848555` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c64d9...61b453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49ecc3...2f1056` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x683cd0...872dcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3ef6c...f3ee08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2977b0...66cfd9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4f0ef2...c50122` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4f5fa1...4fc467` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6dbab2...ddc9ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb789d4...6273db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x71cea3...e34cbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa45c0a...ba3800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x15dcc2...b1a17f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2086dd...c17aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23db5d...8fae77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ddfdd...39f37e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x337d06...849453` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x39a2f5...850b1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41571e...31bc7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x616264...981d06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x64cb6d...b1aa85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x960c66...ace306` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9f8519...471736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb2d951...22094f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb91e5a...932c89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb9e267...6aa520` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd9ffee...48e576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xefec1c...7169c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Wombat-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 124 | high |
| [Hacken](https://hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022) | Hacken | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Peckshield](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 99 | high |
| [Peckshield Audit - V3](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 18 | high |
| [Slowmist Audit](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | 25 | high |
| [Zokyo Audit](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WombatV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | 18 | high |
| [PeckShield-Audit-Report-WombatV4-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV4-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 10 | high |
| [PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | contract_name | 3 | high |
| [2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf) | Zokyo | Audit | 2023-06 | stale | Direct | contract_name | 23 | high |
| [zokyo_wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 120 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | TokenImplementation | token | $47,823.53 | Verified native implementation with $47,823.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/) | ABnbcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/) | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x12d6a5...73bf7e`](./contracts/arbitrum-42161/0x12d6a56e7c6ba8c7299b860428cbd1491d73bf7e/) | BoostedMultiRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x015542...bece5e`](./contracts/bsc-56/0x015542b048c4711c52791346247187b5ccbece5e/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1414cd...b4f8f8`](./contracts/base-8453/0x1414cd7f8e384b875bfbbabcacaae592c2b4f8f8/) | BribeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/) | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b1878...44984f`](./contracts/bsc-56/0x2b187882073dccec42fa9a992c8a54e14b44984f/) | DynamicPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ERC4626Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde509f...626dae`](./contracts/arbitrum-42161/0xde509fe1555ab907e5c29f987ba0be1ac0626dae/) | jUsdcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6cff94...88fe8e`](./contracts/bsc-56/0x6cff948ccce8dc7eba0dda3b1818298e2088fe8e/) | MasterWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bd067...ec28cf`](./contracts/bsc-56/0x0bd0676bacc1c4fc838a1237a12df9eae7ec28cf/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2740f3...7fbe09`](./contracts/arbitrum-42161/0x2740f3ecb90e2afbcff63077ba96412e137fbe09/) | MerkleDistributorAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6521a5...86cd7b`](./contracts/arbitrum-42161/0x6521a549834f5e6d253cd2e5f4fbe4048f86cd7b/) | PoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | rBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | sAVAXAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | SnBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/) | StkbnbAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0553f2...c2bd73`](./contracts/bsc-56/0x0553f270e3a219b409770c0c208b68037cc2bd73/) | UnprotectedDynamicPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2086dd...c17aa7`](./contracts/ethereum-1/0x2086dd7e87eb6ec916402151ab7b364e96c17aa7/) | VolatileAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | WBETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5dace2...c7bea7`](./contracts/polygon-137/0x5dace27d0b921b177cd9c6706c6acdeb3ec7bea7/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | WstETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa12ba2...695502`](./contracts/ethereum-1/0xa12ba2d89a16f57c4b714b03c7951c41c7695502/) | WstETHAsset_Mainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=440

Zero-match audit list:

- [3005] Hacken
- [3010] Zokyo Audit

Fork inheritance lineage and inherited audits are included when available.
