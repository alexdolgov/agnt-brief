# Agentic Audit Brief: cBridge

## Project Overview

- Project: cBridge (`cbridge`)
- Website: [https://cbridge.celer.network/#/transfer](https://cbridge.celer.network/#/transfer)
- Lifecycle: unknown
- Generated: 2026-07-05T13:08:24.315Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dfb3
- Chains: arbitrum, avalanche, base, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, zksync-era
- Contract surface: 212 unique implementations (503 raw deployments)
- Coverage basis: 25/97 confirmed own live verified implementations (25.8%); conservative 17.1% with 49 needs-review implementation(s)
- DeFi Llama TVL: $12,883,316.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 593 project-authored contract(s) across 10 chain(s); 4 ERC4626 vaults, 102 ERC20 tokens, 12 ERC721 NFTs, 5 ERC1155 multi-tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 117 common project-authored base contract(s) (dsauth, dsauthevents, upgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 509; live-surface contracts included: 503 (425 live, 78 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/97 (25.8%)
- Deployed-live implementations: 155 of 212 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/156
- Verified + Unaudited implementations: 131
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 212
- Raw deployments: 503
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 24.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 24 | 15.4% | 2022-06 |
| PeckShield | Tier 2 | 16 | 10.3% | 2023-05 |
| CertiK | Tier 2 | 10 | 6.4% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Surface | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|---|
| Bridge | operational_periphery | own_core | arbitrum | n/a | 21 deployments: ethereum `0x5427fe...da1820`; ethereum `0xc578cb...4ad062`; ethereum `0xd85e30...cc1965`; optimism `0x6de336...e148bb`; optimism `0x9b36f1...8f3a1f`; optimism `0x9d39fc...cc3401`; bsc `0x5d96d4...79bfc6`; bsc `0xdd90e5...81a1af`; gnosis `0x3795c3...b60283`; polygon `0x88dcdc...958a78`; polygon `0xa251c4...d8ac5c`; polygon `0xb5df79...0f8733`; metis `0x841ce4...d0738c`; moonbeam `0x841ce4...d0738c`; moonriver `0x841ce4...d0738c`; arbitrum [`0x1619de...63feca`](./contracts/arbitrum-42161/0x1619de6b6b20ed217a58d00f37b9d47c7663feca/); celo `0xbb7684...1ad573`; avalanche `0xbb7684...1ad573`; avalanche `0xef3c71...82e5d4`; linea `0x9b36f1...8f3a1f`; scroll `0x9b36f1...8f3a1f` | ✅ Audited |
| FarmingRewards | unknown | own_core | optimism | n/a | 3 deployments: ethereum `0x61f85f...2b5f41`; ethereum `0xd916eb...a99d56`; optimism [`0x06292d...b93e4c`](./contracts/optimism-10/0x06292de88adb3b1557b034ebb1c367e65ab93e4c/) | ✅ Audited |
| Govern | unknown | own_core | ethereum | n/a | 2 deployments: ethereum [`0x8c75ad...ba446c`](./contracts/ethereum-1/0x8c75adb1d9f38f6c2af54be8120f598b9dba446c/); ethereum `0xea129a...641ba0` | ✅ Audited |
| MaiBridgeToken | unknown | own_core | moonriver | n/a | 2 deployments: moonriver [`0x48421f...358271`](./contracts/moonriver-1285/0x48421ff1c6b93988138130865c4b7cce10358271/); avalanche `0x61f85f...2b5f41` | ✅ Audited |
| MessageBus | operational_periphery | own_core | ethereum | n/a | [`0x4066d1...4e200c`](./contracts/ethereum-1/0x4066d196a423b2b3b8b054f4f40efb47a74e200c/) | ✅ Audited |
| MessageBus | unknown | own_core | optimism | n/a | 2 deployments: optimism [`0x3490a6...1c83cc`](./contracts/optimism-10/0x3490a659780016717b949281f334880f971c83cc/); optimism `0x7f6372...6eac0e` | ✅ Audited |
| MessageBus | unknown | own_core | optimism | n/a | 2 deployments: optimism [`0x7d43aa...42c0ad`](./contracts/optimism-10/0x7d43aabc515c356145049227cee54b608342c0ad/); optimism `0xf5c682...3476f5` | ✅ Audited |
| MessageBus | operational_periphery | own_core | bsc | n/a | [`0x957148...aeea6b`](./contracts/bsc-56/0x95714818fdd7a5454f73da9c777b3ee6ebaeea6b/) | ✅ Audited |
| MessageBus | unknown | own_core | polygon | n/a | 2 deployments: polygon [`0x08d1fd...0fde8d`](./contracts/polygon-137/0x08d1fd6b563afdef29c9aa01c3ce3d589d0fde8d/); polygon `0xad65cd...1624aa` | ✅ Audited |
| MessageBus | unknown | own_core | polygon | n/a | 2 deployments: polygon [`0x643017...68d393`](./contracts/polygon-137/0x643017bf85ef399dd76aa8a46ed3c6e22a68d393/); polygon `0xafdb9c...093fe6` | ✅ Audited |
| MessageBus | unknown | own_core | moonriver | n/a | 2 deployments: moonriver [`0x940daa...8cbe54`](./contracts/moonriver-1285/0x940daaba3f713abfabd79cdd991466fe698cbe54/); moonriver `0xc5f4aa...c32396` | ✅ Audited |
| MessageBus | operational_periphery | own_core | linea | n/a | 12 deployments: ethereum `0x7a8025...d2e8c9`; ethereum `0xdd9c64...80d39c`; optimism `0xf8bfea...ea26da`; bsc `0x7d5de3...12a896`; bsc `0xce50e2...7880cb`; polygon `0x16365b...9b95eb`; polygon `0xeb8bbe...08d6b9`; moonriver `0xb72a75...f59846`; avalanche `0x148c1e...e350b5`; avalanche `0x6c6e22...aa24ca`; linea [`0x0dfabd...15674c`](./contracts/linea-59144/0x0dfabdd2dc27cf93910f7bd4bc3860d5af15674c/); linea `0x82b498...7d1213` | ✅ Audited |
| MessageBus | unknown | own_core | linea | n/a | 2 deployments: linea [`0x6f2bd3...8c7c28`](./contracts/linea-59144/0x6f2bd3dec1a8c4459c2acc318881f63a048c7c28/); linea `0xea716c...d9acbd` | ✅ Audited |
| MintSwapCanonicalToken | unknown | own_core | bsc | n/a | 94 deployments: ethereum `0x15eef5...5ca524`; ethereum `0x212137...4e8ae6`; ethereum `0x21c025...0027af`; ethereum `0x30a667...ac0c2f`; ethereum `0x33cce3...84e4cf`; ethereum `0x3d85b5...5da541`; ethereum `0x3f95e5...c5656e`; ethereum `0x5a9946...7f5f6b`; ethereum `0x94d2fd...642550`; ethereum `0xa9c125...b1f758`; ethereum `0xb4ed26...86563d`; ethereum `0xe593f3...083e8b`; ethereum `0xeb883d...9b63b9`; ethereum `0xf3c969...a6d0f6`; optimism `0x23c748...7472eb`; optimism `0x259479...87728c`; bsc [`0x06fda0...074ec0`](./contracts/bsc-56/0x06fda0758c17416726f77cb11305eac94c074ec0/); bsc `0x07145a...b475a7`; bsc `0x0acc63...b9d4d3`; bsc `0x1305b2...619fd4`; bsc `0x16365b...9b95eb`; bsc `0x181002...102580`; bsc `0x19aa65...fccb3a`; bsc `0x3cc194...b4c02e`; bsc `0x426c58...71751c`; bsc `0x523d3e...6cebec`; bsc `0x6822a7...75cc82`; bsc `0x73afc2...9f950c`; bsc `0x79d104...b9c4e0`; bsc `0x81421a...26360c`; bsc `0x904d02...98ff0b`; bsc `0xa5a681...1c3c3e`; bsc `0xa7e592...66c9b2`; bsc `0xbcc128...04f867`; bsc `0xbd7b8e...e0e8d4`; bsc `0xd6705c...24722e`; bsc `0xea09cb...2476ae`; bsc `0xf23443...408108`; bsc `0xf8bfea...ea26da`; bsc `0xfef170...edad1f`; gnosis `0x8db213...073da0`; gnosis `0xd60636...6b8498`; polygon `0x17d9dd...4125b0`; polygon `0x4a52b8...ed4849`; polygon `0x5248fe...95a817`; polygon `0x7c83ca...d94107`; polygon `0xb65745...e7af28`; polygon `0xb98e16...91e60b`; polygon `0xbbca42...0ddc82`; metis `0x4a63af...ff9589`; metis `0x516e6d...3802ad`; metis `0x5d96d4...79bfc6`; metis `0x75364d...aff3b4`; moonbeam `0x3795c3...b60283`; moonbeam `0x695902...9e5375`; moonbeam `0x6a2d26...931d98`; moonbeam `0x800632...5c903a`; moonbeam `0x81ecac...85fe9c`; moonbeam `0x8a4b4c...a015ce`; moonbeam `0x8c75ad...ba446c`; moonbeam `0xcb4a75...5f8f9e`; moonriver `0x31d95c...a5741e`; moonriver `0x693b47...0066f3`; moonriver `0xad543f...a9d5ca`; moonriver `0xb74527...06182f`; moonriver `0xe9460b...74d37c`; moonriver `0xf6a939...955035`; arbitrum `0x4313dd...c878ca`; celo `0x1fbd28...cb8b78`; celo `0x48421f...358271`; celo `0x8a4b4c...a015ce`; celo `0xa8961b...eff5e0`; celo `0xb0d8cf...7c90dc`; celo `0xcb4a75...5f8f9e`; avalanche `0x2b9e10...8c0aa9`; avalanche `0x30a667...ac0c2f`; avalanche `0x63b0b8...3b3f80`; avalanche `0x70d302...e08cea`; avalanche `0x746ba4...b9c3dc`; avalanche `0x7af0a3...d43637`; avalanche `0x80b010...d603b3`; avalanche `0x90fbe9...99a13e`; avalanche `0xa4918c...367aa9`; avalanche `0xac8009...72b9eb`; avalanche `0xaedb70...694798`; avalanche `0xaf2d36...94e390`; avalanche `0xcd7d33...65119d`; avalanche `0xcda140...e8a818`; avalanche `0xda0019...7ee27b`; avalanche `0xde5384...5ff842`; avalanche `0xea4b1b...a4a58b`; avalanche `0xee396d...92e57d`; avalanche `0xfc6da9...861d3b`; avalanche `0xfcde4a...8b02f1` | ✅ Audited |
| MultiBridgeToken | unknown | own_core | bsc | n/a | 22 deployments: ethereum `0x394d85...56849d`; ethereum `0x6cadd1...6db362`; ethereum `0xa719cb...e9de24`; ethereum `0xbade2a...6fb5a4`; optimism `0x0dbb98...f36cd7`; optimism `0x1f4f04...cb8dad`; optimism `0x83250f...3abe38`; optimism `0xf560ac...d17190`; bsc [`0x09236a...31c51e`](./contracts/bsc-56/0x09236aff6b36a5dbf97b5030a5a650e06931c51e/); bsc `0x2c30b4...7562a0`; bsc `0x443b4d...4a2bc6`; bsc `0x4b5f2b...254fcd`; bsc `0xa4918c...367aa9`; bsc `0xdd2612...8bbc55`; arbitrum `0x37596f...9cb0fd`; arbitrum `0x75e4fd...d15c5a`; celo `0x38d1e2...939e51`; celo `0xad543f...a9d5ca`; linea `0x265b25...7567e8`; linea `0x5471ea...a953e4`; linea `0x7d43aa...42c0ad`; linea `0xf5c682...3476f5` | ✅ Audited |
| OriginalTokenVault | core_logic | own_core | avalanche | n/a | 7 deployments: ethereum `0xb37d31...518595`; optimism `0xbcfef6...40aa11`; bsc `0x78bc5e...ed02dc`; polygon `0xc1a2d9...d51eea`; arbitrum `0xfe31bf...040f76`; celo `0xd9d103...66752c`; avalanche [`0x5427fe...da1820`](./contracts/avalanche-43114/0x5427fefa711eff984124bfbb1ab6fbf5e3da1820/) | ✅ Audited |
| OriginalTokenVaultV2 | unknown | own_core | ethereum | n/a | 6 deployments: ethereum [`0x0db3b3...90e0d3`](./contracts/ethereum-1/0x0db3b38383e87b03ac745b0d58d17434c890e0d3/); ethereum `0x751079...f2bae1`; optimism `0x6e380a...13be4f`; bsc `0x11a0c9...44a980`; arbitrum `0xea4b1b...a4a58b`; avalanche `0xb51541...4502bb` | ✅ Audited |
| PeggedTokenBridge | operational_periphery | own_core | ethereum | n/a | 10 deployments: ethereum [`0x16365b...9b95eb`](./contracts/ethereum-1/0x16365b45eb269b5b5dacb34b4a15399ec79b95eb/); optimism `0x61f85f...2b5f41`; bsc `0xd443fe...97580e`; gnosis `0xd4c058...db5975`; polygon `0x4d58fd...426f7a`; metis `0x3bbadf...f85bb8`; moonbeam `0xbb7684...1ad573`; moonriver `0x374b8a...1c57ef`; celo `0xda1dd6...d1162e`; avalanche `0x88dcdc...958a78` | ✅ Audited |
| SGN | unknown | own_core | ethereum | n/a | 2 deployments: ethereum [`0x8d9827...286c50`](./contracts/ethereum-1/0x8d982783040e3ccc0c04cc7b88b9637ce7286c50/); ethereum `0xcb4a75...5f8f9e` | ✅ Audited |
| SingleBridgeToken | unknown | own_core | bsc | n/a | 6 deployments: ethereum `0xeb6c39...b69312`; bsc [`0x66acea...56f64f`](./contracts/bsc-56/0x66acea0f41656711f58ff840c8857e3e5356f64f/); bsc `0xbbca42...0ddc82`; bsc `0xe46910...15b22b`; celo `0xb18358...b25560`; celo `0xd85e30...cc1965` | ✅ Audited |
| Staking | unknown | own_core | ethereum | n/a | 3 deployments: ethereum [`0x8a4b4c...a015ce`](./contracts/ethereum-1/0x8a4b4c2acadeaa7206df96f00052e41d74a015ce/); ethereum `0xa251c4...d8ac5c`; ethereum `0xdb3130...9beacb` | ✅ Audited |
| StakingReward | unknown | own_core | ethereum | n/a | 2 deployments: ethereum [`0x1e6b1c...14e6ce`](./contracts/ethereum-1/0x1e6b1ceaf75936f153abb7b65fba57abae14e6ce/); ethereum `0xb01fd7...212b42` | ✅ Audited |
| TransferAgent | unknown | own_core | bsc | n/a | 2 deployments: ethereum `0x9b274b...661a0b`; bsc [`0x3d85b5...5da541`](./contracts/bsc-56/0x3d85b598b734a0e7c8c1b62b00e972e9265da541/) | ✅ Audited |
| Viewer | unknown | own_core | ethereum | n/a | 2 deployments: ethereum [`0x580345...27853b`](./contracts/ethereum-1/0x5803457e3074e727fa7f9aed60454bf2f127853b/); ethereum `0xb18358...b25560` | ✅ Audited |
| Viewer | unknown | own_core | arbitrum | n/a | 2 deployments: arbitrum [`0x329ba0...a69df0`](./contracts/arbitrum-42161/0x329ba09997f91812a833039cce58411400a69df0/); arbitrum `0x63fc93...87d253` | ✅ Audited |

### ⚠️ Verified + Unaudited (131)

| Contract Name | Role | Surface | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|---|
| AmmVault | core_logic | own_core | optimism | n/a | 3 deployments: optimism [`0x43318d...649c83`](./contracts/optimism-10/0x43318de9e8f65b591598f17add87ae7247649c83/); optimism `0x6c7fd4...bca29f`; optimism `0xb48402...196f93` | ⚠️ Unaudited |
| AmyFinanceToken | token | needs_review | arbitrum | n/a | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | ⚠️ Unaudited |
| Animal | unknown | needs_review | ethereum | n/a | [`0x38b0e3...f003e2`](./contracts/ethereum-1/0x38b0e3a59183814957d83df2a97492aed1f003e2/) | ⚠️ Unaudited |
| ArbStip | unknown | own_core | arbitrum | n/a | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ⚠️ Unaudited |
| AvocadoDAOToken | token | needs_review | ethereum | n/a | [`0xa41f14...2f311f`](./contracts/ethereum-1/0xa41f142b6eb2b164f8164cae0716892ce02f311f/) | ⚠️ Unaudited |
| BlankToken | token | own_core | ethereum | n/a | [`0xaec7e1...c48966`](./contracts/ethereum-1/0xaec7e1f531bb09115103c53ba76829910ec48966/) | ⚠️ Unaudited |
| BOBA | unknown | needs_review | ethereum | n/a | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | own_core | avalanche | n/a | [`0xf582ca...be0307`](./contracts/avalanche-43114/0xf582cae047853cbe7f0bc8f8321bef4a1ebe0307/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | own_supporting | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CBridge | unknown | own_integration_wrapper | ethereum | n/a | 3 deployments: ethereum [`0x841ce4...d0738c`](./contracts/ethereum-1/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/); bsc [`0x841ce4...d0738c`](./contracts/bsc-56/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/); polygon [`0x841ce4...d0738c`](./contracts/polygon-137/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | ⚠️ Unaudited |
| CelerToken | token | own_core | ethereum | n/a | [`0x4f9254...81c667`](./contracts/ethereum-1/0x4f9254c83eb525f9fcf346490bbb3ed28a81c667/) | ⚠️ Unaudited |
| CGGToken | token | own_core | ethereum | n/a | [`0x1fe24f...fa5e43`](./contracts/ethereum-1/0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43/) | ⚠️ Unaudited |
| ChainGuardiansToken900 | governance | needs_review | ethereum | n/a | [`0x2a2ad5...ff0379`](./contracts/ethereum-1/0x2a2ad5a2eacf35194d39afe1d727c39710ff0379/) | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | own_supporting | arbitrum | n/a | 2 deployments: arbitrum [`0x753d22...1d3dac`](./contracts/arbitrum-42161/0x753d224bcf9aafacd81558c32341416df61d3dac/); arbitrum `0xf0a571...735fba` | ⚠️ Unaudited |
| CloutArtToken | token | needs_review | polygon | n/a | [`0x262b8a...02b728`](./contracts/polygon-137/0x262b8aa7542004f023b0eb02bc6b96350a02b728/) | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | needs_review | arbitrum | n/a | [`0xa99096...ce68c8`](./contracts/arbitrum-42161/0xa99096428f1bd2065dcaa141c59c46729cce68c8/) | ⚠️ Unaudited |
| ControllerV2BLP | governance | own_supporting | optimism | n/a | [`0xa300a8...d8bcf4`](./contracts/optimism-10/0xa300a84d8970718dac32f54f61bd568142d8bcf4/) | ⚠️ Unaudited |
| ControllerV2BLP | governance | needs_review | polygon | n/a | [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | ⚠️ Unaudited |
| ControllerV2BLP | governance | own_supporting | arbitrum | n/a | [`0x8e7e9e...1e5408`](./contracts/arbitrum-42161/0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408/) | ⚠️ Unaudited |
| ConvergenceToken | token | needs_review | ethereum | n/a | [`0xc834fa...aa8b50`](./contracts/ethereum-1/0xc834fa996fa3bec7aad3693af486ae53d8aa8b50/) | ⚠️ Unaudited |
| CrazyBunny | unknown | own_core | ethereum | n/a | [`0x9f4564...213aae`](./contracts/ethereum-1/0x9f4564b85cb77ce76cc725f29758cbfe20213aae/) | ⚠️ Unaudited |
| CrossProxy | proxy | own_supporting | avalanche | n/a | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | ⚠️ Unaudited |
| Cvp | unknown | own_core | ethereum | n/a | [`0x38e4ad...e7dca1`](./contracts/ethereum-1/0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1/) | ⚠️ Unaudited |
| DFProtocol | unknown | own_core | ethereum | n/a | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | ⚠️ Unaudited |
| DODOToken | token | own_core | ethereum | n/a | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | ⚠️ Unaudited |
| DomiToken | token | needs_review | ethereum | n/a | [`0x45c2f8...fef83f`](./contracts/ethereum-1/0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f/) | ⚠️ Unaudited |
| DSToken | token | own_core | ethereum | n/a | 2 deployments: ethereum [`0x431ad2...f7dbe0`](./contracts/ethereum-1/0x431ad2ff6a9c365805ebad47ee021148d6f7dbe0/); ethereum `0xeb2697...a83549` | ⚠️ Unaudited |
| EmiRouter | adapter | own_integration_wrapper | ethereum | n/a | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | ⚠️ Unaudited |
| ERC20 | token | needs_review | ethereum | n/a | [`0x41a3db...c29666`](./contracts/ethereum-1/0x41a3dba3d677e573636ba691a70ff2d606c29666/) | ⚠️ Unaudited |
| ESW | unknown | own_supporting | ethereum | n/a | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ⚠️ Unaudited |
| ESW | unknown | own_supporting | polygon | n/a | [`0xd2a2a3...4a7d8f`](./contracts/polygon-137/0xd2a2a353d28e4833faffc882f6649c9c884a7d8f/) | ⚠️ Unaudited |
| ETHPlatform | unknown | own_core | ethereum | n/a | 2 deployments: ethereum [`0x5005e8...cf0e79`](./contracts/ethereum-1/0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79/); ethereum `0xbe857e...52be72` | ⚠️ Unaudited |
| Farming | unknown | own_core | moonbeam | n/a | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | ⚠️ Unaudited |
| FINN | unknown | own_core | moonriver | n/a | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | ⚠️ Unaudited |
| FinnBar | unknown | needs_review | moonriver | n/a | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | ⚠️ Unaudited |
| GamerCoin | unknown | needs_review | ethereum | n/a | [`0x728f30...b1387d`](./contracts/ethereum-1/0x728f30fa2f100742c7949d1961804fa8e0b1387d/) | ⚠️ Unaudited |
| GOVI | unknown | needs_review | ethereum | n/a | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | own_supporting | ethereum | n/a | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | own_supporting | ethereum | n/a | [`0x936dd3...975fb7`](./contracts/ethereum-1/0x936dd3112a9d39af39adda798503d9e7e7975fb7/) | ⚠️ Unaudited |
| HuckleberryFarm | unknown | own_core | moonriver | n/a | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | ⚠️ Unaudited |
| HuhToken | token | own_core | polygon | n/a | 2 deployments: ethereum `0x86d49f...5002ab`; polygon [`0x086484...c37786`](./contracts/polygon-137/0x08648471b5aad25feeeb853d6829048f3fc37786/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | own_supporting | optimism | n/a | [`0xa7a084...a7b3b4`](./contracts/optimism-10/0xa7a084538de04d808f20c785762934dd5da7b3b4/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | needs_review | polygon | n/a | [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | own_supporting | arbitrum | n/a | [`0xee3383...5dcc15`](./contracts/arbitrum-42161/0xee338313f022caee84034253174fa562495dcc15/) | ⚠️ Unaudited |
| iMSDV2BLP | unknown | own_supporting | arbitrum | n/a | 2 deployments: arbitrum [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/); arbitrum `0xe8c85b...fea56c` | ⚠️ Unaudited |
| iMUSX | unknown | needs_review | optimism | n/a | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | ⚠️ Unaudited |
| Imx | unknown | own_core | ethereum | n/a | [`0x7b35ce...764a00`](./contracts/ethereum-1/0x7b35ce522cb72e4077baeb96cb923a5529764a00/) | ⚠️ Unaudited |
| iTokenV2BLP | token | own_supporting | optimism | n/a | 12 deployments: optimism [`0x1f144c...8e2ed7`](./contracts/optimism-10/0x1f144cd63d7007945292ebcde14a6df8628e2ed7/); optimism `0x24d302...06eb27`; optimism `0x4b3488...e09a16`; optimism `0x5bede6...78564c`; optimism `0x5d05c1...48fc44`; optimism `0x683236...4a6ce6`; optimism `0x7702dc...f1d725`; optimism `0x7e7e1d...44ce43`; optimism `0xb34479...1a2cc2`; optimism `0xd65a18...1288d5`; optimism `0xdd40bb...b28ece`; optimism `0xed3c20...aff36f` | ⚠️ Unaudited |
| iTokenV2BLP | token | own_supporting | polygon | n/a | 10 deployments: polygon [`0x0c9261...d81740`](./contracts/polygon-137/0x0c92617df0753af1cab2d9cc6a56173970d81740/); polygon `0x159624...31ad6d`; polygon `0x38d0c4...1cd6f9`; polygon `0x5268b3...b65234`; polygon `0x7d86ee...691b68`; polygon `0x94a14b...45876a`; polygon `0xb3ab71...6a504e`; polygon `0xc171eb...a29882`; polygon `0xcb5d9b...f939b2`; polygon `0xec85f7...96d95b` | ⚠️ Unaudited |
| iTokenV2BLP | token | own_core | arbitrum | n/a | 9 deployments: arbitrum [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/); arbitrum `0x0385f8...56cbaa`; arbitrum `0x46eca1...feb17a`; arbitrum `0x567554...3b0b8b`; arbitrum `0x8dc331...4d4ae0`; arbitrum `0xaea8e2...9c4a63`; arbitrum `0xd3204e...ee0acc`; arbitrum `0xf52f07...9692a9`; arbitrum `0xf69959...12b628` | ⚠️ Unaudited |
| izumiToken | token | own_core | ethereum | n/a | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| JonesAsset | unknown | own_core | arbitrum | n/a | 4 deployments: arbitrum [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/); arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| JonesERC20VaultV3 | core_logic | needs_review | arbitrum | n/a | [`0x8883e5...73f3f5`](./contracts/arbitrum-42161/0x8883e5bb2920bbe766a2c9e86ad9aa45a573f3f5/) | ⚠️ Unaudited |
| JonesToken | token | needs_review | arbitrum | n/a | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | adapter | needs_review | arbitrum | n/a | [`0xbcb55b...6f3c2d`](./contracts/arbitrum-42161/0xbcb55bdb669e756e982169c19c20c987c26f3c2d/) | ⚠️ Unaudited |
| Kromatika | unknown | needs_review | ethereum | n/a | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | needs_review | arbitrum | n/a | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | needs_review | arbitrum | n/a | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | needs_review | arbitrum | n/a | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | token | needs_review | optimism | n/a | 2 deployments: optimism [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/); optimism `0xf98dcd...590b07` | ⚠️ Unaudited |
| L2WethGateway | token | needs_review | arbitrum | n/a | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| LandsaleNFT_ESTATE | token | own_core | ethereum | n/a | [`0x28cd29...8dc654`](./contracts/ethereum-1/0x28cd2990f34db387d011d7cc693a2bcedd8dc654/) | ⚠️ Unaudited |
| LockedTokenVault | core_logic | own_core | ethereum | n/a | [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/) | ⚠️ Unaudited |
| LockingContract | unknown | own_core | ethereum | n/a | 2 deployments: ethereum [`0x6e1f65...53f3c2`](./contracts/ethereum-1/0x6e1f655ee65bc554c4357daae391e2094053f3c2/); ethereum `0xee88e0...bfadb0` | ⚠️ Unaudited |
| LPStakingRewards | unknown | own_supporting | optimism | n/a | [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/) | ⚠️ Unaudited |
| LQTYStaking | unknown | own_core | avalanche | n/a | [`0xb4387d...e1053c`](./contracts/avalanche-43114/0xb4387d93b5a9392f64963cd44389e7d9d2e1053c/) | ⚠️ Unaudited |
| LQTYToken | token | own_core | avalanche | n/a | [`0x094bd7...0fddcc`](./contracts/avalanche-43114/0x094bd7b2d99711a1486fb94d4395801c6d0fddcc/) | ⚠️ Unaudited |
| LUSDToken | token | own_core | avalanche | n/a | [`0x4fbf04...066095`](./contracts/avalanche-43114/0x4fbf0429599460d327bd5f55625e30e4fc066095/) | ⚠️ Unaudited |
| Lyra | unknown | needs_review | ethereum | n/a | [`0x01ba67...5105bf`](./contracts/ethereum-1/0x01ba67aac7f75f647d94220cc98fb30fcc5105bf/) | ⚠️ Unaudited |
| LyraSafetyModule | unknown | own_core | ethereum | n/a | [`0xcb9f85...c77d49`](./contracts/ethereum-1/0xcb9f85730f57732fc899fb158164b9ed60c77d49/) | ⚠️ Unaudited |
| MappingTokenV2 | unknown | own_core | moonriver | n/a | 6 deployments: moonriver [`0x31d459...96c2d5`](./contracts/moonriver-1285/0x31d45973e7428251a69d767e077dc50bf696c2d5/); moonriver `0x900f1e...802667`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| MaskToken | token | needs_review | ethereum | n/a | [`0x69af81...623074`](./contracts/ethereum-1/0x69af81e73a73b40adf4f3d4223cd9b1ece623074/) | ⚠️ Unaudited |
| MELOS | unknown | own_supporting | ethereum | n/a | [`0x1afb69...19e647`](./contracts/ethereum-1/0x1afb69dbc9f54d08dab1bd3436f8da1af819e647/) | ⚠️ Unaudited |
| MetavaultRefund | core_logic | needs_review | arbitrum | n/a | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | ⚠️ Unaudited |
| MillinerV2 | unknown | needs_review | arbitrum | n/a | [`0xb94d19...0fd756`](./contracts/arbitrum-42161/0xb94d1959084081c5a11c460012ab522f5a0fd756/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | own_core | arbitrum | n/a | [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/) | ⚠️ Unaudited |
| MiniMeToken | token | own_core | ethereum | n/a | [`0x8765b1...203656`](./contracts/ethereum-1/0x8765b1a0eb57ca49be7eacd35b24a574d0203656/) | ⚠️ Unaudited |
| MSNFT | token | needs_review | ethereum | n/a | [`0xf38ee8...833d32`](./contracts/ethereum-1/0xf38ee864e36650f8c0abd14622a55bb1f6833d32/) | ⚠️ Unaudited |
| MToken | token | own_core | ethereum | n/a | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | ⚠️ Unaudited |
| Multicall2 | periphery | standard_proxy_or_library (excluded) | metis | n/a | 3 deployments: optimism `0x7e2dc2...90076b`; metis [`0x32960f...d771ed`](./contracts/metis-1088/0x32960f513727b54876d8974bcb3f107b07d771ed/); arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| OneTokenV1 | token | own_core | ethereum | n/a | [`0xca3753...deaf90`](./contracts/ethereum-1/0xca37530e7c5968627be470081d1c993eb1deaf90/) | ⚠️ Unaudited |
| OpenDAO | unknown | needs_review | ethereum | n/a | [`0x3b484b...c0aee0`](./contracts/ethereum-1/0x3b484b82567a09e2588a13d54d032153f0c0aee0/) | ⚠️ Unaudited |
| OpenDAOMembershipNFT | token | needs_review | ethereum | n/a | [`0xd22f83...abc44d`](./contracts/ethereum-1/0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d/) | ⚠️ Unaudited |
| OpenDAOStaking | unknown | needs_review | ethereum | n/a | [`0xedd27c...90d7d1`](./contracts/ethereum-1/0xedd27c961ce6f79afc16fd287d934ee31a90d7d1/) | ⚠️ Unaudited |
| OpThales | unknown | own_core | optimism | n/a | 2 deployments: ethereum `0x8947da...a8c3c5`; optimism [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | own_supporting | bsc | n/a | 8 deployments: ethereum `0x52e4f2...4de084`; optimism `0xc3c5b9...d9699a`; bsc [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/); polygon `0xb51541...4502bb`; base `0x5471ea...a953e4`; arbitrum `0xc72e7f...3aaf6b`; avalanche `0xb774c6...fed195`; linea `0x9bb46d...233f4d` | ⚠️ Unaudited |
| Perlin | unknown | own_core | ethereum | n/a | [`0xeca821...860318`](./contracts/ethereum-1/0xeca82185adce47f39c684352b0439f030f860318/) | ⚠️ Unaudited |
| Perpetual | unknown | own_core | ethereum | n/a | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | ⚠️ Unaudited |
| PerpToken | token | own_core | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| Platform | unknown | needs_review | ethereum | n/a | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | ⚠️ Unaudited |
| Pluto | unknown | own_core | ethereum | n/a | [`0xdfe3ac...ed5447`](./contracts/ethereum-1/0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447/) | ⚠️ Unaudited |
| PolkaExToken | token | needs_review | ethereum | n/a | [`0xe6f143...206920`](./contracts/ethereum-1/0xe6f143a0e0a8f24f6294ce3432ea10fad0206920/) | ⚠️ Unaudited |
| PPTimedVesting | operational_periphery | needs_review | ethereum | n/a | [`0x60842a...6b28b3`](./contracts/ethereum-1/0x60842a6b44cca5eb7685d1135acf69b1336b28b3/) | ⚠️ Unaudited |
| PriceFeed | operational_periphery | needs_review | optimism | n/a | [`0xf4aef2...6390dd`](./contracts/optimism-10/0xf4aef21d906992afadde7a9676e1db4feb6390dd/) | ⚠️ Unaudited |
| PSP | unknown | own_core | ethereum | n/a | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | ⚠️ Unaudited |
| QiStablecoin | token | own_core | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| RamsesClaimer | operational_periphery | own_supporting | arbitrum | n/a | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | ⚠️ Unaudited |
| ReefToken | token | own_core | ethereum | n/a | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ⚠️ Unaudited |
| Router | adapter | own_integration_wrapper | moonbeam | n/a | [`0x7a3909...fcab71`](./contracts/moonbeam-1284/0x7a3909c7996efe42d425cd932fc44e3840fcab71/) | ⚠️ Unaudited |
| Router01 | adapter | own_supporting | ethereum | n/a | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | needs_review | optimism | n/a | [`0x679c01...7c59e7`](./contracts/optimism-10/0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7/) | ⚠️ Unaudited |
| SafleToken | token | needs_review | polygon | n/a | [`0x04b330...8ea126`](./contracts/polygon-137/0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126/) | ⚠️ Unaudited |
| SmallToken | token | needs_review | ethereum | n/a | [`0x7fa384...23d2f2`](./contracts/ethereum-1/0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | own_core | optimism | n/a | [`0x842e89...e0eba5`](./contracts/optimism-10/0x842e89b7a7ef8ce099540b3613264c933ce0eba5/) | ⚠️ Unaudited |
| SportVault | core_logic | own_core | optimism | n/a | 4 deployments: optimism [`0x43d198...16d98e`](./contracts/optimism-10/0x43d19841d818b2ccc63a8b44ce8c7def8616d98e/); optimism `0x5e2b49...632d3f`; optimism `0xbaac54...65fd5f`; optimism `0xc922f4...f6cecd` | ⚠️ Unaudited |
| StabilityPool | core_logic | own_core | avalanche | n/a | [`0x7aed63...607522`](./contracts/avalanche-43114/0x7aed63385c03dc8ed2133f705bbb63e8ea607522/) | ⚠️ Unaudited |
| StakingPools | core_logic | needs_review | ethereum | n/a | [`0x37c7c2...36d6ee`](./contracts/ethereum-1/0x37c7c2ae51e968cefb82cff2102727256d36d6ee/) | ⚠️ Unaudited |
| StakingRewards | unknown | own_core | optimism | n/a | 2 deployments: optimism [`0x4aec98...83f4f8`](./contracts/optimism-10/0x4aec980a0daef4905520a11b99971c7b9583f4f8/); optimism `0xfe757a...986a4d` | ⚠️ Unaudited |
| Standard | unknown | own_core | ethereum | n/a | [`0x9040e2...2b999d`](./contracts/ethereum-1/0x9040e237c3bf18347bb00957dc22167d0f2b999d/) | ⚠️ Unaudited |
| StandardArbERC20 | token | own_core | arbitrum | n/a | 8 deployments: arbitrum [`0x3a8b78...f345ab`](./contracts/arbitrum-42161/0x3a8b787f78d775aecfeea15706d4221b40f345ab/); arbitrum `0x55ff62...a4bf70`; arbitrum `0x69eb4f...59a581`; arbitrum `0x9c67ee...7dd39c`; arbitrum `0xa72159...1e9b87`; arbitrum `0xae6aab...aba689`; arbitrum `0xcafcd8...efd07b`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| TaleOfThalesNFTs | token | needs_review | optimism | n/a | [`0xa9218c...be7021`](./contracts/optimism-10/0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | own_core | optimism | n/a | [`0xc10a0a...85ea40`](./contracts/optimism-10/0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40/) | ⚠️ Unaudited |
| Tickets | unknown | needs_review | ethereum | n/a | [`0x7a58c0...736c71`](./contracts/ethereum-1/0x7a58c0be72be218b41c608b7fe7c5bb630736c71/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | needs_review | ethereum | n/a | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | ⚠️ Unaudited |
| TomVault | core_logic | needs_review | moonriver | n/a | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | ⚠️ Unaudited |
| TORN | unknown | needs_review | ethereum | n/a | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| TracerToken | token | needs_review | ethereum | n/a | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | standard_proxy_or_library (excluded) | optimism | n/a | [`0x70a354...413bd4`](./contracts/optimism-10/0x70a35414fad53752c9352401be211779ec413bd4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | standard_proxy_or_library (excluded) | polygon | n/a | [`0x99e835...fe372c`](./contracts/polygon-137/0x99e8352d079326bc431633a61954f713aafe372c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | standard_proxy_or_library (excluded) | moonriver | n/a | [`0xe31a0d...7c994f`](./contracts/moonriver-1285/0xe31a0da5e59df4c82c60d2dd14be64e7ec7c994f/) | ⚠️ Unaudited |
| UChildERC20 | token | third_party_dependency (excluded) | polygon | n/a | [`0x08c15f...47e0a3`](./contracts/polygon-137/0x08c15fa26e519a78a666d19ce5c646d55047e0a3/) | ⚠️ Unaudited |
| UChildERC20 | token | third_party_dependency (excluded) | polygon | n/a | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | ⚠️ Unaudited |
| UChildERC20 | token | third_party_dependency (excluded) | polygon | n/a | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | ⚠️ Unaudited |
| UChildERC20 | token | third_party_dependency (excluded) | polygon | n/a | [`0x60bb3d...c5bd05`](./contracts/polygon-137/0x60bb3d364b765c497c8ce50ae0ae3f0882c5bd05/) | ⚠️ Unaudited |
| UChildERC20 | token | third_party_dependency (excluded) | polygon | n/a | [`0xecc417...c4f09d`](./contracts/polygon-137/0xecc4176b90613ed78185f01bd1e42c5640c4f09d/) | ⚠️ Unaudited |
| Unipool | core_logic | own_core | ethereum | n/a | 2 deployments: ethereum [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/); ethereum `0xdc7a84...9a8adc` | ⚠️ Unaudited |
| WirexToken | token | needs_review | ethereum | n/a | [`0xa02120...b0e915`](./contracts/ethereum-1/0xa02120696c7b8fe16c09c749e4598819b2b0e915/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | own_core | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| xCVP | unknown | needs_review | ethereum | n/a | [`0x9ae236...c2c204`](./contracts/ethereum-1/0x9ae236653325b29d5ab4a2c8cb285e8059c2c204/) | ⚠️ Unaudited |
| xIMX | unknown | own_core | ethereum | n/a | [`0x363b2d...96bf59`](./contracts/ethereum-1/0x363b2deac84f0100d63c7427335f8350f596bf59/) | ⚠️ Unaudited |
| ZenlinkToken | token | own_core | moonriver | n/a | 2 deployments: moonbeam `0x3fd9b6...39100c`; moonriver [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Surface | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|---|
| UnnamedContract | unknown | needs_review | optimism | n/a | `0x9b216a...b718bb` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | polygon | n/a | `0xe3bd74...36be2f` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | fantom | n/a | 17 deployments: heco `0x4668e0...c0924b`; heco `0x5d96d4...79bfc6`; heco `0x779a81...1a8fdc`; heco `0xbb7684...1ad573`; fantom `0x374b8a...1c57ef`; fantom `0x6626c4...5e8d8a`; fantom `0x74b238...58c76d`; fantom `0x7d9160...8f03e9`; boba `0x4c882e...8a7c0c`; boba `0x5008f8...5a9610`; boba `0x841ce4...d0738c`; boba `0x8db213...073da0`; boba `0xce055e...be8197`; polygon-zkevm `0xd46f8e...7388d1`; harmony `0x78a21c...20ceec`; harmony `0x985458...9dfab4`; harmony `0xbd8064...7b8b96` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | zksync-era | n/a | `0x0d72be...c9ee46` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | zksync-era | n/a | `0x54069e...1cd66c` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x0090eb...7c9081` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x0253ee...44b331` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x056e1e...e3e480` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x0aef44...5f4aa8` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x124f71...0adb9a` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x141133...19e3a1` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x234232...8bec28` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x2f57a0...aaf9f9` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x307dd1...f09716` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x375ec6...6ddabb` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x3a7bff...99f603` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x4d7168...b4ec76` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x5b5ef5...0b4f19` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x670cf2...bd7b78` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x6dc265...82eae0` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x722377...3c4cb4` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x78d6c2...79bb43` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x80620e...df67ce` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x813195...48388b` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x8347b8...100857` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x8b3d37...3f0225` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x8f17b4...657fc7` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x98b4b1...5ec533` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0x99965f...c14ca8` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xa0a9b4...b5bd57` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xa1341d...3269a2` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xb1662f...6048a7` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xb4938b...2c8633` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xbf4dd7...56a8a9` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xbf5979...9f3912` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xc0012a...2148ed` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xc12cac...6ee58e` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xc34372...ff2b92` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xcc9b8e...df58fe` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xcdfd49...8a001e` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xd2d802...ba5f9e` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xd9b5a5...911b9f` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xdb19e9...9ce589` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xe0f5f1...ce2639` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xed026c...aa067c` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xf4dde0...52d5b6` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xf81bd6...bb8658` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xfa68ba...ddca53` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xfc4e82...a8b67c` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xfc7611...5baebe` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xfcc0a9...7d2d1b` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | metis | n/a | `0xfde96c...1c1a66` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | moonriver | n/a | `0x425880...a9e263` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | needs_review | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |

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
| optimism | [`0x43318d...649c83`](./contracts/optimism-10/0x43318de9e8f65b591598f17add87ae7247649c83/) | AmmVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | AmyFinanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38b0e3...f003e2`](./contracts/ethereum-1/0x38b0e3a59183814957d83df2a97492aed1f003e2/) | Animal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ArbStip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa41f14...2f311f`](./contracts/ethereum-1/0xa41f142b6eb2b164f8164cae0716892ce02f311f/) | AvocadoDAOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaec7e1...c48966`](./contracts/ethereum-1/0xaec7e1f531bb09115103c53ba76829910ec48966/) | BlankToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | BOBA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf582ca...be0307`](./contracts/avalanche-43114/0xf582cae047853cbe7f0bc8f8321bef4a1ebe0307/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x841ce4...d0738c`](./contracts/ethereum-1/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | CBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9254...81c667`](./contracts/ethereum-1/0x4f9254c83eb525f9fcf346490bbb3ed28a81c667/) | CelerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe24f...fa5e43`](./contracts/ethereum-1/0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43/) | CGGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2ad5...ff0379`](./contracts/ethereum-1/0x2a2ad5a2eacf35194d39afe1d727c39710ff0379/) | ChainGuardiansToken900 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x753d22...1d3dac`](./contracts/arbitrum-42161/0x753d224bcf9aafacd81558c32341416df61d3dac/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x262b8a...02b728`](./contracts/polygon-137/0x262b8aa7542004f023b0eb02bc6b96350a02b728/) | CloutArtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa99096...ce68c8`](./contracts/arbitrum-42161/0xa99096428f1bd2065dcaa141c59c46729cce68c8/) | ContributorVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa300a8...d8bcf4`](./contracts/optimism-10/0xa300a84d8970718dac32f54f61bd568142d8bcf4/) | ControllerV2BLP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | ControllerV2BLP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8e7e9e...1e5408`](./contracts/arbitrum-42161/0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408/) | ControllerV2BLP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc834fa...aa8b50`](./contracts/ethereum-1/0xc834fa996fa3bec7aad3693af486ae53d8aa8b50/) | ConvergenceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f4564...213aae`](./contracts/ethereum-1/0x9f4564b85cb77ce76cc725f29758cbfe20213aae/) | CrazyBunny | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | CrossProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e4ad...e7dca1`](./contracts/ethereum-1/0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1/) | Cvp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | DFProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | DODOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c2f8...fef83f`](./contracts/ethereum-1/0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f/) | DomiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | EmiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a3db...c29666`](./contracts/ethereum-1/0x41a3dba3d677e573636ba691a70ff2d606c29666/) | ERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ESW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd2a2a3...4a7d8f`](./contracts/polygon-137/0xd2a2a353d28e4833faffc882f6649c9c884a7d8f/) | ESW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5005e8...cf0e79`](./contracts/ethereum-1/0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79/) | ETHPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | FINN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | FinnBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x728f30...b1387d`](./contracts/ethereum-1/0x728f30fa2f100742c7949d1961804fa8e0b1387d/) | GamerCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | GOVI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | GOVIETHSLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x936dd3...975fb7`](./contracts/ethereum-1/0x936dd3112a9d39af39adda798503d9e7e7975fb7/) | GOVIETHStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | HuckleberryFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x086484...c37786`](./contracts/polygon-137/0x08648471b5aad25feeeb853d6829048f3fc37786/) | HuhToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa7a084...a7b3b4`](./contracts/optimism-10/0xa7a084538de04d808f20c785762934dd5da7b3b4/) | iETHV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/) | iETHV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee3383...5dcc15`](./contracts/arbitrum-42161/0xee338313f022caee84034253174fa562495dcc15/) | iETHV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/) | iMSDV2BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | iMUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b35ce...764a00`](./contracts/ethereum-1/0x7b35ce522cb72e4077baeb96cb923a5529764a00/) | Imx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f144c...8e2ed7`](./contracts/optimism-10/0x1f144cd63d7007945292ebcde14a6df8628e2ed7/) | iTokenV2BLP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c9261...d81740`](./contracts/polygon-137/0x0c92617df0753af1cab2d9cc6a56173970d81740/) | iTokenV2BLP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/) | iTokenV2BLP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | izumiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/) | JonesAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8883e5...73f3f5`](./contracts/arbitrum-42161/0x8883e5bb2920bbe766a2c9e86ad9aa45a573f3f5/) | JonesERC20VaultV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | JonesToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbcb55b...6f3c2d`](./contracts/arbitrum-42161/0xbcb55bdb669e756e982169c19c20c987c26f3c2d/) | JonesWETHVaultV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | Kromatika | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | L2CustomGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | L2ERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | L2GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | L2WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28cd29...8dc654`](./contracts/ethereum-1/0x28cd2990f34db387d011d7cc693a2bcedd8dc654/) | LandsaleNFT_ESTATE | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/) | LockedTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e1f65...53f3c2`](./contracts/ethereum-1/0x6e1f655ee65bc554c4357daae391e2094053f3c2/) | LockingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/) | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb4387d...e1053c`](./contracts/avalanche-43114/0xb4387d93b5a9392f64963cd44389e7d9d2e1053c/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x094bd7...0fddcc`](./contracts/avalanche-43114/0x094bd7b2d99711a1486fb94d4395801c6d0fddcc/) | LQTYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4fbf04...066095`](./contracts/avalanche-43114/0x4fbf0429599460d327bd5f55625e30e4fc066095/) | LUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01ba67...5105bf`](./contracts/ethereum-1/0x01ba67aac7f75f647d94220cc98fb30fcc5105bf/) | Lyra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb9f85...c77d49`](./contracts/ethereum-1/0xcb9f85730f57732fc899fb158164b9ed60c77d49/) | LyraSafetyModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x31d459...96c2d5`](./contracts/moonriver-1285/0x31d45973e7428251a69d767e077dc50bf696c2d5/) | MappingTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69af81...623074`](./contracts/ethereum-1/0x69af81e73a73b40adf4f3d4223cd9b1ece623074/) | MaskToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1afb69...19e647`](./contracts/ethereum-1/0x1afb69dbc9f54d08dab1bd3436f8da1af819e647/) | MELOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | MetavaultRefund | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb94d19...0fd756`](./contracts/arbitrum-42161/0xb94d1959084081c5a11c460012ab522f5a0fd756/) | MillinerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8765b1...203656`](./contracts/ethereum-1/0x8765b1a0eb57ca49be7eacd35b24a574d0203656/) | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38ee8...833d32`](./contracts/ethereum-1/0xf38ee864e36650f8c0abd14622a55bb1f6833d32/) | MSNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | MToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca3753...deaf90`](./contracts/ethereum-1/0xca37530e7c5968627be470081d1c993eb1deaf90/) | OneTokenV1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b484b...c0aee0`](./contracts/ethereum-1/0x3b484b82567a09e2588a13d54d032153f0c0aee0/) | OpenDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd22f83...abc44d`](./contracts/ethereum-1/0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d/) | OpenDAOMembershipNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedd27c...90d7d1`](./contracts/ethereum-1/0xedd27c961ce6f79afc16fd287d934ee31a90d7d1/) | OpenDAOStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | OpThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/) | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeca821...860318`](./contracts/ethereum-1/0xeca82185adce47f39c684352b0439f030f860318/) | Perlin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | Perpetual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | PerpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | Platform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe3ac...ed5447`](./contracts/ethereum-1/0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447/) | Pluto | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6f143...206920`](./contracts/ethereum-1/0xe6f143a0e0a8f24f6294ce3432ea10fad0206920/) | PolkaExToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60842a...6b28b3`](./contracts/ethereum-1/0x60842a6b44cca5eb7685d1135acf69b1336b28b3/) | PPTimedVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4aef2...6390dd`](./contracts/optimism-10/0xf4aef21d906992afadde7a9676e1db4feb6390dd/) | PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | PSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | RamsesClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ReefToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7a3909...fcab71`](./contracts/moonbeam-1284/0x7a3909c7996efe42d425cd932fc44e3840fcab71/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x679c01...7c59e7`](./contracts/optimism-10/0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7/) | SafeBoxBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04b330...8ea126`](./contracts/polygon-137/0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126/) | SafleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa384...23d2f2`](./contracts/ethereum-1/0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2/) | SmallToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x842e89...e0eba5`](./contracts/optimism-10/0x842e89b7a7ef8ce099540b3613264c933ce0eba5/) | SportAMMLiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x43d198...16d98e`](./contracts/optimism-10/0x43d19841d818b2ccc63a8b44ce8c7def8616d98e/) | SportVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7aed63...607522`](./contracts/avalanche-43114/0x7aed63385c03dc8ed2133f705bbb63e8ea607522/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c7c2...36d6ee`](./contracts/ethereum-1/0x37c7c2ae51e968cefb82cff2102727256d36d6ee/) | StakingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4aec98...83f4f8`](./contracts/optimism-10/0x4aec980a0daef4905520a11b99971c7b9583f4f8/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9040e2...2b999d`](./contracts/ethereum-1/0x9040e237c3bf18347bb00957dc22167d0f2b999d/) | Standard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a8b78...f345ab`](./contracts/arbitrum-42161/0x3a8b787f78d775aecfeea15706d4221b40f345ab/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa9218c...be7021`](./contracts/optimism-10/0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021/) | TaleOfThalesNFTs | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc10a0a...85ea40`](./contracts/optimism-10/0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40/) | ThalesAMMLiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a58c0...736c71`](./contracts/ethereum-1/0x7a58c0be72be218b41c608b7fe7c5bb630736c71/) | Tickets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | TomVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | TORN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | TracerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/) | Unipool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa02120...b0e915`](./contracts/ethereum-1/0xa02120696c7b8fe16c09c749e4598819b2b0e915/) | WirexToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | WootradeNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae236...c2c204`](./contracts/ethereum-1/0x9ae236653325b29d5ab4a2c8cb285e8059c2c204/) | xCVP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x363b2d...96bf59`](./contracts/ethereum-1/0x363b2deac84f0100d63c7427335f8350f596bf59/) | xIMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 151 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 56 |

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
