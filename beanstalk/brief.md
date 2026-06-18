# Agentic Audit Brief: Beanstalk

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Beanstalk (`beanstalk`)
- Website: [https://bean.money](https://bean.money)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T06:13:56.616Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: arbitrum, ethereum
- Contract surface: 44 unique implementations (359 raw deployments)
- DeFi Llama TVL: $5,149,626.11
- On-chain TVL (included contracts): $142,549,167.87
- TVL by chain: Arbitrum $142,549,167.87

## Project Description

Beanstalk is a decentralized algorithmic stablecoin protocol that issues the BEAN stablecoin, using a credit-based model and a decentralized price oracle to maintain its peg. It also includes the Basin Exchange, a decentralized exchange for swapping stablecoins and other assets.

### Architecture

Beanstalk relies on Oracles for price data to maintain the BEAN peg and facilitate Basin Exchange swaps. Non-Bean Assets provide the external tokens used in Basin Exchange pools, while BeaNFTs serve as ecosystem incentives, all governed by shared multisig infrastructure.

## Contract Surface Quality

- Indexed contracts: 1228; live-surface contracts included: 359 (347 live, 12 unknown).
- Excluded by liveness: 845 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 11/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/39 (7.7%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 44
- Raw deployments: 359
- Audits discovered: 9
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/beanstalk/information))
- ASD (verified + unaudited TVL): $142,549,167.87
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 2 unknown
- Tier 1 coverage: 5.1% (Code4rena, Cyfrin, Immunefi)
- Note: This protocol is classified as [declining]. ASD of $142,549,167.87 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 2.6% | 2023-07 |
| Cyfrin | Tier 1 | 1 | 2.6% | 2023-06 |
| Halborn | Tier 2 | 1 | 2.6% | 2023-04 |
| Immunefi | Tier 1 | 1 | 2.6% | n/a |
| Omniscia | Tier 2 | 1 | 2.6% | n/a |
| unknown | Tier 2 | 1 | 2.6% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bean | unknown | ethereum | n/a | [`0xdc59ac...52e5db`](./contracts/ethereum-1/0xdc59ac4fefa32293a95889dc396682858d52e5db/) | ✅ Audited |
| Pipeline | unknown | arbitrum | n/a | [`0xb1be00...4c91b0`](./contracts/arbitrum-42161/0xb1be000644bd25996b0d9c2f7a6d6ba3954c91b0/) | ✅ Audited |
| Well | unknown | arbitrum | n/a | 2 deployments: ethereum `0xbea0e1...872bad`; arbitrum [`0xba5106...62d1a9`](./contracts/arbitrum-42161/0xba5106bd62b342afacb93f1078fe60177a62d1a9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-35491 (2 proxies) | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0x357510...cf4dbe` | ⚠️ Unaudited |
| BeanstalkERC20 | token | arbitrum | n/a | 5 deployments: ethereum `0x1bea3c...13716d`; ethereum `0xbea000...d1efab`; arbitrum [`0x1bea05...d27543`](./contracts/arbitrum-42161/0x1bea054dddbca12889e07b3e076f511bf1d27543/); arbitrum `0x1bea05...66d788`; arbitrum `0xbea000...7812e4` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | arbitrum | n/a | 168 deployments: arbitrum [`0x01dd3c...587edd`](./contracts/arbitrum-42161/0x01dd3cf6118069db13a2d64d7e1a09fecd587edd/); arbitrum `0x02f6bc...942182`; arbitrum `0x033809...b823df`; arbitrum `0x0526ed...0d6d13`; arbitrum `0x08fbe2...dcdff1`; arbitrum `0x0ae175...7f3809`; arbitrum `0x0c9679...64e143`; arbitrum `0x0ca784...79e732`; arbitrum `0x0d390b...3384d2`; arbitrum `0x0e9b5c...ac5a17`; arbitrum `0x10e138...764493`; arbitrum `0x126b9a...f6f849`; arbitrum `0x17298e...b91d20`; arbitrum `0x17b844...9d35c4`; arbitrum `0x182308...92c799`; arbitrum `0x1893d4...84688c`; arbitrum `0x1b3224...6ffccf`; arbitrum `0x1b9749...41e432`; arbitrum `0x1cde96...c6a642`; arbitrum `0x1d416d...555d6e`; arbitrum `0x1d9fab...f05f2d`; arbitrum `0x1f4abf...88e5ff`; arbitrum `0x1fa1c3...a637ae`; arbitrum `0x244ea8...e598cf`; arbitrum `0x2829f6...fd104c`; arbitrum `0x294622...bbe32c`; arbitrum `0x2cde70...006854`; arbitrum `0x2fb0a0...56fd0f`; arbitrum `0x31aa84...0a7905`; arbitrum `0x34ea4f...40a4ae`; arbitrum `0x3607e4...5e2ca7`; arbitrum `0x37b300...889090`; arbitrum `0x382f3c...350a11`; arbitrum `0x39fdd7...417880`; arbitrum `0x3a00c8...50e754`; arbitrum `0x3aa743...057a04`; arbitrum `0x3c6abd...2cc904`; arbitrum `0x3ed9d8...568c4e`; arbitrum `0x412304...803de9`; arbitrum `0x42081a...b48ec2`; arbitrum `0x4258e5...4902d7`; arbitrum `0x43c570...070062`; arbitrum `0x44d3ab...502051`; arbitrum `0x453e2d...c8e0e3`; arbitrum `0x457afc...7c13e4`; arbitrum `0x46de66...c121a3`; arbitrum `0x476de9...2af349`; arbitrum `0x47c0e8...352778`; arbitrum `0x48fd0a...25a115`; arbitrum `0x496000...4e6349`; arbitrum `0x4b05c0...9182a3`; arbitrum `0x4c594a...bdb1e4`; arbitrum `0x4dacfb...52b2f9`; arbitrum `0x507c9a...427670`; arbitrum `0x526584...b62fc5`; arbitrum `0x56bb7f...7d2e48`; arbitrum `0x575f36...b95bd7`; arbitrum `0x58dbe5...c51ab9`; arbitrum `0x5a0f82...7b6e23`; arbitrum `0x5ab0b1...b4297e`; arbitrum `0x5d750c...6adc84`; arbitrum `0x5dda1e...3dd378`; arbitrum `0x5ddc9a...480dbe`; arbitrum `0x5e4c65...1f6d62`; arbitrum `0x5eb7ca...44770c`; arbitrum `0x60ce55...41723a`; arbitrum `0x626fd7...6231a7`; arbitrum `0x660e7a...c936f5`; arbitrum `0x66b074...89fd25`; arbitrum `0x67db13...2597ac`; arbitrum `0x682c4f...3b8e73`; arbitrum `0x69c17b...c08535`; arbitrum `0x69ff5b...33301d`; arbitrum `0x6b2271...3f3c54`; arbitrum `0x6b3730...7fe654`; arbitrum `0x6d77f5...52a4ea`; arbitrum `0x700019...5bbbf9`; arbitrum `0x75dd10...0b991c`; arbitrum `0x778356...e0cd36`; arbitrum `0x77d76e...7ce0aa`; arbitrum `0x7aaee6...6ff871`; arbitrum `0x7af187...539f47`; arbitrum `0x7b5fdb...e6ab87`; arbitrum `0x7b9845...9a06b8`; arbitrum `0x7d5ca9...401dc3`; arbitrum `0x807eb1...88c511`; arbitrum `0x815d58...fd0c65`; arbitrum `0x8548a9...6e2393`; arbitrum `0x8abe00...545c82`; arbitrum `0x8afe9b...4df5d6`; arbitrum `0x8b48e1...9f1a8a`; arbitrum `0x920d90...01da54`; arbitrum `0x92e6b8...4dd939`; arbitrum `0x92f0de...17d8a6`; arbitrum `0x931405...379eb3`; arbitrum `0x942d00...f9b882`; arbitrum `0x94cd88...635eb7`; arbitrum `0x9b8ddc...a2c9cc`; arbitrum `0x9bda3a...4a967b`; arbitrum `0x9d75b7...706af9`; arbitrum `0xa0a624...f69e66`; arbitrum `0xa3403c...b2cfb7`; arbitrum `0xa44bcd...3f74ec`; arbitrum `0xa45989...d848eb`; arbitrum `0xa64344...eed599`; arbitrum `0xab5745...4095a7`; arbitrum `0xac812c...b31a8e`; arbitrum `0xad81bc...93c8b1`; arbitrum `0xaeb20e...37bc83`; arbitrum `0xafaebe...2458c1`; arbitrum `0xb20bd2...eb649b`; arbitrum `0xb39bfa...f6deb0`; arbitrum `0xb4a1f9...d27cda`; arbitrum `0xb4c75e...c08882`; arbitrum `0xb98512...134a76`; arbitrum `0xbc78d5...c1b61e`; arbitrum `0xbc81b4...07a481`; arbitrum `0xbf1cd5...7e8885`; arbitrum `0xbfc294...2bc09b`; arbitrum `0xbff434...5c0d49`; arbitrum `0xc0552c...628f2a`; arbitrum `0xc195ba...4ba72c`; arbitrum `0xc38d1a...ddc4d7`; arbitrum `0xc38d44...5c6a57`; arbitrum `0xc3a633...480285`; arbitrum `0xc59d26...339d18`; arbitrum `0xc67fe6...54cf09`; arbitrum `0xc952f3...707d66`; arbitrum `0xcad222...595820`; arbitrum `0xcb35fe...65ace4`; arbitrum `0xcb6501...df6847`; arbitrum `0xcd11b9...05233a`; arbitrum `0xce2adf...ffd80a`; arbitrum `0xcfcaa2...c15e84`; arbitrum `0xd05ad7...639c2a`; arbitrum `0xd0b5f6...67c177`; arbitrum `0xd542b9...5e194c`; arbitrum `0xd896f8...d38c21`; arbitrum `0xd9fcb2...b67240`; arbitrum `0xdb4bdd...6bd27e`; arbitrum `0xddb296...8384fe`; arbitrum `0xdeccf9...855df0`; arbitrum `0xe3e8e2...0784b1`; arbitrum `0xe4a492...b077ef`; arbitrum `0xe5b5be...ed83a2`; arbitrum `0xe60f94...aacab2`; arbitrum `0xe7bef4...7b8538`; arbitrum `0xe7f278...a1dd24`; arbitrum `0xe83770...c6ebef`; arbitrum `0xea84b5...3130d5`; arbitrum `0xea9b4d...54cc47`; arbitrum `0xec2e90...3180b2`; arbitrum `0xec3dfe...5a2ca9`; arbitrum `0xed85d7...a63896`; arbitrum `0xef1b41...7d58c3`; arbitrum `0xefc506...4f2b71`; arbitrum `0xf0e892...c3bd22`; arbitrum `0xf56e6c...014b1f`; arbitrum `0xf613f9...f03bcf`; arbitrum `0xf6bacc...4baedc`; arbitrum `0xf8abb3...13eeaa`; arbitrum `0xf94463...296255`; arbitrum `0xfaedf2...e633d6`; arbitrum `0xfc06bb...7a43b9`; arbitrum `0xfc66e4...f6f83d`; arbitrum `0xfe2c83...cede2c`; arbitrum `0xfe45c3...5678e1`; arbitrum `0xff5247...ab75e1` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-35493 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Aquifer | unknown | arbitrum | n/a | [`0xba51aa...e97521`](./contracts/arbitrum-42161/0xba51aaaa8c2f911ae672e783707ceb2da6e97521/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-35504 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BeaNFT | token | ethereum | n/a | [`0xa755a6...722a79`](./contracts/ethereum-1/0xa755a670aaf1fecef2bea56115e65e03f7722a79/) | ⚠️ Unaudited |
| CallProxy | unknown | arbitrum | n/a | [`0x031828...1dcf87`](./contracts/arbitrum-42161/0x031828231b6829208c1b2aad4ecfea2c011dcf87/) | ⚠️ Unaudited |
| CommitStore | unknown | arbitrum | n/a | 22 deployments: arbitrum [`0x060331...b47d20`](./contracts/arbitrum-42161/0x060331feda35691e54876d957b4f9e3b8cb47d20/); arbitrum `0x0ce42c...c7abc5`; arbitrum `0x254c44...9a8258`; arbitrum `0x26291e...968167`; arbitrum `0x46679c...a33623`; arbitrum `0x5d8851...60b8d4`; arbitrum `0x6642e6...2ee269`; arbitrum `0x6c3fd6...23cfc4`; arbitrum `0x78b15a...d82aa2`; arbitrum `0x80a765...132c5e`; arbitrum `0x86be76...8f43e3`; arbitrum `0x8a7110...7ae1bb`; arbitrum `0x8f3071...12d348`; arbitrum `0x8f60c3...640aaf`; arbitrum `0x99c520...062a92`; arbitrum `0xa0e9d7...b9c695`; arbitrum `0xa2eee4...dbe1dd`; arbitrum `0xb2fed9...bda537`; arbitrum `0xbc44b5...689b48`; arbitrum `0xc04d83...aeed1d`; arbitrum `0xe19e97...b7a0a9`; arbitrum `0xf171df...92a1d2` | ⚠️ Unaudited |
| ConstantProduct2 | unknown | arbitrum | n/a | [`0xba1500...1b72b4`](./contracts/arbitrum-42161/0xba15000450bf6d48ec50bd6327a9403e401b72b4/) | ⚠️ Unaudited |
| Depot | unknown | arbitrum | n/a | [`0xdeb0f0...4120c3`](./contracts/arbitrum-42161/0xdeb0f082ed3b0efe9257aea9f2e6e974aa4120c3/) | ⚠️ Unaudited |
| DualAggregator | unknown | arbitrum | n/a | 21 deployments: arbitrum [`0x01065f...57c71e`](./contracts/arbitrum-42161/0x01065f4726bbbce2ef1a4bebc04af3209357c71e/); arbitrum `0x0309c0...b79e6a`; arbitrum `0x0b6eac...6bd29b`; arbitrum `0x12b891...7c676a`; arbitrum `0x16c0e7...8f7a4e`; arbitrum `0x333399...e3ef27`; arbitrum `0x355e12...f5c829`; arbitrum `0x41f14a...3d2bcd`; arbitrum `0x4c76f0...531e9e`; arbitrum `0x626194...c1e618`; arbitrum `0x674a6d...7d21bc`; arbitrum `0x739910...c20848`; arbitrum `0xa0e9a6...bd2f99`; arbitrum `0xa1c0bd...fb80d3`; arbitrum `0xa686fa...9fbac1`; arbitrum `0xa821e9...aa6f93`; arbitrum `0xb72359...297c20`; arbitrum `0xc1720a...1879b1`; arbitrum `0xe68beb...2631e3`; arbitrum `0xe7c522...19aeb0`; arbitrum `0xfbe1c9...da2918` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | n/a | 78 deployments: arbitrum [`0x021126...df8055`](./contracts/arbitrum-42161/0x021126143d0b6e20bb69befcc860e7e523df8055/); arbitrum `0x022578...f3e7be`; arbitrum `0x02e892...148e40`; arbitrum `0x06047d...29a44c`; arbitrum `0x066ba4...74004f`; arbitrum `0x0c6118...bdb79e`; arbitrum `0x0c9979...7b5bb3`; arbitrum `0x0d0fad...79b571`; arbitrum `0x0d2057...86d739`; arbitrum `0x103c63...4b29a5`; arbitrum `0x158b22...68d659`; arbitrum `0x16f384...847b1e`; arbitrum `0x1b47b4...a4fb8e`; arbitrum `0x1c8a38...e5c788`; arbitrum `0x21e1a0...4d1875`; arbitrum `0x229a93...c48071`; arbitrum `0x2c1c5e...dd59e6`; arbitrum `0x326fa2...55590b`; arbitrum `0x339a66...6e5183`; arbitrum `0x368b55...3fcf37`; arbitrum `0x3815dd...d6d0e0`; arbitrum `0x3861d8...89a2da`; arbitrum `0x3b9c34...d0c762`; arbitrum `0x3d50d6...781736`; arbitrum `0x3d9145...2b5034`; arbitrum `0x3eabf6...c24064`; arbitrum `0x413b21...da9476`; arbitrum `0x47c38c...bb033c`; arbitrum `0x4a85b1...ceb289`; arbitrum `0x4b13dd...3ae848`; arbitrum `0x54a82b...7a92ff`; arbitrum `0x552c92...472be3`; arbitrum `0x5fb8e2...cb53fe`; arbitrum `0x639fe6...3ba612`; arbitrum `0x670bd6...e7c23f`; arbitrum `0x671ee9...aa8ea6`; arbitrum `0x6aa147...e67939`; arbitrum `0x6ab841...e45537`; arbitrum `0x6bc7ff...88ccdc`; arbitrum `0x6ce185...3708e9`; arbitrum `0x703389...e509c4`; arbitrum `0x726a96...86a002`; arbitrum `0x72b424...f15943`; arbitrum `0x730a28...c1a67d`; arbitrum `0x7537f8...1c7a66`; arbitrum `0x78aabb...afed7a`; arbitrum `0x7a8a9a...a4eed1`; arbitrum `0x7c7dff...92a595`; arbitrum `0x7c8e67...6691ad`; arbitrum `0x86e53c...5812cb`; arbitrum `0x86e5d5...12ea3f`; arbitrum `0x926eed...b6302f`; arbitrum `0x9c9170...da2720`; arbitrum `0xa631de...9ee28d`; arbitrum `0xa84101...1c87c8`; arbitrum `0xae0d73...db49c1`; arbitrum `0xae8b41...f3e4b4`; arbitrum `0xb2ae7b...6b801f`; arbitrum `0xb39082...1a268c`; arbitrum `0xb471a2...8c6e1f`; arbitrum `0xb49b8b...fe0bd4`; arbitrum `0xba55b9...8006d7`; arbitrum `0xc5c8e7...e9ecfb`; arbitrum `0xd01d5e...b11b57`; arbitrum `0xd0e922...c3f7af`; arbitrum `0xdb0c64...5a620a`; arbitrum `0xdbff91...44d531`; arbitrum `0xdc1a8f...66fa23`; arbitrum `0xde4af8...399134`; arbitrum `0xe46a44...60aa3a`; arbitrum `0xe4c892...39e2fd`; arbitrum `0xe4d040...515e3f`; arbitrum `0xe4df63...9be921`; arbitrum `0xf04bf0...335ab5`; arbitrum `0xf3d6b0...de8c78`; arbitrum `0xf97eea...ce04c7`; arbitrum `0xfa74da...2d242c`; arbitrum `0xff6b58...dc30f6` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | arbitrum | n/a | 21 deployments: arbitrum [`0x017513...2c029e`](./contracts/arbitrum-42161/0x017513a8ca43992938e7fa72033ee29a0e2c029e/); arbitrum `0x052cf0...97502f`; arbitrum `0x0c4865...918929`; arbitrum `0x16b970...79f663`; arbitrum `0x27a971...72a4a3`; arbitrum `0x3f1341...682f32`; arbitrum `0x7c04e5...353275`; arbitrum `0x858d69...365cde`; arbitrum `0x91e46c...7dec31`; arbitrum `0x950950...0bc376`; arbitrum `0xb62178...43ac4b`; arbitrum `0xbda25a...be2c8a`; arbitrum `0xc16578...ece3f9`; arbitrum `0xcabc2d...ef9b6f`; arbitrum `0xcb1dbb...d5785b`; arbitrum `0xcceee1...359c4b`; arbitrum `0xd85f0a...97514b`; arbitrum `0xe62f2a...36b634`; arbitrum `0xee5387...f37e20`; arbitrum `0xf88166...a41e68`; arbitrum `0xf9b99c...962236` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x122f05...e5a809`](./contracts/arbitrum-42161/0x122f05f49e90508f089ee8d0d868d1a4f3e5a809/); arbitrum `0x1fe0f6...3bf1e4` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-35494 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-35503 | [`0xdd5b31...daaf69`](./contracts/arbitrum-42161/0xdd5b31e73db1c566ca09e1f1f74df34913daaf69/) | ⚠️ Unaudited |
| Junction | unknown | arbitrum | n/a | [`0x5a5a5a...08e2cd`](./contracts/arbitrum-42161/0x5a5a5ade4c9713172a5228703213d4d39608e2cd/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | arbitrum | n/a | [`0xa51e97...e7b793`](./contracts/arbitrum-42161/0xa51e97926d25091d3b9fe888113946d5aae7b793/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | arbitrum | n/a | [`0x387e40...978653`](./contracts/arbitrum-42161/0x387e40ed22ee3396288c874411b00c48f6978653/) | ⚠️ Unaudited |
| LSDChainlinkOracle | operational_periphery | arbitrum | n/a | [`0xcccccc...b35626`](./contracts/arbitrum-42161/0xcccccc35b53c8a16404ae414afa31f30a5b35626/) | ⚠️ Unaudited |
| ManyChainMultiSig | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x69b798...29a8c5`](./contracts/arbitrum-42161/0x69b798425cfff3ae962f6118fd6d6646c829a8c5/); arbitrum `0xf4c257...3e67cb` | ⚠️ Unaudited |
| MultiFlowPump | unknown | arbitrum | n/a | [`0xba1500...a95b13`](./contracts/arbitrum-42161/0xba150002660bbca20675d1c1535cd76c98a95b13/) | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | arbitrum | n/a | [`0x3971cf...c19a40`](./contracts/arbitrum-42161/0x3971cfef12c4cc6ed14d65b39c9ec6c740c19a40/) | ⚠️ Unaudited |
| RBACTimelock | governance | arbitrum | n/a | [`0x8a8977...1f8c7f`](./contracts/arbitrum-42161/0x8a89770722c84b60ce02989aedb22ac4791f8c7f/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | arbitrum | n/a | [`0x818792...9071d7`](./contracts/arbitrum-42161/0x818792c958ac33c01c58d5026cec91a86e9071d7/) | ⚠️ Unaudited |
| RMN | unknown | arbitrum | n/a | [`0xc2c5e2...260744`](./contracts/arbitrum-42161/0xc2c5e22a2d9715ed5c5bcc4d8eff5966cf260744/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x141fa0...17dde8`](./contracts/arbitrum-42161/0x141fa059441e0ca23ce184b6a78bafd2a517dde8/); arbitrum `0x333402...b3869c` | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | unit-35502 | [`0xd39a31...e04ca9`](./contracts/arbitrum-42161/0xd39a31e5f23d90371d61a976cacb728842e04ca9/) | ⚠️ Unaudited |
| SafeProxy | unknown | arbitrum | n/a | [`0x390b02...a2fbc1`](./contracts/arbitrum-42161/0x390b023d316c2e92dd96a9bcc7fae8db12a2fbc1/) | ⚠️ Unaudited |
| ShipmentPlanner | unknown | arbitrum | n/a | [`0x555555...feeef5`](./contracts/arbitrum-42161/0x555555987d98079b9f43cdcdbd52dbb24ffeeef5/) | ⚠️ Unaudited |
| Stable2 | unknown | arbitrum | n/a | [`0xba1500...921cbc`](./contracts/arbitrum-42161/0xba150052e11591d0648b17a0e608511874921cbc/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | arbitrum | n/a | [`0x39ae10...e7751e`](./contracts/arbitrum-42161/0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e/) | ⚠️ Unaudited |
| UnwrapAndSendETH | unknown | arbitrum | n/a | [`0xd6fc4a...9a4749`](./contracts/arbitrum-42161/0xd6fc4a63d7e93267c3007ea176081052369a4749/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a70df...3c9bdd`](./contracts/ethereum-1/0x3a70dfa7d2262988064a2d051dd47521e43c9bdd/); ethereum `0x6c3f90...e6e490` | ⚠️ Unaudited |
| WellUpgradeable | unknown | arbitrum | n/a | [`0xba5109...28e50b`](./contracts/arbitrum-42161/0xba510995783111be5301d93ccfd5de4e3b28e50b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WellUpgradeable | unknown | arbitrum | unit-35495 | `0xbea00a...8736ce` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | unit-35496 | `0xbea00b...48d74f` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | unit-35498 | `0xbea00d...e1b09c` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | unit-35499 | `0xbea00e...a91bd7` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | unit-35500 | `0xbea00f...4bed33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/beanstalk/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [HALBORN,](https://basin.exchange/halborn-basin-audit.pdf) | Halborn | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [CYFRIN, (also discovered via alternate URL)](https://basin.exchange/cyfrin-basin-audit.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | contract_name|n/a | 1 | high |
| [CODE4RENA](https://code4rena.com/reports/2023-07-basin) | Code4rena | Contest | 2023-07 | stale | Direct | contract_name | 1 | high |
| [Introduction](https://omniscia.io/reports/beanstalk-core-protocol) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [DL audit link](https://4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [/URI ()>>>>](https://github.com/trailofbits/publications) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [/URI ()>>>>](https://www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022) | Halborn | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1bea05...d27543`](./contracts/arbitrum-42161/0x1bea054dddbca12889e07b3e076f511bf1d27543/) | BeanstalkERC20 | token | $12,007,411.25 | Verified native implementation with $12,007,411.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba51aa...e97521`](./contracts/arbitrum-42161/0xba51aaaa8c2f911ae672e783707ceb2da6e97521/) | Aquifer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa755a6...722a79`](./contracts/ethereum-1/0xa755a670aaf1fecef2bea56115e65e03f7722a79/) | BeaNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba1500...1b72b4`](./contracts/arbitrum-42161/0xba15000450bf6d48ec50bd6327a9403e401b72b4/) | ConstantProduct2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcccccc...b35626`](./contracts/arbitrum-42161/0xcccccc35b53c8a16404ae414afa31f30a5b35626/) | LSDChainlinkOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x69b798...29a8c5`](./contracts/arbitrum-42161/0x69b798425cfff3ae962f6118fd6d6646c829a8c5/) | ManyChainMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba1500...a95b13`](./contracts/arbitrum-42161/0xba150002660bbca20675d1c1535cd76c98a95b13/) | MultiFlowPump | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x555555...feeef5`](./contracts/arbitrum-42161/0x555555987d98079b9f43cdcdbd52dbb24ffeeef5/) | ShipmentPlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba1500...921cbc`](./contracts/arbitrum-42161/0xba150052e11591d0648b17a0e608511874921cbc/) | Stable2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a70df...3c9bdd`](./contracts/ethereum-1/0x3a70dfa7d2262988064a2d051dd47521e43c9bdd/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba5109...28e50b`](./contracts/arbitrum-42161/0xba510995783111be5301d93ccfd5de4e3b28e50b/) | WellUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 14 |
| standard_library | 2 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=334

Zero-match audit list:

- [3390] DL audit link
- [14981] /URI ()>>>>
- [14982] /URI ()>>>>

Fork inheritance lineage and inherited audits are included when available.
