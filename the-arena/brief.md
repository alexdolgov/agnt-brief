# Agentic Audit Brief: The Arena

## Project Overview

- Project: The Arena (`the-arena`)
- Website: [https://arena.social/](https://arena.social/)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-06-11T03:29:33.469Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: avalanche
- Contract surface: 119 unique implementations (222 raw deployments)
- DeFi Llama TVL: $2,202,689.00
- On-chain TVL (included contracts): $7,758,376.19
- TVL by chain: Avalanche $7,758,376.19

## Project Description

The Arena is a SocialFi application on Avalanche centered on social engagement and the ARENA token. Its verified on-chain surface includes SocialFi-related token, registry, governance, and helper contracts; unsupported claims about a multi-chain DeFi ecosystem, DEX, launchpad, perpetual trading, or broad liquidity aggregation should be removed unless separately verified by current official sources and contract ownership evidence.

### Architecture

Arena DEX and Arena Launch share the ArenaToken for governance and fee discounts, while Arena Perps relies on separate vault and pool contracts for leveraged trading. Arena SocialFi may use the same token or proxy infrastructure to incentivize user participation across the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/31 (0.0%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 2
- Unverified implementations: 88
- Unique implementations: 119
- Raw deployments: 222
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7,758,376.19
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArenaToken | token | avalanche | 2 deployments: avalanche [`0xb8d771...2dad0c`](./contracts/avalanche-43114/0xb8d7710f7d8349a506b75dd184f05777c82dad0c/); avalanche `0xf5acf3...ff247e` | ⚠️ Unaudited |
| ArenaAirdropVesting | operational_periphery | avalanche | 2 deployments: avalanche [`0x30f587...bd755d`](./contracts/avalanche-43114/0x30f587903ef022774f5e35151e0e73c196bd755d/); avalanche `0xb0357a...f01120` | ⚠️ Unaudited |
| ArenaFactory | registry | avalanche | [`0xf16784...c39bd1`](./contracts/avalanche-43114/0xf16784dcaf838a3e16bef7711a62d12413c39bd1/) | ⚠️ Unaudited |
| ArenaFeeHelper | periphery | avalanche | 2 deployments: avalanche [`0x537505...189077`](./contracts/avalanche-43114/0x537505da49b4249b576fc8d00028bfddf6189077/); avalanche `0xde174f...df17f8` | ⚠️ Unaudited |
| ArenaFeeRecipient | operational_periphery | avalanche | [`0x0ab4de...550d66`](./contracts/avalanche-43114/0x0ab4def8d532fcf0302764d6a9bb2f4299550d66/) | ⚠️ Unaudited |
| ArenaMultiSend | unknown | avalanche | 4 deployments: avalanche [`0x472db6...8aa365`](./contracts/avalanche-43114/0x472db6c0c34792375d119aec8422dec80f8aa365/); avalanche `0x608c6c...cde6d5`; avalanche `0xf0bda7...395984`; avalanche `0xf60fad...08fd61` | ⚠️ Unaudited |
| ArenaPoolDeployer | core_logic | avalanche | 2 deployments: avalanche [`0x73ffe4...666ad1`](./contracts/avalanche-43114/0x73ffe423626c3ff34bf3c54c2c8705549c666ad1/); avalanche `0xfd75b3...d9030f` | ⚠️ Unaudited |
| ArenaReferralRegistry | registry | avalanche | 2 deployments: avalanche [`0x6a0fbe...b8ac7a`](./contracts/avalanche-43114/0x6a0fbeb8110e696b610c4a2af964900cf1b8ac7a/); avalanche `0xff4e5d...a54a40` | ⚠️ Unaudited |
| ArenaRouter02 | adapter | avalanche | [`0xf56d52...b9066e`](./contracts/avalanche-43114/0xf56d524d651b90e4b84dc2fffd83079698b9066e/) | ⚠️ Unaudited |
| ArenaStaking | unknown | avalanche | 4 deployments: avalanche [`0x0e2d0c...5eec97`](./contracts/avalanche-43114/0x0e2d0cc6454c307462ab2a9881ac3c5a965eec97/); avalanche `0xe805a6...6f5bd3`; avalanche `0xedf106...bf9f94`; avalanche `0xeffb80...4aaec4` | ⚠️ Unaudited |
| AvaxHelper | periphery | avalanche | 12 deployments: avalanche [`0x0359a2...0d15ff`](./contracts/avalanche-43114/0x0359a21b87b55d93838cc57a254064758d0d15ff/); avalanche `0x03f1a1...1b8dfa`; avalanche `0x191378...3fe582`; avalanche `0x1d6eff...0a1402`; avalanche `0x51ba6f...6062ff`; avalanche `0x5e0538...76f323`; avalanche `0x8e7a69...5dec94`; avalanche `0xaa7a11...5ae675`; avalanche `0xbce3a1...275c69`; avalanche `0xcf6bc1...d97aa3`; avalanche `0xdd0088...53e529`; avalanche `0xf7dc59...7ce599` | ⚠️ Unaudited |
| BareAggregatorExecutorConst | unknown | avalanche | 3 deployments: avalanche [`0x1d31a9...c5414f`](./contracts/avalanche-43114/0x1d31a9998b5fa533bb977466491d367d7dc5414f/); avalanche `0x24bb79...794f65`; avalanche `0x548e11...9a6837` | ⚠️ Unaudited |
| FeeCompoundHelper | periphery | avalanche | [`0x2f8c33...9c9694`](./contracts/avalanche-43114/0x2f8c33e6f88727d8456bf1d5123e47d61e9c9694/) | ⚠️ Unaudited |
| FeeHelper | periphery | avalanche | 3 deployments: avalanche [`0x132cc2...84820c`](./contracts/avalanche-43114/0x132cc20e8d709486a3121c9807bfd75f4384820c/); avalanche `0x14a2c3...bfa6f6`; avalanche `0xb7ac1e...f31b09` | ⚠️ Unaudited |
| InverseHelper | periphery | avalanche | 14 deployments: avalanche [`0x25aaf9...652bb7`](./contracts/avalanche-43114/0x25aaf987b2a14644b4a3db17b00e6e68d7652bb7/); avalanche `0x2b43e5...7079c1`; avalanche `0x330404...9e9a6f`; avalanche `0x41a75b...bc89b4`; avalanche `0x64ef55...c38602`; avalanche `0x752950...1296b9`; avalanche `0x76b52e...4d8fe6`; avalanche `0x80bb0d...d12c46`; avalanche `0x80f92d...76ace5`; avalanche `0x883aa9...fa029c`; avalanche `0xa88e53...14b701`; avalanche `0xc42c22...1e0b5d`; avalanche `0xe2c989...46c12c`; avalanche `0xfe73e0...e69651` | ⚠️ Unaudited |
| MCHelper | periphery | avalanche | 9 deployments: avalanche [`0x0eeaee...329154`](./contracts/avalanche-43114/0x0eeaeebdf26735a2bc45154e73e68b704b329154/); avalanche `0x28c255...a7f666`; avalanche `0x2a6dca...65db62`; avalanche `0x39753d...00dcf1`; avalanche `0x3d920d...1a9974`; avalanche `0x6c62bc...4b13b1`; avalanche `0x72a1fd...df1694`; avalanche `0xc0dab0...95d076`; avalanche `0xd31ca7...a4f39a` | ⚠️ Unaudited |
| MigrateToV4 | unknown | avalanche | 2 deployments: avalanche [`0x9ab627...069c15`](./contracts/avalanche-43114/0x9ab627035e4a8ecb11d89bd20410f994ab069c15/); avalanche `0xb84d4d...8252b8` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | [`0xc10a8a...ea9536`](./contracts/avalanche-43114/0xc10a8a41184e1789ee15a6fb555e1a0aebea9536/) | ⚠️ Unaudited |
| SingleTxBuyer | unknown | avalanche | [`0x659427...fe7402`](./contracts/avalanche-43114/0x659427b71ea1ad334fd31cf9ca43ce8d92fe7402/) | ⚠️ Unaudited |
| SingleTxQuoter | periphery | avalanche | 4 deployments: avalanche [`0x0ab3d3...136640`](./contracts/avalanche-43114/0x0ab3d37f13d9e7f023148a01b48ca69392136640/); avalanche `0xc5786e...cdfe6a`; avalanche `0xed5437...62c85e`; avalanche `0xf80408...9a87df` | ⚠️ Unaudited |
| TokenFactory | registry | avalanche | 11 deployments: avalanche [`0x12428e...9f6316`](./contracts/avalanche-43114/0x12428e476b6239d1262250801e7b3dc0a09f6316/); avalanche `0x386ab5...084dd6`; avalanche `0x71ec76...360132`; avalanche `0x727a1b...a3f771`; avalanche `0x85dbb5...6f751f`; avalanche `0x8b986c...4d809e`; avalanche `0xac33c3...d869f2`; avalanche `0xbf3e70...8d1b6a`; avalanche `0xeb6556...e965da`; avalanche `0xf2609f...80f855`; avalanche `0xfa303f...8bd112` | ⚠️ Unaudited |
| TokenInfoProvider | token | avalanche | [`0x448b9e...14af32`](./contracts/avalanche-43114/0x448b9e5bbf3f722579e63d7f337d2b12a614af32/) | ⚠️ Unaudited |
| TokenManager | governance | avalanche | 7 deployments: avalanche [`0x05b7e8...5392e5`](./contracts/avalanche-43114/0x05b7e88e2c57e735bba1b6469138d3f8805392e5/); avalanche `0x118ee0...b30606`; avalanche `0x1a5e7e...9da504`; avalanche `0x203a0f...b064d0`; avalanche `0x976ed0...7282c1`; avalanche `0xb14044...31edd2`; avalanche `0xba147f...aa1d05` | ⚠️ Unaudited |
| TokenManagerERC20 | governance | avalanche | 14 deployments: avalanche [`0x0005f6...db7178`](./contracts/avalanche-43114/0x0005f6681d53d0bdab6261c2dccebe2e36db7178/); avalanche `0x0436d9...94b2f6`; avalanche `0x0bb2db...609923`; avalanche `0x2196e1...758464`; avalanche `0x36a288...c1970f`; avalanche `0x4714aa...00e3d0`; avalanche `0x4f42a8...2bcba7`; avalanche `0x7dcacc...4a4c9a`; avalanche `0x8c2d14...3c2718`; avalanche `0xa5f678...2e0375`; avalanche `0xe04dd2...a087f1`; avalanche `0xe71a36...c66701`; avalanche `0xe92072...585375`; avalanche `0xf0d126...417ef2` | ⚠️ Unaudited |
| TokenManagerERC20PriceHelper | operational_periphery | avalanche | 6 deployments: avalanche [`0x1cfa65...bb4a62`](./contracts/avalanche-43114/0x1cfa653774bfb6d60d8a61f810033e1f31bb4a62/); avalanche `0x5048fb...17abd7`; avalanche `0x780590...e7e6bc`; avalanche `0x7bb543...3f7f8b`; avalanche `0x90c1e7...0fbcc5`; avalanche `0xcb8814...47be5d` | ⚠️ Unaudited |
| TokenManagerPriceHelper | operational_periphery | avalanche | 2 deployments: avalanche [`0x238c47...a72d79`](./contracts/avalanche-43114/0x238c47619a0cd1f72eef260c44dfdf6ba2a72d79/); avalanche `0xbe3f25...e7b927` | ⚠️ Unaudited |
| TokenSeller | token | avalanche | 7 deployments: avalanche [`0x840f7f...52fe4e`](./contracts/avalanche-43114/0x840f7f25d3d648b108236cad59feb065cf52fe4e/); avalanche `0x9382ea...0276d1`; avalanche `0xa41160...b63924`; avalanche `0xcaf70f...e2c7d2`; avalanche `0xd0494e...b9e331`; avalanche `0xd16cc5...0a54f0`; avalanche `0xfe5079...49ab30` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 3 deployments: avalanche [`0x663b9b...478508`](./contracts/avalanche-43114/0x663b9bae6ff80b680f85ffa89cf0174285478508/); avalanche `0xc605c2...00cc4c`; avalanche `0xe5f4bd...2fc581` | ⚠️ Unaudited |
| UUPSProxy | proxy | avalanche | 8 deployments: avalanche [`0x074bad...3b9fe7`](./contracts/avalanche-43114/0x074bad007cec473db808b30839e5fe58913b9fe7/); avalanche `0x218a65...01788f`; avalanche `0x58e94b...de491a`; avalanche `0x8315f1...446c6e`; avalanche `0xb9794e...6b1ce1`; avalanche `0xc36462...cdb1ea`; avalanche `0xdca6ee...255bfc`; avalanche `0xf4037a...c69691` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Counter | unknown | avalanche | 2 deployments: avalanche [`0x8d4b53...b7ecce`](./contracts/avalanche-43114/0x8d4b5309bfcb2e4f927c9c03d68554b404b7ecce/); avalanche `0xf57c54...28a7d2` | ⚠️ Unaudited (bytecode match) |
| FeeHelperProxy | proxy | avalanche | 2 deployments: avalanche [`0x0af2fb...598704`](./contracts/avalanche-43114/0x0af2fb7c64331e611b1303a9d65022f301598704/); avalanche `0x1f15ba...c73d04` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x196bedc74d18278b3a094db2dd122cea30c02e36) | proxy | avalanche | `0x8d227b...d9904c` | ❓ Unverified |
| Proxy (impl: 0x5814eed10d61dea47aeadd74e13de5041ae460a5) | proxy | avalanche | `0x1d33a8...d1c3c4` | ❓ Unverified |
| Proxy (impl: 0x83a71a2f1751d8b895253a05869d966151c86717) | proxy | avalanche | `0x4867ba...82fd19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x040b98...d36992` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x07e777...c57373` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x086edb...82e32f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0f8820...3cd31c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0fe3dc...75a73d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x100be4...794f46` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x157a6b...340a65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x196bed...c02e36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f563b...a4fa0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1fdf56...b6fb96` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21de69...898374` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x231df4...a09c39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23b592...082632` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x275129...d07406` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29684d...1a6475` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2f863c...c5668f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2fbff2...901507` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x37039e...335d9b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a6f16...649d1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ab366...e8e5e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x40005f...738765` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x40f2d3...65d46d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x420c70...7eddd6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x442bc9...cf514c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x481333...ac27a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ad044...a9b0f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4db1b2...6292de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4dcb83...ae9aa2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ea09c...1655ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x58136c...7b71ce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5814ee...e460a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5910ba...adad3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5a5596...55746c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x64e4a9...00425f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x656c21...bf7037` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x696935...ab2a7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6dea35...fa831c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7016e0...8e9023` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7434c3...c8fa4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x791cd0...8f6088` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x83a71a...c86717` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x847b95...c73efa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x84e696...dea716` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x84ee56...d453e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8859dc...8c4cf6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8b9bec...f22b17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e370a...2e95fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8f0017...bedb4b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x90bedc...860f2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x90e09b...f7aaba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x959cc0...cc4d37` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x979249...87c5b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x98346e...dc1180` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x99ab6c...3fc17d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9a93cc...05226b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4cc02...f72da0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa99757...0e5035` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xad22c8...baece4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf1cf8...face30` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb03b99...558b2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb76124...9de2b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb95ba6...344666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb9f184...c699be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf7d3b...cd35dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc31104...f174c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc4a438...b808e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc76d46...32568e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcbf1f1...ab928b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf56d4...0eacd5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd02711...f094ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd7ff61...f5cd65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe0463f...e0bbac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe28c65...303df1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe80edc...425321` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe9f304...b87e0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeae968...81dcc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb92d7...f6ddb6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf0518f...4153d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf18f6c...bbb468` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf394be...6ac36d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3d7a4...27c487` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf68b12...a6448b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf843f3...655692` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfcd44a...5d2d4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xff5986...dc099f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xb8d771...2dad0c`](./contracts/avalanche-43114/0xb8d7710f7d8349a506b75dd184f05777c82dad0c/) | ArenaToken | token | $7,758,376.19 | Verified native implementation with $7,758,376.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x30f587...bd755d`](./contracts/avalanche-43114/0x30f587903ef022774f5e35151e0e73c196bd755d/) | ArenaAirdropVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf16784...c39bd1`](./contracts/avalanche-43114/0xf16784dcaf838a3e16bef7711a62d12413c39bd1/) | ArenaFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x537505...189077`](./contracts/avalanche-43114/0x537505da49b4249b576fc8d00028bfddf6189077/) | ArenaFeeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0ab4de...550d66`](./contracts/avalanche-43114/0x0ab4def8d532fcf0302764d6a9bb2f4299550d66/) | ArenaFeeRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x472db6...8aa365`](./contracts/avalanche-43114/0x472db6c0c34792375d119aec8422dec80f8aa365/) | ArenaMultiSend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x73ffe4...666ad1`](./contracts/avalanche-43114/0x73ffe423626c3ff34bf3c54c2c8705549c666ad1/) | ArenaPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6a0fbe...b8ac7a`](./contracts/avalanche-43114/0x6a0fbeb8110e696b610c4a2af964900cf1b8ac7a/) | ArenaReferralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf56d52...b9066e`](./contracts/avalanche-43114/0xf56d524d651b90e4b84dc2fffd83079698b9066e/) | ArenaRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0e2d0c...5eec97`](./contracts/avalanche-43114/0x0e2d0cc6454c307462ab2a9881ac3c5a965eec97/) | ArenaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0359a2...0d15ff`](./contracts/avalanche-43114/0x0359a21b87b55d93838cc57a254064758d0d15ff/) | AvaxHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1d31a9...c5414f`](./contracts/avalanche-43114/0x1d31a9998b5fa533bb977466491d367d7dc5414f/) | BareAggregatorExecutorConst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2f8c33...9c9694`](./contracts/avalanche-43114/0x2f8c33e6f88727d8456bf1d5123e47d61e9c9694/) | FeeCompoundHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x132cc2...84820c`](./contracts/avalanche-43114/0x132cc20e8d709486a3121c9807bfd75f4384820c/) | FeeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0af2fb...598704`](./contracts/avalanche-43114/0x0af2fb7c64331e611b1303a9d65022f301598704/) | FeeHelperProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x25aaf9...652bb7`](./contracts/avalanche-43114/0x25aaf987b2a14644b4a3db17b00e6e68d7652bb7/) | InverseHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0eeaee...329154`](./contracts/avalanche-43114/0x0eeaeebdf26735a2bc45154e73e68b704b329154/) | MCHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ab627...069c15`](./contracts/avalanche-43114/0x9ab627035e4a8ecb11d89bd20410f994ab069c15/) | MigrateToV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x659427...fe7402`](./contracts/avalanche-43114/0x659427b71ea1ad334fd31cf9ca43ce8d92fe7402/) | SingleTxBuyer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0ab3d3...136640`](./contracts/avalanche-43114/0x0ab3d37f13d9e7f023148a01b48ca69392136640/) | SingleTxQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x12428e...9f6316`](./contracts/avalanche-43114/0x12428e476b6239d1262250801e7b3dc0a09f6316/) | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x448b9e...14af32`](./contracts/avalanche-43114/0x448b9e5bbf3f722579e63d7f337d2b12a614af32/) | TokenInfoProvider | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05b7e8...5392e5`](./contracts/avalanche-43114/0x05b7e88e2c57e735bba1b6469138d3f8805392e5/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0005f6...db7178`](./contracts/avalanche-43114/0x0005f6681d53d0bdab6261c2dccebe2e36db7178/) | TokenManagerERC20 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1cfa65...bb4a62`](./contracts/avalanche-43114/0x1cfa653774bfb6d60d8a61f810033e1f31bb4a62/) | TokenManagerERC20PriceHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x238c47...a72d79`](./contracts/avalanche-43114/0x238c47619a0cd1f72eef260c44dfdf6ba2a72d79/) | TokenManagerPriceHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x840f7f...52fe4e`](./contracts/avalanche-43114/0x840f7f25d3d648b108236cad59feb065cf52fe4e/) | TokenSeller | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
