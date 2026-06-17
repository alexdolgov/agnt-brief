# Agentic Audit Brief: Wombat Exchange

⚠️ Lifecycle status: DECLINING - TVL dropped 54.5% over 90 days

## Project Overview

- Project: Wombat Exchange (`wombat-exchange`)
- Website: [https://www.wombat.exchange/](https://www.wombat.exchange/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:48.993Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon, scroll
- Contract surface: 58 unique implementations (262 raw deployments)
- DeFi Llama TVL: $1,545,841.31
- On-chain TVL (included contracts): $817,605.83
- TVL by chain: Bsc $769,782.30 | Arbitrum $35,281.54 | Ethereum $12,541.99

## Project Description

Wombat Exchange is a multi-chain decentralized exchange and cross-chain swap/bridge platform focused on stablecoin and liquid staking token swaps with low slippage using a single-sided liquidity AMM design. It also supports aggregator-style routing for swaps and uses WOM and veWOM governance with emissions and bribe incentives for liquidity direction.

### Architecture

Pools rely on Governance for parameter control and emission rates, while Bribes and Rewarders incentivize liquidity direction and provider participation. Cross-chain functionality is enabled through WormholeAdaptor and CrossChainPool contracts, with Treasury securing protocol funds.

## Contract Surface Quality

- Indexed contracts: 714; live-surface contracts included: 262 (109 live, 153 unknown).
- Excluded by liveness: 255 inactive, 197 singleton, 0 uninitialized.
- Deployment units: 7/96 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 15/47 (31.9%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 2
- Unverified implementations: 11
- Unique implementations: 58
- Raw deployments: 262
- Audits discovered: 11
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $47,823.53
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 10 stale, 0 unknown
- Tier 1 coverage: 10.6% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $47,823.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 10 | 21.3% | 2024-08 |
| Zokyo | Tier 2 | 6 | 12.8% | 2023-09 |
| SlowMist | Tier 1 | 5 | 10.6% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WombatERC20 | token | bsc | n/a | [`0xad6742...b94fb1`](./contracts/bsc-56/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1/) | ✅ Audited |
| Asset | unknown | optimism | n/a | 97 deployments: ethereum `0x3f90a5...3d2d9d`; ethereum `0x5dace2...c7bea7`; ethereum `0x696655...49c7d3`; ethereum `0x752945...601c95`; optimism [`0x0321d1...740f86`](./contracts/optimism-10/0x0321d1d769cc1e81ba21a157992b635363740f86/); optimism `0x124911...ed89d3`; optimism `0x20d7ee...7302f1`; optimism `0x2943f5...72936e`; optimism `0x49db5f...523330`; optimism `0x8f5e6f...3b62de`; optimism `0x96b1b2...69f197`; optimism `0xe314d3...7f9b2c`; optimism `0xe933e2...0f762e`; optimism `0xee9b42...9750cd`; bsc `0x082059...8c9078`; bsc `0x17aded...163500`; bsc `0x184eb7...d96f75`; bsc `0x1f502f...f6723e`; bsc `0x1fa71d...e0d38b`; bsc `0x24a70c...2ba073`; bsc `0x34e109...390b57`; bsc `0x3a29df...de962d`; bsc `0x3ac762...86b490`; bsc `0x3c42e4...78d688`; bsc `0x3c8e74...a05367`; bsc `0x47ab51...c371eb`; bsc `0x4968e2...05d2e6`; bsc `0x4f95fe...b988f7`; bsc `0x591ccb...70ef87`; bsc `0x61e338...345752`; bsc `0x681124...3cd685`; bsc `0x6b6006...a1cc95`; bsc `0x77f645...927391`; bsc `0x791b24...5d7946`; bsc `0x7ff1ae...905e8f`; bsc `0x87073b...c120e4`; bsc `0x8df8b5...67b3ce`; bsc `0x93012a...98abbc`; bsc `0x9d0a46...15dd84`; bsc `0x9f9cea...8fda82`; bsc `0xa393d6...2f1a6e`; bsc `0xa45c0a...ba3800`; bsc `0xa649be...661c1a`; bsc `0xa6ef6c...1603e5`; bsc `0xb43ee2...00b8e2`; bsc `0xb5c936...48bcf8`; bsc `0xc74a9d...1133cb`; bsc `0xcec37c...62279b`; bsc `0xcf4349...efb015`; bsc `0xd55d01...87a521`; bsc `0xeaba29...e68ac2`; bsc `0xf31994...25745a`; bsc `0xf9bdc8...653cac`; base `0x375883...9ac624`; base `0xd05cf2...11e47b`; base `0xe07829...2036d8`; base `0xe2a60c...9dbc67`; arbitrum `0x06228b...2e48b5`; arbitrum `0x08c6e9...d3fd4d`; arbitrum `0x0f959d...6d4d2d`; arbitrum `0x0fa7b7...e73055`; arbitrum `0x191601...ad205b`; arbitrum `0x1bd8ce...a18eeb`; arbitrum `0x278c01...ad9d07`; arbitrum `0x2977b0...66cfd9`; arbitrum `0x35876f...dc6563`; arbitrum `0x4552e8...e65c1f`; arbitrum `0x502a88...abd3a2`; arbitrum `0x51880c...025d0a`; arbitrum `0x59d8dc...350769`; arbitrum `0x5ad0b6...b01266`; arbitrum `0x625b37...01f08b`; arbitrum `0x6add07...bf42c8`; arbitrum `0x6b7c9d...18c7b2`; arbitrum `0x75eaa8...6235fe`; arbitrum `0x7a8ce2...d1a59a`; arbitrum `0x7e2957...7458bc`; arbitrum `0x85cebd...6af003`; arbitrum `0x878004...5ed525`; arbitrum `0x9121af...3c6be2`; arbitrum `0x9a2405...3e975d`; arbitrum `0xb1ad5c...06c3d9`; arbitrum `0xb4beb0...c336fb`; arbitrum `0xb75ed9...aa0fd9`; arbitrum `0xb9e272...f5612b`; arbitrum `0xbcd5e8...1ebd6e`; arbitrum `0xbcf4c3...47a661`; arbitrum `0xc74a9d...1133cb`; arbitrum `0xdce5e1...cf3816`; arbitrum `0xdddc78...900145`; arbitrum `0xe5232c...fb2e43`; arbitrum `0xef9187...df2486`; arbitrum `0xf4b72e...2e4505`; avalanche `0x375883...9ac624`; avalanche `0xd05cf2...11e47b`; scroll `0xe2a60c...9dbc67`; scroll `0xe43c16...553c21` | ✅ Audited |
| GovernedPriceFeed | operational_periphery | arbitrum | n/a | 3 deployments: optimism `0xb98ab9...bc04af`; bsc `0xdd29f2...73fa01`; arbitrum [`0x1d15c4...918797`](./contracts/arbitrum-42161/0x1d15c46e75cc006490c356d29ff357a647918797/) | ✅ Audited |
| MasterWombatV3 | unknown | arbitrum | n/a | [`0xb789d4...6273db`](./contracts/arbitrum-42161/0xb789d438ce654e324f17543512e0706f0e6273db/) | ✅ Audited |
| MultiRewarderPerSec | unknown | arbitrum | n/a | 23 deployments: arbitrum [`0x0e2d70...a78278`](./contracts/arbitrum-42161/0x0e2d70ac977e3435403efb46159315e8aba78278/); arbitrum `0x1242fb...4837d0`; arbitrum `0x1c18aa...ba7dfe`; arbitrum `0x2201ea...e0c138`; arbitrum `0x2980fc...87cee1`; arbitrum `0x49ea55...3eac51`; arbitrum `0x4e811c...dca968`; arbitrum `0x5c85ed...9b9a41`; arbitrum `0x5d5b2b...b9ba76`; arbitrum `0x6001f4...631bb9`; arbitrum `0x6569dd...8940f3`; arbitrum `0x72b46b...ecb2ef`; arbitrum `0x75196f...3f084b`; arbitrum `0x7cb260...17e154`; arbitrum `0x9ad594...22b689`; arbitrum `0xa9a081...cd23cc`; arbitrum `0xdab44b...0335bc`; arbitrum `0xeb87bf...8bc480`; arbitrum `0xf01d86...5ff081`; arbitrum `0xf1db5b...7de18d`; arbitrum `0xf37f78...d88836`; arbitrum `0xf9cdc1...8cfcf6`; arbitrum `0xffc6e8...1932f1` | ✅ Audited |
| PriceFeedAsset | operational_periphery | arbitrum | n/a | 2 deployments: bsc `0xa9a081...cd23cc`; arbitrum [`0x2a2020...346aaa`](./contracts/arbitrum-42161/0x2a20202a6f740200ba188f6d72fa72a08a346aaa/) | ✅ Audited |
| SkimmableAsset | unknown | arbitrum | n/a | 5 deployments: bsc `0x88beb1...b87117`; bsc `0xbd459e...c273b1`; arbitrum [`0x51e073...769606`](./contracts/arbitrum-42161/0x51e073d92b0c226f7b0065909440b18a85769606/); arbitrum `0xbd7568...fa35f0`; arbitrum `0xf9c235...82a274` | ✅ Audited |
| VeWom | unknown | bsc | unit-29764 | [`0x3da628...b5b0cc`](./contracts/bsc-56/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc/) | ✅ Audited |
| VeWom | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4a88c4...df76cd`](./contracts/arbitrum-42161/0x4a88c44b8d9b9f3f2ba4d97236f737cf03df76cd/); arbitrum `0xc06a59...e4f8b2` | ✅ Audited |
| Voter | unknown | arbitrum | n/a | [`0x34e2f9...37f873`](./contracts/arbitrum-42161/0x34e2f923bba206358ece221af73e8d121837f873/) | ✅ Audited |
| WombatRouter | adapter | scroll | n/a | 9 deployments: ethereum `0x6bb82a...a0f919`; optimism `0x35d531...8bdf79`; bsc `0x19609b...a4add7`; base `0x4a88c4...df76cd`; arbitrum `0x479be5...8706a4`; arbitrum `0x9da4ed...ea5725`; arbitrum `0xc4b2f9...580668`; avalanche `0x4a88c4...df76cd`; scroll [`0x010931...f78959`](./contracts/scroll-534352/0x010931d4d82ff3f5ae8bd94e0752570711f78959/) | ✅ Audited |
| WormholeAdaptor | unknown | optimism | unit-29746 | [`0x3ccc0d...ff463e`](./contracts/optimism-10/0x3ccc0dc754e380cda16ef94292f278bbc4ff463e/) | ✅ Audited |
| WormholeAdaptor | unknown | base | unit-29791 | [`0x489833...c95830`](./contracts/base-8453/0x489833311676b566f888119c29bd997dc6c95830/) | ✅ Audited |
| WormholeAdaptor | unknown | arbitrum | unit-29815 | [`0xdaa191...170211`](./contracts/arbitrum-42161/0xdaa1918e5c8ed59c9889adb171f0ef7a09170211/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenImplementation | token | arbitrum | unit-29806 | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | unit-29738 | [`0xc0b314...540cfb`](./contracts/ethereum-1/0xc0b314a8c08637685fc3dafc477b92028c540cfb/) | ⚠️ Unaudited |
| ABnbcAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/); bsc `0xb6d83f...f8855f` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/); arbitrum `0x229028...f3f2c4` | ⚠️ Unaudited |
| BnbxAsset | unknown | bsc | n/a | 3 deployments: bsc [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/); bsc `0x16b372...a509a7`; bsc `0x5d64ed...060f4a` | ⚠️ Unaudited |
| BoostedMasterWombat | unknown | polygon | n/a | [`0x2722fe...3de182`](./contracts/polygon-137/0x2722fe570fa9f7fee1662deee01f5d76003de182/) | ⚠️ Unaudited |
| Bribe | operational_periphery | arbitrum | n/a | 33 deployments: arbitrum [`0x096f99...4d7b24`](./contracts/arbitrum-42161/0x096f99af43b96e87659668a5f9397fec724d7b24/); arbitrum `0x153e4b...b17252`; arbitrum `0x19f477...13d3b3`; arbitrum `0x1edfa9...15bf03`; arbitrum `0x259ccd...1a33ee`; arbitrum `0x2badcc...2020f2`; arbitrum `0x332430...7ae41e`; arbitrum `0x381692...58b54c`; arbitrum `0x4ce537...7a08ba`; arbitrum `0x4f7f9b...b52ac2`; arbitrum `0x5a65cb...d2de8b`; arbitrum `0x5fb522...562f54`; arbitrum `0x6f70c8...6ae695`; arbitrum `0x765fda...075543`; arbitrum `0x7b6041...5b7c64`; arbitrum `0x7c9b17...bc11ad`; arbitrum `0x8b892b...cde060`; arbitrum `0x8cd967...6980de`; arbitrum `0x8e16b6...7f8561`; arbitrum `0x8f5e6f...3b62de`; arbitrum `0x96412c...a3791a`; arbitrum `0x9f3f1e...140655`; arbitrum `0xa1fdb8...692979`; arbitrum `0xa2cbe3...ad2f40`; arbitrum `0xb02035...8d481d`; arbitrum `0xce2bb4...38549a`; arbitrum `0xd2592e...e95835`; arbitrum `0xd58d5e...b163ba`; arbitrum `0xd6d42c...d5d82d`; arbitrum `0xdc82b7...419d5f`; arbitrum `0xe3c747...5b8e17`; arbitrum `0xe933e2...0f762e`; arbitrum `0xf76009...9b35d0` | ⚠️ Unaudited |
| BribeV2 | operational_periphery | base | n/a | 2 deployments: base [`0x1414cd...b4f8f8`](./contracts/base-8453/0x1414cd7f8e384b875bfbbabcacaae592c2b4f8f8/); arbitrum `0xb29ff5...0fb826` | ⚠️ Unaudited |
| DynamicAsset | unknown | bsc | n/a | 18 deployments: bsc [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/); bsc `0x0e99fb...cc5760`; bsc `0x4447de...8a5ac6`; bsc `0x4d41e9...b8e67e`; bsc `0x5a65cb...d2de8b`; bsc `0x5d38a3...91df38`; bsc `0x6c7b40...d378ce`; bsc `0x74f019...092c5b`; bsc `0x90f6f0...2b5201`; bsc `0xd67ede...7e5bb9`; bsc `0xdfde04...b2a9b3`; bsc `0xe0e763...ba83ec`; arbitrum `0x35c462...1bc6ac`; arbitrum `0x468830...350978`; arbitrum `0x696655...49c7d3`; arbitrum `0x909715...f19108`; arbitrum `0xe62880...be798d`; avalanche `0x29eeb2...18ec91` | ⚠️ Unaudited |
| DynamicPoolV2 | core_logic | arbitrum | n/a | [`0x10c13d...bd58bf`](./contracts/arbitrum-42161/0x10c13de7565b6cef1d25941708e8cf2c66bd58bf/) | ⚠️ Unaudited |
| ERC4626Asset | unknown | ethereum | n/a | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-29734 | [`0x5781b4...b353b1`](./contracts/ethereum-1/0x5781b4fe4fadb61ea2483eedd9498388f9b353b1/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-29781 | [`0xc37a89...aadf48`](./contracts/bsc-56/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-29810 | [`0xc37a89...aadf48`](./contracts/arbitrum-42161/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/) | ⚠️ Unaudited |
| jUsdcAsset | unknown | arbitrum | n/a | [`0xde509f...626dae`](./contracts/arbitrum-42161/0xde509fe1555ab907e5c29f987ba0be1ac0626dae/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x423fa1...0628a6`](./contracts/arbitrum-42161/0x423fa1a1b511531edf4d6986da34cd4f070628a6/); arbitrum `0x810287...c67e4a`; arbitrum `0xf2bd16...7099e7` | ⚠️ Unaudited |
| MerkleDistributorAdaptor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x2740f3...7fbe09`](./contracts/arbitrum-42161/0x2740f3ecb90e2afbcff63077ba96412e137fbe09/); arbitrum `0x6b6006...a1cc95` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | scroll | n/a | 2 deployments: scroll [`0x15dcc2...b1a17f`](./contracts/scroll-534352/0x15dcc2da1a73194c9c5bb83ecda86251f0b1a17f/); scroll `0x80f088...7337ce` | ⚠️ Unaudited |
| PoolV2 | core_logic | arbitrum | n/a | [`0x6521a5...86cd7b`](./contracts/arbitrum-42161/0x6521a549834f5e6d253cd2e5f4fbe4048f86cd7b/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 4 deployments: polygon `0x6521a5...86cd7b`; polygon `0xd673f3...c70fb8`; base `0xd673f3...c70fb8`; arbitrum [`0x2722fe...3de182`](./contracts/arbitrum-42161/0x2722fe570fa9f7fee1662deee01f5d76003de182/) | ⚠️ Unaudited |
| rBNBAsset | unknown | bsc | n/a | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | ⚠️ Unaudited |
| sAVAXAsset | unknown | avalanche | n/a | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | ⚠️ Unaudited |
| SnBNBAsset | unknown | bsc | n/a | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | ⚠️ Unaudited |
| StkbnbAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/); bsc `0xc496f4...e0d17f` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | avalanche | unit-29824 | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | ⚠️ Unaudited |
| TokenImplementation | token | optimism | unit-29752 | [`0xd2612b...13a668`](./contracts/optimism-10/0xd2612b256f6f76fea8c6fbca0bf3166d0d13a668/) | ⚠️ Unaudited |
| TokenImplementation | token | base | unit-29795 | [`0xd9541b...235d64`](./contracts/base-8453/0xd9541b08b375d58ae104ec247d7443d2d7235d64/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | n/a | 4 deployments: base [`0x8240aa...f6ac24`](./contracts/base-8453/0x8240aadc2784c881f22a4f2425dfe40a2bf6ac24/); base `0xa1acc6...fa2acf`; arbitrum `0xb5952a...681260`; arbitrum `0xdd29e6...e0cbab` | ⚠️ Unaudited |
| WBETHAsset | unknown | bsc | n/a | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | ⚠️ Unaudited |
| Whitelist | unknown | polygon | n/a | 3 deployments: polygon [`0x5dace2...c7bea7`](./contracts/polygon-137/0x5dace27d0b921b177cd9c6706c6acdeb3ec7bea7/); base `0x9a6578...f2735d`; arbitrum `0x9a6578...f2735d` | ⚠️ Unaudited |
| WstETHAsset | unknown | arbitrum | n/a | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoreV3 | unknown | arbitrum | n/a | 3 deployments: polygon `0xc9bfc3...7e5d1a`; base `0xc6bc78...ba6cd1`; arbitrum [`0xae5e81...5ecbdc`](./contracts/arbitrum-42161/0xae5e8171707d1ef76208700555a32f572a5ecbdc/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoostedMultiRewarder | unknown | arbitrum | n/a | 2 deployments: base `0xe5e368...62e44c`; arbitrum [`0x12d6a5...73bf7e`](./contracts/arbitrum-42161/0x12d6a56e7c6ba8c7299b860428cbd1491d73bf7e/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x2bb4ea...90e29c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcaa5a9...848555` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f0ef2...c50122` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f5fa1...4fc467` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb789d4...6273db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaded24...59efdc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2086dd...c17aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ddfdd...39f37e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x960c66...ace306` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Wombat-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 100 | high |
| [Hacken](https://hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022) | Hacken | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Peckshield](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 32 | high |
| [Peckshield Audit - V3](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 2 | high |
| [Slowmist Audit](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | 7 | high |
| [Zokyo Audit](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WombatV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-WombatV4-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV4-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 10 | high |
| [PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf) | Zokyo | Audit | 2023-06 | stale | Direct | contract_name | 5 | high |
| [zokyo_wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 98 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | TokenImplementation | token | $35,281.54 | Verified native implementation with $35,281.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0b314...540cfb`](./contracts/ethereum-1/0xc0b314a8c08637685fc3dafc477b92028c540cfb/) | TokenImplementation | token | $12,541.99 | Verified native implementation with $12,541.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/) | ABnbcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/) | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2722fe...3de182`](./contracts/polygon-137/0x2722fe570fa9f7fee1662deee01f5d76003de182/) | BoostedMasterWombat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x12d6a5...73bf7e`](./contracts/arbitrum-42161/0x12d6a56e7c6ba8c7299b860428cbd1491d73bf7e/) | BoostedMultiRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096f99...4d7b24`](./contracts/arbitrum-42161/0x096f99af43b96e87659668a5f9397fec724d7b24/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1414cd...b4f8f8`](./contracts/base-8453/0x1414cd7f8e384b875bfbbabcacaae592c2b4f8f8/) | BribeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/) | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10c13d...bd58bf`](./contracts/arbitrum-42161/0x10c13de7565b6cef1d25941708e8cf2c66bd58bf/) | DynamicPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ERC4626Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde509f...626dae`](./contracts/arbitrum-42161/0xde509fe1555ab907e5c29f987ba0be1ac0626dae/) | jUsdcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x423fa1...0628a6`](./contracts/arbitrum-42161/0x423fa1a1b511531edf4d6986da34cd4f070628a6/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2740f3...7fbe09`](./contracts/arbitrum-42161/0x2740f3ecb90e2afbcff63077ba96412e137fbe09/) | MerkleDistributorAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6521a5...86cd7b`](./contracts/arbitrum-42161/0x6521a549834f5e6d253cd2e5f4fbe4048f86cd7b/) | PoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | rBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | sAVAXAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | SnBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/) | StkbnbAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | WBETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5dace2...c7bea7`](./contracts/polygon-137/0x5dace27d0b921b177cd9c6706c6acdeb3ec7bea7/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | WstETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=440

Zero-match audit list:

- [3005] Hacken
- [3010] Zokyo Audit
- [3013] PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
