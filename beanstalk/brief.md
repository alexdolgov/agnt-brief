# Agentic Audit Brief: Beanstalk

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Beanstalk (`beanstalk`)
- Website: [https://bean.money](https://bean.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:05.377Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, ethereum
- Contract surface: 546 unique implementations (965 raw deployments)
- DeFi Llama TVL: $4,912,866.79
- On-chain TVL (included contracts): $528,340,896.54
- TVL by chain: Arbitrum $528,340,896.54

## Project Description

Algo-Stables. Structurally: 171 project-authored contract(s) across 2 chain(s); 22 ERC20 tokens, 2 ERC721 NFTs, 2 ERC1155 multi-tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 28 common project-authored base contract(s) (internalizer, fertilizer1155, siloentrance). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 991; live-surface contracts included: 963 (521 live, 442 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/85 (3.5%)
- Deployed-live implementations: 104 of 546 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/104
- Verified + Unaudited implementations: 101
- Verified by bytecode match: 0
- Unverified implementations: 442
- Unique implementations: 546
- Raw deployments: 965
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/beanstalk/information))
- ASD (verified + unaudited TVL): $528,340,896.54
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 2.4% (Code4rena, Cyfrin, Immunefi)
- Note: This protocol is classified as [dead]. ASD of $528,340,896.54 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 1.0% | 2023-07 |
| Cyfrin | Tier 1 | 1 | 1.0% | 2023-06 |
| Halborn | Tier 2 | 1 | 1.0% | 2023-04 |
| Immunefi | Tier 1 | 1 | 1.0% | n/a |
| Omniscia | Tier 2 | 1 | 1.0% | n/a |
| unknown | Tier 2 | 1 | 1.0% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bean | unknown | ethereum | n/a | [`0xdc59ac...52e5db`](./contracts/ethereum-1/0xdc59ac4fefa32293a95889dc396682858d52e5db/) | ✅ Audited |
| Pipeline | unknown | arbitrum | n/a | [`0xb1be00...4c91b0`](./contracts/arbitrum-42161/0xb1be000644bd25996b0d9c2f7a6d6ba3954c91b0/) | ✅ Audited |
| Well | unknown | arbitrum | n/a | 2 deployments: ethereum `0xbea0e1...872bad`; arbitrum [`0xba5106...62d1a9`](./contracts/arbitrum-42161/0xba5106bd62b342afacb93f1078fe60177a62d1a9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (101)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0x357510...cf4dbe` | ⚠️ Unaudited |
| BeanstalkERC20 | token | ethereum | n/a | 6 deployments: ethereum [`0x1bea00...224449`](./contracts/ethereum-1/0x1bea0050e63e05fbb5d8ba2f10cf5800b6224449/); ethereum `0x1bea3c...13716d`; ethereum `0xbea000...d1efab`; arbitrum `0x1bea05...d27543`; arbitrum `0x1bea05...66d788`; arbitrum `0xbea000...7812e4` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | arbitrum | n/a | 168 deployments: arbitrum [`0x01dd3c...587edd`](./contracts/arbitrum-42161/0x01dd3cf6118069db13a2d64d7e1a09fecd587edd/); arbitrum `0x02f6bc...942182`; arbitrum `0x033809...b823df`; arbitrum `0x0526ed...0d6d13`; arbitrum `0x08fbe2...dcdff1`; arbitrum `0x0ae175...7f3809`; arbitrum `0x0c9679...64e143`; arbitrum `0x0ca784...79e732`; arbitrum `0x0d390b...3384d2`; arbitrum `0x0e9b5c...ac5a17`; arbitrum `0x10e138...764493`; arbitrum `0x126b9a...f6f849`; arbitrum `0x17298e...b91d20`; arbitrum `0x17b844...9d35c4`; arbitrum `0x182308...92c799`; arbitrum `0x1893d4...84688c`; arbitrum `0x1b3224...6ffccf`; arbitrum `0x1b9749...41e432`; arbitrum `0x1cde96...c6a642`; arbitrum `0x1d416d...555d6e`; arbitrum `0x1d9fab...f05f2d`; arbitrum `0x1f4abf...88e5ff`; arbitrum `0x1fa1c3...a637ae`; arbitrum `0x244ea8...e598cf`; arbitrum `0x2829f6...fd104c`; arbitrum `0x294622...bbe32c`; arbitrum `0x2cde70...006854`; arbitrum `0x2fb0a0...56fd0f`; arbitrum `0x31aa84...0a7905`; arbitrum `0x34ea4f...40a4ae`; arbitrum `0x3607e4...5e2ca7`; arbitrum `0x37b300...889090`; arbitrum `0x382f3c...350a11`; arbitrum `0x39fdd7...417880`; arbitrum `0x3a00c8...50e754`; arbitrum `0x3aa743...057a04`; arbitrum `0x3c6abd...2cc904`; arbitrum `0x3ed9d8...568c4e`; arbitrum `0x412304...803de9`; arbitrum `0x42081a...b48ec2`; arbitrum `0x4258e5...4902d7`; arbitrum `0x43c570...070062`; arbitrum `0x44d3ab...502051`; arbitrum `0x453e2d...c8e0e3`; arbitrum `0x457afc...7c13e4`; arbitrum `0x46de66...c121a3`; arbitrum `0x476de9...2af349`; arbitrum `0x47c0e8...352778`; arbitrum `0x48fd0a...25a115`; arbitrum `0x496000...4e6349`; arbitrum `0x4b05c0...9182a3`; arbitrum `0x4c594a...bdb1e4`; arbitrum `0x4dacfb...52b2f9`; arbitrum `0x507c9a...427670`; arbitrum `0x526584...b62fc5`; arbitrum `0x56bb7f...7d2e48`; arbitrum `0x575f36...b95bd7`; arbitrum `0x58dbe5...c51ab9`; arbitrum `0x5a0f82...7b6e23`; arbitrum `0x5ab0b1...b4297e`; arbitrum `0x5d750c...6adc84`; arbitrum `0x5dda1e...3dd378`; arbitrum `0x5ddc9a...480dbe`; arbitrum `0x5e4c65...1f6d62`; arbitrum `0x5eb7ca...44770c`; arbitrum `0x60ce55...41723a`; arbitrum `0x626fd7...6231a7`; arbitrum `0x660e7a...c936f5`; arbitrum `0x66b074...89fd25`; arbitrum `0x67db13...2597ac`; arbitrum `0x682c4f...3b8e73`; arbitrum `0x69c17b...c08535`; arbitrum `0x69ff5b...33301d`; arbitrum `0x6b2271...3f3c54`; arbitrum `0x6b3730...7fe654`; arbitrum `0x6d77f5...52a4ea`; arbitrum `0x700019...5bbbf9`; arbitrum `0x75dd10...0b991c`; arbitrum `0x778356...e0cd36`; arbitrum `0x77d76e...7ce0aa`; arbitrum `0x7aaee6...6ff871`; arbitrum `0x7af187...539f47`; arbitrum `0x7b5fdb...e6ab87`; arbitrum `0x7b9845...9a06b8`; arbitrum `0x7d5ca9...401dc3`; arbitrum `0x807eb1...88c511`; arbitrum `0x815d58...fd0c65`; arbitrum `0x8548a9...6e2393`; arbitrum `0x8abe00...545c82`; arbitrum `0x8afe9b...4df5d6`; arbitrum `0x8b48e1...9f1a8a`; arbitrum `0x920d90...01da54`; arbitrum `0x92e6b8...4dd939`; arbitrum `0x92f0de...17d8a6`; arbitrum `0x931405...379eb3`; arbitrum `0x942d00...f9b882`; arbitrum `0x94cd88...635eb7`; arbitrum `0x9b8ddc...a2c9cc`; arbitrum `0x9bda3a...4a967b`; arbitrum `0x9d75b7...706af9`; arbitrum `0xa0a624...f69e66`; arbitrum `0xa3403c...b2cfb7`; arbitrum `0xa44bcd...3f74ec`; arbitrum `0xa45989...d848eb`; arbitrum `0xa64344...eed599`; arbitrum `0xab5745...4095a7`; arbitrum `0xac812c...b31a8e`; arbitrum `0xad81bc...93c8b1`; arbitrum `0xaeb20e...37bc83`; arbitrum `0xafaebe...2458c1`; arbitrum `0xb20bd2...eb649b`; arbitrum `0xb39bfa...f6deb0`; arbitrum `0xb4a1f9...d27cda`; arbitrum `0xb4c75e...c08882`; arbitrum `0xb98512...134a76`; arbitrum `0xbc78d5...c1b61e`; arbitrum `0xbc81b4...07a481`; arbitrum `0xbf1cd5...7e8885`; arbitrum `0xbfc294...2bc09b`; arbitrum `0xbff434...5c0d49`; arbitrum `0xc0552c...628f2a`; arbitrum `0xc195ba...4ba72c`; arbitrum `0xc38d1a...ddc4d7`; arbitrum `0xc38d44...5c6a57`; arbitrum `0xc3a633...480285`; arbitrum `0xc59d26...339d18`; arbitrum `0xc67fe6...54cf09`; arbitrum `0xc952f3...707d66`; arbitrum `0xcad222...595820`; arbitrum `0xcb35fe...65ace4`; arbitrum `0xcb6501...df6847`; arbitrum `0xcd11b9...05233a`; arbitrum `0xce2adf...ffd80a`; arbitrum `0xcfcaa2...c15e84`; arbitrum `0xd05ad7...639c2a`; arbitrum `0xd0b5f6...67c177`; arbitrum `0xd542b9...5e194c`; arbitrum `0xd896f8...d38c21`; arbitrum `0xd9fcb2...b67240`; arbitrum `0xdb4bdd...6bd27e`; arbitrum `0xddb296...8384fe`; arbitrum `0xdeccf9...855df0`; arbitrum `0xe3e8e2...0784b1`; arbitrum `0xe4a492...b077ef`; arbitrum `0xe5b5be...ed83a2`; arbitrum `0xe60f94...aacab2`; arbitrum `0xe7bef4...7b8538`; arbitrum `0xe7f278...a1dd24`; arbitrum `0xe83770...c6ebef`; arbitrum `0xea84b5...3130d5`; arbitrum `0xea9b4d...54cc47`; arbitrum `0xec2e90...3180b2`; arbitrum `0xec3dfe...5a2ca9`; arbitrum `0xed85d7...a63896`; arbitrum `0xef1b41...7d58c3`; arbitrum `0xefc506...4f2b71`; arbitrum `0xf0e892...c3bd22`; arbitrum `0xf56e6c...014b1f`; arbitrum `0xf613f9...f03bcf`; arbitrum `0xf6bacc...4baedc`; arbitrum `0xf8abb3...13eeaa`; arbitrum `0xf94463...296255`; arbitrum `0xfaedf2...e633d6`; arbitrum `0xfc06bb...7a43b9`; arbitrum `0xfc66e4...f6f83d`; arbitrum `0xfe2c83...cede2c`; arbitrum `0xfe45c3...5678e1`; arbitrum `0xff5247...ab75e1` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ApprovalFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d6df5...c83d59`](./contracts/arbitrum-42161/0x0d6df5e737ef25913f6f2fa1649d0f9530c83d59/); arbitrum `0x557935...61bad6` | ⚠️ Unaudited |
| Aquifer | unknown | arbitrum | n/a | [`0xba51aa...e97521`](./contracts/arbitrum-42161/0xba51aaaa8c2f911ae672e783707ceb2da6e97521/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BDVFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4da6aa...cb0426`](./contracts/arbitrum-42161/0x4da6aaed2a2c3605f7c098037014003697cb0426/); arbitrum `0xa7d49d...26711f` | ⚠️ Unaudited |
| BeaNFT | token | ethereum | n/a | 2 deployments: ethereum [`0x459895...58d9e9`](./contracts/ethereum-1/0x459895483556dad32526efa461f75e33e458d9e9/); ethereum `0xd23ca4...6c1f27` | ⚠️ Unaudited |
| BeaNFT | token | ethereum | n/a | [`0xa755a6...722a79`](./contracts/ethereum-1/0xa755a670aaf1fecef2bea56115e65e03f7722a79/) | ⚠️ Unaudited |
| Budget | unknown | ethereum | n/a | 4 deployments: ethereum [`0x74d01f...904858`](./contracts/ethereum-1/0x74d01f9dc15e92a9235daa8f2c6f8bfad9904858/); ethereum `0x83a758...b64783`; ethereum `0xaa420e...12a551`; ethereum `0xe80f77...ad60d9` | ⚠️ Unaudited |
| CallProxy | unknown | arbitrum | n/a | [`0x031828...1dcf87`](./contracts/arbitrum-42161/0x031828231b6829208c1b2aad4ecfea2c011dcf87/) | ⚠️ Unaudited |
| ClaimFacet | unknown | ethereum | n/a | 4 deployments: ethereum [`0x024a12...d233d8`](./contracts/ethereum-1/0x024a129bb564da019aca23b41891329eadd233d8/); ethereum `0x7762a9...387b60`; arbitrum `0x76ef6b...6afebc`; arbitrum `0xd14b7a...46ddcc` | ⚠️ Unaudited |
| CommitStore | unknown | arbitrum | n/a | 22 deployments: arbitrum [`0x060331...b47d20`](./contracts/arbitrum-42161/0x060331feda35691e54876d957b4f9e3b8cb47d20/); arbitrum `0x0ce42c...c7abc5`; arbitrum `0x254c44...9a8258`; arbitrum `0x26291e...968167`; arbitrum `0x46679c...a33623`; arbitrum `0x5d8851...60b8d4`; arbitrum `0x6642e6...2ee269`; arbitrum `0x6c3fd6...23cfc4`; arbitrum `0x78b15a...d82aa2`; arbitrum `0x80a765...132c5e`; arbitrum `0x86be76...8f43e3`; arbitrum `0x8a7110...7ae1bb`; arbitrum `0x8f3071...12d348`; arbitrum `0x8f60c3...640aaf`; arbitrum `0x99c520...062a92`; arbitrum `0xa0e9d7...b9c695`; arbitrum `0xa2eee4...dbe1dd`; arbitrum `0xb2fed9...bda537`; arbitrum `0xbc44b5...689b48`; arbitrum `0xc04d83...aeed1d`; arbitrum `0xe19e97...b7a0a9`; arbitrum `0xf171df...92a1d2` | ⚠️ Unaudited |
| ConstantProduct2 | unknown | arbitrum | n/a | [`0xba1500...1b72b4`](./contracts/arbitrum-42161/0xba15000450bf6d48ec50bd6327a9403e401b72b4/) | ⚠️ Unaudited |
| ConvertFacet | unknown | arbitrum | n/a | 8 deployments: ethereum `0x3f8ce4...2e5416`; ethereum `0x649d4b...3fe801`; ethereum `0x6838d4...b861d6`; ethereum `0xc1a92d...dc593d`; ethereum `0xc2e90a...b304c2`; ethereum `0xeea799...22d191`; arbitrum [`0x242a33...ec3b09`](./contracts/arbitrum-42161/0x242a339c73d3b373a91c157865b36a1480ec3b09/); arbitrum `0xd7a7ec...3b3b85` | ⚠️ Unaudited |
| ConvertGettersFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3d5cd5...5a69ec`](./contracts/arbitrum-42161/0x3d5cd5a7c7312bf005de78b09e125b34165a69ec/); arbitrum `0x999a04...49a47a` | ⚠️ Unaudited |
| Depot | unknown | arbitrum | n/a | [`0xdeb0f0...4120c3`](./contracts/arbitrum-42161/0xdeb0f082ed3b0efe9257aea9f2e6e974aa4120c3/) | ⚠️ Unaudited |
| DepotFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x107f33...0c96cc`](./contracts/arbitrum-42161/0x107f33211935bb72b721675c7e95a2d4cc0c96cc/); arbitrum `0x47422e...666699` | ⚠️ Unaudited |
| DualAggregator | unknown | arbitrum | n/a | 21 deployments: arbitrum [`0x01065f...57c71e`](./contracts/arbitrum-42161/0x01065f4726bbbce2ef1a4bebc04af3209357c71e/); arbitrum `0x0309c0...b79e6a`; arbitrum `0x0b6eac...6bd29b`; arbitrum `0x12b891...7c676a`; arbitrum `0x16c0e7...8f7a4e`; arbitrum `0x333399...e3ef27`; arbitrum `0x355e12...f5c829`; arbitrum `0x41f14a...3d2bcd`; arbitrum `0x4c76f0...531e9e`; arbitrum `0x626194...c1e618`; arbitrum `0x674a6d...7d21bc`; arbitrum `0x739910...c20848`; arbitrum `0xa0e9a6...bd2f99`; arbitrum `0xa1c0bd...fb80d3`; arbitrum `0xa686fa...9fbac1`; arbitrum `0xa821e9...aa6f93`; arbitrum `0xb72359...297c20`; arbitrum `0xc1720a...1879b1`; arbitrum `0xe68beb...2631e3`; arbitrum `0xe7c522...19aeb0`; arbitrum `0xfbe1c9...da2918` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | n/a | 78 deployments: arbitrum [`0x021126...df8055`](./contracts/arbitrum-42161/0x021126143d0b6e20bb69befcc860e7e523df8055/); arbitrum `0x022578...f3e7be`; arbitrum `0x02e892...148e40`; arbitrum `0x06047d...29a44c`; arbitrum `0x066ba4...74004f`; arbitrum `0x0c6118...bdb79e`; arbitrum `0x0c9979...7b5bb3`; arbitrum `0x0d0fad...79b571`; arbitrum `0x0d2057...86d739`; arbitrum `0x103c63...4b29a5`; arbitrum `0x158b22...68d659`; arbitrum `0x16f384...847b1e`; arbitrum `0x1b47b4...a4fb8e`; arbitrum `0x1c8a38...e5c788`; arbitrum `0x21e1a0...4d1875`; arbitrum `0x229a93...c48071`; arbitrum `0x2c1c5e...dd59e6`; arbitrum `0x326fa2...55590b`; arbitrum `0x339a66...6e5183`; arbitrum `0x368b55...3fcf37`; arbitrum `0x3815dd...d6d0e0`; arbitrum `0x3861d8...89a2da`; arbitrum `0x3b9c34...d0c762`; arbitrum `0x3d50d6...781736`; arbitrum `0x3d9145...2b5034`; arbitrum `0x3eabf6...c24064`; arbitrum `0x413b21...da9476`; arbitrum `0x47c38c...bb033c`; arbitrum `0x4a85b1...ceb289`; arbitrum `0x4b13dd...3ae848`; arbitrum `0x54a82b...7a92ff`; arbitrum `0x552c92...472be3`; arbitrum `0x5fb8e2...cb53fe`; arbitrum `0x639fe6...3ba612`; arbitrum `0x670bd6...e7c23f`; arbitrum `0x671ee9...aa8ea6`; arbitrum `0x6aa147...e67939`; arbitrum `0x6ab841...e45537`; arbitrum `0x6bc7ff...88ccdc`; arbitrum `0x6ce185...3708e9`; arbitrum `0x703389...e509c4`; arbitrum `0x726a96...86a002`; arbitrum `0x72b424...f15943`; arbitrum `0x730a28...c1a67d`; arbitrum `0x7537f8...1c7a66`; arbitrum `0x78aabb...afed7a`; arbitrum `0x7a8a9a...a4eed1`; arbitrum `0x7c7dff...92a595`; arbitrum `0x7c8e67...6691ad`; arbitrum `0x86e53c...5812cb`; arbitrum `0x86e5d5...12ea3f`; arbitrum `0x926eed...b6302f`; arbitrum `0x9c9170...da2720`; arbitrum `0xa631de...9ee28d`; arbitrum `0xa84101...1c87c8`; arbitrum `0xae0d73...db49c1`; arbitrum `0xae8b41...f3e4b4`; arbitrum `0xb2ae7b...6b801f`; arbitrum `0xb39082...1a268c`; arbitrum `0xb471a2...8c6e1f`; arbitrum `0xb49b8b...fe0bd4`; arbitrum `0xba55b9...8006d7`; arbitrum `0xc5c8e7...e9ecfb`; arbitrum `0xd01d5e...b11b57`; arbitrum `0xd0e922...c3f7af`; arbitrum `0xdb0c64...5a620a`; arbitrum `0xdbff91...44d531`; arbitrum `0xdc1a8f...66fa23`; arbitrum `0xde4af8...399134`; arbitrum `0xe46a44...60aa3a`; arbitrum `0xe4c892...39e2fd`; arbitrum `0xe4d040...515e3f`; arbitrum `0xe4df63...9be921`; arbitrum `0xf04bf0...335ab5`; arbitrum `0xf3d6b0...de8c78`; arbitrum `0xf97eea...ce04c7`; arbitrum `0xfa74da...2d242c`; arbitrum `0xff6b58...dc30f6` | ⚠️ Unaudited |
| EnrootFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3af703...a8f110`](./contracts/arbitrum-42161/0x3af703faca14a0201e5aa98d91ca1dbb10a8f110/); arbitrum `0xd9171d...ac3a2a` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | arbitrum | n/a | 21 deployments: arbitrum [`0x017513...2c029e`](./contracts/arbitrum-42161/0x017513a8ca43992938e7fa72033ee29a0e2c029e/); arbitrum `0x052cf0...97502f`; arbitrum `0x0c4865...918929`; arbitrum `0x16b970...79f663`; arbitrum `0x27a971...72a4a3`; arbitrum `0x3f1341...682f32`; arbitrum `0x7c04e5...353275`; arbitrum `0x858d69...365cde`; arbitrum `0x91e46c...7dec31`; arbitrum `0x950950...0bc376`; arbitrum `0xb62178...43ac4b`; arbitrum `0xbda25a...be2c8a`; arbitrum `0xc16578...ece3f9`; arbitrum `0xcabc2d...ef9b6f`; arbitrum `0xcb1dbb...d5785b`; arbitrum `0xcceee1...359c4b`; arbitrum `0xd85f0a...97514b`; arbitrum `0xe62f2a...36b634`; arbitrum `0xee5387...f37e20`; arbitrum `0xf88166...a41e68`; arbitrum `0xf9b99c...962236` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x122f05...e5a809`](./contracts/arbitrum-42161/0x122f05f49e90508f089ee8d0d868d1a4f3e5a809/); arbitrum `0x1fe0f6...3bf1e4` | ⚠️ Unaudited |
| FarmFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x24103b...eec05f`](./contracts/arbitrum-42161/0x24103b8141f97d9d8794fe2ee0ed96f577eec05f/); arbitrum `0xd4a079...0061fe` | ⚠️ Unaudited |
| Fertilizer | unknown | ethereum | n/a | 5 deployments: ethereum [`0x057997...8d8366`](./contracts/ethereum-1/0x057997024bcb46986e7f864976846a40d38d8366/); ethereum `0x1b3f47...452610`; ethereum `0x39cdaf...f452fd`; ethereum `0x573bf5...6bc4f7`; ethereum `0xe2d950...f5d0d2` | ⚠️ Unaudited |
| Fertilizer | unknown | ethereum | n/a | [`0x402c84...d36cb6`](./contracts/ethereum-1/0x402c84de2ce49af88f5e2ef3710ff89bfed36cb6/) | ⚠️ Unaudited |
| FertilizerFacet | unknown | arbitrum | n/a | 3 deployments: ethereum `0xfc7ed1...335b6c`; arbitrum [`0x6f252e...b4c1db`](./contracts/arbitrum-42161/0x6f252ecf79af1bd57c48047a8b109001ffb4c1db/); arbitrum `0x7b2bda...68e342` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FieldFacet | unknown | ethereum | n/a | 7 deployments: ethereum [`0x491d04...93ffab`](./contracts/ethereum-1/0x491d0406be21efb6d89d993d7fbe06d6e793ffab/); ethereum `0x5e93b6...99cd4f`; ethereum `0x656b50...a04fb6`; ethereum `0x79801f...a0eae2`; ethereum `0xdfc0a7...da557c`; arbitrum `0xa90859...8b3726`; arbitrum `0xe6f9ce...5c6513` | ⚠️ Unaudited |
| FundraiserFacet | unknown | ethereum | n/a | [`0x538c76...fc7a8e`](./contracts/ethereum-1/0x538c76976ef45b8ca5c12662a86034434bfc7a8e/) | ⚠️ Unaudited |
| GaugeGettersFacet | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x16b6b2...9a87e5`](./contracts/arbitrum-42161/0x16b6b2deb4b19ddb664167cf8cbe601dfa9a87e5/); arbitrum `0x2e804f...3e2f31` | ⚠️ Unaudited |
| GaugePointFacet | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x043a11...69eaec`](./contracts/arbitrum-42161/0x043a11704a9e508a2b03c4dc38ae60dee369eaec/); arbitrum `0xbcf3ba...020778` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xdd5b31...daaf69`](./contracts/arbitrum-42161/0xdd5b31e73db1c566ca09e1f1f74df34913daaf69/) | ⚠️ Unaudited |
| GovernanceFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x88540c...035308`](./contracts/ethereum-1/0x88540cb124ceecfd0ae95f86d3eb6670b6035308/); ethereum `0xdbc8cb...f31328`; ethereum `0xf480ee...7667c4` | ⚠️ Unaudited |
| InitUpdateOracleImplementation | operational_periphery | arbitrum | n/a | [`0xa41d1e...3a8943`](./contracts/arbitrum-42161/0xa41d1e77b711581c4d2fd63d92a25499323a8943/) | ⚠️ Unaudited |
| Junction | unknown | arbitrum | n/a | [`0x5a5a5a...08e2cd`](./contracts/arbitrum-42161/0x5a5a5ade4c9713172a5228703213d4d39608e2cd/) | ⚠️ Unaudited |
| L1ReceiverFacet | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x8f2bb1...651a57`](./contracts/arbitrum-42161/0x8f2bb164df87183af23e72d49572052e27651a57/); arbitrum `0xe53e21...f9ae29`; arbitrum `0xef10e3...753b97` | ⚠️ Unaudited |
| L1RecieverFacet | unknown | arbitrum | n/a | [`0x53106d...a7e0b1`](./contracts/arbitrum-42161/0x53106dc7d78df1eed36947cf0536d7eccca7e0b1/) | ⚠️ Unaudited |
| L2MigrationFacet | operational_periphery | ethereum | n/a | [`0xc1e088...5624c5`](./contracts/ethereum-1/0xc1e088fc1323b20bcbee9bd1b9fc9546db5624c5/) | ⚠️ Unaudited |
| LibClaim | unknown | ethereum | n/a | 3 deployments: ethereum [`0x698293...c2b400`](./contracts/ethereum-1/0x6982938c28bd93d6f06c5c65d970aa8687c2b400/); ethereum `0x805b73...fe74f1`; ethereum `0xe222d5...0d0458` | ⚠️ Unaudited |
| LibConvert | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3b6db5...a3eaab`](./contracts/arbitrum-42161/0x3b6db527fedb770049326e846c165d3579a3eaab/); arbitrum `0xb6acd1...4349e2` | ⚠️ Unaudited |
| LibEvaluate | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4fdc2e...4d0b70`](./contracts/arbitrum-42161/0x4fdc2ebf915322dd693d848d7e4996cb1e4d0b70/); arbitrum `0x67e6cc...bf176f` | ⚠️ Unaudited |
| LibFlood | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x016159...bf66c1`](./contracts/arbitrum-42161/0x016159b6bc7eaa69d2d9d42ef79ab4fe55bf66c1/); arbitrum `0xa5fd2a...947a23` | ⚠️ Unaudited |
| LibGauge | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x029602...2ac717`](./contracts/arbitrum-42161/0x02960251e6d2ef0ccd79ad1927065f55132ac717/); arbitrum `0x2d5e48...13ea51` | ⚠️ Unaudited |
| LibGerminate | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x89c115...81c0df`](./contracts/arbitrum-42161/0x89c115109a3e91fcf9f31091af7698f21681c0df/); arbitrum `0x95606e...fa35be` | ⚠️ Unaudited |
| LibIncentive | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xe2f050...e4caa7`](./contracts/arbitrum-42161/0xe2f050e289dd79477a0d98dffff90e4210e4caa7/); arbitrum `0xefe94b...ddee56` | ⚠️ Unaudited |
| LibLockedUnderlying | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8968bf...b9002d`](./contracts/arbitrum-42161/0x8968bf3c83cb25830d34ac3065453460adb9002d/); arbitrum `0x9046d1...9b04b1` | ⚠️ Unaudited |
| LibPipelineConvert | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x08acb7...7fa030`](./contracts/arbitrum-42161/0x08acb7258a3dbca0f040bd2c5f07e97b247fa030/); arbitrum `0x74749a...1a2ea5` | ⚠️ Unaudited |
| LibShipping | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc64c90...aeecc5`](./contracts/arbitrum-42161/0xc64c90ebaa01ed9ad4810e98d5c794a008aeecc5/); arbitrum `0xe20d32...0970b8` | ⚠️ Unaudited |
| LibSilo | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc3fe04...e4f16e`](./contracts/arbitrum-42161/0xc3fe04099da7a1c19802e463a81afaa3b8e4f16e/); arbitrum `0xdde5ef...f6bb34` | ⚠️ Unaudited |
| LibSiloPermit | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x620ff5...6ae7a3`](./contracts/arbitrum-42161/0x620ff53fb1ae879af099c95dbc129f06226ae7a3/); arbitrum `0xafd3a0...4d1601` | ⚠️ Unaudited |
| LibTokenSilo | token | arbitrum | n/a | 2 deployments: arbitrum [`0x6c5860...9f7981`](./contracts/arbitrum-42161/0x6c5860e9fc6b35cfe3c98a4f5aa686c7cf9f7981/); arbitrum `0x7ad770...e08dda` | ⚠️ Unaudited |
| LibWellMinting | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x248738...571abd`](./contracts/arbitrum-42161/0x2487387f67c2ff45c4222a1cfb56be8b34571abd/); arbitrum `0xf14dd5...62a4ab` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | arbitrum | n/a | [`0xa51e97...e7b793`](./contracts/arbitrum-42161/0xa51e97926d25091d3b9fe888113946d5aae7b793/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | arbitrum | n/a | [`0x387e40...978653`](./contracts/arbitrum-42161/0x387e40ed22ee3396288c874411b00c48f6978653/) | ⚠️ Unaudited |
| LSDChainlinkOracle | operational_periphery | arbitrum | n/a | [`0xcccccc...b35626`](./contracts/arbitrum-42161/0xcccccc35b53c8a16404ae414afa31f30a5b35626/) | ⚠️ Unaudited |
| ManyChainMultiSig | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x69b798...29a8c5`](./contracts/arbitrum-42161/0x69b798425cfff3ae962f6118fd6d6646c829a8c5/); arbitrum `0xf4c257...3e67cb` | ⚠️ Unaudited |
| MarketplaceFacet | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0c9f43...327776`](./contracts/ethereum-1/0x0c9f436fbef08914c1c68fe04bd573de6e327776/); ethereum `0x3600d9...3245f1`; ethereum `0x79ebc5...c7ef71`; ethereum `0xd870aa...94f1b2`; ethereum `0xdefcf5...534a6a`; ethereum `0xf5f0c7...f4e1d5`; arbitrum `0x646444...a354cd`; arbitrum `0xca03ab...48c3c5` | ⚠️ Unaudited |
| Math | unknown | ethereum | n/a | [`0x16a903...0b740a`](./contracts/ethereum-1/0x16a903b66403d3de69db50e6d1ad0b07490b740a/) | ⚠️ Unaudited |
| MetadataFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5794fd...ccd1d9`](./contracts/arbitrum-42161/0x5794fdb0cfe2abfcb3d22103f5d8c6b4c2ccd1d9/); arbitrum `0x958679...06cbf5` | ⚠️ Unaudited |
| MultiFlowPump | unknown | arbitrum | n/a | [`0xba1500...a95b13`](./contracts/arbitrum-42161/0xba150002660bbca20675d1c1535cd76c98a95b13/) | ⚠️ Unaudited |
| OracleFacet | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x320aae...d02be0`](./contracts/arbitrum-42161/0x320aaebb1a644bed2b86038ede49b81072d02be0/); arbitrum `0x48fa35...3da580` | ⚠️ Unaudited |
| OwnershipFacet | unknown | arbitrum | n/a | 2 deployments: ethereum `0x5d4528...b18cf7`; arbitrum [`0x2cb2d1...034464`](./contracts/arbitrum-42161/0x2cb2d140c42b79f602535e2447e7afa980034464/) | ⚠️ Unaudited |
| PipelineConvertFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x35f697...692965`](./contracts/arbitrum-42161/0x35f6977d9236c0734520878799598ea0fe692965/); arbitrum `0x6b1b5e...d491a3` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | arbitrum | n/a | [`0x3971cf...c19a40`](./contracts/arbitrum-42161/0x3971cfef12c4cc6ed14d65b39c9ec6c740c19a40/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 4 deployments: ethereum [`0x309803...7db32b`](./contracts/ethereum-1/0x30980396e7a1c3b9272b948483694faf057db32b/); ethereum `0x3725b4...65f3cf`; ethereum `0xd131e0...5c71c4`; ethereum `0xfecb01...64aa6e` | ⚠️ Unaudited |
| RBACTimelock | governance | arbitrum | n/a | [`0x8a8977...1f8c7f`](./contracts/arbitrum-42161/0x8a89770722c84b60ce02989aedb22ac4791f8c7f/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | arbitrum | n/a | [`0x818792...9071d7`](./contracts/arbitrum-42161/0x818792c958ac33c01c58d5026cec91a86e9071d7/) | ⚠️ Unaudited |
| Replant1 | unknown | ethereum | n/a | [`0x46c46f...42f935`](./contracts/ethereum-1/0x46c46fadc886ccd0dfeca903be06bb791142f935/) | ⚠️ Unaudited |
| Replant2 | unknown | ethereum | n/a | [`0x09d439...b58024`](./contracts/ethereum-1/0x09d439edae1370ec16de6194451fc66f96b58024/) | ⚠️ Unaudited |
| Replant7 | unknown | ethereum | n/a | [`0x2906f2...f688b5`](./contracts/ethereum-1/0x2906f2b668fc6f9b5c1dea6f7c76e788def688b5/) | ⚠️ Unaudited |
| Replant8 | unknown | ethereum | n/a | [`0x80a6d3...eab1f5`](./contracts/ethereum-1/0x80a6d3e837965b97d7a84b4c5b3dbff986eab1f5/) | ⚠️ Unaudited |
| ReseedBarn | unknown | arbitrum | n/a | [`0xea4b9b...818266`](./contracts/arbitrum-42161/0xea4b9b59a52feeb98e8cb7380b791e0126818266/) | ⚠️ Unaudited |
| ReseedBean | unknown | arbitrum | n/a | [`0x75c121...cddd85`](./contracts/arbitrum-42161/0x75c1212d7717f5aaa1179c6a71c9afc56ecddd85/) | ⚠️ Unaudited |
| ReseedPodMarket | unknown | arbitrum | n/a | [`0x242bf5...745163`](./contracts/arbitrum-42161/0x242bf5d0eb3ab66d431286a1b2eea704e9745163/) | ⚠️ Unaudited |
| ReseedSilo | unknown | arbitrum | n/a | [`0xb85aaa...75cd94`](./contracts/arbitrum-42161/0xb85aaa766c8ff08987baf598e44264122675cd94/) | ⚠️ Unaudited |
| ReseedSiloRevised | unknown | arbitrum | n/a | [`0x3d4c4f...f1edc1`](./contracts/arbitrum-42161/0x3d4c4f48f2a0b7e94aebe629ad85f61a73f1edc1/) | ⚠️ Unaudited |
| ReseedWhitelist | unknown | arbitrum | n/a | [`0xe657b2...04e4ef`](./contracts/arbitrum-42161/0xe657b28ba8f9c08ac6c7efc669c0625da704e4ef/) | ⚠️ Unaudited |
| RMN | unknown | arbitrum | n/a | [`0xc2c5e2...260744`](./contracts/arbitrum-42161/0xc2c5e22a2d9715ed5c5bcc4d8eff5966cf260744/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x141fa0...17dde8`](./contracts/arbitrum-42161/0x141fa059441e0ca23ce184b6a78bafd2a517dde8/); arbitrum `0x333402...b3869c` | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | n/a | [`0xd39a31...e04ca9`](./contracts/arbitrum-42161/0xd39a31e5f23d90371d61a976cacb728842e04ca9/) | ⚠️ Unaudited |
| SafeProxy | unknown | arbitrum | n/a | [`0x390b02...a2fbc1`](./contracts/arbitrum-42161/0x390b023d316c2e92dd96a9bcc7fae8db12a2fbc1/) | ⚠️ Unaudited |
| SeasonFacet | unknown | ethereum | n/a | 11 deployments: ethereum [`0x197406...520d27`](./contracts/ethereum-1/0x197406ee97ad1d464194ee0e47efcf5b99520d27/); ethereum `0x43ffdb...c42dde`; ethereum `0x5c2db1...b55880`; ethereum `0x6a9cba...e451d2`; ethereum `0x83d6e6...28a3ac`; ethereum `0x9c04df...b8921d`; ethereum `0x9ed038...8d39d9`; ethereum `0xcee260...5801da`; ethereum `0xe7f0c5...148424`; arbitrum `0x40c868...3fbe4b`; arbitrum `0x552322...bae290` | ⚠️ Unaudited |
| SeasonFacet | unknown | arbitrum | n/a | [`0xd1a006...15fb70`](./contracts/arbitrum-42161/0xd1a0060ba708bc4bcd3da6c37efa8dedf015fb70/) | ⚠️ Unaudited |
| SeasonGettersFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xdf522a...29e34b`](./contracts/arbitrum-42161/0xdf522ac66735cb506d15236cf35938588f29e34b/); arbitrum `0xfe15fe...309132` | ⚠️ Unaudited |
| ShipmentPlanner | unknown | arbitrum | n/a | [`0x555555...feeef5`](./contracts/arbitrum-42161/0x555555987d98079b9f43cdcdbd52dbb24ffeeef5/) | ⚠️ Unaudited |
| SiloFacet | unknown | ethereum | n/a | 12 deployments: ethereum [`0x448d33...608065`](./contracts/ethereum-1/0x448d330affa0ad31264c2e6a7b5d2bf579608065/); ethereum `0x47e991...8061a6`; ethereum `0x5bb733...33fd35`; ethereum `0x6530a7...d3fb26`; ethereum `0x98465c...469247`; ethereum `0xca0a5d...fd337c`; ethereum `0xcc8342...2e5133`; ethereum `0xe81140...fe0b0a`; ethereum `0xf1bcb0...dbb4ca`; ethereum `0xf73db3...a15e97`; arbitrum `0x567834...927094`; arbitrum `0xa89fbf...7f9a1d` | ⚠️ Unaudited |
| SiloGettersFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x51757f...fcd312`](./contracts/arbitrum-42161/0x51757f6c0a662b4fb57e96a903b199d9d0fcd312/); arbitrum `0xb4f9d5...52d4ea` | ⚠️ Unaudited |
| SiloV2Facet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23d231...38fda2`](./contracts/ethereum-1/0x23d231f37c8f5711468c8abbfbf1757d1f38fda2/); ethereum `0x4bb005...87c310` | ⚠️ Unaudited |
| Stable2 | unknown | arbitrum | n/a | [`0xba1500...921cbc`](./contracts/arbitrum-42161/0xba150052e11591d0648b17a0e608511874921cbc/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | arbitrum | n/a | [`0x39ae10...e7751e`](./contracts/arbitrum-42161/0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e/) | ⚠️ Unaudited |
| TokenFacet | token | ethereum | n/a | 5 deployments: ethereum [`0x146f86...9b87fc`](./contracts/ethereum-1/0x146f86c2ef039f9176bc2434d3da5919c19b87fc/); ethereum `0x50eb00...2ead4a`; ethereum `0x8d00ef...1106cf`; arbitrum `0x4d26ca...c4933a`; arbitrum `0x915d09...ea84cd` | ⚠️ Unaudited |
| TokenSupportFacet | token | arbitrum | n/a | 2 deployments: arbitrum [`0x17ac9d...159a95`](./contracts/arbitrum-42161/0x17ac9d59f4637a16f47c8a77a1c4ee7c7a159a95/); arbitrum `0xcc0f81...3f33ba` | ⚠️ Unaudited |
| TractorFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcb84f1...16479b`](./contracts/arbitrum-42161/0xcb84f1a368f303798db6d9ce7b4084aaf316479b/); arbitrum `0xd61e6f...dc85bb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x878982...91e371`](./contracts/ethereum-1/0x87898263b6c5babe34b4ec53f22d98430b91e371/) | ⚠️ Unaudited |
| UnripeFacet | unknown | arbitrum | n/a | 4 deployments: ethereum `0x261b3a...44eb0a`; ethereum `0xaf2652...11cc39`; arbitrum [`0x0b980a...d61687`](./contracts/arbitrum-42161/0x0b980ab39f9fdf3226b98bc32d96ec180fd61687/); arbitrum `0x87f1fb...184354` | ⚠️ Unaudited |
| UnwrapAndSendETH | unknown | arbitrum | n/a | [`0xd6fc4a...9a4749`](./contracts/arbitrum-42161/0xd6fc4a63d7e93267c3007ea176081052369a4749/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3a70df...3c9bdd`](./contracts/ethereum-1/0x3a70dfa7d2262988064a2d051dd47521e43c9bdd/); ethereum `0x6c3f90...e6e490`; ethereum `0xc9c32c...f2ee49`; ethereum `0xd652c4...3d465d` | ⚠️ Unaudited |
| WellUpgradeable | unknown | arbitrum | n/a | [`0xba5109...28e50b`](./contracts/arbitrum-42161/0xba510995783111be5301d93ccfd5de4e3b28e50b/) | ⚠️ Unaudited |
| WhitelistFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7ef1d0...addc07`](./contracts/arbitrum-42161/0x7ef1d0449dd48189af968586b2f91c8294addc07/); arbitrum `0x7f8558...b7afab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (442)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x23a3c5...a8e6fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d3a66...382b13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e4c49...16a98e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ff308...90aad9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61f9c2...2231cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f3f27...9b67a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86f780...f5a28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x872251...017101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9258c2...5aff14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94bf26...19757b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0f339...621430` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb03e81...4c2fc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb673c6...f39107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7260f...1a631d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce9dcc...7715e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0017ab...7f9cf4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x004f21...85b196` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0050d5...397af7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0242f3...db1f7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02ded5...b74dbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x032b20...9ee2c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x037100...3593a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03a1f4...42cc45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03e405...7837b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x041809...243542` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04b738...8c2702` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x054296...b41252` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05b723...d17988` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05bc6e...ba2168` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07c5b9...2b7f2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07d7a9...dd4200` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x080a40...800eb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x090d39...6cbd99` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09d1cf...c2d0ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0a3225...568f66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0a7b23...c696a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c0041...09e756` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c6dda...672d02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d02b6...ffd516` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d13d3...58e100` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d657b...533193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e278d...128c93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ea107...8c5e98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f38d8...637c73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11e183...f3886d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1216dc...c1b5c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12a4b2...d623f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12aa79...048233` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12b215...1f443b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13015e...20438c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14bf7b...b9378d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17d8d8...ab763e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18dddd...054a75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a1079...800fb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a2b9e...082268` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ae1d8...085bed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1aefe4...052407` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1af4ea...ae4196` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd872...7af930` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf392...da0d0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf6ec...210611` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d1a83...a252ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d464c...ccea13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d7ea2...9d22ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dc0f6...7337d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e0e8b...2ceac0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e431e...d21b0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f5c0c...d87f5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f6647...02db6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1fd156...612ae6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1fd4f4...9639b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x205aad...eb9b98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20b015...e5995c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20bae7...294e12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20d0fc...53b352` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x214774...dfd47f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x248946...47a77d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24da67...887a00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24ea26...c1f764` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25648c...30b465` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x256654...34c400` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x263295...4a8c50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x278212...b1151b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x288b1b...cb0e59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28b047...22d1eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28b575...8f1436` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29b3b7...984ce0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29d575...7b8177` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2aef2d...f61284` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b55e4...fc0106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c1016...89201d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c592b...23dac0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d1d3f...d30374` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d45c4...04a7fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fbb50...5383b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ff501...72989a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x307c37...b8a915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x310cec...bb90bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32eea1...3b1d08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34700f...bfa726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3609ba...91c3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36713a...c90d25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x373510...520e4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37ddee...665771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x383b36...73992f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3920bf...d1d722` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x395d5c...ba492f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a2a4c...e865a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a9659...2feae3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3be326...7982e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c5c53...4a66cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c786e...96e8e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c8186...536c19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f3f5d...25dde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fd1d7...f1459b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ff4b3...638c6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40314f...e23ae3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x403ec7...c2b148` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4050bd...a91aad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4063d6...3a1165` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x407320...47a6e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4096b9...bf5634` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4099b8...cf174a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42d55f...632342` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x445f5d...68a8f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x449c59...afab84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45a26e...db0091` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46306f...b3cc10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4763b8...440012` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47a2fb...823a0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47e55c...c2202d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48377d...c60ee7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x483f33...b38dd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x484a1b...363122` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4881a4...7f262f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48c472...38a0b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x498145...e19600` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4afdde...818093` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b3f43...7e8566` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bc735...65aaef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cd893...9f9fdb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d6924...73e64b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ea3f7...040bb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ebcf1...b9d9f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ee1f9...955a02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f3ef0...6a4ccd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f861f...c48be6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5082d9...c22757` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50834f...434ad3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50e326...eae2bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50fc0d...978f6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51abd0...686fc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5227b2...610f4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52e51f...eda1a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53606d...77f28c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x542ba1...63722f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x544804...abfb46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55a10f...f54d57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x562b31...b750ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x569869...fbc9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57dfb0...9b6104` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x590791...054839` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x593674...c8270d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b1f92...7bbf7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b23a0...8e819f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ba6ff...1184b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c3e80...4e1c34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cfb77...5d1db8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d0465...e329f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d8343...d089b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5dfdaf...daa5b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e2b5c...5d1597` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fb73f...38e5b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6053e7...f30e12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x605ea7...665c44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6087d6...d6864d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d6a3...29ce95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x614778...fbbad7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61bb38...fc41a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6303c3...9e6da0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x639b7c...5c54e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63a0ae...32026d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65030a...b34089` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6573ba...65d1ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6643a4...d75446` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6662e3...27dd7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66a004...2e6fbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x677617...f3bef3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67b042...9e3dad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68647d...750773` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68b49d...c8f1c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69ee2f...29bda9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a9e40...910c2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6accbb...35b991` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6aeabd...100127` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c2b7e...c13fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c7796...8ba9a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c8fee...a20eae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6cb060...438f46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e2b1b...8fe0ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e37f4...ab553f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fabee...d2f28d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ffbc6...c05505` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70544b...4d374f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70e48a...feb849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72c3cd...f05a03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73d0d7...ab1ef2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x745ab5...f5fb21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7519bc...5a26c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76998c...40f854` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76a586...05221d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7765bd...1aef33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x778eb8...f20540` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b60f...08a22a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x798638...7a8c69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79a5d8...6a1795` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79f3ab...9a2d91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a1d89...e5743c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a5864...c4c4d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b1f90...63c97d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d16f2...b34431` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f20f4...8a9e0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f3d62...94e3ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fa028...2fd254` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x806c53...309af1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x809df5...f08259` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80adc2...9fde45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x821646...8939db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82a121...b54e8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82ba56...3a8934` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8315cb...52a68c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84968c...9173d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84ad1c...a616f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84e823...bc81af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85ac2e...af5377` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85bb02...411916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85fbb1...10939e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8643d0...d27ced` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x867730...65ea6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86af3d...40dbf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86d99f...7fb6d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87121f...54a95b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8728c1...c53a74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x875c69...db25e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87732c...2ed744` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87a795...bb9f7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x888304...50212a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88ac7b...68e0bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x893c14...86b8e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8965f1...cd13b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a2f15...32cdaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a59fa...34bd00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b7c87...1e884b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d0cc5...e1557c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e2ada...7256ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fcb0f...ce8eec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x919d18...4779bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x923b42...8e7719` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x929d24...30e7f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92aad8...8c62c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93a227...5738bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9409b2...94e9ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x947fec...87af72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x950dc9...454498` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96991f...2342ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96baa2...964f2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97cb0f...2cd032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9854e9...a8fc22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x989a48...c08186` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98dd9e...d0b648` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98e5a5...284431` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a7fb1...7c098c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bda7c...0d5ab1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c4a69...8505ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ca3d0...b2d5a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d9b87...54c4ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e3fc5...cb0adf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ee96c...6fbf7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f3eeb...146825` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9fa749...a5e9be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa07927...b197d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0af7e...2a4647` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa11ce8...adabed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa14d53...051a84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3906c...418a3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa424e1...e4fd1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa43a34...d0fe64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa50938...bc5777` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa51c8c...e03418` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa560c1...047821` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5b375...ae5cdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa66868...674275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa67762...8ec234` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6fa0d...abac17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa74218...10d891` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa96435...c69429` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa970d6...2ddb5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9c267...476f3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9cc9b...b7aea6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaade6e...50a7ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab5f16...a67b6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xabb35c...a2bea6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac939a...e715ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacdd3f...a15dcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad1d53...bdd034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae8e05...2a9e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xafecc7...06c2cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0ea54...e1476a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0f001...fe980d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1552c...14a540` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1883c...61d034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1b705...1e47fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1f70a...7ea82a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1f9db...8e88fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2a824...a548d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2a8ba...60147c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4102d...fe200d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb46ac9...916a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb473be...26f91c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4ac40...feaa7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb523ae...c2a95d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6b82a...53d39b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba9335...a0c65a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb7c7a...3f17f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbb563...806e35` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc9223...a27dbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdda3e...fac5d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc048ff...c66a02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc09b72...f030c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1b628...5ca9a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1ced1...7bad7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc200c3...1ce237` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc274d4...86ac58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2befc...309de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc311a2...62a145` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3534c...4cb39d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc373b9...629df0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc40de7...af367e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc54909...bec7ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc707f7...42cbf5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7d6b8...311cd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc81faf...f84341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8d14c...8f3d12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8f8df...589102` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc93c17...4b79ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc986d2...81a045` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9eb7e...6ec496` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca26ad...3ec035` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcba063...bdd70a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbed22...f8725f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc3370...71eccb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd1bd8...f85845` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcddc8b...d4766e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce1102...b5adee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce8e12...1108e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xceab51...b0ce78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf241c...e4f87c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf7a7a...94c51c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcff934...38b488` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd07de6...a24d69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0c710...d46d57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd16747...0b6f5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1ce84...4665f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd236ea...d7f047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd26828...05881c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4a7ae...d91116` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd55044...071739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5b44d...dbe90a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5fdf8...907c81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd615e3...269c44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd67f67...fb78d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd68804...4823b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6a776...313eba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6ab22...f611ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd76b54...d40558` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9193b...f3708b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda7613...8e3061` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdaa61b...a6ccea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb19f7...8f206c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddafe9...b0edc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddb06a...5988d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddc471...c26b53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdde33f...dca867` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdde352...5ee6ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xded2c5...fa4baf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf8b4c...acd671` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe01099...bc9920` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe0685d...8a3fc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe06b0e...b64e4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe13272...a2fd2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe14142...7ea22b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2a321...6ce500` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2cb59...4d91bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe32acc...4e1fc3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe408f6...9608c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe48f89...ea3d5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4c31c...0cd730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe594a0...a6f3fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe74d69...ceb3b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7c190...4a3ad8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe80848...abeb1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe80cc8...fc5639` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe899c7...85e0d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe89e98...e76486` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8f8af...c7cd05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe92634...e4ba85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea320e...ca086c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebec5c...d5102e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecd471...3e6d6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecd7e2...9443b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xede7ad...a72faa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeeed4d...963a5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeef5fb...c2c455` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef8deb...15d53c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0a05a...57d204` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0b715...40533d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1a4de...47bdae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1e73c...6330ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1f89d...da90ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2215b...5e68d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf32798...6f5180` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3988b...e3fa9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf46bef...be97e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf55298...8f2c10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf68971...9837c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6c387...9d0135` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf76d0f...10be01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7ee42...68f90d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9ce4f...91d567` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9d503...77a578` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb3264...0d041e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcdca0...5e6b7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe92fa...528c85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeac1a...d36f19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfefe28...b095a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff82aa...b58574` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | n/a | `0xbea00a...8736ce` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | n/a | `0xbea00b...48d74f` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | n/a | `0xbea00c...c2e48c` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | n/a | `0xbea00d...e1b09c` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | n/a | `0xbea00e...a91bd7` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | n/a | `0xbea00f...4bed33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [immunefi.com/bug-bounty/beanstalk/information](https://immunefi.com/bug-bounty/beanstalk/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [halborn-basin-audit.pdf](https://basin.exchange/halborn-basin-audit.pdf) | Halborn | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [cyfrin-basin-audit.pdf](https://basin.exchange/cyfrin-basin-audit.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2023-07-basin](https://code4rena.com/reports/2023-07-basin) | Code4rena | Contest | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [omniscia.io/reports/beanstalk-core-protocol](https://omniscia.io/reports/beanstalk-core-protocol) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8](https://4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0](https://2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [publications (GitHub directory)](https://github.com/trailofbits/publications) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022](https://www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022) | Halborn | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1bea00...224449`](./contracts/ethereum-1/0x1bea0050e63e05fbb5d8ba2f10cf5800b6224449/) | BeanstalkERC20 | token | $12,007,652.10 | Verified native implementation with $12,007,652.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d6df5...c83d59`](./contracts/arbitrum-42161/0x0d6df5e737ef25913f6f2fa1649d0f9530c83d59/) | ApprovalFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4da6aa...cb0426`](./contracts/arbitrum-42161/0x4da6aaed2a2c3605f7c098037014003697cb0426/) | BDVFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa755a6...722a79`](./contracts/ethereum-1/0xa755a670aaf1fecef2bea56115e65e03f7722a79/) | BeaNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x024a12...d233d8`](./contracts/ethereum-1/0x024a129bb564da019aca23b41891329eadd233d8/) | ClaimFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x242a33...ec3b09`](./contracts/arbitrum-42161/0x242a339c73d3b373a91c157865b36a1480ec3b09/) | ConvertFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d5cd5...5a69ec`](./contracts/arbitrum-42161/0x3d5cd5a7c7312bf005de78b09e125b34165a69ec/) | ConvertGettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdeb0f0...4120c3`](./contracts/arbitrum-42161/0xdeb0f082ed3b0efe9257aea9f2e6e974aa4120c3/) | Depot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x107f33...0c96cc`](./contracts/arbitrum-42161/0x107f33211935bb72b721675c7e95a2d4cc0c96cc/) | DepotFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3af703...a8f110`](./contracts/arbitrum-42161/0x3af703faca14a0201e5aa98d91ca1dbb10a8f110/) | EnrootFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24103b...eec05f`](./contracts/arbitrum-42161/0x24103b8141f97d9d8794fe2ee0ed96f577eec05f/) | FarmFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057997...8d8366`](./contracts/ethereum-1/0x057997024bcb46986e7f864976846a40d38d8366/) | Fertilizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6f252e...b4c1db`](./contracts/arbitrum-42161/0x6f252ecf79af1bd57c48047a8b109001ffb4c1db/) | FertilizerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x491d04...93ffab`](./contracts/ethereum-1/0x491d0406be21efb6d89d993d7fbe06d6e793ffab/) | FieldFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x538c76...fc7a8e`](./contracts/ethereum-1/0x538c76976ef45b8ca5c12662a86034434bfc7a8e/) | FundraiserFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16b6b2...9a87e5`](./contracts/arbitrum-42161/0x16b6b2deb4b19ddb664167cf8cbe601dfa9a87e5/) | GaugeGettersFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x043a11...69eaec`](./contracts/arbitrum-42161/0x043a11704a9e508a2b03c4dc38ae60dee369eaec/) | GaugePointFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88540c...035308`](./contracts/ethereum-1/0x88540cb124ceecfd0ae95f86d3eb6670b6035308/) | GovernanceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa41d1e...3a8943`](./contracts/arbitrum-42161/0xa41d1e77b711581c4d2fd63d92a25499323a8943/) | InitUpdateOracleImplementation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a5a5a...08e2cd`](./contracts/arbitrum-42161/0x5a5a5ade4c9713172a5228703213d4d39608e2cd/) | Junction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8f2bb1...651a57`](./contracts/arbitrum-42161/0x8f2bb164df87183af23e72d49572052e27651a57/) | L1ReceiverFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53106d...a7e0b1`](./contracts/arbitrum-42161/0x53106dc7d78df1eed36947cf0536d7eccca7e0b1/) | L1RecieverFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698293...c2b400`](./contracts/ethereum-1/0x6982938c28bd93d6f06c5c65d970aa8687c2b400/) | LibClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b6db5...a3eaab`](./contracts/arbitrum-42161/0x3b6db527fedb770049326e846c165d3579a3eaab/) | LibConvert | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4fdc2e...4d0b70`](./contracts/arbitrum-42161/0x4fdc2ebf915322dd693d848d7e4996cb1e4d0b70/) | LibEvaluate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x016159...bf66c1`](./contracts/arbitrum-42161/0x016159b6bc7eaa69d2d9d42ef79ab4fe55bf66c1/) | LibFlood | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x029602...2ac717`](./contracts/arbitrum-42161/0x02960251e6d2ef0ccd79ad1927065f55132ac717/) | LibGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89c115...81c0df`](./contracts/arbitrum-42161/0x89c115109a3e91fcf9f31091af7698f21681c0df/) | LibGerminate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe2f050...e4caa7`](./contracts/arbitrum-42161/0xe2f050e289dd79477a0d98dffff90e4210e4caa7/) | LibIncentive | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8968bf...b9002d`](./contracts/arbitrum-42161/0x8968bf3c83cb25830d34ac3065453460adb9002d/) | LibLockedUnderlying | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08acb7...7fa030`](./contracts/arbitrum-42161/0x08acb7258a3dbca0f040bd2c5f07e97b247fa030/) | LibPipelineConvert | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc64c90...aeecc5`](./contracts/arbitrum-42161/0xc64c90ebaa01ed9ad4810e98d5c794a008aeecc5/) | LibShipping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc3fe04...e4f16e`](./contracts/arbitrum-42161/0xc3fe04099da7a1c19802e463a81afaa3b8e4f16e/) | LibSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x620ff5...6ae7a3`](./contracts/arbitrum-42161/0x620ff53fb1ae879af099c95dbc129f06226ae7a3/) | LibSiloPermit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c5860...9f7981`](./contracts/arbitrum-42161/0x6c5860e9fc6b35cfe3c98a4f5aa686c7cf9f7981/) | LibTokenSilo | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x248738...571abd`](./contracts/arbitrum-42161/0x2487387f67c2ff45c4222a1cfb56be8b34571abd/) | LibWellMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x387e40...978653`](./contracts/arbitrum-42161/0x387e40ed22ee3396288c874411b00c48f6978653/) | LockReleaseTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x69b798...29a8c5`](./contracts/arbitrum-42161/0x69b798425cfff3ae962f6118fd6d6646c829a8c5/) | ManyChainMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c9f43...327776`](./contracts/ethereum-1/0x0c9f436fbef08914c1c68fe04bd573de6e327776/) | MarketplaceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a903...0b740a`](./contracts/ethereum-1/0x16a903b66403d3de69db50e6d1ad0b07490b740a/) | Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5794fd...ccd1d9`](./contracts/arbitrum-42161/0x5794fdb0cfe2abfcb3d22103f5d8c6b4c2ccd1d9/) | MetadataFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x320aae...d02be0`](./contracts/arbitrum-42161/0x320aaebb1a644bed2b86038ede49b81072d02be0/) | OracleFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2cb2d1...034464`](./contracts/arbitrum-42161/0x2cb2d140c42b79f602535e2447e7afa980034464/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x35f697...692965`](./contracts/arbitrum-42161/0x35f6977d9236c0734520878799598ea0fe692965/) | PipelineConvertFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c46f...42f935`](./contracts/ethereum-1/0x46c46fadc886ccd0dfeca903be06bb791142f935/) | Replant1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09d439...b58024`](./contracts/ethereum-1/0x09d439edae1370ec16de6194451fc66f96b58024/) | Replant2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2906f2...f688b5`](./contracts/ethereum-1/0x2906f2b668fc6f9b5c1dea6f7c76e788def688b5/) | Replant7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80a6d3...eab1f5`](./contracts/ethereum-1/0x80a6d3e837965b97d7a84b4c5b3dbff986eab1f5/) | Replant8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xea4b9b...818266`](./contracts/arbitrum-42161/0xea4b9b59a52feeb98e8cb7380b791e0126818266/) | ReseedBarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75c121...cddd85`](./contracts/arbitrum-42161/0x75c1212d7717f5aaa1179c6a71c9afc56ecddd85/) | ReseedBean | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x242bf5...745163`](./contracts/arbitrum-42161/0x242bf5d0eb3ab66d431286a1b2eea704e9745163/) | ReseedPodMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d4c4f...f1edc1`](./contracts/arbitrum-42161/0x3d4c4f48f2a0b7e94aebe629ad85f61a73f1edc1/) | ReseedSiloRevised | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe657b2...04e4ef`](./contracts/arbitrum-42161/0xe657b28ba8f9c08ac6c7efc669c0625da704e4ef/) | ReseedWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x197406...520d27`](./contracts/ethereum-1/0x197406ee97ad1d464194ee0e47efcf5b99520d27/) | SeasonFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd1a006...15fb70`](./contracts/arbitrum-42161/0xd1a0060ba708bc4bcd3da6c37efa8dedf015fb70/) | SeasonFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdf522a...29e34b`](./contracts/arbitrum-42161/0xdf522ac66735cb506d15236cf35938588f29e34b/) | SeasonGettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x555555...feeef5`](./contracts/arbitrum-42161/0x555555987d98079b9f43cdcdbd52dbb24ffeeef5/) | ShipmentPlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x448d33...608065`](./contracts/ethereum-1/0x448d330affa0ad31264c2e6a7b5d2bf579608065/) | SiloFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x51757f...fcd312`](./contracts/arbitrum-42161/0x51757f6c0a662b4fb57e96a903b199d9d0fcd312/) | SiloGettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23d231...38fda2`](./contracts/ethereum-1/0x23d231f37c8f5711468c8abbfbf1757d1f38fda2/) | SiloV2Facet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x146f86...9b87fc`](./contracts/ethereum-1/0x146f86c2ef039f9176bc2434d3da5919c19b87fc/) | TokenFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17ac9d...159a95`](./contracts/arbitrum-42161/0x17ac9d59f4637a16f47c8a77a1c4ee7c7a159a95/) | TokenSupportFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcb84f1...16479b`](./contracts/arbitrum-42161/0xcb84f1a368f303798db6d9ce7b4084aaf316479b/) | TractorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b980a...d61687`](./contracts/arbitrum-42161/0x0b980ab39f9fdf3226b98bc32d96ec180fd61687/) | UnripeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd6fc4a...9a4749`](./contracts/arbitrum-42161/0xd6fc4a63d7e93267c3007ea176081052369a4749/) | UnwrapAndSendETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7ef1d0...addc07`](./contracts/arbitrum-42161/0x7ef1d0449dd48189af968586b2f91c8294addc07/) | WhitelistFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 90 |
| upstream | 14 |
| standard_library | 10 |
| needs_review | 432 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [3390] 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8
- [14981] publications (GitHub directory)
- [14982] www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022

Fork inheritance lineage and inherited audits are included when available.
