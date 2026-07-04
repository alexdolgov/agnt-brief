# Agentic Audit Brief: iTrust Finance

## Project Overview

- Project: iTrust Finance (`itrust-finance`)
- Website: [https://itrust.finance](https://itrust.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:14.207Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum, optimism
- Contract surface: 341 unique implementations (677 raw deployments)
- DeFi Llama TVL: $351,583.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 19 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (erc20permit, guardedlaunchupgradable, idlecdostorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 677; live-surface contracts included: 677 (40 live, 637 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/21 (4.8%)
- Deployed-live implementations: 21 of 341 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/211
- Verified + Unaudited implementations: 210
- Verified by bytecode match: 0
- Unverified implementations: 130
- Unique implementations: 341
- Raw deployments: 677
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 0.5% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingData | unknown | optimism | n/a | [`0xab599b...e0995a`](./contracts/optimism-10/0xab599b2697d836e665706dc59566363e2fe0995a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (210)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x681825...e33ccb`](./contracts/ethereum-1/0x6818254e0a141ca3d85a5f44989f18e820e33ccb/); ethereum `0x907609...e03b5f`; ethereum `0xc7dff3...028586`; ethereum `0xe969bd...eff6fd` | ⚠️ Unaudited |
| AmphorStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x35df8a...5ac1c8`](./contracts/ethereum-1/0x35df8a95b348dd87167ed00b3421ba15d95ac1c8/); ethereum `0x697655...16305b`; ethereum `0x73a99d...e57b16` | ⚠️ Unaudited |
| Artifaqt | unknown | ethereum | n/a | [`0x34d565...5e1d34`](./contracts/ethereum-1/0x34d565bddcff2dd74bc98e056ebd32dd5f5e1d34/) | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | ethereum | n/a | [`0x0391d2...37750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | ⚠️ Unaudited |
| Claims | unknown | ethereum | n/a | [`0x586763...e50714`](./contracts/ethereum-1/0x58676340f458b36997608672be6548c92ce50714/) | ⚠️ Unaudited |
| ClaimsData | unknown | ethereum | n/a | [`0xdc2d35...ef43af`](./contracts/ethereum-1/0xdc2d359f59f6a26162972c3bd0cfbfd8c9ef43af/) | ⚠️ Unaudited |
| ClaimsReward | unknown | ethereum | n/a | [`0xebdd97...687d48`](./contracts/ethereum-1/0xebdd9752be578c03491ff1083c0f738aa8687d48/) | ⚠️ Unaudited |
| ConvexStrategyETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3bcba0...d122cb`](./contracts/ethereum-1/0x3bcba0afd36c9b350f46c570f89ab70817d122cb/); ethereum `0x6d8793...897daf` | ⚠️ Unaudited |
| ConvexStrategyMeta3Pool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x351683...f77865`](./contracts/ethereum-1/0x35168324dc1981addc3bc915788e200bedf77865/); ethereum `0x6042d5...e77fd7`; ethereum `0xbc1707...b6b79f`; ethereum `0xdb7306...29e20d` | ⚠️ Unaudited |
| ConvexStrategyMeta3Pool | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4adeb0...129956`](./contracts/ethereum-1/0x4adeb02dd22af00a8b6189bee89769ed76129956/); ethereum `0x81dbe9...041a70`; ethereum `0xee671e...021a78` | ⚠️ Unaudited |
| ConvexStrategyMetaBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x019879...7a4cdc`](./contracts/ethereum-1/0x0198792f2849397908c092b6b57654e1a57a4cdc/); ethereum `0xb73d51...6a26ee` | ⚠️ Unaudited |
| ConvexStrategyMUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x271ce5...9920f0`](./contracts/ethereum-1/0x271ce5ded4ccbd28833bddf8a8093517299920f0/); ethereum `0xa4b662...fe41ce` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | ethereum | n/a | [`0x03563d...d854d9`](./contracts/ethereum-1/0x03563deef50b957f69232de055ea1a8aa6d854d9/) | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ae60b...2b9094`](./contracts/ethereum-1/0x4ae60bc9a3efc160ae2eba70947a9b47ad2b9094/); ethereum `0x8f889d...9b1baa` | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | ethereum | n/a | [`0x747e81...7ff388`](./contracts/ethereum-1/0x747e819b878956fb6e5eb936a6415a5d037ff388/) | ⚠️ Unaudited |
| EarlyRewards | unknown | ethereum | n/a | [`0xa1f71e...5d88fc`](./contracts/ethereum-1/0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc/) | ⚠️ Unaudited |
| ERC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb9200c...f2070d`](./contracts/ethereum-1/0xb9200c2aa4053102b984806c63d67e21b8f2070d/); ethereum `0xf93842...72e91e` | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | ethereum | n/a | [`0xe0c4a2...e098d1`](./contracts/ethereum-1/0xe0c4a2b14f0acd936226a598be6bfed190e098d1/) | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | ethereum | n/a | [`0xcf9347...098ffb`](./contracts/ethereum-1/0xcf93471a82241c2be469d83d960932721b098ffb/) | ⚠️ Unaudited |
| FalconXAAAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x48fc1a...f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/); ethereum `0x8fed61...83667e`; ethereum `0xefffa4...2c8fa2` | ⚠️ Unaudited |
| GearboxStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x29c794...387510`](./contracts/ethereum-1/0x29c794b9a70752c41d65ebccef1c1ee697387510/); ethereum `0x9fb97f...ac099b`; ethereum `0xee4043...701dfa` | ⚠️ Unaudited |
| GearboxStrategy | unknown | ethereum | n/a | [`0x67f2c6...2a84e6`](./contracts/ethereum-1/0x67f2c664891e4fcdecba6b596567eb0a872a84e6/) | ⚠️ Unaudited |
| GovernableFund | unknown | ethereum | n/a | 3 deployments: ethereum [`0x107a36...31b925`](./contracts/ethereum-1/0x107a369bc066c77ff061c7d2420618a6ce31b925/); ethereum `0x69a62c...1bcb94`; ethereum `0xb0aa1f...5571c7` | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0xc72a7b...391c4e`](./contracts/ethereum-1/0xc72a7b022f95570399bc1fd3956ecd863b391c4e/) | ⚠️ Unaudited |
| GovernorAccessControl | unknown | ethereum | n/a | [`0xf02faf...1ed5e5`](./contracts/ethereum-1/0xf02faf7cfee786111eae6747a0c344b48c1ed5e5/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x2256b2...2fe31b`](./contracts/ethereum-1/0x2256b25cfc8e35c3135664fd03e77595042fe31b/) | ⚠️ Unaudited |
| HypervisorFactory | unknown | ethereum | n/a | [`0x8ae6c8...97ceae`](./contracts/ethereum-1/0x8ae6c8c7005c7317963487bee834047eb497ceae/) | ⚠️ Unaudited |
| Idle | unknown | ethereum | n/a | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | ⚠️ Unaudited |
| IdleAave | unknown | ethereum | n/a | 22 deployments: ethereum [`0x0bc3bb...ef54f3`](./contracts/ethereum-1/0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3/); ethereum `0x0f4b41...5bc7c9`; ethereum `0x11833c...4b9718`; ethereum `0x138981...481788`; ethereum `0x20aeea...198b51`; ethereum `0x23dce3...9f4249`; ethereum `0x292714...a85e67`; ethereum `0x2f326f...c9da6e`; ethereum `0x31acf7...03f2f7`; ethereum `0x695085...83b783`; ethereum `0x80af31...c7f070`; ethereum `0x9509af...fb60c3`; ethereum `0xa3a374...0e0c4c`; ethereum `0xa91cf5...e9992e`; ethereum `0xb4226b...12efff`; ethereum `0xb92498...6124e4`; ethereum `0xc0490b...adae37`; ethereum `0xc4ef78...123a77`; ethereum `0xcc6ba0...58e8a6`; ethereum `0xe85f72...de534d`; ethereum `0xf5d90e...5c2f55`; ethereum `0xff9338...05ae52` | ⚠️ Unaudited |
| IdleAaveV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3c5a5d...50a70c`](./contracts/ethereum-1/0x3c5a5d7832e9084fd88885823afa8cd99250a70c/); ethereum `0xfc86f8...208c0f` | ⚠️ Unaudited |
| IdleBatchConverter | unknown | ethereum | n/a | 10 deployments: ethereum [`0x08db22...ca23d8`](./contracts/ethereum-1/0x08db226d63ce724a6091ba82d28dfc76ceca23d8/); ethereum `0x174a27...863a86`; ethereum `0x86c8b5...e5cca8`; ethereum `0xa30679...511db2`; ethereum `0xa6c89a...8fb472`; ethereum `0xbfdc7d...0d401d`; ethereum `0xd47b96...66f619`; ethereum `0xe0bfd0...963497`; ethereum `0xe2ee51...69b9b1`; ethereum `0xee5c50...f00cf2` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4dbf03...805c69`](./contracts/ethereum-1/0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69/); ethereum `0x562c4f...eaee9b`; ethereum `0x633fb4...996a79` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a9efd...21de8d`](./contracts/ethereum-1/0x7a9efd7f689c9173db9037f44f3933376821de8d/); ethereum `0x89bf67...3ab56a` | ⚠️ Unaudited |
| IdleCDO | unknown | ethereum | n/a | 12 deployments: ethereum [`0x1ea9ae...9bb716`](./contracts/ethereum-1/0x1ea9ae797972ad9fc52c55105d184d8b059bb716/); ethereum `0x2d90df...458964`; ethereum `0x31bee1...ea2140`; ethereum `0x3cd51e...9ab844`; ethereum `0x46de3a...11544e`; ethereum `0x4ebe36...6bd3bb`; ethereum `0x6f3220...80b62f`; ethereum `0xb93450...cbb883`; ethereum `0xc17776...1acbea`; ethereum `0xc9f019...20af8c`; ethereum `0xd6ab3b...ccd0dd`; ethereum `0xe8cc6c...93aecc` | ⚠️ Unaudited |
| IdleCDO | unknown | ethereum | n/a | 2 deployments: ethereum [`0xad6cc7...eacb58`](./contracts/ethereum-1/0xad6cc71ef6ba82ffad9adf40220d035669eacb58/); ethereum `0xdce26b...653b0e` | ⚠️ Unaudited |
| IdleCDO | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbed6e1...85299d`](./contracts/ethereum-1/0xbed6e1ff4363730a56dfdcd6689e5d958085299d/); ethereum `0xd0dbcd...a247bc` | ⚠️ Unaudited |
| IdleCDOAmphorVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e0c5e...a9b52f`](./contracts/ethereum-1/0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f/); ethereum `0xa6b353...a2aa59` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b4f69...1c8a3e`](./contracts/ethereum-1/0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e/); ethereum `0x49ba04...8e1933` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | 3 deployments: ethereum [`0x420d54...552057`](./contracts/ethereum-1/0x420d54c94810c303986ae3b7688709a6bb552057/); ethereum `0x5ecf8b...e36797`; ethereum `0xf0db13...2c4411` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | 3 deployments: ethereum [`0x49ddc4...350df8`](./contracts/ethereum-1/0x49ddc46222ebb472d0630cb18b7f77c05d350df8/); ethereum `0x5cc24f...f495dc`; ethereum `0xc05b41...0814e4` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51257e...40dafa`](./contracts/ethereum-1/0x51257e0d34f7c9795f2547725b6c87ef6140dafa/); ethereum `0x9c8aef...51292d` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9f22c9...62c4ef`](./contracts/ethereum-1/0x9f22c9f070204b6d5919edc7d4e14e6b0b62c4ef/); ethereum `0xf06dc6...34ba7d` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | [`0xdb1947...340d37`](./contracts/ethereum-1/0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37/) | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 11 deployments: ethereum [`0x17979e...ceb5e8`](./contracts/ethereum-1/0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8/); ethereum `0x392504...e2ab9a`; ethereum `0x47b6d7...f55753`; ethereum `0x4e31d9...d0b8df`; ethereum `0x5ab109...eb780f`; ethereum `0x6de6ea...a1a53f`; ethereum `0x9f3a30...8b62de`; ethereum `0xd29c4c...e792a4`; ethereum `0xd85ad3...b6837d`; ethereum `0xdd5962...94a18d`; ethereum `0xe9b123...802c11` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x433d5b...79be4d`](./contracts/ethereum-1/0x433d5b175148da32ffe1e1a37a939e1b7e79be4d/); ethereum `0x8016e6...ffccaf` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4462ed...2dd165`](./contracts/ethereum-1/0x4462ed748b8f7985a4ac6b538dfc105fce2dd165/); ethereum `0xf70e98...ae8754` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49fc16...9ebe6c`](./contracts/ethereum-1/0x49fc162c08a0ebddb00d7876fe435b9d479ebe6c/); ethereum `0xf6223c...e3c2d5` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8fb3f7...59745c`](./contracts/ethereum-1/0x8fb3f730fb2ab4b28e3d39a67e916dc98d59745c/); ethereum `0xfb77ee...eb61b3` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0ec68...040d36`](./contracts/ethereum-1/0xb0ec6865ebda158aeae85461257e8654f9040d36/); ethereum `0xdee223...337fee` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc779ec...2eed18`](./contracts/ethereum-1/0xc779ec03d2e6a31e309d27cdc0e000b4692eed18/); ethereum `0xd8a70d...adcf98` | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | ethereum | n/a | 2 deployments: ethereum [`0x73fb8d...3a0f6a`](./contracts/ethereum-1/0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a/); ethereum `0xdb90ae...094459` | ⚠️ Unaudited |
| IdleCDOEthenaVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1eb1b4...25344c`](./contracts/ethereum-1/0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c/); ethereum `0xea0823...37a373` | ⚠️ Unaudited |
| IdleCDOFactory | unknown | ethereum | n/a | [`0x3c9916...c9a631`](./contracts/ethereum-1/0x3c9916bb9498f637e2fa86c2028e26275dc9a631/) | ⚠️ Unaudited |
| IdleCDOGearboxVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbc4896...d02eb9`](./contracts/ethereum-1/0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9/); ethereum `0xe9ecca...4b5649` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d0f8a...a73b27`](./contracts/ethereum-1/0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27/); ethereum `0xd49d6b...9aeae2` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e0a8a...51fc37`](./contracts/ethereum-1/0x8e0a8a5c1e5b3ac0670ea5a613bb15724d51fc37/); ethereum `0xc07c0f...9bb83b` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc3d127...10230f`](./contracts/ethereum-1/0xc3d127c37957492955c11e15ccf1d2f20010230f/); ethereum `0xf52834...187ba0` | ⚠️ Unaudited |
| IdleCDOLeveregedEulerVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29d094...f24b21`](./contracts/ethereum-1/0x29d094110c7a89f1cb6c975df0a38cae80f24b21/); ethereum `0xb5a249...9148db` | ⚠️ Unaudited |
| IdleCDOLeveregedEulerVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5a62ca...0164cd`](./contracts/ethereum-1/0x5a62ca401667b18557ef23d84bf27aff5a0164cd/); ethereum `0xcb2bd4...31c5af` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56050f...5759a1`](./contracts/ethereum-1/0x56050f117d675041da6a4b501f0cb75d455759a1/); ethereum `0x6df196...5099aa` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe7bdf3...a59a26`](./contracts/ethereum-1/0xe7bdf364862ef8a31426e6e2b7d5defde3a59a26/); ethereum `0xf87ec7...cba5b8` | ⚠️ Unaudited |
| IdleCDORegistry | unknown | ethereum | n/a | [`0x84fdee...d94d8e`](./contracts/ethereum-1/0x84fdee80f18957a041354e99c7eb407467d94d8e/) | ⚠️ Unaudited |
| IdleCDOTrancheRewards | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4473bc...dc382d`](./contracts/ethereum-1/0x4473bc90118b18be890af42d793b5252c4dc382d/); ethereum `0x8fcd21...3cf0ba`; ethereum `0x9c3bc8...d8375b`; ethereum `0x9ce83d...71533c` | ⚠️ Unaudited |
| IdleCDOTrancheRewards | unknown | ethereum | n/a | [`0x642391...aa7219`](./contracts/ethereum-1/0x64239152e4fa7913c790b1bdce332fccdaaa7219/) | ⚠️ Unaudited |
| IdleCDOTruefiVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f5a97...313c8e`](./contracts/ethereum-1/0x1f5a97fb665e295303d2f7215ba2160cc5313c8e/); ethereum `0x8b39bb...aad670` | ⚠️ Unaudited |
| IdleCDOTruefiVariant | unknown | ethereum | n/a | [`0x40072f...477407`](./contracts/ethereum-1/0x40072fc98b3a128950b1857bd7ce57b144477407/) | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41b55b...9a7e8b`](./contracts/ethereum-1/0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b/); ethereum `0x9c85f2...bb16e4` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7c31fd...bb90b1`](./contracts/ethereum-1/0x7c31fdca14368e0da2da7e518687012287bb90b1/); ethereum `0xef8d9d...d7128e` | ⚠️ Unaudited |
| IdleClearpoolPSMStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3687c0...ded5a0`](./contracts/ethereum-1/0x3687c0f8760371fc1bd1c7bc28695c388cded5a0/); ethereum `0xfe91b8...e17e79` | ⚠️ Unaudited |
| IdleClearpoolPSMStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89a13b...fcf347`](./contracts/ethereum-1/0x89a13b0be966e53429372bc47721e336befcf347/); ethereum `0xfca6b0...df6cec` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x16f6be...08083b`](./contracts/ethereum-1/0x16f6be72882b24527f94c7bccabf77b62608083b/); ethereum `0x685039...cecad1`; ethereum `0xb9c8d0...fdc1bb` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | ethereum | n/a | [`0x371ec1...8c60cb`](./contracts/ethereum-1/0x371ec16a15c00a3deac8e6ab929d8da4d68c60cb/) | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x478601...9a148e`](./contracts/ethereum-1/0x478601cabe3c3c0bad9bd5ed024c36648b9a148e/); ethereum `0xb9b541...831001` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x526d62...14020c`](./contracts/ethereum-1/0x526d62d71c4c61ad4365ef5de3d3e2983b14020c/); ethereum `0x54ae90...b1f471`; ethereum `0x84b2de...06b5ac`; ethereum `0x931c08...c92181` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x696346...7a0d25`](./contracts/ethereum-1/0x6963460d921407e4db82a72837a1e709ac7a0d25/); ethereum `0xc8e2fa...de1991` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe250b6...3321f5`](./contracts/ethereum-1/0xe250b65b6fa2a61fb99f7c41c1c615b0ed3321f5/); ethereum `0xff35f8...f0e821` | ⚠️ Unaudited |
| IdleCompound | unknown | ethereum | n/a | 9 deployments: ethereum [`0x55583f...2c1edd`](./contracts/ethereum-1/0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd/); ethereum `0x628b4d...d9eb6e`; ethereum `0x7e5d8e...8507f8`; ethereum `0x969ce0...27e8ba`; ethereum `0x9f0f97...70dbd8`; ethereum `0x9fc29b...0b4ad4`; ethereum `0xa7988b...c126df`; ethereum `0xbe3e78...b6ac00`; ethereum `0xe8981a...ee3fbd` | ⚠️ Unaudited |
| IdleCompoundETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9a7aca...5605ca`](./contracts/ethereum-1/0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca/); ethereum `0xed4fa9...698617` | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | ethereum | n/a | 9 deployments: ethereum [`0x0c39da...8ccc66`](./contracts/ethereum-1/0x0c39daf173646c4ce9e6a678425ed965c98ccc66/); ethereum `0x0e90cf...7af8b3`; ethereum `0x2d1d26...f629eb`; ethereum `0x3751b4...47a46b`; ethereum `0x5ccba3...ff83d6`; ethereum `0x728014...2855b2`; ethereum `0x7466c9...f3fce3`; ethereum `0x9fd4bf...b39bfe`; ethereum `0xd4d7e6...131a9b` | ⚠️ Unaudited |
| IdleController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x275da8...cdb0be`](./contracts/ethereum-1/0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be/); ethereum `0xf66b8c...e5a31e` | ⚠️ Unaudited |
| IdleController | unknown | ethereum | n/a | [`0x2c08ba...3fca24`](./contracts/ethereum-1/0x2c08bacc1fc6095f21eb59e57318a6c06d3fca24/) | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x01b8a7...1e175c`](./contracts/ethereum-1/0x01b8a788d2742d8d1706fce7204fb523c51e175c/); ethereum `0x381406...3fa2f0` | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05c65c...eeb42e`](./contracts/ethereum-1/0x05c65c915f9d465dd55993ffae69943638eeb42e/); ethereum `0x40dfe8...a6725a` | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x06975b...97496f`](./contracts/ethereum-1/0x06975bb418effb0029fe278a6fa15b92bb97496f/); ethereum `0x55573c...12a4a7`; ethereum `0xa30be7...9f86fc` | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x17e9ab...aeeef3`](./contracts/ethereum-1/0x17e9ab2992dfecbe779a06a92a6cdb9fe6aeeef3/); ethereum `0x99a157...c6eb30`; ethereum `0xc226df...a004a2` | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1cbd08...e57f3e`](./contracts/ethereum-1/0x1cbd086e16f1188e0e15a153124d6f5c81e57f3e/); ethereum `0x838a31...2141ac` | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 8 deployments: ethereum [`0x1ff9a2...6b927a`](./contracts/ethereum-1/0x1ff9a2c8d71318667eb218ad409054a6a36b927a/); ethereum `0x3daceb...888dba`; ethereum `0x625688...8fe489`; ethereum `0x6fddca...fe70de`; ethereum `0xc49992...b3855a`; ethereum `0xecb20a...2d6c24`; ethereum `0xed4c67...363158`; ethereum `0xef6aeb...b28105` | ⚠️ Unaudited |
| IdleCreditVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4207bf...93f1d8`](./contracts/ethereum-1/0x4207bf5e9d0e850abe12520c0fed0313c593f1d8/); ethereum `0xc35d07...0850de` | ⚠️ Unaudited |
| IdleCreditVaultFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/); ethereum `0x59aabd...906626`; ethereum `0xb744aa...0b0706` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4bd6af...244ba5`](./contracts/ethereum-1/0x4bd6af4cf5c00167d0922bc90ed61a800a244ba5/); ethereum `0xd6c6f3...ab44ff` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x68c79b...ab635f`](./contracts/ethereum-1/0x68c79b15c2270215a47bf10eba954fc95fab635f/); ethereum `0xa8da45...736cd5` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1745c0...500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/); ethereum `0x55bdb8...ae383e`; ethereum `0xb05cff...f4c477` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c89df...ca3254`](./contracts/ethereum-1/0x1c89df6c8b1ab81ef90855120fafb93d7fca3254/); ethereum `0x8a00a0...d0deae` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2b914f...c2d887`](./contracts/ethereum-1/0x2b914f5e396b0017a866c7e36af9fbba46c2d887/); ethereum `0x956734...0e9739`; ethereum `0xb08afc...109944`; ethereum `0xc3c9b1...f50086`; ethereum `0xcbed5b...438810`; ethereum `0xcfaa78...77cc48` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5dec32...257cfb`](./contracts/ethereum-1/0x5dec32675edac1bd6e5dca0ad9affcc7d4257cfb/); ethereum `0x6120e4...e99931`; ethereum `0xe05f14...da43e0`; ethereum `0xf3d867...611bdc` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | operational_periphery | ethereum | n/a | [`0xe6584f...071507`](./contracts/ethereum-1/0xe6584f3484494d7014e420080f50b69e5e071507/) | ⚠️ Unaudited |
| IdleDSR | unknown | ethereum | n/a | [`0x587fe6...0c608a`](./contracts/ethereum-1/0x587fe6430a1148df4868e9e71357a179110c608a/) | ⚠️ Unaudited |
| IdleEulerStakingStrategy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0fe4fc...e71b04`](./contracts/ethereum-1/0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04/); ethereum `0x2a719c...4601e6`; ethereum `0x2d29c2...85f4c2`; ethereum `0x62aa57...fc7722`; ethereum `0xaf1419...340652` | ⚠️ Unaudited |
| IdleEulerStakingStrategy | unknown | ethereum | n/a | [`0x55cf2c...5a6a06`](./contracts/ethereum-1/0x55cf2cf79759574a4e868ab83701794afc5a6a06/) | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | ethereum | n/a | 5 deployments: ethereum [`0x956f65...cf5784`](./contracts/ethereum-1/0x956f650177f95ef142aa2a26da407ad014cf5784/); ethereum `0x9d6f65...9117b5`; ethereum `0xb51be9...c294e5`; ethereum `0xee7629...cf5e7b`; ethereum `0xfcbd5b...7aa358` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x388655...ea45e0`](./contracts/ethereum-1/0x3886557ed1698dbd496a4a0f2e00df8918ea45e0/); ethereum `0xacdf8f...9a8cd5` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3d1775...babd69`](./contracts/ethereum-1/0x3d1775da27dd9c6d936795ac21b94cded8babd69/); ethereum `0x5dad2e...8c4346`; ethereum `0x8468b8...95e166`; ethereum `0xba6f9a...c66b3b`; ethereum `0xc7f1b9...1a3f44` | ⚠️ Unaudited |
| IdleFactory | unknown | ethereum | n/a | [`0x5d4e70...b3ffd0`](./contracts/ethereum-1/0x5d4e705315aca451db40bf7c067077c768b3ffd0/) | ⚠️ Unaudited |
| IdleFulcrum | unknown | ethereum | n/a | 2 deployments: ethereum [`0x727d9c...be825e`](./contracts/ethereum-1/0x727d9c331e9481167dc61a9289c948da25be825e/); ethereum `0x9ff8b7...088bd4` | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | ethereum | n/a | 17 deployments: ethereum [`0x02072a...cbe2e1`](./contracts/ethereum-1/0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1/); ethereum `0x2fd325...f5cc29`; ethereum `0x39c71f...61c5e5`; ethereum `0x44b6cd...13c470`; ethereum `0x463465...4ec3dc`; ethereum `0x4f80e4...1ae688`; ethereum `0x673580...15f580`; ethereum `0x7e6063...b17af7`; ethereum `0x8c85dc...155f02`; ethereum `0x957e8c...99b9bc`; ethereum `0xa0aed4...f2bb6a`; ethereum `0xb31b1a...0b6866`; ethereum `0xcdd7db...76a8c9`; ethereum `0xd17761...ae04c6`; ethereum `0xe160b8...ca71fe`; ethereum `0xf2bbed...43cf72`; ethereum `0xf6e5e4...681936` | ⚠️ Unaudited |
| IdleLeveragedEulerStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37de1d...870dc5`](./contracts/ethereum-1/0x37de1d299c93743472343699c58ec95000870dc5/); ethereum `0x736949...1bb8c9` | ⚠️ Unaudited |
| IdleLeveragedEulerStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54449c...908d74`](./contracts/ethereum-1/0x54449cd454ba2be50dc9d1ac9bb83a503c908d74/); ethereum `0xee5ec9...3f0073` | ⚠️ Unaudited |
| IdleLeveragedEulerStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a7723...d44a51`](./contracts/ethereum-1/0x7a77231abe02359e0386dfea3b47124e36d44a51/); ethereum `0x96078f...20eae8` | ⚠️ Unaudited |
| IdleLidoStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cac67...da089a`](./contracts/ethereum-1/0x0cac674ebd77bbd899f6079932768f6d59da089a/); ethereum `0x3b4387...01fcb2` | ⚠️ Unaudited |
| IdleLidoStrategy | unknown | ethereum | n/a | [`0xf07c97...20c719`](./contracts/ethereum-1/0xf07c97c7437c863932bfa362731d9b0f7420c719/) | ⚠️ Unaudited |
| IdleMcdBridge | unknown | ethereum | n/a | [`0x7ab2a7...137211`](./contracts/ethereum-1/0x7ab2a7ed1a0c58dea84de880b4f1710229137211/) | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b8c3e...083619`](./contracts/ethereum-1/0x7b8c3ee1bafb4af5826d41137cd5caf878083619/); ethereum `0x854b5b...4252a2` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | ethereum | n/a | [`0x944d36...b5045a`](./contracts/ethereum-1/0x944d369522eb919064b52b9665f4151e52b5045a/) | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | ethereum | n/a | [`0x4916ee...a12569`](./contracts/ethereum-1/0x4916ee4a761e5cff5b4a3183f109f3e141a12569/) | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6110de...f4aa81`](./contracts/ethereum-1/0x6110dec9fac2a721c0eee64b769a7e4cccf4aa81/); ethereum `0xd408ee...e9fb50` | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaefb13...225358`](./contracts/ethereum-1/0xaefb1325a2c1756bc3fcc516d6c2cf947d225358/); ethereum `0xb98864...477057` | ⚠️ Unaudited |
| IdlePYT | unknown | ethereum | n/a | [`0xd3af13...45553d`](./contracts/ethereum-1/0xd3af1317450d291c328525a8eb183d5cca45553d/) | ⚠️ Unaudited |
| IdlePYTClear | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa575b3...533559`](./contracts/ethereum-1/0xa575b3a6d88e9c1b5196cb7e2a14962a5c533559/); ethereum `0xdb1b14...89300a` | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | ethereum | n/a | [`0xff31c6...d19d18`](./contracts/ethereum-1/0xff31c69a983bac080f23f21be965650758d19d18/) | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | ethereum | n/a | [`0x6fa860...0264d8`](./contracts/ethereum-1/0x6fa86028323ba310fe4488f74085de99ed0264d8/) | ⚠️ Unaudited |
| IdleRebalancer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x781616...b753f4`](./contracts/ethereum-1/0x781616fb046a4e39c239e39bfeff1a07d4b753f4/); ethereum `0xff9b25...938a15` | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | ethereum | n/a | [`0xec4707...75fc87`](./contracts/ethereum-1/0xec470753b56ced3784ce29db7c297f0c1b75fc87/) | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x21fcd8...bc9582`](./contracts/ethereum-1/0x21fcd8adac59adc2eb94355eb2f43f869bbc9582/); ethereum `0x3f03d8...c4ee24`; ethereum `0x99d053...031d08`; ethereum `0xabcb30...b3abd4`; ethereum `0xd8885c...3f2819`; ethereum `0xdb5cf4...d57a89`; ethereum `0xe84fa0...64c1fa` | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | ethereum | n/a | 9 deployments: ethereum [`0x2be5a5...86a84a`](./contracts/ethereum-1/0x2be5a50d4125882083aaefdd370848771286a84a/); ethereum `0x47f6ac...7e20f5`; ethereum `0x486f7a...62d295`; ethereum `0x58c405...c30762`; ethereum `0x66624b...8c21ba`; ethereum `0x6e706e...0a3ddd`; ethereum `0x75c8b3...d19763`; ethereum `0xb0d97b...86d83d`; ethereum `0xe0aad3...66c604` | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6b98a5...e0a506`](./contracts/ethereum-1/0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506/); ethereum `0xccbcf6...741802`; ethereum `0xd2179a...8f01e6`; ethereum `0xe92502...32d130` | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x240345...80deb1`](./contracts/ethereum-1/0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1/); ethereum `0xbdb57b...0f0275` | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x051ba9...9b0933`](./contracts/ethereum-1/0x051ba97b84a921f4134376af2c7e3a38229b0933/); ethereum `0x94bcff...651dcd` | ⚠️ Unaudited |
| IdleRibbonStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x25e733...518893`](./contracts/ethereum-1/0x25e7337037817dd9bddd0334ca1591f370518893/); ethereum `0x263283...3fc16c`; ethereum `0x73f3fb...42fd6a` | ⚠️ Unaudited |
| IdleStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10cecc...0ac2b9`](./contracts/ethereum-1/0x10cecc30087f4b3e894dad8398307faa2f0ac2b9/); ethereum `0x2f58a6...cbb225` | ⚠️ Unaudited |
| IdleStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x48a48c...69a652`](./contracts/ethereum-1/0x48a48c6694168093a3dee02e9e8ac5a14169a652/); ethereum `0x73a440...76a916`; ethereum `0xd04843...030527` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d41f8...e906ca`](./contracts/ethereum-1/0x0d41f858d803af86e5192a77a798ad7d97e906ca/); ethereum `0x144046...158647` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1247b1...f955c1`](./contracts/ethereum-1/0x1247b148062179cd6156f68d9a1019f671f955c1/); ethereum `0x15bb11...bd218b`; ethereum `0x169e44...ff692f`; ethereum `0x1fc957...c01c0e`; ethereum `0xbdbc6d...eeb907` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f5c26...4e26a1`](./contracts/ethereum-1/0x2f5c260550ed0efede4881bc004107c3f04e26a1/); ethereum `0xec9482...3068e1` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | 4 deployments: ethereum [`0x62a036...89514b`](./contracts/ethereum-1/0x62a0369c6bb00054e589d12aad7ad81ed789514b/); ethereum `0xaeff59...a77f16`; ethereum `0xdc7777...8f320e`; ethereum `0xfa3afc...3eaaad` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | 2 deployments: ethereum [`0x742cf0...0bcb68`](./contracts/ethereum-1/0x742cf09d89dd80494cc106ea737163436b0bcb68/); ethereum `0xf6954b...1ee5d2` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | ethereum | n/a | 4 deployments: ethereum [`0x28fac5...3e07b5`](./contracts/ethereum-1/0x28fac5334c9f7262b3a3fe707e250e01053e07b5/); ethereum `0x3391bc...680d35`; ethereum `0x375d17...9c29c6`; ethereum `0xa14ea0...cd6a16` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | ethereum | n/a | 8 deployments: ethereum [`0x3fe794...353bb4`](./contracts/ethereum-1/0x3fe7940616e5bc47b0775a0dccf6237893353bb4/); ethereum `0x527489...44797c`; ethereum `0x577d96...54924a`; ethereum `0x8c8112...fd3151`; ethereum `0xc27804...a3d68c`; ethereum `0xc8e6ca...fd7f80`; ethereum `0xf34842...15c2f8`; ethereum `0xf52cdc...95fd3f` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | ethereum | n/a | [`0xea091e...177b30`](./contracts/ethereum-1/0xea091ed7146e2c3cf3ac11fa296e206e55177b30/) | ⚠️ Unaudited |
| IdleTokenV3 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x12b98c...3e3ca6`](./contracts/ethereum-1/0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6/); ethereum `0x1846bd...1999fb`; ethereum `0x6fbada...6543b2`; ethereum `0x78751b...bd7934`; ethereum `0x99233b...914397`; ethereum `0xcddb1b...d3ec6c`; ethereum `0xd1cdef...c10e4d`; ethereum `0xd6f279...60ec55` | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2fec85...40931a`](./contracts/ethereum-1/0x2fec85c0eaaace2b24926eabbf8373b26240931a/); ethereum `0x6ca265...c840e1`; ethereum `0xf6abb2...eb2a9e` | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | ethereum | n/a | 4 deployments: ethereum [`0x51c776...83eef1`](./contracts/ethereum-1/0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1/); ethereum `0x7db7a4...f8e5b6`; ethereum `0xb39ca0...963de5`; ethereum `0xe79e17...30fc9b` | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x427406...1d862b`](./contracts/ethereum-1/0x42740698959761baf1b06baa51efbd88cb1d862b/); ethereum `0x63d27b...2d2f2d` | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | ethereum | n/a | [`0x544897...ae18e1`](./contracts/ethereum-1/0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1/) | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | ethereum | n/a | [`0x70728f...d41e6d`](./contracts/ethereum-1/0x70728f08e97303d757be4cd97a7d27b65dd41e6d/) | ⚠️ Unaudited |
| IdleTruefiStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x62b17c...8b58fb`](./contracts/ethereum-1/0x62b17c9083db5941197e83bd385985b8878b58fb/); ethereum `0x7ccaf1...c08eb5` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | ethereum | n/a | [`0x863a08...33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | ⚠️ Unaudited |
| IdleUsualStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1d659f...62dcc8`](./contracts/ethereum-1/0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8/); ethereum `0x775d6f...475408`; ethereum `0xa48d5e...859e71` | ⚠️ Unaudited |
| IdleUsualStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x438020...6d29f6`](./contracts/ethereum-1/0x4380208ed0fc5136e93ed1ff67d2cbe1906d29f6/); ethereum `0xd48237...078e81` | ⚠️ Unaudited |
| IdleViewHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2adf7c...5dadec`](./contracts/ethereum-1/0x2adf7ccf0241b60747d194b3ea163e28105dadec/); ethereum `0xae2eba...36b8f5` | ⚠️ Unaudited |
| InstadappLiteETHV2Strategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x00d390...482c8b`](./contracts/ethereum-1/0x00d39058943b4a6f01cb3386a7f44b84ab482c8b/); ethereum `0xa3bbad...e88468`; ethereum `0xbe0dac...0a1ff6` | ⚠️ Unaudited |
| InstadappLiteETHV2Strategy | unknown | ethereum | n/a | [`0x74de99...c6c4cd`](./contracts/ethereum-1/0x74de99f325d70143c9b9b5dcba39bfe602c6c4cd/) | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/); ethereum `0x42e645...3d7cbd`; ethereum `0x637595...bf2688`; ethereum `0x6a6a91...0450e3`; ethereum `0xb84957...0d77a0`; ethereum `0xda7514...dbf80c` | ⚠️ Unaudited |
| LockedIDLE | unknown | ethereum | n/a | 5 deployments: ethereum [`0x02682c...4a4f48`](./contracts/ethereum-1/0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48/); ethereum `0x30184e...2e28d4`; ethereum `0x826c61...ecd207`; ethereum `0xb6297d...56b1f8`; ethereum `0xf241a0...c31d99` | ⚠️ Unaudited |
| MCR | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2ec5d5...57c495`](./contracts/ethereum-1/0x2ec5d566bd104e01790b13de33fd51876d57c495/); ethereum `0x9b4825...8bda0a`; ethereum `0xccb40a...0bade7` | ⚠️ Unaudited |
| MemberRoles | unknown | ethereum | n/a | 2 deployments: ethereum [`0x504a7d...89fe20`](./contracts/ethereum-1/0x504a7dff5eb2854be0b436da0ac2d3e0b789fe20/); ethereum `0x548bf2...82f492` | ⚠️ Unaudited |
| MerkleClaim | unknown | ethereum | n/a | [`0x693695...d26485`](./contracts/ethereum-1/0x69369507aa7a44156cc297448ab57e3c15d26485/) | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | ethereum | n/a | [`0x96dd27...448152`](./contracts/ethereum-1/0x96dd27112bdd615c3a2d649fe22d8ee27e448152/) | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | ethereum | n/a | 3 deployments: ethereum [`0x603cb5...cfddca`](./contracts/ethereum-1/0x603cb545b98aca3691be869871b34ae72ccfddca/); ethereum `0x7a928e...ff42ff`; ethereum `0xdfd98f...6402c6` | ⚠️ Unaudited |
| MetaMorphoStrategy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0186e3...78a73b`](./contracts/ethereum-1/0x0186e34de71987303b4ed4a027ed939a1178a73b/); ethereum `0x0f0500...61da57`; ethereum `0x4bfd21...208ac2`; ethereum `0x937c51...6d515d`; ethereum `0xa12814...aaf1da` | ⚠️ Unaudited |
| MetaMorphoStrategy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0e07ef...aee361`](./contracts/ethereum-1/0x0e07ef9f9368a4092ca1ba9f01de1ae7bcaee361/); ethereum `0x1f69f4...93ae13`; ethereum `0x462fc4...61dde2`; ethereum `0x835c84...1a6dd8`; ethereum `0xb5031e...dea017` | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | ethereum | n/a | [`0x9db5a6...03049e`](./contracts/ethereum-1/0x9db5a6bd77572748e541a0cf42f787f5fe03049e/) | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0cb45d...a9dfac`](./contracts/ethereum-1/0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac/); ethereum `0x57e142...862f32`; ethereum `0x9182a7...fc56bb`; ethereum `0x9708b5...c2c860` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6c14a1...401cfd`](./contracts/ethereum-1/0x6c14a1a28dd6dae5734fd960bac0b89a6b401cfd/); ethereum `0xeda9f2...fc354f` | ⚠️ Unaudited |
| NXMaster | unknown | ethereum | n/a | [`0x08c3a8...39829a`](./contracts/ethereum-1/0x08c3a887865684f30351a0ba6d683aa9b539829a/) | ⚠️ Unaudited |
| NXMDSValue | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b8246...470e41`](./contracts/ethereum-1/0x4b8246a462f66efab5cd7bd301cd0b9e7b470e41/); ethereum `0xc62805...c2fd3b` | ⚠️ Unaudited |
| NXMToken | token | ethereum | n/a | [`0xd7c49c...d4cf3b`](./contracts/ethereum-1/0xd7c49cee7e9188cca6ad8ff264c1da2e69d4cf3b/) | ⚠️ Unaudited |
| ParetoDollar | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b70fc...68c337`](./contracts/ethereum-1/0x7b70fca01ab3745e24303b56f72296614768c337/); ethereum `0x97ccc1...e54c88` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07ace8...a4c3fd`](./contracts/ethereum-1/0x07ace8d682987c2219fe8cd314b858c326a4c3fd/); ethereum `0xa77800...a50d89` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | ethereum | n/a | [`0xf81b88...669997`](./contracts/ethereum-1/0xf81b88fdd604a0ad12292c0acca11d02c2669997/) | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x271c61...0edf16`](./contracts/ethereum-1/0x271c616157e69a43b4977412a64183cf110edf16/); ethereum `0xc238a4...e029c8` | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | ethereum | n/a | [`0x7baf5f...b617f8`](./contracts/ethereum-1/0x7baf5fe88f271966fa58314b75f1887f2ab617f8/) | ⚠️ Unaudited |
| Pool1 | unknown | ethereum | n/a | [`0xfd6135...ce1884`](./contracts/ethereum-1/0xfd61352232157815cf7b71045557192bf0ce1884/) | ⚠️ Unaudited |
| Pool2 | unknown | ethereum | n/a | [`0x7cbe56...f753d6`](./contracts/ethereum-1/0x7cbe5682be6b648cc1100c76d4f6c96997f753d6/) | ⚠️ Unaudited |
| PoolData | unknown | ethereum | n/a | [`0x25916c...02f5a2`](./contracts/ethereum-1/0x25916c331797ba10601e1f05a1da0b425302f5a2/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x972a64...5ef181`](./contracts/ethereum-1/0x972a64d108e250df98dbeac8170678501f5ef181/) | ⚠️ Unaudited |
| PriceOracleV2 | unknown | ethereum | n/a | [`0xb5a8f0...95e8c5`](./contracts/ethereum-1/0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5/) | ⚠️ Unaudited |
| PriceOracleV3 | unknown | ethereum | n/a | [`0x886b10...c201f1`](./contracts/ethereum-1/0x886b102953ab3eaf719df7b80b03cd5203c201f1/) | ⚠️ Unaudited |
| ProgrammableBorrower | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x01d079...6d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/); ethereum `0x3d6418...e75588`; ethereum `0xb13d29...fbcee6` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36569d...5f1bf6`](./contracts/ethereum-1/0x36569d9afafc8bfd6bb844ee371f401c695f1bf6/); ethereum `0xb5cebe...b5d459` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7bfe8d...6f9eb7`](./contracts/ethereum-1/0x7bfe8d96491f7b1039f14a8e44439e4dc46f9eb7/); ethereum `0x8a5d39...5b346c` | ⚠️ Unaudited |
| ProposalCategory | unknown | ethereum | n/a | [`0x6a313f...589322`](./contracts/ethereum-1/0x6a313ff2a3e66db968ee3984bff178973e589322/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0138a8...8b725e`](./contracts/ethereum-1/0x0138a84f821809e2d01b16d053f4b4a5b88b725e/); ethereum `0x071163...843f5b`; ethereum `0x120508...c68a14`; ethereum `0x3f8c62...d05ea9`; ethereum `0x774079...e01417`; ethereum `0x943890...9af351`; ethereum `0xc2ff10...e5e3e8` | ⚠️ Unaudited |
| Quotation | unknown | ethereum | n/a | [`0x9dae06...6f25ee`](./contracts/ethereum-1/0x9dae0663f252d05314b7352403fa9c16f16f25ee/) | ⚠️ Unaudited |
| QuotationData | unknown | ethereum | n/a | [`0x177665...903f7a`](./contracts/ethereum-1/0x1776651f58a17a50098d31ba3c3cd259c1903f7a/) | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | n/a | [`0x031f71...1e42c6`](./contracts/ethereum-1/0x031f71b5369c251a6544c41ce059e6b3d61e42c6/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x2d8b5b...4169d3`](./contracts/ethereum-1/0x2d8b5b65c6464651403955ac6d71f9c0204169d3/) | ⚠️ Unaudited |
| StakingData | unknown | optimism | n/a | [`0xcc1342...0c087c`](./contracts/optimism-10/0xcc134245424fe9e10a011961451d5ad6cd0c087c/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a0772...6cdb49`](./contracts/ethereum-1/0x4a07723bb06bf9307e4e1998834832728e6cdb49/); ethereum `0xd7c1b4...34f935` | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd6dabb...dc2556`](./contracts/ethereum-1/0xd6dabbc2b275114a2366555d6c481ef08fdc2556/); ethereum `0xda86e1...575a44` | ⚠️ Unaudited |
| TokenController | unknown | ethereum | n/a | [`0x80b72c...0077e7`](./contracts/ethereum-1/0x80b72ce39b3d73c46b2b8b9ef3acbf300a0077e7/) | ⚠️ Unaudited |
| TokenData | unknown | ethereum | n/a | [`0xe20b3a...697a40`](./contracts/ethereum-1/0xe20b3ae826cdb43676e418f7c3b84b75b5697a40/) | ⚠️ Unaudited |
| TokenFunctions | unknown | ethereum | n/a | [`0xdf50a1...c7224e`](./contracts/ethereum-1/0xdf50a17bf58dea5039b73683a51c4026f3c7224e/) | ⚠️ Unaudited |
| TokenManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d520c...bd8326`](./contracts/ethereum-1/0x6d520c82cfa8146afe500e6ddd8b39c1d7bd8326/); ethereum `0xffec41...ed5020` | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0da050...42fb94`](./contracts/ethereum-1/0x0da050cf37747fd665adacdc0ce482f62442fb94/); ethereum `0x50449b...7f7dff`; ethereum `0x5bae51...aca4a0`; ethereum `0x8f4cb6...1574eb` | ⚠️ Unaudited |
| TrancheWrapper | unknown | ethereum | n/a | [`0xcf96f4...1fe66d`](./contracts/ethereum-1/0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d/) | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | ethereum | n/a | [`0x6bf9ea...bf723a`](./contracts/ethereum-1/0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0962fb...42e6b6`](./contracts/ethereum-1/0x0962fb33a7e0172d0e413b0fab003bee5142e6b6/); ethereum `0xa8c7b9...b9649c`; ethereum `0xff3bd4...2b5488` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cdcbe...63a8d6`](./contracts/ethereum-1/0x0cdcbeaddf2276df7f41d8b1f45249bf3d63a8d6/); ethereum `0x6f7a35...baa2d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x209d0d...fd4eb8`](./contracts/ethereum-1/0x209d0df488d7863f59b888ec21ce925f7bfd4eb8/); ethereum `0xa14614...362075` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39c70a...e23647`](./contracts/ethereum-1/0x39c70ae0a87c8eb373c40d090126c472e5e23647/); ethereum `0xb25659...be3071` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x425a82...682817`](./contracts/ethereum-1/0x425a8233d30a9a8f48c9319f8d80e232b6682817/); ethereum `0xcec176...8846a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42c21c...28f2d3`](./contracts/ethereum-1/0x42c21c576588f1bef340a26fa3932ba41528f2d3/); ethereum `0x43e744...e25fc3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x675a13...a3f8c2`](./contracts/ethereum-1/0x675a1378777cc2d25dbf430a28738cb6b7a3f8c2/); ethereum `0xdfbff9...e68ea8` | ⚠️ Unaudited |
| VaultV2b | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xd82c32...63c238`](./contracts/ethereum-1/0xd82c32dd3585b5bc528688efa408ada09963c238/); ethereum `0xf4104c...620978` | ⚠️ Unaudited |
| VesterFactory | unknown | ethereum | n/a | [`0xbf875f...089972`](./contracts/ethereum-1/0xbf875f2c6e4cc1688dfe4ecf79583193b6089972/) | ⚠️ Unaudited |
| Visor | unknown | ethereum | n/a | 7 deployments: ethereum [`0x00ae28...e17b0d`](./contracts/ethereum-1/0x00ae28c731e1fb152907a2e79d033bd638e17b0d/); ethereum `0x08fb62...de76e9`; ethereum `0x17cc4e...cd2f79`; ethereum `0x8398a3...0e38f2`; ethereum `0x8daed2...c7752c`; ethereum `0xe2696f...94502d`; ethereum `0xf62dff...e16d04` | ⚠️ Unaudited |
| VisorFactory | registry | ethereum | n/a | [`0xae0323...e6f20a`](./contracts/ethereum-1/0xae03233307865623aaef76da9ade669b86e6f20a/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c3310...9c4320`](./contracts/ethereum-1/0x0c3310b0b57b86d376040b755f94a925f39c4320/); ethereum `0x1cd24f...769995`; ethereum `0x57d59d...9754f3`; ethereum `0x8f1959...30c1b2` | ⚠️ Unaudited |
| wNXM | unknown | ethereum | n/a | [`0x0d438f...432bde`](./contracts/ethereum-1/0x0d438f3b5175bebc262bf23753c1e53d03432bde/) | ⚠️ Unaudited |
| yxToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d81b0...2685ce`](./contracts/ethereum-1/0x0d81b042bb9939b4d32cdf7861774c442a2685ce/); ethereum `0xb299bc...00dc4a`; ethereum `0xd2f458...0da0c3`; ethereum `0xf424b1...013d49` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (130)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x062f34...01be29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07ee2f...8fdf31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ac74f...1a2b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d1bbd...ebb4e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ec300...c6fcd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10033f...24130c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14458f...c138a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16fff7...f054c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b6fdd...892675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b7138...b8a8f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db797...b888c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x222c84...a5c4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23ac1f...8ff3ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x257377...9fc96e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d797...10b9b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2b6c...511651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c42fd...7497a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d07e1...1d4340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fa1a0...69d0bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fbe7f...005ad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x308e4c...362a7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3481dd...659d69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35b476...1c2a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35c93e...4fe28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37bf48...d93e00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39dc83...d6226a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c2789...97bfd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x429ae7...fa1daf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x459845...7c4014` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45ad3e...0f3976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x461ffb...350f7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49196f...cdc9b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496637...7eac1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a8f37...a98e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d50a5...54e45e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e8af7...b937fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e7e6...1e91df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57aa7b...c1c0d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58edd1...daa754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593ff7...a67a51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b3d6c...e0a7c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6161e1...a8c01a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x627ca7...45da60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657b6c...7b6f76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66b591...b4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66f4a1...a0fcd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a897e...42cfc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ad40c...5d73de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cf3bf...474233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dbe14...3f11f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e63d9...dd6bc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6effde...d13aa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70f30c...902377` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70fd03...4d3fba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7314ad...62f8b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x735a37...5daa52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73b4f3...1e2bdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7600d5...be059f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x767789...04b9ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x776245...3a6841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c4414...ac637a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cd106...ad290e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80a884...385a74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80e3df...948f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d51e...afe6f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87fab8...380f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d311...efc920` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b42d3...4c2419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9394...674eaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cff70...0711f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d9ad9...ca95f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91d93d...41f2e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9567bc...96b289` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95cc93...87663a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x966976...2bbbff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98611b...f26ada` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98801b...b33082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98ddbb...4130cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a16d9...9ba541` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2ec6b...512cdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3b9ac...459dd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa409a3...584d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa55caa...c4c743` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9b290...ad541f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabadfe...1e1907` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad0853...646687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae37e6...59e819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaedc80...b5cc14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3cbb9...085bf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb692e9...8d046d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae90b...f8fcf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb9fd2...12284f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc4c55...bf24dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf7e52...16eded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5b580...f402bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc63b77...01bd87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc74d88...6ad525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc81733...b2d92d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc83954...fa9a45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca637b...c0e9bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb08c5...0c523b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce87c4...c20910` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf61ea...805876` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf6643...38bb90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd293ed...8ce487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd30747...591506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6c6bb...3942b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd94736...613326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb6f64...0ba595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc8cc3...1db4af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce86b...e20338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd6df1...5129b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeae64...54ee25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3d2f1...4539c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5cb51...d15c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5d263...92eeac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6ff21...1a6ed5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9b139...c403cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec5ee3...14d8fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed2c61...7d9322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeeff2...39e32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf11efc...bd0a0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf468ae...88cb58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf53686...94d46b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf55f33...3a61ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf721b9...9ac710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9e2ae...1d4e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaf843...f090ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbc535...0125b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff46eb...9086dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [60fd80c015025a7033cf6ede_iTrust.pdf](https://assets.website-files.com/5f99eb79d508ca853be5f2e8/60fd80c015025a7033cf6ede_iTrust.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 341 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
