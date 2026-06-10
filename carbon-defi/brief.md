# Agentic Audit Brief: Carbon Defi

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: active (Tier 0, 69.6% below peak)
- Generated: 2026-06-10T20:59:01.272Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: blast, celo, ethereum, sei
- Contract surface: 158 unique implementations (338 raw deployments)
- DeFi Llama TVL: $2,922,950.10
- On-chain TVL (included contracts): $5,121,040.07
- TVL by chain: Ethereum $5,121,040.07

## Project Description

Carbon DeFi is an on-chain automated trading protocol and DEX that lets users create custom limit orders, range orders, and recurring or grid-like trading strategies using programmable liquidity curves. Cross-chain Vortex bridge contracts, where present, should be treated as ancillary infrastructure rather than the core protocol value proposition.

### Architecture

The Carbon Defi family provides core trading logic and is extended by Blast contracts for cross-chain bridging via VortexAcrossBridge. Both families share CarbonVortex and proxy infrastructure, while Example tokens are used across all families as trading assets.

## Audit Coverage Summary

- Verified implementations audited: 17/55 (30.9%)
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 3
- Unverified implementations: 103
- Unique implementations: 158
- Raw deployments: 338
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 0 unknown
- Tier 1 coverage: 27.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 15 | 27.3% | 2023-04 |
| PeckShield | Tier 2 | 4 | 7.3% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutoCompoundingRewards | unknown | ethereum | [`0x036f8b...6f6cdc`](./contracts/ethereum-1/0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc/) | ✅ Audited |
| BancorNetwork | unknown | ethereum | 12 deployments: ethereum [`0x00bfa0...ca8e63`](./contracts/ethereum-1/0x00bfa047ec1c5e849779107900afd948efca8e63/); ethereum `0x2f1475...1638a3`; ethereum `0x3006eb...2cfc75`; ethereum `0x568e7c...3e5e07`; ethereum `0x751a3e...a10255`; ethereum `0x835ebb...fc45c1`; ethereum `0x955a85...59e1e6`; ethereum `0xa21e1c...d8f4ea`; ethereum `0xe0cb1b...ffa4fb`; ethereum `0xe2a277...dcd1f7`; ethereum `0xeef417...9dd4fb`; ethereum `0xf20b9e...39126a` | ✅ Audited |
| BancorPortal | unknown | ethereum | 4 deployments: ethereum [`0x9f292c...e133d5`](./contracts/ethereum-1/0x9f292ccb69ff9a0644475c7bc8d4651039e133d5/); ethereum `0xe18bd2...1f88e2`; ethereum `0xe7e533...d274d4`; ethereum `0xf5de92...3d2b0f` | ✅ Audited |
| BNTPool | core_logic | ethereum | 4 deployments: ethereum [`0x02651e...95eaca`](./contracts/ethereum-1/0x02651e355d26f3506c1e644ba393fdd9ac95eaca/); ethereum `0x9810e2...c07bd8`; ethereum `0xcc06b5...22af65`; ethereum `0xfb07a6...b1ffa3` | ✅ Audited |
| CarbonController | core_logic | ethereum | 13 deployments: ethereum [`0x16b9b6...79d72d`](./contracts/ethereum-1/0x16b9b6f8d2077db1032531f0e1f6019d2679d72d/); ethereum `0x1a3122...c218cf`; ethereum `0x1e0804...32bf2c`; ethereum `0x21f02a...c086ee`; ethereum `0x5ec3b3...4e5b20`; ethereum `0x6db6ee...8b12c1`; ethereum `0xd59bca...063ff8`; sei `0x8c05ea...ade636`; sei `0x8ce318...6ab749`; sei `0xe48166...1f1087`; celo `0x51aa24...e36317`; celo `0x661987...29ed3a`; celo `0xbbaff3...c5b496` | ✅ Audited |
| CarbonPOL | unknown | ethereum | 2 deployments: ethereum [`0x779b3b...4ab123`](./contracts/ethereum-1/0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123/); ethereum `0xd06146...2bef46` | ✅ Audited |
| CarbonVortex | unknown | blast | 21 deployments: ethereum `0x2c0fa8...923502`; ethereum `0x55effb...f472ad`; ethereum `0x727170...f0fb9e`; ethereum `0xba7d15...3c8f84`; ethereum `0xd053dc...d79801`; ethereum `0xd241a7...be23ca`; sei `0x4bbd9f...1b08a2`; sei `0x571520...eaf933`; sei `0x924ad5...cb5502`; sei `0xc95a9c...f977b0`; celo `0x31548b...6b2db0`; celo `0x37a65d...7eec10`; celo `0x6cd7f6...bc2fdc`; celo `0x8b6631...e1f3a0`; celo `0xa15e32...01e562`; celo `0xd9d89e...764857`; celo `0xfe19cb...b54d4d`; blast [`0x0f5409...a9bdaa`](./contracts/blast-81457/0x0f54099d787e26c90c487625b4de819ec5a9bdaa/); blast `0x30dd96...af39f0`; blast `0x59f210...4c84ea`; blast `0x5e994a...8dbf9a` | ✅ Audited |
| ExternalProtectionVault | core_logic | ethereum | 2 deployments: ethereum [`0xea4d66...61c27c`](./contracts/ethereum-1/0xea4d665a290c9171ebcd1fca4068e55bb461c27c/); ethereum `0xfd3166...2cad57` | ✅ Audited |
| ExternalRewardsVault | core_logic | ethereum | 2 deployments: ethereum [`0x2a2a2b...a631e1`](./contracts/ethereum-1/0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1/); ethereum `0x30cc28...c23b1e` | ✅ Audited |
| NetworkSettings | unknown | ethereum | 3 deployments: ethereum [`0x51a6d0...1cebd1`](./contracts/ethereum-1/0x51a6d03b156af044bda570cf35a919db851cebd1/); ethereum `0x83e181...09b14f`; ethereum `0x88d031...1e48ca` | ✅ Audited |
| PendingWithdrawals | operational_periphery | ethereum | 5 deployments: ethereum [`0x0074f8...145f4a`](./contracts/ethereum-1/0x0074f83a6a78555cc784504358028fed2b145f4a/); ethereum `0x5f8347...bb6acb`; ethereum `0x7f0506...bb92ce`; ethereum `0x857eb0...ba9b8a`; ethereum `0xf59fd6...96958f` | ✅ Audited |
| PoolMigrator | core_logic | ethereum | 6 deployments: ethereum [`0x1a1b00...66ee69`](./contracts/ethereum-1/0x1a1b00c006793341f4dbfe62fdf9991f4366ee69/); ethereum `0x330ee7...4d198d`; ethereum `0x59340f...8a017d`; ethereum `0x85aa62...1d951d`; ethereum `0x97cec0...e4a191`; ethereum `0xc1c7ca...846219` | ✅ Audited |
| PoolTokenFactory | registry | ethereum | 2 deployments: ethereum [`0x9e9129...8d9d5f`](./contracts/ethereum-1/0x9e912953db31fe933bda43374208e967058d9d5f/); ethereum `0xab4a0b...1f7108` | ✅ Audited |
| StandardRewards | unknown | ethereum | 5 deployments: ethereum [`0x9c0b29...78320d`](./contracts/ethereum-1/0x9c0b2923db14b8625e84e8ad04764f992b78320d/); ethereum `0xa2647a...8a1947`; ethereum `0xb0b958...00f372`; ethereum `0xdfe331...881f0d`; ethereum `0xe9f3bb...7a4b53` | ✅ Audited |
| TransparentUpgradeableProxyImmutable | proxy | ethereum | [`0x41eeba...9488cb`](./contracts/ethereum-1/0x41eeba3355d7d6ff628b7982f3f9d055c39488cb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BancorArbitrage | unknown | ethereum | 12 deployments: ethereum [`0x08da38...65461c`](./contracts/ethereum-1/0x08da389a1400e3699f58843484b0513aa065461c/); ethereum `0x2dd6b6...da75a7`; ethereum `0x2fde9e...85d1b2`; ethereum `0x45d2e2...5a7ac8`; ethereum `0x577552...ed5df7`; ethereum `0x6dbe10...74e912`; ethereum `0x770abf...d3c343`; ethereum `0xb04e45...1a1ee2`; ethereum `0xbd19f6...5d7e51`; ethereum `0xd80a40...1b0ada`; ethereum `0xdbcb8a...9af34a`; ethereum `0xe9a8e0...a0902d` | ⚠️ Unaudited |
| BancorBuyer | unknown | ethereum | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | ⚠️ Unaudited |
| BancorChanger | unknown | ethereum | 2 deployments: ethereum [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/); ethereum `0xca83bd...629ff4` | ⚠️ Unaudited |
| BancorConverter | unknown | ethereum | 14 deployments: ethereum [`0x40a36b...252e16`](./contracts/ethereum-1/0x40a36b6d7f956f80d07e401a5f620c3a4f252e16/); ethereum `0x578f3c...b3e2d8`; ethereum `0x62c37c...caa769`; ethereum `0x6427b5...df5f28`; ethereum `0x665f41...256f0e`; ethereum `0x803530...a42c59`; ethereum `0xa3a89d...ff5bad`; ethereum `0xabf66d...83f5e8`; ethereum `0xb626a5...1d1c78`; ethereum `0xc4628a...144ade`; ethereum `0xc6725a...b9db29`; ethereum `0xd8c2ca...fbdde9`; ethereum `0xdc2f2b...d30109`; ethereum `0xf8b211...58ce35` | ⚠️ Unaudited |
| BancorConverterExtensions | adapter | ethereum | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | ⚠️ Unaudited |
| BancorConverterFactory | registry | ethereum | 4 deployments: ethereum [`0x0a8079...f9b236`](./contracts/ethereum-1/0x0a8079ce1fd9b1ae682d9f1b709609a05bf9b236/); ethereum `0x383668...3175cf`; ethereum `0x5ed8c0...bb802b`; ethereum `0xa96a30...1f7448` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | ethereum | 3 deployments: ethereum [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/); ethereum `0xe727b1...a3429f`; ethereum `0xfae75b...984bd5` | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | 6 deployments: ethereum [`0x4eeb95...c30cc5`](./contracts/ethereum-1/0x4eeb95a68c7382217ccdf9d4d1c89f3986c30cc5/); ethereum `0x6f7df4...da4fc7`; ethereum `0x8d10c0...395b98`; ethereum `0xd288fb...1a9603`; ethereum `0xe6095e...96c58e`; ethereum `0xffd2de...454742` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | ethereum | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | ⚠️ Unaudited |
| BancorGasPriceLimit | operational_periphery | ethereum | 2 deployments: ethereum [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/); ethereum `0xafb06c...b99590` | ⚠️ Unaudited |
| BancorNetworkInfo | periphery | ethereum | 2 deployments: ethereum [`0xc6e7e7...7cac13`](./contracts/ethereum-1/0xc6e7e708f46a23ee9590b503f03ba3e2c67cac13/); ethereum `0xfd47c7...66ae7b` | ⚠️ Unaudited |
| BancorPriceFloor | operational_periphery | ethereum | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | ⚠️ Unaudited |
| BancorQuickConverter | unknown | ethereum | 2 deployments: ethereum [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/); ethereum `0xf87a7e...dd38b1` | ⚠️ Unaudited |
| BancorV1Migration | operational_periphery | ethereum | [`0xd761d5...c3cc96`](./contracts/ethereum-1/0xd761d538240e23b465c9c08236d781029dc3cc96/) | ⚠️ Unaudited |
| CarbonBatcher | periphery | ethereum | 6 deployments: ethereum [`0x0199f3...4b7d4e`](./contracts/ethereum-1/0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e/); ethereum `0x70ab82...25842a`; sei `0x30dd96...af39f0`; sei `0xe375dd...2f952e`; celo `0x482b27...7845e1`; celo `0xa97787...0718f7` | ⚠️ Unaudited |
| ContractFeatures | unknown | ethereum | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ⚠️ Unaudited |
| ContractRegistry | registry | ethereum | 3 deployments: ethereum [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/); ethereum `0xa3bf8e...718e6a`; ethereum `0xd19970...8738b3` | ⚠️ Unaudited |
| CrowdsaleController | governance | ethereum | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | ⚠️ Unaudited |
| EtherToken | token | ethereum | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| FeeBurner | unknown | ethereum | [`0x4610fc...195445`](./contracts/ethereum-1/0x4610fc898f94ac0b6bfe2b836fd59f6d03195445/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | 2 deployments: ethereum [`0x13432a...1f7abc`](./contracts/ethereum-1/0x13432a43f2779c9c64fe9e436c2576e5231f7abc/); ethereum `0x514910...f986ca` | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | 4 deployments: ethereum [`0x14d074...8ccfd5`](./contracts/ethereum-1/0x14d0746086361f9d177583f36e1517f1618ccfd5/); ethereum `0x633088...2b311a`; ethereum `0x843bd7...65d8e6`; ethereum `0x85cbbb...9001e5` | ⚠️ Unaudited |
| Multicall | periphery | sei | [`0x51aa24...e36317`](./contracts/sei-1329/0x51aa24a9230e62cfaf259c47de3133578ce36317/) | ⚠️ Unaudited |
| Multicall3 | periphery | sei | [`0xe033be...dfe1cf`](./contracts/sei-1329/0xe033bed7cae4114af84be1e9f1ca7dea07dfe1cf/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | 23 deployments: ethereum [`0x005a4d...b19826`](./contracts/ethereum-1/0x005a4d6edd48ef4cf1354cb4b6f6bc6dc2b19826/); ethereum `0x177db9...d2830b`; ethereum `0x240f3f...fab65e`; ethereum `0x31b636...e9723b`; ethereum `0x4f8af8...cbbeac`; ethereum `0x51a3ac...3875a6`; ethereum `0x589411...4e4658`; ethereum `0x6d3bf5...4c8146`; ethereum `0x79e7cc...10dd26`; ethereum `0x7af136...0393ee`; ethereum `0x84af4a...55df19`; ethereum `0x8c4b31...3aecfb`; ethereum `0x9d0357...7f3010`; ethereum `0xad0483...d24036`; ethereum `0xb43c50...737a88`; ethereum `0xb7f230...cf341c`; ethereum `0xc39e56...86051d`; ethereum `0xc7a965...070acc`; ethereum `0xc9eaa9...dc0f31`; ethereum `0xcc1aac...f9db75`; ethereum `0xd046ee...36e177`; ethereum `0xd498c8...06f5b8`; ethereum `0xe2b1b8...d329cd` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | proxy | blast | [`0xa15e32...01e562`](./contracts/blast-81457/0xa15e3295465439a361dbcac79c1dbce6cd01e562/) | ⚠️ Unaudited |
| PoolCollection | core_logic | ethereum | 12 deployments: ethereum [`0x05e29f...c15bb8`](./contracts/ethereum-1/0x05e29f07b9710368a1d5658750e9b4b478c15bb8/); ethereum `0x395ed9...9d664b`; ethereum `0x5ce512...13a3d0`; ethereum `0x6f9124...9cb714`; ethereum `0xad3339...b813a7`; ethereum `0xb67d56...564c6c`; ethereum `0xb8d803...61da69`; ethereum `0xd2a572...d51558`; ethereum `0xd982e0...f642b4`; ethereum `0xde1b3c...d883e4`; ethereum `0xec9596...f261b3`; ethereum `0xf506b9...8f7ec7` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| StandardPoolConverterFactory | registry | ethereum | [`0xbc4a79...8126e6`](./contracts/ethereum-1/0xbc4a79787d3dafcb781a1e4ff914204db38126e6/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | sei | 3 deployments: sei [`0x31548b...6b2db0`](./contracts/sei-1329/0x31548b11d685a358de7f52978e099e04116b2db0/); sei `0x63e353...c97525`; sei `0x8b6631...e1f3a0` | ⚠️ Unaudited |
| VortexAcrossBridge | operational_periphery | blast | 2 deployments: blast [`0x31548b...6b2db0`](./contracts/blast-81457/0x31548b11d685a358de7f52978e099e04116b2db0/); blast `0x63e353...c97525` | ⚠️ Unaudited |
| VortexBurner | unknown | ethereum | [`0x8843f6...976748`](./contracts/ethereum-1/0x8843f65f11b2367bb05a6e120c44780088976748/) | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | sei | [`0x57cf0c...87ea05`](./contracts/sei-1329/0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05/) | ⚠️ Unaudited |
| VortexWormholeBridge | operational_periphery | celo | [`0x0f9df7...0f68e1`](./contracts/celo-42220/0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1/) | ⚠️ Unaudited |
| WCELO | unknown | celo | [`0x773b75...b05119`](./contracts/celo-42220/0x773b75cfb146bd5d1095fa9d6d45637f02b05119/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MasterVault | core_logic | ethereum | 3 deployments: ethereum [`0x649765...2bc373`](./contracts/ethereum-1/0x649765821d9f64198c905ec0b2b037a4a52bc373/); ethereum `0x8e303d...d6e760`; ethereum `0xf3b685...f10144` | ✅ Audited (bytecode match) |
| Voucher | unknown | ethereum | 8 deployments: ethereum [`0x3660f0...8f554e`](./contracts/ethereum-1/0x3660f04b79751e31128f6378eac70807e38f554e/); ethereum `0x460cb0...109d0a`; ethereum `0xc537e8...ea45e1`; sei `0xa4682a...eaf8d5`; sei `0xb0d399...cb4c26`; sei `0xc7dd38...c5c55c`; celo `0x5bca33...b2482e`; celo `0x5e994a...8dbf9a` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | 18 deployments: ethereum [`0x059d3d...2cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x12388c...d118cb`; ethereum `0x642879...2f0034`; ethereum `0x8c05ea...ade636`; sei `0x45d2e2...5a7ac8`; sei `0x7fc12a...e17f06`; sei `0xcd8c6d...357772`; sei `0xdf1c3b...76b332`; sei `0xfea28d...fc23b5`; celo `0x0f5409...a9bdaa`; celo `0x210760...abbe57`; celo `0x59f210...4c84ea`; celo `0xb2a2f1...3c9d2a`; celo `0xd0b82e...3bb921`; blast `0x759db9...5d2352`; blast `0x8b6631...e1f3a0`; blast `0x8c05ea...ade636`; blast `0xe6d513...733611` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x30dd96d6b693f78730c7c48b6849d9c44caf39f0) | proxy | celo | `0x8c05ea...ade636` | ❓ Unverified |
| Proxy (impl: 0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1) | proxy | ethereum | `0x0f5409...a9bdaa` | ❓ Unverified |
| Proxy (impl: 0x5715203b16f15d7349cb1e3537365e9664eaf933) | proxy | blast | `0xc7dd38...c5c55c` | ❓ Unverified |
| Proxy (impl: 0x70ff80d8d811ada518e409f07b817b50d38dd1cf) | proxy | celo | `0x75af20...e8a03e` | ❓ Unverified |
| Proxy (impl: 0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d) | proxy | celo | `0x20216f...b31271` | ❓ Unverified |
| Proxy (impl: 0x95fa9ba30f6389762ca0e0d34538c2d925af5f23) | proxy | sei | `0xb2a2f1...3c9d2a` | ❓ Unverified |
| Proxy (impl: 0xa977879684eece2015ae879dc120c8a1c00718f7) | proxy | blast | `0x4a0c4e...ad4130` | ❓ Unverified |
| Proxy (impl: 0xafa374dfab26d61b789b69cfad7bb481ef558502) | proxy | celo | `0x0677bf...e3ea3d` | ❓ Unverified |
| Proxy (impl: 0xb0d39990e1c38b50d0b7f6911525535fbacb4c26) | proxy | celo | `0xc7dd38...c5c55c` | ❓ Unverified |
| Proxy (impl: 0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496) | proxy | sei | `0x661987...29ed3a` | ❓ Unverified |
| Proxy (impl: 0xf067013fefe758f179689bebefce8d2fac1f9829) | proxy | sei | `0xc56eb3...b03fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x103607...25c031` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x107b45...fa2993` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x136593...412b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x176707...9dde6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1b5674...7263d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20bced...f4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3aafb6...874d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e67d2...0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4205a8...3d1924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5560d0...e3a99e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b828a...997453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62d883...f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x676b91...ce95c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68cd59...3fb810` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68e4f8...4ecd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e0dfd...ef7755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x753985...49001c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a84b0...07b19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d634a...d3e639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x945ac6...287105` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x947766...892d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97b155...64b103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a1deb...a2296d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc56eb3...b03fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6b2f9...953997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca0907...6e9142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcce7a4...5ba322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd54fa...7467db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd72cf0...559ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc7040...9646be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe19cb...b54d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfeda93...a64ef1` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x177dbf...36947e` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x253f62...1fdd10` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x3e67d2...0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x3f086f...623435` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x482b27...7845e1` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x5530eb...40b274` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x5e994a...8dbf9a` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x653e98...f232c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x6db97c...b71424` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x773b75...b05119` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x95fa9b...af5f23` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9fac0f...2af35c` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xaf5219...76e32c` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xbbaff3...c5b496` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xf06701...1f9829` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x17e078...f32376` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2063a1...fecfd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x27d59c...faf112` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x30dd96...af39f0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x351b73...bf66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3cbb34...bb9d0c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x45d2e2...5a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x45f7ea...ad8cf3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4a0c4e...ad4130` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x653e98...f232c5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6845b8...d23f20` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x70ff80...8dd1cf` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x759db9...5d2352` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x77e925...f3c20d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8ce318...6ab749` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9ceb88...a52341` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9fac0f...2af35c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa4682a...eaf8d5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xafa374...558502` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb0d399...cb4c26` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbca03b...e11669` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbdfc7f...f5662f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdf1c3b...76b332` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe48166...1f1087` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xee21c0...131d9a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf7c7d7...5709a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x37a65d...7eec10` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x45d2e2...5a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x51aa24...e36317` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x571520...eaf933` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x661987...29ed3a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7fc12a...e17f06` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x94a63a...375a83` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa97787...0718f7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb0d399...cb4c26` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdf1c3b...76b332` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe033be...dfe1cf` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfe19cb...b54d4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [July 31, 2024 audit report done by PeckShield team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | aging | Direct | contract_name | 21 | high |
| [May 29, 2024 audit report done by PeckShield team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | 36 | high |
| [April 10, 2023 audit report done by ChainSecurity team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 34 | high |
| [April 4, 2023 audit report done by PeckShield team](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 20 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/) | BancorChanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/) | BancorConverterUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd761d5...c3cc96`](./contracts/ethereum-1/0xd761d538240e23b465c9c08236d781029dc3cc96/) | BancorV1Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ContractFeatures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/) | ContractRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | CrowdsaleController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/) | EtherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4610fc...195445`](./contracts/ethereum-1/0x4610fc898f94ac0b6bfe2b836fd59f6d03195445/) | FeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05e29f...c15bb8`](./contracts/ethereum-1/0x05e29f07b9710368a1d5658750e9b4b478c15bb8/) | PoolCollection | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | StakingRewardsClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc4a79...8126e6`](./contracts/ethereum-1/0xbc4a79787d3dafcb781a1e4ff914204db38126e6/) | StandardPoolConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x31548b...6b2db0`](./contracts/blast-81457/0x31548b11d685a358de7f52978e099e04116b2db0/) | VortexAcrossBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8843f6...976748`](./contracts/ethereum-1/0x8843f65f11b2367bb05a6e120c44780088976748/) | VortexBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 10 |
| standard_library | 9 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=111

Fork inheritance lineage and inherited audits are included when available.
