# Agentic Audit Brief: Azuro

## Project Overview

- Project: Azuro (`azuro`)
- Website: [https://azuro.org](https://azuro.org)
- Lifecycle: active (Tier 0, 89.5% below peak)
- Generated: 2026-06-10T20:58:57.972Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, bsc, gnosis, linea, polygon
- Contract surface: 304 unique implementations (1870 raw deployments)
- DeFi Llama TVL: $1,067,238.73
- On-chain TVL (included contracts): $3,135.53
- TVL by chain: Base $3,135.53 | Gnosis $0.00 | Polygon $0.00

## Project Description

Azuro is infrastructure for on-chain betting and prediction markets, providing liquidity, market, oracle/resolution, and payout tooling for applications built on the protocol. It should not be characterized primarily as project-owned cross-chain asset movement infrastructure unless supported by Azuro-specific documentation or audited code.

### Architecture

The Core Betting Engine relies on Liquidity and Vaults for funds and Oracles for outcomes, while Token Infrastructure enables cross-chain asset movement. Rewards and Incentives are distributed based on user activity within the betting ecosystem, all managed through shared Factory and Access control contracts.

## Audit Coverage Summary

- Verified implementations audited: 4/61 (6.6%)
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 6
- Unverified implementations: 243
- Unique implementations: 304
- Raw deployments: 1870
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,135.53
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 4 | 6.6% | 2025-04 |
| Pessimistic | Tier 2 | 3 | 4.9% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AzuroBet | unknown | gnosis | 60 deployments: bsc `0x92baea...ee9e17`; gnosis [`0x01b527...b20924`](./contracts/gnosis-100/0x01b527dccb7fd5635e4f83d07dab3b626db20924/); gnosis `0x01e538...5d09e7`; gnosis `0x029723...ba5424`; gnosis `0x084964...7ef937`; gnosis `0x0b6646...48a396`; gnosis `0x0ebb77...cd7678`; gnosis `0x1c84d9...862491`; gnosis `0x1cfe94...061b69`; gnosis `0x1d8fd4...a203a4`; gnosis `0x20138c...92f4c0`; gnosis `0x26cb78...e2fa9b`; gnosis `0x280cd5...60b307`; gnosis `0x32405e...c1c865`; gnosis `0x38d831...6052dc`; gnosis `0x39522d...ab6635`; gnosis `0x3a5fec...d36e99`; gnosis `0x3e00fa...4dc9de`; gnosis `0x44cf66...faeb20`; gnosis `0x608250...64a6bf`; gnosis `0x6453d1...c45196`; gnosis `0x7c771a...5cd8e3`; gnosis `0x7d4e20...6fd083`; gnosis `0x815da7...1dd2c3`; gnosis `0x858372...198241`; gnosis `0x8d416a...acad73`; gnosis `0x97d26f...dea178`; gnosis `0xa3a1b4...2858bf`; gnosis `0xab7367...536a13`; gnosis `0xb1675f...259f43`; gnosis `0xb912a9...0e14df`; gnosis `0xbdbf71...823fc0`; gnosis `0xd7cd93...999089`; gnosis `0xe57125...995002`; polygon `0x1cfe94...061b69`; polygon `0x21b532...cb42ea`; polygon `0x2d6a5a...1ed0c9`; polygon `0x40eb85...4d8b32`; polygon `0x457791...14e520`; polygon `0x6d139b...5cf635`; polygon `0x7a1c3f...b7265b`; polygon `0x8ed729...f01ed7`; polygon `0x97d26f...dea178`; polygon `0xa8bd2f...148d19`; base `0x5da21b...55f369`; base `0x5e16e9...7b209d`; base `0x9ce099...07314e`; base `0xb0b23f...16718e`; base `0xef70b8...290f6f`; base `0xf32840...b7df90`; arbitrum `0xa35ad8...c05027`; arbitrum `0xa8bd2f...148d19`; arbitrum `0xb66773...87bd28`; arbitrum `0xbdbc3c...f8a0a3`; arbitrum `0xc15036...34baba`; linea `0x047227...1821db`; linea `0x0f0da1...557e73`; linea `0x6d139b...5cf635`; linea `0xb9e4cb...097f09`; linea `0xc2f789...f363b2` | ✅ Audited |
| Core | unknown | arbitrum | 41 deployments: gnosis `0x0a727c...3b3b6c`; gnosis `0x0af324...772716`; gnosis `0x209bae...853c2a`; gnosis `0x2a42ff...7ba020`; gnosis `0x3d25be...0a44d0`; gnosis `0x3eb058...28648b`; gnosis `0x3f9168...6a7295`; gnosis `0x4ea252...095a7f`; gnosis `0x5cfefb...9baad8`; gnosis `0x602ad5...650620`; gnosis `0x6b10a8...0fe3da`; gnosis `0x6d890b...c61d77`; gnosis `0x869dff...31c279`; gnosis `0x8d3b04...b49a03`; gnosis `0x97d0d1...320d4b`; gnosis `0x97d3b0...2afeca`; gnosis `0x998aaa...85f20f`; gnosis `0x99cff7...41bc6f`; gnosis `0x9a8e86...0cfe6a`; gnosis `0x9f119e...740d86`; gnosis `0xa07e6d...e5b19c`; gnosis `0xa43328...de6bd0`; gnosis `0xad31c1...668eff`; gnosis `0xb14a6a...1b3a61`; gnosis `0xbb5550...1a8623`; gnosis `0xbc6243...9198ba`; gnosis `0xbdbc3c...f8a0a3`; gnosis `0xc4849b...d558dc`; gnosis `0xcfd106...fb522d`; gnosis `0xd222bf...c4af45`; gnosis `0xe234d1...cb2c8c`; gnosis `0xebb163...43e7b5`; gnosis `0xfb5680...e1422f`; polygon `0xc11f8a...e422d3`; polygon `0xe122f6...6edb03`; arbitrum [`0x04a9e7...30bacb`](./contracts/arbitrum-42161/0x04a9e70e6b1536f051b2bc523f17ae498330bacb/); arbitrum `0x3b8841...5ba904`; arbitrum `0x5fafe8...3e78cf`; linea `0x32405e...c1c865`; linea `0x3656d5...0cd0fb`; linea `0x795b48...6dce92` | ✅ Audited |
| LP | unknown | polygon | 99 deployments: bsc `0x934097...2a8d17`; bsc `0xd10258...b918c3`; gnosis `0x050ac1...5918d9`; gnosis `0x09ce75...77f0b6`; gnosis `0x0a1818...24dcd4`; gnosis `0x0c2f50...7f6dbd`; gnosis `0x1081e3...f15f62`; gnosis `0x1091f6...9a71c6`; gnosis `0x140267...192123`; gnosis `0x1d08f1...d5dd48`; gnosis `0x1ec4f4...3e2de0`; gnosis `0x2025c7...50fcd1`; gnosis `0x204e73...c843ed`; gnosis `0x360c08...ce0e63`; gnosis `0x3b24f4...deefcd`; gnosis `0x3d82f1...1ae4ec`; gnosis `0x3f7c59...53e57b`; gnosis `0x4024a4...e678dc`; gnosis `0x4485c3...8c285e`; gnosis `0x4a2c70...65e582`; gnosis `0x4c7d9c...6a03d6`; gnosis `0x4c9a9b...4bb554`; gnosis `0x4e984a...d2763f`; gnosis `0x5f4b99...01cea6`; gnosis `0x607e7c...ceec1b`; gnosis `0x687627...42043a`; gnosis `0x6d139b...5cf635`; gnosis `0x72a5e0...168bdd`; gnosis `0x82d045...236f12`; gnosis `0x83382e...29d766`; gnosis `0x871f8a...9040e2`; gnosis `0x8c4853...e82744`; gnosis `0x96b171...ac1fd4`; gnosis `0x972246...ef9649`; gnosis `0x98c98b...1eff6c`; gnosis `0x9e6be4...edcd5a`; gnosis `0xa94985...0fbac4`; gnosis `0xb495ca...567018`; gnosis `0xb4e403...99b726`; gnosis `0xbd3e86...779af2`; gnosis `0xc2810e...0577f5`; gnosis `0xc58d44...00f166`; gnosis `0xc9a714...1032f0`; gnosis `0xca46f2...19d9c2`; gnosis `0xcafa17...49a436`; gnosis `0xccefea...a81ae5`; gnosis `0xdf794a...322e84`; gnosis `0xe122f6...6edb03`; gnosis `0xe7a0f0...7baf83`; gnosis `0xe81664...144f38`; gnosis `0xe838a2...1fc257`; gnosis `0xeb7cda...1d97e7`; gnosis `0xf33626...dee6c7`; gnosis `0xf7caaf...28d757`; gnosis `0xfde055...507293`; gnosis `0xfe199c...09622b`; polygon [`0x008701...43e24a`](./contracts/polygon-137/0x00870109124e01867856c3b6a1b984354e43e24a/); polygon `0x0fa7fb...5de1b8`; polygon `0x12510f...d43214`; polygon `0x2b2189...ac6d5f`; polygon `0x2f2f55...b40d72`; polygon `0x32405e...c1c865`; polygon `0x576903...eb3fde`; polygon `0x5ed627...1bae70`; polygon `0x6203f9...6eaad3`; polygon `0x7043e4...c11b36`; polygon `0x795b48...6dce92`; polygon `0x9e6be4...edcd5a`; polygon `0xb0ba89...e820bd`; polygon `0xb7e8a9...518686`; polygon `0xbdba7c...01b513`; polygon `0xf1d55e...a6a089`; polygon `0xf5c1b9...f4ba45`; base `0x118ea8...ba125f`; base `0x14375f...0c8224`; base `0x17fee9...c9bfc3`; base `0x1ed736...63af87`; base `0x2d6a5a...1ed0c9`; base `0x583cc3...95e50d`; base `0x5d243a...e69d66`; base `0x7f18d7...674914`; base `0x9e6be4...edcd5a`; base `0xf22e9e...237db1`; base `0xf7e4e7...bd35b7`; arbitrum `0x0eedf0...079ee1`; arbitrum `0x12510f...d43214`; arbitrum `0x20513b...e90038`; arbitrum `0x57c762...5e9470`; arbitrum `0x99f635...991259`; arbitrum `0xa0a755...32f630`; arbitrum `0xc50b42...587451`; arbitrum `0xc99477...809f14`; linea `0x056493...d973bc`; linea `0x19373b...b0a125`; linea `0x20b371...a66996`; linea `0x5ed627...1bae70`; linea `0xa8bd2f...148d19`; linea `0xc36522...bd8eee`; linea `0xc65b0d...e41644` | ✅ Audited |
| PayMaster | unknown | polygon | 13 deployments: bsc `0x3445f0...d5fa89`; bsc `0x4a6a41...25dbc2`; gnosis `0x3ebf1a...4dd94e`; gnosis `0x8c225b...dc2138`; gnosis `0x943dd8...7d2172`; gnosis `0xbd11bc...c3d1b6`; gnosis `0xda26cb...6e9818`; polygon [`0x303a07...4f0861`](./contracts/polygon-137/0x303a0784d639f408ac21324d9ec8f069f24f0861/); polygon `0xec3d8b...1fb4af`; polygon `0xed5760...a877e1`; base `0x4a2bb4...d19095`; base `0x72954c...30d744`; base `0x745764...5d12a0` | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RewardPoolV2 | core_logic | polygon | 10 deployments: polygon [`0x0f64c0...c979f9`](./contracts/polygon-137/0x0f64c08c4ba4a88bf7c0044a1bdd33df2ac979f9/); polygon `0x3a5fec...d36e99`; polygon `0x57a94e...c061e5`; polygon `0x6d890b...c61d77`; polygon `0x7006ea...c6dabe`; polygon `0xb4774d...9a1ff0`; polygon `0xcbd197...88f22a`; polygon `0xf52600...11bb36`; base `0xa8bd2f...148d19`; base `0xe40fde...42ed6f` | ⚠️ Unaudited |
| Pool | core_logic | base | 9 deployments: base [`0x016bfc...79f692`](./contracts/base-8453/0x016bfcf480a742f0d9709bb1fd9ce7bdcc79f692/); base `0x01e538...5d09e7`; base `0x043bf2...13263f`; base `0x04a9e7...30bacb`; base `0x172fb4...74abbd`; base `0x3f7c59...53e57b`; base `0x64df1a...0fe470`; base `0x66986d...13ec8c`; base `0x7738f0...e70cbf` | ⚠️ Unaudited |
| Vault | core_logic | polygon | 12 deployments: bsc `0x5e16e9...7b209d`; gnosis `0x14564e...5393bb`; gnosis `0x8de163...87adc7`; gnosis `0xa45573...2bd25d`; polygon [`0x0ee364...ac584e`](./contracts/polygon-137/0x0ee36478106ca03892d20c5bfb2c1572c6ac584e/); polygon `0x1a0612...e69d2c`; polygon `0x583cc3...95e50d`; polygon `0x64f185...7a58cc`; base `0x21b532...cb42ea`; base `0xae684d...346030`; base `0xba390f...6c7a0c`; base `0xd10258...b918c3` | ⚠️ Unaudited |
| Access | unknown | arbitrum | 131 deployments: bsc `0x9e6be4...edcd5a`; gnosis `0x0882bd...ff3a4f`; gnosis `0x0d4660...7b1ca2`; gnosis `0x0de86b...a5f97e`; gnosis `0x0faed2...da7be6`; gnosis `0x0ffba8...5fa186`; gnosis `0x147a71...da6032`; gnosis `0x156fe8...f4c4dd`; gnosis `0x16c9b2...daefba`; gnosis `0x17d02f...0ce24a`; gnosis `0x1fb86e...f835c5`; gnosis `0x220613...03da89`; gnosis `0x225a3a...5aaf19`; gnosis `0x270da9...a52077`; gnosis `0x307993...593372`; gnosis `0x308180...f92599`; gnosis `0x38a7a5...daddf7`; gnosis `0x393b27...550ea8`; gnosis `0x3f5947...43d1fa`; gnosis `0x415a8d...ea5081`; gnosis `0x4a8103...44e575`; gnosis `0x4c9578...4c0162`; gnosis `0x4cc172...99b947`; gnosis `0x50a017...d5e561`; gnosis `0x50bb82...a78817`; gnosis `0x50f6a7...f0e0bb`; gnosis `0x52746c...091157`; gnosis `0x553631...5ce283`; gnosis `0x5cf91c...b9eb8d`; gnosis `0x5d3e2e...33be6e`; gnosis `0x609942...cea210`; gnosis `0x615446...40355d`; gnosis `0x650f82...127cd1`; gnosis `0x6de5f9...27cfcf`; gnosis `0x6e7449...1fa239`; gnosis `0x6f169c...a2a559`; gnosis `0x70738d...0ba046`; gnosis `0x73c465...08878a`; gnosis `0x74e932...fda442`; gnosis `0x788565...d0b0a6`; gnosis `0x7a2562...cce517`; gnosis `0x80db26...335f6e`; gnosis `0x83e712...a45dc2`; gnosis `0x8a907c...66bf9a`; gnosis `0x8d517b...b8ca94`; gnosis `0x9275d7...0ab0af`; gnosis `0x934321...26bc0c`; gnosis `0x97b9e8...a3f756`; gnosis `0x9b03e8...0cb1d9`; gnosis `0x9d8904...ca34d4`; gnosis `0x9e59d3...f91f49`; gnosis `0x9efe60...6e1075`; gnosis `0x9fdf39...344e6e`; gnosis `0xa04184...60a379`; gnosis `0xa75228...8c18ff`; gnosis `0xac54ba...0479eb`; gnosis `0xb203da...b1387c`; gnosis `0xb66c6e...7993ce`; gnosis `0xb7bab6...096a65`; gnosis `0xba98b0...cd9a06`; gnosis `0xbd26c5...f1f20a`; gnosis `0xbd53c6...12445e`; gnosis `0xbfb9ca...67005a`; gnosis `0xc3e158...5cba9b`; gnosis `0xc43385...cf6063`; gnosis `0xc6c6b2...2def08`; gnosis `0xc99b19...7d8dc9`; gnosis `0xcb91a6...dae0d8`; gnosis `0xcd3dc4...fa05dc`; gnosis `0xce2bdf...3509ee`; gnosis `0xd00291...7b5c7c`; gnosis `0xd19bbf...ad24b2`; gnosis `0xd88fd7...d25e69`; gnosis `0xdabd22...082d19`; gnosis `0xdfcb2a...eea5a0`; gnosis `0xe15a53...9c8d74`; gnosis `0xec4960...7a2980`; gnosis `0xf2524d...531ff2`; gnosis `0xf61a9b...ab7840`; gnosis `0xf6fb2e...52f90a`; gnosis `0xf9d5db...6e4bf9`; gnosis `0xfaf270...974717`; gnosis `0xfb57e6...f79138`; polygon `0x1540c7...5924f6`; polygon `0x2535a4...de8d53`; polygon `0x267f6e...7827c4`; polygon `0x39b71e...279061`; polygon `0x3b3926...ebe703`; polygon `0x3ebf1a...4dd94e`; polygon `0x5366b1...edb35a`; polygon `0x5da21b...55f369`; polygon `0x5e16e9...7b209d`; polygon `0x6be076...b4874a`; polygon `0x76c3b2...3591c2`; polygon `0x8a58b0...5fd8e9`; polygon `0x92baea...ee9e17`; polygon `0x99cff7...41bc6f`; polygon `0xd10258...b918c3`; polygon `0xd54511...e9658f`; polygon `0xde4f52...957aea`; polygon `0xe63237...d514d9`; polygon `0xe86b83...6bfb5b`; polygon `0xebbb12...771ef8`; polygon `0xed8b2b...2cd271`; polygon `0xf0ffec...1565ce`; base `0x12510f...d43214`; base `0x200bd6...c3da5e`; base `0x3445f0...d5fa89`; base `0x3a3470...aeabd9`; base `0x92baea...ee9e17`; base `0xa02625...9ea5b1`; base `0xdd180c...8cc35f`; arbitrum [`0x052b7f...a1d210`](./contracts/arbitrum-42161/0x052b7f69094b140061a11afcdf12373adfa1d210/); arbitrum `0x0f0da1...557e73`; arbitrum `0x120e55...1cc124`; arbitrum `0x2535a4...de8d53`; arbitrum `0x31c396...4d299c`; arbitrum `0x4d19c9...84ae9b`; arbitrum `0x8a4be2...c859bf`; arbitrum `0xaad3d1...6ed4e0`; arbitrum `0xac40b1...7f4283`; arbitrum `0xcdf7bb...447e6f`; linea `0x0f3dcf...d7c734`; linea `0x2f3343...ce517e`; linea `0x401858...eddc3c`; linea `0x43f7a5...9653f0`; linea `0x5fafe8...3e78cf`; linea `0x600d18...74b4b4`; linea `0x99cff7...41bc6f`; linea `0xaaf613...acd777`; linea `0xeda5b0...8398e6` | ⚠️ Unaudited |
| AffiliateHelper | periphery | gnosis | 15 deployments: gnosis [`0x0dbaa7...fd306b`](./contracts/gnosis-100/0x0dbaa72e5c027afd633e3cf268f3658eb5fd306b/); gnosis `0x4a58c8...b7727c`; gnosis `0x550d83...e524c1`; gnosis `0x5a22bf...30e51e`; gnosis `0x6b53ac...25dd3e`; gnosis `0x757eef...5066e1`; gnosis `0x987e31...d7bb82`; gnosis `0xac7c16...555703`; gnosis `0xb769c3...0d5365`; gnosis `0xbc2ea1...1a7a7b`; gnosis `0xbd6408...7cf9bf`; gnosis `0xeebfe3...357009`; polygon `0xe81664...144f38`; arbitrum `0xef70b8...290f6f`; linea `0x97d26f...dea178` | ⚠️ Unaudited |
| AirDrop | operational_periphery | polygon | 9 deployments: gnosis `0x3656d5...0cd0fb`; polygon [`0x0d4b40...e12625`](./contracts/polygon-137/0x0d4b4037e83119d4726e8e73d6e68eac3ae12625/); polygon `0x22d4f5...d345db`; polygon `0x44ca5a...61cfb7`; polygon `0xc49d37...163f18`; polygon `0xec9dd3...5f7868`; polygon `0xee9f60...c0480b`; polygon `0xf81326...c05f72`; polygon `0xff0b96...56cb7f` | ⚠️ Unaudited |
| AirDropRuleBased | operational_periphery | polygon | 18 deployments: gnosis `0x74a80d...b03052`; gnosis `0xc3d3ae...ec8273`; gnosis `0xd88bf5...a04e36`; gnosis `0xe33d89...1354ac`; polygon [`0x016bfc...79f692`](./contracts/polygon-137/0x016bfcf480a742f0d9709bb1fd9ce7bdcc79f692/); polygon `0x042cdd...0d2542`; polygon `0x0bb1c1...185694`; polygon `0x0eedf0...079ee1`; polygon `0x3e54a5...e4a7c0`; polygon `0x51b817...e4780c`; polygon `0xd354c9...d5c4ad`; arbitrum `0x47fc8f...ee0119`; arbitrum `0xb14614...3c45d5`; arbitrum `0xd3994b...417843`; linea `0x2535a4...de8d53`; linea `0xea0ab7...f7f1f7`; linea `0xf0e82d...f1ecee`; linea `0xf62926...c7be0a` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BeaconProxy | registry | gnosis | 2 deployments: gnosis [`0x0223ff...6f1500`](./contracts/gnosis-100/0x0223ff7efca5aec919c471fa2eb44cda466f1500/); polygon `0xc38955...cdcd04` | ⚠️ Unaudited |
| BetExpress | unknown | arbitrum | 61 deployments: gnosis `0x0a4da2...f137a1`; gnosis `0x0ac7ac...5759f1`; gnosis `0x0c68df...204bc3`; gnosis `0x1e08fc...2b9477`; gnosis `0x243825...19e0ad`; gnosis `0x442ab0...c63386`; gnosis `0x474837...d423f4`; gnosis `0x50ece6...42c931`; gnosis `0x56b169...e39100`; gnosis `0x5ade5e...26b463`; gnosis `0x5bd5a5...aabf72`; gnosis `0x665dc1...11101c`; gnosis `0x67e096...76f011`; gnosis `0x76a0ad...701c9b`; gnosis `0x7cfb81...db22b7`; gnosis `0x8ea2ec...81d84c`; gnosis `0x9e87aa...d633a1`; gnosis `0xb2eea9...d2fda2`; gnosis `0xb757ce...0634ea`; gnosis `0xc3eae9...699102`; gnosis `0xc93acf...572966`; gnosis `0xcc2685...11c34a`; gnosis `0xcfc1a0...16d3d5`; gnosis `0xdac2b8...b7145f`; gnosis `0xdbc3be...3b0f7c`; gnosis `0xdf52f5...05aa79`; gnosis `0xe34f5f...9e994c`; gnosis `0xe69f69...285577`; gnosis `0xef05a0...b7517b`; gnosis `0xfe42dd...b7c669`; polygon `0x3a3470...aeabd9`; polygon `0x5fafe8...3e78cf`; polygon `0x8d6e55...c4c008`; polygon `0x92a4e8...e07613`; polygon `0x934179...98f37c`; polygon `0xb9f631...e0a8ca`; polygon `0xc4849b...d558dc`; polygon `0xec88d9...49d4f1`; polygon `0xecde8d...7317b0`; base `0x43f7a5...9653f0`; base `0x4731bb...e382ed`; arbitrum [`0x016bfc...79f692`](./contracts/arbitrum-42161/0x016bfcf480a742f0d9709bb1fd9ce7bdcc79f692/); arbitrum `0x0a6294...1dce12`; arbitrum `0x194237...aef3fc`; arbitrum `0x2cd268...61eb96`; arbitrum `0x526f1f...fb9d75`; arbitrum `0x6f147f...10cb43`; arbitrum `0xa02625...9ea5b1`; arbitrum `0xb8836a...659627`; arbitrum `0xcc41e2...b309da`; arbitrum `0xe9f7e1...ee8537`; linea `0x0e64f9...605327`; linea `0x267f6e...7827c4`; linea `0x4594c2...8dec61`; linea `0x482b90...b89540`; linea `0x4d19c9...84ae9b`; linea `0x57c762...5e9470`; linea `0x6453d1...c45196`; linea `0xaf2842...2d5377`; linea `0xf3be56...e62ab5`; linea `0xf88747...263627` | ⚠️ Unaudited |
| CashOut | unknown | polygon | 24 deployments: bsc `0x3d59f8...881610`; bsc `0x81f72b...084b32`; gnosis `0x25de22...cdc891`; gnosis `0x26efc7...05b1d1`; gnosis `0x483779...1ce019`; gnosis `0x69b163...81e9c2`; gnosis `0x7145e4...05a5af`; gnosis `0xbb603d...9533b7`; gnosis `0xf8939a...8668b4`; gnosis `0xf8e7f2...2e0150`; gnosis `0xf8edaf...5b89f9`; polygon [`0x00d974...1eb674`](./contracts/polygon-137/0x00d974fa56041dfa65e369a90695b00fc21eb674/); polygon `0x365f97...0627be`; polygon `0x39ee8d...f0d977`; polygon `0x4a2bb4...d19095`; polygon `0x717a99...970fc4`; polygon `0x72954c...30d744`; polygon `0xac49e3...feee58`; polygon `0xfd6cde...942fcb`; base `0x026f87...dd4263`; base `0x6a8988...97bce4`; base `0x6edff2...af14be`; base `0xda26cb...6e9818`; base `0xffff92...03f0ad` | ⚠️ Unaudited |
| CoreTools | unknown | gnosis | 6 deployments: gnosis [`0x4b890c...086b92`](./contracts/gnosis-100/0x4b890c5f543d56c2fe92969f2f161b3059086b92/); gnosis `0x85e905...de3ee9`; gnosis `0x94f08c...657b1a`; gnosis `0xcbdf12...0ed34a`; gnosis `0xd70810...242db1`; gnosis `0xe656de...3885a4` | ⚠️ Unaudited |
| CounterV1 | unknown | gnosis | 3 deployments: gnosis [`0x01c5f3...bc961f`](./contracts/gnosis-100/0x01c5f3966d4fda7c048e8659198875ccddbc961f/); gnosis `0x1d37b2...9ba739`; gnosis `0xfe4a17...4041ea` | ⚠️ Unaudited |
| CounterV2 | unknown | gnosis | 2 deployments: gnosis [`0x89a298...566439`](./contracts/gnosis-100/0x89a2980ab38497a1ebed5b87fabdc497bd566439/); gnosis `0xa062bc...9bfa72` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | [`0xa21943...e12b93`](./contracts/linea-59144/0xa219439258ca9da29e9cc4ce5596924745e12b93/) | ⚠️ Unaudited |
| DataEmitter | unknown | bsc | 11 deployments: bsc [`0x0f0a7d...338a12`](./contracts/bsc-56/0x0f0a7debeced3ed0743beacbe787bfcb56338a12/); bsc `0x3995ee...de3692`; gnosis `0x13ab5a...c6cb99`; gnosis `0x650898...862256`; polygon `0x6277a1...b48d9a`; polygon `0x64651b...588e5e`; polygon `0x6cb0e3...8b49e2`; polygon `0x716aa1...b8693f`; polygon `0xe45830...69461e`; base `0x1f7e3e...e90632`; base `0x691701...e4614e` | ⚠️ Unaudited |
| DepositPaymaster | unknown | gnosis | [`0xabad2f...d22214`](./contracts/gnosis-100/0xabad2f5cb4ae44e158405292b43338ebf0d22214/) | ⚠️ Unaudited |
| DevOpsTools | unknown | gnosis | [`0xa8dc1d...a34188`](./contracts/gnosis-100/0xa8dc1d4bb0e2e8c0327783cc174e7d88fea34188/) | ⚠️ Unaudited |
| EntryPoint | unknown | gnosis | [`0xf5bf2a...c5ffc1`](./contracts/gnosis-100/0xf5bf2a0441e28034b03b642c19787bb505c5ffc1/) | ⚠️ Unaudited |
| Factory | registry | gnosis | 109 deployments: bsc `0x0ee364...ac584e`; bsc `0xb7e8a9...518686`; gnosis [`0x020f0b...bbca35`](./contracts/gnosis-100/0x020f0b8598508eef513f26dc38c4ea38f9bbca35/); gnosis `0x03cdd9...fb4259`; gnosis `0x07991a...7e2892`; gnosis `0x080d71...5f1587`; gnosis `0x091d6b...e76bea`; gnosis `0x0aab7c...7e8c02`; gnosis `0x0bb1c1...185694`; gnosis `0x0dc0be...e9e42c`; gnosis `0x1006f8...527112`; gnosis `0x1a4490...ab83a8`; gnosis `0x1bc247...597b8a`; gnosis `0x1d5a94...8fb3de`; gnosis `0x20aa87...72d8f0`; gnosis `0x2404e1...9bae52`; gnosis `0x243f32...6d5418`; gnosis `0x2697e5...56c9aa`; gnosis `0x275e6b...27973d`; gnosis `0x2a2df3...1fe45d`; gnosis `0x2d2fdb...ed59de`; gnosis `0x2e07c9...cbd521`; gnosis `0x31192e...5aeda8`; gnosis `0x342c86...eda0ff`; gnosis `0x3471a4...081c02`; gnosis `0x34e816...8179c1`; gnosis `0x358181...0eb943`; gnosis `0x398626...7d1906`; gnosis `0x45495f...d12d7f`; gnosis `0x48c4a3...53575a`; gnosis `0x4c0c1a...94609d`; gnosis `0x4dab4a...454111`; gnosis `0x53a9a9...908da7`; gnosis `0x53c856...d8ddc0`; gnosis `0x567fb2...418139`; gnosis `0x5b1953...f0dfa2`; gnosis `0x60e91c...7e313a`; gnosis `0x6a2e7f...74139d`; gnosis `0x6b2bc6...c37d85`; gnosis `0x6b6607...226505`; gnosis `0x780f09...00da40`; gnosis `0x7ae464...3533c9`; gnosis `0x7bac53...a81899`; gnosis `0x7ceb4e...24784f`; gnosis `0x82dd67...b913fb`; gnosis `0x83b871...5a1096`; gnosis `0x84582e...53ac83`; gnosis `0x8d6e55...c4c008`; gnosis `0x8ded75...6125a9`; gnosis `0x8ea1a7...619c03`; gnosis `0x8ec5b9...8591fb`; gnosis `0x931ee9...2e8150`; gnosis `0x934fe3...bd2ee0`; gnosis `0x9a95df...fa88e6`; gnosis `0x9b5c5b...bc304a`; gnosis `0x9bbd71...f7b617`; gnosis `0x9dd014...a1a962`; gnosis `0xa0db6b...5b5d0d`; gnosis `0xa5a681...36616c`; gnosis `0xa938ff...c9b498`; gnosis `0xaa3f94...3e8ee5`; gnosis `0xbad9b1...9dc37f`; gnosis `0xbc54d7...302e9a`; gnosis `0xc5fbda...100466`; gnosis `0xcea16e...c845b4`; gnosis `0xcf844c...5822fa`; gnosis `0xd10258...b918c3`; gnosis `0xd1c3d5...4ddba7`; gnosis `0xd49b76...04bc91`; gnosis `0xd68f95...d0f8af`; gnosis `0xd78e6c...c75e54`; gnosis `0xdc1b3b...557a85`; gnosis `0xe9239f...18dac5`; gnosis `0xe97939...63b592`; gnosis `0xed4458...b38bd4`; gnosis `0xf06c43...c3f653`; gnosis `0xf208b4...1a3547`; gnosis `0xf2535b...67f9bf`; gnosis `0xf81498...6987ad`; gnosis `0xf8e166...43b1a2`; gnosis `0xf9e002...0bd378`; gnosis `0xfc8bce...c9b21c`; gnosis `0xffaa64...9577e8`; polygon `0x0cba83...d7f5a6`; polygon `0x0cdad6...4d8f67`; polygon `0x43f7a5...9653f0`; polygon `0x459748...1bc9f1`; polygon `0x4a6a41...25dbc2`; polygon `0x8aa1bd...c19f21`; polygon `0xa35ad8...c05027`; polygon `0xa43328...de6bd0`; polygon `0xde3e9a...a0203d`; base `0x3d59f8...881610`; base `0x6203f9...6eaad3`; base `0xb25d3c...8d3f94`; base `0xbce8b1...d00ab4`; base `0xe9f7e1...ee8537`; base `0xf0ffec...1565ce`; arbitrum `0x3e54a5...e4a7c0`; arbitrum `0x4e9ecb...231b2a`; arbitrum `0x711b6d...695a7a`; arbitrum `0x752735...1039ef`; arbitrum `0xf7e4e7...bd35b7`; linea `0x71ec7e...a4bd6c`; linea `0x8e1823...6eab5f`; linea `0xc11f8a...e422d3`; linea `0xe40fde...42ed6f`; linea `0xe81664...144f38`; linea `0xeeb34b...09e7ae` | ⚠️ Unaudited |
| FreeBetFactory | registry | gnosis | 24 deployments: gnosis [`0x00a762...31b3e5`](./contracts/gnosis-100/0x00a7629689073bf8f343de80fbbc34425131b3e5/); gnosis `0x145c85...411854`; gnosis `0x26c32a...1ecf57`; gnosis `0x33d176...7823f8`; gnosis `0x5578b0...132267`; gnosis `0x5ec14a...0a48a9`; gnosis `0x5fcc46...aa674a`; gnosis `0x81278f...2ac392`; gnosis `0x9d95b2...347054`; gnosis `0xa6a218...9abd75`; gnosis `0xaa2e88...5245fb`; gnosis `0xb34566...ad37f5`; gnosis `0xb395d4...f3afa6`; gnosis `0xca40b5...d39540`; polygon `0x91a8a8...085a6e`; polygon `0xe0a508...3ce128`; base `0x979b85...abec85`; base `0xa18ebc...dc5e1b`; base `0xbee5d7...1f5086`; arbitrum `0x2102be...c26d1e`; arbitrum `0x871088...4ddbff`; arbitrum `0xae0830...f385fe`; linea `0x6e1784...3cacb9`; linea `0xa02625...9ea5b1` | ⚠️ Unaudited |
| MediaPrediction | unknown | polygon | 11 deployments: polygon [`0x162af2...7c52a0`](./contracts/polygon-137/0x162af2c66ee03740aed5f3315ecb57d1597c52a0/); polygon `0x324ed9...a5d369`; polygon `0x4a8295...a12125`; polygon `0x64f881...4a96ec`; polygon `0x66faaf...722bc8`; polygon `0x78aed4...c4494a`; polygon `0x7cac28...89bffd`; polygon `0x9b8976...aba701`; polygon `0xd95257...eb7fa1`; polygon `0xedf9e8...883bd1`; polygon `0xefcc6b...c89ec1` | ⚠️ Unaudited |
| MigrateAdmin | unknown | gnosis | 6 deployments: gnosis [`0x3d59f8...881610`](./contracts/gnosis-100/0x3d59f8f50354e3c0badfc980ad3b7a0193881610/); gnosis `0x5d243a...e69d66`; polygon `0x7b5a70...dafd9a`; polygon `0xda26cb...6e9818`; base `0xa48f89...874e48`; base `0xfe79d3...10b340` | ⚠️ Unaudited |
| Money | unknown | polygon | [`0xc90b2e...5e4867`](./contracts/polygon-137/0xc90b2e7f6cbcd09e2c87f4d8544a887e3c5e4867/) | ⚠️ Unaudited |
| Payer | unknown | polygon | 2 deployments: polygon [`0x3c3992...8af2c3`](./contracts/polygon-137/0x3c3992198e36e46b555e2fc301b3c62c1c8af2c3/); polygon `0xc17724...e89e96` | ⚠️ Unaudited |
| PenaltyGame | unknown | gnosis | 8 deployments: gnosis [`0x14170c...5dad7a`](./contracts/gnosis-100/0x14170cb784cd2c33938a3c636d682de4bc5dad7a/); gnosis `0x325e62...51fab6`; gnosis `0x7b6935...4ab338`; gnosis `0x80f3e7...1754f4`; gnosis `0xad31ff...391c30`; gnosis `0xb8fe2f...19efd8`; gnosis `0xc3ffa8...c82792`; gnosis `0xdb0f37...cae64d` | ⚠️ Unaudited |
| PoolBetting | core_logic | gnosis | 12 deployments: gnosis [`0x047227...1821db`](./contracts/gnosis-100/0x0472274a079d4710c3b347aeb648fb6f1b1821db/); gnosis `0x1f7e3e...e90632`; gnosis `0x2535a4...de8d53`; gnosis `0x39d11d...ac2376`; gnosis `0x3cff24...5d3de9`; gnosis `0x5a2cda...2249fe`; gnosis `0x5a4e68...5085d9`; gnosis `0x7003ca...63304f`; gnosis `0xaaba51...c7c077`; gnosis `0xc65b0d...e41644`; gnosis `0xdf6cd0...9c3f54`; gnosis `0xe63237...d514d9` | ⚠️ Unaudited |
| PowerToken | token | polygon | 2 deployments: polygon [`0x04c78c...bc9ac2`](./contracts/polygon-137/0x04c78cd50856908c5380504ec2829f54aabc9ac2/); polygon `0x54c7b4...a7920d` | ⚠️ Unaudited |
| PrematchCore | unknown | polygon | 48 deployments: gnosis `0x21fcd7...fc3293`; gnosis `0x2733d2...f57ae5`; gnosis `0x319c39...5ea8f4`; gnosis `0x33c0b1...5229b8`; gnosis `0x44ff7c...2fb58b`; gnosis `0x4e21f7...525dd0`; gnosis `0x6b04c4...f1595b`; gnosis `0x6ecbd7...665894`; gnosis `0x704b0e...27d3ae`; gnosis `0x7f3f3f...4091ef`; gnosis `0x8ffb24...4c2c1a`; gnosis `0x9147d1...bbd358`; gnosis `0x9339f4...432525`; gnosis `0x958121...ae33a3`; gnosis `0x9a0510...2f737a`; gnosis `0x9bde38...61926b`; gnosis `0xa05730...00e50d`; gnosis `0xa15de2...17ad71`; gnosis `0xc65d8c...df46df`; gnosis `0xcaf536...52e1ce`; gnosis `0xcbc63d...9a5404`; gnosis `0xd4fd0b...9b9c86`; gnosis `0xd7d31e...5db61c`; gnosis `0xfc1785...76c5ad`; polygon [`0x0721ba...ff4c43`](./contracts/polygon-137/0x0721ba08155727718b5228621b0c914eedff4c43/); polygon `0x0a6294...1dce12`; polygon `0x209bae...853c2a`; polygon `0x35956b...6d9098`; polygon `0x57c762...5e9470`; polygon `0x6a5410...54fe9f`; polygon `0xa40f8d...5bfcf7`; polygon `0xab5dcb...29de41`; polygon `0xce7933...3a6395`; polygon `0xd0d6cc...65b5be`; base `0x752735...1039ef`; base `0xf5a6b7...6aa3fc`; arbitrum `0x0d4b40...e12625`; arbitrum `0x23724e...fd9a1a`; arbitrum `0x276f29...d00294`; arbitrum `0x441715...78471f`; arbitrum `0x504a62...e6e823`; arbitrum `0xa938ff...c9b498`; linea `0x3e00fa...4dc9de`; linea `0x761376...d135bb`; linea `0x83382e...29d766`; linea `0xa35ad8...c05027`; linea `0xc57dc3...9d347a`; linea `0xd54511...e9658f` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | base | 9 deployments: base [`0x3471a4...081c02`](./contracts/base-8453/0x3471a4067c1925ce879fe2e0c1d2a84eef081c02/); base `0x4eab13...040950`; base `0x8d6e55...c4c008`; base `0x94bb8f...6d8214`; base `0xb08d02...cc813e`; base `0xc99477...809f14`; base `0xd3994b...417843`; base `0xe3de05...305fc8`; base `0xf412a6...7362b6` | ⚠️ Unaudited |
| ProxyAdmin | governance | gnosis | 50 deployments: gnosis [`0x010158...da8a68`](./contracts/gnosis-100/0x010158c06490208c3b58c29c55d83a2778da8a68/); gnosis `0x052b7f...a1d210`; gnosis `0x054452...ec4fae`; gnosis `0x08ed00...4116f5`; gnosis `0x0a6294...1dce12`; gnosis `0x0b0de2...7ba1af`; gnosis `0x17fee9...c9bfc3`; gnosis `0x3c1e13...ee5111`; gnosis `0x3d6795...340426`; gnosis `0x465da8...78bf5f`; gnosis `0x490f2b...7d0732`; gnosis `0x4d19c9...84ae9b`; gnosis `0x576260...629bf6`; gnosis `0x668778...6e59a8`; gnosis `0x66b410...e8fd09`; gnosis `0x6a8988...97bce4`; gnosis `0x784c8d...33019a`; gnosis `0x89006d...51c6a7`; gnosis `0x8bb281...6bde09`; gnosis `0xd1bb0c...74683b`; gnosis `0xe6dba7...5469ec`; gnosis `0xea8bf4...f6732d`; gnosis `0xf3be56...e62ab5`; gnosis `0xfc7b2b...20098c`; polygon `0x121178...324fdd`; polygon `0x387cb9...5e0b4c`; polygon `0x42791a...c57940`; polygon `0x504a62...e6e823`; polygon `0x64b6d9...d94917`; polygon `0x6edff2...af14be`; polygon `0x9b65d8...5e7795`; polygon `0xa07e6d...e5b19c`; polygon `0xac40b1...7f4283`; polygon `0xb1e783...2b0f35`; polygon `0xb7da1c...fbd24e`; polygon `0xd40cdc...2147e0`; polygon `0xdb8210...1d291a`; polygon `0xfbb2e2...18f7f5`; base `0xaa05fa...878cb3`; base `0xdaaf88...4aedc1`; arbitrum `0x2f3343...ce517e`; arbitrum `0xaa17e9...043ed1`; arbitrum `0xe810af...dddd8a`; arbitrum `0xec9ce7...edea85`; linea `0x3df16f...0ffd23`; linea `0x43d4a5...f97f26`; linea `0x45495f...d12d7f`; linea `0x5a2cda...2249fe`; linea `0xe122f6...6edb03`; linea `0xf7e4e7...bd35b7` | ⚠️ Unaudited |
| ProxyOracle | operational_periphery | gnosis | 74 deployments: gnosis [`0x033036...37744e`](./contracts/gnosis-100/0x033036a74794a0919c1481b9473c2fe5d637744e/); gnosis `0x1cbafa...50b598`; gnosis `0x2164f5...7e7c29`; gnosis `0x22f152...0a10b2`; gnosis `0x243d43...d3a22e`; gnosis `0x2c4ce1...9c6ae6`; gnosis `0x2c98ec...383efb`; gnosis `0x2ff351...7d6051`; gnosis `0x364c9d...1ad0ee`; gnosis `0x38c990...5a40bd`; gnosis `0x3bc28d...02af25`; gnosis `0x42a6ea...58a1a8`; gnosis `0x60215e...1f13b7`; gnosis `0x6bfc0a...17f757`; gnosis `0x6d1a22...637d4b`; gnosis `0x6d76e0...267db3`; gnosis `0x70ea3f...39e893`; gnosis `0x782039...8b8527`; gnosis `0x783536...51eee0`; gnosis `0x7ec398...4a18de`; gnosis `0x80882c...438d20`; gnosis `0x80a79c...99dc36`; gnosis `0x8c0111...e0f7c7`; gnosis `0x8e8aeb...8ba7da`; gnosis `0x90c23b...d279b7`; gnosis `0x943859...15c6d9`; gnosis `0x974fbf...887cdc`; gnosis `0xa4ca02...86fb88`; gnosis `0xa71296...cfee01`; gnosis `0xaced44...3ab14c`; gnosis `0xb46f80...53ce7c`; gnosis `0xbf13b8...50c73e`; gnosis `0xc3cfda...af07b2`; gnosis `0xc63548...dc1d65`; gnosis `0xc6a036...513c98`; gnosis `0xca358e...4a0648`; gnosis `0xcbf75e...e093d7`; gnosis `0xdcecc9...328b1a`; gnosis `0xdd68fd...bb922c`; gnosis `0xe17aa7...04b430`; gnosis `0xe19d76...5e5d75`; gnosis `0xe77267...137b61`; gnosis `0xec7d07...34ded2`; gnosis `0xf04b42...011201`; gnosis `0xf5b121...291869`; gnosis `0xfdaeb4...2e71b4`; polygon `0x655c24...6ef933`; polygon `0x67f322...5618eb`; polygon `0x6a8988...97bce4`; polygon `0x7af28f...3d56da`; polygon `0x8ec5b9...8591fb`; polygon `0xaa05fa...878cb3`; polygon `0xbce8b1...d00ab4`; polygon `0xc219bd...22aae9`; polygon `0xc65b0d...e41644`; polygon `0xf8502b...723099`; base `0x5366b1...edb35a`; base `0xc219bd...22aae9`; base `0xebbb12...771ef8`; arbitrum `0x1cfe94...061b69`; arbitrum `0x32e3f4...7f883f`; arbitrum `0x3471a4...081c02`; arbitrum `0x43f7a5...9653f0`; arbitrum `0x6a8988...97bce4`; arbitrum `0x911e01...1840d3`; arbitrum `0xd8e52b...f72a2b`; arbitrum `0xec9dd3...5f7868`; linea `0x409c6a...0281c3`; linea `0x457791...14e520`; linea `0x61e1b1...3e6431`; linea `0x752735...1039ef`; linea `0x7c771a...5cd8e3`; linea `0xb9321f...d23ea9`; linea `0xf91add...b1c577` | ⚠️ Unaudited |
| PullBetting | unknown | gnosis | [`0x96dac2...3155c3`](./contracts/gnosis-100/0x96dac265afe71a27d61b18fdea2c7766903155c3/) | ⚠️ Unaudited |
| Relayer | unknown | polygon | 17 deployments: bsc `0x8da05c...abba9d`; bsc `0xae684d...346030`; bsc `0xb0b23f...16718e`; bsc `0xe48500...013126`; gnosis `0x200aea...344d88`; gnosis `0x40eb85...4d8b32`; gnosis `0x6edff2...af14be`; gnosis `0x7c9c7b...604eaf`; gnosis `0xf3af8a...bac85e`; polygon [`0x07c5ad...0f4200`](./contracts/polygon-137/0x07c5adfbd546afcdb356c4b8ea870295420f4200/); polygon `0x8da05c...abba9d`; polygon `0x934097...2a8d17`; polygon `0xf751c4...300895`; base `0x18cc83...78a4a8`; base `0x68ec35...955c0f`; base `0xd2d508...3e73b5`; base `0xe60212...3d3385` | ⚠️ Unaudited |
| RewardPool | core_logic | polygon | 10 deployments: polygon [`0x143796...848a9a`](./contracts/polygon-137/0x1437968d443754a5cfc64bc86639e0e50c848a9a/); polygon `0x2c05aa...76caa1`; polygon `0x371e78...e624ac`; polygon `0x54b80d...910f20`; polygon `0x5d4ef6...dda185`; polygon `0x691856...f94950`; polygon `0x71a061...85a53c`; polygon `0xad3b9b...c7bc6a`; polygon `0xcbdf12...0ed34a`; polygon `0xde2675...e450b9` | ⚠️ Unaudited |
| RewardPoolV3 | core_logic | polygon | 5 deployments: polygon [`0x28f7e5...ab52b9`](./contracts/polygon-137/0x28f7e58159394fdce712e27f82b35ec6eeab52b9/); polygon `0x2d89c0...a80ab4`; polygon `0x3d86ce...71d685`; polygon `0x3dc5cd...e2f13a`; polygon `0xfca862...74ea1b` | ⚠️ Unaudited |
| SimpleAccount | core_logic | gnosis | [`0xdaae5c...7b3474`](./contracts/gnosis-100/0xdaae5c80cb578b084fcbe0e959d98f57997b3474/) | ⚠️ Unaudited |
| SimpleAccountFactory | registry | gnosis | [`0xc51bd4...be649f`](./contracts/gnosis-100/0xc51bd464939c4309e54ec185ad0c54b951be649f/) | ⚠️ Unaudited |
| SimpleVRFConsumer | unknown | gnosis | 3 deployments: gnosis [`0x1fb840...407ed7`](./contracts/gnosis-100/0x1fb84086cd081f224a0e2c3d8f85e0cf65407ed7/); gnosis `0x279c8b...bb8f04`; gnosis `0xae6182...01bc44` | ⚠️ Unaudited |
| TestToken | token | polygon | 2 deployments: polygon [`0xa6bc85...831bbc`](./contracts/polygon-137/0xa6bc85cd8cfde26efd8cf788e4940c260b831bbc/); polygon `0xaf2ffa...f68a4c` | ⚠️ Unaudited |
| Token | token | gnosis | 2 deployments: gnosis [`0x367bc7...3e63a3`](./contracts/gnosis-100/0x367bc70ad90a919462e1b5438c448243163e63a3/); polygon `0x8f91df...eb3c74` | ⚠️ Unaudited |
| Trading | unknown | base | 21 deployments: base [`0x043484...56904c`](./contracts/base-8453/0x0434841f69038ce7351b437d183ebaad4056904c/); base `0x0a30e0...4f06da`; base `0x253939...f2fc3c`; base `0x276f29...d00294`; base `0x38d831...6052dc`; base `0x397253...430ecb`; base `0x40bdb2...951235`; base `0x4dab4a...454111`; base `0x51b817...e4780c`; base `0x5d510e...a98e39`; base `0x5e99e0...0b814f`; base `0x72fcb1...9b515b`; base `0x8f91df...eb3c74`; base `0xac40b1...7f4283`; base `0xadcbb3...05b667`; base `0xae0830...f385fe`; base `0xceb4f2...e9936c`; base `0xd24609...77a321`; base `0xdb8210...1d291a`; base `0xf26be6...ba47c9`; base `0xfdb493...ff880b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | gnosis | 87 deployments: gnosis [`0x0f0da1...557e73`](./contracts/gnosis-100/0x0f0da1f5df5ab5c06ee96f437ba1ab5ab7557e73/); gnosis `0x0facac...c71a89`; gnosis `0x12510f...d43214`; gnosis `0x18778c...c1ca3c`; gnosis `0x1b55da...c8162c`; gnosis `0x1df819...ff9977`; gnosis `0x2276b7...5dbba0`; gnosis `0x24b4b4...cfaa3a`; gnosis `0x267f6e...7827c4`; gnosis `0x2786d8...cb0d1b`; gnosis `0x2ba1d7...ea9284`; gnosis `0x36ba1a...177d9d`; gnosis `0x3b0213...26d5b2`; gnosis `0x3b3926...ebe703`; gnosis `0x3b8841...5ba904`; gnosis `0x3cef18...adb149`; gnosis `0x409c6a...0281c3`; gnosis `0x41c52d...b0bb60`; gnosis `0x42791a...c57940`; gnosis `0x49c652...c8d3d7`; gnosis `0x4a8cf0...fa93ae`; gnosis `0x4f50f0...593ec2`; gnosis `0x4ffdb1...fe2126`; gnosis `0x54ec54...6a8676`; gnosis `0x57c762...5e9470`; gnosis `0x5d4956...c7045b`; gnosis `0x63e206...55307e`; gnosis `0x6403c9...605486`; gnosis `0x655c24...6ef933`; gnosis `0x65acf9...03db18`; gnosis `0x66986d...13ec8c`; gnosis `0x67f322...5618eb`; gnosis `0x67fca8...a56d17`; gnosis `0x6e1784...3cacb9`; gnosis `0x72a0e7...748cff`; gnosis `0x7e1668...99bdfc`; gnosis `0x8aa1bd...c19f21`; gnosis `0x8e1823...6eab5f`; gnosis `0x90f00d...804cfc`; gnosis `0x936c02...93fcfe`; gnosis `0x94f1dc...0ccfb3`; gnosis `0x979b85...abec85`; gnosis `0x99311e...ac8644`; gnosis `0x999179...02f60e`; gnosis `0xa02625...9ea5b1`; gnosis `0xa18acd...f09284`; gnosis `0xa192d2...dc7b94`; gnosis `0xa35ad8...c05027`; gnosis `0xa498e8...0aeda5`; gnosis `0xa4ec17...02ed8e`; gnosis `0xa632b2...8ae10d`; gnosis `0xaa05fa...878cb3`; gnosis `0xacc9ef...2ae8e0`; gnosis `0xafc35c...b84d4b`; gnosis `0xb14784...96e113`; gnosis `0xb14cde...0138f9`; gnosis `0xb395c7...21563c`; gnosis `0xbb35f2...973483`; gnosis `0xbce8b1...d00ab4`; gnosis `0xbee5d7...1f5086`; gnosis `0xca692b...f9c459`; gnosis `0xd26c2f...450294`; gnosis `0xd4858c...9bae92`; gnosis `0xd54511...e9658f`; gnosis `0xd5790b...15d4f7`; gnosis `0xd5d82b...8cee0c`; gnosis `0xe16c41...19843e`; gnosis `0xe40836...3e983d`; gnosis `0xe9f7e1...ee8537`; gnosis `0xed8b2b...2cd271`; gnosis `0xeda5b0...8398e6`; gnosis `0xeeb34b...09e7ae`; gnosis `0xef49d9...45f13c`; gnosis `0xef8ea5...276859`; gnosis `0xf0ffec...1565ce`; gnosis `0xf2b29e...b5cc08`; gnosis `0xf3171a...24a0bc`; gnosis `0xf414fe...ba7ad6`; gnosis `0xf55b3e...7836fc`; gnosis `0xf62926...c7be0a`; gnosis `0xf7e4e7...bd35b7`; gnosis `0xffff92...03f0ad`; polygon `0x33c62b...78e72d`; polygon `0xc6bb81...40207d`; polygon `0xf8896b...91e959`; base `0x6e1784...3cacb9`; arbitrum `0xf0ffec...1565ce` | ⚠️ Unaudited |
| UChildERC20 | token | arbitrum | 2 deployments: polygon `0xe40fde...42ed6f`; arbitrum [`0x3656d5...0cd0fb`](./contracts/arbitrum-42161/0x3656d53a11090b00408678af46544a8f5c0cd0fb/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | gnosis | 399 deployments: bsc `0x21b532...cb42ea`; bsc `0x583cc3...95e50d`; bsc `0x5da21b...55f369`; bsc `0x7f18d7...674914`; bsc `0xdd180c...8cc35f`; gnosis [`0x000735...29e087`](./contracts/gnosis-100/0x0007350a1ccda7d3ea9f8570cfab6985ce29e087/); gnosis `0x009a8a...f8eddd`; gnosis `0x033a61...6840c3`; gnosis `0x0432ac...c06ed8`; gnosis `0x043a70...5f8448`; gnosis `0x0494d5...5a76d0`; gnosis `0x06c24c...4fcc78`; gnosis `0x0749b8...a9fa56`; gnosis `0x079bb0...b2d0a7`; gnosis `0x095e1a...b17242`; gnosis `0x0bae77...0fd4d5`; gnosis `0x0ce975...e2088d`; gnosis `0x0cf28c...f2cad0`; gnosis `0x109941...5074ea`; gnosis `0x114dca...216f9d`; gnosis `0x120d0a...9ba83c`; gnosis `0x121178...324fdd`; gnosis `0x122819...a1c285`; gnosis `0x124164...9795fa`; gnosis `0x12f775...c8bc9d`; gnosis `0x130c48...0d78bb`; gnosis `0x13d748...21cbe7`; gnosis `0x14f54c...2bd1ad`; gnosis `0x16db5a...09c8c0`; gnosis `0x1702e6...7482fe`; gnosis `0x1725ed...8847a6`; gnosis `0x1796e4...8915d0`; gnosis `0x182108...0047fc`; gnosis `0x1836d7...752114`; gnosis `0x183e98...b51b2a`; gnosis `0x185db4...81a415`; gnosis `0x18eff8...e0f666`; gnosis `0x19b6fe...4e5cc2`; gnosis `0x1a520d...61adf7`; gnosis `0x1af52b...a19c50`; gnosis `0x1b4b84...6b6efc`; gnosis `0x1b8f1c...148a28`; gnosis `0x1bfa5b...6ef6b4`; gnosis `0x1e2977...1d40f8`; gnosis `0x1eca16...4789b9`; gnosis `0x1f3138...0845ff`; gnosis `0x1f4dc1...b26eba`; gnosis `0x1f798e...602356`; gnosis `0x1f8223...1e151d`; gnosis `0x213f11...71b5e0`; gnosis `0x225212...adb3de`; gnosis `0x22eee2...eca8dd`; gnosis `0x23a68b...b5ec1e`; gnosis `0x23f2d6...b39615`; gnosis `0x24a6a9...d1c9b8`; gnosis `0x2593d8...0fc0ea`; gnosis `0x261a1a...17200e`; gnosis `0x26665e...c228b5`; gnosis `0x26bc7a...4abc20`; gnosis `0x286733...577764`; gnosis `0x28cb67...1563b2`; gnosis `0x29911c...66b3da`; gnosis `0x29a8c8...9424dd`; gnosis `0x2a3d3d...87c2a0`; gnosis `0x2a647c...782ef4`; gnosis `0x2c2b22...973fc3`; gnosis `0x2c6070...245f26`; gnosis `0x2cfe6d...bbf0a1`; gnosis `0x2e1c08...28b160`; gnosis `0x2f1a28...605107`; gnosis `0x304083...1bd5eb`; gnosis `0x32af71...5f6c7d`; gnosis `0x330444...0720f8`; gnosis `0x335d9a...90487c`; gnosis `0x33b870...7608d2`; gnosis `0x355b84...ad5ea9`; gnosis `0x3566a7...908897`; gnosis `0x365f97...0627be`; gnosis `0x37b932...dca3ff`; gnosis `0x37e0fd...c7eec3`; gnosis `0x385783...a77952`; gnosis `0x38633e...151c22`; gnosis `0x393657...8ed58f`; gnosis `0x396692...09cd92`; gnosis `0x3a4581...893f9d`; gnosis `0x3ad0e4...c2a943`; gnosis `0x3ae92d...cf7439`; gnosis `0x3b14f6...d1c4ec`; gnosis `0x3b31ec...33d2dc`; gnosis `0x3b9b03...b744f3`; gnosis `0x3bbda1...91fb61`; gnosis `0x3c0584...13b474`; gnosis `0x3c1d2b...67d1fd`; gnosis `0x3d0997...c9f059`; gnosis `0x3d5722...814b91`; gnosis `0x3e692f...035037`; gnosis `0x3f64e3...554879`; gnosis `0x40c06f...0891d3`; gnosis `0x40c9e0...6c5cf1`; gnosis `0x413849...591e6e`; gnosis `0x41627d...634408`; gnosis `0x423e9c...b80b49`; gnosis `0x42fa0a...385e28`; gnosis `0x432c7e...6427ba`; gnosis `0x43f309...ea47e1`; gnosis `0x44413d...154f4a`; gnosis `0x446b69...99d7f3`; gnosis `0x45997a...4d13c6`; gnosis `0x49849e...9fd78c`; gnosis `0x4a8fde...0c73cc`; gnosis `0x4ac5b8...62acea`; gnosis `0x4b603a...1b75cd`; gnosis `0x4c62f1...85dab9`; gnosis `0x4cca58...da5f11`; gnosis `0x4d1ac5...5bd948`; gnosis `0x4f8259...bc8baf`; gnosis `0x516a00...3b2a0c`; gnosis `0x51e1c2...bb103a`; gnosis `0x5220bf...14c253`; gnosis `0x52a852...7e2f32`; gnosis `0x536e57...d6bafd`; gnosis `0x540ab5...27504e`; gnosis `0x540c47...ea9d73`; gnosis `0x545715...16e807`; gnosis `0x545e43...67ba63`; gnosis `0x547031...b4415b`; gnosis `0x549a11...d2be55`; gnosis `0x57c8cf...46c325`; gnosis `0x5a2569...13a661`; gnosis `0x5a9c07...f9fc68`; gnosis `0x5afe7a...753b33`; gnosis `0x5bb6c3...5f4af4`; gnosis `0x5be096...c9dce4`; gnosis `0x5c369f...2f8cb6`; gnosis `0x5d4102...4d074d`; gnosis `0x5da21b...55f369`; gnosis `0x5daacc...a9a5ff`; gnosis `0x5e0fca...2c83d6`; gnosis `0x5e16e9...7b209d`; gnosis `0x5e6160...4ff6ce`; gnosis `0x60df0e...8b4bf7`; gnosis `0x628bfc...e0a6a5`; gnosis `0x63d1ae...7baa38`; gnosis `0x67674e...5b7aa0`; gnosis `0x676c4f...907550`; gnosis `0x6780a3...cedc1f`; gnosis `0x67f3e4...b6cfab`; gnosis `0x6894df...3f3141`; gnosis `0x693e7b...828769`; gnosis `0x6b0cf7...9c75a9`; gnosis `0x6b3ee9...cf42dd`; gnosis `0x6e3d56...5e0b9a`; gnosis `0x7006ea...c6dabe`; gnosis `0x70cde5...093328`; gnosis `0x719a4a...d7de83`; gnosis `0x71d2ac...c9562d`; gnosis `0x71ec7e...a4bd6c`; gnosis `0x72abb3...773033`; gnosis `0x72cf8f...196a07`; gnosis `0x72d64d...7972d1`; gnosis `0x7355ce...9411e2`; gnosis `0x758358...064d1f`; gnosis `0x759a7f...de6986`; gnosis `0x76bb29...d354c4`; gnosis `0x770d65...81e8a2`; gnosis `0x788e76...130f7f`; gnosis `0x7937af...b35318`; gnosis `0x7b10ef...c66ad3`; gnosis `0x7bc48b...2c65dc`; gnosis `0x7dffc5...91ff0f`; gnosis `0x7f18d7...674914`; gnosis `0x7fc3d4...bcbc32`; gnosis `0x80a04d...06c38d`; gnosis `0x81525c...b026e2`; gnosis `0x8177c4...793ad8`; gnosis `0x81f974...97d048`; gnosis `0x823469...a850c5`; gnosis `0x8248da...cc4c9d`; gnosis `0x843f90...84cd5d`; gnosis `0x8589f2...15178e`; gnosis `0x85ca2d...6722d5`; gnosis `0x85daa3...a2a907`; gnosis `0x868a14...9b6cba`; gnosis `0x8697e9...0fa88f`; gnosis `0x86de8b...53b289`; gnosis `0x86ebbc...e44786`; gnosis `0x87ab78...f82350`; gnosis `0x880e95...454b62`; gnosis `0x8835c5...088fd1`; gnosis `0x88aad6...bf9865`; gnosis `0x8939ec...9af579`; gnosis `0x89e098...c32262`; gnosis `0x8b49df...33f8cc`; gnosis `0x8b715a...2e1423`; gnosis `0x8deb19...68ba56`; gnosis `0x8f5004...ee150a`; gnosis `0x8f915b...ac9143`; gnosis `0x8fe0eb...d0271e`; gnosis `0x90b3f5...a3a1af`; gnosis `0x90fad1...6c55b4`; gnosis `0x92baea...ee9e17`; gnosis `0x93423f...85042e`; gnosis `0x937f9d...889239`; gnosis `0x9406ce...a8875c`; gnosis `0x9464e1...b11a8b`; gnosis `0x950432...e6639c`; gnosis `0x962864...24e18d`; gnosis `0x97350b...022691`; gnosis `0x98744c...ba56d9`; gnosis `0x99827f...62b07c`; gnosis `0x99d2d8...e4a83f`; gnosis `0x9a030a...3d3920`; gnosis `0x9aea08...1a67d3`; gnosis `0x9b4237...b2d295`; gnosis `0x9c794f...1b70a0`; gnosis `0x9cbd37...36ab12`; gnosis `0x9da8f1...708f74`; gnosis `0x9e3b91...62b642`; gnosis `0x9f79b0...a2bb11`; gnosis `0x9fa773...9feb23`; gnosis `0xa06bfc...f875f9`; gnosis `0xa106d6...8e59d8`; gnosis `0xa114f4...dbd400`; gnosis `0xa13e45...8351e7`; gnosis `0xa1b78d...4c675a`; gnosis `0xa287fa...fb2992`; gnosis `0xa3e484...f205bd`; gnosis `0xa411b9...adef9a`; gnosis `0xa45cae...2d572d`; gnosis `0xa4d0b2...81a15c`; gnosis `0xa72117...df8a4c`; gnosis `0xa8b187...f1fb1e`; gnosis `0xa93796...1f16c0`; gnosis `0xa9b3dd...f64a71`; gnosis `0xaaddc9...5d376b`; gnosis `0xac285f...8be3ae`; gnosis `0xacce10...9542c6`; gnosis `0xae0f21...e6053d`; gnosis `0xae38d2...ecb28e`; gnosis `0xaf4f2d...eb450b`; gnosis `0xafda85...d82bc0`; gnosis `0xb1b9cb...7b7b7e`; gnosis `0xb1e542...a1921e`; gnosis `0xb30020...5c8e5d`; gnosis `0xb341be...f77f39`; gnosis `0xb3a3ef...cf547c`; gnosis `0xb4b743...16add7`; gnosis `0xb4e7ad...d5d809`; gnosis `0xb511ba...d4e700`; gnosis `0xb65ce0...c5223a`; gnosis `0xb6f2b3...959e07`; gnosis `0xb7040a...f7633d`; gnosis `0xb9cb9c...4749a2`; gnosis `0xba0a1e...6bd1d0`; gnosis `0xba7c5a...53d074`; gnosis `0xbbb550...fd8299`; gnosis `0xbc2213...e034e4`; gnosis `0xbcaecd...cc9140`; gnosis `0xbdc577...099ef1`; gnosis `0xbe2348...5136c9`; gnosis `0xbe2a3d...242072`; gnosis `0xbef126...9b4994`; gnosis `0xbefd98...e79a3b`; gnosis `0xc050d3...2eac6b`; gnosis `0xc06a9c...9e5579`; gnosis `0xc24503...3ccf1a`; gnosis `0xc34e00...d7fe9d`; gnosis `0xc35dae...f8cbc1`; gnosis `0xc38a10...2463c3`; gnosis `0xc4e2a8...2541ef`; gnosis `0xc6593f...5af530`; gnosis `0xc6b018...c7a041`; gnosis `0xc75508...a650d0`; gnosis `0xc837ff...0e3f09`; gnosis `0xc91534...60b9c4`; gnosis `0xcae171...13ef80`; gnosis `0xcae994...3ddbef`; gnosis `0xcc0233...6ac487`; gnosis `0xcc7633...b2b936`; gnosis `0xcc9f32...0d26f4`; gnosis `0xcd64f0...d81d67`; gnosis `0xcf1b86...38073c`; gnosis `0xcfe327...5b760b`; gnosis `0xd01d23...c4fecc`; gnosis `0xd12b16...7c1edd`; gnosis `0xd1a724...bf1e57`; gnosis `0xd24609...77a321`; gnosis `0xd27878...106c9b`; gnosis `0xd3eefe...cfd292`; gnosis `0xd46b81...8ec1e7`; gnosis `0xd4e7da...bd1e7a`; gnosis `0xd5cc63...45aeb7`; gnosis `0xd6db01...bf6369`; gnosis `0xd70d30...99d8f4`; gnosis `0xd70fbc...b2812c`; gnosis `0xd76ff8...806c32`; gnosis `0xd7fc0d...5c1750`; gnosis `0xd908da...fc8d55`; gnosis `0xd99e3a...fde13a`; gnosis `0xda1180...38e8cd`; gnosis `0xdacc38...066a47`; gnosis `0xdb7316...56d4d4`; gnosis `0xdbe92f...f754ff`; gnosis `0xdc97c2...0f42b0`; gnosis `0xdd004f...9e5d18`; gnosis `0xdd180c...8cc35f`; gnosis `0xdd4698...b40a99`; gnosis `0xde92e3...4b7387`; gnosis `0xdec4d8...df704a`; gnosis `0xe0be67...18a879`; gnosis `0xe0d972...6c4fd7`; gnosis `0xe0db23...edb403`; gnosis `0xe1714a...913938`; gnosis `0xe1b310...1d40d5`; gnosis `0xe24636...d878a0`; gnosis `0xe256a4...20751f`; gnosis `0xe29c2e...a02a6f`; gnosis `0xe2dbc8...93723d`; gnosis `0xe3de05...305fc8`; gnosis `0xe42089...de9fc5`; gnosis `0xe4d11a...fc4892`; gnosis `0xe4d6ac...6fc5d4`; gnosis `0xe567d0...290faa`; gnosis `0xe5733f...36e761`; gnosis `0xe5d857...676ebf`; gnosis `0xe5e30e...e78443`; gnosis `0xe632aa...32e456`; gnosis `0xe707dd...1ba981`; gnosis `0xe738f0...bedf47`; gnosis `0xe817a8...b2b0c2`; gnosis `0xe82633...e8c868`; gnosis `0xe830d5...3f224d`; gnosis `0xe87214...12d73e`; gnosis `0xe8c027...fa849e`; gnosis `0xe96153...4d1b6b`; gnosis `0xead1f7...3049d1`; gnosis `0xead59a...9e24b1`; gnosis `0xeb11f3...fb2896`; gnosis `0xeb8c02...1bb8fb`; gnosis `0xedd2c3...c37972`; gnosis `0xee63bb...23d182`; gnosis `0xf028b2...ee46cd`; gnosis `0xf03f34...b10129`; gnosis `0xf0e98c...5b6d15`; gnosis `0xf174b1...dfa570`; gnosis `0xf1786b...591fdf`; gnosis `0xf3ccbf...41a7aa`; gnosis `0xf3f3f9...d3d1d2`; gnosis `0xf4851d...2e0f24`; gnosis `0xf6391d...d99c48`; gnosis `0xf6ddc7...a54cbb`; gnosis `0xf73029...388674`; gnosis `0xf76db7...9f4c95`; gnosis `0xf7c7e2...f56cd1`; gnosis `0xf84003...466632`; gnosis `0xfb24b6...fc357c`; gnosis `0xfbc35c...729dd7`; gnosis `0xfc43a9...9efc45`; gnosis `0xfcb0bf...807187`; gnosis `0xfd2099...b9be4b`; gnosis `0xfd41a3...ede46b`; gnosis `0xfd68af...ca17c3`; gnosis `0xff1aa9...22d4d6`; gnosis `0xff53b7...d31be5`; gnosis `0xff975a...0fb6c4`; polygon `0x069099...429502`; polygon `0x19373b...b0a125`; polygon `0x25de22...cdc891`; polygon `0x2f3343...ce517e`; polygon `0x3b8841...5ba904`; polygon `0x752735...1039ef`; polygon `0x9ee8c5...def486`; polygon `0xa02625...9ea5b1`; polygon `0xbee5d7...1f5086`; polygon `0xc2f789...f363b2`; polygon `0xe5a157...6f5fcb`; polygon `0xe810af...dddd8a`; polygon `0xef70b8...290f6f`; polygon `0xf7e4e7...bd35b7`; base `0x1df819...ff9977`; base `0x2c5dbf...45a39f`; base `0x2f3343...ce517e`; base `0x3b8841...5ba904`; base `0x409c6a...0281c3`; base `0x42791a...c57940`; base `0x457791...14e520`; base `0x57c762...5e9470`; base `0x582570...f974eb`; base `0x5fafe8...3e78cf`; base `0xb7e8a9...518686`; base `0xf3171a...24a0bc`; arbitrum `0x042cdd...0d2542`; arbitrum `0x4e984a...d2763f`; arbitrum `0x7c4206...e178d7`; arbitrum `0xd354c9...d5c4ad`; arbitrum `0xe40fde...42ed6f`; linea `0x12510f...d43214`; linea `0xe810af...dddd8a`; linea `0xef70b8...290f6f` | ⚠️ Unaudited |
| Vesting | operational_periphery | polygon | 28 deployments: gnosis `0x26b422...4435a6`; gnosis `0x2ceacf...0797c7`; gnosis `0x55ce9d...942dd7`; gnosis `0xc3af23...8cf58f`; gnosis `0xdd578f...2abce7`; gnosis `0xf3d0cf...de2c64`; polygon [`0x05eb52...bb005f`](./contracts/polygon-137/0x05eb52b00fc477feab96e8a84698beae5dbb005f/); polygon `0x0678af...fa77b4`; polygon `0x0dd7ca...832d49`; polygon `0x135a12...012dba`; polygon `0x51bcc3...f80637`; polygon `0x5d8c45...5122e2`; polygon `0x71a21e...ad3f51`; polygon `0x756c64...1160e9`; polygon `0x770d65...81e8a2`; polygon `0x7d4e20...6fd083`; polygon `0x813cd4...dfbc05`; polygon `0x8b4e67...389cb6`; polygon `0xa14848...80294b`; polygon `0xa15cdf...24f431`; polygon `0xb6fd93...95d61f`; polygon `0xb8b5c2...12d8b6`; polygon `0xc47d51...2b3a4c`; polygon `0xe42338...d8ca9e`; polygon `0xeef0eb...b2f6ca`; polygon `0xfa0480...1893bd`; polygon `0xfab4da...438b51`; polygon `0xfdcfcc...4aeb18` | ⚠️ Unaudited |
| VRFCoordinator | unknown | gnosis | 5 deployments: gnosis [`0x1af6b6...ffb083`](./contracts/gnosis-100/0x1af6b6d48b8b7763e70803e33c79a74171ffb083/); gnosis `0x395f02...cbf731`; gnosis `0xa0022c...095b77`; gnosis `0xb5a4d8...4478fc`; gnosis `0xfa3804...02d124` | ⚠️ Unaudited |
| WETH9 | token | base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |
| X2OrNothing | unknown | polygon | 8 deployments: polygon [`0x40fe3b...e3b2d4`](./contracts/polygon-137/0x40fe3b7d707d8243e7800db704a55d7aabe3b2d4/); polygon `0x4594c2...8dec61`; polygon `0x855d6b...371054`; polygon `0x8564b6...9972fc`; polygon `0xb14a6a...1b3a61`; polygon `0xb18971...8373c3`; arbitrum `0xc38a10...2463c3`; arbitrum `0xf03f34...b10129` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (6)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AirDropCappedDelayed | operational_periphery | polygon | 15 deployments: gnosis `0x63f4fe...b796d4`; polygon [`0x10be64...b7cdf1`](./contracts/polygon-137/0x10be648af376e8e8e94f9b7f355786e59fb7cdf1/); polygon `0x120e55...1cc124`; polygon `0x17f2d9...394fe8`; polygon `0x194237...aef3fc`; polygon `0x2102be...c26d1e`; polygon `0x32e3f4...7f883f`; polygon `0x441715...78471f`; polygon `0x60ce96...601b54`; polygon `0x711b6d...695a7a`; polygon `0x871088...4ddbff`; polygon `0xa0a755...32f630`; polygon `0xaa17e9...043ed1`; polygon `0xcdf7bb...447e6f`; polygon `0xf03dbe...67cafb` | ⚠️ Unaudited (bytecode match) |
| Azuro | unknown | polygon | 17 deployments: gnosis `0x7847de...cc4f15`; gnosis `0x7c2241...7da75a`; gnosis `0x9ade6a...858fe3`; polygon [`0x0eec0e...0ac457`](./contracts/polygon-137/0x0eec0e70e25c7afa8f1e99f3dc306a25310ac457/); polygon `0x10b5b4...773935`; polygon `0x1617a3...423e62`; polygon `0x1c8c39...1a3a46`; polygon `0x28fd9d...a29118`; polygon `0x29b867...e3c434`; polygon `0x2f34c2...4e0333`; polygon `0x465da8...78bf5f`; polygon `0x4e82ef...c268c3`; polygon `0x5a38e5...13ec1b`; polygon `0x9f9659...ce9dc0`; polygon `0xb2f483...f6d84b`; polygon `0xd54ff5...48a631`; polygon `0xe2735d...aabcb7` | ⚠️ Unaudited (bytecode match) |
| FreeBet | unknown | arbitrum | 52 deployments: gnosis `0x1b67b6...7b21a8`; gnosis `0x2e3a6f...d72be9`; gnosis `0x3c3ab4...216766`; gnosis `0x407f12...f83136`; gnosis `0x467a44...720c95`; gnosis `0x4a013b...d46e01`; gnosis `0x4f503d...473594`; gnosis `0x528de4...c1b7ec`; gnosis `0x53f1f4...2abd87`; gnosis `0x5d253c...63c789`; gnosis `0x5d94d3...2fd363`; gnosis `0x5f1510...bd413b`; gnosis `0x68ec35...955c0f`; gnosis `0x6ce469...622d5e`; gnosis `0x72954c...30d744`; gnosis `0x7626ba...fc4364`; gnosis `0x94d74c...89b214`; gnosis `0x9ba72d...cfb839`; gnosis `0xadc82f...aeef10`; gnosis `0xb425e5...73682b`; gnosis `0xb9f09e...bc05df`; gnosis `0xba0381...8190f7`; gnosis `0xc80389...45a239`; gnosis `0xd5988b...61fb5f`; gnosis `0xd6e568...2e4b0e`; gnosis `0xe28f5a...cc2f69`; gnosis `0xe58b47...41b3d1`; gnosis `0xecab77...6b0234`; gnosis `0xefae91...b49abb`; gnosis `0xffc67f...9df381`; polygon `0x172fb4...74abbd`; polygon `0x29911c...66b3da`; polygon `0x3df16f...0ffd23`; polygon `0x600136...0fd380`; polygon `0x6fda46...ecc7ad`; polygon `0x947737...65e604`; polygon `0xc15036...34baba`; polygon `0xd15111...ca0f9a`; polygon `0xd70810...242db1`; polygon `0xd8e52b...f72a2b`; polygon `0xdb7316...56d4d4`; polygon `0xeaa71b...7220d8`; polygon `0xee2c90...026730`; base `0x1f0d76...fa2308`; arbitrum [`0x153874...57f5e2`](./contracts/arbitrum-42161/0x1538742d01e95df797415972e1e8f3126457f5e2/); arbitrum `0x3cff24...5d3de9`; arbitrum `0x5e99e0...0b814f`; arbitrum `0x67f322...5618eb`; arbitrum `0x7e1668...99bdfc`; linea `0xd5d82b...8cee0c`; linea `0xe83f63...728009`; linea `0xee2c90...026730` | ⚠️ Unaudited (bytecode match) |
| LiveCore | unknown | base | 8 deployments: bsc `0xed5760...a877e1`; gnosis `0x3733e5...98bd1b`; gnosis `0xb26fed...2009bf`; polygon `0x42f8a6...76fdf2`; base [`0x2c3f4f...10b61c`](./contracts/base-8453/0x2c3f4f70b3e425f89dc39749d657ee2f3610b61c/); base `0x66900e...5b1e87`; base `0xb3ae92...c21f4c`; base `0xf40cf1...f4640d` | ⚠️ Unaudited (bytecode match) |
| ProxyFront | unknown | gnosis | 43 deployments: gnosis [`0x042042...d7f549`](./contracts/gnosis-100/0x0420424bbd14f3120ce72a280d34a27e40d7f549/); gnosis `0x05fb89...468290`; gnosis `0x0b0620...5dec52`; gnosis `0x135a12...012dba`; gnosis `0x18eb3a...ec486f`; gnosis `0x3a1c66...080251`; gnosis `0x3d9b7a...a8df90`; gnosis `0x4fbac0...486898`; gnosis `0x4fd453...9083be`; gnosis `0x51a84c...d077a1`; gnosis `0x5669ad...552717`; gnosis `0x5a1940...ae2588`; gnosis `0x6033e9...c0149d`; gnosis `0x66539a...793ad6`; gnosis `0x731dcd...777551`; gnosis `0x81c1b7...1a5ceb`; gnosis `0x97f190...0ba7b2`; gnosis `0xaaac47...458d6d`; gnosis `0xb02205...3eccb0`; gnosis `0xc63c4c...c479d7`; polygon `0x04c27e...9a83b7`; polygon `0x0dee52...360a00`; polygon `0x0f0da1...557e73`; polygon `0x1f0d76...fa2308`; polygon `0x200bd6...c3da5e`; polygon `0x409c6a...0281c3`; polygon `0x4d0a70...dbad75`; polygon `0x5a4e68...5085d9`; polygon `0xa6cb02...edc867`; polygon `0xeb4871...2f56c9`; arbitrum `0x0bb1c1...185694`; arbitrum `0x3d25be...0a44d0`; arbitrum `0x6d139b...5cf635`; arbitrum `0x8ec5b9...8591fb`; arbitrum `0x97d26f...dea178`; arbitrum `0x99cff7...41bc6f`; arbitrum `0x9ff246...a429b5`; arbitrum `0xc2f789...f363b2`; linea `0x1cfe94...061b69`; linea `0x3b14f6...d1c4ec`; linea `0x3b8841...5ba904`; linea `0x85bb5b...8390af`; linea `0xebb163...43e7b5` | ⚠️ Unaudited (bytecode match) |
| TestERC20 | token | gnosis | 10 deployments: gnosis [`0x0a30e0...4f06da`](./contracts/gnosis-100/0x0a30e0448679d3358c04e91c508eecaf574f06da/); gnosis `0x2a9fac...830acd`; gnosis `0x5ed627...1bae70`; gnosis `0x717a99...970fc4`; gnosis `0x8cb6d4...1deb92`; gnosis `0x98949e...b927ec`; gnosis `0xaac958...834a92`; gnosis `0xaf2842...2d5377`; gnosis `0xbdba7c...01b513`; base `0xb8836a...659627` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (243)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x42f8a69ce2d7479a49f49fe832b4c2520376fdf2) | proxy | polygon | `0xf9548b...972ac7` | ❓ Unverified |
| Proxy (impl: 0xa48f89d08a48c69c33eae6a1c9683d2763874e48) | proxy | gnosis | `0x0e00e6...e448f2` | ❓ Unverified |
| Proxy (impl: 0xc39366480d6da24b1ef6a587c9aba7458b0cbd38) | proxy | gnosis | `0x46f4ae...6d7b33` | ❓ Unverified |
| Proxy (impl: 0xf1b69b6fabacf30c2691b3581adfecbd944f4aed) | proxy | gnosis | `0xc065e8...482f52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2d6a5a...1ed0c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x002ee0...1d9518` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x00d974...1eb674` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x016bfc...79f692` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x021088...61f3e7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x026f87...dd4263` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x042cdd...0d2542` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x043484...56904c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x04a9e7...30bacb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x052736...847c6e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x052f98...9a7017` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x06e9ea...195487` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0775f0...4e41a9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x08e766...313a9d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x09d999...3ab0e4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0acc58...cc8c37` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0b24f3...8d7513` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0d312b...4cdc1f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0de22e...e08599` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0eedf0...079ee1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0f5978...23c3f7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x12d5e6...f5a1ef` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x12e249...9e7fd8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x133dcd...670c94` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x14062a...e04ea8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x140aef...304a79` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x14a148...e78119` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1540c7...5924f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x172fb4...74abbd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1a1d47...ee10f2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1a9cb9...3108f3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1f0d76...fa2308` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1fc765...9ae5a2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1fec20...ac54ef` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x209534...e5ec02` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x237521...e2364e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x23a52d...93646d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2476f2...26ffce` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2509c5...42f22f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x255d69...ee848a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x25c5e7...494a65` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x27af67...7c30d3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2b0cd8...f97fa9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2b6781...999be0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2c5dbf...45a39f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2c5f9c...da672e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2c7568...659d7e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2c938a...75501c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2dffc1...aeaedf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2e69f6...68c84d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2f9227...85fa7c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2fe18a...703d81` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x315956...61797e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x32ad97...ca989b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x34e3a4...e2519f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x354f4a...73d863` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x35956b...6d9098` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x36ae74...3441c2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x394c54...1c7e6f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x394ff7...59078b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x39b71e...279061` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3cacdf...3507da` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3e2a7b...963558` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3e54a5...e4a7c0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3ebb95...00e9c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x40bdb2...951235` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x41aad4...a04e47` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x451b57...069ef2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x457791...14e520` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x459748...1bc9f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x466113...f4df4b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x482b90...b89540` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x489f62...18254d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x493aeb...956cae` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4cd28c...967e94` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4d65f5...7b37ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4e87cd...ffce41` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4e9ecb...231b2a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x504a62...e6e823` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x518f95...fa99f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x51b817...e4780c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x51cffe...b8c03c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x521600...319d31` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x53b5b3...96d50a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x53e2f1...6939ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5441a6...b0d0f2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x547945...965985` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x549cd7...b6c4aa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x57996d...35c1a5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x59a8b3...ad230f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5b4dc7...b23e23` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5b5e25...166c47` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5dc8cd...9a6045` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5e99e0...0b814f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5f7f69...a28924` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x614d51...6b1847` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x61ff61...c39fd4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x65d132...946fbc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x669b51...4c30b4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6865a0...0fc093` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6ae93e...c91100` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6be076...b4874a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6cb212...1172b9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6ea096...3be311` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x70fef8...119312` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x713972...0a4909` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x72fc7b...877537` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x733432...85003b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x74e80a...923fb5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7738f0...e70cbf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x77b7ac...7a45f9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x78fb4b...6875ab` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7b83b8...b6d055` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7c5f18...4782d7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7e9f45...37a825` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7ec3d6...46eeea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7fbf90...e24f2e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x800b5b...d0579a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8158f2...311d99` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x81c3e2...af9298` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x828638...2bcb36` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x83db06...e6ec97` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x849306...dc9891` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x84f7eb...6d0528` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x855ca7...a142d7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8d5fbd...6f8799` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x91a8a8...085a6e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9407b5...b11413` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x947737...65e604` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x949f6f...7cdf4b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x976c4d...1bf6f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x977528...20dc01` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x99f635...991259` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9ad797...e85d80` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9b28fb...f3d23b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9b2c80...8921f9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9bc93f...367fb1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9c8f29...aa2dc3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9fd7f4...774df3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9ff246...a429b5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa18ebc...dc5e1b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa48f89...874e48` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa7b95f...084206` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa7c771...268f44` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xaae235...ecaa02` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xad5d9c...007a31` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb02a5b...0e7e1a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb08a85...9089fe` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb08d02...cc813e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb17efa...f7d490` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb20ce5...cc7c90` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb39c27...15dc4c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb4774d...9a1ff0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb6508b...34df69` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb7c25e...dde86b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb7da1c...fbd24e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb8836a...659627` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb95465...506fc8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbbe485...46c080` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbe364d...56a2fa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbeaa11...54b8d1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbef773...e4a4c5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc0aa2e...34243f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc15036...34baba` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc1b606...e3570c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc2dc0a...de1b7b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc39366...0cbd38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc43f9b...4337ee` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc4e6ea...f2ed3e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc50b42...587451` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc57dc3...9d347a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc7fa69...52ae60` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc99477...809f14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcaa91c...fc8c75` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcc25da...b0b514` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcc41e2...b309da` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd128a8...4e56ea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd354c9...d5c4ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd83e0a...a5b138` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd9991b...a09e71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdb9876...8750db` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe0a508...3ce128` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe2e04b...83e65c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe35d63...834962` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe571a9...105123` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe779e0...540882` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe7f41c...a92da8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe86b83...6bfb5b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe8cb52...bbc5e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe9ecd3...933a7a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xebbb12...771ef8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xec88d9...49d4f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xec9ce7...edea85` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xed248f...7babea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xeee000...65acda` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf0057c...51d775` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf03dbe...67cafb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf1b69b...4f4aed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf1d55e...a6a089` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf412a6...7362b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf4cfe9...d1f629` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf5c1b9...f4ba45` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf70aa8...88dfc5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf79c5a...03b51e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf8502b...723099` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf88747...263627` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf8d768...d5f0f2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf91add...b1c577` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfb263b...93b10f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfc4c23...e77f6b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfc8749...e1102c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfcd204...4ef21b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfd4a8f...0098bd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xffc0b0...2dee42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0423c6...416164` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x118ea8...ba125f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x242dc3...d82d0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x307b0b...37f15d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x314c67...80d19b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x31c396...4d299c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4b890c...086b92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ba911...81c2da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x56848b...506e6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x597129...3f876f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x759274...731310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x75c491...d78cec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9f6f7d...d3e572` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xae0830...f385fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb25d3c...8d3f94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbbe066...1cd2b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe0b5d2...f29231` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf1c95d...f7b36b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfcc3d8...feb392` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0ee364...ac584e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3b3926...ebe703` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x868e63...0a29d2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa97259...8997df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeda5b0...8398e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x42791a...c57940` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Azuro Security Analysis by Pessimistic (3).pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/Azuro%20Security%20Analysis%20by%20Pessimistic%20(3).pdf) | Pessimistic | Audit | 2022-04 | stale | Direct | contract_name | 200 | medium |
| [azuro-v1-audit-report-prelim.pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/azuro-v1-audit-report-prelim.pdf) | Unknown | Audit | n/a | unknown | Direct | contract_name | 200 | high |
| [Audits](https://gem.azuro.org/hub/blockchains/audits) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 13 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x0dbaa7...fd306b`](./contracts/gnosis-100/0x0dbaa72e5c027afd633e3cf268f3658eb5fd306b/) | AffiliateHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4b890c...086b92`](./contracts/gnosis-100/0x4b890c5f543d56c2fe92969f2f161b3059086b92/) | CoreTools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x01c5f3...bc961f`](./contracts/gnosis-100/0x01c5f3966d4fda7c048e8659198875ccddbc961f/) | CounterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f0a7d...338a12`](./contracts/bsc-56/0x0f0a7debeced3ed0743beacbe787bfcb56338a12/) | DataEmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x020f0b...bbca35`](./contracts/gnosis-100/0x020f0b8598508eef513f26dc38c4ea38f9bbca35/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c3f4f...10b61c`](./contracts/base-8453/0x2c3f4f70b3e425f89dc39749d657ee2f3610b61c/) | LiveCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x14170c...5dad7a`](./contracts/gnosis-100/0x14170cb784cd2c33938a3c636d682de4bc5dad7a/) | PenaltyGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x047227...1821db`](./contracts/gnosis-100/0x0472274a079d4710c3b347aeb648fb6f1b1821db/) | PoolBetting | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x042042...d7f549`](./contracts/gnosis-100/0x0420424bbd14f3120ce72a280d34a27e40d7f549/) | ProxyFront | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x96dac2...3155c3`](./contracts/gnosis-100/0x96dac265afe71a27d61b18fdea2c7766903155c3/) | PullBetting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07c5ad...0f4200`](./contracts/polygon-137/0x07c5adfbd546afcdb356c4b8ea870295420f4200/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1fb840...407ed7`](./contracts/gnosis-100/0x1fb84086cd081f224a0e2c3d8f85e0cf65407ed7/) | SimpleVRFConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0a30e0...4f06da`](./contracts/gnosis-100/0x0a30e0448679d3358c04e91c508eecaf574f06da/) | TestERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x367bc7...3e63a3`](./contracts/gnosis-100/0x367bc70ad90a919462e1b5438c448243163e63a3/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 222 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=2
- Match method counts: extraction_exact=413

Fork inheritance lineage and inherited audits are included when available.
