# Agentic Audit Brief: cBridge

## Project Overview

- Project: cBridge (`cbridge`)
- Website: [https://cbridge.celer.network/#/transfer](https://cbridge.celer.network/#/transfer)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.151Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dfb3
- Chains: arbitrum, avalanche, base, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, zksync-era
- Contract surface: 944 unique implementations (1660 raw deployments)
- DeFi Llama TVL: $12,883,316.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 593 project-authored contract(s) across 10 chain(s); 4 ERC4626 vaults, 102 ERC20 tokens, 12 ERC721 NFTs, 5 ERC1155 multi-tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 117 common project-authored base contract(s) (dsauth, dsauthevents, upgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 2110; live-surface contracts included: 1615 (1054 live, 561 unknown).
- Excluded by liveness: 495 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/422 (5.9%)
- Deployed-live implementations: 434 of 944 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/441
- Verified + Unaudited implementations: 416
- Verified by bytecode match: 0
- Unverified implementations: 503
- Unique implementations: 944
- Raw deployments: 1660
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 24 | 5.4% | 2022-06 |
| PeckShield | Tier 2 | 16 | 3.6% | 2023-05 |
| CertiK | Tier 2 | 10 | 2.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | arbitrum | n/a | 21 deployments: ethereum `0x5427fe...da1820`; ethereum `0xc578cb...4ad062`; ethereum `0xd85e30...cc1965`; optimism `0x6de336...e148bb`; optimism `0x9b36f1...8f3a1f`; optimism `0x9d39fc...cc3401`; bsc `0x5d96d4...79bfc6`; bsc `0xdd90e5...81a1af`; gnosis `0x3795c3...b60283`; polygon `0x88dcdc...958a78`; polygon `0xa251c4...d8ac5c`; polygon `0xb5df79...0f8733`; metis `0x841ce4...d0738c`; moonbeam `0x841ce4...d0738c`; moonriver `0x841ce4...d0738c`; arbitrum [`0x1619de...63feca`](./contracts/arbitrum-42161/0x1619de6b6b20ed217a58d00f37b9d47c7663feca/); celo `0xbb7684...1ad573`; avalanche `0xbb7684...1ad573`; avalanche `0xef3c71...82e5d4`; linea `0x9b36f1...8f3a1f`; scroll `0x9b36f1...8f3a1f` | ✅ Audited |
| FarmingRewards | unknown | optimism | n/a | 3 deployments: ethereum `0x61f85f...2b5f41`; ethereum `0xd916eb...a99d56`; optimism [`0x06292d...b93e4c`](./contracts/optimism-10/0x06292de88adb3b1557b034ebb1c367e65ab93e4c/) | ✅ Audited |
| Govern | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c75ad...ba446c`](./contracts/ethereum-1/0x8c75adb1d9f38f6c2af54be8120f598b9dba446c/); ethereum `0xea129a...641ba0` | ✅ Audited |
| MaiBridgeToken | unknown | moonriver | n/a | 2 deployments: moonriver [`0x48421f...358271`](./contracts/moonriver-1285/0x48421ff1c6b93988138130865c4b7cce10358271/); avalanche `0x61f85f...2b5f41` | ✅ Audited |
| MessageBus | operational_periphery | ethereum | n/a | [`0x4066d1...4e200c`](./contracts/ethereum-1/0x4066d196a423b2b3b8b054f4f40efb47a74e200c/) | ✅ Audited |
| MessageBus | unknown | optimism | n/a | 2 deployments: optimism [`0x3490a6...1c83cc`](./contracts/optimism-10/0x3490a659780016717b949281f334880f971c83cc/); optimism `0x7f6372...6eac0e` | ✅ Audited |
| MessageBus | unknown | optimism | n/a | 2 deployments: optimism [`0x7d43aa...42c0ad`](./contracts/optimism-10/0x7d43aabc515c356145049227cee54b608342c0ad/); optimism `0xf5c682...3476f5` | ✅ Audited |
| MessageBus | operational_periphery | bsc | n/a | [`0x957148...aeea6b`](./contracts/bsc-56/0x95714818fdd7a5454f73da9c777b3ee6ebaeea6b/) | ✅ Audited |
| MessageBus | unknown | polygon | n/a | 2 deployments: polygon [`0x08d1fd...0fde8d`](./contracts/polygon-137/0x08d1fd6b563afdef29c9aa01c3ce3d589d0fde8d/); polygon `0xad65cd...1624aa` | ✅ Audited |
| MessageBus | unknown | polygon | n/a | 2 deployments: polygon [`0x643017...68d393`](./contracts/polygon-137/0x643017bf85ef399dd76aa8a46ed3c6e22a68d393/); polygon `0xafdb9c...093fe6` | ✅ Audited |
| MessageBus | unknown | moonriver | n/a | 2 deployments: moonriver [`0x940daa...8cbe54`](./contracts/moonriver-1285/0x940daaba3f713abfabd79cdd991466fe698cbe54/); moonriver `0xc5f4aa...c32396` | ✅ Audited |
| MessageBus | operational_periphery | linea | n/a | 12 deployments: ethereum `0x7a8025...d2e8c9`; ethereum `0xdd9c64...80d39c`; optimism `0xf8bfea...ea26da`; bsc `0x7d5de3...12a896`; bsc `0xce50e2...7880cb`; polygon `0x16365b...9b95eb`; polygon `0xeb8bbe...08d6b9`; moonriver `0xb72a75...f59846`; avalanche `0x148c1e...e350b5`; avalanche `0x6c6e22...aa24ca`; linea [`0x0dfabd...15674c`](./contracts/linea-59144/0x0dfabdd2dc27cf93910f7bd4bc3860d5af15674c/); linea `0x82b498...7d1213` | ✅ Audited |
| MessageBus | unknown | linea | n/a | 2 deployments: linea [`0x6f2bd3...8c7c28`](./contracts/linea-59144/0x6f2bd3dec1a8c4459c2acc318881f63a048c7c28/); linea `0xea716c...d9acbd` | ✅ Audited |
| MintSwapCanonicalToken | unknown | bsc | n/a | 94 deployments: ethereum `0x15eef5...5ca524`; ethereum `0x212137...4e8ae6`; ethereum `0x21c025...0027af`; ethereum `0x30a667...ac0c2f`; ethereum `0x33cce3...84e4cf`; ethereum `0x3d85b5...5da541`; ethereum `0x3f95e5...c5656e`; ethereum `0x5a9946...7f5f6b`; ethereum `0x94d2fd...642550`; ethereum `0xa9c125...b1f758`; ethereum `0xb4ed26...86563d`; ethereum `0xe593f3...083e8b`; ethereum `0xeb883d...9b63b9`; ethereum `0xf3c969...a6d0f6`; optimism `0x23c748...7472eb`; optimism `0x259479...87728c`; bsc [`0x06fda0...074ec0`](./contracts/bsc-56/0x06fda0758c17416726f77cb11305eac94c074ec0/); bsc `0x07145a...b475a7`; bsc `0x0acc63...b9d4d3`; bsc `0x1305b2...619fd4`; bsc `0x16365b...9b95eb`; bsc `0x181002...102580`; bsc `0x19aa65...fccb3a`; bsc `0x3cc194...b4c02e`; bsc `0x426c58...71751c`; bsc `0x523d3e...6cebec`; bsc `0x6822a7...75cc82`; bsc `0x73afc2...9f950c`; bsc `0x79d104...b9c4e0`; bsc `0x81421a...26360c`; bsc `0x904d02...98ff0b`; bsc `0xa5a681...1c3c3e`; bsc `0xa7e592...66c9b2`; bsc `0xbcc128...04f867`; bsc `0xbd7b8e...e0e8d4`; bsc `0xd6705c...24722e`; bsc `0xea09cb...2476ae`; bsc `0xf23443...408108`; bsc `0xf8bfea...ea26da`; bsc `0xfef170...edad1f`; gnosis `0x8db213...073da0`; gnosis `0xd60636...6b8498`; polygon `0x17d9dd...4125b0`; polygon `0x4a52b8...ed4849`; polygon `0x5248fe...95a817`; polygon `0x7c83ca...d94107`; polygon `0xb65745...e7af28`; polygon `0xb98e16...91e60b`; polygon `0xbbca42...0ddc82`; metis `0x4a63af...ff9589`; metis `0x516e6d...3802ad`; metis `0x5d96d4...79bfc6`; metis `0x75364d...aff3b4`; moonbeam `0x3795c3...b60283`; moonbeam `0x695902...9e5375`; moonbeam `0x6a2d26...931d98`; moonbeam `0x800632...5c903a`; moonbeam `0x81ecac...85fe9c`; moonbeam `0x8a4b4c...a015ce`; moonbeam `0x8c75ad...ba446c`; moonbeam `0xcb4a75...5f8f9e`; moonriver `0x31d95c...a5741e`; moonriver `0x693b47...0066f3`; moonriver `0xad543f...a9d5ca`; moonriver `0xb74527...06182f`; moonriver `0xe9460b...74d37c`; moonriver `0xf6a939...955035`; arbitrum `0x4313dd...c878ca`; celo `0x1fbd28...cb8b78`; celo `0x48421f...358271`; celo `0x8a4b4c...a015ce`; celo `0xa8961b...eff5e0`; celo `0xb0d8cf...7c90dc`; celo `0xcb4a75...5f8f9e`; avalanche `0x2b9e10...8c0aa9`; avalanche `0x30a667...ac0c2f`; avalanche `0x63b0b8...3b3f80`; avalanche `0x70d302...e08cea`; avalanche `0x746ba4...b9c3dc`; avalanche `0x7af0a3...d43637`; avalanche `0x80b010...d603b3`; avalanche `0x90fbe9...99a13e`; avalanche `0xa4918c...367aa9`; avalanche `0xac8009...72b9eb`; avalanche `0xaedb70...694798`; avalanche `0xaf2d36...94e390`; avalanche `0xcd7d33...65119d`; avalanche `0xcda140...e8a818`; avalanche `0xda0019...7ee27b`; avalanche `0xde5384...5ff842`; avalanche `0xea4b1b...a4a58b`; avalanche `0xee396d...92e57d`; avalanche `0xfc6da9...861d3b`; avalanche `0xfcde4a...8b02f1` | ✅ Audited |
| MultiBridgeToken | unknown | bsc | n/a | 22 deployments: ethereum `0x394d85...56849d`; ethereum `0x6cadd1...6db362`; ethereum `0xa719cb...e9de24`; ethereum `0xbade2a...6fb5a4`; optimism `0x0dbb98...f36cd7`; optimism `0x1f4f04...cb8dad`; optimism `0x83250f...3abe38`; optimism `0xf560ac...d17190`; bsc [`0x09236a...31c51e`](./contracts/bsc-56/0x09236aff6b36a5dbf97b5030a5a650e06931c51e/); bsc `0x2c30b4...7562a0`; bsc `0x443b4d...4a2bc6`; bsc `0x4b5f2b...254fcd`; bsc `0xa4918c...367aa9`; bsc `0xdd2612...8bbc55`; arbitrum `0x37596f...9cb0fd`; arbitrum `0x75e4fd...d15c5a`; celo `0x38d1e2...939e51`; celo `0xad543f...a9d5ca`; linea `0x265b25...7567e8`; linea `0x5471ea...a953e4`; linea `0x7d43aa...42c0ad`; linea `0xf5c682...3476f5` | ✅ Audited |
| OriginalTokenVault | core_logic | avalanche | n/a | 7 deployments: ethereum `0xb37d31...518595`; optimism `0xbcfef6...40aa11`; bsc `0x78bc5e...ed02dc`; polygon `0xc1a2d9...d51eea`; arbitrum `0xfe31bf...040f76`; celo `0xd9d103...66752c`; avalanche [`0x5427fe...da1820`](./contracts/avalanche-43114/0x5427fefa711eff984124bfbb1ab6fbf5e3da1820/) | ✅ Audited |
| OriginalTokenVaultV2 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0db3b3...90e0d3`](./contracts/ethereum-1/0x0db3b38383e87b03ac745b0d58d17434c890e0d3/); ethereum `0x751079...f2bae1`; optimism `0x6e380a...13be4f`; bsc `0x11a0c9...44a980`; arbitrum `0xea4b1b...a4a58b`; avalanche `0xb51541...4502bb` | ✅ Audited |
| PeggedTokenBridge | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x16365b...9b95eb`](./contracts/ethereum-1/0x16365b45eb269b5b5dacb34b4a15399ec79b95eb/); optimism `0x61f85f...2b5f41`; bsc `0xd443fe...97580e`; gnosis `0xd4c058...db5975`; polygon `0x4d58fd...426f7a`; metis `0x3bbadf...f85bb8`; moonbeam `0xbb7684...1ad573`; moonriver `0x374b8a...1c57ef`; celo `0xda1dd6...d1162e`; avalanche `0x88dcdc...958a78` | ✅ Audited |
| SGN | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d9827...286c50`](./contracts/ethereum-1/0x8d982783040e3ccc0c04cc7b88b9637ce7286c50/); ethereum `0xcb4a75...5f8f9e` | ✅ Audited |
| SingleBridgeToken | unknown | bsc | n/a | 6 deployments: ethereum `0xeb6c39...b69312`; bsc [`0x66acea...56f64f`](./contracts/bsc-56/0x66acea0f41656711f58ff840c8857e3e5356f64f/); bsc `0xbbca42...0ddc82`; bsc `0xe46910...15b22b`; celo `0xb18358...b25560`; celo `0xd85e30...cc1965` | ✅ Audited |
| Staking | unknown | ethereum | n/a | 3 deployments: ethereum [`0x8a4b4c...a015ce`](./contracts/ethereum-1/0x8a4b4c2acadeaa7206df96f00052e41d74a015ce/); ethereum `0xa251c4...d8ac5c`; ethereum `0xdb3130...9beacb` | ✅ Audited |
| StakingReward | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e6b1c...14e6ce`](./contracts/ethereum-1/0x1e6b1ceaf75936f153abb7b65fba57abae14e6ce/); ethereum `0xb01fd7...212b42` | ✅ Audited |
| TransferAgent | unknown | bsc | n/a | 2 deployments: ethereum `0x9b274b...661a0b`; bsc [`0x3d85b5...5da541`](./contracts/bsc-56/0x3d85b598b734a0e7c8c1b62b00e972e9265da541/) | ✅ Audited |
| Viewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x580345...27853b`](./contracts/ethereum-1/0x5803457e3074e727fa7f9aed60454bf2f127853b/); ethereum `0xb18358...b25560` | ✅ Audited |
| Viewer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x329ba0...a69df0`](./contracts/arbitrum-42161/0x329ba09997f91812a833039cce58411400a69df0/); arbitrum `0x63fc93...87d253` | ✅ Audited |

### ⚠️ Verified + Unaudited (416)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveHandler | unknown | ethereum | n/a | [`0xbb7d75...316953`](./contracts/ethereum-1/0xbb7d75be4dc8eb15ff90422137c0a5bcbd316953/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0x03e488...7456d9`](./contracts/ethereum-1/0x03e48857621881ebbd986b6763c1505ff17456d9/) | ⚠️ Unaudited |
| AelinDeal | unknown | optimism | n/a | 4 deployments: optimism [`0x02b9e9...5a0d04`](./contracts/optimism-10/0x02b9e99a05458d763256b977e61c1d947a5a0d04/); optimism `0x3c8bef...3d8dad`; optimism `0x722969...88f853`; optimism `0xbca527...deeae0` | ⚠️ Unaudited |
| AelinPool | unknown | optimism | n/a | 5 deployments: optimism [`0x2569f6...990742`](./contracts/optimism-10/0x2569f66b7acd8954a7b3a48481823e30c4990742/); optimism `0x29e146...ffb15e`; optimism `0x528d21...dda296`; optimism `0x689b7d...8536be`; optimism `0xe30bd5...09521d` | ⚠️ Unaudited |
| AelinPoolFactory | unknown | optimism | n/a | 5 deployments: optimism [`0x3c312a...4c0cec`](./contracts/optimism-10/0x3c312abcef37e63e8ca3ac0c370fb1f8e74c0cec/); optimism `0x875253...3ebb10`; optimism `0x914ffc...4da20f`; optimism `0x9219f9...531a31`; optimism `0xcc2a48...cde6a8` | ⚠️ Unaudited |
| AelinToken | token | optimism | n/a | 3 deployments: optimism [`0x04432a...c08363`](./contracts/optimism-10/0x04432a6fd94e8bc8559d10ac1d98f15cd9c08363/); optimism `0x61baad...5e0b76`; optimism `0xfa0de0...84215d` | ⚠️ Unaudited |
| AllowlistCollectorForLunarNFT | unknown | ethereum | n/a | [`0xd38143...a7e413`](./contracts/ethereum-1/0xd3814346f232ac7493b8e266276920455aa7e413/) | ⚠️ Unaudited |
| AMM | unknown | ethereum | n/a | 9 deployments: ethereum [`0x028fb0...8cf25e`](./contracts/ethereum-1/0x028fb01ffafe25e278ebb467f69bd79a928cf25e/); ethereum `0x5378b0...1eac18`; ethereum `0x7230d6...a7605a`; ethereum `0x942df6...53b52c`; ethereum `0xa38934...00dae6`; ethereum `0xaaac84...625520`; ethereum `0xbe8394...1a42dc`; ethereum `0xc82a6a...66a06f`; ethereum `0xf4ce6d...9bb7bf` | ⚠️ Unaudited |
| AmmVault | core_logic | optimism | n/a | 3 deployments: optimism [`0x43318d...649c83`](./contracts/optimism-10/0x43318de9e8f65b591598f17add87ae7247649c83/); optimism `0x6c7fd4...bca29f`; optimism `0xb48402...196f93` | ⚠️ Unaudited |
| AmmVault | unknown | optimism | n/a | 2 deployments: optimism [`0x63d6dd...d29f4b`](./contracts/optimism-10/0x63d6dd43f6854a06548bc88e890c9afff5d29f4b/); optimism `0x9d3abe...3be41f` | ⚠️ Unaudited |
| AmmVault | unknown | optimism | n/a | 2 deployments: optimism [`0x643e43...a1c83c`](./contracts/optimism-10/0x643e4388fb918a7905441afe4b2906c059a1c83c/); optimism `0x6a763c...ab16ac` | ⚠️ Unaudited |
| AmmVaultData | unknown | optimism | n/a | 2 deployments: optimism [`0x70164a...03286b`](./contracts/optimism-10/0x70164a1ec9d21c4dba2b4f9b23750f9c7d03286b/); optimism `0xb5bec3...d4c4ad` | ⚠️ Unaudited |
| AmyFinanceToken | token | arbitrum | n/a | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | ⚠️ Unaudited |
| Animal | unknown | ethereum | n/a | [`0x38b0e3...f003e2`](./contracts/ethereum-1/0x38b0e3a59183814957d83df2a97492aed1f003e2/) | ⚠️ Unaudited |
| ApexConsumer | unknown | optimism | n/a | 2 deployments: optimism [`0x0a6851...b75325`](./contracts/optimism-10/0x0a6851c7d112a27019d84dccb9ce0c0cd8b75325/); optimism `0x2db778...844703` | ⚠️ Unaudited |
| ApexConsumerWrapper | unknown | optimism | n/a | 4 deployments: optimism [`0x20612e...36210e`](./contracts/optimism-10/0x20612e6a0ddadc322b7b48e3c4246fb23836210e/); optimism `0x7a07c2...a2cad8`; optimism `0x8f9869...ca52b2`; optimism `0xb0dd7b...d8f29c` | ⚠️ Unaudited |
| ArbStip | unknown | arbitrum | n/a | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ⚠️ Unaudited |
| Attack | unknown | ethereum | n/a | 3 deployments: ethereum [`0x35baf1...62faee`](./contracts/ethereum-1/0x35baf158e798ef724b80e0b4c472708f9f62faee/); ethereum `0x5f4120...8d3782`; ethereum `0xdc39a2...ea48c5` | ⚠️ Unaudited |
| AvocadoDAOToken | token | ethereum | n/a | [`0xa41f14...2f311f`](./contracts/ethereum-1/0xa41f142b6eb2b164f8164cae0716892ce02f311f/) | ⚠️ Unaudited |
| BActions | unknown | ethereum | n/a | [`0x438bdd...5a028b`](./contracts/ethereum-1/0x438bdde67caa7271ef41357c11cf8637365a028b/) | ⚠️ Unaudited |
| BlankToken | token | ethereum | n/a | [`0xaec7e1...c48966`](./contracts/ethereum-1/0xaec7e1f531bb09115103c53ba76829910ec48966/) | ⚠️ Unaudited |
| BMIToken | token | ethereum | n/a | 2 deployments: ethereum [`0x725c26...1ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/); ethereum `0x9b5fe7...0b20cd` | ⚠️ Unaudited |
| BMITokenVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9a9460...0fdfaf`](./contracts/ethereum-1/0x9a946087aa4bd6122baad864ad1ffd149e0fdfaf/); ethereum `0xd3e6ff...c675b1` | ⚠️ Unaudited |
| BMITokenVestingV4 | unknown | ethereum | n/a | [`0xa6d84f...8f09e2`](./contracts/ethereum-1/0xa6d84f96685b719439f1203cc85d3bb58a8f09e2/) | ⚠️ Unaudited |
| BMIVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0xda6a8b...9c7b02`](./contracts/ethereum-1/0xda6a8b079a0f8fcf30f3558e9205ed02829c7b02/); ethereum `0xe2289e...f865a4` | ⚠️ Unaudited |
| BOBA | unknown | ethereum | n/a | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | avalanche | n/a | [`0xf582ca...be0307`](./contracts/avalanche-43114/0xf582cae047853cbe7f0bc8f8321bef4a1ebe0307/) | ⚠️ Unaudited |
| BrevisRequest | unknown | optimism | n/a | 2 deployments: optimism [`0x38324b...146e04`](./contracts/optimism-10/0x38324b683ee8534f5399c89adbfbd4814c146e04/); linea `0xfa78cb...2752b3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CapitalFreeLiquidate02 | unknown | ethereum | n/a | [`0xeac319...b88ec2`](./contracts/ethereum-1/0xeac319b32c332c233b9abc96ac648fbae0b88ec2/) | ⚠️ Unaudited |
| CBridge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x841ce4...d0738c`](./contracts/ethereum-1/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/); bsc [`0x841ce4...d0738c`](./contracts/bsc-56/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/); polygon [`0x841ce4...d0738c`](./contracts/polygon-137/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | ⚠️ Unaudited |
| CelerToken | token | ethereum | n/a | [`0x4f9254...81c667`](./contracts/ethereum-1/0x4f9254c83eb525f9fcf346490bbb3ed28a81c667/) | ⚠️ Unaudited |
| CGGToken | token | ethereum | n/a | [`0x1fe24f...fa5e43`](./contracts/ethereum-1/0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43/) | ⚠️ Unaudited |
| ChainGuardiansToken900 | governance | ethereum | n/a | [`0x2a2ad5...ff0379`](./contracts/ethereum-1/0x2a2ad5a2eacf35194d39afe1d727c39710ff0379/) | ⚠️ Unaudited |
| CircleBridgeProxy | unknown | optimism | n/a | [`0x697ac9...3aa687`](./contracts/optimism-10/0x697ac93c9263346c5ad0412f9356d5789a3aa687/) | ⚠️ Unaudited |
| CircleBridgeProxyV2 | unknown | optimism | n/a | [`0xcfa590...0f0b91`](./contracts/optimism-10/0xcfa5906d71e057be50f4cf2a5bc41ff7bd0f0b91/) | ⚠️ Unaudited |
| Claimer | unknown | ethereum | n/a | [`0xdc4baf...296f60`](./contracts/ethereum-1/0xdc4baf3b4b1df79083eedf3e46ec2c4ec1296f60/) | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x753d22...1d3dac`](./contracts/arbitrum-42161/0x753d224bcf9aafacd81558c32341416df61d3dac/); arbitrum `0xf0a571...735fba` | ⚠️ Unaudited |
| CloutArtToken | token | polygon | n/a | [`0x262b8a...02b728`](./contracts/polygon-137/0x262b8aa7542004f023b0eb02bc6b96350a02b728/) | ⚠️ Unaudited |
| CompoundVault | unknown | arbitrum | n/a | [`0x67dd2f...27197c`](./contracts/arbitrum-42161/0x67dd2f4d6e6d6d8d17b4839e6bff4fec2627197c/) | ⚠️ Unaudited |
| ContributorVesting | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x19ea65...c724f5`](./contracts/arbitrum-42161/0x19ea653256e79abaf90b4586632463d4b3c724f5/); arbitrum `0x47acb7...e83dda`; arbitrum `0xa506a3...e92207`; arbitrum `0xa99096...ce68c8` | ⚠️ Unaudited |
| ControllerStock | unknown | optimism | n/a | 3 deployments: optimism [`0x054a30...e19b4c`](./contracts/optimism-10/0x054a30b4fe877b0b92c3f1f4952a26ccdde19b4c/); optimism `0x4870fc...edb892`; optimism `0xdf0e11...af06f5` | ⚠️ Unaudited |
| ControllerV2BLP | governance | optimism | n/a | [`0xa300a8...d8bcf4`](./contracts/optimism-10/0xa300a84d8970718dac32f54f61bd568142d8bcf4/) | ⚠️ Unaudited |
| ControllerV2BLP | governance | polygon | n/a | [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | ⚠️ Unaudited |
| ControllerV2BLP | governance | arbitrum | n/a | [`0x8e7e9e...1e5408`](./contracts/arbitrum-42161/0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408/) | ⚠️ Unaudited |
| ConvergenceToken | token | ethereum | n/a | [`0xc834fa...aa8b50`](./contracts/ethereum-1/0xc834fa996fa3bec7aad3693af486ae53d8aa8b50/) | ⚠️ Unaudited |
| COTIETHSLPStakingRewards | unknown | ethereum | n/a | [`0x8eed31...b62abd`](./contracts/ethereum-1/0x8eed31c1b0e147e56db836c40129eeb03cb62abd/) | ⚠️ Unaudited |
| COTIETHStakingRewards | unknown | ethereum | n/a | [`0xe6e522...15c64b`](./contracts/ethereum-1/0xe6e5220291cf78b6d93bd1d08d746abbc115c64b/) | ⚠️ Unaudited |
| CrazyBunny | unknown | ethereum | n/a | [`0x9f4564...213aae`](./contracts/ethereum-1/0x9f4564b85cb77ce76cc725f29758cbfe20213aae/) | ⚠️ Unaudited |
| CrossChainRouter | unknown | optimism | n/a | [`0x1cc2a5...96a02a`](./contracts/optimism-10/0x1cc2a5a1f7c4ea9c29be62a58a5591e82f96a02a/) | ⚠️ Unaudited |
| CrossProxy | proxy | avalanche | n/a | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | ⚠️ Unaudited |
| Cvp | unknown | ethereum | n/a | [`0x38e4ad...e7dca1`](./contracts/ethereum-1/0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1/) | ⚠️ Unaudited |
| CvpBridgeLocker | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1f8eb3...4a8337`](./contracts/ethereum-1/0x1f8eb3cbb05166921d8204e6a1d8e5f9844a8337/); ethereum `0x94c8d7...468e2e`; ethereum `0x9d23d4...deeb4b`; ethereum `0xf11bd9...589bab` | ⚠️ Unaudited |
| CVPMaker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c22e5...e5e047`](./contracts/ethereum-1/0x8c22e596e66b98ec1d2ea45b40d879c705e5e047/); ethereum `0x9d9d0e...ca1afb` | ⚠️ Unaudited |
| DeciMath | unknown | optimism | n/a | 3 deployments: optimism [`0x5c779c...60fb14`](./contracts/optimism-10/0x5c779cfae4b6b7a02c32938ddabdada8ab60fb14/); optimism `0xb6bec9...b9f86e`; optimism `0xf6a6e6...039aa8` | ⚠️ Unaudited |
| DefaultLiquidityProvider | unknown | optimism | n/a | 2 deployments: optimism [`0x0565b1...8fb898`](./contracts/optimism-10/0x0565b1ab5cee7075b32c2d6a5b9da44b708fb898/); optimism `0x0bac9e...c396b5` | ⚠️ Unaudited |
| DFEngineV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x071b49...4613d5`](./contracts/ethereum-1/0x071b49f6a26ffa31f67e833d3dfec500cc4613d5/); ethereum `0x3ea496...2c7d7c` | ⚠️ Unaudited |
| DForceLendingHandler | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10a49c...219c08`](./contracts/ethereum-1/0x10a49c54babef0d39f5531f0d1a5d98fbe219c08/); ethereum `0x1ec23c...42229f`; ethereum `0xe3412d...5ee5ff`; ethereum `0xeeeaf7...d3aeaa` | ⚠️ Unaudited |
| DFProtocol | unknown | ethereum | n/a | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | ⚠️ Unaudited |
| DFProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fdcda...4f57ba`](./contracts/ethereum-1/0x7fdcdad3b4a67e00d9fd5f22f4fd89a5fa4f57ba/); ethereum `0x93ae5e...7b8dc6` | ⚠️ Unaudited |
| Distribution | unknown | ethereum | n/a | [`0x924897...2e6291`](./contracts/ethereum-1/0x92489789778d69eff4a53b6d649f0a51e02e6291/) | ⚠️ Unaudited |
| DODOToken | token | ethereum | n/a | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | ⚠️ Unaudited |
| DomiToken | token | ethereum | n/a | [`0x45c2f8...fef83f`](./contracts/ethereum-1/0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f/) | ⚠️ Unaudited |
| DopexArbEthSsovWrapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5bc65f...2c31c1`](./contracts/arbitrum-42161/0x5bc65f20abceada2c54140b2bb55962bba2c31c1/); arbitrum `0xa91322...d66a20` | ⚠️ Unaudited |
| DopexDpxSsovWrapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x39cd5f...914ea0`](./contracts/arbitrum-42161/0x39cd5f935cd7af62f6b74606484af7bbd4914ea0/); arbitrum `0xb2f4db...76da95` | ⚠️ Unaudited |
| DopexFarmWrapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x315e79...d8d0f3`](./contracts/arbitrum-42161/0x315e79536b0bd3617293ba4f68ef5772b7d8d0f3/); arbitrum `0xe5c24a...eb8a2b` | ⚠️ Unaudited |
| DopexGohmSsovWrapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1dbccb...92c8ae`](./contracts/arbitrum-42161/0x1dbccb7bd0676df77574b702b61d4af44f92c8ae/); arbitrum `0x3b42b5...e6ebb6` | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1cbd0c...5f7344`](./contracts/ethereum-1/0x1cbd0c8d16dd9c8f450c781b5c3e3623f95f7344/); ethereum `0x431ad2...f7dbe0`; ethereum `0x6199cc...5af9e5`; ethereum `0x6f4073...1ee957`; ethereum `0x9d2437...2e5ddd`; ethereum `0xeb2697...a83549` | ⚠️ Unaudited |
| DToken | unknown | ethereum | n/a | 7 deployments: ethereum [`0x02285a...df9224`](./contracts/ethereum-1/0x02285acaafeb533e03a7306c55ec031297df9224/); ethereum `0x109917...3e1f72`; ethereum `0x16c9cf...0f3179`; ethereum `0x55bcf7...fb9f2b`; ethereum `0x868277...1d9fc8`; ethereum `0xdd23a5...e1c443`; ethereum `0xf4dfc3...4f438a` | ⚠️ Unaudited |
| DTokenCommonData | unknown | ethereum | n/a | [`0xbd27ce...dfcf72`](./contracts/ethereum-1/0xbd27ce697a32476098b788b239e57aacc6dfcf72/) | ⚠️ Unaudited |
| DTokenProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40f599...e737e3`](./contracts/ethereum-1/0x40f5993b0cc0f0e3828b02163ef6294c8ae737e3/); ethereum `0xbcdd2a...ce6aee` | ⚠️ Unaudited |
| EmiFactory | unknown | ethereum | n/a | [`0x1771df...6cbf48`](./contracts/ethereum-1/0x1771dff85160768255f0a44d20965665806cbf48/) | ⚠️ Unaudited |
| EmiList | unknown | ethereum | n/a | [`0x99e401...01c73b`](./contracts/ethereum-1/0x99e401f9f825822f005d68b7d903038cc601c73b/) | ⚠️ Unaudited |
| EmiRouter | adapter | ethereum | n/a | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | ⚠️ Unaudited |
| EmiVamp | unknown | ethereum | n/a | [`0xe629c4...e1a3af`](./contracts/ethereum-1/0xe629c4dc9538614019d17d09f54617ef89e1a3af/) | ⚠️ Unaudited |
| EnforceHub | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb978d9...dd6e54`](./contracts/arbitrum-42161/0xb978d9d8e92fe060fd058a9ed106665db6dd6e54/); arbitrum `0xc14308...44088e` | ⚠️ Unaudited |
| EpicToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66e6f7...4ee217`](./contracts/ethereum-1/0x66e6f738a835d1ad412dca933fb4fcd7a84ee217/); ethereum `0xe0a8f1...f80280` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12f74e...ca68d1`](./contracts/ethereum-1/0x12f74e2eab982853e34a9f1515833fc64aca68d1/); ethereum `0x70d458...f9bde6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a3cff...ac3ed5`](./contracts/ethereum-1/0x1a3cff124a9c8200b2adb93416aa72648fac3ed5/); ethereum `0x40c4d6...2fd23a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36895f...c25184`](./contracts/ethereum-1/0x36895fd7ecf2d47269f59cbf93f0aa86e1c25184/); ethereum `0x480155...0a424b` | ⚠️ Unaudited |
| ERC20 | token | ethereum | n/a | [`0x41a3db...c29666`](./contracts/ethereum-1/0x41a3dba3d677e573636ba691a70ff2d606c29666/) | ⚠️ Unaudited |
| Erc20Mock | unknown | ethereum | n/a | [`0x902f7d...0a3b7e`](./contracts/ethereum-1/0x902f7d304ccf03e83deb279673b9b458ec0a3b7e/) | ⚠️ Unaudited |
| ERC20PresetMinterPauserUpgradeSafe | unknown | ethereum | n/a | [`0xc9f6db...0cabc3`](./contracts/ethereum-1/0xc9f6db2d12c3ad65570e09cb98190330d20cabc3/) | ⚠️ Unaudited |
| EscrowThales | unknown | optimism | n/a | 2 deployments: optimism [`0x566d35...aac9c2`](./contracts/optimism-10/0x566d358f3386abac32cbe750489306c73caac9c2/); optimism `0xb2d2c6...ad82ac` | ⚠️ Unaudited |
| ESW | unknown | ethereum | n/a | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ⚠️ Unaudited |
| ESW | unknown | polygon | n/a | [`0xd2a2a3...4a7d8f`](./contracts/polygon-137/0xd2a2a353d28e4833faffc882f6649c9c884a7d8f/) | ⚠️ Unaudited |
| ETHLPStakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40d203...25a6f6`](./contracts/ethereum-1/0x40d203332b0a262f1a371ae9da1788fe6825a6f6/); ethereum `0xe31424...f7e5f8` | ⚠️ Unaudited |
| EthMCBv2 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0544b7...7319c9`](./contracts/ethereum-1/0x0544b78760aab5db937d230a444da7ef9f7319c9/); ethereum `0x0a7f9e...5bd7d2`; ethereum `0x1a5bd8...ab831a`; ethereum `0x504559...021ba0`; ethereum `0x775cec...0773e8`; ethereum `0x99abe3...3de42a`; ethereum `0xcead75...804a99`; ethereum `0xe31b53...749b81` | ⚠️ Unaudited |
| EthMCBv2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e352c...a4ce42`](./contracts/ethereum-1/0x4e352cf164e64adcbad318c3a1e222e9eba4ce42/); ethereum `0xcbe10a...89a7cf` | ⚠️ Unaudited |
| ETHPlatform | unknown | ethereum | n/a | 3 deployments: ethereum [`0x145e6d...6d47a7`](./contracts/ethereum-1/0x145e6df857b241efdcb9b78a1b97a032606d47a7/); ethereum `0x5005e8...cf0e79`; ethereum `0xbe857e...52be72` | ⚠️ Unaudited |
| ETHStakingProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x287839...a5b6de`](./contracts/ethereum-1/0x287839632973f7754c04a9e23d393aa09fa5b6de/); ethereum `0x78bb4b...cef929` | ⚠️ Unaudited |
| ETHVOL_USDCLPStakingRewards | unknown | ethereum | n/a | [`0x967440...df1a6d`](./contracts/ethereum-1/0x967440f87132008184c25b9c385860e908df1a6d/) | ⚠️ Unaudited |
| Factory | unknown | moonbeam | n/a | [`0xf49255...f92fef`](./contracts/moonbeam-1284/0xf49255205dfd7933c4d0f25a57d40b1511f92fef/) | ⚠️ Unaudited |
| FarmController | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d3fdd...58f0c0`](./contracts/arbitrum-42161/0x0d3fdd45706bec4077725bf691bbb4770958f0c0/); arbitrum `0x5a8546...3c87cc` | ⚠️ Unaudited |
| Farming | unknown | moonbeam | n/a | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | ⚠️ Unaudited |
| FeeReimbursementApp | unknown | optimism | n/a | 16 deployments: optimism [`0x03b4bd...1f608b`](./contracts/optimism-10/0x03b4bd7d900defe84098665e3d96dca73a1f608b/); optimism `0x097da0...272880`; optimism `0x1345c8...c859aa`; optimism `0x1a5c28...d81966`; optimism `0x2b1e70...c7dbb7`; optimism `0x322782...fb954e`; optimism `0x3b3a57...41b7f0`; optimism `0x601247...b291ca`; optimism `0x8d7c25...cd9809`; optimism `0xa01680...1553e8`; optimism `0xa289ed...fe1648`; optimism `0xa7cc9d...b1364e`; optimism `0xaef0d6...ca1d60`; optimism `0xc8b70b...9e462a`; optimism `0xed72bf...fd587e`; optimism `0xf9aa5d...bd9e9d` | ⚠️ Unaudited |
| FINN | unknown | moonriver | n/a | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | ⚠️ Unaudited |
| FinnBar | unknown | moonriver | n/a | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | ⚠️ Unaudited |
| FucDao | unknown | polygon | n/a | [`0x24164b...d28b2a`](./contracts/polygon-137/0x24164bba6efe2b92559d78d5393b609e0ad28b2a/) | ⚠️ Unaudited |
| GamerCoin | unknown | ethereum | n/a | [`0x728f30...b1387d`](./contracts/ethereum-1/0x728f30fa2f100742c7949d1961804fa8e0b1387d/) | ⚠️ Unaudited |
| GamesOddsObtainer | unknown | optimism | n/a | [`0xc647ab...b7c03c`](./contracts/optimism-10/0xc647ab2cab7d6da6081703382ecf2814d8b7c03c/) | ⚠️ Unaudited |
| GiantToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb27f33...945800`](./contracts/ethereum-1/0xb27f33682418c52b1dcca1300b4982e3f6945800/); ethereum `0xfce6cd...ec373b` | ⚠️ Unaudited |
| GmxLibrary | unknown | arbitrum | n/a | [`0x405775...7f5d2a`](./contracts/arbitrum-42161/0x405775be91aab1d06a3afbb5a1a6d2a5cf7f5d2a/) | ⚠️ Unaudited |
| GOLDx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09a52b...4bb97a`](./contracts/ethereum-1/0x09a52b4c749d006f7fc0c3f316aeca54d74bb97a/); ethereum `0x355c66...ef20c0` | ⚠️ Unaudited |
| GOLDxProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0effcb...eacc4f`](./contracts/ethereum-1/0x0effcb66871fcc97f074a901f69b1367d2eacc4f/); ethereum `0x133223...17276b` | ⚠️ Unaudited |
| GOVI | unknown | ethereum | n/a | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | ethereum | n/a | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | ethereum | n/a | [`0x936dd3...975fb7`](./contracts/ethereum-1/0x936dd3112a9d39af39adda798503d9e7e7975fb7/) | ⚠️ Unaudited |
| HatDistributionCenter | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1c208c...df48d7`](./contracts/arbitrum-42161/0x1c208cb30838cc3fd492627321624ce87cdf48d7/); arbitrum `0x808a84...dfdf86`; arbitrum `0x8c197b...a82eb4`; arbitrum `0xa35724...c4bf8c` | ⚠️ Unaudited |
| HatDistributionCenterV2 | unknown | arbitrum | n/a | [`0x4c163b...757bca`](./contracts/arbitrum-42161/0x4c163b64fd2c777bd0752cfc4312c7bbea757bca/) | ⚠️ Unaudited |
| HuckleberryFarm | unknown | moonriver | n/a | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | ⚠️ Unaudited |
| HuhToken | token | polygon | n/a | 2 deployments: ethereum `0x86d49f...5002ab`; polygon [`0x086484...c37786`](./contracts/polygon-137/0x08648471b5aad25feeeb853d6829048f3fc37786/) | ⚠️ Unaudited |
| iETH | unknown | arbitrum | n/a | 4 deployments: optimism `0x92273a...733b33`; polygon `0x00f970...4e0490`; arbitrum [`0x002cea...96e861`](./contracts/arbitrum-42161/0x002cea80a95e71859eec829d6d0ca4771596e861/); arbitrum `0xf5854a...5cad61` | ⚠️ Unaudited |
| iETHV2BLP | unknown | optimism | n/a | [`0xa7a084...a7b3b4`](./contracts/optimism-10/0xa7a084538de04d808f20c785762934dd5da7b3b4/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | polygon | n/a | [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | arbitrum | n/a | [`0xee3383...5dcc15`](./contracts/arbitrum-42161/0xee338313f022caee84034253174fa562495dcc15/) | ⚠️ Unaudited |
| iMSD | unknown | arbitrum | n/a | 3 deployments: optimism `0x0c9261...d81740`; arbitrum [`0x062465...c72c96`](./contracts/arbitrum-42161/0x06246560298c5ebdda06ab8be6731b9cf8c72c96/); arbitrum `0xd7ede5...3d247f` | ⚠️ Unaudited |
| iMSDMiniPool | unknown | optimism | n/a | 2 deployments: optimism [`0xb24912...d978ef`](./contracts/optimism-10/0xb249124bab33f78dd975e4e725e6a20868d978ef/); optimism `0xb6ef2c...eaa4c0` | ⚠️ Unaudited |
| iMSDV2BLP | unknown | optimism | n/a | [`0x94a14b...45876a`](./contracts/optimism-10/0x94a14ba6e59f4be36a77041ef5590fe24445876a/) | ⚠️ Unaudited |
| iMSDV2BLP | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/); arbitrum `0xe8c85b...fea56c` | ⚠️ Unaudited |
| iMUSX | unknown | optimism | n/a | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | ⚠️ Unaudited |
| Imx | unknown | ethereum | n/a | [`0x7b35ce...764a00`](./contracts/ethereum-1/0x7b35ce522cb72e4077baeb96cb923a5529764a00/) | ⚠️ Unaudited |
| IncentiveEventsReward | unknown | bsc | n/a | 4 deployments: optimism `0xf6c5d7...2ad881`; bsc [`0x12e45e...6975df`](./contracts/bsc-56/0x12e45e323d44209fcb9afef0e5793b92296975df/); bsc `0x1619de...63feca`; bsc `0xb06d3a...e52cc6` | ⚠️ Unaudited |
| IncentiveEventsRewardNew | unknown | bsc | n/a | [`0xaf2d36...94e390`](./contracts/bsc-56/0xaf2d365e668baafedcfd256c0fbbe519e594e390/) | ⚠️ Unaudited |
| IndicesSupplyRedeemZap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49e4c5...0c6e54`](./contracts/ethereum-1/0x49e4c572761db50b9999948a46daf2d7710c6e54/); ethereum `0x85c6d6...36b9e9` | ⚠️ Unaudited |
| InitialClaim | unknown | ethereum | n/a | [`0x2ad3cf...a17a11`](./contracts/ethereum-1/0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x99a4c9...6be75a`](./contracts/ethereum-1/0x99a4c9e302ce95562df9064542ad8698006be75a/) | ⚠️ Unaudited |
| IntermediaryBridgeToken | unknown | polygon | n/a | [`0x8dd56c...41b136`](./contracts/polygon-137/0x8dd56c42b0e5b38ceaa17179e11318ec6841b136/) | ⚠️ Unaudited |
| IntermediaryOriginalToken | unknown | ethereum | n/a | [`0x6521c5...1857dd`](./contracts/ethereum-1/0x6521c50810f0d882b2c64a235805d3f5241857dd/) | ⚠️ Unaudited |
| InternalHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3c5732...eb7f8b`](./contracts/ethereum-1/0x3c573234e1a9e47e0cac56db543e1ca153eb7f8b/); ethereum `0x885dd1...4cf592` | ⚠️ Unaudited |
| iToken | unknown | optimism | n/a | 2 deployments: optimism [`0x52eacd...025f37`](./contracts/optimism-10/0x52eacd19e38d501d006d2023c813d7e37f025f37/); optimism `0xb98024...67e58f` | ⚠️ Unaudited |
| iToken | unknown | arbitrum | n/a | 2 deployments: polygon `0xfe5ad9...b1fa3c`; arbitrum [`0x45b563...4a0772`](./contracts/arbitrum-42161/0x45b5636b01091336f02194d327374924d54a0772/) | ⚠️ Unaudited |
| iTokenV2BLP | token | optimism | n/a | 12 deployments: optimism [`0x1f144c...8e2ed7`](./contracts/optimism-10/0x1f144cd63d7007945292ebcde14a6df8628e2ed7/); optimism `0x24d302...06eb27`; optimism `0x4b3488...e09a16`; optimism `0x5bede6...78564c`; optimism `0x5d05c1...48fc44`; optimism `0x683236...4a6ce6`; optimism `0x7702dc...f1d725`; optimism `0x7e7e1d...44ce43`; optimism `0xb34479...1a2cc2`; optimism `0xd65a18...1288d5`; optimism `0xdd40bb...b28ece`; optimism `0xed3c20...aff36f` | ⚠️ Unaudited |
| iTokenV2BLP | token | polygon | n/a | 10 deployments: polygon [`0x0c9261...d81740`](./contracts/polygon-137/0x0c92617df0753af1cab2d9cc6a56173970d81740/); polygon `0x159624...31ad6d`; polygon `0x38d0c4...1cd6f9`; polygon `0x5268b3...b65234`; polygon `0x7d86ee...691b68`; polygon `0x94a14b...45876a`; polygon `0xb3ab71...6a504e`; polygon `0xc171eb...a29882`; polygon `0xcb5d9b...f939b2`; polygon `0xec85f7...96d95b` | ⚠️ Unaudited |
| iTokenV2BLP | token | arbitrum | n/a | 9 deployments: arbitrum [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/); arbitrum `0x0385f8...56cbaa`; arbitrum `0x46eca1...feb17a`; arbitrum `0x567554...3b0b8b`; arbitrum `0x8dc331...4d4ae0`; arbitrum `0xaea8e2...9c4a63`; arbitrum `0xd3204e...ee0acc`; arbitrum `0xf52f07...9692a9`; arbitrum `0xf69959...12b628` | ⚠️ Unaudited |
| izumiToken | token | ethereum | n/a | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| JonesAirdrop | unknown | arbitrum | n/a | [`0x5444c7...e7944d`](./contracts/arbitrum-42161/0x5444c71cdd5ed85b6d51a297175bf71914e7944d/) | ⚠️ Unaudited |
| JonesArbETHVaultV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6be861...8b1354`](./contracts/arbitrum-42161/0x6be861aa87009331bf62e22d418ab666e88b1354/); arbitrum `0xd126f3...7535f8`; arbitrum `0xd38e5d...0e7b2d` | ⚠️ Unaudited |
| JonesAsset | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/); arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xc38687...f4768c`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| JonesAssetVaultV1 | unknown | arbitrum | n/a | [`0xeefd6b...dd2281`](./contracts/arbitrum-42161/0xeefd6ba4f562330a3ba35badce2210a2e6dd2281/) | ⚠️ Unaudited |
| JonesBuybacks | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2d067a...16c0c3`](./contracts/arbitrum-42161/0x2d067a1dc49f4b5809619bdbd2289d067016c0c3/); arbitrum `0xa00523...0cad24` | ⚠️ Unaudited |
| JonesDpxCallStrategy | unknown | arbitrum | n/a | [`0x6ecaa3...ed7c24`](./contracts/arbitrum-42161/0x6ecaa3203aeb4d0cc21745f2752a73b41ced7c24/) | ⚠️ Unaudited |
| JonesDpxPutStrategy | unknown | arbitrum | n/a | [`0x504764...d9d31f`](./contracts/arbitrum-42161/0x504764add41632c460924456074aa62c1bd9d31f/) | ⚠️ Unaudited |
| JonesDPXVaultV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1c8db7...7612ba`](./contracts/arbitrum-42161/0x1c8db76703ad7e33551e6e022bf429fd857612ba/); arbitrum `0x211c70...f7c221`; arbitrum `0xba3386...80f7b4` | ⚠️ Unaudited |
| JonesDPXVaultV3 | unknown | arbitrum | n/a | [`0x5ba98a...0e1246`](./contracts/arbitrum-42161/0x5ba98ad75ab87eb90ffc2b680bcfc6b9030e1246/) | ⚠️ Unaudited |
| JonesERC20VaultV3 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x42448f...0e88e5`](./contracts/arbitrum-42161/0x42448fddcec02124cf6db19a9f91dea7bb0e88e5/); arbitrum `0x8883e5...73f3f5`; arbitrum `0xf46ce0...755346` | ⚠️ Unaudited |
| JonesEthCallStrategy | unknown | arbitrum | n/a | [`0xba0563...c1f1dc`](./contracts/arbitrum-42161/0xba0563ffe3c7abe915d3dc404f1667682bc1f1dc/) | ⚠️ Unaudited |
| JonesEthPutStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x02017a...43674e`](./contracts/arbitrum-42161/0x02017a8334196537fd1933de833b3ece9a43674e/); arbitrum `0x6266d3...c77f81` | ⚠️ Unaudited |
| JonesGohmCallStrategy | unknown | arbitrum | n/a | [`0x68798c...41bf04`](./contracts/arbitrum-42161/0x68798c683dbd43c3a16ae8c3e02c37999641bf04/) | ⚠️ Unaudited |
| JonesGohmPutStrategy | unknown | arbitrum | n/a | [`0xe5a8ab...ccba61`](./contracts/arbitrum-42161/0xe5a8ab24dc1b0f54dc3803cb33098879f8ccba61/) | ⚠️ Unaudited |
| JonesgOHMVaultV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9a62e4...69c814`](./contracts/arbitrum-42161/0x9a62e407028961eac4538453cb5d97038b69c814/); arbitrum `0xa0f154...4d76ba` | ⚠️ Unaudited |
| JonesHedgingV3Strategy | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x211187...b6beb9`](./contracts/arbitrum-42161/0x2111875f2e37d98c0b00bc66099b1bfb07b6beb9/); arbitrum `0xb9bd05...7543e6`; arbitrum `0xc8d6d2...d12725`; arbitrum `0xe36fa7...77d349`; arbitrum `0xe98f68...d02939` | ⚠️ Unaudited |
| JonesRdpxCallStrategy | unknown | arbitrum | n/a | [`0xb98976...3aabc5`](./contracts/arbitrum-42161/0xb98976a008191948a6857df824034d3c5f3aabc5/) | ⚠️ Unaudited |
| JonesRdpxPutStrategy | unknown | arbitrum | n/a | [`0x261287...84e823`](./contracts/arbitrum-42161/0x2612870b2a96f43430e19bb6873a74295684e823/) | ⚠️ Unaudited |
| JonesSaleClaim | unknown | arbitrum | n/a | [`0x5a81ab...19829b`](./contracts/arbitrum-42161/0x5a81abb52d96241d15d8b2bdcd76034e4119829b/) | ⚠️ Unaudited |
| JonesSSOVCallV3Strategy | unknown | arbitrum | n/a | 10 deployments: arbitrum [`0x1304e5...c897dd`](./contracts/arbitrum-42161/0x1304e5a0e6fff1556cf8f8dcc346c7dbd2c897dd/); arbitrum `0x30f3cd...1a083f`; arbitrum `0x37a15b...607c05`; arbitrum `0x5faa93...4bf437`; arbitrum `0x67b99b...510e57`; arbitrum `0xc298d6...5a1637`; arbitrum `0xc54562...b42538`; arbitrum `0xcb75dd...637d86`; arbitrum `0xcb9423...91044c`; arbitrum `0xd74645...7520a5` | ⚠️ Unaudited |
| JonesSSOVPutV3Strategy | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x220890...ebeb34`](./contracts/arbitrum-42161/0x22089039a813aedde848ac5876c1492fd2ebeb34/); arbitrum `0x34c471...6529b6`; arbitrum `0x43c952...35a6cd`; arbitrum `0xa151fe...49f1d0`; arbitrum `0xb3994c...a54fc1`; arbitrum `0xbd2c07...3e7545`; arbitrum `0xdedc5d...376ffa`; arbitrum `0xe2bfe2...1d6110` | ⚠️ Unaudited |
| JonesToken | token | arbitrum | n/a | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | ⚠️ Unaudited |
| JonesTokenSale | unknown | arbitrum | n/a | [`0x6580f4...36f79a`](./contracts/arbitrum-42161/0x6580f41efc34e6d49ab692bd338d2a0e0636f79a/) | ⚠️ Unaudited |
| JonesTokenSaleV3 | unknown | arbitrum | n/a | [`0x8a0027...4f1cf5`](./contracts/arbitrum-42161/0x8a0027152ad2781c0cbabda0cc53290bf04f1cf5/) | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x086d9a...be7772`](./contracts/arbitrum-42161/0x086d9abc69c60b75470e620221cd857bcdbe7772/); arbitrum `0xbcb55b...6f3c2d` | ⚠️ Unaudited |
| Kromatika | unknown | ethereum | n/a | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | n/a | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | n/a | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | n/a | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | 2 deployments: optimism [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/); optimism `0xf98dcd...590b07` | ⚠️ Unaudited |
| L2USXTokenBridge | unknown | optimism | n/a | [`0xc76cbf...4d5d67`](./contracts/optimism-10/0xc76cbfbafd41761279e3edb23fd831ccb74d5d67/) | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | n/a | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| LandsaleNFT_ESTATE | token | ethereum | n/a | [`0x28cd29...8dc654`](./contracts/ethereum-1/0x28cd2990f34db387d011d7cc693a2bcedd8dc654/) | ⚠️ Unaudited |
| LargeToken | unknown | ethereum | n/a | [`0x206059...693d7a`](./contracts/ethereum-1/0x2060599f7a1523b65b23aac59570c8984e693d7a/) | ⚠️ Unaudited |
| LendingDataV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x0c0adb...a59173`](./contracts/optimism-10/0x0c0adb03423c8232a0b7785433919eaf62a59173/); optimism `0xa89ebe...0399b7` | ⚠️ Unaudited |
| LendingDataV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3b7d9a...ac776e`](./contracts/arbitrum-42161/0x3b7d9a4cdbacf96bd4f7ffe8c15e9581daac776e/); arbitrum `0x9ddbb2...a39941` | ⚠️ Unaudited |
| LockedTokenVault | core_logic | ethereum | n/a | [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/) | ⚠️ Unaudited |
| LockingContract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x08e5d6...3353f4`](./contracts/ethereum-1/0x08e5d6e7c61e675e5a9b4eee9c1dd2ce113353f4/); ethereum `0x366f52...8ac83a`; ethereum `0x3e07ad...a16e71`; ethereum `0x543895...eba293`; ethereum `0x6e1f65...53f3c2`; ethereum `0xdcd84a...4a4b45`; ethereum `0xee88e0...bfadb0` | ⚠️ Unaudited |
| LockToken | unknown | moonriver | n/a | [`0x959890...dfe7c4`](./contracts/moonriver-1285/0x95989005cdc3d128a5a3c706797d5e408cdfe7c4/) | ⚠️ Unaudited |
| LPStakingRewards | unknown | optimism | n/a | [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/) | ⚠️ Unaudited |
| LPStakingRewards | unknown | optimism | n/a | 2 deployments: optimism [`0x38f148...613c6e`](./contracts/optimism-10/0x38f1487bd60142ae3633c082934455f06b613c6e/); optimism `0x63a634...869c90` | ⚠️ Unaudited |
| LPStakingRewards | unknown | optimism | n/a | [`0xa143e0...08dd6f`](./contracts/optimism-10/0xa143e04a0090cc55c13a8280d52192a2d008dd6f/) | ⚠️ Unaudited |
| LQTYStaking | unknown | avalanche | n/a | [`0xb4387d...e1053c`](./contracts/avalanche-43114/0xb4387d93b5a9392f64963cd44389e7d9d2e1053c/) | ⚠️ Unaudited |
| LQTYToken | token | avalanche | n/a | [`0x094bd7...0fddcc`](./contracts/avalanche-43114/0x094bd7b2d99711a1486fb94d4395801c6d0fddcc/) | ⚠️ Unaudited |
| LSR | unknown | polygon | n/a | 2 deployments: optimism `0xaf7cbb...702478`; polygon [`0x7702dc...f1d725`](./contracts/polygon-137/0x7702dc73e8f8d9ae95cf50933adbee68e9f1d725/) | ⚠️ Unaudited |
| LSRFactory | unknown | optimism | n/a | 2 deployments: optimism [`0xd7656c...dea038`](./contracts/optimism-10/0xd7656c7f0268bb222c94cfba57b046a433dea038/); optimism `0xd8150d...8abf26` | ⚠️ Unaudited |
| LSRFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x5f01f8...3e8bff`](./contracts/polygon-137/0x5f01f88a6b6c33de5668dc2de983abe84b3e8bff/); polygon `0x662da3...639c0d` | ⚠️ Unaudited |
| LSRSupport | unknown | optimism | n/a | [`0x4653fc...ae6c3c`](./contracts/optimism-10/0x4653fc730e3c8b7eeb2faec65458c6f927ae6c3c/) | ⚠️ Unaudited |
| LUSDToken | token | avalanche | n/a | [`0x4fbf04...066095`](./contracts/avalanche-43114/0x4fbf0429599460d327bd5f55625e30e4fc066095/) | ⚠️ Unaudited |
| Lyra | unknown | ethereum | n/a | [`0x01ba67...5105bf`](./contracts/ethereum-1/0x01ba67aac7f75f647d94220cc98fb30fcc5105bf/) | ⚠️ Unaudited |
| LyraSafetyModule | unknown | ethereum | n/a | 5 deployments: ethereum [`0x6c5bc6...3438aa`](./contracts/ethereum-1/0x6c5bc62e9a1fe03446a7d7755703af11b53438aa/); ethereum `0x857bc2...ccbbfa`; ethereum `0x88e7e5...e30afc`; ethereum `0xb7e28a...af857a`; ethereum `0xdb0493...69c3de` | ⚠️ Unaudited |
| LyraSafetyModule | unknown | ethereum | n/a | [`0xcb9f85...c77d49`](./contracts/ethereum-1/0xcb9f85730f57732fc899fb158164b9ed60c77d49/) | ⚠️ Unaudited |
| LyraSafetyModuleMigration | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb9619d...19a219`](./contracts/ethereum-1/0xb9619d73c08076bc5d4f0470593e98b9eb19a219/); ethereum `0xc6ece7...aae87b` | ⚠️ Unaudited |
| LyraUsdcSafetyModule | unknown | ethereum | n/a | [`0xcf9ef4...706b52`](./contracts/ethereum-1/0xcf9ef4ec906d92447682828d3fd87db8a9706b52/) | ⚠️ Unaudited |
| LyraUsdcSafetyModuleMigration | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54d59c...6f5472`](./contracts/ethereum-1/0x54d59c4596c7ea66fd62188ba1e16db39e6f5472/); ethereum `0x79eb08...6d1a75` | ⚠️ Unaudited |
| LyraUsdcSafetyModuleMigration | unknown | ethereum | n/a | 3 deployments: ethereum [`0x625cde...a995d6`](./contracts/ethereum-1/0x625cdefa6d76f9ed2587b704255b974899a995d6/); ethereum `0x71e65f...943294`; ethereum `0xfc1ab6...8982d8` | ⚠️ Unaudited |
| MappingTokenV2 | unknown | moonriver | n/a | 6 deployments: moonriver [`0x31d459...96c2d5`](./contracts/moonriver-1285/0x31d45973e7428251a69d767e077dc50bf696c2d5/); moonriver `0x900f1e...802667`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| MarchMadness | unknown | optimism | n/a | 3 deployments: optimism [`0x3b05d4...2a4c31`](./contracts/optimism-10/0x3b05d4c58de4e96ea093032c6d70c7e4212a4c31/); optimism `0xd24f79...e2745d`; optimism `0xf1299a...0d96de` | ⚠️ Unaudited |
| MaskToken | token | ethereum | n/a | [`0x69af81...623074`](./contracts/ethereum-1/0x69af81e73a73b40adf4f3d4223cd9b1ece623074/) | ⚠️ Unaudited |
| MBusSupport | unknown | optimism | n/a | [`0x4b72e3...8026ed`](./contracts/optimism-10/0x4b72e30c9bd7e42186d28455b8493cc9b28026ed/) | ⚠️ Unaudited |
| MCapWeightStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25be31...7e034e`](./contracts/ethereum-1/0x25be31ca0b36d5077a922d4ee54c08111a7e034e/); ethereum `0x54c2f1...713e57` | ⚠️ Unaudited |
| MCB | unknown | ethereum | n/a | [`0x1021b7...906d3c`](./contracts/ethereum-1/0x1021b725c8c10dc6240c9f1f151095d798906d3c/) | ⚠️ Unaudited |
| MediumToken | unknown | ethereum | n/a | [`0xdcb620...53d23b`](./contracts/ethereum-1/0xdcb620d7e340c11919d580f1959d0c770f53d23b/) | ⚠️ Unaudited |
| MELOS | unknown | ethereum | n/a | [`0x1afb69...19e647`](./contracts/ethereum-1/0x1afb69dbc9f54d08dab1bd3436f8da1af819e647/) | ⚠️ Unaudited |
| MetavaultRefund | core_logic | arbitrum | n/a | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | ⚠️ Unaudited |
| MillinerV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x018b44...900717`](./contracts/arbitrum-42161/0x018b44c923a567205caee45b882fd61394900717/); arbitrum `0xb94d19...0fd756` | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/); arbitrum `0x68f81a...7120c7`; arbitrum `0x7522e6...6c7c74` | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | [`0x8765b1...203656`](./contracts/ethereum-1/0x8765b1a0eb57ca49be7eacd35b24a574d0203656/) | ⚠️ Unaudited |
| MintSwapCanonicalTokenUpgradableFreezable | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1f0454...b0e82d`](./contracts/avalanche-43114/0x1f045412ffaabe765667c28d13dfdac7d4b0e82d/); avalanche `0xe4f666...a06b18` | ⚠️ Unaudited |
| MockCVP | unknown | ethereum | n/a | [`0xa993d7...4d8eed`](./contracts/ethereum-1/0xa993d7bb4397f0e18fd292c4bb1bd75e504d8eed/) | ⚠️ Unaudited |
| MSActivityCenter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27a7a1...6099f5`](./contracts/ethereum-1/0x27a7a10b8f52d67fbf6facdb8bf7c530696099f5/); ethereum `0x7cb6de...f7c81d` | ⚠️ Unaudited |
| MSD | unknown | optimism | n/a | 2 deployments: optimism [`0xbfd291...4848b9`](./contracts/optimism-10/0xbfd291da8a403daaf7e5e9dc1ec0aceacd4848b9/); optimism `0xcf66eb...7aa752` | ⚠️ Unaudited |
| MSD | unknown | polygon | n/a | 3 deployments: polygon [`0x1ee116...1265cf`](./contracts/polygon-137/0x1ee116b869ecc7cd13c629a8a2ae39fa361265cf/); polygon `0x448bbb...d3a4a8`; polygon `0xcf66eb...7aa752` | ⚠️ Unaudited |
| MSD | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x632a42...707f7f`](./contracts/arbitrum-42161/0x632a428d0d321ecff0429864350c04b2ff707f7f/); arbitrum `0x68ed08...28105f`; arbitrum `0xd4ef0d...f46b44` | ⚠️ Unaudited |
| MSD | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x641441...6b4edb`](./contracts/arbitrum-42161/0x641441c631e2f909700d2f41fd87f0aa6a6b4edb/); arbitrum `0xc21258...2f3abd`; arbitrum `0xe386af...57a299` | ⚠️ Unaudited |
| MSDController | unknown | arbitrum | n/a | [`0xb8e6c1...481302`](./contracts/arbitrum-42161/0xb8e6c1712d9ac05d98d62c46bcf2e052ae481302/) | ⚠️ Unaudited |
| MSDControllerV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x428e19...d181be`](./contracts/optimism-10/0x428e1914404dbff52bd8c7baed9719cc5ed181be/); optimism `0x9e8b68...94767c` | ⚠️ Unaudited |
| MSDControllerV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x3a5985...5c617c`](./contracts/polygon-137/0x3a5985f97222f7ab85c1a7e01563896e5c5c617c/); polygon `0x40be37...01c499` | ⚠️ Unaudited |
| MSDControllerV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x38a558...d7c5ff`](./contracts/arbitrum-42161/0x38a5585d347e8dfc3965c1914498eafbded7c5ff/); arbitrum `0x5b8856...3dcf39` | ⚠️ Unaudited |
| MSNFT | token | ethereum | n/a | [`0xf38ee8...833d32`](./contracts/ethereum-1/0xf38ee864e36650f8c0abd14622a55bb1f6833d32/) | ⚠️ Unaudited |
| MSStaking | unknown | ethereum | n/a | [`0xed148e...5aa9ba`](./contracts/ethereum-1/0xed148ecdb3658388ddeca2a9ca19b569ef5aa9ba/) | ⚠️ Unaudited |
| MSU | unknown | ethereum | n/a | [`0xdfd8d6...43992b`](./contracts/ethereum-1/0xdfd8d604951ebf1b2297285f1b68de140c43992b/) | ⚠️ Unaudited |
| MToken | token | ethereum | n/a | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | ⚠️ Unaudited |
| Multicall2 | periphery | metis | n/a | 3 deployments: optimism `0x7e2dc2...90076b`; metis [`0x32960f...d771ed`](./contracts/metis-1088/0x32960f513727b54876d8974bcb3f107b07d771ed/); arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| MyTransparentUpgradeableProxy | unknown | optimism | n/a | [`0xfcdb1a...b7053f`](./contracts/optimism-10/0xfcdb1a1afaab60230bbc55d8b3de27f47fb7053f/) | ⚠️ Unaudited |
| OneinchSupport | unknown | optimism | n/a | [`0xb173cf...774c08`](./contracts/optimism-10/0xb173cf446a3aa3420c780d4a034d0e06b1774c08/) | ⚠️ Unaudited |
| OneInchZapLib | unknown | arbitrum | n/a | [`0x38b700...95300d`](./contracts/arbitrum-42161/0x38b700f33daa663de0e05a487c41aa070c95300d/) | ⚠️ Unaudited |
| OneTokenV1 | token | ethereum | n/a | [`0xca3753...deaf90`](./contracts/ethereum-1/0xca37530e7c5968627be470081d1c993eb1deaf90/) | ⚠️ Unaudited |
| OpenDAO | unknown | ethereum | n/a | [`0x3b484b...c0aee0`](./contracts/ethereum-1/0x3b484b82567a09e2588a13d54d032153f0c0aee0/) | ⚠️ Unaudited |
| OpenDAOLock | unknown | ethereum | n/a | [`0x2121e4...b662b1`](./contracts/ethereum-1/0x2121e4d93e3352b812a5b3fd7fbd194c4bb662b1/) | ⚠️ Unaudited |
| OpenDAOMembershipNFT | token | ethereum | n/a | [`0xd22f83...abc44d`](./contracts/ethereum-1/0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d/) | ⚠️ Unaudited |
| OpenDAOStaking | unknown | ethereum | n/a | [`0xedd27c...90d7d1`](./contracts/ethereum-1/0xedd27c961ce6f79afc16fd287d934ee31a90d7d1/) | ⚠️ Unaudited |
| OpThales | unknown | optimism | n/a | 2 deployments: ethereum `0x8947da...a8c3c5`; optimism [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | ⚠️ Unaudited |
| OptimismTreasury | unknown | optimism | n/a | [`0x55c168...5296e7`](./contracts/optimism-10/0x55c1688587e6dfd52e44bf8b7028a8f7525296e7/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | metis | n/a | [`0x90fbe9...99a13e`](./contracts/metis-1088/0x90fbe9dfe76f6ef971c7a297641dfa397099a13e/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x26c76f...1e1e4b`](./contracts/avalanche-43114/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/); avalanche `0x5a926e...01ad57` | ⚠️ Unaudited |
| Oracle | unknown | optimism | n/a | 2 deployments: optimism [`0x480798...89c4c1`](./contracts/optimism-10/0x480798e9496a99e6a48948ab478807079289c4c1/); optimism `0xb92e07...f97f70` | ⚠️ Unaudited |
| Oracle | unknown | polygon | n/a | 2 deployments: polygon [`0x40a33f...f47c65`](./contracts/polygon-137/0x40a33fb67b8dafe88a5b1930be03c82157f47c65/); polygon `0xd2de88...cbe1df` | ⚠️ Unaudited |
| OvertimeVoucher | unknown | optimism | n/a | 3 deployments: optimism [`0x5442ff...a3c671`](./contracts/optimism-10/0x5442ff0573fd54a4f6c02a7a0d8e22bdc1a3c671/); optimism `0xbac6c6...f51069`; optimism `0xc9183e...152536` | ⚠️ Unaudited |
| ParlayMarketsAMM | unknown | optimism | n/a | [`0x912f88...1e4d4e`](./contracts/optimism-10/0x912f889034ddd593a087c4e59061e549891e4d4e/) | ⚠️ Unaudited |
| ParlayVault | unknown | optimism | n/a | [`0x0a9397...08aacd`](./contracts/optimism-10/0x0a9397378c427e39bde0c53e6626523b7d08aacd/) | ⚠️ Unaudited |
| ParlayVerifier | unknown | optimism | n/a | [`0x146444...8017b6`](./contracts/optimism-10/0x146444d363028c5495f7d57a4c49e641ce8017b6/) | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | bsc | n/a | 8 deployments: ethereum `0x52e4f2...4de084`; optimism `0xc3c5b9...d9699a`; bsc [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/); polygon `0xb51541...4502bb`; base `0x5471ea...a953e4`; arbitrum `0xc72e7f...3aaf6b`; avalanche `0xb774c6...fed195`; linea `0x9bb46d...233f4d` | ⚠️ Unaudited |
| Perlin | unknown | ethereum | n/a | [`0xeca821...860318`](./contracts/ethereum-1/0xeca82185adce47f39c684352b0439f030f860318/) | ⚠️ Unaudited |
| Perpetual | unknown | ethereum | n/a | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | ⚠️ Unaudited |
| PerpToken | token | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| Platform | unknown | ethereum | n/a | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | ⚠️ Unaudited |
| PlatformMigrator | unknown | ethereum | n/a | [`0xf2cab8...f18642`](./contracts/ethereum-1/0xf2cab8d689c8cdf7cb7927c8eddc65d5cef18642/) | ⚠️ Unaudited |
| Pluto | unknown | ethereum | n/a | [`0xdfe3ac...ed5447`](./contracts/ethereum-1/0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447/) | ⚠️ Unaudited |
| PolkaExToken | token | ethereum | n/a | [`0xe6f143...206920`](./contracts/ethereum-1/0xe6f143a0e0a8f24f6294ce3432ea10fad0206920/) | ⚠️ Unaudited |
| PooledMappingToken | unknown | avalanche | n/a | [`0xae110a...2b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | ⚠️ Unaudited |
| PositionalMarketData | unknown | optimism | n/a | [`0x63f072...5e9a84`](./contracts/optimism-10/0x63f072928cac9ffd799c6d0f985f9ee3985e9a84/) | ⚠️ Unaudited |
| PositionalMarketManager | unknown | optimism | n/a | 5 deployments: optimism [`0x734c6c...38fdc2`](./contracts/optimism-10/0x734c6c0fb8068afc4d795af32b65ba31bb38fdc2/); optimism `0x79599f...6e48f8`; optimism `0xc0201e...cfd26d`; optimism `0xe2f77e...378332`; optimism `0xefe06b...c64d26` | ⚠️ Unaudited |
| PositionalMarketMastercopy | unknown | optimism | n/a | 2 deployments: optimism [`0x470a69...9564ff`](./contracts/optimism-10/0x470a69afec851c1c4022b4a1b9d3a729389564ff/); optimism `0xfb6527...eb8335` | ⚠️ Unaudited |
| PositionRewards | unknown | ethereum | n/a | [`0xe9d634...492ab4`](./contracts/ethereum-1/0xe9d634d2767079a2bff2ced1584f8f5623492ab4/) | ⚠️ Unaudited |
| PositionRewardsV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d48b9...e8736d`](./contracts/ethereum-1/0x6d48b988d8c206939d3ae08896bac8e0f6e8736d/); ethereum `0xd5c0a6...027c99` | ⚠️ Unaudited |
| PowerIndexRouter | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0a6aa1...897c7c`](./contracts/ethereum-1/0x0a6aa119c58ce6e7733da6ece7fba5668d897c7c/); ethereum `0x0d0b8d...8c3094`; ethereum `0xd24e3d...93be61`; ethereum `0xdaf584...38d655` | ⚠️ Unaudited |
| PowerOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x019e14...6181fb`](./contracts/ethereum-1/0x019e14da4538ae1bf0bcd8608ab8595c6c6181fb/); ethereum `0x3359bb...51a0f0` | ⚠️ Unaudited |
| PowerOracle | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0f730d...5519cc`](./contracts/ethereum-1/0x0f730deacbec9851d4d8cf25c93c2120485519cc/); ethereum `0x4b6e55...2184b4`; ethereum `0x8e7e51...79a677`; ethereum `0xa39492...5d8807`; ethereum `0xe8672c...1e03c9`; ethereum `0xf0d676...90c6d2` | ⚠️ Unaudited |
| PowerOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x213e54...62c2ec`](./contracts/ethereum-1/0x213e547cb9f3abb34720e8643aec87f55362c2ec/); ethereum `0x50f8d7...edb988` | ⚠️ Unaudited |
| PowerOracleStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb10f9b...32834c`](./contracts/ethereum-1/0xb10f9bb26eabb1f64e45eb0e0910f29efd32834c/); ethereum `0xf05532...2cfe21` | ⚠️ Unaudited |
| PowerPoke | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04d7aa...be5b96`](./contracts/ethereum-1/0x04d7aa22ef7181ee3142f5063e026af1bbbe5b96/); ethereum `0xfe53ad...a5b059` | ⚠️ Unaudited |
| PowerPokeStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x646e84...f425f5`](./contracts/ethereum-1/0x646e846b6ee143bde4f329d4165929bbdcf425f5/); ethereum `0xc0cd31...eb74b2` | ⚠️ Unaudited |
| PPAgentV2ExternalLens | unknown | ethereum | n/a | [`0xbb8dac...a54f07`](./contracts/ethereum-1/0xbb8dac006c8b6f67c4bc2563b64ed669faa54f07/) | ⚠️ Unaudited |
| PPAgentV2Randao | unknown | ethereum | n/a | 3 deployments: ethereum [`0x269c0e...7538dc`](./contracts/ethereum-1/0x269c0ef2a33e9c09c8dbe387b004da65e57538dc/); ethereum `0x317790...16eda3`; ethereum `0xaa635a...de4a96` | ⚠️ Unaudited |
| PPTimedVesting | operational_periphery | ethereum | n/a | [`0x60842a...6b28b3`](./contracts/ethereum-1/0x60842a6b44cca5eb7685d1135acf69b1336b28b3/) | ⚠️ Unaudited |
| PriceFeed | unknown | optimism | n/a | 2 deployments: optimism [`0x22e12a...de9e0c`](./contracts/optimism-10/0x22e12a53cb40533707881607f808c7939cde9e0c/); optimism `0x5d3174...642d4e` | ⚠️ Unaudited |
| PriceFeed | unknown | optimism | n/a | 2 deployments: optimism [`0x6b33b9...51f803`](./contracts/optimism-10/0x6b33b99e3d3213df963375e6d94aba968351f803/); optimism `0xcd9c0e...828d3e` | ⚠️ Unaudited |
| PriceFeed | unknown | optimism | n/a | 2 deployments: optimism [`0x9434bd...c72bcc`](./contracts/optimism-10/0x9434bdb4f2d0233904e0301f8bf09ceaf9c72bcc/); optimism `0xbf7f22...87f6ac` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | optimism | n/a | [`0xf4aef2...6390dd`](./contracts/optimism-10/0xf4aef21d906992afadde7a9676e1db4feb6390dd/) | ⚠️ Unaudited |
| PrivateVesting | unknown | arbitrum | n/a | [`0xf164ac...c63d4c`](./contracts/arbitrum-42161/0xf164acdb5dcf5f855b98f9ba8ca73ca300c63d4c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | metis | n/a | 29 deployments: ethereum `0x2eab10...e7eeab`; ethereum `0x3a2d0d...f1ba1a`; ethereum `0x4194cb...3b192e`; ethereum `0x4bb5a5...deac68`; ethereum `0x520d81...327f8f`; ethereum `0x56feb5...0bd8dc`; ethereum `0x7696f9...8c42bb`; ethereum `0x858d7c...249e11`; ethereum `0x8e3391...c3496b`; ethereum `0xd18019...f3c173`; ethereum `0xe2881c...0c0fa0`; optimism `0x1c4d5e...6ed1c9`; optimism `0x57faad...fa4fd0`; optimism `0x9bb46d...233f4d`; optimism `0xcfecb4...3f0f4a`; bsc `0x440062...885f91`; bsc `0x5e8e7d...631b23`; polygon `0x1cad03...0fa178`; polygon `0x66d1c3...ee2019`; polygon `0x7e2dc2...90076b`; polygon `0xfa4ebe...4c61dc`; metis [`0x09236a...31c51e`](./contracts/metis-1088/0x09236aff6b36a5dbf97b5030a5a650e06931c51e/); moonbeam `0x91abe4...684e07`; moonriver `0xe46910...15b22b`; arbitrum `0x2a0027...72dd81`; arbitrum `0xc9aa79...bfee47`; arbitrum `0xe58917...c89a4d`; avalanche `0xbade2a...6fb5a4`; linea `0x6f8493...6be119` | ⚠️ Unaudited |
| ProxyBuilder | unknown | ethereum | n/a | [`0x54d861...53c56d`](./contracts/ethereum-1/0x54d8614c4fda84480e6452fec29e74452053c56d/) | ⚠️ Unaudited |
| PSP | unknown | ethereum | n/a | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | ⚠️ Unaudited |
| QiStablecoin | token | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| RamsesClaimer | operational_periphery | arbitrum | n/a | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | ⚠️ Unaudited |
| RangedMarketMastercopy | unknown | optimism | n/a | 3 deployments: optimism [`0x6d53c8...2c39c4`](./contracts/optimism-10/0x6d53c852fe7e0b60d54c70e454cbbccbce2c39c4/); optimism `0x6fe6ec...5436fc`; optimism `0xe5109c...dddc84` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | n/a | 12 deployments: optimism [`0x086cc1...49e89d`](./contracts/optimism-10/0x086cc1c04ef1aa4797c18a946c5688bf3949e89d/); optimism `0x094892...7efa9a`; optimism `0x112249...51279d`; optimism `0x11e6ad...b26821`; optimism `0x236057...d6c6d2`; optimism `0x3898b3...f2f47d`; optimism `0x9530c1...2f0c1d`; optimism `0xa484e2...2eb404`; optimism `0xc1f313...9cc62a`; optimism `0xc6bd48...3379d1`; optimism `0xd77cc5...9bfcc9`; optimism `0xee3e5a...1e0fbf` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | n/a | 3 deployments: optimism [`0x16012e...5c6c38`](./contracts/optimism-10/0x16012ef3eec79db8f002a05c7a8102786e5c6c38/); optimism `0xcb933e...7d0113`; optimism `0xeaedb2...dae6ae` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | n/a | 2 deployments: optimism [`0x2d356b...4fe1df`](./contracts/optimism-10/0x2d356b114cbca8deff2d8783eac2a5a5324fe1df/); optimism `0x57ddc5...531032` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | n/a | 2 deployments: optimism [`0x64cb6e...328cc5`](./contracts/optimism-10/0x64cb6ef981e5e432d4362f6a561a31b22e328cc5/); optimism `0x8b2e97...bdead7` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | n/a | 3 deployments: optimism [`0x8ad0b6...2381e8`](./contracts/optimism-10/0x8ad0b66851bd6d50d82f623472a0bf6e402381e8/); optimism `0x99a63e...f2b4d9`; optimism `0xbe4c77...0f6882` | ⚠️ Unaudited |
| RangedPositionMastercopy | unknown | optimism | n/a | 3 deployments: optimism [`0x34ed3d...0c5658`](./contracts/optimism-10/0x34ed3d919ad7f533bfafe9295363d9f37c0c5658/); optimism `0x7801ef...fdad5c`; optimism `0x897563...7c814a` | ⚠️ Unaudited |
| ReefToken | token | ethereum | n/a | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ⚠️ Unaudited |
| Referrals | unknown | optimism | n/a | [`0xcde1c5...38ba00`](./contracts/optimism-10/0xcde1c5d8998165fb417f58b1f258cb0dec38ba00/) | ⚠️ Unaudited |
| RewardDistributor | unknown | optimism | n/a | [`0x6a2631...adbbf7`](./contracts/optimism-10/0x6a26318cbfec1e3e15cf5a64b0a326bae6adbbf7/) | ⚠️ Unaudited |
| RewardDistributor | unknown | optimism | n/a | 2 deployments: optimism [`0x7b5981...11d5ad`](./contracts/optimism-10/0x7b598182875df02236eea8a3e264f9376511d5ad/); optimism `0xf5923d...11cdce` | ⚠️ Unaudited |
| RewardDistributor | unknown | polygon | n/a | 2 deployments: polygon [`0x79010b...014935`](./contracts/polygon-137/0x79010b6cedac29d9470d291277a5684014014935/); polygon `0x958b01...304d0d` | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc0dc7c...69a739`](./contracts/arbitrum-42161/0xc0dc7c5057141c9065bd9bedf79fd4e9ea69a739/); arbitrum `0xdcf837...445891` | ⚠️ Unaudited |
| RewardDistributorSecondV3 | unknown | optimism | n/a | [`0x870ac6...9b71a2`](./contracts/optimism-10/0x870ac6a76a30742800609f205c741e86db9b71a2/) | ⚠️ Unaudited |
| RewardDistributorSecondV3 | unknown | polygon | n/a | [`0x47c19a...f4022f`](./contracts/polygon-137/0x47c19a2ab52da26551a22e2b2aeed5d19ef4022f/) | ⚠️ Unaudited |
| RewardDistributorSecondV3 | unknown | arbitrum | n/a | [`0xf45e2a...6786c3`](./contracts/arbitrum-42161/0xf45e2ae152384d50d4e9b08b8a1f65f0d96786c3/) | ⚠️ Unaudited |
| RewardDistributorV3 | unknown | optimism | n/a | 2 deployments: optimism [`0x03d489...35c0eb`](./contracts/optimism-10/0x03d489d99998fc45d4a14ae260f537a2c435c0eb/); optimism `0x0dc976...2821bb` | ⚠️ Unaudited |
| RewardReceiver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x35da35...24a52a`](./contracts/arbitrum-42161/0x35da35b309cbd41dfaee1bbbca81b469cf24a52a/); arbitrum `0x621c8e...92c1d8` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | [`0x6c5f18...9131d0`](./contracts/ethereum-1/0x6c5f18b0f37cd18871c67378c2478565779131d0/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x124b6a...7d0458`](./contracts/arbitrum-42161/0x124b6aef712f9b2f8e239c01ce251287457d0458/); arbitrum `0x3c3e0a...f7db2b` | ⚠️ Unaudited |
| RFQ | unknown | optimism | n/a | 2 deployments: optimism [`0x44435a...ae05dc`](./contracts/optimism-10/0x44435a66ae25d4e7f2fb054a68bf6a0a44ae05dc/); optimism `0x754f2e...3af818` | ⚠️ Unaudited |
| RoleController | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa7ce1a...00fbdf`](./contracts/arbitrum-42161/0xa7ce1ab769dc8a9274f91254cefc0e817a00fbdf/); arbitrum `0xba5c01...59c838` | ⚠️ Unaudited |
| Router | adapter | moonbeam | n/a | [`0x7a3909...fcab71`](./contracts/moonbeam-1284/0x7a3909c7996efe42d425cd932fc44e3840fcab71/) | ⚠️ Unaudited |
| Router | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4b5cf3...18cabe`](./contracts/arbitrum-42161/0x4b5cf363f3f0fc82678d347fbff9ec2d8118cabe/); arbitrum `0x51c079...8a8314` | ⚠️ Unaudited |
| Router01 | adapter | ethereum | n/a | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| SafeBox | unknown | optimism | n/a | 2 deployments: optimism [`0x15c9ea...27e9db`](./contracts/optimism-10/0x15c9eae416c2e3fbecf2248003a2b2677127e9db/); optimism `0x3094b8...19e8d7` | ⚠️ Unaudited |
| SafeBox | unknown | optimism | n/a | 2 deployments: optimism [`0x4063bf...55cd49`](./contracts/optimism-10/0x4063bfac9b1215c55452b961d428d98bce55cd49/); optimism `0xe85320...32978c` | ⚠️ Unaudited |
| SafeBox | unknown | optimism | n/a | 2 deployments: optimism [`0x6d3705...b62ba7`](./contracts/optimism-10/0x6d3705368323900490193324277a221d8db62ba7/); optimism `0xb30e97...de1ade` | ⚠️ Unaudited |
| SafeBox | unknown | optimism | n/a | 2 deployments: optimism [`0x83a6a8...b5a175`](./contracts/optimism-10/0x83a6a83eed4c97b2b4b60a02df1ac27c0db5a175/); optimism `0xe412f4...78c0e9` | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | optimism | n/a | [`0x679c01...7c59e7`](./contracts/optimism-10/0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7/) | ⚠️ Unaudited |
| SafleToken | token | polygon | n/a | [`0x04b330...8ea126`](./contracts/polygon-137/0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126/) | ⚠️ Unaudited |
| Sentinel | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fa2b6...e83cb7`](./contracts/ethereum-1/0x5fa2b63b360fd69ff112a04ff64ddd2829e83cb7/); ethereum `0xa8adba...7d6e21` | ⚠️ Unaudited |
| Sentinel | unknown | optimism | n/a | 2 deployments: optimism [`0xafdb9c...093fe6`](./contracts/optimism-10/0xafdb9c40c7144022811f034ee07ce2e110093fe6/); optimism `0xeb8bbe...08d6b9` | ⚠️ Unaudited |
| Sentinel | unknown | polygon | n/a | 3 deployments: polygon [`0x4c401d...baf213`](./contracts/polygon-137/0x4c401db8cddc3ed80bfd978243c0da4350baf213/); polygon `0x565dcd...df10cd`; polygon `0xd8b0a0...12aec7` | ⚠️ Unaudited |
| Sentinel | unknown | metis | n/a | [`0x23c748...7472eb`](./contracts/metis-1088/0x23c748fef17518b8de55065338d7fa20327472eb/) | ⚠️ Unaudited |
| Sentinel | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x0394c5...48481f`](./contracts/moonbeam-1284/0x0394c51d750e32f252d8a3f3d8670d958948481f/); moonbeam `0x06292d...b93e4c` | ⚠️ Unaudited |
| Sentinel | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9beec5...a15db6`](./contracts/avalanche-43114/0x9beec5bd03025700385e37cd5cbd470d0fa15db6/); avalanche `0xcfb342...db2593` | ⚠️ Unaudited |
| ShareToken | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3d4b40...c261e8`](./contracts/ethereum-1/0x3d4b40ca0f98fcce38aa1704cbdf134496c261e8/); ethereum `0x887c87...720b4d`; ethereum `0x9ec638...bd6958`; ethereum `0xae694f...b26ff2`; ethereum `0xd78ba1...6ec79b`; ethereum `0xdcd1aa...26977b`; ethereum `0xf37781...0a286f` | ⚠️ Unaudited |
| SmallToken | token | ethereum | n/a | [`0x7fa384...23d2f2`](./contracts/ethereum-1/0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | optimism | n/a | [`0x842e89...e0eba5`](./contracts/optimism-10/0x842e89b7a7ef8ce099540b3613264c933ce0eba5/) | ⚠️ Unaudited |
| SportAMMLiquidityPoolData | unknown | optimism | n/a | 6 deployments: optimism [`0x022ca1...76e385`](./contracts/optimism-10/0x022ca1d3570f6c258ed47c381541d8225176e385/); optimism `0x1d9477...fc58b0`; optimism `0x42c6a5...d21ebc`; optimism `0x49e458...dfe340`; optimism `0xabde2d...d39996`; optimism `0xd59cad...3c99ad` | ⚠️ Unaudited |
| SportPositionalMarketData | unknown | optimism | n/a | [`0xfc050b...8db266`](./contracts/optimism-10/0xfc050b42a88c046d54b7a4e3da42d8c9c38db266/) | ⚠️ Unaudited |
| SportPositionalMarketManager | unknown | optimism | n/a | 3 deployments: optimism [`0x46b1ec...18e154`](./contracts/optimism-10/0x46b1ec25e5e7696ecbae9441d3f79d01b118e154/); optimism `0xccf4fd...741a19`; optimism `0xf958a0...1ac945` | ⚠️ Unaudited |
| SportsAMM | unknown | optimism | n/a | [`0x0eeff6...eb0840`](./contracts/optimism-10/0x0eeff6deac317ac3f5ef286d069d213570eb0840/) | ⚠️ Unaudited |
| SportVault | unknown | optimism | n/a | 2 deployments: optimism [`0x0b8f39...7be900`](./contracts/optimism-10/0x0b8f398d8dbb74bf2dc475d02e802334777be900/); optimism `0xf089f0...465d30` | ⚠️ Unaudited |
| SportVault | unknown | optimism | n/a | 8 deployments: optimism [`0x0c09f6...00f62e`](./contracts/optimism-10/0x0c09f6c136e144a5d84b4161b2fc3f245700f62e/); optimism `0x0e12de...093b74`; optimism `0x15983b...2b0e77`; optimism `0x1757cf...90f904`; optimism `0x51b774...485abe`; optimism `0xf270bb...c065a7`; optimism `0xf307ef...efdd34`; optimism `0xfd99fc...b1536a` | ⚠️ Unaudited |
| SportVault | core_logic | optimism | n/a | 4 deployments: optimism [`0x43d198...16d98e`](./contracts/optimism-10/0x43d19841d818b2ccc63a8b44ce8c7def8616d98e/); optimism `0x5e2b49...632d3f`; optimism `0xbaac54...65fd5f`; optimism `0xc922f4...f6cecd` | ⚠️ Unaudited |
| SportVaultData | unknown | optimism | n/a | 3 deployments: optimism [`0x474499...33326d`](./contracts/optimism-10/0x474499e5202d8cc7898358526c8d00b43333326d/); optimism `0xbf8523...705ac2`; optimism `0xdc1885...a9d512` | ⚠️ Unaudited |
| SportVaultData | unknown | optimism | n/a | 2 deployments: optimism [`0x606b55...bc6073`](./contracts/optimism-10/0x606b55b96c833277e972aa18e4ef7d3f53bc6073/); optimism `0x741ad2...95321c` | ⚠️ Unaudited |
| SsovAdapter | unknown | arbitrum | n/a | [`0x634ae8...fe18c2`](./contracts/arbitrum-42161/0x634ae8e6267debe4f67948657e6b903b19fe18c2/) | ⚠️ Unaudited |
| SsovV3Wrapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7487c1...65052f`](./contracts/arbitrum-42161/0x7487c19df56b7ea764fc269468b5d3014565052f/); arbitrum `0xe098e7...c248e2` | ⚠️ Unaudited |
| StabilityPool | core_logic | avalanche | n/a | [`0x7aed63...607522`](./contracts/avalanche-43114/0x7aed63385c03dc8ed2133f705bbb63e8ea607522/) | ⚠️ Unaudited |
| StakingData | unknown | optimism | n/a | [`0xab599b...e0995a`](./contracts/optimism-10/0xab599b2697d836e665706dc59566363e2fe0995a/) | ⚠️ Unaudited |
| StakingData | unknown | optimism | n/a | [`0xcc1342...0c087c`](./contracts/optimism-10/0xcc134245424fe9e10a011961451d5ad6cd0c087c/) | ⚠️ Unaudited |
| StakingPool | unknown | optimism | n/a | [`0x58c9e3...256b0e`](./contracts/optimism-10/0x58c9e3b0ec4c37732ff269b605cda0ee3d256b0e/) | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0x37c7c2...36d6ee`](./contracts/ethereum-1/0x37c7c2ae51e968cefb82cff2102727256d36d6ee/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 5 deployments: ethereum [`0x113414...7c0e4f`](./contracts/ethereum-1/0x11341455ff53af5fb1194680f20d932c287c0e4f/); ethereum `0x18011c...5a2aec`; ethereum `0x1a364a...613f07`; optimism `0x4aec98...83f4f8`; optimism `0xfe757a...986a4d` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | arbitrum | n/a | [`0x2c2082...1a1cf3`](./contracts/arbitrum-42161/0x2c2082e4062bfd02141adc86cbd5e437201a1cf3/) | ⚠️ Unaudited |
| StakingThales | unknown | optimism | n/a | 6 deployments: optimism [`0x0886e6...08d9cd`](./contracts/optimism-10/0x0886e6bea150ed770b2ee3341332339c5c08d9cd/); optimism `0x2113a7...673389`; optimism `0x65682e...da0176`; optimism `0xd47285...a1b823`; optimism `0xed8519...97a85e`; optimism `0xf9ea58...905d4a` | ⚠️ Unaudited |
| StakingThalesBonusRewardsManager | unknown | optimism | n/a | [`0xc07520...9b4271`](./contracts/optimism-10/0xc07520843239c2caa28101d8241d9132669b4271/) | ⚠️ Unaudited |
| Standard | unknown | ethereum | n/a | [`0x9040e2...2b999d`](./contracts/ethereum-1/0x9040e237c3bf18347bb00957dc22167d0f2b999d/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 8 deployments: arbitrum [`0x3a8b78...f345ab`](./contracts/arbitrum-42161/0x3a8b787f78d775aecfeea15706d4221b40f345ab/); arbitrum `0x55ff62...a4bf70`; arbitrum `0x69eb4f...59a581`; arbitrum `0x9c67ee...7dd39c`; arbitrum `0xa72159...1e9b87`; arbitrum `0xae6aab...aba689`; arbitrum `0xcafcd8...efd07b`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| SwapNFT | unknown | optimism | n/a | 2 deployments: optimism [`0x19305f...f60226`](./contracts/optimism-10/0x19305fa7b4832b7f7545cc752c71f8cdf9f60226/); optimism `0x460979...9513e7` | ⚠️ Unaudited |
| TaleOfThalesNFTs | unknown | optimism | n/a | 4 deployments: optimism [`0x41cccb...486d1f`](./contracts/optimism-10/0x41cccb4935386e0471922d460d9194b7db486d1f/); optimism `0x890b55...0cf505`; optimism `0xa9218c...be7021`; optimism `0xae19f4...49e41e` | ⚠️ Unaudited |
| TeamVesting | unknown | arbitrum | n/a | [`0xc1d968...da55b7`](./contracts/arbitrum-42161/0xc1d9682db60955d64f263025b282acbf8cda55b7/) | ⚠️ Unaudited |
| ThalesAMM | unknown | optimism | n/a | 30 deployments: optimism [`0x129e14...554c2f`](./contracts/optimism-10/0x129e14f5e79f1423b79d309a2a7ee43121554c2f/); optimism `0x266b5d...46bb22`; optimism `0x2b8927...d21505`; optimism `0x30efe4...8f1815`; optimism `0x32d742...b2c20f`; optimism `0x3dfe6f...9de2ae`; optimism `0x3e238a...cd82b1`; optimism `0x453858...b26391`; optimism `0x457c4f...53b511`; optimism `0x4726b4...6c56f6`; optimism `0x516c96...f2d644`; optimism `0x5ca2e5...a84281`; optimism `0x5f8b6a...a6bba6`; optimism `0x64c9c8...7bc8dc`; optimism `0x705d97...ec04f5`; optimism `0x729182...ffaab0`; optimism `0x7cafbe...a1f38e`; optimism `0x803201...a0fe79`; optimism `0x87de14...b12a56`; optimism `0x95486a...1bcb34`; optimism `0xb193e7...c684e1`; optimism `0xd0418b...e5197c`; optimism `0xd51721...b61cdb`; optimism `0xde4f54...98451f`; optimism `0xe1fd1c...b0ff92`; optimism `0xe69473...421530`; optimism `0xef9e3a...219e72`; optimism `0xf74c34...0d8cbc`; optimism `0xfa4eb2...03e6ac`; optimism `0xfdbf68...9717c2` | ⚠️ Unaudited |
| ThalesAMM | unknown | optimism | n/a | 2 deployments: optimism [`0x278b5a...dc1a1a`](./contracts/optimism-10/0x278b5a44397c9d8e52743fedec263c4760dc1a1a/); optimism `0xf3b63b...fc369a` | ⚠️ Unaudited |
| ThalesAMM | unknown | optimism | n/a | [`0x5ae745...4ef1b1`](./contracts/optimism-10/0x5ae7454827d83526261f3871c1029792644ef1b1/) | ⚠️ Unaudited |
| ThalesAMM | unknown | optimism | n/a | 2 deployments: optimism [`0xbf40da...b91cd9`](./contracts/optimism-10/0xbf40da2e303c4a7cdb1a7b4d444b10b8e9b91cd9/); optimism `0xebd11d...032b3f` | ⚠️ Unaudited |
| ThalesAMMDefaultLiquidityProvider | unknown | optimism | n/a | 2 deployments: optimism [`0x6ab00f...51d39d`](./contracts/optimism-10/0x6ab00f0b713fd6288fc849b25e580ed2ad51d39d/); optimism `0xb47fb0...a2d6fe` | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | optimism | n/a | [`0xc10a0a...85ea40`](./contracts/optimism-10/0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPoolData | unknown | optimism | n/a | 4 deployments: optimism [`0x1e95fa...c1e0a1`](./contracts/optimism-10/0x1e95faca5f99dcc8e517fea193a3c3b0aac1e0a1/); optimism `0x23823f...8150c2`; optimism `0x8ee4f3...1b376c`; optimism `0xb23ea6...420608` | ⚠️ Unaudited |
| ThalesExchanger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3124a1...3d9701`](./contracts/ethereum-1/0x3124a11216273018c8f37181b4505d36573d9701/); ethereum `0xe0b316...86dd63` | ⚠️ Unaudited |
| ThalesRoyale | unknown | optimism | n/a | [`0x3198ab...a2e579`](./contracts/optimism-10/0x3198ab211cdf3e4d13a698e1fb819507bca2e579/) | ⚠️ Unaudited |
| ThalesStakingRewardsPool | unknown | optimism | n/a | 2 deployments: optimism [`0x0abc94...7a4ee3`](./contracts/optimism-10/0x0abc94987f6b98bfe6fd40f749e445a2857a4ee3/); optimism `0xd671dd...43a91e` | ⚠️ Unaudited |
| TherundownConsumer | unknown | optimism | n/a | 2 deployments: optimism [`0x2447ce...9f9985`](./contracts/optimism-10/0x2447ce55d230c01fc430725a8613d852289f9985/); optimism `0xbc4bbd...9bb1f7` | ⚠️ Unaudited |
| Tickets | unknown | ethereum | n/a | [`0x7a58c0...736c71`](./contracts/ethereum-1/0x7a58c0be72be218b41c608b7fe7c5bb630736c71/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | ⚠️ Unaudited |
| TomHelper | unknown | moonriver | n/a | 2 deployments: moonriver [`0x5c0ae7...7a3139`](./contracts/moonriver-1285/0x5c0ae7c31a3fd60f0ea6d65f7b1aa185687a3139/); moonriver `0xbbd595...961ae4` | ⚠️ Unaudited |
| TomVault | core_logic | moonriver | n/a | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | ⚠️ Unaudited |
| TORN | unknown | ethereum | n/a | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| TornPowerIndexConnector | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0a5527...853780`](./contracts/ethereum-1/0x0a5527eaacb1605bf8801c5fcee4e8ffc8853780/); ethereum `0x4930a6...bf3b79`; ethereum `0x887d87...3d95b7` | ⚠️ Unaudited |
| TracerDAO | unknown | ethereum | n/a | [`0x515f28...aa259a`](./contracts/ethereum-1/0x515f2815c950c8385c1c3c30b63adf3207aa259a/) | ⚠️ Unaudited |
| TracerMultisigDAO | unknown | ethereum | n/a | [`0xa84918...6b6cba`](./contracts/ethereum-1/0xa84918f3280d488eb3369cb713ec53ce386b6cba/) | ⚠️ Unaudited |
| TracerToken | token | ethereum | n/a | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| TransferSwap | unknown | polygon | n/a | [`0xe59817...c771d5`](./contracts/polygon-137/0xe59817a90ebc1f9bf441065042b8913affc771d5/) | ⚠️ Unaudited |
| TransferSwapper | unknown | optimism | n/a | 2 deployments: optimism [`0x42e6af...fb324b`](./contracts/optimism-10/0x42e6af231ba8ee39f1bf185d452061283bfb324b/); optimism `0xdc44ed...1ac4d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e0da4...e0bc60`](./contracts/ethereum-1/0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60/); ethereum `0x2167ee...1f4fbc`; ethereum `0x959fde...a51ec4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x244472...6599a0`](./contracts/ethereum-1/0x2444722a73564060808e0124f4b80bda436599a0/); ethereum `0x3d37c2...3ede5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27f57f...49151f`](./contracts/ethereum-1/0x27f57fd24f8a179f5b57586d809afa7cb649151f/); ethereum `0x36bab6...ee5399` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2878f5...37f7a1`](./contracts/ethereum-1/0x2878f5baf3ebf1de939916901da0a825ad37f7a1/); ethereum `0xfa0458...9b2c79` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x31b1d6...cd5d1e`](./contracts/ethereum-1/0x31b1d6b8a54df568ab9a3659ef269534b9cd5d1e/); ethereum `0x337f91...b93728`; ethereum `0x9ad0e2...b0219d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40651e...8860c2`](./contracts/ethereum-1/0x40651edb84bcf4c3280e2132ae4e8f19e58860c2/); ethereum `0xf3d22b...2ff9bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4856bb...3a6a69`](./contracts/ethereum-1/0x4856bb26be99ed26e1d96d4e324d351da23a6a69/); ethereum `0x57c884...e392ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9cf73e...a68f2b`](./contracts/ethereum-1/0x9cf73e538acc5b2ea51396ea1a6de505f6a68f2b/); ethereum `0xe06ec5...903f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x102f55...90cbdf`](./contracts/optimism-10/0x102f559555022bdf6630b8c84ecbcadb6e90cbdf/); optimism `0xf329b8...b91731` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 16 deployments: ethereum `0x8b50a7...b2681e`; optimism [`0x16888e...f0e279`](./contracts/optimism-10/0x16888e7935a1a08195e5a50477df5250c7f0e279/); optimism `0x3ea2c9...35f10a`; optimism `0x4779f4...32f128`; optimism `0x78088a...22345c`; optimism `0xa6a9ea...9aebec`; optimism `0xa84cab...e49e5d`; optimism `0xc462ff...6f0fc8`; polygon `0x271479...4eebd3`; polygon `0x3ea2c9...35f10a`; polygon `0x565704...54c3ca`; polygon `0x9150e1...c0943d`; polygon `0xb7e0b3...f1fd85`; polygon `0xc9d1cb...77c627`; moonriver `0xe31a0d...7c994f`; moonriver `0xfc7883...2270de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x21382a...07e23c`](./contracts/optimism-10/0x21382a033e581a2d685826449d6c9b3d6507e23c/); optimism `0x7d1dbb...263e35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x356163...e508e7`](./contracts/optimism-10/0x356163fc5350a3b2440c73cd27b150e337e508e7/); optimism `0x569099...8bb141` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x40a33f...f47c65`](./contracts/optimism-10/0x40a33fb67b8dafe88a5b1930be03c82157f47c65/); optimism `0x46e803...233cbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x662695...64c99c`](./contracts/optimism-10/0x66269520acd32e54b18731b5806c9e1cfc64c99c/); optimism `0xfeb753...b8030c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x663f82...172f24`](./contracts/optimism-10/0x663f82d8191b04e826209793d592049f98172f24/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | optimism | n/a | [`0x70a354...413bd4`](./contracts/optimism-10/0x70a35414fad53752c9352401be211779ec413bd4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0xaf52ac...ecd3f2`](./contracts/optimism-10/0xaf52ac01fa3b4d89d93056da818315317cecd3f2/); optimism `0xdfec2e...e0ecf2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x538bdc...a6cc4e`](./contracts/polygon-137/0x538bdc460119bb95f8ee51e46d22eee5e7a6cc4e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x53bf3c...f1aff9`](./contracts/polygon-137/0x53bf3c82f62b152800e0152db743451849f1aff9/); polygon `0xd8d07a...e701ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0x99e835...fe372c`](./contracts/polygon-137/0x99e8352d079326bc431633a61954f713aafe372c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xa7c262...edf673`](./contracts/polygon-137/0xa7c262ce5c812c30236adbda491d048fe5edf673/); polygon `0xc61707...178e78` | ⚠️ Unaudited |
| UCG | unknown | ethereum | n/a | [`0x7d92a0...a85fe1`](./contracts/ethereum-1/0x7d92a06808b4c4833623f809218ed403e4a85fe1/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x08c15f...47e0a3`](./contracts/polygon-137/0x08c15fa26e519a78a666d19ce5c646d55047e0a3/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x60bb3d...c5bd05`](./contracts/polygon-137/0x60bb3d364b765c497c8ce50ae0ae3f0882c5bd05/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xecc417...c4f09d`](./contracts/polygon-137/0xecc4176b90613ed78185f01bd1e42c5640c4f09d/) | ⚠️ Unaudited |
| UnderlyingVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0b5ddf...d73c40`](./contracts/arbitrum-42161/0x0b5ddfc404aa13e2f9c53f6a3f5126075ad73c40/); arbitrum `0xd657df...abcd23` | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/); ethereum `0xdc7a84...9a8adc` | ⚠️ Unaudited |
| UpgradeableIncentiveReceiver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2a5cc1...105ad6`](./contracts/arbitrum-42161/0x2a5cc190854cd078b2b0ca2a357faf0073105ad6/); arbitrum `0x53ce52...220c26` | ⚠️ Unaudited |
| USDCLPStakingRewards | unknown | ethereum | n/a | [`0x717508...ac4dbd`](./contracts/ethereum-1/0x717508a974cca423343d8c2a71d257f799ac4dbd/) | ⚠️ Unaudited |
| USDCVesting | unknown | arbitrum | n/a | [`0xa0ed02...7a9073`](./contracts/arbitrum-42161/0xa0ed021cf3ad897181c23e20aa5ffb8f607a9073/) | ⚠️ Unaudited |
| USDTLPStakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ee7d2...9e1db3`](./contracts/ethereum-1/0x4ee7d2a5e155b721282065279e76da908d9e1db3/); ethereum `0xdb14a3...edc915` | ⚠️ Unaudited |
| USRHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8916a9...9ed12d`](./contracts/ethereum-1/0x8916a9b0064feab04b3bf3729adbb0be119ed12d/); ethereum `0xbde39e...42c8f9` | ⚠️ Unaudited |
| USRProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cd4e8...96a13a`](./contracts/ethereum-1/0x2cd4e8d82f62a91b2299b083ba08532a6a96a13a/); ethereum `0x47992a...50e434` | ⚠️ Unaudited |
| USRProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd4eef2...8009c6`](./contracts/ethereum-1/0xd4eef282f58ecaf12118e96ed4c06f60f88009c6/); ethereum `0xef004c...5f20d0` | ⚠️ Unaudited |
| VAelinConverter | unknown | optimism | n/a | [`0xf02a67...1c9bc9`](./contracts/optimism-10/0xf02a67988adb4b92365911cd2522ef4deb1c9bc9/) | ⚠️ Unaudited |
| VelodromeSupport | unknown | optimism | n/a | [`0x433322...b873b5`](./contracts/optimism-10/0x4333227e5a2ed1c439b1fc5ca0c025af6cb873b5/) | ⚠️ Unaudited |
| VestedLPMining | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe1ad7f...b6ada5`](./contracts/ethereum-1/0xe1ad7f48198d4e90d8ecb5e8ab3e8987c7b6ada5/); ethereum `0xf09232...e58507` | ⚠️ Unaudited |
| Vester | unknown | ethereum | n/a | 4 deployments: ethereum [`0x03f75e...17e3c7`](./contracts/ethereum-1/0x03f75e626cacb190e0f6072cf5ec5b304517e3c7/); ethereum `0xc65d78...e40bec`; ethereum `0xccb284...9376c7`; optimism `0xa27a77...9898b8` | ⚠️ Unaudited |
| VesterSale | unknown | ethereum | n/a | [`0xcf8a53...21363c`](./contracts/ethereum-1/0xcf8a533d12bdb051cfbb3f41a08a090b3021363c/) | ⚠️ Unaudited |
| VesterStepped | unknown | ethereum | n/a | [`0x073271...72214e`](./contracts/ethereum-1/0x073271a5da4e9ee4afde9ff08801feb2c672214e/) | ⚠️ Unaudited |
| VestingEscrowProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x088c6a...dae39f`](./contracts/ethereum-1/0x088c6ad16ba124f1d40fd2a3ede63ef2e8dae39f/); ethereum `0xca52bc...e0f912` | ⚠️ Unaudited |
| VestingEscrowV5 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5d71d8...464fed`](./contracts/ethereum-1/0x5d71d8385af217d48dc112909754da9d3b464fed/); ethereum `0x8e4c90...e9d1f2`; ethereum `0xe2a0b1...3b670e` | ⚠️ Unaudited |
| VestingWallet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5a20e7...023d1c`](./contracts/ethereum-1/0x5a20e71378bc770d1cd0b9a30d96bf911f023d1c/); ethereum `0x7cf2c7...97c90a`; ethereum `0x836e76...89bab0` | ⚠️ Unaudited |
| VirtualAelinToken | unknown | optimism | n/a | 8 deployments: optimism [`0x07aa6c...9622a2`](./contracts/optimism-10/0x07aa6cfd846ff4e39178f414dc27ec890d9622a2/); optimism `0x25855b...d668b5`; optimism `0x2c0979...95951e`; optimism `0x780f70...24748a`; optimism `0x8e8e28...682e9d`; optimism `0x91fcea...ed7b5e`; optimism `0x98acc7...313022`; optimism `0xf1f2fb...e65a81` | ⚠️ Unaudited |
| WirexToken | token | ethereum | n/a | [`0xa02120...b0e915`](./contracts/ethereum-1/0xa02120696c7b8fe16c09c749e4598819b2b0e915/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WrappedPiErc20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65ca07...63a44b`](./contracts/ethereum-1/0x65ca07a894e00b6a264c897de956cb0afb63a44b/); ethereum `0xa1ebc8...b14345` | ⚠️ Unaudited |
| WrappedPiErc20Factory | unknown | ethereum | n/a | [`0x9cdda9...6982e3`](./contracts/ethereum-1/0x9cdda9f8a4533d829b424f47ac9a7850e46982e3/) | ⚠️ Unaudited |
| xCVP | unknown | ethereum | n/a | [`0x9ae236...c2c204`](./contracts/ethereum-1/0x9ae236653325b29d5ab4a2c8cb285e8059c2c204/) | ⚠️ Unaudited |
| xIMX | unknown | ethereum | n/a | [`0x363b2d...96bf59`](./contracts/ethereum-1/0x363b2deac84f0100d63c7427335f8350f596bf59/) | ⚠️ Unaudited |
| XSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03ef3f...9b60f2`](./contracts/ethereum-1/0x03ef3f37856bd08eb47e2de7abc4ddd2c19b60f2/); ethereum `0x8313fd...6796b0` | ⚠️ Unaudited |
| XSwapProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3380a2...50d3ed`](./contracts/ethereum-1/0x3380a2c534bcdbe72801988b242e80257b50d3ed/); ethereum `0xe669b5...1b5f48` | ⚠️ Unaudited |
| XSwapProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ec6a4...103305`](./contracts/ethereum-1/0x4ec6a46ba91fd089db5833aefe980cd341103305/); ethereum `0x79414b...045692` | ⚠️ Unaudited |
| YearnVaultInstantRebindStrategy | unknown | ethereum | n/a | [`0xea20d1...5e5b99`](./contracts/ethereum-1/0xea20d1d24bd9ae0e4ad3982f302d8441ca5e5b99/) | ⚠️ Unaudited |
| ZenlinkToken | token | moonriver | n/a | 2 deployments: moonbeam `0x3fd9b6...39100c`; moonriver [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (503)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xb5c9aeba968c2948f0d842f009e0e170da5d01c3) | unknown | ethereum | n/a | 3 deployments: ethereum `0x8f015c...0c2b81`; ethereum `0xb5c9ae...5d01c3`; ethereum `0xd29822...4243cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x044a70...a7f29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x051140...eedfee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05c363...214678` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a281e...869435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6bb1...3f6a7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a84a9...2c852a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b38d9...725619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b71b3...b52211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0502...196155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8879...939223` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f3ce8...860195` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fd23e...163a3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11b8c0...44f220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1291b0...568e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x130d6a...57aa99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x133906...cbd903` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15599d...0e8a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16677f...333187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177f43...b4b57d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17e870...4ff07f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18468d...2c1d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18d1e7...5acf88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x197c25...72e8e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c7464...a32c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d752c...18ce4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e618d...985042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fff08...42c584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x213fc2...c66d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2200ef...881c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x255ab1...986b64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26472c...8933f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26798d...1a05fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2694f5...0aff62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x274491...d74742` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27faf9...b30e59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x284bfc...e697c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x298bad...8e35a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29f748...b6365b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a26e3...09a8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d05ba...e16c6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d40bc...8b1e5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e5069...231732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe9e6...7dca99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30b33e...040488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3271cc...fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x332e1d...36830b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3397cc...2b5473` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33afb8...f64964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x345b7a...4859de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x358211...12336f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x369dff...bfdfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x375619...107f19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x376539...7b6b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38465e...c15a23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x389d62...858843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3aac7e...75fcb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b8b96...c98262` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c7046...ab44d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cb8eb...d78f8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d1607...de77b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d2934...c1c865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e207b...923e44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404cd4...44d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x406830...6fb0ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4105c6...c20f48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4120b8...e733d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x412c95...55e02b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41d9f6...658693` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42148b...97436e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x434547...b7686c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x435e96...c8d167` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b576...a4a912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43ebba...8cabed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4452f7...1916e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f671...caeba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46a1ef...a08141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ad9d4...8aac38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1fc3...42bf69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b77a7...db9316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bcb48...c1de9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e0b5b...096f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7ec6...2a99e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f6cd4...180111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fde21...05491f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518d9b...3413a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x528930...a23e71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x538fab...3086b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53c9df...735052` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x540a4b...585ed9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x544276...4420d0`; ethereum `0x5d067d...8ee5aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x544d18...923cd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545486...464f93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5581ab...07444c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x558de8...b7b249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55ab07...f5053a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55be7f...561943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56d502...9750a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57271b...b3eec0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57ffb2...4b8476` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581ed3...b222ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593499...d0ab62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593e88...a68216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b8503...5d4623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c4365...072bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c8d48...ffd4dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5b3c...04ca18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e7190...35cea5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x603065...cea8e3`; ethereum `0xe3e3f8...a8ed72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x624a0f...03cd0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63cdf1...4b3b2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64aafb...00ee56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65f0a0...227711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x666ed8...eff1e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672d60...6103b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67ea2c...991cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x692fb4...b10f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6941d1...ddbf27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x694baa...db01e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69f3eb...d8a9d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a203e...17c226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cdd3d...c404d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5b33...b763ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70a18d...79cc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7502b4...6f7530` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7597d9...79091d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76384f...9bb918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x778309...f831da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77c073...2d552d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79ef26...1b4f46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a2177...098c1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b1e5d...748363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3810...0b1406` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f15bf...e6c9eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818dd0...3c75fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85204b...9319ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x870643...531758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x879a3d...58eda4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87da8b...c2a845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88872b...dde6ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a7624...e83c6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec3a1...46cca1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f0400...58bd73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x904fda...5a0e5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95ef0e...0d9a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9758b0...5b9008` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9796a0...9a717d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99b0a9...f53544` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a6755...9bd935` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad290...0ee56d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bc99e...62a19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ffb2b...86db42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ffe5...26e54d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa487e8...81bbfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa57c1b...45f374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95a72...33385a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9f875...a506c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae81b6...277ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf54dc...d9b1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafd7d1...c78506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb04dc0...9cc1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0dda6...54bc0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb122dc...51f554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb18db0...eba751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3fd83...0d8da7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb46954...d5a48a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4e50d...22a468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb54e1a...8ed199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5663c...caea6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b935...736b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9ac73...572f9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9d264...a6e114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba2398...4d365d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba67c8...a0c0ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb2f53...cc4446` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc4e98...17797e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd14ef...1c6a94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdfe39...7f9a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1d816...c2735e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2e079...fdb234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc32e18...78e3f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc46751...abf975` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5a09d...88a710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8f6bb...97b3e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94b34...85d081` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9529c...805e21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcab605...e90ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb8791...4cc2a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3d11...09b197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce1479...5729f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce80b3...5f76c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcecfd8...55f93d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceeea8...7d466c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf672f...d4a53a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfd8b0...a13960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a838...0eb69c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2a2a3...4a7d8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd40788...9b270e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd45ccd...606f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a222...43f1b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6017d...13e332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd86423...89cb04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda9f6f...e91f21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb7ce9...c849a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd134d...fc8379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde399d...42cc5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdea478...533f44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe112a9...3ef227` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe124b1...2b6cce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2cf60...cd8abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2f9c4...1485c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe32b0f...61f867` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe46be3...28e053` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5586f...11a5c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f877...8fe472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6a82a...09521e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7b11d...881cf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe90d44...9cb83d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec9749...05701d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed1051...2c7796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed1c44...c459be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee3308...4de47c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14f98...269cff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c0b3...cd7f77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf359e1...b64922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ffa7...d53b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4e153...f972fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf65821...759a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85ff6...91ad9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86237...098dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9057e...b31f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf927d6...d6ffc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa838c...c63c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa953d...f4ad7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb7207...faeb05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfce9b6...b5bfb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe1185...74177e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x07ab01...0eab20` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x08ea9c...05e021` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x10ca65...6ba0f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x159624...31ad6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x213f77...f959eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x24ad43...1643dc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x26493c...e44fab` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x271479...4eebd3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2f1b03...b72c87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x31eef1...832f86` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x40f841...0a213a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4257de...7b203f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x507d6c...8ccf4b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x515e0b...6b4515` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5385bc...f9b1d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a1f81...1267c5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x61cfb1...7bc7cb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x783f80...fc3f47` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7c64ca...761bcf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ec1f0...e815dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x841714...342390` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x86d9b4...bc4c4e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8d4eed...3a44af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8e1d30...392982` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8ec747...707969` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x922d21...d518f6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92fa0d...15bf9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x947e46...9be420` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x94ad30...0e71c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x995b83...cdd714` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9b216a...b718bb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9bdead...42abc6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9ecd3c...780bb5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa45d7f...bf4d19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa7a86e...1697a7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb32fe0...d0b9e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb50f07...07fa84` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb7e0b3...f1fd85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc40c93...342ac8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd2de88...cbe1df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdb196e...d2b570` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd3b71...3adfcf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdde8c6...29ba7d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe247ac...cb75e6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe2886f...3d1c74` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe30657...844041` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef535d...cd50e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef5e00...de18bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf56f63...b8f0de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf6c307...0f1157` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf9dcbe...239deb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x037355...43ddd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0595e6...4264d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a6941...c20cdd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0eab18...f3ecbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1357ee...1d485c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x181948...96fab7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x197ce4...1816f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x24ec9a...2ab868` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a649e...acc776` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2dae9d...f605f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40f841...0a213a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x486beb...b3565a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a5c9a...7c5ff0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x663f82...172f24` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x71173e...7e8f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ec1f0...e815dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ed49d...a8bfab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa11583...70426e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa935fa...9acf70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbca6aa...0dd217` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfd291...4848b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbffebf...7e19f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcbcef1...520358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd760c3...42a1d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3bd74...36be2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe64a94...f20a62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf56f63...b8f0de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf613e2...6c17ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb2eea...10311a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 17 deployments: heco `0x4668e0...c0924b`; heco `0x5d96d4...79bfc6`; heco `0x779a81...1a8fdc`; heco `0xbb7684...1ad573`; fantom `0x374b8a...1c57ef`; fantom `0x6626c4...5e8d8a`; fantom `0x74b238...58c76d`; fantom `0x7d9160...8f03e9`; boba `0x4c882e...8a7c0c`; boba `0x5008f8...5a9610`; boba `0x841ce4...d0738c`; boba `0x8db213...073da0`; boba `0xce055e...be8197`; polygon-zkevm `0xd46f8e...7388d1`; harmony `0x78a21c...20ceec`; harmony `0x985458...9dfab4`; harmony `0xbd8064...7b8b96` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0d72be...c9ee46` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x54069e...1cd66c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0090eb...7c9081` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0253ee...44b331` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x056e1e...e3e480` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0aef44...5f4aa8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x124f71...0adb9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x141133...19e3a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x234232...8bec28` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2f57a0...aaf9f9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x307dd1...f09716` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x375ec6...6ddabb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3a7bff...99f603` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4d7168...b4ec76` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5b5ef5...0b4f19` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x670cf2...bd7b78` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6dc265...82eae0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x722377...3c4cb4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x78d6c2...79bb43` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x80620e...df67ce` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x813195...48388b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8347b8...100857` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8b3d37...3f0225` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8f17b4...657fc7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x98b4b1...5ec533` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x99965f...c14ca8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0a9b4...b5bd57` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa1341d...3269a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb1662f...6048a7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4938b...2c8633` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb8d67e...c1b68b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf4dd7...56a8a9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf5979...9f3912` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc0012a...2148ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc12cac...6ee58e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc34372...ff2b92` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcc9b8e...df58fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcdfd49...8a001e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd2d802...ba5f9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd9b5a5...911b9f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdb19e9...9ce589` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe0f5f1...ce2639` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xed026c...aa067c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf4dde0...52d5b6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf81bd6...bb8658` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfa68ba...ddca53` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfc4e82...a8b67c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfc7611...5baebe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfcc0a9...7d2d1b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfde96c...1c1a66` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x133f8a...62fde7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2b720e...5ab3a9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2dc678...95d129` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x39d409...698455` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x53b039...3b0074` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6aea6a...5c02f3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6ee0f9...f22dd9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x71221b...13b322` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x793120...f96c50` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7a2763...5bd4fc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x83da23...0c67bd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x972570...827a0b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x98726d...f31974` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9dd7cd...ef9bb5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9eaee3...e30774` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa14df7...01b743` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xab4c61...c4d2e5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc5aa91...d7207d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc5f0c1...d7a5fb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcfd6b6...301186` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd8e076...b324b7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xeed18d...a39d16` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xeed359...7ac73e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x049ed2...8384fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0673aa...451334` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x151368...395a24` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d10b1...575161` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2425b3...100d17` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x256252...f017f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28c376...68a67c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x421cda...032ec0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x425880...a9e263` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x47cf33...59af2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x487b37...3821df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x494b0a...b50714` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4953e0...435f94` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x49c692...4e1d89` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4daa4b...775db3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x59cd36...0e975e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5a63e1...86c206` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b8c57...09253d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5c4c64...6b9578` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f95f6...7955bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6b2b20...e62ff5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6b8c38...42f037` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x758c94...041351` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7dc84f...fd7531` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b99c8...6bdecc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9d2d0b...704244` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa2fea7...ae0839` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa472a6...bd9ab1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa82d81...63f0b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad3cad...2c181d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb0f14a...91345b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb4a936...88cdcd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc16525...e396b8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc18059...0e5bb4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc35f7e...862837` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc3ee1e...9aa2c8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc51f97...df0ad6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc6d0cd...00bfc7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc6dbeb...efd62a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd35bd6...a903b1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd42884...4075bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd66ffc...4e2169` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdad38c...e431ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xde1e57...d738c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe0ea24...1b1c46` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe62a58...58f86c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf23cd7...d20e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfe2704...76ed9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x032610...adcd98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07f5ed...499c22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23e865...d57d56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x316701...85c97c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b4163...a9a90c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5745b6...1ef631` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64deca...7f8c58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7828a4...e7ff8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b7049...809294` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80c16c...d0fe61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c7f82...920eff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa22b60...2793c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb62070...bda149` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc32413...aa62c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3fed5...0e259a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd9190...c98ac8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeda109...4bf90d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3919f...40d1c9` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00e3a5...b83ba5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a7cdb...2c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c522c...c35c45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x128d19...2ab761` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21bdd3...033413` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x230709...7c8a8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x265fc6...d2c114` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26834c...d64576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x297c28...67a397` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0e43...339d3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cbce6...8434fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52f447...fdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x574d44...940dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x621be1...96af7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62ac82...1aab71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6473af...3f0a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x686fbb...b972d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69e9fb...77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cf187...ce294e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4354...d4f27d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x822c43...c8c379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x841d89...5183ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x965bd8...9d9aaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47267...7dfc88` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac8144...e15c5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb24999...89d969` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb4230d...5aaf4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3e5b8...9a2e4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc72928...10e9a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9ea89...056c9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce6fa7...a4aac9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe423e7...b23a9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe98856...500449` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeef934...2a11a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1ea78...110200` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf586f3...46f5c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf5fae9...42eee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf78cc8...fb8b70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf88555...698f09` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe6317...75b249` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe6b1a...2cd15b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK_sgn_cbridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/CertiK_sgn_cbridge.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 41 | high |
| [PeckShield-Audit_Report-CbridgeSui-v1.0.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield-Audit_Report-CbridgeSui-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield_gov.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_gov.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield_message.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_message.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [PeckShield_nft_bridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_nft_bridge.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield_pegged.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_pegged.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | 135 | high |
| [PeckShield_sgn_cbridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_sgn_cbridge.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 40 | high |
| [SlowMist_gov.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_gov.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [SlowMist_message.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_message.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | 26 | high |
| [SlowMist_message_apps.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_message_apps.pdf) | SlowMist | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [SlowMist_pegged.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_pegged.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 139 | high |
| [SlowMist_sgn_cbridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_sgn_cbridge.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 41 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x03e488...7456d9`](./contracts/ethereum-1/0x03e48857621881ebbd986b6763c1505ff17456d9/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02b9e9...5a0d04`](./contracts/optimism-10/0x02b9e99a05458d763256b977e61c1d947a5a0d04/) | AelinDeal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2569f6...990742`](./contracts/optimism-10/0x2569f66b7acd8954a7b3a48481823e30c4990742/) | AelinPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c312a...4c0cec`](./contracts/optimism-10/0x3c312abcef37e63e8ca3ac0c370fb1f8e74c0cec/) | AelinPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x04432a...c08363`](./contracts/optimism-10/0x04432a6fd94e8bc8559d10ac1d98f15cd9c08363/) | AelinToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd38143...a7e413`](./contracts/ethereum-1/0xd3814346f232ac7493b8e266276920455aa7e413/) | AllowlistCollectorForLunarNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x028fb0...8cf25e`](./contracts/ethereum-1/0x028fb01ffafe25e278ebb467f69bd79a928cf25e/) | AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x43318d...649c83`](./contracts/optimism-10/0x43318de9e8f65b591598f17add87ae7247649c83/) | AmmVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x63d6dd...d29f4b`](./contracts/optimism-10/0x63d6dd43f6854a06548bc88e890c9afff5d29f4b/) | AmmVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x643e43...a1c83c`](./contracts/optimism-10/0x643e4388fb918a7905441afe4b2906c059a1c83c/) | AmmVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x70164a...03286b`](./contracts/optimism-10/0x70164a1ec9d21c4dba2b4f9b23750f9c7d03286b/) | AmmVaultData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | AmyFinanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38b0e3...f003e2`](./contracts/ethereum-1/0x38b0e3a59183814957d83df2a97492aed1f003e2/) | Animal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a6851...b75325`](./contracts/optimism-10/0x0a6851c7d112a27019d84dccb9ce0c0cd8b75325/) | ApexConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x20612e...36210e`](./contracts/optimism-10/0x20612e6a0ddadc322b7b48e3c4246fb23836210e/) | ApexConsumerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ArbStip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35baf1...62faee`](./contracts/ethereum-1/0x35baf158e798ef724b80e0b4c472708f9f62faee/) | Attack | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa41f14...2f311f`](./contracts/ethereum-1/0xa41f142b6eb2b164f8164cae0716892ce02f311f/) | AvocadoDAOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x438bdd...5a028b`](./contracts/ethereum-1/0x438bdde67caa7271ef41357c11cf8637365a028b/) | BActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaec7e1...c48966`](./contracts/ethereum-1/0xaec7e1f531bb09115103c53ba76829910ec48966/) | BlankToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x725c26...1ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/) | BMIToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a9460...0fdfaf`](./contracts/ethereum-1/0x9a946087aa4bd6122baad864ad1ffd149e0fdfaf/) | BMITokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d84f...8f09e2`](./contracts/ethereum-1/0xa6d84f96685b719439f1203cc85d3bb58a8f09e2/) | BMITokenVestingV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda6a8b...9c7b02`](./contracts/ethereum-1/0xda6a8b079a0f8fcf30f3558e9205ed02829c7b02/) | BMIVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | BOBA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf582ca...be0307`](./contracts/avalanche-43114/0xf582cae047853cbe7f0bc8f8321bef4a1ebe0307/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x38324b...146e04`](./contracts/optimism-10/0x38324b683ee8534f5399c89adbfbd4814c146e04/) | BrevisRequest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeac319...b88ec2`](./contracts/ethereum-1/0xeac319b32c332c233b9abc96ac648fbae0b88ec2/) | CapitalFreeLiquidate02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x841ce4...d0738c`](./contracts/ethereum-1/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | CBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9254...81c667`](./contracts/ethereum-1/0x4f9254c83eb525f9fcf346490bbb3ed28a81c667/) | CelerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe24f...fa5e43`](./contracts/ethereum-1/0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43/) | CGGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2ad5...ff0379`](./contracts/ethereum-1/0x2a2ad5a2eacf35194d39afe1d727c39710ff0379/) | ChainGuardiansToken900 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x697ac9...3aa687`](./contracts/optimism-10/0x697ac93c9263346c5ad0412f9356d5789a3aa687/) | CircleBridgeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xcfa590...0f0b91`](./contracts/optimism-10/0xcfa5906d71e057be50f4cf2a5bc41ff7bd0f0b91/) | CircleBridgeProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc4baf...296f60`](./contracts/ethereum-1/0xdc4baf3b4b1df79083eedf3e46ec2c4ec1296f60/) | Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x753d22...1d3dac`](./contracts/arbitrum-42161/0x753d224bcf9aafacd81558c32341416df61d3dac/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x262b8a...02b728`](./contracts/polygon-137/0x262b8aa7542004f023b0eb02bc6b96350a02b728/) | CloutArtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19ea65...c724f5`](./contracts/arbitrum-42161/0x19ea653256e79abaf90b4586632463d4b3c724f5/) | ContributorVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x054a30...e19b4c`](./contracts/optimism-10/0x054a30b4fe877b0b92c3f1f4952a26ccdde19b4c/) | ControllerStock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa300a8...d8bcf4`](./contracts/optimism-10/0xa300a84d8970718dac32f54f61bd568142d8bcf4/) | ControllerV2BLP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | ControllerV2BLP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8e7e9e...1e5408`](./contracts/arbitrum-42161/0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408/) | ControllerV2BLP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc834fa...aa8b50`](./contracts/ethereum-1/0xc834fa996fa3bec7aad3693af486ae53d8aa8b50/) | ConvergenceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8eed31...b62abd`](./contracts/ethereum-1/0x8eed31c1b0e147e56db836c40129eeb03cb62abd/) | COTIETHSLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6e522...15c64b`](./contracts/ethereum-1/0xe6e5220291cf78b6d93bd1d08d746abbc115c64b/) | COTIETHStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f4564...213aae`](./contracts/ethereum-1/0x9f4564b85cb77ce76cc725f29758cbfe20213aae/) | CrazyBunny | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1cc2a5...96a02a`](./contracts/optimism-10/0x1cc2a5a1f7c4ea9c29be62a58a5591e82f96a02a/) | CrossChainRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | CrossProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e4ad...e7dca1`](./contracts/ethereum-1/0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1/) | Cvp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8eb3...4a8337`](./contracts/ethereum-1/0x1f8eb3cbb05166921d8204e6a1d8e5f9844a8337/) | CvpBridgeLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c22e5...e5e047`](./contracts/ethereum-1/0x8c22e596e66b98ec1d2ea45b40d879c705e5e047/) | CVPMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5c779c...60fb14`](./contracts/optimism-10/0x5c779cfae4b6b7a02c32938ddabdada8ab60fb14/) | DeciMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0565b1...8fb898`](./contracts/optimism-10/0x0565b1ab5cee7075b32c2d6a5b9da44b708fb898/) | DefaultLiquidityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x071b49...4613d5`](./contracts/ethereum-1/0x071b49f6a26ffa31f67e833d3dfec500cc4613d5/) | DFEngineV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10a49c...219c08`](./contracts/ethereum-1/0x10a49c54babef0d39f5531f0d1a5d98fbe219c08/) | DForceLendingHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | DFProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fdcda...4f57ba`](./contracts/ethereum-1/0x7fdcdad3b4a67e00d9fd5f22f4fd89a5fa4f57ba/) | DFProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x924897...2e6291`](./contracts/ethereum-1/0x92489789778d69eff4a53b6d649f0a51e02e6291/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | DODOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c2f8...fef83f`](./contracts/ethereum-1/0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f/) | DomiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5bc65f...2c31c1`](./contracts/arbitrum-42161/0x5bc65f20abceada2c54140b2bb55962bba2c31c1/) | DopexArbEthSsovWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39cd5f...914ea0`](./contracts/arbitrum-42161/0x39cd5f935cd7af62f6b74606484af7bbd4914ea0/) | DopexDpxSsovWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x315e79...d8d0f3`](./contracts/arbitrum-42161/0x315e79536b0bd3617293ba4f68ef5772b7d8d0f3/) | DopexFarmWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dbccb...92c8ae`](./contracts/arbitrum-42161/0x1dbccb7bd0676df77574b702b61d4af44f92c8ae/) | DopexGohmSsovWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02285a...df9224`](./contracts/ethereum-1/0x02285acaafeb533e03a7306c55ec031297df9224/) | DToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd27ce...dfcf72`](./contracts/ethereum-1/0xbd27ce697a32476098b788b239e57aacc6dfcf72/) | DTokenCommonData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1771df...6cbf48`](./contracts/ethereum-1/0x1771dff85160768255f0a44d20965665806cbf48/) | EmiFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99e401...01c73b`](./contracts/ethereum-1/0x99e401f9f825822f005d68b7d903038cc601c73b/) | EmiList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | EmiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe629c4...e1a3af`](./contracts/ethereum-1/0xe629c4dc9538614019d17d09f54617ef89e1a3af/) | EmiVamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb978d9...dd6e54`](./contracts/arbitrum-42161/0xb978d9d8e92fe060fd058a9ed106665db6dd6e54/) | EnforceHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66e6f7...4ee217`](./contracts/ethereum-1/0x66e6f738a835d1ad412dca933fb4fcd7a84ee217/) | EpicToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a3db...c29666`](./contracts/ethereum-1/0x41a3dba3d677e573636ba691a70ff2d606c29666/) | ERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x902f7d...0a3b7e`](./contracts/ethereum-1/0x902f7d304ccf03e83deb279673b9b458ec0a3b7e/) | Erc20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9f6db...0cabc3`](./contracts/ethereum-1/0xc9f6db2d12c3ad65570e09cb98190330d20cabc3/) | ERC20PresetMinterPauserUpgradeSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x566d35...aac9c2`](./contracts/optimism-10/0x566d358f3386abac32cbe750489306c73caac9c2/) | EscrowThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ESW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd2a2a3...4a7d8f`](./contracts/polygon-137/0xd2a2a353d28e4833faffc882f6649c9c884a7d8f/) | ESW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40d203...25a6f6`](./contracts/ethereum-1/0x40d203332b0a262f1a371ae9da1788fe6825a6f6/) | ETHLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0544b7...7319c9`](./contracts/ethereum-1/0x0544b78760aab5db937d230a444da7ef9f7319c9/) | EthMCBv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e352c...a4ce42`](./contracts/ethereum-1/0x4e352cf164e64adcbad318c3a1e222e9eba4ce42/) | EthMCBv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x145e6d...6d47a7`](./contracts/ethereum-1/0x145e6df857b241efdcb9b78a1b97a032606d47a7/) | ETHPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287839...a5b6de`](./contracts/ethereum-1/0x287839632973f7754c04a9e23d393aa09fa5b6de/) | ETHStakingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x967440...df1a6d`](./contracts/ethereum-1/0x967440f87132008184c25b9c385860e908df1a6d/) | ETHVOL_USDCLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf49255...f92fef`](./contracts/moonbeam-1284/0xf49255205dfd7933c4d0f25a57d40b1511f92fef/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d3fdd...58f0c0`](./contracts/arbitrum-42161/0x0d3fdd45706bec4077725bf691bbb4770958f0c0/) | FarmController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03b4bd...1f608b`](./contracts/optimism-10/0x03b4bd7d900defe84098665e3d96dca73a1f608b/) | FeeReimbursementApp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | FINN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | FinnBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x24164b...d28b2a`](./contracts/polygon-137/0x24164bba6efe2b92559d78d5393b609e0ad28b2a/) | FucDao | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x728f30...b1387d`](./contracts/ethereum-1/0x728f30fa2f100742c7949d1961804fa8e0b1387d/) | GamerCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc647ab...b7c03c`](./contracts/optimism-10/0xc647ab2cab7d6da6081703382ecf2814d8b7c03c/) | GamesOddsObtainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb27f33...945800`](./contracts/ethereum-1/0xb27f33682418c52b1dcca1300b4982e3f6945800/) | GiantToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x405775...7f5d2a`](./contracts/arbitrum-42161/0x405775be91aab1d06a3afbb5a1a6d2a5cf7f5d2a/) | GmxLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09a52b...4bb97a`](./contracts/ethereum-1/0x09a52b4c749d006f7fc0c3f316aeca54d74bb97a/) | GOLDx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0effcb...eacc4f`](./contracts/ethereum-1/0x0effcb66871fcc97f074a901f69b1367d2eacc4f/) | GOLDxProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | GOVI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | GOVIETHSLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x936dd3...975fb7`](./contracts/ethereum-1/0x936dd3112a9d39af39adda798503d9e7e7975fb7/) | GOVIETHStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c208c...df48d7`](./contracts/arbitrum-42161/0x1c208cb30838cc3fd492627321624ce87cdf48d7/) | HatDistributionCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c163b...757bca`](./contracts/arbitrum-42161/0x4c163b64fd2c777bd0752cfc4312c7bbea757bca/) | HatDistributionCenterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | HuckleberryFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x086484...c37786`](./contracts/polygon-137/0x08648471b5aad25feeeb853d6829048f3fc37786/) | HuhToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002cea...96e861`](./contracts/arbitrum-42161/0x002cea80a95e71859eec829d6d0ca4771596e861/) | iETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa7a084...a7b3b4`](./contracts/optimism-10/0xa7a084538de04d808f20c785762934dd5da7b3b4/) | iETHV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/) | iETHV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee3383...5dcc15`](./contracts/arbitrum-42161/0xee338313f022caee84034253174fa562495dcc15/) | iETHV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x062465...c72c96`](./contracts/arbitrum-42161/0x06246560298c5ebdda06ab8be6731b9cf8c72c96/) | iMSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb24912...d978ef`](./contracts/optimism-10/0xb249124bab33f78dd975e4e725e6a20868d978ef/) | iMSDMiniPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x94a14b...45876a`](./contracts/optimism-10/0x94a14ba6e59f4be36a77041ef5590fe24445876a/) | iMSDV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/) | iMSDV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | iMUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b35ce...764a00`](./contracts/ethereum-1/0x7b35ce522cb72e4077baeb96cb923a5529764a00/) | Imx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12e45e...6975df`](./contracts/bsc-56/0x12e45e323d44209fcb9afef0e5793b92296975df/) | IncentiveEventsReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaf2d36...94e390`](./contracts/bsc-56/0xaf2d365e668baafedcfd256c0fbbe519e594e390/) | IncentiveEventsRewardNew | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49e4c5...0c6e54`](./contracts/ethereum-1/0x49e4c572761db50b9999948a46daf2d7710c6e54/) | IndicesSupplyRedeemZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ad3cf...a17a11`](./contracts/ethereum-1/0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11/) | InitialClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8dd56c...41b136`](./contracts/polygon-137/0x8dd56c42b0e5b38ceaa17179e11318ec6841b136/) | IntermediaryBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6521c5...1857dd`](./contracts/ethereum-1/0x6521c50810f0d882b2c64a235805d3f5241857dd/) | IntermediaryOriginalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5732...eb7f8b`](./contracts/ethereum-1/0x3c573234e1a9e47e0cac56db543e1ca153eb7f8b/) | InternalHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x52eacd...025f37`](./contracts/optimism-10/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | iToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x45b563...4a0772`](./contracts/arbitrum-42161/0x45b5636b01091336f02194d327374924d54a0772/) | iToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f144c...8e2ed7`](./contracts/optimism-10/0x1f144cd63d7007945292ebcde14a6df8628e2ed7/) | iTokenV2BLP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c9261...d81740`](./contracts/polygon-137/0x0c92617df0753af1cab2d9cc6a56173970d81740/) | iTokenV2BLP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/) | iTokenV2BLP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | izumiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5444c7...e7944d`](./contracts/arbitrum-42161/0x5444c71cdd5ed85b6d51a297175bf71914e7944d/) | JonesAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6be861...8b1354`](./contracts/arbitrum-42161/0x6be861aa87009331bf62e22d418ab666e88b1354/) | JonesArbETHVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/) | JonesAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeefd6b...dd2281`](./contracts/arbitrum-42161/0xeefd6ba4f562330a3ba35badce2210a2e6dd2281/) | JonesAssetVaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d067a...16c0c3`](./contracts/arbitrum-42161/0x2d067a1dc49f4b5809619bdbd2289d067016c0c3/) | JonesBuybacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ecaa3...ed7c24`](./contracts/arbitrum-42161/0x6ecaa3203aeb4d0cc21745f2752a73b41ced7c24/) | JonesDpxCallStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x504764...d9d31f`](./contracts/arbitrum-42161/0x504764add41632c460924456074aa62c1bd9d31f/) | JonesDpxPutStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c8db7...7612ba`](./contracts/arbitrum-42161/0x1c8db76703ad7e33551e6e022bf429fd857612ba/) | JonesDPXVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ba98a...0e1246`](./contracts/arbitrum-42161/0x5ba98ad75ab87eb90ffc2b680bcfc6b9030e1246/) | JonesDPXVaultV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42448f...0e88e5`](./contracts/arbitrum-42161/0x42448fddcec02124cf6db19a9f91dea7bb0e88e5/) | JonesERC20VaultV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba0563...c1f1dc`](./contracts/arbitrum-42161/0xba0563ffe3c7abe915d3dc404f1667682bc1f1dc/) | JonesEthCallStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02017a...43674e`](./contracts/arbitrum-42161/0x02017a8334196537fd1933de833b3ece9a43674e/) | JonesEthPutStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68798c...41bf04`](./contracts/arbitrum-42161/0x68798c683dbd43c3a16ae8c3e02c37999641bf04/) | JonesGohmCallStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe5a8ab...ccba61`](./contracts/arbitrum-42161/0xe5a8ab24dc1b0f54dc3803cb33098879f8ccba61/) | JonesGohmPutStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9a62e4...69c814`](./contracts/arbitrum-42161/0x9a62e407028961eac4538453cb5d97038b69c814/) | JonesgOHMVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x211187...b6beb9`](./contracts/arbitrum-42161/0x2111875f2e37d98c0b00bc66099b1bfb07b6beb9/) | JonesHedgingV3Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb98976...3aabc5`](./contracts/arbitrum-42161/0xb98976a008191948a6857df824034d3c5f3aabc5/) | JonesRdpxCallStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x261287...84e823`](./contracts/arbitrum-42161/0x2612870b2a96f43430e19bb6873a74295684e823/) | JonesRdpxPutStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a81ab...19829b`](./contracts/arbitrum-42161/0x5a81abb52d96241d15d8b2bdcd76034e4119829b/) | JonesSaleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1304e5...c897dd`](./contracts/arbitrum-42161/0x1304e5a0e6fff1556cf8f8dcc346c7dbd2c897dd/) | JonesSSOVCallV3Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x220890...ebeb34`](./contracts/arbitrum-42161/0x22089039a813aedde848ac5876c1492fd2ebeb34/) | JonesSSOVPutV3Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | JonesToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6580f4...36f79a`](./contracts/arbitrum-42161/0x6580f41efc34e6d49ab692bd338d2a0e0636f79a/) | JonesTokenSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a0027...4f1cf5`](./contracts/arbitrum-42161/0x8a0027152ad2781c0cbabda0cc53290bf04f1cf5/) | JonesTokenSaleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x086d9a...be7772`](./contracts/arbitrum-42161/0x086d9abc69c60b75470e620221cd857bcdbe7772/) | JonesWETHVaultV3Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | Kromatika | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | L2CustomGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | L2ERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | L2GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc76cbf...4d5d67`](./contracts/optimism-10/0xc76cbfbafd41761279e3edb23fd831ccb74d5d67/) | L2USXTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | L2WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28cd29...8dc654`](./contracts/ethereum-1/0x28cd2990f34db387d011d7cc693a2bcedd8dc654/) | LandsaleNFT_ESTATE | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x206059...693d7a`](./contracts/ethereum-1/0x2060599f7a1523b65b23aac59570c8984e693d7a/) | LargeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c0adb...a59173`](./contracts/optimism-10/0x0c0adb03423c8232a0b7785433919eaf62a59173/) | LendingDataV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b7d9a...ac776e`](./contracts/arbitrum-42161/0x3b7d9a4cdbacf96bd4f7ffe8c15e9581daac776e/) | LendingDataV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/) | LockedTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08e5d6...3353f4`](./contracts/ethereum-1/0x08e5d6e7c61e675e5a9b4eee9c1dd2ce113353f4/) | LockingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x959890...dfe7c4`](./contracts/moonriver-1285/0x95989005cdc3d128a5a3c706797d5e408cdfe7c4/) | LockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/) | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x38f148...613c6e`](./contracts/optimism-10/0x38f1487bd60142ae3633c082934455f06b613c6e/) | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa143e0...08dd6f`](./contracts/optimism-10/0xa143e04a0090cc55c13a8280d52192a2d008dd6f/) | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb4387d...e1053c`](./contracts/avalanche-43114/0xb4387d93b5a9392f64963cd44389e7d9d2e1053c/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x094bd7...0fddcc`](./contracts/avalanche-43114/0x094bd7b2d99711a1486fb94d4395801c6d0fddcc/) | LQTYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7702dc...f1d725`](./contracts/polygon-137/0x7702dc73e8f8d9ae95cf50933adbee68e9f1d725/) | LSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd7656c...dea038`](./contracts/optimism-10/0xd7656c7f0268bb222c94cfba57b046a433dea038/) | LSRFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5f01f8...3e8bff`](./contracts/polygon-137/0x5f01f88a6b6c33de5668dc2de983abe84b3e8bff/) | LSRFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4653fc...ae6c3c`](./contracts/optimism-10/0x4653fc730e3c8b7eeb2faec65458c6f927ae6c3c/) | LSRSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4fbf04...066095`](./contracts/avalanche-43114/0x4fbf0429599460d327bd5f55625e30e4fc066095/) | LUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01ba67...5105bf`](./contracts/ethereum-1/0x01ba67aac7f75f647d94220cc98fb30fcc5105bf/) | Lyra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c5bc6...3438aa`](./contracts/ethereum-1/0x6c5bc62e9a1fe03446a7d7755703af11b53438aa/) | LyraSafetyModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb9f85...c77d49`](./contracts/ethereum-1/0xcb9f85730f57732fc899fb158164b9ed60c77d49/) | LyraSafetyModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9619d...19a219`](./contracts/ethereum-1/0xb9619d73c08076bc5d4f0470593e98b9eb19a219/) | LyraSafetyModuleMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf9ef4...706b52`](./contracts/ethereum-1/0xcf9ef4ec906d92447682828d3fd87db8a9706b52/) | LyraUsdcSafetyModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54d59c...6f5472`](./contracts/ethereum-1/0x54d59c4596c7ea66fd62188ba1e16db39e6f5472/) | LyraUsdcSafetyModuleMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x625cde...a995d6`](./contracts/ethereum-1/0x625cdefa6d76f9ed2587b704255b974899a995d6/) | LyraUsdcSafetyModuleMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x31d459...96c2d5`](./contracts/moonriver-1285/0x31d45973e7428251a69d767e077dc50bf696c2d5/) | MappingTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3b05d4...2a4c31`](./contracts/optimism-10/0x3b05d4c58de4e96ea093032c6d70c7e4212a4c31/) | MarchMadness | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69af81...623074`](./contracts/ethereum-1/0x69af81e73a73b40adf4f3d4223cd9b1ece623074/) | MaskToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4b72e3...8026ed`](./contracts/optimism-10/0x4b72e30c9bd7e42186d28455b8493cc9b28026ed/) | MBusSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25be31...7e034e`](./contracts/ethereum-1/0x25be31ca0b36d5077a922d4ee54c08111a7e034e/) | MCapWeightStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1021b7...906d3c`](./contracts/ethereum-1/0x1021b725c8c10dc6240c9f1f151095d798906d3c/) | MCB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcb620...53d23b`](./contracts/ethereum-1/0xdcb620d7e340c11919d580f1959d0c770f53d23b/) | MediumToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1afb69...19e647`](./contracts/ethereum-1/0x1afb69dbc9f54d08dab1bd3436f8da1af819e647/) | MELOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | MetavaultRefund | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x018b44...900717`](./contracts/arbitrum-42161/0x018b44c923a567205caee45b882fd61394900717/) | MillinerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8765b1...203656`](./contracts/ethereum-1/0x8765b1a0eb57ca49be7eacd35b24a574d0203656/) | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1f0454...b0e82d`](./contracts/avalanche-43114/0x1f045412ffaabe765667c28d13dfdac7d4b0e82d/) | MintSwapCanonicalTokenUpgradableFreezable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa993d7...4d8eed`](./contracts/ethereum-1/0xa993d7bb4397f0e18fd292c4bb1bd75e504d8eed/) | MockCVP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a7a1...6099f5`](./contracts/ethereum-1/0x27a7a10b8f52d67fbf6facdb8bf7c530696099f5/) | MSActivityCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbfd291...4848b9`](./contracts/optimism-10/0xbfd291da8a403daaf7e5e9dc1ec0aceacd4848b9/) | MSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ee116...1265cf`](./contracts/polygon-137/0x1ee116b869ecc7cd13c629a8a2ae39fa361265cf/) | MSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x632a42...707f7f`](./contracts/arbitrum-42161/0x632a428d0d321ecff0429864350c04b2ff707f7f/) | MSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x641441...6b4edb`](./contracts/arbitrum-42161/0x641441c631e2f909700d2f41fd87f0aa6a6b4edb/) | MSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb8e6c1...481302`](./contracts/arbitrum-42161/0xb8e6c1712d9ac05d98d62c46bcf2e052ae481302/) | MSDController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x428e19...d181be`](./contracts/optimism-10/0x428e1914404dbff52bd8c7baed9719cc5ed181be/) | MSDControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3a5985...5c617c`](./contracts/polygon-137/0x3a5985f97222f7ab85c1a7e01563896e5c5c617c/) | MSDControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38a558...d7c5ff`](./contracts/arbitrum-42161/0x38a5585d347e8dfc3965c1914498eafbded7c5ff/) | MSDControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38ee8...833d32`](./contracts/ethereum-1/0xf38ee864e36650f8c0abd14622a55bb1f6833d32/) | MSNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed148e...5aa9ba`](./contracts/ethereum-1/0xed148ecdb3658388ddeca2a9ca19b569ef5aa9ba/) | MSStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfd8d6...43992b`](./contracts/ethereum-1/0xdfd8d604951ebf1b2297285f1b68de140c43992b/) | MSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | MToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfcdb1a...b7053f`](./contracts/optimism-10/0xfcdb1a1afaab60230bbc55d8b3de27f47fb7053f/) | MyTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb173cf...774c08`](./contracts/optimism-10/0xb173cf446a3aa3420c780d4a034d0e06b1774c08/) | OneinchSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38b700...95300d`](./contracts/arbitrum-42161/0x38b700f33daa663de0e05a487c41aa070c95300d/) | OneInchZapLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca3753...deaf90`](./contracts/ethereum-1/0xca37530e7c5968627be470081d1c993eb1deaf90/) | OneTokenV1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b484b...c0aee0`](./contracts/ethereum-1/0x3b484b82567a09e2588a13d54d032153f0c0aee0/) | OpenDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2121e4...b662b1`](./contracts/ethereum-1/0x2121e4d93e3352b812a5b3fd7fbd194c4bb662b1/) | OpenDAOLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd22f83...abc44d`](./contracts/ethereum-1/0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d/) | OpenDAOMembershipNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedd27c...90d7d1`](./contracts/ethereum-1/0xedd27c961ce6f79afc16fd287d934ee31a90d7d1/) | OpenDAOStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | OpThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x55c168...5296e7`](./contracts/optimism-10/0x55c1688587e6dfd52e44bf8b7028a8f7525296e7/) | OptimismTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x90fbe9...99a13e`](./contracts/metis-1088/0x90fbe9dfe76f6ef971c7a297641dfa397099a13e/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x480798...89c4c1`](./contracts/optimism-10/0x480798e9496a99e6a48948ab478807079289c4c1/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40a33f...f47c65`](./contracts/polygon-137/0x40a33fb67b8dafe88a5b1930be03c82157f47c65/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5442ff...a3c671`](./contracts/optimism-10/0x5442ff0573fd54a4f6c02a7a0d8e22bdc1a3c671/) | OvertimeVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x912f88...1e4d4e`](./contracts/optimism-10/0x912f889034ddd593a087c4e59061e549891e4d4e/) | ParlayMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a9397...08aacd`](./contracts/optimism-10/0x0a9397378c427e39bde0c53e6626523b7d08aacd/) | ParlayVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x146444...8017b6`](./contracts/optimism-10/0x146444d363028c5495f7d57a4c49e641ce8017b6/) | ParlayVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/) | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeca821...860318`](./contracts/ethereum-1/0xeca82185adce47f39c684352b0439f030f860318/) | Perlin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | Perpetual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | PerpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | Platform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2cab8...f18642`](./contracts/ethereum-1/0xf2cab8d689c8cdf7cb7927c8eddc65d5cef18642/) | PlatformMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe3ac...ed5447`](./contracts/ethereum-1/0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447/) | Pluto | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6f143...206920`](./contracts/ethereum-1/0xe6f143a0e0a8f24f6294ce3432ea10fad0206920/) | PolkaExToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae110a...2b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | PooledMappingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x63f072...5e9a84`](./contracts/optimism-10/0x63f072928cac9ffd799c6d0f985f9ee3985e9a84/) | PositionalMarketData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x734c6c...38fdc2`](./contracts/optimism-10/0x734c6c0fb8068afc4d795af32b65ba31bb38fdc2/) | PositionalMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x470a69...9564ff`](./contracts/optimism-10/0x470a69afec851c1c4022b4a1b9d3a729389564ff/) | PositionalMarketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9d634...492ab4`](./contracts/ethereum-1/0xe9d634d2767079a2bff2ced1584f8f5623492ab4/) | PositionRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d48b9...e8736d`](./contracts/ethereum-1/0x6d48b988d8c206939d3ae08896bac8e0f6e8736d/) | PositionRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6aa1...897c7c`](./contracts/ethereum-1/0x0a6aa119c58ce6e7733da6ece7fba5668d897c7c/) | PowerIndexRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x019e14...6181fb`](./contracts/ethereum-1/0x019e14da4538ae1bf0bcd8608ab8595c6c6181fb/) | PowerOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f730d...5519cc`](./contracts/ethereum-1/0x0f730deacbec9851d4d8cf25c93c2120485519cc/) | PowerOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213e54...62c2ec`](./contracts/ethereum-1/0x213e547cb9f3abb34720e8643aec87f55362c2ec/) | PowerOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb10f9b...32834c`](./contracts/ethereum-1/0xb10f9bb26eabb1f64e45eb0e0910f29efd32834c/) | PowerOracleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d7aa...be5b96`](./contracts/ethereum-1/0x04d7aa22ef7181ee3142f5063e026af1bbbe5b96/) | PowerPoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x646e84...f425f5`](./contracts/ethereum-1/0x646e846b6ee143bde4f329d4165929bbdcf425f5/) | PowerPokeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb8dac...a54f07`](./contracts/ethereum-1/0xbb8dac006c8b6f67c4bc2563b64ed669faa54f07/) | PPAgentV2ExternalLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x269c0e...7538dc`](./contracts/ethereum-1/0x269c0ef2a33e9c09c8dbe387b004da65e57538dc/) | PPAgentV2Randao | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60842a...6b28b3`](./contracts/ethereum-1/0x60842a6b44cca5eb7685d1135acf69b1336b28b3/) | PPTimedVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22e12a...de9e0c`](./contracts/optimism-10/0x22e12a53cb40533707881607f808c7939cde9e0c/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6b33b9...51f803`](./contracts/optimism-10/0x6b33b99e3d3213df963375e6d94aba968351f803/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9434bd...c72bcc`](./contracts/optimism-10/0x9434bdb4f2d0233904e0301f8bf09ceaf9c72bcc/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4aef2...6390dd`](./contracts/optimism-10/0xf4aef21d906992afadde7a9676e1db4feb6390dd/) | PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf164ac...c63d4c`](./contracts/arbitrum-42161/0xf164acdb5dcf5f855b98f9ba8ca73ca300c63d4c/) | PrivateVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54d861...53c56d`](./contracts/ethereum-1/0x54d8614c4fda84480e6452fec29e74452053c56d/) | ProxyBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | PSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | RamsesClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6d53c8...2c39c4`](./contracts/optimism-10/0x6d53c852fe7e0b60d54c70e454cbbccbce2c39c4/) | RangedMarketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x086cc1...49e89d`](./contracts/optimism-10/0x086cc1c04ef1aa4797c18a946c5688bf3949e89d/) | RangedMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x16012e...5c6c38`](./contracts/optimism-10/0x16012ef3eec79db8f002a05c7a8102786e5c6c38/) | RangedMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2d356b...4fe1df`](./contracts/optimism-10/0x2d356b114cbca8deff2d8783eac2a5a5324fe1df/) | RangedMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x64cb6e...328cc5`](./contracts/optimism-10/0x64cb6ef981e5e432d4362f6a561a31b22e328cc5/) | RangedMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8ad0b6...2381e8`](./contracts/optimism-10/0x8ad0b66851bd6d50d82f623472a0bf6e402381e8/) | RangedMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x34ed3d...0c5658`](./contracts/optimism-10/0x34ed3d919ad7f533bfafe9295363d9f37c0c5658/) | RangedPositionMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ReefToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xcde1c5...38ba00`](./contracts/optimism-10/0xcde1c5d8998165fb417f58b1f258cb0dec38ba00/) | Referrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6a2631...adbbf7`](./contracts/optimism-10/0x6a26318cbfec1e3e15cf5a64b0a326bae6adbbf7/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7b5981...11d5ad`](./contracts/optimism-10/0x7b598182875df02236eea8a3e264f9376511d5ad/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x79010b...014935`](./contracts/polygon-137/0x79010b6cedac29d9470d291277a5684014014935/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc0dc7c...69a739`](./contracts/arbitrum-42161/0xc0dc7c5057141c9065bd9bedf79fd4e9ea69a739/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x870ac6...9b71a2`](./contracts/optimism-10/0x870ac6a76a30742800609f205c741e86db9b71a2/) | RewardDistributorSecondV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47c19a...f4022f`](./contracts/polygon-137/0x47c19a2ab52da26551a22e2b2aeed5d19ef4022f/) | RewardDistributorSecondV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf45e2a...6786c3`](./contracts/arbitrum-42161/0xf45e2ae152384d50d4e9b08b8a1f65f0d96786c3/) | RewardDistributorSecondV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03d489...35c0eb`](./contracts/optimism-10/0x03d489d99998fc45d4a14ae260f537a2c435c0eb/) | RewardDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x35da35...24a52a`](./contracts/arbitrum-42161/0x35da35b309cbd41dfaee1bbbca81b469cf24a52a/) | RewardReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c5f18...9131d0`](./contracts/ethereum-1/0x6c5f18b0f37cd18871c67378c2478565779131d0/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x124b6a...7d0458`](./contracts/arbitrum-42161/0x124b6aef712f9b2f8e239c01ce251287457d0458/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x44435a...ae05dc`](./contracts/optimism-10/0x44435a66ae25d4e7f2fb054a68bf6a0a44ae05dc/) | RFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa7ce1a...00fbdf`](./contracts/arbitrum-42161/0xa7ce1ab769dc8a9274f91254cefc0e817a00fbdf/) | RoleController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7a3909...fcab71`](./contracts/moonbeam-1284/0x7a3909c7996efe42d425cd932fc44e3840fcab71/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4b5cf3...18cabe`](./contracts/arbitrum-42161/0x4b5cf363f3f0fc82678d347fbff9ec2d8118cabe/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x15c9ea...27e9db`](./contracts/optimism-10/0x15c9eae416c2e3fbecf2248003a2b2677127e9db/) | SafeBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4063bf...55cd49`](./contracts/optimism-10/0x4063bfac9b1215c55452b961d428d98bce55cd49/) | SafeBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6d3705...b62ba7`](./contracts/optimism-10/0x6d3705368323900490193324277a221d8db62ba7/) | SafeBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x83a6a8...b5a175`](./contracts/optimism-10/0x83a6a83eed4c97b2b4b60a02df1ac27c0db5a175/) | SafeBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x679c01...7c59e7`](./contracts/optimism-10/0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7/) | SafeBoxBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04b330...8ea126`](./contracts/polygon-137/0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126/) | SafleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fa2b6...e83cb7`](./contracts/ethereum-1/0x5fa2b63b360fd69ff112a04ff64ddd2829e83cb7/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xafdb9c...093fe6`](./contracts/optimism-10/0xafdb9c40c7144022811f034ee07ce2e110093fe6/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c401d...baf213`](./contracts/polygon-137/0x4c401db8cddc3ed80bfd978243c0da4350baf213/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x23c748...7472eb`](./contracts/metis-1088/0x23c748fef17518b8de55065338d7fa20327472eb/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0394c5...48481f`](./contracts/moonbeam-1284/0x0394c51d750e32f252d8a3f3d8670d958948481f/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9beec5...a15db6`](./contracts/avalanche-43114/0x9beec5bd03025700385e37cd5cbd470d0fa15db6/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4b40...c261e8`](./contracts/ethereum-1/0x3d4b40ca0f98fcce38aa1704cbdf134496c261e8/) | ShareToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa384...23d2f2`](./contracts/ethereum-1/0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2/) | SmallToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x842e89...e0eba5`](./contracts/optimism-10/0x842e89b7a7ef8ce099540b3613264c933ce0eba5/) | SportAMMLiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x022ca1...76e385`](./contracts/optimism-10/0x022ca1d3570f6c258ed47c381541d8225176e385/) | SportAMMLiquidityPoolData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfc050b...8db266`](./contracts/optimism-10/0xfc050b42a88c046d54b7a4e3da42d8c9c38db266/) | SportPositionalMarketData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x46b1ec...18e154`](./contracts/optimism-10/0x46b1ec25e5e7696ecbae9441d3f79d01b118e154/) | SportPositionalMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0eeff6...eb0840`](./contracts/optimism-10/0x0eeff6deac317ac3f5ef286d069d213570eb0840/) | SportsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b8f39...7be900`](./contracts/optimism-10/0x0b8f398d8dbb74bf2dc475d02e802334777be900/) | SportVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c09f6...00f62e`](./contracts/optimism-10/0x0c09f6c136e144a5d84b4161b2fc3f245700f62e/) | SportVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x43d198...16d98e`](./contracts/optimism-10/0x43d19841d818b2ccc63a8b44ce8c7def8616d98e/) | SportVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x474499...33326d`](./contracts/optimism-10/0x474499e5202d8cc7898358526c8d00b43333326d/) | SportVaultData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x606b55...bc6073`](./contracts/optimism-10/0x606b55b96c833277e972aa18e4ef7d3f53bc6073/) | SportVaultData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x634ae8...fe18c2`](./contracts/arbitrum-42161/0x634ae8e6267debe4f67948657e6b903b19fe18c2/) | SsovAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7487c1...65052f`](./contracts/arbitrum-42161/0x7487c19df56b7ea764fc269468b5d3014565052f/) | SsovV3Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7aed63...607522`](./contracts/avalanche-43114/0x7aed63385c03dc8ed2133f705bbb63e8ea607522/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xab599b...e0995a`](./contracts/optimism-10/0xab599b2697d836e665706dc59566363e2fe0995a/) | StakingData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xcc1342...0c087c`](./contracts/optimism-10/0xcc134245424fe9e10a011961451d5ad6cd0c087c/) | StakingData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x58c9e3...256b0e`](./contracts/optimism-10/0x58c9e3b0ec4c37732ff269b605cda0ee3d256b0e/) | StakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c7c2...36d6ee`](./contracts/ethereum-1/0x37c7c2ae51e968cefb82cff2102727256d36d6ee/) | StakingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x113414...7c0e4f`](./contracts/ethereum-1/0x11341455ff53af5fb1194680f20d932c287c0e4f/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c2082...1a1cf3`](./contracts/arbitrum-42161/0x2c2082e4062bfd02141adc86cbd5e437201a1cf3/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0886e6...08d9cd`](./contracts/optimism-10/0x0886e6bea150ed770b2ee3341332339c5c08d9cd/) | StakingThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc07520...9b4271`](./contracts/optimism-10/0xc07520843239c2caa28101d8241d9132669b4271/) | StakingThalesBonusRewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9040e2...2b999d`](./contracts/ethereum-1/0x9040e237c3bf18347bb00957dc22167d0f2b999d/) | Standard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a8b78...f345ab`](./contracts/arbitrum-42161/0x3a8b787f78d775aecfeea15706d4221b40f345ab/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x19305f...f60226`](./contracts/optimism-10/0x19305fa7b4832b7f7545cc752c71f8cdf9f60226/) | SwapNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x41cccb...486d1f`](./contracts/optimism-10/0x41cccb4935386e0471922d460d9194b7db486d1f/) | TaleOfThalesNFTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1d968...da55b7`](./contracts/arbitrum-42161/0xc1d9682db60955d64f263025b282acbf8cda55b7/) | TeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x129e14...554c2f`](./contracts/optimism-10/0x129e14f5e79f1423b79d309a2a7ee43121554c2f/) | ThalesAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x278b5a...dc1a1a`](./contracts/optimism-10/0x278b5a44397c9d8e52743fedec263c4760dc1a1a/) | ThalesAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5ae745...4ef1b1`](./contracts/optimism-10/0x5ae7454827d83526261f3871c1029792644ef1b1/) | ThalesAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbf40da...b91cd9`](./contracts/optimism-10/0xbf40da2e303c4a7cdb1a7b4d444b10b8e9b91cd9/) | ThalesAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6ab00f...51d39d`](./contracts/optimism-10/0x6ab00f0b713fd6288fc849b25e580ed2ad51d39d/) | ThalesAMMDefaultLiquidityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc10a0a...85ea40`](./contracts/optimism-10/0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40/) | ThalesAMMLiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1e95fa...c1e0a1`](./contracts/optimism-10/0x1e95faca5f99dcc8e517fea193a3c3b0aac1e0a1/) | ThalesAMMLiquidityPoolData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3124a1...3d9701`](./contracts/ethereum-1/0x3124a11216273018c8f37181b4505d36573d9701/) | ThalesExchanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3198ab...a2e579`](./contracts/optimism-10/0x3198ab211cdf3e4d13a698e1fb819507bca2e579/) | ThalesRoyale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0abc94...7a4ee3`](./contracts/optimism-10/0x0abc94987f6b98bfe6fd40f749e445a2857a4ee3/) | ThalesStakingRewardsPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2447ce...9f9985`](./contracts/optimism-10/0x2447ce55d230c01fc430725a8613d852289f9985/) | TherundownConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a58c0...736c71`](./contracts/ethereum-1/0x7a58c0be72be218b41c608b7fe7c5bb630736c71/) | Tickets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x5c0ae7...7a3139`](./contracts/moonriver-1285/0x5c0ae7c31a3fd60f0ea6d65f7b1aa185687a3139/) | TomHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | TomVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | TORN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a5527...853780`](./contracts/ethereum-1/0x0a5527eaacb1605bf8801c5fcee4e8ffc8853780/) | TornPowerIndexConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x515f28...aa259a`](./contracts/ethereum-1/0x515f2815c950c8385c1c3c30b63adf3207aa259a/) | TracerDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa84918...6b6cba`](./contracts/ethereum-1/0xa84918f3280d488eb3369cb713ec53ce386b6cba/) | TracerMultisigDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | TracerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe59817...c771d5`](./contracts/polygon-137/0xe59817a90ebc1f9bf441065042b8913affc771d5/) | TransferSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x42e6af...fb324b`](./contracts/optimism-10/0x42e6af231ba8ee39f1bf185d452061283bfb324b/) | TransferSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d92a0...a85fe1`](./contracts/ethereum-1/0x7d92a06808b4c4833623f809218ed403e4a85fe1/) | UCG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08c15f...47e0a3`](./contracts/polygon-137/0x08c15fa26e519a78a666d19ce5c646d55047e0a3/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x60bb3d...c5bd05`](./contracts/polygon-137/0x60bb3d364b765c497c8ce50ae0ae3f0882c5bd05/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xecc417...c4f09d`](./contracts/polygon-137/0xecc4176b90613ed78185f01bd1e42c5640c4f09d/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b5ddf...d73c40`](./contracts/arbitrum-42161/0x0b5ddfc404aa13e2f9c53f6a3f5126075ad73c40/) | UnderlyingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/) | Unipool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a5cc1...105ad6`](./contracts/arbitrum-42161/0x2a5cc190854cd078b2b0ca2a357faf0073105ad6/) | UpgradeableIncentiveReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x717508...ac4dbd`](./contracts/ethereum-1/0x717508a974cca423343d8c2a71d257f799ac4dbd/) | USDCLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0ed02...7a9073`](./contracts/arbitrum-42161/0xa0ed021cf3ad897181c23e20aa5ffb8f607a9073/) | USDCVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee7d2...9e1db3`](./contracts/ethereum-1/0x4ee7d2a5e155b721282065279e76da908d9e1db3/) | USDTLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8916a9...9ed12d`](./contracts/ethereum-1/0x8916a9b0064feab04b3bf3729adbb0be119ed12d/) | USRHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd4e8...96a13a`](./contracts/ethereum-1/0x2cd4e8d82f62a91b2299b083ba08532a6a96a13a/) | USRProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf02a67...1c9bc9`](./contracts/optimism-10/0xf02a67988adb4b92365911cd2522ef4deb1c9bc9/) | VAelinConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x433322...b873b5`](./contracts/optimism-10/0x4333227e5a2ed1c439b1fc5ca0c025af6cb873b5/) | VelodromeSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1ad7f...b6ada5`](./contracts/ethereum-1/0xe1ad7f48198d4e90d8ecb5e8ab3e8987c7b6ada5/) | VestedLPMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f75e...17e3c7`](./contracts/ethereum-1/0x03f75e626cacb190e0f6072cf5ec5b304517e3c7/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf8a53...21363c`](./contracts/ethereum-1/0xcf8a533d12bdb051cfbb3f41a08a090b3021363c/) | VesterSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x073271...72214e`](./contracts/ethereum-1/0x073271a5da4e9ee4afde9ff08801feb2c672214e/) | VesterStepped | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088c6a...dae39f`](./contracts/ethereum-1/0x088c6ad16ba124f1d40fd2a3ede63ef2e8dae39f/) | VestingEscrowProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d71d8...464fed`](./contracts/ethereum-1/0x5d71d8385af217d48dc112909754da9d3b464fed/) | VestingEscrowV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a20e7...023d1c`](./contracts/ethereum-1/0x5a20e71378bc770d1cd0b9a30d96bf911f023d1c/) | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07aa6c...9622a2`](./contracts/optimism-10/0x07aa6cfd846ff4e39178f414dc27ec890d9622a2/) | VirtualAelinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa02120...b0e915`](./contracts/ethereum-1/0xa02120696c7b8fe16c09c749e4598819b2b0e915/) | WirexToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | WootradeNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65ca07...63a44b`](./contracts/ethereum-1/0x65ca07a894e00b6a264c897de956cb0afb63a44b/) | WrappedPiErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cdda9...6982e3`](./contracts/ethereum-1/0x9cdda9f8a4533d829b424f47ac9a7850e46982e3/) | WrappedPiErc20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae236...c2c204`](./contracts/ethereum-1/0x9ae236653325b29d5ab4a2c8cb285e8059c2c204/) | xCVP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x363b2d...96bf59`](./contracts/ethereum-1/0x363b2deac84f0100d63c7427335f8350f596bf59/) | xIMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03ef3f...9b60f2`](./contracts/ethereum-1/0x03ef3f37856bd08eb47e2de7abc4ddd2c19b60f2/) | XSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ec6a4...103305`](./contracts/ethereum-1/0x4ec6a46ba91fd089db5833aefe980cd341103305/) | XSwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 406 |
| upstream | 4 |
| standard_library | 19 |
| needs_review | 515 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=446

Zero-match audit list:

- [16866] PeckShield-Audit_Report-CbridgeSui-v1.0.pdf
- [16867] PeckShield_gov.pdf
- [16869] PeckShield_nft_bridge.pdf
- [16872] SlowMist_gov.pdf
- [16874] SlowMist_message_apps.pdf

Fork inheritance lineage and inherited audits are included when available.
