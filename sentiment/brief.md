# Agentic Audit Brief: Sentiment

⚠️ Lifecycle status: DEAD - TVL dropped 44.8% over 90 days

## Project Overview

- Project: Sentiment (`sentiment`)
- Website: [https://app.sentiment.xyz?refCode=dcd82abec7](https://app.sentiment.xyz?refCode=dcd82abec7)
- Lifecycle: dead (Tier 1, sunsetting)
- Generated: 2026-06-11T02:38:07.578Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-79ef
- Chains: arbitrum
- Contract surface: 297 unique implementations (368 raw deployments)
- DeFi Llama TVL: $1,203,461.26
- On-chain TVL (included contracts): $64.31
- TVL by chain: Arbitrum $64.31

## Project Description

Sentiment is/was a leveraged lending protocol that enabled users to deposit assets into lending pools and borrow against them using isolated risk engines and account management. The protocol should not be described as Arbitrum-only unless the brief is explicitly limited to Arbitrum contract coverage; current DefiLlama data indicates TVL is mainly on Hyperliquid L1, and the app states the protocol has wound down.

### Architecture

The protocol uses a single product family where AccountManager creates user accounts that interact with LToken/LEther lending pools, governed by Registry and RiskEngine for risk parameters. Proxy and Beacon contracts serve as shared infrastructure for upgradeability across all core contracts.

## Audit Coverage Summary

- Verified implementations audited: 22/30 (73.3%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 267
- Unique implementations: 297
- Raw deployments: 368
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 4 stale, 0 unknown
- Tier 1 coverage: 46.7% (Sherlock)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 18 | 60.0% | 2022-07 |
| Sherlock | Tier 1 | 14 | 46.7% | 2025-03 |
| Zobront | Tier 2 | 3 | 10.0% | 2023-03 |
| Guardian | Tier 2 | 2 | 6.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LToken | token | arbitrum | 13 deployments: arbitrum [`0x0c47b3...c88938`](./contracts/arbitrum-42161/0x0c47b375937e1c9c6981f54920bf8fddd1c88938/); arbitrum `0x0fada6...aedd2e`; arbitrum `0x0fb61b...1fa336`; arbitrum `0x1daefa...760b8c`; arbitrum `0x2ea961...3e2a5f`; arbitrum `0x3a2035...1a7ee2`; arbitrum `0x3c34c6...04f7c0`; arbitrum `0x6b328f...5b7dc6`; arbitrum `0x7d7a9b...db1463`; arbitrum `0xc45231...f2014c`; arbitrum `0xc7f14c...e37ef8`; arbitrum `0xcd44cc...7e2d85`; arbitrum `0xff9cfc...382ead` | ✅ Audited |
| Account | core_logic | arbitrum | 2 deployments: arbitrum [`0x2ebbc9...fc5e29`](./contracts/arbitrum-42161/0x2ebbc910b201dd91c7ee74bdca161cab90fc5e29/); arbitrum `0xc3991f...0c5463` | ✅ Audited |
| AccountFactory | registry | arbitrum | 2 deployments: arbitrum [`0x70ade2...433282`](./contracts/arbitrum-42161/0x70ade2e34fdda195e39c0c00652e18d7c1433282/); arbitrum `0xce7df5...db9814` | ✅ Audited |
| AccountManager | governance | arbitrum | 11 deployments: arbitrum [`0x0d36ac...c2b3fd`](./contracts/arbitrum-42161/0x0d36ac7bed397aeb5e7df5ea5fe37054cbc2b3fd/); arbitrum `0x23ad96...1c2b6b`; arbitrum `0x3281c1...1402e5`; arbitrum `0x62c5aa...826403`; arbitrum `0x67d27d...964c77`; arbitrum `0x94509e...aabd2e`; arbitrum `0xaa9a13...50a929`; arbitrum `0xb08501...d8c093`; arbitrum `0xea3ca0...51a787`; arbitrum `0xf9b45d...7a20b1`; arbitrum `0xfd4541...22dfb3` | ✅ Audited |
| ATokenOracle | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x6cb48a...a7d8bb`](./contracts/arbitrum-42161/0x6cb48ade65fe10fd55231b661adbb00ab4a7d8bb/); arbitrum `0x9fa118...bbffc6`; arbitrum `0xbd50d4...8b4729` | ✅ Audited |
| Beacon | registry | arbitrum | 2 deployments: arbitrum [`0x44b65b...15285a`](./contracts/arbitrum-42161/0x44b65bd350f23cae00d4fbc508c920ae8415285a/); arbitrum `0xb7ba33...122eee` | ✅ Audited |
| ControllerFacade | governance | arbitrum | 2 deployments: arbitrum [`0x3009b0...fd80e3`](./contracts/arbitrum-42161/0x3009b02c2712de5698e4684984153475f6fd80e3/); arbitrum `0xe71287...15f065` | ✅ Audited |
| DefaultRateModel | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x59be04...4658c5`](./contracts/arbitrum-42161/0x59be042b19ec606ef105802c659f13fbf14658c5/); arbitrum `0x5a9eec...0dc3ab` | ✅ Audited |
| ERC4626Oracle | operational_periphery | arbitrum | [`0x35a1d1...431459`](./contracts/arbitrum-42161/0x35a1d15ef07aa3e22917e3c9af3de17fdd431459/) | ✅ Audited |
| LEther | unknown | arbitrum | 3 deployments: arbitrum [`0x331815...137ef4`](./contracts/arbitrum-42161/0x331815d6b8b2d5d21439dec842a3412ea8137ef4/); arbitrum `0x55238c...57dc7b`; arbitrum `0xcb3703...0b8228` | ✅ Audited |
| LinearRateModel | operational_periphery | arbitrum | 11 deployments: arbitrum [`0x17dac1...73ea98`](./contracts/arbitrum-42161/0x17dac14281e166c7b4584166fedc2ac68173ea98/); arbitrum `0x1bf8a3...1859fe`; arbitrum `0x56640f...8dbf2b`; arbitrum `0x5af5e9...6b0fa6`; arbitrum `0x6cbeca...9caafb`; arbitrum `0x860350...577597`; arbitrum `0x8f7a7c...9292c9`; arbitrum `0x91cd72...e1c7ad`; arbitrum `0xc3c683...26d2ff`; arbitrum `0xccd7a2...6f04ec`; arbitrum `0xf61421...b1515d` | ✅ Audited |
| OracleFacade | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x08f81e...33efb3`](./contracts/arbitrum-42161/0x08f81e1637230d25b4ea6d4a69d74373e433efb3/); arbitrum `0x183145...28d6f0`; arbitrum `0xc79c23...0894a6` | ✅ Audited |
| Proxy | proxy | arbitrum | 7 deployments: arbitrum [`0x0ddb1e...b1299b`](./contracts/arbitrum-42161/0x0ddb1ea478f8ef0e22c7706d2903a41e94b1299b/); arbitrum `0x212022...ccc121`; arbitrum `0x2e9963...784c40`; arbitrum `0x37e6a0...363b67`; arbitrum `0x4c8e16...e4623e`; arbitrum `0xb19021...776bec`; arbitrum `0xe520c4...607db2` | ✅ Audited |
| Registry | registry | arbitrum | 6 deployments: arbitrum [`0x17b07c...49679b`](./contracts/arbitrum-42161/0x17b07cfbab33c0024040e7c299f8048f4a49679b/); arbitrum `0x82467d...c5316b`; arbitrum `0x98144a...f6173b`; arbitrum `0xd8fabf...b2e4a6`; arbitrum `0xe22d24...2b2991`; arbitrum `0xfcc45f...334e30` | ✅ Audited |
| RiskEngine | unknown | arbitrum | 4 deployments: arbitrum [`0x488d27...2249bf`](./contracts/arbitrum-42161/0x488d275da177795e4ce5eb93d4c37474412249bf/); arbitrum `0x532964...fdf658`; arbitrum `0x622ead...041fb3`; arbitrum `0xc0ac97...c078da` | ✅ Audited |
| StableSwap2PoolController | core_logic | arbitrum | 2 deployments: arbitrum [`0x926fe4...db2f05`](./contracts/arbitrum-42161/0x926fe4d703a244ee1cadd1b6c6ca097e09db2f05/); arbitrum `0xfcc9ea...f7e9d8` | ✅ Audited |
| UniV2Controller | governance | arbitrum | 2 deployments: arbitrum [`0x2a3d67...c2ef18`](./contracts/arbitrum-42161/0x2a3d679a1152b6b6dca437e014ca8fda72c2ef18/); arbitrum `0x6df0b4...ee7bfd` | ✅ Audited |
| UniV2LpOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x64af46...cbc3b5`](./contracts/arbitrum-42161/0x64af464ad1fc652865dc09e92b1bcf5854cbc3b5/); arbitrum `0x692076...bc045c` | ✅ Audited |
| UniV3Controller | governance | arbitrum | 2 deployments: arbitrum [`0x4f0da4...1f9edb`](./contracts/arbitrum-42161/0x4f0da4c622c07d126c87fd3fa9b93bf5721f9edb/); arbitrum `0x7db785...0114fe` | ✅ Audited |
| WETHController | governance | arbitrum | 2 deployments: arbitrum [`0x44e4fe...295c35`](./contracts/arbitrum-42161/0x44e4fe7067f4628caa7427ad88100269d2295c35/); arbitrum `0x697cfb...5381cc` | ✅ Audited |
| WETHOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x0f8011...d7e830`](./contracts/arbitrum-42161/0x0f8011d2575c05dfd526c1aea7bfa8f082d7e830/); arbitrum `0xa1b547...3b0616` | ✅ Audited |
| ZeroOracle | operational_periphery | arbitrum | [`0xb86f62...732792`](./contracts/arbitrum-42161/0xb86f62b86abc37c97507e7e6320e5895c1732792/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BaseController | governance | arbitrum | 2 deployments: arbitrum [`0x947e74...4ed278`](./contracts/arbitrum-42161/0x947e74f019a47ecccb8d81e802ec92d1364ed278/); arbitrum `0x94a04c...7a31fb` | ⚠️ Unaudited |
| GLPOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0xbb1313...e47975`](./contracts/arbitrum-42161/0xbb1313c315c24824030f56953551ed4467e47975/); arbitrum `0xbba8e7...27d4c9` | ⚠️ Unaudited |
| RewardPoolController | core_logic | arbitrum | [`0x2ab248...49d628`](./contracts/arbitrum-42161/0x2ab248c6a51261ef86bb99fa0c210b097349d628/) | ⚠️ Unaudited |
| RewardRouterController | adapter | arbitrum | 2 deployments: arbitrum [`0x48b7cb...c5b9af`](./contracts/arbitrum-42161/0x48b7cb0489f0aed4e0d48f34b38851cf54c5b9af/); arbitrum `0x62a9e2...020c84` | ⚠️ Unaudited |
| RewardRouterV2Controller | adapter | arbitrum | 3 deployments: arbitrum [`0x3b3ac0...161bf4`](./contracts/arbitrum-42161/0x3b3ac0dc06f2c13cc1ec87d838baca3eab161bf4/); arbitrum `0x3e1c3e...3550ce`; arbitrum `0x4d0e7b...68bbc9` | ⚠️ Unaudited |
| TransformController | governance | arbitrum | [`0xfac885...4e825f`](./contracts/arbitrum-42161/0xfac8859851677074a3f029c44a3cb88ed94e825f/) | ⚠️ Unaudited |
| UniV3TWAPOracle | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x436687...fbbdde`](./contracts/arbitrum-42161/0x4366871d32ad6cf5b649cb5721f0aee18dfbbdde/); arbitrum `0x542eff...2c61f2`; arbitrum `0x964bd7...467451` | ⚠️ Unaudited |
| WSTETHOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x1dd8ce...02845b`](./contracts/arbitrum-42161/0x1dd8ce83b8c0da4d180b372458d342f55c02845b/); arbitrum `0x22bcf7...ea7898` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (267)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x10dabc126abb2f22b550781aa5a38110c19d93e5) | proxy | arbitrum | `0x76b9a4...5e426b` | ❓ Unverified |
| Proxy (impl: 0x11255fe8bda8bb41d258713daee2e55607a78984) | proxy | arbitrum | `0x7eac93...1e3549` | ❓ Unverified |
| Proxy (impl: 0x11255fe8bda8bb41d258713daee2e55607a78984) | proxy | arbitrum | `0x93428d...88e45e` | ❓ Unverified |
| Proxy (impl: 0x11255fe8bda8bb41d258713daee2e55607a78984) | proxy | arbitrum | `0x9f93a3...63fd7f` | ❓ Unverified |
| Proxy (impl: 0x1e0d1b5f3a8876e68fb16cdc00f72797844843e8) | proxy | arbitrum | `0x548057...e36b7c` | ❓ Unverified |
| Proxy (impl: 0x1e0d1b5f3a8876e68fb16cdc00f72797844843e8) | proxy | arbitrum | `0xca12d8...317f47` | ❓ Unverified |
| Proxy (impl: 0x20ce093d09c561faae72d378ae7cb3ae0bdf1fbe) | proxy | arbitrum | `0x0954fa...7a30f6` | ❓ Unverified |
| Proxy (impl: 0x2b808675f65723aa9954de4532ae211d13439905) | proxy | arbitrum | `0xfcec11...badc2e` | ❓ Unverified |
| Proxy (impl: 0x41f90984e81a0f412d4f0365a9adec31fca5809e) | proxy | arbitrum | `0x96414d...987471` | ❓ Unverified |
| Proxy (impl: 0x483d3e23cd7e227528a4459a1e9b88f13020a698) | proxy | arbitrum | `0x467f91...81183e` | ❓ Unverified |
| Proxy (impl: 0x598b6101554fdccd200117b46e320b06853d5493) | proxy | arbitrum | `0x2b3d7a...f777f0` | ❓ Unverified |
| Proxy (impl: 0x598b6101554fdccd200117b46e320b06853d5493) | proxy | arbitrum | `0x6e45fa...6785b6` | ❓ Unverified |
| Proxy (impl: 0x59fa4b50c555d8d8a462d86cbf9b27b79e0010f9) | proxy | arbitrum | `0x516445...4bf273` | ❓ Unverified |
| Proxy (impl: 0x5a4da549dcf423dfb518686efdeb31da9c77f738) | proxy | arbitrum | `0x63db0b...9ef923` | ❓ Unverified |
| Proxy (impl: 0x6ddae7dd1d0dc574c850f677efe12fd5418c7e4a) | proxy | arbitrum | `0x487cdc...594471` | ❓ Unverified |
| Proxy (impl: 0x742e9a0c20071e5e7ac9b4abc0d34c02358b33d5) | proxy | arbitrum | `0x338d81...15de76` | ❓ Unverified |
| Proxy (impl: 0x787ae0889bd07441b019c949d8d2002d58976ae2) | proxy | arbitrum | `0x962cb3...3fb58a` | ❓ Unverified |
| Proxy (impl: 0x87e94db7eb49232a761a6f63e4b70c2c4a005b13) | proxy | arbitrum | `0xcd44e2...5008c7` | ❓ Unverified |
| Proxy (impl: 0x9925d7eef59d9df5790c9b8de137942cd9f878b5) | proxy | arbitrum | `0x0326e6...fdf9d7` | ❓ Unverified |
| Proxy (impl: 0x9d6dad33567c7d514aad6dcdb287696a9a4e65a1) | proxy | arbitrum | `0x3c0e2c...9935f1` | ❓ Unverified |
| Proxy (impl: 0xae6029ea7e1c2f660b660f4b6af322b07f6c578d) | proxy | arbitrum | `0x26cf52...d29bb2` | ❓ Unverified |
| Proxy (impl: 0xc7ad6871853de2dbb019377320d2e23091a1a8be) | proxy | arbitrum | `0xb57cfe...1b7927` | ❓ Unverified |
| Proxy (impl: 0xe3f3f8d6d14b9df861c761f4c855cfc8dc1db43d) | proxy | arbitrum | `0xf0a67b...fadb42` | ❓ Unverified |
| Proxy (impl: 0xf0e83f84a513c45d1e1797f268771230f35d5df4) | proxy | arbitrum | `0x0d1a26...062f36` | ❓ Unverified |
| Proxy (impl: 0xf619e6c4d2aa8c96741bae1e6f7da9a9cdbdd7ff) | proxy | arbitrum | `0xe47a28...b76099` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x017929...4b449a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01f10f...c31937` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x02ad30...792526` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x02df47...e29ca4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x045bcf...a7b3be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05cb17...743cae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05dccd...7206b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x089a8f...32c74f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09eeee...0bd263` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e99aa...8c7108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f2d41...dc1ada` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0fd0c9...2b40a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1061c3...6e5d28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x10dabc...9d93e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11255f...a78984` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x132f7e...f93d58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x134b57...536140` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x14fe8f...21f5dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x15f2f5...bf915c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1689b7...16eb73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x16fd65...b90fbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17bf1a...d71861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17cef7...8f5568` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x183d5d...1bd773` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x18f35b...43fb6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1aa39a...519320` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b128e...2b9585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d3f6f...b6bbc0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d70d5...79abce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e0d1b...4843e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2076c8...a83892` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2099a1...3958a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20ce09...df1fbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x213aab...3fed5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x219946...621ecc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x21b264...91d2f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x22f689...eb52ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24f545...220c2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x251ff5...1b50f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2a857d...2534eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b6554...41ee16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b6c77...6e1d75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b8086...439905` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c99b7...98c4db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2d6bb7...0fb51e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e65f9...8b2e8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3050e6...6ff50c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x306874...404b2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x31ca61...218349` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x31eed7...d62266` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x33df88...f89b6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3770d4...e4bb8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x394ca6...9eaaef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x39c6cb...6bd2ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b193b...a868a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b7846...9cd67e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3c3b0b...86f9b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3cd2b0...779013` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d9560...86b5ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x400ba2...d7e726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x409876...58aa53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x40c1c9...dbbc84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41f909...a5809e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x466c75...00d6f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x47da07...6416ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x483d3e...20a698` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48a19f...a5481f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48e26b...1b67f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4a98b8...f38a9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4b3fa3...624fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4ba2f9...e1978e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d709f...b6901b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e969d...c89946` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f02e9...878a3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f063c...85b0ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50435e...516541` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50b367...5e88fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50e602...370f91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5138a3...976a0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x530ab5...a800cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x54c065...8c9b69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5587df...3ceb40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x55f2b1...5e8456` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x561adb...79cca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5639d2...491dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57bd04...7329b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x58c4f4...070069` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x598b61...3d5493` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x599b50...d648c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x59fa4b...0010f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a4da5...77f738` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a89f4...d7561d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a91b7...1d9afc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5afffc...1e0e81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5b15c5...8d8578` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5baabf...a05c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c3ffb...931298` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d2911...b576b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d706f...7687ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e2788...49e1b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e9f3c...53c923` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x61faf1...ddcf8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x635100...d5e789` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x642da2...740ed7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64e5df...11f14c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66d517...6a1913` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67c2be...dbe3a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68b5e2...dcb921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b2aee...2c5585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ca2f0...c148a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6d891a...17d53a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6da1dd...d0bd35` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ddae7...8c7e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f321c...1b3222` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70173d...3ea3f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x710bc2...933ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x711cc1...277c18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7170d7...00e5b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72cc67...c3d7a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x742e9a...8b33d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x743e1d...f16f8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7469d5...a79ca1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x74d2dd...29385f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7557f1...a262bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7675f3...4a9ade` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x777383...070ee9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x781ef6...aa2e52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x787ae0...976ae2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x790b04...031032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7af2c4...8d020a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b5a88...f08265` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7e5136...061f01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x817f1f...1e39cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x83f076...639696` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x84558e...353b2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x84d714...e7a4af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x85c956...d19dce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x862c0f...ce2e20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x875a19...7a025b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x87c3cc...535362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x87e94d...005b13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x881903...440489` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8b8d56...e1af28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c1364...f3f7a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c5657...e3e849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8cd61e...7a9fa5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d48d5...576e27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d5fd9...644128` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8e9ba9...f52731` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x912a91...abeb95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x947d0a...590c92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x981334...eafd44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x981c19...ae6d18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x98d483...d9b969` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x98d930...ebbb82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x98df07...528b36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9925d7...f878b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a0175...fe1530` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9c83c3...e0bc27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9d6dad...4e65a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f3203...d80f95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ffb36...7d6abb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa05385...a12da3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa27269...dfa0aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa34d60...82e492` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa45dbf...e8b8c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa46f89...e05350` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4d41a...f9cf4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa7622e...3f5e2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa98864...95192e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xab832f...0b1f23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae2d5a...154cab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae6029...6c578d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae71d9...b4d93a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb07fab...a537a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb1dae1...736d72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb29f1d...c3d703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3a108...8c2643` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3cb3d...69b434` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5083c...300dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb60ae6...452bf8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6a956...9b0cc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb790cc...732a93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb9941b...160595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba5b76...674e3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbad0f9...24246b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbb7558...6f1679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbba607...33bf3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbbb88d...6a065b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe6b7f...022d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbfdf22...5bb05a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc14583...93c508` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc21da7...d96ae0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2658f...39be7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc3e7ae...54f82b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc41df1...d9244a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc76dfa...c833be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc7ad68...a1a8be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc955d3...0c56bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc96d94...2c6c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc9f6ee...237ffb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xca2049...70870d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcaf2b7...ac2473` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcba827...e2515b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xccdd33...677f23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd65e9...dc1610` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf07fc...b681b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf5c18...bd64a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcfe887...e2d863` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd0819e...45ba8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd0aeea...2a75f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1b5ad...c7f902` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd539e0...608075` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda384d...a3b812` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda48d9...85b2c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc2c6a...fa6dee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdfd967...39ec14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdfe9b0...ff111a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe1d115...77bf7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2da7f...eff62b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe301ca...785bf8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe31257...c5f8de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3f3f8...1db43d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe48468...ac5ecd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe5acba...a3e352` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe64e29...319892` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe83d5e...3fffc3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe89676...ec7cce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xea75e1...61390a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeba92a...bb50eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec57a8...ec59aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec90b7...f0c161` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeea2fa...a0b022` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0e83f...5d5df4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf350fd...c52035` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf44d2f...1f3ed9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf9916a...34c247` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfc4572...4909db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd0aec...2deeeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfe7823...7afffc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff39f3...f4c7ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff7500...49e829` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sentiment_Protocol_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Protocol_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 52 | high |
| [Sentiment_Oracle_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Oracle_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 18 | high |
| [2022.10.18 - Final - Sentiment Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | contract_name | 55 | high |
| [sentiment_v2_guardian.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_guardian.pdf) | Guardian | Audit | 2024-08 | aging | Direct | contract_name | 15 | high |
| [sentiment_v2_sherlock.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | 4 | high |
| [sentiment_v2_zobront.md](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_zobront.md) | Zobront | Audit | 2023-03 | stale | Direct | contract_name | 16 | high |
| [sentiment_v2_sherlock_2.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_2.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [sentiment_v2_sherlock_3.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_3.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x947e74...4ed278`](./contracts/arbitrum-42161/0x947e74f019a47ecccb8d81e802ec92d1364ed278/) | BaseController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb1313...e47975`](./contracts/arbitrum-42161/0xbb1313c315c24824030f56953551ed4467e47975/) | GLPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ab248...49d628`](./contracts/arbitrum-42161/0x2ab248c6a51261ef86bb99fa0c210b097349d628/) | RewardPoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfac885...4e825f`](./contracts/arbitrum-42161/0xfac8859851677074a3f029c44a3cb88ed94e825f/) | TransformController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dd8ce...02845b`](./contracts/arbitrum-42161/0x1dd8ce83b8c0da4d180b372458d342f55c02845b/) | WSTETHOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 94 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 200 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=160

Zero-match audit list:

- [3177] sentiment_v2_sherlock_2.pdf
- [3178] sentiment_v2_sherlock_3.pdf

Fork inheritance lineage and inherited audits are included when available.
