# Agentic Audit Brief: Summer.fi

⚠️ Lifecycle status: DECLINING - TVL dropped 33.7% over 90 days

## Project Overview

- Project: Summer.fi (`summer.fi`)
- Website: [https://summer.fi/earn?referralCode=2001317](https://summer.fi/earn?referralCode=2001317)
- Lifecycle: declining (Tier 0, 91% below peak)
- Generated: 2026-06-12T16:16:57.796Z
- Pipeline run: v2-pipeline-2026-06-12-c7aee3-9d35
- Chains: arbitrum, base, ethereum, optimism, sonic
- Contract surface: 484 unique implementations (1966 raw deployments)
- DeFi Llama TVL: $32,919,445.00
- On-chain TVL (included contracts): $140,925,721.03
- TVL by chain: Ethereum $137,443,132.22 | Base $3,221,071.35 | Sonic $261,498.77 | Arbitrum $18.70

## Project Description

Summer.fi is a DeFi protocol offering Borrow, Multiply, and Earn products for managing collateralized debt positions and accessing Lazy Summer yield vaults across multiple chains.

### Architecture

The Lazy Summer Protocol and Summer.fi Pro share governance infrastructure (SummerGovernor, SummerTimelockController, ProtocolAccessManager) and the SummerToken. Summer.fi Pro's automation bots can interact with Lazy Summer Protocol vaults, while both families rely on external protocol adapters (e.g., Aave, Morpho) for data and execution.

## Audit Coverage Summary

- Verified implementations audited: 0/284 (0.0%)
- Verified + Unaudited implementations: 279
- Verified by bytecode match: 5
- Unverified implementations: 200
- Unique implementations: 484
- Raw deployments: 1966
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $140,925,721.03
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $140,925,721.03 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (279)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UsdcVault | core_logic | ethereum | 7 deployments: ethereum [`0x29bd15...098a62`](./contracts/ethereum-1/0x29bd15f2c80f2807c29d2428aa835f2be1098a62/); ethereum `0x47ff53...1e7901`; ethereum `0x60e66a...c06820`; ethereum `0xa945aa...ae84fe`; ethereum `0xbc65ad...b545fe`; ethereum `0xdbb575...4be359`; ethereum `0xf943cb...7a20ba` | ⚠️ Unaudited |
| MorphoVaultArk | core_logic | base | 58 deployments: ethereum `0x1ae10e...533ac7`; ethereum `0x26c507...f8a0a4`; ethereum `0x2b8078...917524`; ethereum `0x2e8a73...9b50bc`; ethereum `0x40087b...8a8aeb`; ethereum `0x43aa39...0bcb59`; ethereum `0x4aa2b5...95f63e`; ethereum `0x4bd07e...573a4b`; ethereum `0x5982d7...5212cc`; ethereum `0x59c628...31039a`; ethereum `0x5f32a2...57c0e9`; ethereum `0x650012...0fcbdc`; ethereum `0x66d635...720542`; ethereum `0x679794...1fa53f`; ethereum `0x756ca6...40d275`; ethereum `0x78f466...7de131`; ethereum `0x7e29e6...d6d371`; ethereum `0x842a5a...1708fa`; ethereum `0x8929cb...6bc2b8`; ethereum `0x8c9878...f12ab9`; ethereum `0x99d21c...b02c7e`; ethereum `0xa6fb46...23c84c`; ethereum `0xb10c29...08cd34`; ethereum `0xb5bc81...019716`; ethereum `0xb5e9c7...bdeb37`; ethereum `0xb9a974...f8fd6d`; ethereum `0xc991f9...5acaaf`; ethereum `0xd3facd...4f14c6`; ethereum `0xe0212e...1c950f`; ethereum `0xe399c3...df76a8`; ethereum `0xe885a9...456e2b`; ethereum `0xf24257...9c9294`; ethereum `0xf2b2cf...3ee114`; ethereum `0xf38a86...f77daa`; ethereum `0xf8db64...fb2894`; ethereum `0xfa1f43...d0f882`; ethereum `0xfc53cd...dcc166`; base [`0x0dd6f8...8218c1`](./contracts/base-8453/0x0dd6f8a9dd2b6f1df8dee95eb32f9ad7ba8218c1/); base `0x165d1a...e4d79b`; base `0x55bd40...a735bc`; base `0x78f466...7de131`; base `0x7d3607...2ecd6b`; base `0x8948a5...af062f`; base `0xa3cc25...20aa95`; base `0xa510f6...2e6744`; base `0xb9ac2f...65a228`; base `0xca75e8...2b5c35`; base `0xccbd61...9c1cc4`; base `0xe949e2...90bef6`; base `0xec3cc4...da7822`; base `0xece30e...e9f8c7`; arbitrum `0x106b67...0197d3`; arbitrum `0x4a45a5...306140`; arbitrum `0x525360...7135ad`; arbitrum `0x832af0...189ed6`; arbitrum `0x8a350d...9ac0e7`; arbitrum `0xb3d1be...2e6d25`; arbitrum `0xc26f0f...86e684` | ⚠️ Unaudited |
| SummerToken | token | base | 32 deployments: ethereum `0x194f36...ea1624`; ethereum `0x424aa3...66f40e`; ethereum `0x887482...afb4bc`; sonic `0x424aa3...66f40e`; sonic `0x4e0037...6099e3`; sonic `0xe8e6e0...f74845`; base [`0x1398ed...6653b7`](./contracts/base-8453/0x1398ed786658f61625302090d5d0ffb1e76653b7/); base `0x194f36...ea1624`; base `0x26bb23...619ade`; base `0x421337...4d3e8a`; base `0x52a949...e0a514`; base `0x5f311c...43ec75`; base `0x66f3a6...0b2030`; base `0x700c40...5725e1`; base `0x7ebd1b...cb3ba1`; base `0x932ccb...d4db32`; base `0xa020c0...5542c1`; base `0xa5d45e...ee1d57`; base `0xd33e13...f10f30`; base `0xd7f06e...9d9836`; base `0xf7d6fb...46e479`; arbitrum `0x39c5d3...f82fa0`; arbitrum `0x4c32a2...721ed9`; arbitrum `0x5f311c...43ec75`; arbitrum `0x8c977a...0a247a`; arbitrum `0x9b3464...599e01`; arbitrum `0xc4e635...8741a0`; arbitrum `0xcedbfe...4efaf7`; arbitrum `0xd2b0cf...a1e6a9`; arbitrum `0xd6b0c2...e76004`; arbitrum `0xea0c56...fb39b5`; arbitrum `0xf18466...4cb5d7` | ⚠️ Unaudited |
| SiloManagedVaultArk | core_logic | arbitrum | 14 deployments: ethereum `0x61d706...bc76c2`; ethereum `0xd7038e...80a170`; ethereum `0xe4917b...efe268`; sonic `0x39c5d3...f82fa0`; sonic `0x43a836...e28745`; sonic `0x4c62fc...284b19`; sonic `0x552d10...d284de`; sonic `0x6fcf84...87dceb`; sonic `0x8faf71...69db53`; sonic `0xf67e17...f36c5f`; arbitrum [`0x125dae...08783c`](./contracts/arbitrum-42161/0x125dae47930c1118cf2db5a140877c64b408783c/); arbitrum `0x286a55...55a06b`; arbitrum `0xa46531...5be5e6`; arbitrum `0xdd9417...3a2cc9` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | 2 deployments: ethereum [`0x61baf0...aa4ea3`](./contracts/ethereum-1/0x61baf0ce69d23c8318c786e161d1cac285aa4ea3/); ethereum `0xbd7d6a...b11704` | ⚠️ Unaudited |
| FluidFTokenArk | token | arbitrum | 12 deployments: ethereum `0x41ee96...77a5fd`; ethereum `0x78d0bf...864cfd`; ethereum `0x7a9b57...9c771f`; ethereum `0x7b1e86...a494f3`; ethereum `0x9bd156...a089b6`; base `0x24e035...8ec05e`; base `0x4e764d...5407f1`; base `0x60a575...c3b386`; arbitrum [`0x00eb82...cebc72`](./contracts/arbitrum-42161/0x00eb8210743f4d4aa2b44e2744ae8ffd2dcebc72/); arbitrum `0x01f61b...a462fc`; arbitrum `0x1bf59c...0a045c`; arbitrum `0x3d3e49...5881c7` | ⚠️ Unaudited |
| SiloVaultArk | core_logic | sonic | 4 deployments: sonic [`0x42aade...c531c1`](./contracts/sonic-146/0x42aade02448fdaf56bbb153b2984e3d53dc531c1/); sonic `0x5c8419...b15da2`; sonic `0xcbbdf5...16faf7`; sonic `0xf127d2...635f43` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | optimism | 5 deployments: ethereum `0x497a19...b7c8a6`; ethereum `0xfc21d6...3db0cb`; optimism [`0x14496b...56fde5`](./contracts/optimism-10/0x14496b405d62c24f91f04cda1c69dc526d56fde5/); base `0xc4fcf9...587981`; arbitrum [`0x14496b...56fde5`](./contracts/arbitrum-42161/0x14496b405d62c24f91f04cda1c69dc526d56fde5/) | ⚠️ Unaudited |
| AaveV3Ark | unknown | base | 9 deployments: ethereum `0x1a91e4...c2022e`; ethereum `0xa4a6bd...4e6c1c`; ethereum `0xc9dd08...046ae1`; sonic `0x4d00d0...cd53f4`; base [`0x03b0a0...54fd56`](./contracts/base-8453/0x03b0a0168b51839614f6fb333480d572b754fd56/); base `0x67dacd...9c362a`; base `0xc9dd08...046ae1`; arbitrum `0x64e3d7...949461`; arbitrum `0xc9dd08...046ae1` | ⚠️ Unaudited |
| AccountFactory | registry | ethereum | [`0xf7b751...aee2b6`](./contracts/ethereum-1/0xf7b75183a2829843db06266c114297dfbfaee2b6/) | ⚠️ Unaudited |
| AccountGuard | governance | ethereum | 4 deployments: ethereum [`0x9f5f9c...13b539`](./contracts/ethereum-1/0x9f5f9c8bd77ec2b51f5174dc742a47994f13b539/); ethereum `0xce9134...7f2847`; ethereum `0xe1d974...ab70c2`; ethereum `0xe81e4c...489dbe` | ⚠️ Unaudited |
| AccountImplementation | unknown | ethereum | 2 deployments: ethereum [`0x063e42...ef7b0e`](./contracts/ethereum-1/0x063e4242cd7c2421f67e21d7297c74bbdfef7b0e/); ethereum `0x93dfec...9c941a` | ⚠️ Unaudited |
| ACLManager | governance | ethereum | 2 deployments: ethereum [`0xda135c...2b510c`](./contracts/ethereum-1/0xda135cd78a086025bcdc87b038a1c462032b510c/); ethereum `0xee2816...033a36` | ⚠️ Unaudited |
| AdminAuth | unknown | ethereum | [`0xbd9447...4bb1b6`](./contracts/ethereum-1/0xbd9447adf528c1d966efe4210fcc49af224bb1b6/) | ⚠️ Unaudited |
| AdminVault | core_logic | ethereum | [`0xccf3d8...f581fd`](./contracts/ethereum-1/0xccf3d848e08b94478ed8f46ffead3008faf581fd/) | ⚠️ Unaudited |
| AdmiralsQuarters | unknown | arbitrum | 51 deployments: ethereum `0x1fff83...fc63ee`; ethereum `0x275ca5...a2c836`; ethereum `0x475827...3a6bdb`; ethereum `0x8516c6...4e9956`; ethereum `0x8b8235...a12922`; sonic `0x364a0f...e6ccae`; sonic `0xaab08a...0206ef`; sonic `0xc5b2e6...125459`; sonic `0xc61b22...a77343`; base `0x08543e...a16326`; base `0x08e195...8528c6`; base `0x1128d0...995b4c`; base `0x16160c...514515`; base `0x275ca5...a2c836`; base `0x34f72f...e750db`; base `0x364a0f...e6ccae`; base `0x49966b...e3c3a3`; base `0x6a6295...3ac838`; base `0x71e005...d72cb9`; base `0x80e30b...450331`; base `0x8d0806...b54766`; base `0x92176c...3512c0`; base `0x9447a9...124861`; base `0xa533e9...58cad9`; base `0xa87b69...ba531b`; base `0xab150e...8f83a5`; base `0xaf5506...89e249`; base `0xc5cab7...c41aac`; base `0xe0c88e...e7a75a`; base `0xfccad3...33ea12`; arbitrum [`0x0369a0...550c17`](./contracts/arbitrum-42161/0x0369a0125465bb935f32efff4e20dccf93550c17/); arbitrum `0x0b966c...f57f0b`; arbitrum `0x1128d0...995b4c`; arbitrum `0x1f555e...6b9825`; arbitrum `0x22efb9...d3439e`; arbitrum `0x234641...4805ec`; arbitrum `0x275ca5...a2c836`; arbitrum `0x4fce0f...902af4`; arbitrum `0x8423c3...d3a983`; arbitrum `0x8cf2d4...f988ef`; arbitrum `0x976ec3...2786b2`; arbitrum `0x9cacdc...526cf3`; arbitrum `0xa1d01f...874450`; arbitrum `0xa5e9f8...db508c`; arbitrum `0xacec7b...4b623c`; arbitrum `0xd555f7...674f14`; arbitrum `0xeba005...571c41`; arbitrum `0xed7ac8...0b55fd`; arbitrum `0xef5f01...ef3287`; arbitrum `0xf7d6fb...46e479`; arbitrum `0xf950ad...0abcd9` | ⚠️ Unaudited |
| AdmiralsQuartersWhitelist | unknown | arbitrum | 2 deployments: arbitrum [`0x43d2c9...5a4615`](./contracts/arbitrum-42161/0x43d2c9786e8f5a960e75d6141e44411d065a4615/); arbitrum `0x4963c6...85b1d3` | ⚠️ Unaudited |
| AeraArk | unknown | base | 2 deployments: base [`0x2b6789...8064dd`](./contracts/base-8453/0x2b678927e50afe692fdcf5d87be4c590258064dd/); base `0x6b58ae...213766` | ⚠️ Unaudited |
| Aggor_ETH_USD_2 | unknown | ethereum | [`0x00480c...4b1cf2`](./contracts/ethereum-1/0x00480cd3ed33de45555410ba71b2f932a14b1cf2/) | ⚠️ Unaudited |
| Aggor_ETH_USD_3 | unknown | ethereum | [`0x69115a...c8b68a`](./contracts/ethereum-1/0x69115a2826eb47fe9dfd1d5ca8d8642697c8b68a/) | ⚠️ Unaudited |
| Aggor_ETH_USD_4 | unknown | ethereum | [`0xb20a13...400ed5`](./contracts/ethereum-1/0xb20a1374efcafa32f701ab14316fa2e5b3400ed5/) | ⚠️ Unaudited |
| AjnaDepositBorrow | core_logic | arbitrum | 3 deployments: arbitrum [`0x3c420f...128da3`](./contracts/arbitrum-42161/0x3c420fb232c183c78f2abb7d713517309d128da3/); arbitrum `0xb7cb13...36b064`; arbitrum `0xbf566c...1219a9` | ⚠️ Unaudited |
| AjnaRepayWithdraw | operational_periphery | optimism | 2 deployments: optimism [`0x039f77...a7515d`](./contracts/optimism-10/0x039f7784c5a6f187fcac027262aa912974a7515d/); arbitrum `0xe72739...d3afcb` | ⚠️ Unaudited |
| AllowanceProxy | operational_periphery | ethereum | 2 deployments: ethereum [`0x05b393...41c58f`](./contracts/ethereum-1/0x05b393d06d7a97c20e216b5e8b9375f8c741c58f/); ethereum `0xdd8e19...f3ec0a` | ⚠️ Unaudited |
| ALMProxy | unknown | ethereum | 3 deployments: ethereum [`0x675fc9...65cda5`](./contracts/ethereum-1/0x675fc95bf2b42fc61ff0f2e9969d9ab19b65cda5/); ethereum `0xba8b83...fcff8a`; ethereum `0xea428c...f1bb37` | ⚠️ Unaudited |
| ArmArk | unknown | ethereum | 2 deployments: ethereum [`0x219ccb...3c86a3`](./contracts/ethereum-1/0x219ccbf0d3990e1cdaaf3ea840c7b233553c86a3/); ethereum `0x42f4be...30bceb` | ⚠️ Unaudited |
| AToken | token | ethereum | 2 deployments: ethereum [`0x212871...ed8474`](./contracts/ethereum-1/0x212871a1c235892f86cab30e937e18c94aed8474/); ethereum `0x6175dd...639cc6` | ⚠️ Unaudited |
| AuctionBrr | unknown | base | 2 deployments: ethereum `0xafe4ea...d2a4ab`; base [`0x1a3dcb...fcb4e8`](./contracts/base-8453/0x1a3dcb3e5857d9c7c6c2262289d59689a0fcb4e8/) | ⚠️ Unaudited |
| AuthGemJoin | unknown | ethereum | 3 deployments: ethereum [`0x476b81...b156e2`](./contracts/ethereum-1/0x476b81c12dc71edfad1f64b9e07caa60f4b156e2/); ethereum `0xd589df...fb62ae`; ethereum `0xe72c7e...5b7152` | ⚠️ Unaudited |
| AuthView | unknown | ethereum | [`0x6a6f77...448e36`](./contracts/ethereum-1/0x6a6f775d0f05fd692debee70eda24cc546448e36/) | ⚠️ Unaudited |
| Autoexec | unknown | ethereum | [`0x315ba6...03c24a`](./contracts/ethereum-1/0x315ba6fbd305fcc41d0febe6698c4144c903c24a/) | ⚠️ Unaudited |
| AutomaticLogger | unknown | ethereum | [`0xad32ce...fd1a9a`](./contracts/ethereum-1/0xad32ce09de65971ffa8356d7ef0b783b82fd1a9a/) | ⚠️ Unaudited |
| AutomaticProxyV2 | unknown | ethereum | 5 deployments: ethereum [`0x4f7865...ebe900`](./contracts/ethereum-1/0x4f786528a17ec756e05b198c1f7102103eebe900/); ethereum `0x697190...6caf2d`; ethereum `0xb215fe...8aca63`; ethereum `0xc563ac...e63d47`; ethereum `0xeea6f5...a97bf8` | ⚠️ Unaudited |
| AutomationBot | unknown | ethereum | 7 deployments: ethereum [`0x5743b5...422e5e`](./contracts/ethereum-1/0x5743b5606e94fb534a31e1cefb3242c8a9422e5e/); ethereum `0x6e87a7...4df01b`; ethereum `0x8061c2...9d316f`; optimism `0xb2e2a0...26b1e4`; base `0x96d494...e01ed8`; arbitrum `0xe018ae...ab937a`; arbitrum `0xeece00...e5f043` | ⚠️ Unaudited |
| AutomationBotAggregator | unknown | ethereum | [`0x5f1d18...d3fb76`](./contracts/ethereum-1/0x5f1d184204775fbb351c4b2c61a2fd4aabd3fb76/) | ⚠️ Unaudited |
| AutomationBotStorage | unknown | ethereum | [`0x9d3aa4...df807d`](./contracts/ethereum-1/0x9d3aa45e4f0e31cbc027d88af4d6d7558fdf807d/) | ⚠️ Unaudited |
| AutomationExecutor | unknown | ethereum | 10 deployments: ethereum [`0x100572...e13de9`](./contracts/ethereum-1/0x100572ddd4d92c9704a0e3652dcbc4bfbfe13de9/); ethereum `0x34b689...a622f6`; ethereum `0x40a63b...37e188`; ethereum `0x876079...44ee1c`; ethereum `0xe14597...0a9cc2`; ethereum `0xe1f6ac...abbe2a`; optimism `0x1631fa...e221fc`; base `0x7a2ed2...85349b`; arbitrum `0x2d43e8...868d8f`; arbitrum `0x66eb42...452715` | ⚠️ Unaudited |
| AutomationSwap | unknown | ethereum | 3 deployments: ethereum [`0x36a9ed...53ce7e`](./contracts/ethereum-1/0x36a9ed9b00ecc380c4e559b80a1857c65353ce7e/); ethereum `0x36ab64...ddd363`; ethereum `0xae5280...d4a9d1` | ⚠️ Unaudited |
| BadgerCatcher | unknown | ethereum | [`0x17e295...b368ba`](./contracts/ethereum-1/0x17e2959bb76676306558fd3cf678cffb31b368ba/) | ⚠️ Unaudited |
| BasicBuyCommand | unknown | ethereum | 4 deployments: ethereum [`0x05fb55...0d1af9`](./contracts/ethereum-1/0x05fb55553e54afb33a5acc1f23b1f4fffd0d1af9/); ethereum `0x31285a...7e1e3f`; ethereum `0xd36729...aeb912`; ethereum `0xeff6e9...e59b39` | ⚠️ Unaudited |
| BasicSellCommand | unknown | ethereum | 5 deployments: ethereum [`0x5588d8...a702f1`](./contracts/ethereum-1/0x5588d89a3c68e5a87cafe6b79ef8caa667a702f1/); ethereum `0x7c0d6d...c6c0b2`; ethereum `0xa6bd41...d70fb8`; ethereum `0xabdb63...9b1a6b`; ethereum `0xf9469d...6a1185` | ⚠️ Unaudited |
| BestPrice | operational_periphery | ethereum | [`0x52e82c...ee1622`](./contracts/ethereum-1/0x52e82ce4d5a22b2f6f265744ff59851401ee1622/) | ⚠️ Unaudited |
| BidProxy | unknown | ethereum | 3 deployments: ethereum [`0x010840...ab7a8d`](./contracts/ethereum-1/0x0108409f3e6d3bfec375fc21840ff01fddab7a8d/); ethereum `0x5f740b...02c45e`; ethereum `0xf08b80...dd442a` | ⚠️ Unaudited |
| BorrowLogic | core_logic | ethereum | 7 deployments: ethereum [`0x2634a7...e05e19`](./contracts/ethereum-1/0x2634a7554343350f3ff974eb76bcc378c6e05e19/); ethereum `0x2dd2a2...3e8fae`; ethereum `0x4662c8...7e7e9a`; ethereum `0x68fb45...8cbeef`; ethereum `0x8f6bd9...d202b6`; ethereum `0x9b7e08...283643`; ethereum `0xed5668...606709` | ⚠️ Unaudited |
| BotRegistry | registry | ethereum | [`0x637726...def77b`](./contracts/ethereum-1/0x637726f8b08a7abe3ae3acab01a80e2d8ddef77b/) | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | ethereum | 6 deployments: ethereum [`0x2c5492...f0c6d1`](./contracts/ethereum-1/0x2c54924711e479e639032704146b865e12f0c6d1/); ethereum `0x3a60e6...495fe1`; ethereum `0x5ccc5f...dedebb`; ethereum `0x813c6c...160867`; ethereum `0xaa0bbd...a0931a`; ethereum `0xf9733f...1450ec` | ⚠️ Unaudited |
| BridgeQueue | operational_periphery | base | 28 deployments: base [`0x03cc51...1f217a`](./contracts/base-8453/0x03cc516eeb388857ad0d75000496f354251f217a/); base `0x0f8e06...28b533`; base `0x22e5c2...ee03ed`; base `0x327772...d55ff9`; base `0x358de5...89976f`; base `0x434e5f...2cc62b`; base `0x5e59a6...cb6c70`; base `0x705da2...fb8fe9`; base `0x803c5a...b4cb6c`; base `0x81b437...6c2a6f`; base `0x825150...9056c5`; base `0xa1831e...1d37d9`; base `0xa70472...c5b436`; base `0xd6fea2...d84d45`; base `0xf355b9...526846`; arbitrum `0x057f14...e997f7`; arbitrum `0x0a8c65...a7c4ae`; arbitrum `0x181b07...707bf4`; arbitrum `0x2dab8d...a575c3`; arbitrum `0x72db60...4ebbed`; arbitrum `0x76ce6b...68a279`; arbitrum `0x78d0bf...864cfd`; arbitrum `0xa762e5...536253`; arbitrum `0xb1e5a0...861273`; arbitrum `0xd33e13...f10f30`; arbitrum `0xddccce...e6fd8d`; arbitrum `0xe0212e...1c950f`; arbitrum `0xf7be2a...7d56d6` | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | base | 36 deployments: base [`0x03c229...4302d6`](./contracts/base-8453/0x03c2291f23b9f0bded48fc19f503f035314302d6/); base `0x11fdaa...eff657`; base `0x2dc9e2...bd2146`; base `0x3bb6b7...f46f1e`; base `0x46e0af...cdb356`; base `0x4a65db...709baf`; base `0x4cc292...8f3567`; base `0x571909...739267`; base `0x6c7fa0...a0ecf4`; base `0x75793d...9057c3`; base `0x83914e...8acd40`; base `0x8cbaf0...23959d`; base `0x99677c...033897`; base `0xbb2206...6e3066`; base `0xc13d90...84e3d7`; base `0xcce1f2...8d9496`; base `0xd1d05b...984b09`; base `0xda716b...3e270a`; base `0xe5ef46...628120`; base `0xe75439...870601`; base `0xeb4257...0a2996`; arbitrum `0x077b07...72894c`; arbitrum `0x1021d4...d1bc19`; arbitrum `0x238302...a843dc`; arbitrum `0x2dcba5...21e676`; arbitrum `0x4042df...ada0ad`; arbitrum `0x46753d...9375e2`; arbitrum `0x5dfacd...877407`; arbitrum `0x72969d...8a02ae`; arbitrum `0x7b1e86...a494f3`; arbitrum `0x940f66...f29933`; arbitrum `0xa6fb46...23c84c`; arbitrum `0xa8ee1a...e1e33c`; arbitrum `0xd057ad...f13020`; arbitrum `0xf36874...310ab4`; arbitrum `0xfea14c...cb3a8a` | ⚠️ Unaudited |
| BuyAndBurn | unknown | base | 5 deployments: base [`0x092c41...dd6f57`](./contracts/base-8453/0x092c41c6e9a8a54577cede5d077971116ddd6f57/); base `0x5dcbbc...c170ef`; arbitrum [`0x092c41...dd6f57`](./contracts/arbitrum-42161/0x092c41c6e9a8a54577cede5d077971116ddd6f57/); arbitrum `0x1f221b...de67dd`; arbitrum `0x937960...9f7e11` | ⚠️ Unaudited |
| CapAutomatorResolver | unknown | ethereum | 3 deployments: ethereum [`0x5c489f...6560de`](./contracts/ethereum-1/0x5c489f8b87f988d4cb56c40c03e5770dc36560de/); ethereum `0x61f60a...5983ee`; ethereum `0x870852...079b08` | ⚠️ Unaudited |
| CappedFallbackRateSource | unknown | ethereum | [`0xabc99f...836246`](./contracts/ethereum-1/0xabc99f366d2be1f4e5b8dfc0f561a751dd836246/) | ⚠️ Unaudited |
| ChainLogView | unknown | ethereum | [`0x4b323e...75f75f`](./contracts/ethereum-1/0x4b323eb2ece7fc1d81f1819c26a7cbd29975f75f/) | ⚠️ Unaudited |
| ClipFab | unknown | ethereum | [`0x0716f2...3df663`](./contracts/ethereum-1/0x0716f25fbaaae9b63803917b6125c10c313df663/) | ⚠️ Unaudited |
| ClipperMom | unknown | ethereum | [`0x79fbdf...6405a0`](./contracts/ethereum-1/0x79fbdf16b366dfb14f66ce4ac2815ca7296405a0/) | ⚠️ Unaudited |
| CloseCommand | unknown | ethereum | [`0xa553c3...a5bf2b`](./contracts/ethereum-1/0xa553c3f4e65a1fc951b236142c1f69c1bca5bf2b/) | ⚠️ Unaudited |
| CollectFee | unknown | base | 4 deployments: optimism `0x3c407e...00132a`; base [`0x13caf9...054b08`](./contracts/base-8453/0x13caf98b1a4255c301fe0ee9c0d267b6ac054b08/); base `0xaf668d...10f465`; arbitrum `0xa15e4a...3e6c70` | ⚠️ Unaudited |
| Collector | unknown | ethereum | 6 deployments: ethereum [`0x77e114...61ba6c`](./contracts/ethereum-1/0x77e11453a99a7770b04f7921ffccd3ee9761ba6c/); ethereum `0x856900...7cd68f`; ethereum `0x92afd6...1d8709`; ethereum `0x930e7e...046887`; ethereum `0xb137e7...46ece5`; ethereum `0xf1e577...58d312` | ⚠️ Unaudited |
| CollectorController | governance | ethereum | 2 deployments: ethereum [`0x92ef09...818f7a`](./contracts/ethereum-1/0x92ef091c5a1e01b3ce1ba0d0150c84412d818f7a/); ethereum `0xac1de1...032b4d` | ⚠️ Unaudited |
| CompBalance | unknown | ethereum | 2 deployments: ethereum [`0xba0221...23e0c7`](./contracts/ethereum-1/0xba02213fe2079505925f08fb45c6d91d4f23e0c7/); ethereum `0xd1f857...f6facc` | ⚠️ Unaudited |
| CompBorrow | core_logic | ethereum | [`0x3d8095...8d28ad`](./contracts/ethereum-1/0x3d809511ab8f62a5f14f97f8a947da1b818d28ad/) | ⚠️ Unaudited |
| CompLeverage | unknown | ethereum | 6 deployments: ethereum [`0x0cfa99...3f6777`](./contracts/ethereum-1/0x0cfa997b0b5b4a309504d35f359faa1c133f6777/); ethereum `0x19e189...b9ca99`; ethereum `0x249318...216ed6`; ethereum `0x3997ba...246ba4`; ethereum `0x46dc99...0bb3c4`; ethereum `0x5ffefb...43e5ca` | ⚠️ Unaudited |
| CompoundAttacker | unknown | ethereum | [`0x2ebe02...316b1a`](./contracts/ethereum-1/0x2ebe02350afa9a4e453cec53a22018c043316b1a/) | ⚠️ Unaudited |
| CompoundV3Ark | unknown | ethereum | 8 deployments: ethereum [`0x3714c1...8e8ffb`](./contracts/ethereum-1/0x3714c1d845e7137f144902a19828124c388e8ffb/); ethereum `0x593f72...f367e6`; ethereum `0xcc9691...dac88c`; ethereum `0xedc6a6...01f9ea`; base `0xcc725b...250442`; base `0xedc6a6...01f9ea`; arbitrum `0x7bb453...66151e`; arbitrum `0xedc6a6...01f9ea` | ⚠️ Unaudited |
| CompPayback | unknown | ethereum | [`0xa69073...9dfc60`](./contracts/ethereum-1/0xa690739b3eef144d313f8e839340c0bb1e9dfc60/) | ⚠️ Unaudited |
| CompShifter | unknown | ethereum | 6 deployments: ethereum [`0x163a86...fbd1f3`](./contracts/ethereum-1/0x163a86d7bc788fc22f1cbbbb9ac8d281ddfbd1f3/); ethereum `0x1c27be...854eea`; ethereum `0x59cc2b...8bc82a`; ethereum `0x5e262b...41f2b2`; ethereum `0xa1b3b6...043dd2`; ethereum `0xf0bc27...bdf210` | ⚠️ Unaudited |
| CompSupply | unknown | ethereum | [`0x0d6f5a...1ef808`](./contracts/ethereum-1/0x0d6f5ae7b2fa153bc337c64eca9b9d10e31ef808/) | ⚠️ Unaudited |
| CompWithdraw | operational_periphery | ethereum | [`0xdf7df6...f4db20`](./contracts/ethereum-1/0xdf7df636fa868933fe8df49cc3ed7754edf4db20/) | ⚠️ Unaudited |
| ConfigurationManager | governance | base | 39 deployments: ethereum `0x8ae7fb...3e2a66`; ethereum `0xbb906a...77807b`; sonic `0x3714c1...8e8ffb`; sonic `0x49f154...4326d8`; sonic `0xdff0fc...463e32`; base [`0x0eca31...302280`](./contracts/base-8453/0x0eca3163f8edb02dc48fb0e88a62f4c911302280/); base `0x10aa83...53fd31`; base `0x17134e...e81ea1`; base `0x27c7a4...9831bf`; base `0x34b29f...78b1da`; base `0x394c95...b35237`; base `0x4fa0aa...ff0d1a`; base `0x5a459b...e50d92`; base `0x5c442e...aa77da`; base `0x75b5ab...746316`; base `0x8ae7fb...3e2a66`; base `0x9b8a8e...f62b20`; base `0xa88876...2c974b`; base `0xb566ee...94d655`; base `0xccfa48...301103`; base `0xd9c964...7b552e`; base `0xdbcd99...9c79e2`; base `0xe8d859...fc4c58`; base `0xf5731e...a88515`; arbitrum `0x129e57...93cb5c`; arbitrum `0x1c7488...5d6c31`; arbitrum `0x2494bf...2ec9f7`; arbitrum `0x552d10...d284de`; arbitrum `0x75b5ab...746316`; arbitrum `0x8ae7fb...3e2a66`; arbitrum `0x902950...be0d68`; arbitrum `0x9ce09a...a780ca`; arbitrum `0xbb906a...77807b`; arbitrum `0xc5cab7...c41aac`; arbitrum `0xd03af7...ecf1c1`; arbitrum `0xd74d63...645ed2`; arbitrum `0xd9b0c3...390c26`; arbitrum `0xf262b7...29f003`; arbitrum `0xf65f41...231c85` | ⚠️ Unaudited |
| ConfigurationManagerWhitelist | governance | arbitrum | 2 deployments: arbitrum [`0x5632b3...eeddc5`](./contracts/arbitrum-42161/0x5632b3df8a030001d0a89c2d9b420c2210eeddc5/); arbitrum `0xe0d250...8912b6` | ⚠️ Unaudited |
| ConfiguratorLogic | governance | ethereum | [`0xe10adc...4e6e1f`](./contracts/ethereum-1/0xe10adc43aa2fd72a402e13afd4153ceca14e6e1f/) | ⚠️ Unaudited |
| ConstantMultipleValidator | unknown | base | 6 deployments: ethereum `0x56fff6...927deb`; ethereum `0x75d956...b661aa`; optimism `0x655c19...7b1b81`; base [`0x0baf22...6be2fa`](./contracts/base-8453/0x0baf223a3a240bb67d536bdc6bcd2920de6be2fa/); arbitrum `0x3b7701...adfecd`; arbitrum `0x8a78e3...87ac8c` | ⚠️ Unaudited |
| CreamBasicProxy | unknown | ethereum | [`0x3b676b...249b89`](./contracts/ethereum-1/0x3b676bd85c77b8e8b7419fd23ef0259d39249b89/) | ⚠️ Unaudited |
| CreamBorrowProxy | core_logic | ethereum | [`0x87f198...7e2ddd`](./contracts/ethereum-1/0x87f198ef6116cdbc5f36b581d212ad950b7e2ddd/) | ⚠️ Unaudited |
| CreamFlashLoanTaker | unknown | ethereum | [`0x545436...e884a3`](./contracts/ethereum-1/0x5454361812c27078b3805c729bf8ea1894e884a3/) | ⚠️ Unaudited |
| CreamImportFlashLoan | unknown | ethereum | [`0x24f4ac...a7dbf8`](./contracts/ethereum-1/0x24f4ac0fe758c45cf8425d8fbdd608cca9a7dbf8/) | ⚠️ Unaudited |
| CreamImportTaker | unknown | ethereum | [`0xbeb490...5b7315`](./contracts/ethereum-1/0xbeb4900e8e7f36b4338f87ccda2c9773545b7315/) | ⚠️ Unaudited |
| CreamLoanInfo | periphery | ethereum | [`0x7cc564...51618c`](./contracts/ethereum-1/0x7cc564dda625af51b75d67768ab80592be51618c/) | ⚠️ Unaudited |
| CreamSaverFlashLoan | unknown | ethereum | [`0x3ced20...2cc625`](./contracts/ethereum-1/0x3ced2067c0b057611e4e2686dbe40028962cc625/) | ⚠️ Unaudited |
| CreamSaverFlashProxy | unknown | ethereum | [`0x1e0125...96fa51`](./contracts/ethereum-1/0x1e012554891d271edc80ba8eb146ea5ff596fa51/) | ⚠️ Unaudited |
| CrossChainArk | unknown | base | 16 deployments: base [`0x3eebb3...b69be2`](./contracts/base-8453/0x3eebb35f3e85cfe8ca2dc023f5c6aca46fb69be2/); base `0x4945c3...fb5cfb`; base `0x5dcd92...6afbd4`; base `0x6a7156...0fd468`; base `0x7c17d6...1a12b8`; base `0x8ad642...d641d8`; base `0x8fe1d8...9069a4`; base `0x9d4d5e...2271ea`; base `0x9f54fb...5c572f`; base `0xb00c17...55c3ca`; base `0xb3c157...28dd79`; base `0xc1fe80...266322`; base `0xe6f9de...6963b9`; base `0xf55163...7baa98`; base `0xf73e40...0de204`; base `0xff50ff...6c5c65` | ⚠️ Unaudited |
| CrossChainFleetProxy | unknown | arbitrum | 10 deployments: arbitrum [`0x1534e3...c80cb8`](./contracts/arbitrum-42161/0x1534e3d0f23d91142424a0091aab8037fac80cb8/); arbitrum `0x1fbfdb...fbf521`; arbitrum `0x44945d...6a04de`; arbitrum `0x6fc11b...57e015`; arbitrum `0x875772...aa4c71`; arbitrum `0x8e60b6...deea0d`; arbitrum `0x942610...f8172a`; arbitrum `0xa48cae...aad637`; arbitrum `0xb020f7...cadcf9`; arbitrum `0xcbeb73...f84367` | ⚠️ Unaudited |
| CrossChainRegistry | registry | arbitrum | 11 deployments: base `0x4b0b47...fd19db`; base `0xa0a7d7...41a68a`; base `0xa435f1...59c278`; base `0xb2b179...7b5371`; base `0xb53dbe...dc8905`; base `0xcdb834...5dc0e9`; base `0xfb7dad...34c010`; arbitrum [`0x41ee96...77a5fd`](./contracts/arbitrum-42161/0x41ee965f5d3ccc914e2e18c5319b75b91577a5fd/); arbitrum `0x57047e...bcbb0c`; arbitrum `0xb566ee...94d655`; arbitrum `0xeccd16...8616e2` | ⚠️ Unaudited |
| D3M4626TypePool | core_logic | ethereum | [`0x9c259f...1f7f7e`](./contracts/ethereum-1/0x9c259f14e5d9f35a0434cd3c4abbbcaa2f1f7f7e/) | ⚠️ Unaudited |
| D3MOperatorPlan | unknown | ethereum | [`0x374b5f...48fd39`](./contracts/ethereum-1/0x374b5f915aaed790cbdd341e6f406910d648fd39/) | ⚠️ Unaudited |
| D3MOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xa5aa14...3b02af`](./contracts/ethereum-1/0xa5aa14dee8c8204e424a55776e53bfff413b02af/); ethereum `0xdd23cb...41afb8` | ⚠️ Unaudited |
| D3MResolver | unknown | ethereum | 4 deployments: ethereum [`0x12f007...70a1bd`](./contracts/ethereum-1/0x12f00746b7630f3603c93d34476d8ad46f70a1bd/); ethereum `0x38c45a...0131be`; ethereum `0x4e6bf4...aa3e95`; ethereum `0x89fc59...090586` | ⚠️ Unaudited |
| DaiInterestRateStrategy | operational_periphery | ethereum | 6 deployments: ethereum [`0x04a65f...d097ce`](./contracts/ethereum-1/0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce/); ethereum `0x113dc4...8df0fe`; ethereum `0x7d8f22...77455f`; ethereum `0x9f9782...0fb21d`; ethereum `0xb17ff3...89d651`; ethereum `0xfd0cc3...3c5c37` | ⚠️ Unaudited |
| DaiInterestRateStrategyResolver | operational_periphery | ethereum | 3 deployments: ethereum [`0x290657...e8881c`](./contracts/ethereum-1/0x290657bbec18a7fa6bb9b58ed27cbc068ee8881c/); ethereum `0x850305...c0214e`; ethereum `0x92ca94...4ebd8f` | ⚠️ Unaudited |
| DaiJugInterestRateStrategy | operational_periphery | ethereum | [`0x191e97...c0400d`](./contracts/ethereum-1/0x191e97623b1733369290ee5d018d0b068bc0400d/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | ethereum | 5 deployments: ethereum [`0x0d5670...32f4e3`](./contracts/ethereum-1/0x0d56700c90a690d8795d6c148acd94b12932f4e3/); ethereum `0x4d9885...d24f76`; ethereum `0x764b4a...8f047c`; ethereum `0xec4cf6...06ff90`; ethereum `0xf2812d...d8294e` | ⚠️ Unaudited |
| DefisaverLogger | unknown | ethereum | [`0x5c55b9...b62126`](./contracts/ethereum-1/0x5c55b921f590a89c1ebe84df170e655a82b62126/) | ⚠️ Unaudited |
| DFSBuy | unknown | ethereum | [`0xbd495a...ec754c`](./contracts/ethereum-1/0xbd495a33740bf0dcd998351ee974b5c304ec754c/) | ⚠️ Unaudited |
| DFSExchange | unknown | ethereum | [`0xc2ce04...3a1587`](./contracts/ethereum-1/0xc2ce04e2fb4dd20964b4410fce718b95963a1587/) | ⚠️ Unaudited |
| DFSPrices | operational_periphery | ethereum | [`0xb414a1...627c6a`](./contracts/ethereum-1/0xb414a17dd9dab4f6e9fc7bbc90b4fb93a1627c6a/) | ⚠️ Unaudited |
| DFSProxyRegistry | registry | ethereum | 3 deployments: ethereum [`0x29474f...3805ed`](./contracts/ethereum-1/0x29474fdac7142f9ab7773b8e38264fa15e3805ed/); ethereum `0x347967...d05133`; ethereum `0xbb6a23...98fd07` | ⚠️ Unaudited |
| DFSRegistry | registry | ethereum | 3 deployments: ethereum [`0x368ddc...a07ed0`](./contracts/ethereum-1/0x368ddc7a63f28b95645adf8919eaac4b8ca07ed0/); ethereum `0xb0e168...e1d467`; ethereum `0xc34364...7496c1` | ⚠️ Unaudited |
| DFSSell | unknown | ethereum | [`0xd1ab20...1d5d4a`](./contracts/ethereum-1/0xd1ab205932f6fd788dfb06ec4533e8c3711d5d4a/) | ⚠️ Unaudited |
| DogFab | unknown | ethereum | [`0x3f6295...0a3306`](./contracts/ethereum-1/0x3f629503fc94acb59edeba910b1b5aedc90a3306/) | ⚠️ Unaudited |
| DPMAdapter | adapter | optimism | 5 deployments: ethereum `0xbf2eca...fc9cf7`; optimism [`0x35bd29...e4d2e8`](./contracts/optimism-10/0x35bd299d8e40078056da8aa87f9d217acce4d2e8/); base `0x3c420f...128da3`; arbitrum `0x730226...8ffd15`; arbitrum `0xa227a6...051d7f` | ⚠️ Unaudited |
| Drizzle | unknown | ethereum | [`0x79ebe7...3312a3`](./contracts/ethereum-1/0x79ebe7cbbb7ed8037a615214fcf67406cd3312a3/) | ⚠️ Unaudited |
| DSROracleForwarderArbitrumOne | operational_periphery | ethereum | 4 deployments: ethereum [`0x1b62fd...e9933f`](./contracts/ethereum-1/0x1b62fd9bb00b2c730ec7ea3d4c32fccc6be9933f/); ethereum `0x36fe53...e4f125`; ethereum `0x7f36e7...b85799`; ethereum `0x900d52...8e9481` | ⚠️ Unaudited |
| DSROracleForwarderBase | operational_periphery | ethereum | 3 deployments: ethereum [`0x66bcac...c4e6ad`](./contracts/ethereum-1/0x66bcacc9e7add388c4254950df59bfec7cc4e6ad/); ethereum `0x8ed551...563e0e`; ethereum `0xfeedc7...96483d` | ⚠️ Unaudited |
| DSROracleForwarderGnosis | operational_periphery | ethereum | 3 deployments: ethereum [`0x35956b...84cf27`](./contracts/ethereum-1/0x35956b98d441edc00cc04c776dbff6ba9884cf27/); ethereum `0x7add73...c41ef4`; ethereum `0xa11850...f2c834` | ⚠️ Unaudited |
| DSROracleForwarderOptimism | operational_periphery | ethereum | 5 deployments: ethereum [`0x2f9605...45082d`](./contracts/ethereum-1/0x2f9605751b55dd3414bfd39d7ecac9bc2b45082d/); ethereum `0x404212...94def3`; ethereum `0x8e343a...f996e6`; ethereum `0x900ae9...613c71`; ethereum `0xcc63cc...6a8244` | ⚠️ Unaudited |
| DSROracleForwarderWorldChain | operational_periphery | ethereum | 2 deployments: ethereum [`0xa34437...3e547b`](./contracts/ethereum-1/0xa34437daae56a7cc6dc757048933d7777b3e547b/); ethereum `0xcd70ea...1c610f` | ⚠️ Unaudited |
| DssCdpManager | governance | ethereum | [`0x5ef30b...435e39`](./contracts/ethereum-1/0x5ef30b9986345249bc32d8928b7ee64de9435e39/) | ⚠️ Unaudited |
| DssExecLib | unknown | ethereum | 4 deployments: ethereum [`0x25da9f...9e23a3`](./contracts/ethereum-1/0x25da9fce914fa6914631add105d83691e19e23a3/); ethereum `0x5b2867...a768b3`; ethereum `0x9a6c49...a234ef`; ethereum `0xc061ed...b03347` | ⚠️ Unaudited |
| DssSpell | unknown | ethereum | 16 deployments: ethereum [`0x082515...972369`](./contracts/ethereum-1/0x0825152884fbe61b0feb458af29cc4ab49972369/); ethereum `0x0a352a...7d7d91`; ethereum `0x0cf9b1...56d6fa`; ethereum `0x296e9c...e761d4`; ethereum `0x389a34...0d81a7`; ethereum `0x3baab0...fa922f`; ethereum `0x454ba3...30ebe4`; ethereum `0x5f6371...eb2eb8`; ethereum `0x637f98...9b19f5`; ethereum `0x639145...a1a79b`; ethereum `0x8332fb...719330`; ethereum `0x961eee...967f09`; ethereum `0x993def...b5d9d2`; ethereum `0xdb0d1a...8d42b6`; ethereum `0xe6da9d...55d71c`; ethereum `0xeb44d1...97005b` | ⚠️ Unaudited |
| Dummy | unknown | ethereum | [`0xbb2ed9...a6cf99`](./contracts/ethereum-1/0xbb2ed9f2485ba52405d94611965d031b14a6cf99/) | ⚠️ Unaudited |
| EmissionManager | operational_periphery | ethereum | [`0xf09e48...7932a4`](./contracts/ethereum-1/0xf09e48dd4ca8e76f63a57add428bb06fee7932a4/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | 6 deployments: ethereum [`0x1ef5e6...af5044`](./contracts/ethereum-1/0x1ef5e645fb31a441180e97d074b6fe73e2af5044/); ethereum `0x21fc61...09028d`; ethereum `0x2ad006...50dade`; ethereum `0x6bf8ea...5c6ba2`; ethereum `0x862b1c...645a92`; ethereum `0xc814b5...b68c95` | ⚠️ Unaudited |
| EndFab | unknown | ethereum | 2 deployments: ethereum [`0x7917ff...48c078`](./contracts/ethereum-1/0x7917ff6b73bd9df5435d299cd2ae35732048c078/); ethereum `0xcc669f...3a0cbb` | ⚠️ Unaudited |
| ERC20ProxyActions | token | optimism | 4 deployments: optimism [`0x211131...fd09e2`](./contracts/optimism-10/0x211131b23d07115030b51dfd8922be5a23fd09e2/); base `0xf55228...ba8338`; base `0xfcf904...d2472e`; arbitrum `0x339f18...6762b4` | ⚠️ Unaudited |
| ERC4626Ark | unknown | ethereum | 111 deployments: ethereum [`0x0264f3...3b45e3`](./contracts/ethereum-1/0x0264f3a10526b5eb5f75eb4004df6e3ccc3b45e3/); ethereum `0x05f459...450d66`; ethereum `0x068df9...87b26c`; ethereum `0x0b1332...f3bf13`; ethereum `0x0f7c5a...9322da`; ethereum `0x0fa036...ac29c8`; ethereum `0x10ef55...fed951`; ethereum `0x135179...b8582c`; ethereum `0x1534e3...c80cb8`; ethereum `0x165d1a...e4d79b`; ethereum `0x205ae9...75f793`; ethereum `0x235dd2...9a00f6`; ethereum `0x2d0afb...f0af14`; ethereum `0x2e890e...f88721`; ethereum `0x325536...48f0e5`; ethereum `0x36d050...873a6f`; ethereum `0x3f289b...c859e8`; ethereum `0x46955b...b72d47`; ethereum `0x4b7752...d49728`; ethereum `0x5093da...c21c14`; ethereum `0x5d8ad7...5fbeb5`; ethereum `0x5da1c5...93cb66`; ethereum `0x5de028...4b2523`; ethereum `0x65ff45...5e4b45`; ethereum `0x6a6033...962e44`; ethereum `0x6d3ef0...e2668f`; ethereum `0x702c41...c7826f`; ethereum `0x71e76f...592534`; ethereum `0x72f0d7...f5c6a6`; ethereum `0x74812c...bbdfb5`; ethereum `0x78bfc6...e27d78`; ethereum `0x793174...207061`; ethereum `0x827d16...289a28`; ethereum `0x9026cc...03ba5f`; ethereum `0x9ad7ea...4e80eb`; ethereum `0xaab08a...0206ef`; ethereum `0xb02fa0...fbe016`; ethereum `0xb2de82...3e0f29`; ethereum `0xb3be2a...71b80b`; ethereum `0xbc7070...52eea6`; ethereum `0xc320ff...0c5470`; ethereum `0xc496c6...9f2ad5`; ethereum `0xca75e8...2b5c35`; ethereum `0xccbd61...9c1cc4`; ethereum `0xdb6d68...9cc02e`; ethereum `0xdc931f...b49ce9`; ethereum `0xe2d407...522c34`; ethereum `0xfd8993...568519`; sonic `0x0381b9...6780d4`; sonic `0x3002a7...ad5935`; sonic `0x4b757b...bec214`; sonic `0xc0bccb...c9e681`; sonic `0xd4dd34...a4aa27`; sonic `0xda50ce...30a817`; base `0x16b2fc...64fe01`; base `0x2a6e16...ec5a2c`; base `0x3e8402...412d3f`; base `0x434fa3...347069`; base `0xa18ac9...119175`; base `0xadeb60...57a002`; base `0xd29235...5ee60f`; base `0xd3c89c...cba7ca`; base `0xdb6d68...9cc02e`; base `0xdc7363...d6802c`; base `0xe84176...59eda7`; arbitrum `0x05a0d0...f07308`; arbitrum `0x09d91a...11093e`; arbitrum `0x1003aa...61a0f8`; arbitrum `0x1aefbe...07435f`; arbitrum `0x3ac156...91c91d`; arbitrum `0x3d1772...e81632`; arbitrum `0x406048...793f0b`; arbitrum `0x45ff58...5ac8b5`; arbitrum `0x490e00...c1024f`; arbitrum `0x497d89...9a38df`; arbitrum `0x4dd3f3...d85453`; arbitrum `0x4ef91e...103b74`; arbitrum `0x571350...efafe4`; arbitrum `0x580b9a...fdee1d`; arbitrum `0x622855...cd1ea7`; arbitrum `0x65ef67...cd0094`; arbitrum `0x668b52...135317`; arbitrum `0x699909...de1db2`; arbitrum `0x705a0b...a55caf`; arbitrum `0x7b7551...00a302`; arbitrum `0x80b9a9...4c2eb5`; arbitrum `0x8d20ec...c40931`; arbitrum `0x9032c5...609b7a`; arbitrum `0x945959...0963da`; arbitrum `0x9f5111...daf3f2`; arbitrum `0xa69f6a...30ce68`; arbitrum `0xad9464...bee29a`; arbitrum `0xadb5a5...e6a41d`; arbitrum `0xaf7b43...ae6545`; arbitrum `0xb88fe3...47b3cc`; arbitrum `0xba686c...d50f44`; arbitrum `0xbbd60d...b76916`; arbitrum `0xc8a950...09b9d0`; arbitrum `0xcf5870...841985`; arbitrum `0xd0aadd...e1958f`; arbitrum `0xd17c91...7213ce`; arbitrum `0xd6c1ae...ef267d`; arbitrum `0xd84247...51404d`; arbitrum `0xdb6d68...9cc02e`; arbitrum `0xdd346e...b7fc44`; arbitrum `0xe32ecd...40fb53`; arbitrum `0xefe2ca...88a8a0`; arbitrum `0xf609fc...5343b3`; arbitrum `0xf7562b...8c2372`; arbitrum `0xf803ba...e0131e`; arbitrum `0xf98f23...1ba367` | ⚠️ Unaudited |
| ESMFab | unknown | ethereum | [`0xdacc23...4ed638`](./contracts/ethereum-1/0xdacc23c8d2b0eb2fcca22feac3d70f8a094ed638/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | 4 deployments: ethereum [`0x12dcc7...258b91`](./contracts/ethereum-1/0x12dcc776525c35836b10026929558208d1258b91/); ethereum `0x99e448...13d324`; ethereum `0xb5eb8c...726c7b`; ethereum `0xf22f17...0a6ba6` | ⚠️ Unaudited |
| ExchangeLogger | unknown | ethereum | [`0xf7ce9a...01883e`](./contracts/ethereum-1/0xf7ce9aa00bc4f4c413e4b4a613e889c1ad01883e/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | [`0xfab86c...596e3e`](./contracts/ethereum-1/0xfab86c4f8f1f86dc0825dc29215c82f856596e3e/) | ⚠️ Unaudited |
| EZETHExchangeRateOracle | operational_periphery | ethereum | [`0x52e85e...60014a`](./contracts/ethereum-1/0x52e85eb49e07df74c8a9466d2164b4c4ca60014a/) | ⚠️ Unaudited |
| FeeRecipient | operational_periphery | ethereum | [`0x39c4a9...ee6f2a`](./contracts/ethereum-1/0x39c4a92dc506300c3ea4c67ca4ca611102ee6f2a/) | ⚠️ Unaudited |
| FixedPriceOracle | operational_periphery | ethereum | [`0x42a03f...39f777`](./contracts/ethereum-1/0x42a03f81dd8a1cecd746dc262e4d1cd9fd39f777/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | ethereum | 6 deployments: ethereum [`0x3b3e65...939a89`](./contracts/ethereum-1/0x3b3e6550d6eb18f7a85e62e546b6df475a939a89/); ethereum `0x7f44e1...0ce247`; ethereum `0xadeaf0...6e0676`; ethereum `0xcb0e49...ebe9ba`; ethereum `0xcc3037...7314c0`; ethereum `0xfd60dc...837ba2` | ⚠️ Unaudited |
| FLDyDx | unknown | ethereum | 2 deployments: ethereum [`0x6a0102...70ee03`](./contracts/ethereum-1/0x6a01025de5d123d2bbede0fcb4e136da9870ee03/); ethereum `0xfee401...02627e` | ⚠️ Unaudited |
| FleetCommander | unknown | base | 69 deployments: ethereum `0x17ee2d...54ad8d`; ethereum `0x1f221b...de67dd`; ethereum `0x27d535...c462e4`; ethereum `0x2e6abc...a88e10`; ethereum `0x40e9c8...e55651`; ethereum `0x67e536...0ab506`; ethereum `0x8360e8...81187d`; ethereum `0x98c49e...9ecf17`; ethereum `0xd94d5f...010ba8`; ethereum `0xe9cda4...70cb06`; sonic `0x507a2d...7964f8`; sonic `0x64eb3c...3d2b86`; sonic `0x8b8235...a12922`; sonic `0xf06bed...6bfbe0`; base [`0x065092...344aee`](./contracts/base-8453/0x0650924517452d8fff948659deed886db2344aee/); base `0x257447...38f669`; base `0x2a5a66...f51897`; base `0x2bb9ad...f834af`; base `0x2c5d1d...efa1e3`; base `0x3b8d92...ae2a13`; base `0x3d34ec...8b161d`; base `0x3d58ca...409832`; base `0x43fe4e...2aaf6d`; base `0x53d0a0...e6feea`; base `0x547e9b...56cf04`; base `0x574b83...c624c4`; base `0x625732...a6669c`; base `0x64db8f...48e0f0`; base `0x66b527...cf3045`; base `0x75d4f7...92d399`; base `0x779845...f3e142`; base `0x879eb3...e1e90c`; base `0x8f5acd...5a6a89`; base `0x98c49e...9ecf17`; base `0xa09e82...91c794`; base `0xa1f59f...bd1d6d`; base `0xaab08a...0206ef`; base `0xbce74d...db4a62`; base `0xd555f7...674f14`; base `0xd73fd6...9a3fde`; base `0xe2c878...f9fca4`; base `0xe2f45c...213963`; base `0xeb201f...6f224d`; base `0xef7905...a90900`; base `0xf762b4...33a4d9`; arbitrum `0x194dc1...cf781b`; arbitrum `0x1b1655...6e6def`; arbitrum `0x265301...df81c2`; arbitrum `0x31ed11...67fc35`; arbitrum `0x364a0f...e6ccae`; arbitrum `0x395e40...055d8e`; arbitrum `0x3e6d6f...ae1a16`; arbitrum `0x45342a...7e7cae`; arbitrum `0x4774d1...ae1856`; arbitrum `0x4c8d82...5efe59`; arbitrum `0x4f63cf...34bb58`; arbitrum `0x5e4291...b341ff`; arbitrum `0x635a92...55f483`; arbitrum `0x68d1c2...edf6a6`; arbitrum `0x8a365d...353475`; arbitrum `0x98c49e...9ecf17`; arbitrum `0xa68959...853e6c`; arbitrum `0xb2f27d...4a15a9`; arbitrum `0xb95a1e...149b7d`; arbitrum `0xc08681...36a081`; arbitrum `0xc10fc3...3be076`; arbitrum `0xc16f95...c0322f`; arbitrum `0xd271dd...fa2762`; arbitrum `0xf8e67a...64a4ee` | ⚠️ Unaudited |
| FleetCommanderDao | unknown | ethereum | 4 deployments: ethereum [`0x0c1fbc...632114`](./contracts/ethereum-1/0x0c1fbccc019320032d9acd193447560c8c632114/); ethereum `0x218f32...6b15fc`; ethereum `0x48d047...2a3b8f`; ethereum `0xd77f9a...0c76fc` | ⚠️ Unaudited |
| FleetCommanderRewardsManagerFactory | registry | base | 30 deployments: ethereum `0x83e1e5...9dc90c`; ethereum `0xa2e47b...04123f`; sonic `0x716028...dba7d1`; sonic `0xb3be2a...71b80b`; sonic `0xc474cd...ef0459`; base [`0x09276b...0bb189`](./contracts/base-8453/0x09276b3013c606f8aabb7701accbab5ffd0bb189/); base `0x15625f...ea9b26`; base `0x1757b6...5a9ea6`; base `0x325621...95572a`; base `0x355e2e...ba87d7`; base `0x57e3af...dff7ce`; base `0x6e3574...99cf38`; base `0x77d249...376a32`; base `0x83e1e5...9dc90c`; base `0x90cad6...fdff03`; base `0xc064eb...9640ce`; base `0xc3b6e3...44024d`; base `0xda9575...95c715`; base `0xdba66f...0b97f1`; base `0xf950ad...0abcd9`; arbitrum `0x355e2e...ba87d7`; arbitrum `0x5c442e...aa77da`; arbitrum `0x6943f2...bbb3b4`; arbitrum `0x6a1521...ac944f`; arbitrum `0x6fcf84...87dceb`; arbitrum `0x83e1e5...9dc90c`; arbitrum `0xa6040c...0b6b1a`; arbitrum `0xdbb67d...c77cc1`; arbitrum `0xe38f94...1e362e`; arbitrum `0xf7fb85...8bd9b7` | ⚠️ Unaudited |
| FleetCommanderWhitelist | unknown | arbitrum | 2 deployments: arbitrum [`0x6e23cf...dfdbeb`](./contracts/arbitrum-42161/0x6e23cfe8d830488bc824c0add201a1a2e1dfdbeb/); arbitrum `0xb960ba...676def` | ⚠️ Unaudited |
| FleetProxy | unknown | base | 10 deployments: base [`0x113e5a...b480f7`](./contracts/base-8453/0x113e5a468b2ddf550fd714ef6f6ff8dc96b480f7/); base `0x687e17...132262`; base `0x6bdcf1...49dc0f`; base `0x77d633...e8cba4`; base `0x9fa92c...3d18fb`; base `0xf909ee...ff659e`; base `0xfa92fe...0b2e8d`; base `0xff3231...2582ea`; arbitrum `0x45bf10...074ddd`; arbitrum `0x8c6a27...3b3dc8` | ⚠️ Unaudited |
| FLFeeFaucet | unknown | ethereum | 2 deployments: ethereum [`0x47f159...0f34b4`](./contracts/ethereum-1/0x47f159c90850d5ce09e21f931d504536840f34b4/); ethereum `0xcdd293...722284` | ⚠️ Unaudited |
| FluidLiteArk | unknown | ethereum | 7 deployments: ethereum [`0x00b437...1d7eba`](./contracts/ethereum-1/0x00b437df745c1deabe3f999dfe41fda9641d7eba/); ethereum `0x457436...374a29`; ethereum `0x60390d...75d90e`; ethereum `0x7102b6...fc349b`; ethereum `0x8545fd...d24c94`; ethereum `0xd01cf2...b9f015`; ethereum `0xfb7f78...4d48a7` | ⚠️ Unaudited |
| GemJoin | unknown | ethereum | 7 deployments: ethereum [`0x42afd4...fb1dff`](./contracts/ethereum-1/0x42afd448df7d96291551f1efe1a590101afb1dff/); ethereum `0x4aad13...3a891d`; ethereum `0xa81598...ed4327`; ethereum `0xaf034d...eee0f4`; ethereum `0xd40798...281fcc`; ethereum `0xdae88b...e593a6`; ethereum `0xf11a98...3d7cc1` | ⚠️ Unaudited |
| GemJoin_2 | unknown | ethereum | 2 deployments: ethereum [`0x435993...0f868b`](./contracts/ethereum-1/0x435993099c7d5b0be3985ada249d5ac6f90f868b/); ethereum `0x81076d...786a99` | ⚠️ Unaudited |
| GuniMultiplyProxyActions | unknown | ethereum | 3 deployments: ethereum [`0x62fab0...3e08e7`](./contracts/ethereum-1/0x62fab0ffcc439c75a7d31f94f5b34be31f3e08e7/); ethereum `0x64b001...487447`; ethereum `0xed3a95...648e30` | ⚠️ Unaudited |
| HarborCommand | unknown | base | 41 deployments: ethereum `0x07060e...bf5fc4`; ethereum `0x09eb32...b0140f`; sonic `0x092c41...dd6f57`; sonic `0x5de028...4b2523`; sonic `0xa8e471...4cf191`; base [`0x0662ec...b0ee7f`](./contracts/base-8453/0x0662ec7af9d7a9fe9ad88d389683ba56c7b0ee7f/); base `0x09eb32...b0140f`; base `0x0a05aa...e1fdc8`; base `0x11aa96...47d266`; base `0x147966...d4f20f`; base `0x31d129...42876c`; base `0x40d646...6112ae`; base `0x463b53...3b6a42`; base `0x694f9c...e36ab5`; base `0x79bdba...68c933`; base `0x8397e1...543c8a`; base `0x8ab0a8...4898b2`; base `0xa31fee...bcaf26`; base `0xac969f...016906`; base `0xcb1cf7...dde1c8`; base `0xe0e3af...23ceff`; base `0xe355f3...6613af`; base `0xf98f23...1ba367`; base `0xf9c71b...ff8a90`; base `0xfd3dde...7886dc`; arbitrum `0x09eb32...b0140f`; arbitrum `0x11aa96...47d266`; arbitrum `0x1c743a...a58108`; arbitrum `0x2ea9c3...49e6b4`; arbitrum `0x3a2c9c...19bc66`; arbitrum `0x424aa3...66f40e`; arbitrum `0x47c327...a040cf`; arbitrum `0x586b7b...6abb22`; arbitrum `0x6de9f5...00cbfb`; arbitrum `0x72b312...724c90`; arbitrum `0x7bc887...9af932`; arbitrum `0x7fbfb9...0c9a17`; arbitrum `0xab150e...8f83a5`; arbitrum `0xbd06f5...688bc8`; arbitrum `0xc5630f...b7e6f3`; arbitrum `0xc67be6...59db1e` | ⚠️ Unaudited |
| IlkRegistry | registry | ethereum | 2 deployments: ethereum [`0x5a464c...090f87`](./contracts/ethereum-1/0x5a464c28d19848f44199d003bef5ecc87d090f87/); ethereum `0xa1cb9e...12a2d5` | ⚠️ Unaudited |
| InstitutionalVaultRegistry | registry | arbitrum | [`0x209dcc...d6d9b6`](./contracts/arbitrum-42161/0x209dcc11c4a3424d7aa6c0690cbea07de9d6d9b6/) | ⚠️ Unaudited |
| KillSwitchOracle | operational_periphery | ethereum | [`0x909a86...1abe82`](./contracts/ethereum-1/0x909a86f78e1cded68f9c2fe2c9cd922c401abe82/) | ⚠️ Unaudited |
| KillSwitchResolver | unknown | ethereum | [`0x4ee8ed...fe3a83`](./contracts/ethereum-1/0x4ee8eda1dd9412e04f2abab3b23353e8dcfe3a83/) | ⚠️ Unaudited |
| KyberWrapper | unknown | ethereum | 6 deployments: ethereum [`0x42a923...9d338c`](./contracts/ethereum-1/0x42a9237b872368e1bec4ca8d26a928d7d39d338c/); ethereum `0x69f822...8adf7e`; ethereum `0x6e56d5...9a8718`; ethereum `0x84c00c...9bc867`; ethereum `0xb4bc70...2178a6`; ethereum `0xd5dcb4...3a8588` | ⚠️ Unaudited |
| KyberWrapperV3 | unknown | ethereum | [`0x71c8dc...5d2065`](./contracts/ethereum-1/0x71c8dc1d6315a48850e88530d18d3a97505d2065/) | ⚠️ Unaudited |
| LiquidateLoan | unknown | ethereum | [`0xa8fc41...e55f56`](./contracts/ethereum-1/0xa8fc41696f2a230b03f77d258db39069e9e55f56/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | ethereum | 6 deployments: ethereum [`0x6aea92...619088`](./contracts/ethereum-1/0x6aea92693c527bc2c7b3171c6f2598d67d619088/); ethereum `0x70659b...3ecebc`; ethereum `0x82ba85...dcbe02`; ethereum `0xc0816e...13e1fa`; ethereum `0xc9d8b3...ea067a`; ethereum `0xec0c14...cc14d0` | ⚠️ Unaudited |
| LoanShifterReceiver | unknown | ethereum | 15 deployments: ethereum [`0x403106...de09ad`](./contracts/ethereum-1/0x4031064525292eaeb0dae34bbf5759e85cde09ad/); ethereum `0x547493...3267ba`; ethereum `0x6235bf...31bc6d`; ethereum `0x94089d...430594`; ethereum `0x9c6d74...aa61cb`; ethereum `0xab7853...f63f07`; ethereum `0xb0f1c3...c07105`; ethereum `0xc17789...411b6d`; ethereum `0xc44c46...1b35a6`; ethereum `0xcc86f0...4a546c`; ethereum `0xd51fc2...d3d2b2`; ethereum `0xdf3c64...66b660`; ethereum `0xe41415...0e970f`; ethereum `0xe4d1b4...00369f`; ethereum `0xe73272...c016db` | ⚠️ Unaudited |
| LoanShifterTaker | unknown | ethereum | 16 deployments: ethereum [`0x038698...69c692`](./contracts/ethereum-1/0x038698e3bae6b3e30d6b94202299192bfe69c692/); ethereum `0x13d939...843952`; ethereum `0x148a3b...6b6289`; ethereum `0x51826e...31e80b`; ethereum `0x605248...c3e00a`; ethereum `0x7a7a57...1a17e9`; ethereum `0x7a9415...edd859`; ethereum `0x8534d8...d57ca5`; ethereum `0x8f142e...d9f7c4`; ethereum `0x971bd5...a43ed6`; ethereum `0x977242...4ba7f7`; ethereum `0xa4d2d8...17e8ba`; ethereum `0xcc84f9...66b841`; ethereum `0xd5dd6f...4e2ed5`; ethereum `0xd75632...e25e33`; ethereum `0xe02af7...e4090b` | ⚠️ Unaudited |
| MainnetController | governance | ethereum | 9 deployments: ethereum [`0x08c830...33d4bf`](./contracts/ethereum-1/0x08c830bc14b52a65e7e62abc7365e1c53933d4bf/); ethereum `0x122fdf...886974`; ethereum `0x5cf73f...6e431e`; ethereum `0x5fdc58...6dfc62`; ethereum `0xcc9a14...e8c1a1`; ethereum `0xde7ba0...7ac291`; ethereum `0xe08828...213b6c`; ethereum `0xf51164...13ae8c`; ethereum `0xf8dff6...a13870` | ⚠️ Unaudited |
| MakerExecutableAdapter | adapter | ethereum | 2 deployments: ethereum [`0x39f8d3...dc552d`](./contracts/ethereum-1/0x39f8d3714949ebf61a1d83dfbdfe7d29b7dc552d/); ethereum `0x6e4c6e...421a99` | ⚠️ Unaudited |
| MakerSecurityAdapter | adapter | ethereum | 2 deployments: ethereum [`0x64a1f4...de46f0`](./contracts/ethereum-1/0x64a1f45718704749af9f9bbda1f18608d1de46f0/); ethereum `0xbfcd06...0528fa` | ⚠️ Unaudited |
| MCDCloseFlashLoan | unknown | ethereum | 12 deployments: ethereum [`0x1c9735...16f1c5`](./contracts/ethereum-1/0x1c97357e153c7bb8c8f77c7fc918f0bb0916f1c5/); ethereum `0x32d2b7...acd119`; ethereum `0x74994a...f7a70a`; ethereum `0x7dd62c...1af713`; ethereum `0x893b3d...dae555`; ethereum `0x8e43db...e3ad64`; ethereum `0x9f8c08...e0f8a0`; ethereum `0xa93d31...68d23a`; ethereum `0xad013b...212d9c`; ethereum `0xe913d1...1be89c`; ethereum `0xe9e448...3cc17c`; ethereum `0xfcf3e7...947a93` | ⚠️ Unaudited |
| MCDCloseTaker | unknown | ethereum | 5 deployments: ethereum [`0x08ca53...97ee2b`](./contracts/ethereum-1/0x08ca538f87668521472e805b4642681ee297ee2b/); ethereum `0x894327...7b5c11`; ethereum `0xc499aa...6a8132`; ethereum `0xc8a1f0...7bc2fe`; ethereum `0xdf9e2b...d274ae` | ⚠️ Unaudited |
| MCDCreateFlashLoan | unknown | ethereum | 4 deployments: ethereum [`0x409f21...004bbd`](./contracts/ethereum-1/0x409f216aa8034a12135ab6b74bf6444335004bbd/); ethereum `0x44b622...02c768`; ethereum `0x78af7a...59dcaf`; ethereum `0xf7d60f...6e2e2d` | ⚠️ Unaudited |
| MCDCreateTaker | unknown | ethereum | 6 deployments: ethereum [`0x260de7...ee33f1`](./contracts/ethereum-1/0x260de72088bf46af7b77ff148b4b7c0e09ee33f1/); ethereum `0x4ebac5...e28358`; ethereum `0x7850c8...f68194`; ethereum `0x9be6f1...2af9fc`; ethereum `0x9dd632...f00358`; ethereum `0xf82149...abdea2` | ⚠️ Unaudited |
| MCDFlashLoanTaker | unknown | ethereum | 2 deployments: ethereum [`0x40b552...6e85c6`](./contracts/ethereum-1/0x40b5520d5d5f46aa8db4c8d92549ae042f6e85c6/); ethereum `0x96c662...97d5b1` | ⚠️ Unaudited |
| McdGenerate | unknown | ethereum | [`0x40f0cf...2aa612`](./contracts/ethereum-1/0x40f0cf9a9f61251e7f75e59b8dd88fd5d32aa612/) | ⚠️ Unaudited |
| MCDLoanInfo | periphery | ethereum | [`0xe5bae4...122d64`](./contracts/ethereum-1/0xe5bae44807d81033f1ba20889b0ed3c6da122d64/) | ⚠️ Unaudited |
| MCDMonitorProxyV2 | unknown | ethereum | [`0x47d9f6...996898`](./contracts/ethereum-1/0x47d9f61badec4378842d809077a5e87b9c996898/) | ⚠️ Unaudited |
| MCDMonitorV2 | unknown | ethereum | 18 deployments: ethereum [`0x08abb5...108720`](./contracts/ethereum-1/0x08abb5e47097b5b6146606740247615839108720/); ethereum `0x0abcbc...1682c3`; ethereum `0x11c052...3ca533`; ethereum `0x26fe40...97504b`; ethereum `0x2de2a1...bf8703`; ethereum `0x3197ac...545d7e`; ethereum `0x3322ed...95393a`; ethereum `0x72a22c...f7feb7`; ethereum `0x86e29e...87b5cd`; ethereum `0x882540...5de2ae`; ethereum `0xa29989...99187f`; ethereum `0xa59d5e...1c8dd2`; ethereum `0xa7486f...fc1ac9`; ethereum `0xbf53ca...be4d18`; ethereum `0xd0df68...07b6cf`; ethereum `0xd69a89...7bce91`; ethereum `0xdbea5a...95aecb`; ethereum `0xdf1538...1b4027` | ⚠️ Unaudited |
| McdOpen | unknown | ethereum | [`0x5d1d78...a45886`](./contracts/ethereum-1/0x5d1d78ffbef7be0f936c169fd570326deaa45886/) | ⚠️ Unaudited |
| McdPayback | unknown | ethereum | [`0xc94d84...bc8138`](./contracts/ethereum-1/0xc94d840a5ea787ea796436bf7aba06e54ebc8138/) | ⚠️ Unaudited |
| MCDPriceVerifier | operational_periphery | ethereum | [`0xeaa474...56f72c`](./contracts/ethereum-1/0xeaa474cbffa87ae0f1a6f68a3aba6c77c656f72c/) | ⚠️ Unaudited |
| MCDSaverFlashLoan | unknown | ethereum | 11 deployments: ethereum [`0x0a464c...229aae`](./contracts/ethereum-1/0x0a464cf970e23fef801e6d2c773a6b0e99229aae/); ethereum `0x124545...0a6166`; ethereum `0x28e444...38551f`; ethereum `0x30bbf2...0e59c5`; ethereum `0x363ea4...de9dca`; ethereum `0x467e08...36f477`; ethereum `0x9222c4...df4389`; ethereum `0xcbb5db...47cd15`; ethereum `0xd0eb57...11880f`; ethereum `0xec504c...438079`; ethereum `0xee54f4...014e59` | ⚠️ Unaudited |
| MCDSaverProxy | unknown | ethereum | [`0xa29283...aa7ebc`](./contracts/ethereum-1/0xa292832acf0b0226e378e216a982fa966eaa7ebc/) | ⚠️ Unaudited |
| MCDSaverTaker | unknown | ethereum | 17 deployments: ethereum [`0x045c40...f1137f`](./contracts/ethereum-1/0x045c40b5bf972520374229e0c45a39cde0f1137f/); ethereum `0x1739e1...67d6ca`; ethereum `0x1813ad...b41474`; ethereum `0x2df861...bebf73`; ethereum `0x3f82ed...485d05`; ethereum `0x4161f3...75b5aa`; ethereum `0x4a4bb2...ae106e`; ethereum `0x4c9b48...cc14f8`; ethereum `0x91f929...eaf495`; ethereum `0x939786...df3e07`; ethereum `0x9aae5e...8dd443`; ethereum `0xafaa78...6a1e57`; ethereum `0xb378dc...e76d5a`; ethereum `0xba13af...16bdd4`; ethereum `0xbeef83...898161`; ethereum `0xe89c8f...9f9dfd`; ethereum `0xefa47d...875184` | ⚠️ Unaudited |
| McdShifter | unknown | ethereum | 8 deployments: ethereum [`0x00c47b...d0e561`](./contracts/ethereum-1/0x00c47b2ac6c298d33dcd53adb48f3d678bd0e561/); ethereum `0x3127cf...a931c9`; ethereum `0x622931...1c0163`; ethereum `0x9c79c8...0800fa`; ethereum `0x9e8bab...4049c4`; ethereum `0xa0f943...587c78`; ethereum `0xded54d...cc743d`; ethereum `0xf952fb...b99b88` | ⚠️ Unaudited |
| McdSupply | unknown | ethereum | [`0x0bcf4f...53abf6`](./contracts/ethereum-1/0x0bcf4f9325d89dc504585d44bb819df4b153abf6/) | ⚠️ Unaudited |
| McdUtils | unknown | arbitrum | 8 deployments: ethereum `0x41f67c...898096`; ethereum `0x68ff2d...b483ea`; ethereum `0x6bd98d...858eb1`; ethereum `0xe1cbc5...2656ca`; optimism `0x716d72...61bf0c`; base `0xa368de...e24e13`; arbitrum [`0x22e392...8853bf`](./contracts/arbitrum-42161/0x22e3922fe7e51006c3e37b50f0ea1c9d368853bf/); arbitrum `0xcd4e77...20780d` | ⚠️ Unaudited |
| McdView | unknown | ethereum | 7 deployments: ethereum [`0x21261f...f086ea`](./contracts/ethereum-1/0x21261f47b3cfea595c80bdc016ad0fea0ef086ea/); ethereum `0x55dc2b...9ea5e0`; ethereum `0x6fbef0...70623b`; ethereum `0xde21e8...23e2e6`; optimism `0x50dd50...cb353a`; base `0x5bd6e3...3abea0`; arbitrum `0xb6e6e3...9bfb19` | ⚠️ Unaudited |
| McdWithdraw | operational_periphery | ethereum | [`0xa819c7...f47beb`](./contracts/ethereum-1/0xa819c79b2559ac4e974d4a685063b3f828f47beb/) | ⚠️ Unaudited |
| MegaPoker | unknown | ethereum | 6 deployments: ethereum [`0x003e52...e65828`](./contracts/ethereum-1/0x003e523dfb5d91e508745256603d222891e65828/); ethereum `0x0f43a5...122e21`; ethereum `0x4a6153...8638d6`; ethereum `0x5af2de...8fda54`; ethereum `0x713370...a6666a`; ethereum `0x7472e5...58e482` | ⚠️ Unaudited |
| MerkleRedeemer | operational_periphery | ethereum | [`0xd9fabf...a38054`](./contracts/ethereum-1/0xd9fabf81ed15ea71fbad0c1f77529a4755a38054/) | ⚠️ Unaudited |
| MigrationActions | operational_periphery | ethereum | [`0xf86141...714b89`](./contracts/ethereum-1/0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89/) | ⚠️ Unaudited |
| MockAggregator | unknown | ethereum | [`0x98e6bc...20c30c`](./contracts/ethereum-1/0x98e6bcba7d5dafbfa4a92daf08d3d7512820c30c/) | ⚠️ Unaudited |
| MockJug | unknown | ethereum | 3 deployments: ethereum [`0x6c20dc...39c005`](./contracts/ethereum-1/0x6c20dc38d8e978955b12217d82692d448239c005/); ethereum `0x985b99...3a00e8`; ethereum `0xf99957...126184` | ⚠️ Unaudited |
| MockUsdsJoin | unknown | ethereum | 3 deployments: ethereum [`0x00df3c...15a69b`](./contracts/ethereum-1/0x00df3c06aed70d70e1fa2996ceeae40bd515a69b/); ethereum `0x12cba9...0bf977`; ethereum `0xad3092...96965e` | ⚠️ Unaudited |
| MockVat | unknown | ethereum | 3 deployments: ethereum [`0x215780...b535c2`](./contracts/ethereum-1/0x2157802ce1172b7bae5540b0d20d8b4337b535c2/); ethereum `0x373e06...061b0e`; ethereum `0xccba29...4b41d7` | ⚠️ Unaudited |
| MoonwellArk | unknown | base | 4 deployments: base [`0x07e337...9008ef`](./contracts/base-8453/0x07e33789cf837b52821c7cded1247938969008ef/); base `0x6b06d8...49e9e8`; base `0x7add6f...2a3b32`; base `0xe2ad08...c251e5` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | 2 deployments: ethereum [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/); base [`0xbbbbbb...eeffcb`](./contracts/base-8453/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MultiplyProxyActions | unknown | ethereum | 4 deployments: ethereum [`0x22e4ce...39817c`](./contracts/ethereum-1/0x22e4cee555c44df56ac7b85033cde54b7439817c/); ethereum `0x2a49ea...daf7a2`; ethereum `0x33b4be...4dff58`; ethereum `0xeae406...be9c27` | ⚠️ Unaudited |
| OasisTradeWrapper | unknown | ethereum | 5 deployments: ethereum [`0x15601d...206eb0`](./contracts/ethereum-1/0x15601db5a27e21207244075d676750b192206eb0/); ethereum `0x4c9b55...6ecd25`; ethereum `0xd5bb9a...a2782a`; ethereum `0xee15db...fd4f69`; ethereum `0xf023bc...897d66` | ⚠️ Unaudited |
| OasisTradeWrapperV3 | unknown | ethereum | [`0x2ad7d8...991a54`](./contracts/ethereum-1/0x2ad7d86c56b7a09742213e1e649c727cb4991a54/) | ⚠️ Unaudited |
| OperationExecutor | unknown | base | 11 deployments: ethereum `0x27ec53...38e69b`; ethereum `0x539581...fc1be3`; ethereum `0x5ab3e5...bb99f9`; ethereum `0xc1cd36...2d0b0c`; ethereum `0xca27a2...f3a134`; ethereum `0xca71c3...85cdfc`; optimism `0xa7840f...c3a46c`; base [`0x03644f...189314`](./contracts/base-8453/0x03644f489bf16b1eafa68f495955eb5a78189314/); base `0x2d43e8...868d8f`; arbitrum `0x502412...df9efe`; arbitrum `0xa7840f...c3a46c` | ⚠️ Unaudited |
| OperationsRegistry | registry | ethereum | 11 deployments: ethereum [`0x01871c...6d9c49`](./contracts/ethereum-1/0x01871c3ccfede29d2b998e7d1bf0eeebd26d9c49/); ethereum `0x563d26...388a55`; ethereum `0xccb155...d1722b`; optimism `0x53b1f1...175603`; base `0x77f36e...d2bd8e`; base `0x92ffdf...68a149`; base `0xac1b20...e4a70f`; base `0xc09bc3...440a05`; base `0xe018ae...ab937a`; arbitrum `0x3637df...e6883c`; arbitrum `0x53b1f1...175603` | ⚠️ Unaudited |
| OperationStorage | unknown | base | 9 deployments: ethereum `0x4077d8...c6f25c`; ethereum `0x66081b...bec73f`; ethereum `0x983efc...0c96d8`; ethereum `0xa67c8e...1f2277`; optimism `0x28cd58...0ff8e6`; base [`0x1389de...75010b`](./contracts/base-8453/0x1389ded188d0537c7e484b67fbd604c0ac75010b/); base `0x1b5a43...4273f5`; arbitrum `0x28cd58...0ff8e6`; arbitrum `0x77f36e...d2bd8e` | ⚠️ Unaudited |
| OriginETHArk | unknown | ethereum | 6 deployments: ethereum [`0x113ebd...2dfb8b`](./contracts/ethereum-1/0x113ebd01dab514136ca2867f4e47b6b9a42dfb8b/); ethereum `0x49ebd7...ccc908`; ethereum `0xb3efcd...0f02f8`; ethereum `0xd84247...51404d`; ethereum `0xf28536...2ae826`; ethereum `0xf77515...5ff230` | ⚠️ Unaudited |
| OriginSuperOETHArk | unknown | base | 2 deployments: base [`0x1fd588...8a03ee`](./contracts/base-8453/0x1fd588a01a04307aaf486cde7568c057048a03ee/); base `0xd9755f...60dc0e` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | 7 deployments: ethereum [`0x5ae329...a50e1b`](./contracts/ethereum-1/0x5ae329203e00f76891094dcfedd5aca082a50e1b/); ethereum `0x62da45...fa7df3`; ethereum `0x811536...437115`; ethereum `0xb40f6d...889304`; ethereum `0xb4fb5e...8fba5b`; ethereum `0xe3f4f8...163b67`; ethereum `0xfc54d1...4e1e04` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | ethereum | 2 deployments: ethereum [`0x02c3ea...1793ee`](./contracts/ethereum-1/0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee/); ethereum `0x779053...d6b776` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | 2 deployments: ethereum [`0x03cfa0...7e6cc1`](./contracts/ethereum-1/0x03cfa0c4622ff84e50e75062683f44c9587e6cc1/); ethereum `0xd3e4d5...10520f` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | ethereum | 2 deployments: ethereum [`0xca6154...ecb91b`](./contracts/ethereum-1/0xca61540ec2ac74e6954fa558b4af836d95ecb91b/); ethereum `0xf7b656...a4799f` | ⚠️ Unaudited |
| PoolLogic | core_logic | ethereum | 6 deployments: ethereum [`0x0d2bfc...252b17`](./contracts/ethereum-1/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/); ethereum `0x1761a0...bd7604`; ethereum `0x3068fa...92c6ff`; ethereum `0xb88bcb...a58f19`; ethereum `0xc1e10a...c36407`; ethereum `0xd072ff...02d8bf` | ⚠️ Unaudited |
| PositionCreated | unknown | ethereum | 5 deployments: ethereum [`0x133428...230c95`](./contracts/ethereum-1/0x1334280016c17f4df4b37c356357042732230c95/); ethereum `0x2d988e...4aec54`; ethereum `0x83ff13...492e2e`; ethereum `0xa0cb87...7d8e0a`; ethereum `0xb3f0c5...1f5ec5` | ⚠️ Unaudited |
| PotRateSource | unknown | ethereum | [`0x62b122...96afd8`](./contracts/ethereum-1/0x62b122a1d1ea2082c47c3fb70e788c168e96afd8/) | ⚠️ Unaudited |
| Prices | operational_periphery | ethereum | 4 deployments: ethereum [`0x359d1e...3c9620`](./contracts/ethereum-1/0x359d1e0e6de68e2960d9b3acf8385d07c33c9620/); ethereum `0x9a355c...e6845d`; ethereum `0xa913f5...264429`; ethereum `0xfcda1a...d385e1` | ⚠️ Unaudited |
| ProtocolAccessManager | governance | arbitrum | 54 deployments: ethereum `0x092c41...dd6f57`; ethereum `0xf389bc...e39694`; ethereum `0xf7d6fb...46e479`; sonic `0x244d9a...364c25`; sonic `0xa55cd6...0f3f27`; sonic `0xafb8a8...270bc6`; base `0x0b901d...2b0868`; base `0x277f3d...117eaa`; base `0x2a828b...f4f018`; base `0x2aa6df...7feb0d`; base `0x2dab8d...a575c3`; base `0x2ea4cb...721076`; base `0x336fe2...0783c7`; base `0x42f4be...30bceb`; base `0x49c50d...123e49`; base `0x5dc319...b0a304`; base `0x5dfacd...877407`; base `0x603821...4ae861`; base `0x842a5a...1708fa`; base `0x8ac8cf...080405`; base `0x990d54...3e6a19`; base `0x9bee58...18de6a`; base `0xa6cad0...d7c6c0`; base `0xad05a8...7fdc4c`; base `0xafbdd3...114104`; base `0xaff1de...9e438e`; base `0xc34460...8f5b49`; base `0xd236cc...0dc46b`; base `0xd3bba5...2b3291`; base `0xd3f7b1...8d2e8b`; base `0xdb6118...84c734`; base `0xf18466...4cb5d7`; base `0xf389bc...e39694`; base `0xf50674...d2a47a`; arbitrum [`0x058c58...a98f8a`](./contracts/arbitrum-42161/0x058c586cd8eb06aae4a4e1d7584db48c10a98f8a/); arbitrum `0x12b63b...5da89b`; arbitrum `0x235dd2...9a00f6`; arbitrum `0x244d9a...364c25`; arbitrum `0x2a828b...f4f018`; arbitrum `0x2e208e...cb8371`; arbitrum `0x43a836...e28745`; arbitrum `0x45f869...fac81d`; arbitrum `0x534b8f...68a8eb`; arbitrum `0x5a2d32...d80891`; arbitrum `0x700c40...5725e1`; arbitrum `0x7e6c68...c56281`; arbitrum `0x830a84...58a6cf`; arbitrum `0x8397e1...543c8a`; arbitrum `0x86709b...d45a3d`; arbitrum `0xa0148d...8562ec`; arbitrum `0xb74272...a655b6`; arbitrum `0xcfe9ec...620d20`; arbitrum `0xd72309...1284c5`; arbitrum `0xfc53cd...dcc166` | ⚠️ Unaudited |
| ProxyPermission | unknown | ethereum | 2 deployments: ethereum [`0x5a4f87...fae26b`](./contracts/ethereum-1/0x5a4f877ca808cca3cb7c2a194f80ab8588fae26b/); ethereum `0x5d6320...8ad845` | ⚠️ Unaudited |
| PsmLiteERC4626Ark | unknown | ethereum | [`0x534162...1faeb3`](./contracts/ethereum-1/0x534162a2072a2929b6713065414eedc53e1faeb3/) | ⚠️ Unaudited |
| PSMVariant1Actions | unknown | ethereum | 3 deployments: ethereum [`0x52d298...257d99`](./contracts/ethereum-1/0x52d298ff9e77e71c2eb1992260520e7b15257d99/); ethereum `0x580319...80a979`; ethereum `0xd0a61f...9f39e0` | ⚠️ Unaudited |
| PSMWrapper | unknown | ethereum | 4 deployments: ethereum [`0x35ae8f...6a2911`](./contracts/ethereum-1/0x35ae8fee20ef86c38aef060100bfbc6a016a2911/); ethereum `0x42b3d7...c94b99`; ethereum `0x66c044...0100fb`; ethereum `0x8ac160...02cfa9` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | ethereum | [`0x11aac1...ee36d8`](./contracts/ethereum-1/0x11aac1ca5822cf8ba6d06b0d84901940c0ee36d8/) | ⚠️ Unaudited |
| PullToken | token | arbitrum | 12 deployments: ethereum `0x03e1d8...ca338a`; ethereum `0x0be3b9...6e168c`; ethereum `0x73835b...7907be`; ethereum `0xce72cb...7ae2ca`; ethereum `0xdcbdee...5e1a9d`; ethereum `0xff8e73...ca9663`; optimism `0x34b82d...493d10`; base `0x3da7a8...88a2cd`; base `0xaa777f...a59770`; arbitrum [`0x039f77...a7515d`](./contracts/arbitrum-42161/0x039f7784c5a6f187fcac027262aa912974a7515d/); arbitrum `0x2007f5...febc3c`; arbitrum `0xb45ba7...aa39af` | ⚠️ Unaudited |
| PullTokenMaxAmount | token | arbitrum | 3 deployments: optimism `0x74d4b9...420fb1`; base `0xfac966...8b3a21`; arbitrum [`0x1e7918...b85180`](./contracts/arbitrum-42161/0x1e7918a730e3dd8330dae37923f4889df6b85180/) | ⚠️ Unaudited |
| PullTokensProxy | token | ethereum | [`0x45431b...80bfc4`](./contracts/ethereum-1/0x45431b79f783e0bf0fe7ef32d06a3e061780bfc4/) | ⚠️ Unaudited |
| RaiLoanInfo | periphery | ethereum | [`0xfc445f...e8d504`](./contracts/ethereum-1/0xfc445f9d01071fe3556ca44ce603c37f85e8d504/) | ⚠️ Unaudited |
| RAISaverFlashLoan | unknown | ethereum | [`0xf91f88...fccfd7`](./contracts/ethereum-1/0xf91f8844258d3246be5daa201b52b51fc7fccfd7/) | ⚠️ Unaudited |
| RAISaverTaker | unknown | ethereum | [`0xf03654...25aaa0`](./contracts/ethereum-1/0xf036548c1bc460f0ef642b73bbde8d2af325aaa0/) | ⚠️ Unaudited |
| RateLimits | unknown | ethereum | 3 deployments: ethereum [`0x27c4c9...3cb916`](./contracts/ethereum-1/0x27c4c9b33e270713876ff505f21ed1bdd03cb916/); ethereum `0x2a85ce...8f1b5d`; ethereum `0x449f10...e26766` | ⚠️ Unaudited |
| RateTargetBaseInterestRateStrategy | operational_periphery | ethereum | 12 deployments: ethereum [`0x2a961a...f07770`](./contracts/ethereum-1/0x2a961acc1d79e743e479eb4b1473f62d3df07770/); ethereum `0x3c4b09...054198`; ethereum `0x512afe...2e3c6a`; ethereum `0x5a7e7a...ddcf9c`; ethereum `0x5ae77a...b619b9`; ethereum `0x7949a8...4170dd`; ethereum `0x883b03...ef3800`; ethereum `0xc527a1...aa2e71`; ethereum `0xd03187...b3e921`; ethereum `0xd94ba5...304e07`; ethereum `0xd95797...555e28`; ethereum `0xe9905c...77e812` | ⚠️ Unaudited |
| RateTargetKinkInterestRateStrategy | operational_periphery | ethereum | 5 deployments: ethereum [`0x0f1a9a...455dd6`](./contracts/ethereum-1/0x0f1a9a787b4103ef5929121cd9399224c6455dd6/); ethereum `0x4da184...c64043`; ethereum `0x6fd324...08dae4`; ethereum `0xb7b734...160174`; ethereum `0xf4268a...3756ca` | ⚠️ Unaudited |
| Registry | registry | ethereum | [`0xe64a85...bb9b00`](./contracts/ethereum-1/0xe64a853ed70cdb8c1d1e3e42552ae1c70dbb9b00/) | ⚠️ Unaudited |
| RETHExchangeRateOracle | operational_periphery | ethereum | [`0x11af58...62f140`](./contracts/ethereum-1/0x11af58f13419fd3ce4d3a90372200c80bc62f140/) | ⚠️ Unaudited |
| ReturnFunds | unknown | ethereum | 8 deployments: ethereum [`0x492858...bc957b`](./contracts/ethereum-1/0x492858a7d1a10be2ce2732c172cba2622bbc957b/); ethereum `0x645325...3f2685`; ethereum `0x746a6f...9e7385`; ethereum `0xce7416...a11db4`; optimism `0x7d8174...b3f1a7`; base `0x8da110...07ec3e`; base `0xf7c716...171d67`; arbitrum `0xfb5896...a46462` | ⚠️ Unaudited |
| ReturnMultipleTokens | token | base | [`0x06e3be...e55bea`](./contracts/base-8453/0x06e3be1fff0250ecb867d6f3f0aa18bd6fe55bea/) | ⚠️ Unaudited |
| RewardsController | governance | ethereum | 4 deployments: ethereum [`0x0ee554...37fde1`](./contracts/ethereum-1/0x0ee554f6a1f7a4cb4f82d4c124ddc2ad3e37fde1/); ethereum `0x347f18...1246fa`; ethereum `0x4370d3...ff5b34`; ethereum `0xe3be22...40ec68` | ⚠️ Unaudited |
| RSETHExchangeRateOracle | operational_periphery | ethereum | [`0x70942d...37b8eb`](./contracts/ethereum-1/0x70942d6b580741cf50a7906f4100063ee037b8eb/) | ⚠️ Unaudited |
| RwaInputConduit | unknown | ethereum | 3 deployments: ethereum [`0x486c85...d932f2`](./contracts/ethereum-1/0x486c85e2bb9801d14f6a8fdb78f5108a0fd932f2/); ethereum `0x800045...f5b952`; ethereum `0xed3130...51f3ed` | ⚠️ Unaudited |
| RwaLiquidationOracle | operational_periphery | ethereum | [`0x88f88b...7b1e30`](./contracts/ethereum-1/0x88f88bb9e66241b73b84f3a6e197fbba487b1e30/) | ⚠️ Unaudited |
| RwaOutputConduit | unknown | ethereum | [`0xb3efb9...206c3d`](./contracts/ethereum-1/0xb3efb912e1cbc0b26fc17388dd433cecd2206c3d/) | ⚠️ Unaudited |
| RwaToken | token | ethereum | 3 deployments: ethereum [`0x10b2aa...9a270d`](./contracts/ethereum-1/0x10b2aa5d77aa6484886d8e244f0686ab319a270d/); ethereum `0x345481...0f5659`; ethereum `0xaaa760...19ac23` | ⚠️ Unaudited |
| RwaUrn | unknown | ethereum | 3 deployments: ethereum [`0x225b3d...968163`](./contracts/ethereum-1/0x225b3da5be762ee52b182157e67bea0b31968163/); ethereum `0xa33420...873005`; ethereum `0xc84b92...53725a` | ⚠️ Unaudited |
| SaverExchange | unknown | ethereum | 4 deployments: ethereum [`0x235abf...074926`](./contracts/ethereum-1/0x235abfad01eb1bda28ef94087fbaa63e18074926/); ethereum `0x50c6e7...02666f`; ethereum `0x64c5cc...16126d`; ethereum `0xbec0a9...ec5658` | ⚠️ Unaudited |
| SaverExchangeRegistry | registry | ethereum | [`0x25dd3f...cbb12d`](./contracts/ethereum-1/0x25dd3f51e0c3c3ff164ddc02a8e4d65bb9cbb12d/) | ⚠️ Unaudited |
| SavingsDaiOracle | operational_periphery | ethereum | [`0xb9e6db...78ab5f`](./contracts/ethereum-1/0xb9e6dbfa4de19cced908bcbfe1d015190678ab5f/) | ⚠️ Unaudited |
| SavingsProxy | unknown | ethereum | 2 deployments: ethereum [`0x5167b1...573d2a`](./contracts/ethereum-1/0x5167b1dc2035c2dfc2d299991095cd1fa4573d2a/); ethereum `0x86f07a...013f5e` | ⚠️ Unaudited |
| ScpWrapper | unknown | ethereum | 8 deployments: ethereum [`0x496bf3...869a83`](./contracts/ethereum-1/0x496bf31043f1c4f5ddfc5c01097062c477869a83/); ethereum `0x5ee1df...64ceb5`; ethereum `0x5f3e65...d7f44d`; ethereum `0x60bb0e...06dc68`; ethereum `0x858ca8...d4d259`; ethereum `0x965dd8...6a81a9`; ethereum `0x9aa526...5317ee`; ethereum `0xedc891...e5a85a` | ⚠️ Unaudited |
| SendToken | token | ethereum | 13 deployments: ethereum [`0x1d493a...36711e`](./contracts/ethereum-1/0x1d493a57f7d340f107dc6ec221217d451436711e/); ethereum `0x43c9a4...c0d84c`; ethereum `0x63059c...bbf0da`; ethereum `0xa3ade4...ff20ca`; ethereum `0xaa4c55...d5e3a3`; ethereum `0xbf21f5...6ab255`; ethereum `0xc39a1a...537a1a`; ethereum `0xf299c9...007421`; optimism `0x84ce4d...98c912`; base `0xe21a00...56393e`; base `0xfff30c...75bc83`; arbitrum `0x508e30...94c5a5`; arbitrum `0x8c9cc9...1e9a9d` | ⚠️ Unaudited |
| ServiceRegistry | registry | ethereum | 5 deployments: ethereum [`0x4a9f07...6a7481`](./contracts/ethereum-1/0x4a9f07b93b0fca6d8590f1635d4a0492ec6a7481/); ethereum `0x5e81a7...e7498e`; ethereum `0x9b4ae7...b2eada`; ethereum `0xa87bcc...e151c1`; arbitrum `0x85859a...33ef49` | ⚠️ Unaudited |
| SetApproval | unknown | arbitrum | 9 deployments: ethereum `0x3cf2e1...53dba5`; ethereum `0x697404...c6b392`; ethereum `0xcea79d...b4146c`; ethereum `0xe166a0...a48f66`; optimism `0x35ae11...06f398`; base `0x730226...8ffd15`; base `0x8ccf69...6cff69`; arbitrum [`0x1c98d8...9112ff`](./contracts/arbitrum-42161/0x1c98d87b245aa442791ffb8a7e57380ed49112ff/); arbitrum `0xe518b0...dca5cb` | ⚠️ Unaudited |
| ShifterRegistry | registry | ethereum | 2 deployments: ethereum [`0x597c52...0a965e`](./contracts/ethereum-1/0x597c52281b31b9d949a9d8feba08f7a2530a965e/); ethereum `0xd280c9...f22e55` | ⚠️ Unaudited |
| SiloVaultArkV2 | core_logic | arbitrum | 2 deployments: arbitrum [`0x269938...895d28`](./contracts/arbitrum-42161/0x269938df5c0110a9e8de1f76cf8279f745895d28/); arbitrum `0x54749c...fcb800` | ⚠️ Unaudited |
| SiUSDArk | unknown | ethereum | [`0x5ebbc4...a3f264`](./contracts/ethereum-1/0x5ebbc493fd41dd607cdad244a9e6ca7466a3f264/) | ⚠️ Unaudited |
| SkyRewardsArk | unknown | ethereum | [`0x3d8c27...d8d409`](./contracts/ethereum-1/0x3d8c278f05f655f26dcbf828c084e5182fd8d409/) | ⚠️ Unaudited |
| SkyUsdsArk | unknown | ethereum | [`0x9890c9...41c3e2`](./contracts/ethereum-1/0x9890c99f504337c3500ac05c267c38dfcd41c3e2/) | ⚠️ Unaudited |
| SkyUsdsPsm3Ark | unknown | base | [`0x36d050...873a6f`](./contracts/base-8453/0x36d0501d07619274a398aff16007337041873a6f/) | ⚠️ Unaudited |
| SparkArk | unknown | ethereum | 3 deployments: ethereum [`0x570957...44b042`](./contracts/ethereum-1/0x570957bc84b5607e2412de72461fbbd02844b042/); ethereum `0x8948a5...af062f`; ethereum `0xf28b32...d1b5c5` | ⚠️ Unaudited |
| SparkEthereum_20260115 | unknown | ethereum | [`0x3300f1...6af8c4`](./contracts/ethereum-1/0x3300f198988e4c9c63f75df86de36421f06af8c4/) | ⚠️ Unaudited |
| SSROracleForwarderArbitrum | operational_periphery | ethereum | [`0x1a229a...6247d5`](./contracts/ethereum-1/0x1a229adbac83a948226783f2a3257b52006247d5/) | ⚠️ Unaudited |
| SSROracleForwarderOptimism | operational_periphery | ethereum | 4 deployments: ethereum [`0x217844...9de3bf`](./contracts/ethereum-1/0x217844cf0a39b8fdab388047a9361c15fb9de3bf/); ethereum `0x27ee0e...c75dc2`; ethereum `0x6ac25b...038724`; ethereum `0xb28333...ef188e` | ⚠️ Unaudited |
| SSRRateSource | unknown | ethereum | [`0x57027b...669973`](./contracts/ethereum-1/0x57027b6262083e3ac3c8b2eb99f7e8005f669973/) | ⚠️ Unaudited |
| StableDebtToken | token | ethereum | 2 deployments: ethereum [`0x026a5b...9c540e`](./contracts/ethereum-1/0x026a5b6114431d8f3ef2fa0e1b2edddcca9c540e/); ethereum `0x9e662a...ce6e92` | ⚠️ Unaudited |
| StairstepExponentialDecrease | unknown | ethereum | 33 deployments: ethereum [`0x022ff4...0acbc4`](./contracts/ethereum-1/0x022ff40643e8b94c43f0a1e54f51ef6d070acbc4/); ethereum `0x059acd...7639bf`; ethereum `0x0fca4b...1d594d`; ethereum `0x19e260...79de18`; ethereum `0x1c4fc2...da6108`; ethereum `0x1cf3de...5be748`; ethereum `0x1f206d...c124da`; ethereum `0x1f5465...341a63`; ethereum `0x2e1181...c81dc2`; ethereum `0x4e88ce...104fcf`; ethereum `0x5396e5...691960`; ethereum `0x5f4cea...81c70a`; ethereum `0x6856cc...21fb9d`; ethereum `0x76024a...f3a14c`; ethereum `0x79564a...1b2c01`; ethereum `0x7b1696...d86eb1`; ethereum `0x7d9f92...81a898`; ethereum `0x82c41e...5c1584`; ethereum `0x863aea...f532eb`; ethereum `0x8acec2...134f14`; ethereum `0x9afd92...b54b39`; ethereum `0xa47558...7fa029`; ethereum `0xab98de...30923e`; ethereum `0xabbcd1...8fd64d`; ethereum `0xad609e...9049f0`; ethereum `0xbef2ab...35af6a`; ethereum `0xc94ee7...1601b4`; ethereum `0xcc89f3...19a0f4`; ethereum `0xd6fe41...02f561`; ethereum `0xea7fe6...f580ae`; ethereum `0xebe5e9...fb0c4e`; ethereum `0xf738c2...3bf29d`; ethereum `0xf7e803...060747` | ⚠️ Unaudited |
| StakedSummerToken | token | base | 3 deployments: base [`0x49fea7...adfd8c`](./contracts/base-8453/0x49fea727a60469f2c25376ad3c7d5f3810adfd8c/); base `0x4f4674...a7666b`; base `0x60a716...efc825` | ⚠️ Unaudited |
| SubscriptionProxy | unknown | ethereum | [`0xdb8388...a4e290`](./contracts/ethereum-1/0xdb8388ebd606f1dd2556e0dc7aecb6fbc6a4e290/) | ⚠️ Unaudited |
| SubscriptionsMigration | operational_periphery | ethereum | [`0x13aa98...07cd1a`](./contracts/ethereum-1/0x13aa9807fb67737f9e99c5bf466ab5529607cd1a/) | ⚠️ Unaudited |
| SubscriptionsProxyV2 | unknown | ethereum | 6 deployments: ethereum [`0x00fc24...d9b363`](./contracts/ethereum-1/0x00fc24e0fd3f7c7767cd18fa35b26a94edd9b363/); ethereum `0x12524f...d609db`; ethereum `0x2eff3e...490c13`; ethereum `0x71caf1...b14444`; ethereum `0xb78ebe...32c99a`; ethereum `0xd6f212...3917dd` | ⚠️ Unaudited |
| SubscriptionsV2 | unknown | ethereum | 3 deployments: ethereum [`0x0bf677...7d4628`](./contracts/ethereum-1/0x0bf6775727d067b1f1e00ffa0e76a07e4f7d4628/); ethereum `0xc45d4f...78269a`; ethereum `0xc5607e...0359cb` | ⚠️ Unaudited |
| SumInputs | unknown | ethereum | 3 deployments: ethereum [`0x003163...04f719`](./contracts/ethereum-1/0x003163a2ee51ce13ba6d453f06f0426d8f04f719/); ethereum `0x989d9f...034203`; ethereum `0xf9c01b...2fe51d` | ⚠️ Unaudited |
| SummerGovernor | governance | arbitrum | 36 deployments: ethereum `0x2aa6df...7feb0d`; ethereum `0xbe5a4d...01e9fa`; ethereum `0xd236cc...0dc46b`; sonic `0x2aa6df...7feb0d`; sonic `0x59485a...3770af`; sonic `0x9b4998...b92768`; base `0x068df9...87b26c`; base `0x1bd84d...dd28f4`; base `0x244d9a...364c25`; base `0x668b52...135317`; base `0x679794...1fa53f`; base `0x7315ad...6464f0`; base `0x7a03b7...89f99c`; base `0x7e452f...c15f28`; base `0x82e399...7a87ec`; base `0x92f4fc...e2841d`; base `0x9aceeb...9a9658`; base `0xa0212c...7b0adf`; base `0xa62af1...37e48c`; base `0xbd06f5...688bc8`; base `0xbe5a4d...01e9fa`; base `0xc41af0...88bb0d`; base `0xc9d42d...7954af`; base `0xd76ad6...798d0c`; base `0xee631b...319875`; arbitrum [`0x060c9d...943d2c`](./contracts/arbitrum-42161/0x060c9d083a5ee5999b4eb817dbf906888d943d2c/); arbitrum `0x3fa7e5...f9da77`; arbitrum `0x59485a...3770af`; arbitrum `0x694f9c...e36ab5`; arbitrum `0x83d49b...1b2d04`; arbitrum `0x90d2ae...d46811`; arbitrum `0xa62af1...37e48c`; arbitrum `0xa67e63...25f897`; arbitrum `0xb8c914...9f0def`; arbitrum `0xd4dd34...a4aa27`; arbitrum `0xe52d32...198910` | ⚠️ Unaudited |
| SummerOracleFactory | operational_periphery | base | 4 deployments: ethereum `0xd3bba5...2b3291`; base [`0x5511c3...59721a`](./contracts/base-8453/0x5511c30c50762520e36ccc42af2b528ee759721a/); base `0x9a35b9...f419ba`; base `0xe414b2...535fc0` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | arbitrum | 25 deployments: ethereum `0x394c95...b35237`; ethereum `0x54a2ea...80b8dd`; ethereum `0xf5731e...a88515`; sonic `0x08543e...a16326`; sonic `0x394c95...b35237`; sonic `0x3e5163...be78e4`; base `0x06b1d1...178498`; base `0x1534e3...c80cb8`; base `0x20dbd5...3f8ead`; base `0x2af041...de379e`; base `0x54a2ea...80b8dd`; base `0x61d706...bc76c2`; base `0x6d26cc...725586`; base `0x9bd156...a089b6`; base `0xa3b8e7...5c2b6c`; base `0xbc2769...808c79`; base `0xc77974...03b89d`; base `0xd7c18f...a13462`; base `0xf69943...615166`; arbitrum [`0x00eb50...35259c`](./contracts/arbitrum-42161/0x00eb50a098ebdae3727ede96aeade5902235259c/); arbitrum `0x5ddf8a...406447`; arbitrum `0x5e09d0...53ea5d`; arbitrum `0x674a3f...4b6967`; arbitrum `0xaf45c1...3c3b52`; arbitrum `0xfe06f9...eaf0d5` | ⚠️ Unaudited |
| SummerStaking | unknown | base | 2 deployments: base [`0x902ac4...470a3f`](./contracts/base-8453/0x902ac48f45fefec167fe65963bff714287470a3f/); base `0xe94e8f...ed248f` | ⚠️ Unaudited |
| SummerTimelockController | governance | arbitrum | 29 deployments: ethereum `0x244d9a...364c25`; ethereum `0x25b978...9fc90a`; ethereum `0x364a0f...e6ccae`; ethereum `0x447bf9...4c3796`; ethereum `0xc5cab7...c41aac`; sonic `0x363139...b53ac5`; sonic `0x4c32a2...721ed9`; sonic `0xc5cab7...c41aac`; base `0x140c62...44ba64`; base `0x205ae9...75f793`; base `0x344471...766157`; base `0x3614f6...089aae`; base `0x447bf9...4c3796`; base `0x565c07...dd921b`; base `0x5ebbc4...a3f264`; base `0x684c75...82b83e`; base `0x6abd21...981928`; base `0x71b6e8...0e97c4`; base `0xc03b52...eeddcb`; base `0xc2b80a...014727`; base `0xc96fbe...09d53f`; base `0xeccd16...8616e2`; arbitrum [`0x121fc9...cb87ba`](./contracts/arbitrum-42161/0x121fc9dd433c8eb71daf198bfd4bf4d823cb87ba/); arbitrum `0x8c3d2b...5dd70d`; arbitrum `0x9ffc25...7b8347`; arbitrum `0xb22d6b...c34ec6`; arbitrum `0xc266d1...9f4f71`; arbitrum `0xe05fb6...399911`; arbitrum `0xfd8993...568519` | ⚠️ Unaudited |
| SummerVestingWalletFactory | operational_periphery | base | 9 deployments: ethereum `0x5f3cd3...0e8886`; ethereum `0x8ab0a8...4898b2`; sonic `0x31d129...42876c`; sonic `0x3cd70d...4f49a2`; sonic `0xa29f32...637b9b`; base [`0x057e04...9b8ad8`](./contracts/base-8453/0x057e041d8886e9b6ceb92fef611457d2889b8ad8/); base `0x5f3cd3...0e8886`; base `0x7dbc2a...df8937`; arbitrum `0xd32b88...01ec12` | ⚠️ Unaudited |
| SummerVestingWalletsEscrow | operational_periphery | base | 2 deployments: base [`0x0225d8...fb20b8`](./contracts/base-8453/0x0225d878d8b5ef51c0c97a41379ec5bf8ffb20b8/); base `0x3c11d8...43d14e` | ⚠️ Unaudited |
| SupplyLogic | unknown | ethereum | 6 deployments: ethereum [`0x1d5b30...853a9b`](./contracts/ethereum-1/0x1d5b30d7c74f605c9f22d29f8bb80de3ba853a9b/); ethereum `0x462568...9eb2c1`; ethereum `0x4c83d3...29f707`; ethereum `0x549034...3afb18`; ethereum `0xa29158...e4999e`; ethereum `0xf18953...b93bae` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | 2 deployments: ethereum `0x826e9f...720d74`; arbitrum [`0x03644f...189314`](./contracts/arbitrum-42161/0x03644f489bf16b1eafa68f495955eb5a78189314/) | ⚠️ Unaudited |
| SwapAction | unknown | optimism | 10 deployments: ethereum `0x313617...29b530`; ethereum `0x3d0bba...851803`; ethereum `0x7e7eb6...554d85`; ethereum `0x931971...c17c7e`; optimism [`0x0f57a0...50ae68`](./contracts/optimism-10/0x0f57a087d7138de78f2a727c62c06a779450ae68/); base `0x7f3c01...ad4047`; base `0xe3e201...c6e8e1`; arbitrum `0x1b5a43...4273f5`; arbitrum `0x31d767...64babf`; arbitrum `0x722418...da4fdf` | ⚠️ Unaudited |
| SyrupArk | unknown | ethereum | 10 deployments: ethereum [`0x0f9da4...43f495`](./contracts/ethereum-1/0x0f9da4b515fdab1aec67cfa6a66c24625543f495/); ethereum `0x1bf7ef...5dd1a3`; ethereum `0x1dfba3...35522a`; ethereum `0x2f5034...857496`; ethereum `0x35e09f...b7f0c0`; ethereum `0x3f9e19...2976e5`; ethereum `0x6d54c2...9c1462`; ethereum `0x8fb9ac...073174`; ethereum `0xc55d30...8f1fc6`; ethereum `0xcac00f...e3a27e` | ⚠️ Unaudited |
| TakeFlashloan | unknown | ethereum | 11 deployments: ethereum [`0x0ed124...8de15f`](./contracts/ethereum-1/0x0ed12441616ca97f5729fff519f5e8d13d8de15f/); ethereum `0x1269a6...0f8729`; ethereum `0x2006d4...9eafe2`; ethereum `0x66cbf6...5e8f80`; ethereum `0xbd4233...b21fed`; ethereum `0xe7aa09...9ea256`; optimism `0x1ce5b4...484db8`; base `0xb5cd6e...ea37f9`; base `0xceeb07...867df5`; arbitrum `0x236926...7b257f`; arbitrum `0xf309ee...2acee6` | ⚠️ Unaudited |
| TaskExecutor | unknown | ethereum | 3 deployments: ethereum [`0x0aceb2...e93a15`](./contracts/ethereum-1/0x0aceb225bf2a08e72184968b09a308a1c4e93a15/); ethereum `0x30a2d7...4fe963`; ethereum `0xb487e3...5a3ac9` | ⚠️ Unaudited |
| TipJar | unknown | ethereum | 42 deployments: ethereum [`0x0381b9...6780d4`](./contracts/ethereum-1/0x0381b9d857bccc043be9fca2717f02b7486780d4/); ethereum `0x2d1a26...88a401`; ethereum `0x820320...03c1b3`; ethereum `0x9abd84...85b9b6`; sonic `0xa68959...853e6c`; sonic `0xa6a157...b847ea`; sonic `0xd236cc...0dc46b`; base `0x154304...a85bbb`; base `0x1fbe91...419d67`; base `0x3e6d6f...ae1a16`; base `0x49f154...4326d8`; base `0x5422f8...33e481`; base `0x5b6b25...db16ce`; base `0x62c841...975cb5`; base `0x637fd8...2012de`; base `0x668a53...4954f6`; base `0x760160...c0cd87`; base `0x8f5bd6...031a9a`; base `0x9abd84...85b9b6`; base `0xad30bc...caa374`; base `0xb5168c...3cf93d`; base `0xc7c9d0...416df9`; base `0xd4ca82...591adc`; base `0xf292dc...327c9b`; arbitrum `0x07060e...bf5fc4`; arbitrum `0x0ab9d0...2ecbc3`; arbitrum `0x1fe082...7dfa83`; arbitrum `0x2f2ec3...f4a970`; arbitrum `0x394c95...b35237`; arbitrum `0x579f8b...2271ac`; arbitrum `0x678576...06ab94`; arbitrum `0x68f69c...9b0700`; arbitrum `0x75095d...517e47`; arbitrum `0x8af05d...4ab398`; arbitrum `0x9abd84...85b9b6`; arbitrum `0xb78b75...55d2fb`; arbitrum `0xbeb68a...6b1c47`; arbitrum `0xbf8306...986d24`; arbitrum `0xc1f47c...bf0038`; arbitrum `0xd4ca82...591adc`; arbitrum `0xe39ec0...79a46e`; arbitrum `0xf67e17...f36c5f` | ⚠️ Unaudited |
| TokenBalance | token | arbitrum | 3 deployments: optimism `0x099708...cc616f`; base `0xdb9908...b4d75e`; arbitrum [`0x08f987...d5a4c0`](./contracts/arbitrum-42161/0x08f987a94281c697b93a27d0c4be5cb823d5a4c0/) | ⚠️ Unaudited |
| TransparentProxyFactory | registry | ethereum | [`0x777803...f6bf37`](./contracts/ethereum-1/0x777803cbdd89d5d5bc1ddd2151b51b0b07f6bf37/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | ethereum | 2 deployments: ethereum [`0x205216...9d576d`](./contracts/ethereum-1/0x205216d89a00feb2a73273ceecd297baf89d576d/); ethereum `0xa7f8a7...121b18` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | ethereum | 2 deployments: ethereum [`0xe81a5b...d6219d`](./contracts/ethereum-1/0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d/); ethereum `0xf028c2...a5e8bb` | ⚠️ Unaudited |
| UltraVerifier | periphery | base | [`0x3ac156...91c91d`](./contracts/base-8453/0x3ac1563c336c60bb2bffb41d4d8b474c0591c91d/) | ⚠️ Unaudited |
| UniSupply | unknown | ethereum | [`0x5f128f...eecae9`](./contracts/ethereum-1/0x5f128f17737970a3d40256a9fa417c90f4eecae9/) | ⚠️ Unaudited |
| UniswapWrapper | unknown | ethereum | [`0xe6cc6b...fee70e`](./contracts/ethereum-1/0xe6cc6bf6c404fce83addcc0c3deb58b669fee70e/) | ⚠️ Unaudited |
| UniWithdraw | operational_periphery | ethereum | [`0x47a8e1...07bf46`](./contracts/ethereum-1/0x47a8e129c4d096407fb8537d4bbdac077b07bf46/) | ⚠️ Unaudited |
| UnwrapEth | unknown | base | 9 deployments: ethereum `0x6f360b...d2a1a5`; ethereum `0x98c7c6...3296cd`; ethereum `0xac0b16...43d50b`; ethereum `0xc394d6...a00b1a`; optimism `0xe76d03...4e3736`; base [`0x05c229...b4e8bc`](./contracts/base-8453/0x05c2292528694b4030a766c47e9f2be525b4e8bc/); base `0x4d063c...1fc5ae`; arbitrum `0x74d4b9...420fb1`; arbitrum `0xfff30c...75bc83` | ⚠️ Unaudited |
| V3RateStrategyFactory | registry | ethereum | [`0xd1a42b...1cba99`](./contracts/ethereum-1/0xd1a42b609362655e1290ec3b77fcea304d1cba99/) | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | 2 deployments: ethereum [`0x2b05f8...d27266`](./contracts/ethereum-1/0x2b05f8e1cacc6974fd79a673a341fe1f58d27266/); ethereum `0x86c717...40b985` | ⚠️ Unaudited |
| VotingDecayLibrary | unknown | arbitrum | 10 deployments: base `0x253c7f...3315f5`; base `0x935a2c...4f53ad`; base `0xbc7070...52eea6`; base `0xc992b0...c9cd20`; base `0xd5d39d...8626d0`; base `0xdca093...044229`; arbitrum [`0x0a1edf...5673f1`](./contracts/arbitrum-42161/0x0a1edf225c22a704a0ed24ae1f29bcf7de5673f1/); arbitrum `0x4397d3...2081da`; arbitrum `0x60390d...75d90e`; arbitrum `0xfc8a58...36e7cf` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | 2 deployments: ethereum [`0x339a7c...742396`](./contracts/ethereum-1/0x339a7c4e51e385ee22084c77456dedf58d742396/); ethereum `0xd2aef8...d1bedc` | ⚠️ Unaudited |
| WEETHExchangeRateOracle | operational_periphery | ethereum | [`0x288970...14a57f`](./contracts/ethereum-1/0x28897036f8459bfba886083dd6b4ce4d2f14a57f/) | ⚠️ Unaudited |
| WithdrawTokenProxy | operational_periphery | ethereum | [`0x86fd9f...2f3432`](./contracts/ethereum-1/0x86fd9f5988a4d2335d37a0daece48069ae2f3432/) | ⚠️ Unaudited |
| WrapEth | unknown | arbitrum | 9 deployments: ethereum `0x19983c...3a3ca9`; ethereum `0x50db3f...aeba0b`; ethereum `0x55d4d3...a84d13`; ethereum `0xafdd2e...d14dec`; optimism `0xfc7579...20e643`; base `0x184401...358bbb`; base `0x739838...9ff8ad`; arbitrum [`0x099708...cc616f`](./contracts/arbitrum-42161/0x099708408adb18f6d49013c88f3b1bb514cc616f/); arbitrum `0xaa777f...a59770` | ⚠️ Unaudited |
| WSTETHExchangeRateOracle | operational_periphery | ethereum | [`0xf77e13...40311a`](./contracts/ethereum-1/0xf77e132799dbb0d83a4fb7df10da04849340311a/) | ⚠️ Unaudited |
| XChainDSROracleResolver | operational_periphery | ethereum | 2 deployments: ethereum [`0x23913d...68ecdf`](./contracts/ethereum-1/0x23913dcae97046a577a2c7cc9595e1c06768ecdf/); ethereum `0x552795...78d351` | ⚠️ Unaudited |
| ZeroxWrapper | unknown | ethereum | 8 deployments: ethereum [`0x0c4e16...0d2988`](./contracts/ethereum-1/0x0c4e16899f2059f4e41ddb164317414a5c0d2988/); ethereum `0x5296af...c3ec81`; ethereum `0x674291...570fc3`; ethereum `0x701b34...845b6d`; ethereum `0x8dd929...f859ea`; ethereum `0xa44016...e798b5`; ethereum `0xd43c48...be24dd`; ethereum `0xed83b3...fc7237` | ⚠️ Unaudited |
| ZrxAllowlist | unknown | ethereum | [`0x4ba1f3...36823f`](./contracts/ethereum-1/0x4ba1f38427b33b8ab7bb0490200dae1f1c36823f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AjnaProxyActions | unknown | base | 3 deployments: optimism `0xb6e6e3...9bfb19`; base [`0x099708...cc616f`](./contracts/base-8453/0x099708408adb18f6d49013c88f3b1bb514cc616f/); base `0x47a45c...47f438` | ⚠️ Unaudited (bytecode match) |
| BufferArk | unknown | ethereum | 17 deployments: ethereum [`0x106cbb...f6dd2b`](./contracts/ethereum-1/0x106cbb1f445f0bffa7894f4199ee940bf7f6dd2b/); ethereum `0x88e7b6...0073a2`; ethereum `0x8b43a5...329b0e`; ethereum `0xde1f07...c778f0`; ethereum `0xeb60a8...0c0d9d`; sonic `0x809a0c...2562af`; base [`0x106cbb...f6dd2b`](./contracts/base-8453/0x106cbb1f445f0bffa7894f4199ee940bf7f6dd2b/); base `0x240dd2...9b5d1d`; base `0x72d417...8bd302`; base `0xc65b7e...e4b3ec`; base `0xdd8753...24458a`; arbitrum [`0x106cbb...f6dd2b`](./contracts/arbitrum-42161/0x106cbb1f445f0bffa7894f4199ee940bf7f6dd2b/); arbitrum `0x45439a...545b74`; arbitrum `0x58e75e...82c7ee`; arbitrum `0x75644c...6018f8`; arbitrum `0xbb7924...9b1419`; arbitrum `0xde6bee...39269f` | ⚠️ Unaudited (bytecode match) |
| DutchAuctionLibrary | unknown | base | 36 deployments: ethereum `0x5dfacd...877407`; ethereum `0x72b312...724c90`; ethereum `0x7ee9e8...c1aa8e`; sonic `0x355e2e...ba87d7`; sonic `0x3fa7e5...f9da77`; sonic `0x4cd514...b4c770`; base [`0x057f14...e997f7`](./contracts/base-8453/0x057f143693a10757838b207e2c188ec082e997f7/); base `0x0a2ad3...83f827`; base `0x1a4a22...d78a76`; base `0x424aa3...66f40e`; base `0x716028...dba7d1`; base `0x7839d9...6abc6e`; base `0x7bf2b1...c4c254`; base `0x7ee9e8...c1aa8e`; base `0x80ce20...987fad`; base `0x887482...afb4bc`; base `0x944e5d...9ad4c6`; base `0xa06e18...83dbe7`; base `0xb0365e...1f5ecb`; base `0xba57ea...dac064`; base `0xd1bccf...10bc6e`; arbitrum `0x093e3d...ceba68`; arbitrum `0x20ebab...c44a54`; arbitrum `0x25b978...9fc90a`; arbitrum `0x39d44f...8318e5`; arbitrum `0x3a4c99...edbb99`; arbitrum `0x455b0d...ebc4f0`; arbitrum `0x4b3d7d...8e0e80`; arbitrum `0x5dc319...b0a304`; arbitrum `0x61f8d6...c75bda`; arbitrum `0x668a53...4954f6`; arbitrum `0x716028...dba7d1`; arbitrum `0x7bf2b1...c4c254`; arbitrum `0x7ee9e8...c1aa8e`; arbitrum `0xb3105b...8ef984`; arbitrum `0xe5a0b1...7b3997` | ⚠️ Unaudited (bytecode match) |
| Raft | unknown | base | 28 deployments: ethereum `0xcedbfe...4efaf7`; ethereum `0xd1bccf...10bc6e`; ethereum `0xeccd16...8616e2`; sonic `0x2a828b...f4f018`; sonic `0x6e6b9c...05e204`; sonic `0x887482...afb4bc`; base [`0x0a14ed...62255a`](./contracts/base-8453/0x0a14edaf9e835525b3c5e0648c64a2a0d262255a/); base `0x143e60...13d3fb`; base `0x1f555e...6b9825`; base `0xb0f76b...4d7dab`; base `0xb5113d...b8baeb`; base `0xba8f69...6a34bc`; base `0xd2b0cf...a1e6a9`; base `0xf05e9f...b2e854`; base `0xf262b7...29f003`; arbitrum `0x125c8d...f313da`; arbitrum `0x1b4b8c...97db9a`; arbitrum `0x2aa6df...7feb0d`; arbitrum `0x48221c...6ef877`; arbitrum `0x60a81c...65926d`; arbitrum `0x63692c...09cd63`; arbitrum `0x6c54ac...9dc87a`; arbitrum `0x8f5bd6...031a9a`; arbitrum `0xa2e47b...04123f`; arbitrum `0xa57efa...1fef36`; arbitrum `0xb0f76b...4d7dab`; arbitrum `0xd1bccf...10bc6e`; arbitrum `0xd771bf...efa104` | ⚠️ Unaudited (bytecode match) |
| TimelockController | governance | arbitrum | 19 deployments: base `0x0ae42a...404dca`; base `0x25b978...9fc90a`; base `0x64eb3c...3d2b86`; base `0x6cd849...30d4f5`; base `0x814f43...882529`; base `0x8e72b2...36c701`; base `0x9b3464...599e01`; base `0xab89a0...72900d`; base `0xd9b0c3...390c26`; arbitrum [`0x0381b9...6780d4`](./contracts/arbitrum-42161/0x0381b9d857bccc043be9fca2717f02b7486780d4/); arbitrum `0x10aa83...53fd31`; arbitrum `0x225edf...9621c6`; arbitrum `0x49f154...4326d8`; arbitrum `0x4e0037...6099e3`; arbitrum `0x570c96...05f325`; arbitrum `0x6cd849...30d4f5`; arbitrum `0x78abbe...adde37`; arbitrum `0x82e399...7a87ec`; arbitrum `0xc7a84d...fd205a` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x041918...5c36fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08f72d...148758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x143b8c...718c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x153f8e...cf5f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1719e4...c6f6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x173f29...3a75d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a434c...2501c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d24b1...1a7f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x206a63...105903` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2143b2...b85956` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x216f1d...ea5590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21f460...e00bb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21fd5b...013ae5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31b098...d86dc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x361385...773008` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36a80c...e299fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c258b...1ffa06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3cc98f...d5b04e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47f564...9dfc31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49d58e...130fbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d97e8...4c032b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x511789...a90afd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x530c31...cb86fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x545c09...65879c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x549721...c53d97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x659746...e60402` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ca1f5...4c58e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d83a9...cb6b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e5358...c81c68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7456f4...eb7d7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76b3d3...d35e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x772363...383902` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77dd93...6a5e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x839a9c...b1942b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x858be8...bfa1c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85cb15...8a383b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85eedd...f85b55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dcaf2...84822f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e0670...a4bcf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91cf49...3f83e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x982de6...00dc0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9988b7...5493c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99a0f3...7a1041` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f0301...df8f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa28a5f...46af10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2a5c5...3c2d21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa66ce3...bbad21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa1b84...1e28ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab0d40...d5b5a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac1d48...8e93aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae3982...5287b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafaeaf...1a2701` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb32dad...a90407` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3560c...e970e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3df65...f7abca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb96a2e...2d4fb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc311d5...0f5628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5cc0a...387a28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6e660...867942` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0930f...bc6ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8361a...c7490d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc6755...ae3033` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdde612...e75602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf9ee9...284541` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1e495...9acd6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe28680...c411e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe312b2...cdaeb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe49189...4d6865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed9a6e...d39114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeda0aa...6e5472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf378cc...193a4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf954e1...8cf71d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc0e1f...ebdbdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0a67...2e873c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfde179...2d731b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1c98d8...9112ff` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x262a47...b836ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x61be33...76f123` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x702c41...c7826f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9026cc...03ba5f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x03dfed...e1e38c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x04f2f8...38beb0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x065e46...3a3a64` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b1a48...a41b41` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0f57a0...50ae68` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fa036...ac29c8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1616e6...45126a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1631fa...e221fc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b34f9...8cabd3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1be2fe...898b51` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e0264...9f981d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x227b72...5b4ac5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x22e392...8853bf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x29f206...d2f39c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2ab111...4ec1e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a2756...fc594b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3cd70d...4f49a2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4354e2...c8c23c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x450624...3de78c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x45cd11...d2bc50` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46955b...b72d47` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4be708...b80a4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4c0201...b2d71d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x508e30...94c5a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x564164...b4fac4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5677f9...1687e8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57b485...944a2a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x595e93...641982` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b8e9d...7bbc8c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5f472d...9c6ec2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6875c9...4ef802` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6a8542...8b199e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6ab4f6...d511c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x703d6c...58c223` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x717175...af93e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72aead...764a70` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72b9a5...088331` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x74f865...542393` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x76a1fb...cadc04` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x78d0bf...864cfd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b1e86...a494f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7ebdda...c45fcf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x82897a...c97bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x851e0d...4fb104` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x862ed8...58c957` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x875580...a0c02b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x895794...9eb80b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8a78e3...87ac8c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8f293f...8d80c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8fd8f1...045eba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x90ddf2...cef898` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x913420...061d07` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x917fea...573bf9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x93f271...956050` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x96c1b1...7060a3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa0abba...c4854b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa4a704...90a547` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa7840f...c3a46c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa82074...f4617f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa8dcb9...eba7cb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaa7d82...3fa2ca` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb18d21...fda4a8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb1e1bc...deb80d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb26e52...3209d4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb2e2a0...26b1e4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb499f3...c21a92` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb9a8b...ffa26d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe989d...8af82e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbf8306...986d24` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc16e2d...112c2c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7fd6c...c80962` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc9500d...b8a3ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd4554d...972b12` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd45cd5...68b803` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd76b71...b71b3d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xde9796...655d88` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe23cd9...14455b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe3edfd...da6188` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe625d0...483aa5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xea9456...afb108` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xed6e00...692312` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeece00...e5f043` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf309ee...2acee6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf4b5d0...c8593b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf790d1...8f01f7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfdfd14...d720d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x085efe...aa1699` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0baf22...6be2fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x19f6bd...464334` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3002a7...ad5935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x336374...796144` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x353fde...cf9027` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x44ed01...59f3ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e021a...cec026` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x507a2d...7964f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x61e28f...f8eda9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64cfd4...d0374f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fffaa...f0d6a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72fa21...c48673` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7cff9a...e44ec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89395d...e8d7e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c1149...3faed2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ce57e...599123` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ec15b...afb986` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2a24a...cbd18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa30d80...7d26d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa32f4c...edf166` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5c83f...065641` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa8e471...4cf191` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xac04f0...579d1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb0e1de...946475` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb4b6a9...74719f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe1b5a...13255f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc992b0...c9cd20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd40311...04a631` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8564c...bec718` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8719f...0a05ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdb64df...6a030e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe98b18...ebbe70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf824a2...55f3a1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://github.com/phoenixlabsresearch/spark-docs/blob/main/deployed-contracts/ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/oasis-multiply-fmm-extension) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/oasis-app-modular-proxy-actions) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/summer-fi-automation-v2-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 11 |
| standard_library | 0 |
| needs_review | 473 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11695] {% embed url="<>" %}
- [11696] {% embed url="<>" %}
- [11697] {% embed url="<>" %}
- [11698] {% embed url="<>" %}
- [11699] {% embed url="<>" %}
- [11700] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
