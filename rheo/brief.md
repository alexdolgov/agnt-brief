# Agentic Audit Brief: Rheo

## Project Overview

- Project: Rheo (`rheo`)
- Website: [https://app.rheo.xyz/](https://app.rheo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:46.084Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, ethereum
- Contract surface: 70 unique implementations (203 raw deployments)
- DeFi Llama TVL: $29,543.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 38 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on chainlink.

### Architecture

The protocol comprises 6 functional families. Its contracts share 17 common project-authored base contract(s) (proxy, accesscontrolupgradeable, contextupgradeable). Dominant framework: chainlink.

## Contract Surface Quality

- Indexed contracts: 218; live-surface contracts included: 203 (202 live, 1 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/68 (7.4%)
- Deployed-live implementations: 69 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/69
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 70
- Raw deployments: 203
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 10 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 7.4% (Cantina, Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 4 | 5.8% | 2025-06 |
| Cantina | Tier 1 | 1 | 1.4% | 2025-02 |
| Chain Defenders | Tier 2 | 1 | 1.4% | 2024-12 |
| Code4rena | Tier 1 | 1 | 1.4% | 2024-06 |
| Omniscia | Tier 2 | 1 | 1.4% | 2025-06 |
| unknown | Tier 2 | 1 | 1.4% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626Adapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x38fa92...86490c`](./contracts/ethereum-1/0x38fa928decafc34072e721ce3ff3d57f5586490c/); base `0x91e15d...74587d` | ✅ Audited |
| PriceFeed | unknown | base | n/a | 2 deployments: base [`0x634160...a4858b`](./contracts/base-8453/0x634160ce49fe29fc086e0b12230bd571c3a4858b/); base `0xd6938e...a0de72` | ✅ Audited |
| Size | unknown | base | n/a | 18 deployments: ethereum `0x05f56a...a1a96e`; ethereum `0x0f83c0...b0ea8e`; ethereum `0x1aba54...aa62fe`; ethereum `0x91e15d...74587d`; ethereum `0xb5acd2...1ead93`; ethereum `0xbd0a29...eac3e2`; ethereum `0xe0042d...ced5b7`; base [`0x032a3b...55a52f`](./contracts/base-8453/0x032a3bd866eccd067623eef9ed9c28c91a55a52f/); base `0x38f012...8b0311`; base `0x64c6f9...12c1a8`; base `0x6f9f92...79088c`; base `0x7a374a...a3aed6`; base `0x94afc4...aadd78`; base `0x9f2e94...71987b`; base `0xac17bd...c101c8`; base `0xcd6ca4...08724a`; base `0xec4a95...70ad55`; base `0xec81d1...f50fbb` | ✅ Audited |
| SizeFactory | unknown | base | n/a | 12 deployments: ethereum `0x3e275c...20131a`; ethereum `0x5a4ac0...58c337`; ethereum `0x9024c4...16cfbc`; ethereum `0xd3e12e...b24132`; ethereum `0xe6a6d0...49ff35`; base [`0x282056...511b7f`](./contracts/base-8453/0x282056fc9515ee5622690ce908a84f15b4511b7f/); base `0x328185...c7ef3c`; base `0x5abe93...82e3d3`; base `0x64b8ab...ea230f`; base `0xa2ab0a...0f159d`; base `0xfa64cc...d90709`; base `0xfb70ca...88bd9b` | ✅ Audited |
| SizeFactory | registry | base | n/a | [`0x330dc3...f3df0b`](./contracts/base-8453/0x330dc31db45672c1f565cf3ec91f9a01f8f3df0b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveAdapter | unknown | ethereum | n/a | [`0x5e4b3c...582cfe`](./contracts/ethereum-1/0x5e4b3cddab215960d847cc07eac72fe41e582cfe/) | ⚠️ Unaudited |
| AutoCopyCollection | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6027fa...fee6ea`](./contracts/ethereum-1/0x6027faf1d22ba4db7bd35acdca98208a61fee6ea/); ethereum `0xbe36be...b0ef68` | ⚠️ Unaudited |
| AutoRepay | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39a6a9...fd80a2`](./contracts/ethereum-1/0x39a6a99bee40a302334564400f8cd49c61fd80a2/); ethereum `0xea0244...c28a50` | ⚠️ Unaudited |
| AutoRepay | unknown | base | n/a | 2 deployments: base [`0x7c059e...4d9664`](./contracts/base-8453/0x7c059e606a5cebdd458767c255329d8d074d9664/); base `0xcafbbe...640e29` | ⚠️ Unaudited |
| CollectionsManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a2853...35977b`](./contracts/ethereum-1/0x0a2853e622947d82c7276c58119cdba21f35977b/); ethereum `0x5f1dcb...8b07cb` | ⚠️ Unaudited |
| CollectionsManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24c7d4...ff3ffb`](./contracts/ethereum-1/0x24c7d4ba190ece7b812ccd365a4d0d7e88ff3ffb/); ethereum `0xd73961...e01db7` | ⚠️ Unaudited |
| CollectionsManager | unknown | base | n/a | 2 deployments: base [`0x1376c8...c9a569`](./contracts/base-8453/0x1376c898e8bb66c488b98f594d580446c1c9a569/); base `0xe2e228...ade926` | ⚠️ Unaudited |
| CollectionsManager | governance | base | n/a | 2 deployments: ethereum `0xe961c2...d027eb`; base [`0x6bba45...22b377`](./contracts/base-8453/0x6bba45cfe699a35d6a8f72e43c0702a63822b377/) | ⚠️ Unaudited |
| FlashLoanLiquidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x583b43...3ed7aa`](./contracts/ethereum-1/0x583b43c1fe7d80a33ca38b25b51b38e9da3ed7aa/); ethereum `0x9f9842...853cda` | ⚠️ Unaudited |
| FlashLoanLiquidator | operational_periphery | ethereum | n/a | [`0xb6d644...6c5265`](./contracts/ethereum-1/0xb6d6441cb7641829622b435b642a25653c6c5265/) | ⚠️ Unaudited |
| FlashLoanLiquidator | unknown | base | n/a | 2 deployments: base [`0x35a3b1...8729b2`](./contracts/base-8453/0x35a3b1d398ba7b0d13c70cbf572f426cb48729b2/); base `0x9bafd0...b66fd0` | ⚠️ Unaudited |
| FlashLoanLooping | unknown | base | n/a | 15 deployments: ethereum `0x086312...c5c87c`; ethereum `0x5456d7...1e1e15`; ethereum `0x5e5342...7bfae2`; ethereum `0x67f65b...792772`; ethereum `0x6ae1b4...d7120e`; ethereum `0x8323da...66090e`; ethereum `0xf3b60b...081bb9`; base [`0x032ff8...5a5b27`](./contracts/base-8453/0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27/); base `0x1e0804...551b11`; base `0x437a07...a8627c`; base `0x8d6415...62abce`; base `0xb94958...f7a844`; base `0xd21e05...f8a00a`; base `0xe3499b...0f4767`; base `0xe518b1...035773` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x026a62...e58540`](./contracts/ethereum-1/0x026a620be36f9ee9ccdcf4eec7bd34ce7de58540/); ethereum `0xbbf266...f17a5f` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x032a3b...55a52f`](./contracts/ethereum-1/0x032a3bd866eccd067623eef9ed9c28c91a55a52f/); ethereum `0x5abe93...82e3d3` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x17394b...f23771`](./contracts/ethereum-1/0x17394bb16e522e1661062aa27644fc818cf23771/); base `0xe524c0...36d02d` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x246821...52e613`](./contracts/ethereum-1/0x2468210dd658579c4402897efceb533ad852e613/); ethereum `0xf16083...11fd83` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27b68e...9bb443`](./contracts/ethereum-1/0x27b68e1e247381d838f4838ac1add711e19bb443/); ethereum `0x594585...af1757` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x678adc...0d6bbf`](./contracts/ethereum-1/0x678adc9134db57dfbb275ff82352ce663a0d6bbf/); ethereum `0x7d89dd...db3a61` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a374a...a3aed6`](./contracts/ethereum-1/0x7a374a6f090c03dc19990f6ba5b85037dda3aed6/); ethereum `0xc8facf...c88907` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7c98af...332c3c`](./contracts/ethereum-1/0x7c98af7675a7f8c2023a53c67616d63333332c3c/); ethereum `0xfd4896...461a5b` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e8c14...9a6338`](./contracts/ethereum-1/0x8e8c1403c9e525af0a1f2e3768a6013b4b9a6338/); ethereum `0xb7cf68...0acc3f` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa0e897...d0b754`](./contracts/ethereum-1/0xa0e8972de2c15f748e1fffb67f37064774d0b754/); ethereum `0xec4a95...70ad55` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa7035b...a3b096`](./contracts/ethereum-1/0xa7035b00d5b1d0edb3c6482767b3d7ddf5a3b096/); ethereum `0xb12863...71f800` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd9b2aa...485fe5`](./contracts/ethereum-1/0xd9b2aa96a4452e1c541f6a1dc47c96832f485fe5/); ethereum `0xede7e4...34e2e6` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x1202d4...5978e1`](./contracts/base-8453/0x1202d4fb67e39d4cdf54feb3df94879cba5978e1/); base `0x61106d...911d05` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x17f32a...1928c4`](./contracts/base-8453/0x17f32a5e988800364cb14e0619df6b87cb1928c4/); base `0xf2c769...9a8d77` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x194c21...86cff6`](./contracts/base-8453/0x194c21d29a89de064ac2b4dd8029a3509886cff6/); base `0xde6292...911c7f` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x1aba54...aa62fe`](./contracts/base-8453/0x1aba541f403109c34228c3fa188113ecbbaa62fe/); base `0x69be21...e6ce2d` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x3a63ec...8166c0`](./contracts/base-8453/0x3a63ecf29b7276e562679cafde2af728968166c0/); base `0xb9e869...4eac2e` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x434485...94dbaa`](./contracts/base-8453/0x4344855be7f18456376f5b6d854a9e307f94dbaa/); base `0xaec6f7...f5735a` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x4e9a30...0d5119`](./contracts/base-8453/0x4e9a30bddc69dd1719964be56a8d7122190d5119/); base `0xe89f10...595972` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x528c05...32a16b`](./contracts/base-8453/0x528c052622dcead6cbfa35d269afa1ec3b32a16b/); base `0xfeb7c1...321a24` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x635f15...26cade`](./contracts/base-8453/0x635f151544ffe33e9ea36595838b97ab0026cade/); base `0xb4ef25...f83551` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x8ddb7b...5a9df2`](./contracts/base-8453/0x8ddb7b01d5ae872e6028732feac8d79a1c5a9df2/); base `0x923e79...0f9c1e` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0xe0b698...4056d8`](./contracts/base-8453/0xe0b698a945f597b6425c69b42ca62c725a4056d8/); base `0xf41112...445a29` | ⚠️ Unaudited |
| FlashLoanLoopingV1 | unknown | base | n/a | 12 deployments: ethereum `0x2f5333...c316de`; ethereum `0x56087d...1df311`; ethereum `0xd21e05...f8a00a`; ethereum `0xd42839...d9dc52`; ethereum `0xd598f7...f4589b`; ethereum `0xe32f80...81dd4d`; ethereum `0xfa87fd...8ebee1`; base [`0x150bec...8a9056`](./contracts/base-8453/0x150bec677391a7d6eea27e63cd0be5a2888a9056/); base `0xa460c4...f158df`; base `0xbd0a29...eac3e2`; base `0xdc386f...7e1ed5`; base `0xe291b5...a1800c` | ⚠️ Unaudited |
| FlashLoanLoopingV1_7 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1e5a4c...670f11`](./contracts/ethereum-1/0x1e5a4c1d313219b491af392b4b6fe2d715670f11/); ethereum `0x4b356d...cf9019`; ethereum `0x81d941...be39df` | ⚠️ Unaudited |
| FlashRepay | unknown | ethereum | n/a | 4 deployments: ethereum [`0x282056...511b7f`](./contracts/ethereum-1/0x282056fc9515ee5622690ce908a84f15b4511b7f/); ethereum `0xba8d38...fe0e88`; base `0x4871d2...70e85f`; base `0x4b9407...85f623` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x094bfc...a6b05a`](./contracts/ethereum-1/0x094bfc54a3db297c3459436b76b2b77f1ca6b05a/); ethereum `0xd374e0...f33be3` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x123e09...176bf4`](./contracts/ethereum-1/0x123e09f8c92928bc102e2fbce03babe1ef176bf4/); ethereum `0x6f306a...4faee4` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x134534...9519eb`](./contracts/ethereum-1/0x134534254e293a48b4aa2992dc7839f69c9519eb/); ethereum `0x6e5edc...f85383` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237bb3...62a4b3`](./contracts/ethereum-1/0x237bb38a01d5f5ac7429782acef2faff6a62a4b3/); ethereum `0x6fd7f1...0c4378` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa89861...7aba50`](./contracts/ethereum-1/0xa89861c51beaac54d68d8e1b3b0faa38587aba50/); ethereum `0xe529d6...eb14d7` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x1cb5d8...fdf5df`](./contracts/base-8453/0x1cb5d8c17952e50011e3a411f97e3bfc6ffdf5df/); base `0xda5098...77f0fe` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x52f1c1...94b1d9`](./contracts/base-8453/0x52f1c10f96b88e19ddeb7369277a4076a094b1d9/); base `0x8ceb15...79b20c` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x9b3f2a...b95687`](./contracts/base-8453/0x9b3f2a71becd9ba466894e204b8683bfc6b95687/); base `0xbf38e7...1c5f22` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x9daa11...525eef`](./contracts/base-8453/0x9daa11e18513ea2a6cbb926834e8f699b0525eef/); base `0xc486ec...982b29` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0xab4d34...508774`](./contracts/base-8453/0xab4d34e92940c1673e7c12f31418d536f4508774/); base `0xb780fd...b8aac3` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0xe4fa6f...c94101`](./contracts/base-8453/0xe4fa6f552f07fbe2ed8eecb29ed4ca9c41c94101/); base `0xf58833...30b384` | ⚠️ Unaudited |
| FlashRepayV1 | unknown | base | n/a | 7 deployments: ethereum `0x5091cf...ef70b2`; ethereum `0xb80c45...e1370d`; ethereum `0xe2bc51...70f616`; base [`0x162977...070b4c`](./contracts/base-8453/0x162977f0b19b21ededf3f6e61950d57115070b4c/); base `0x2cf9d6...d7f995`; base `0x5d3f04...69d804`; base `0xe95dc9...64abfe` | ⚠️ Unaudited |
| GetMarketShutdownCalldataScript | unknown | ethereum | n/a | [`0x6058cd...751a64`](./contracts/ethereum-1/0x6058cda655ac20b27ceeb1d44ec57311fc751a64/) | ⚠️ Unaudited |
| LeverageUp | unknown | ethereum | n/a | [`0xf4a21a...806f14`](./contracts/ethereum-1/0xf4a21ac7e51d17a0e1c8b59f7a98bb7a97806f14/) | ⚠️ Unaudited |
| MarketMakerManager | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0ea14b...ca64f3`](./contracts/ethereum-1/0x0ea14b0a1645ef507216709cd96ed87094ca64f3/); ethereum `0x36ba0e...3d4cda`; ethereum `0x8a0f49...0afa54`; ethereum `0x9f2e94...71987b`; base `0x0f83c0...b0ea8e`; base `0x187f6e...3feff6`; base `0x22ef28...870b82`; base `0xba8d38...fe0e88` | ⚠️ Unaudited |
| MarketMakerManagerFactory | unknown | base | n/a | 3 deployments: ethereum `0xdd3a78...3565cf`; base [`0x32335c...844ea1`](./contracts/base-8453/0x32335c4ea83099dd052ea116b70bf1de6d844ea1/); base `0x733c4c...129a57` | ⚠️ Unaudited |
| MarketMakerManagerFactory | unknown | base | n/a | 2 deployments: base [`0x3381ae...f3ff83`](./contracts/base-8453/0x3381aedd39b4fa423af3ecb599f7d9788ff3ff83/); base `0xc4cca5...6f6d78` | ⚠️ Unaudited |
| MorphoPriceFeedV2 | operational_periphery | ethereum | n/a | [`0xc16acb...931567`](./contracts/ethereum-1/0xc16acb6c66abbe24b70695b77d64422093931567/) | ⚠️ Unaudited |
| NonTransferrableRebasingTokenVault | unknown | base | n/a | 2 deployments: ethereum `0xc157c6...30d808`; base [`0x342a61...ab8560`](./contracts/base-8453/0x342a61b10da0e1bdcd3aeef403c5702c3cab8560/) | ⚠️ Unaudited |
| PauseAll | unknown | ethereum | n/a | 2 deployments: ethereum [`0x57f543...a13fce`](./contracts/ethereum-1/0x57f543adb4fd741e2e508cc06e8e72bdeea13fce/); base `0x8e61c4...0776e0` | ⚠️ Unaudited |
| PriceFeedChainlinkOnly4x | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x258982...09a14d`](./contracts/ethereum-1/0x258982368229bb2b01fec7e68bb92e993709a14d/); ethereum `0x26c1cb...7ba361`; ethereum `0x26c671...f57e6b`; ethereum `0x85daf4...12eafb`; ethereum `0x9d6ab8...c25b81` | ⚠️ Unaudited |
| PriceFeedChainlinkOnly4xV2 | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x3a63ec...8166c0`](./contracts/ethereum-1/0x3a63ecf29b7276e562679cafde2af728968166c0/); ethereum `0xb94958...f7a844`; ethereum `0xb9e869...4eac2e`; ethereum `0xe0b698...4056d8`; ethereum `0xe3499b...0f4767`; ethereum `0xf41112...445a29` | ⚠️ Unaudited |
| PriceFeedChainlinkUniswapV3TWAPx2 | unknown | ethereum | n/a | [`0x837772...963d34`](./contracts/ethereum-1/0x8377724e9fbe497f16abc423e42d365e6d963d34/) | ⚠️ Unaudited |
| Rheo | unknown | ethereum | n/a | [`0x7e3ce0...da026d`](./contracts/ethereum-1/0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d/) | ⚠️ Unaudited |
| Size | unknown | base | n/a | 3 deployments: base [`0xa675e5...564555`](./contracts/base-8453/0xa675e5909e29960cf9e8037b39508a45a0564555/); base `0xb21bbe...fd016c`; base `0xc2a429...eff940` | ⚠️ Unaudited |
| SizeFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36e139...17cb3f`](./contracts/ethereum-1/0x36e1395237f43158a29a2fbfac395547d917cb3f/); ethereum `0x3a9c05...b594c1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x87e64a...a6b534` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Size-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Size-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [Audit Report - Size Lending.pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Size%20Lending.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [2025-06-23-Omniscia.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2025-06-23-Omniscia.pdf) | Omniscia | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |
| [2025-06-14-Cantina.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-06-14-Cantina.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 4 | n/a |
| [2025-02-26-Cantina.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-02-26-Cantina.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 3 | n/a |
| [2025-02-12-Custodia-Security.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-02-12-Custodia-Security.pdf) | Cantina | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-12-10-ChainDefenders.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-12-10-ChainDefenders.pdf) | Cantina | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [2024-11-13-Custodia-Security.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-11-13-Custodia-Security.pdf) | Cantina | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-06-10-Code4rena.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-06-10-Code4rena.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [2025-02-12-Custodia-Security.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2025-02-12-Custodia-Security.pdf) | Custodia Security | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-12-10-ChainDefenders.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-12-10-ChainDefenders.pdf) | Chain Defenders | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [2024-11-13-Custodia-Security.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-11-13-Custodia-Security.pdf) | Custodia Security | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-06-08-Spearbit.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-06-08-Spearbit.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [2024-03-26-Solidified.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-03-26-Solidified.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [2025-09-11-OpenZeppelin.pdf](https://github.com/rheo-xyz/very-liquid-vaults/blob/main/audits/2025-09-11-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-07-26-Obsidian-Audits.pdf](https://github.com/rheo-xyz/very-liquid-vaults/blob/main/audits/2025-07-26-Obsidian-Audits.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5e4b3c...582cfe`](./contracts/ethereum-1/0x5e4b3cddab215960d847cc07eac72fe41e582cfe/) | AaveAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6027fa...fee6ea`](./contracts/ethereum-1/0x6027faf1d22ba4db7bd35acdca98208a61fee6ea/) | AutoCopyCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a6a9...fd80a2`](./contracts/ethereum-1/0x39a6a99bee40a302334564400f8cd49c61fd80a2/) | AutoRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c059e...4d9664`](./contracts/base-8453/0x7c059e606a5cebdd458767c255329d8d074d9664/) | AutoRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a2853...35977b`](./contracts/ethereum-1/0x0a2853e622947d82c7276c58119cdba21f35977b/) | CollectionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c7d4...ff3ffb`](./contracts/ethereum-1/0x24c7d4ba190ece7b812ccd365a4d0d7e88ff3ffb/) | CollectionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1376c8...c9a569`](./contracts/base-8453/0x1376c898e8bb66c488b98f594d580446c1c9a569/) | CollectionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6bba45...22b377`](./contracts/base-8453/0x6bba45cfe699a35d6a8f72e43c0702a63822b377/) | CollectionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x583b43...3ed7aa`](./contracts/ethereum-1/0x583b43c1fe7d80a33ca38b25b51b38e9da3ed7aa/) | FlashLoanLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6d644...6c5265`](./contracts/ethereum-1/0xb6d6441cb7641829622b435b642a25653c6c5265/) | FlashLoanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35a3b1...8729b2`](./contracts/base-8453/0x35a3b1d398ba7b0d13c70cbf572f426cb48729b2/) | FlashLoanLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x032ff8...5a5b27`](./contracts/base-8453/0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27/) | FlashLoanLooping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026a62...e58540`](./contracts/ethereum-1/0x026a620be36f9ee9ccdcf4eec7bd34ce7de58540/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x032a3b...55a52f`](./contracts/ethereum-1/0x032a3bd866eccd067623eef9ed9c28c91a55a52f/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17394b...f23771`](./contracts/ethereum-1/0x17394bb16e522e1661062aa27644fc818cf23771/) | FlashLoanLoopingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x246821...52e613`](./contracts/ethereum-1/0x2468210dd658579c4402897efceb533ad852e613/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b68e...9bb443`](./contracts/ethereum-1/0x27b68e1e247381d838f4838ac1add711e19bb443/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x678adc...0d6bbf`](./contracts/ethereum-1/0x678adc9134db57dfbb275ff82352ce663a0d6bbf/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a374a...a3aed6`](./contracts/ethereum-1/0x7a374a6f090c03dc19990f6ba5b85037dda3aed6/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c98af...332c3c`](./contracts/ethereum-1/0x7c98af7675a7f8c2023a53c67616d63333332c3c/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e8c14...9a6338`](./contracts/ethereum-1/0x8e8c1403c9e525af0a1f2e3768a6013b4b9a6338/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e897...d0b754`](./contracts/ethereum-1/0xa0e8972de2c15f748e1fffb67f37064774d0b754/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7035b...a3b096`](./contracts/ethereum-1/0xa7035b00d5b1d0edb3c6482767b3d7ddf5a3b096/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9b2aa...485fe5`](./contracts/ethereum-1/0xd9b2aa96a4452e1c541f6a1dc47c96832f485fe5/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1202d4...5978e1`](./contracts/base-8453/0x1202d4fb67e39d4cdf54feb3df94879cba5978e1/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17f32a...1928c4`](./contracts/base-8453/0x17f32a5e988800364cb14e0619df6b87cb1928c4/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x194c21...86cff6`](./contracts/base-8453/0x194c21d29a89de064ac2b4dd8029a3509886cff6/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1aba54...aa62fe`](./contracts/base-8453/0x1aba541f403109c34228c3fa188113ecbbaa62fe/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a63ec...8166c0`](./contracts/base-8453/0x3a63ecf29b7276e562679cafde2af728968166c0/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x434485...94dbaa`](./contracts/base-8453/0x4344855be7f18456376f5b6d854a9e307f94dbaa/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e9a30...0d5119`](./contracts/base-8453/0x4e9a30bddc69dd1719964be56a8d7122190d5119/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x528c05...32a16b`](./contracts/base-8453/0x528c052622dcead6cbfa35d269afa1ec3b32a16b/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x635f15...26cade`](./contracts/base-8453/0x635f151544ffe33e9ea36595838b97ab0026cade/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ddb7b...5a9df2`](./contracts/base-8453/0x8ddb7b01d5ae872e6028732feac8d79a1c5a9df2/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe0b698...4056d8`](./contracts/base-8453/0xe0b698a945f597b6425c69b42ca62c725a4056d8/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x150bec...8a9056`](./contracts/base-8453/0x150bec677391a7d6eea27e63cd0be5a2888a9056/) | FlashLoanLoopingV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5a4c...670f11`](./contracts/ethereum-1/0x1e5a4c1d313219b491af392b4b6fe2d715670f11/) | FlashLoanLoopingV1_7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x282056...511b7f`](./contracts/ethereum-1/0x282056fc9515ee5622690ce908a84f15b4511b7f/) | FlashRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094bfc...a6b05a`](./contracts/ethereum-1/0x094bfc54a3db297c3459436b76b2b77f1ca6b05a/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x123e09...176bf4`](./contracts/ethereum-1/0x123e09f8c92928bc102e2fbce03babe1ef176bf4/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x134534...9519eb`](./contracts/ethereum-1/0x134534254e293a48b4aa2992dc7839f69c9519eb/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237bb3...62a4b3`](./contracts/ethereum-1/0x237bb38a01d5f5ac7429782acef2faff6a62a4b3/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa89861...7aba50`](./contracts/ethereum-1/0xa89861c51beaac54d68d8e1b3b0faa38587aba50/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cb5d8...fdf5df`](./contracts/base-8453/0x1cb5d8c17952e50011e3a411f97e3bfc6ffdf5df/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52f1c1...94b1d9`](./contracts/base-8453/0x52f1c10f96b88e19ddeb7369277a4076a094b1d9/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9b3f2a...b95687`](./contracts/base-8453/0x9b3f2a71becd9ba466894e204b8683bfc6b95687/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9daa11...525eef`](./contracts/base-8453/0x9daa11e18513ea2a6cbb926834e8f699b0525eef/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xab4d34...508774`](./contracts/base-8453/0xab4d34e92940c1673e7c12f31418d536f4508774/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe4fa6f...c94101`](./contracts/base-8453/0xe4fa6f552f07fbe2ed8eecb29ed4ca9c41c94101/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x162977...070b4c`](./contracts/base-8453/0x162977f0b19b21ededf3f6e61950d57115070b4c/) | FlashRepayV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6058cd...751a64`](./contracts/ethereum-1/0x6058cda655ac20b27ceeb1d44ec57311fc751a64/) | GetMarketShutdownCalldataScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4a21a...806f14`](./contracts/ethereum-1/0xf4a21ac7e51d17a0e1c8b59f7a98bb7a97806f14/) | LeverageUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ea14b...ca64f3`](./contracts/ethereum-1/0x0ea14b0a1645ef507216709cd96ed87094ca64f3/) | MarketMakerManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x32335c...844ea1`](./contracts/base-8453/0x32335c4ea83099dd052ea116b70bf1de6d844ea1/) | MarketMakerManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3381ae...f3ff83`](./contracts/base-8453/0x3381aedd39b4fa423af3ecb599f7d9788ff3ff83/) | MarketMakerManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342a61...ab8560`](./contracts/base-8453/0x342a61b10da0e1bdcd3aeef403c5702c3cab8560/) | NonTransferrableRebasingTokenVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57f543...a13fce`](./contracts/ethereum-1/0x57f543adb4fd741e2e508cc06e8e72bdeea13fce/) | PauseAll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x258982...09a14d`](./contracts/ethereum-1/0x258982368229bb2b01fec7e68bb92e993709a14d/) | PriceFeedChainlinkOnly4x | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a63ec...8166c0`](./contracts/ethereum-1/0x3a63ecf29b7276e562679cafde2af728968166c0/) | PriceFeedChainlinkOnly4xV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x837772...963d34`](./contracts/ethereum-1/0x8377724e9fbe497f16abc423e42d365e6d963d34/) | PriceFeedChainlinkUniswapV3TWAPx2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e3ce0...da026d`](./contracts/ethereum-1/0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d/) | Rheo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa675e5...564555`](./contracts/base-8453/0xa675e5909e29960cf9e8037b39508a45a0564555/) | Size | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e139...17cb3f`](./contracts/ethereum-1/0x36e1395237f43158a29a2fbfac395547d917cb3f/) | SizeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=13, extraction_exact=4

Zero-match audit list:

- [13770] 2025-02-12-Custodia-Security.pdf
- [13772] 2024-11-13-Custodia-Security.pdf
- [13776] 2025-02-12-Custodia-Security.pdf
- [13778] 2024-11-13-Custodia-Security.pdf
- [13782] 2025-09-11-OpenZeppelin.pdf
- [13783] 2025-07-26-Obsidian-Audits.pdf

Fork inheritance lineage and inherited audits are included when available.
