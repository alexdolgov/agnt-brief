# Agentic Audit Brief: AUTOfinance

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 46.3% over 90 days

## Project Overview

- Project: AUTOfinance (`autofinance`)
- Website: [https://www.auto.finance](https://www.auto.finance)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-06-11T11:32:04.486Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-4b54
- Chains: arbitrum, base, ethereum, linea, plasma
- Contract surface: 570 unique implementations (1752 raw deployments)
- DeFi Llama TVL: $39,393,220.49
- On-chain TVL (included contracts): $175,724,182.92
- TVL by chain: Ethereum $158,270,775.78 | Base $15,266,107.05 | Arbitrum $2,147,674.98 | Plasma $39,381.66 | Linea $243.45

## Project Description

AUTOfinance is a yield optimization protocol that aggregates liquidity into Autopools, which dynamically allocate assets across various DeFi strategies (e.g., lending, liquidity provision, staking) to maximize returns. It uses a modular system of destination vaults, oracles, and swappers to manage risk and execute rebalancing across multiple chains.

### Architecture

Autopools serve as the entry point for users, delegating asset management to Destination Vaults which execute specific strategies. Oracles and Calculators supply the necessary pricing and performance data to guide allocation and rewards, while the Swap Infrastructure facilitates rebalancing and liquidations. All components are coordinated through the System Registry and AccessController, ensuring consistent configuration and security across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/409 (0.0%)
- Verified + Unaudited implementations: 406
- Verified by bytecode match: 3
- Unverified implementations: 161
- Unique implementations: 570
- Raw deployments: 1752
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $175,724,182.92
- Latest audit: 2025 (aging)
- Staleness: 0 fresh, 2 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $175,724,182.92 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (406)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | 6 deployments: ethereum [`0x02e215...41d5b3`](./contracts/ethereum-1/0x02e2151d4f351881017abdf2dd2b51150841d5b3/); ethereum `0x0a7604...e70f03`; ethereum `0x7e2b9b...81ad4a`; ethereum `0x7e8808...717b02`; ethereum `0xb900ef...209b2e`; ethereum `0xf27afa...d669cb` | ⚠️ Unaudited |
| AutopoolETH | core_logic | ethereum | 33 deployments: ethereum [`0x0a2b94...114e56`](./contracts/ethereum-1/0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56/); ethereum `0x1abd04...0f356e`; ethereum `0x1c2aa6...7c821a`; ethereum `0x1da0b3...691e61`; ethereum `0x35911a...cd3e5a`; ethereum `0x408b6a...42df36`; ethereum `0x558d67...61ef7a`; ethereum `0x79eb84...0aa54d`; ethereum `0x824b39...439c66`; ethereum `0xa1f351...b50dc1`; ethereum `0xa7569a...d80d35`; ethereum `0xb0a44f...3f428a`; ethereum `0xcc1af2...49c1ea`; ethereum `0xd4ba03...870568`; ethereum `0xf90bb2...367281`; ethereum `0xfb2ebd...ad0695`; base `0x2ab4a3...6efdf9`; base `0x375c79...f87235`; base `0x40ed41...45d381`; base `0x6e2cb0...caf85c`; base `0x9c6864...84c831`; base `0xaadf01...6e0404`; base `0xc6bc14...985ef1`; base `0xeb042d...b02477`; plasma `0x4ec8f8...83ec80`; plasma `0xd0cf0c...cc5821`; arbitrum `0x12db19...ff66c3`; arbitrum `0xa1ecbb...768510`; arbitrum `0xdeb9a2...d4e0ee`; arbitrum `0xf63b7f...46320c`; linea `0x60a9b4...9ec01c`; linea `0xc9db15...195e7b`; linea `0xd1a652...bd792a` | ⚠️ Unaudited |
| OlympusERC20Token | token | ethereum | [`0x383518...14a899`](./contracts/ethereum-1/0x383518188c0c6d7730d91b2c03a03c837814a899/) | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | linea | 10 deployments: ethereum `0x60882d...d1755e`; ethereum `0x726104...b6c27b`; ethereum `0x9abe58...354404`; ethereum `0xe041b3...5456f2`; ethereum `0xf59086...26e716`; base `0x4103a4...630595`; base `0x69a63d...3e0522`; base `0xb592c1...314498`; arbitrum `0xf6cc56...b09540`; linea [`0x03825c...c5bf0d`](./contracts/linea-59144/0x03825c8c817ff49a208c9c20365c002418c5bf0d/) | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlToken | token | ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| SiloVaultWrapper | core_logic | ethereum | 7 deployments: ethereum [`0x0e80f6...a47dc6`](./contracts/ethereum-1/0x0e80f6db7fc8e5966828eae36874b62dc8a47dc6/); ethereum `0x1e308f...58e4d1`; ethereum `0x78910c...3d55cc`; ethereum `0x851c31...779f8e`; ethereum `0xb07168...114f3f`; ethereum `0xb0bb32...3a6af0`; ethereum `0xd065e6...76fe68` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | ethereum | 5 deployments: ethereum [`0x2b0813...93eb78`](./contracts/ethereum-1/0x2b08137beabd2454ad3631deb754f97c5c93eb78/); ethereum `0x3f55ee...edb7f9`; ethereum `0x5c6aeb...d45126`; ethereum `0xba1462...73e01a`; ethereum `0xe4433d...bffc04` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | arbitrum | 15 deployments: ethereum `0x8f84c9...3a0f8f`; ethereum `0xf6c131...6b32d7`; base `0x99ff2b...a9da64`; base `0xcb52d8...09d136`; base `0xfaa818...2a652d`; plasma `0x5b2cd1...ffd68c`; plasma `0x5dd8e6...7f905b`; plasma `0xf07c1d...49a1d1`; arbitrum [`0x1975b2...9b20bb`](./contracts/arbitrum-42161/0x1975b2d4c525587a50d431b68634067de29b20bb/); arbitrum `0x2b8c97...414127`; arbitrum `0x40454f...aa2f74`; arbitrum `0x5a4a23...565331`; arbitrum `0xc3350f...a9fb69`; arbitrum `0xd70f87...d6c74b`; arbitrum `0xdedb00...d2fb40` | ⚠️ Unaudited |
| EthPool | core_logic | ethereum | 4 deployments: ethereum [`0x77f18a...b864ee`](./contracts/ethereum-1/0x77f18a6968a38f9aef1af676420c4799e8b864ee/); ethereum `0xb104a7...8246d5`; ethereum `0xca77a2...d5da31`; ethereum `0xd3d13a...2a2f36` | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | [`0xa693b1...ee87a5`](./contracts/ethereum-1/0xa693b19d2931d498c5b318df961919bb4aee87a5/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | 28 deployments: ethereum [`0x0139b3...e6f15a`](./contracts/ethereum-1/0x0139b34012a6639e896b883901b7dc1bb6e6f15a/); ethereum `0x03dccc...2d360d`; ethereum `0x04bda0...0e860d`; ethereum `0x061aee...b2a7e7`; ethereum `0x0ce34f...fdfb75`; ethereum `0x15a629...b79415`; ethereum `0x1b429e...192fd3`; ethereum `0x2d3ead...022029`; ethereum `0x2e9f9b...bd4fed`; ethereum `0x2fc6e9...ad22e1`; ethereum `0x41f6a9...b00263`; ethereum `0x482258...e6b03d`; ethereum `0x721150...ad4b4c`; ethereum `0x7a75ec...ac63fd`; ethereum `0x808d3e...ed5311`; ethereum `0x8858a7...61faa3`; ethereum `0x8d2254...d97832`; ethereum `0x94671a...20efb2`; ethereum `0x9eee9e...9797a3`; ethereum `0xadf15e...81e655`; ethereum `0xbbfc7d...c7ba8a`; ethereum `0xca5e07...d58d4e`; ethereum `0xd3b5d9...f9aa84`; ethereum `0xd899ac...5fc03e`; ethereum `0xdc0b02...9709b0`; ethereum `0xe7a7d1...31532d`; ethereum `0xeff721...ffc8de`; ethereum `0xf49764...629777` | ⚠️ Unaudited |
| TracerToken | token | ethereum | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| DepositToken | token | ethereum | 2 deployments: ethereum [`0x117a0b...23560c`](./contracts/ethereum-1/0x117a0bab81f25e60900787d98061ccfae023560c/); ethereum `0xcb6d87...e7ce74` | ⚠️ Unaudited |
| APWToken | token | ethereum | 2 deployments: ethereum [`0x134c05...c8157f`](./contracts/ethereum-1/0x134c0591183e9c8a39250a9a04e6f8585bc8157f/); ethereum `0x4104b1...7660c8` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | 4 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec`; ethereum `0xdc65f3...771c88` | ⚠️ Unaudited |
| ERC20DestinationVault | core_logic | ethereum | 5 deployments: ethereum [`0x116b3e...bf8f3e`](./contracts/ethereum-1/0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e/); ethereum `0x8b025d...1ad095`; ethereum `0xaeb549...fb97c1`; ethereum `0xb6b90d...d1362e`; base `0xbc6128...c6c35c` | ⚠️ Unaudited |
| MYCToken | token | ethereum | [`0x4b1300...eaf5ba`](./contracts/ethereum-1/0x4b13006980acb09645131b91d259eaa111eaf5ba/) | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | ethereum | 8 deployments: ethereum [`0x0091fe...6758cb`](./contracts/ethereum-1/0x0091fec1b75013d1b83f4bb82f0bec4e256758cb/); ethereum `0x23032a...4e9d8c`; ethereum `0x2fa4c8...d9b171`; ethereum `0x737f2e...7f004b`; ethereum `0x88d0e0...f90ab0`; ethereum `0x9828b1...fb37f2`; ethereum `0xafd498...706a90`; ethereum `0xf4cedd...948fa2` | ⚠️ Unaudited |
| ERC20 | token | ethereum | 2 deployments: ethereum [`0xb9200c...f2070d`](./contracts/ethereum-1/0xb9200c2aa4053102b984806c63d67e21b8f2070d/); ethereum `0xf93842...72e91e` | ⚠️ Unaudited |
| Pool_USDC | core_logic | ethereum | 2 deployments: ethereum [`0x1864ca...da1c0d`](./contracts/ethereum-1/0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d/); ethereum `0x3c2982...212659` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | base | 21 deployments: ethereum `0x067cb9...8364ad`; ethereum `0x20d762...5885b9`; ethereum `0x2795b6...3ae6b6`; ethereum `0x76187c...c18d9d`; ethereum `0x7a6119...05e819`; ethereum `0x9491a1...6f3690`; ethereum `0x952d7a...6d2f5d`; ethereum `0x9cf7e7...80433d`; ethereum `0xace0eb...b36704`; ethereum `0xcc97cc...c97919`; ethereum `0xd02b50...15b6f9`; ethereum `0xfbfad8...8349dd`; base [`0x044e16...81b776`](./contracts/base-8453/0x044e1609efb154150436cec9d03e95847f81b776/); base `0x5ae89e...da9e20`; base `0xfbe1ce...b992c1`; base `0xfff192...a3a304`; plasma `0x673f9b...759fbb`; arbitrum `0x371b3c...b29488`; arbitrum `0x3dbbb7...56fce9`; linea `0x796115...e6a9dd`; linea `0xe085d4...d62a03` | ⚠️ Unaudited |
| Pool_USDT | core_logic | ethereum | [`0x7d3fcd...d54968`](./contracts/ethereum-1/0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968/) | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | arbitrum | 10 deployments: plasma `0x5dffae...602ee7`; plasma `0x714ffc...8ab8e9`; plasma `0xde4d6c...f84855`; plasma `0xfc962a...2e5069`; arbitrum [`0x00e52a...9c5f4a`](./contracts/arbitrum-42161/0x00e52ae3cfc140fdf3dff8932500d4ad919c5f4a/); arbitrum `0xa087e1...e7d7bb`; arbitrum `0xebcff8...864991`; linea `0x68e93d...de15f7`; linea `0xbd353d...45e7e2`; linea `0xd96d54...57f3fd` | ⚠️ Unaudited |
| AccessController | governance | arbitrum | 6 deployments: ethereum `0x37767c...742df6`; base `0x20dfa8...1f27e8`; arbitrum [`0x09006e...ca9312`](./contracts/arbitrum-42161/0x09006e65787c8389b230758f23f66b2ca3ca9312/); arbitrum `0x7ec410...4fd6b2`; arbitrum `0xdd5b72...2e00ca`; linea `0xf4425c...b76a04` | ⚠️ Unaudited |
| AccessHub | unknown | linea | 27 deployments: linea [`0x00cc29...423b67`](./contracts/linea-59144/0x00cc296010664ff909aa90795a919046d1423b67/); linea `0x09aaa5...fbea2a`; linea `0x09d128...fc72a3`; linea `0x0cc5a7...2d666c`; linea `0x0d8ff3...e66422`; linea `0x3fd55d...d6d071`; linea `0x44f551...22f508`; linea `0x51a269...e80006`; linea `0x55cab4...4b40b1`; linea `0x582f3f...031c7a`; linea `0x5aae85...da036b`; linea `0x5e2f4d...e4b4e7`; linea `0x683035...8ed5f3`; linea `0x6a0673...1c99c1`; linea `0x7026f9...8dd004`; linea `0x7ac793...8c9026`; linea `0x8af8a0...71b734`; linea `0x8e394f...5b49e1`; linea `0x93948c...4351ed`; linea `0x967a7a...37854c`; linea `0x9ce2fb...709346`; linea `0xb61396...31a7b6`; linea `0xb66d0c...9fd40b`; linea `0xbb100b...008e31`; linea `0xd434fe...06805e`; linea `0xe345ad...ddc6bc`; linea `0xe6d0d3...cb5298` | ⚠️ Unaudited |
| AccToke | unknown | arbitrum | 7 deployments: ethereum `0x65e1f2...03506e`; ethereum `0xa374a6...7c0972`; base `0x2af04a...eed518`; base `0x8a0e61...e6e718`; base `0x999545...8bed8f`; arbitrum [`0x24127a...127e00`](./contracts/arbitrum-42161/0x24127aad4fb9e7d52803fa6860b9964537127e00/); arbitrum `0x7e5828...2964e4` | ⚠️ Unaudited |
| AddressRegistry | registry | ethereum | 2 deployments: ethereum [`0x2445e2...91e63c`](./contracts/ethereum-1/0x2445e2f04d6bd2995003c1cb115292942d91e63c/); ethereum `0x28cb0d...f44d45` | ⚠️ Unaudited |
| Admin | unknown | ethereum | [`0x9bbbd9...0409d9`](./contracts/ethereum-1/0x9bbbd96048bbbe2bc011a3efe42e7c93700409d9/) | ⚠️ Unaudited |
| AerodromeAdapter | adapter | base | [`0xd35d77...38ea9a`](./contracts/base-8453/0xd35d77f7e0444d8669962724b02fb163e938ea9a/) | ⚠️ Unaudited |
| AerodromeDestinationVault | core_logic | base | 6 deployments: base [`0x20bace...8a8107`](./contracts/base-8453/0x20bace8353c3512ebf13b86d9c99b6da278a8107/); base `0x58c223...a1ed3e`; base `0x945a4f...5835ad`; base `0xa94031...39845a`; base `0xd18db4...e0cdad`; base `0xdbd149...02c627` | ⚠️ Unaudited |
| AerodromeOracle | operational_periphery | base | [`0x099a7e...8900f4`](./contracts/base-8453/0x099a7e3ff39024c3d1e87568b4eda59a938900f4/) | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | base | 5 deployments: base [`0xb02cb1...57184e`](./contracts/base-8453/0xb02cb15597e214b9a843ccff9eefe628c057184e/); base `0xc7b711...d2bd10`; base `0xcef50b...253985`; base `0xd9b54d...8042e3`; base `0xe40523...a7c240` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | base | 5 deployments: base [`0x9813e3...89f3e3`](./contracts/base-8453/0x9813e3091278f41cd6b2686ff83255f97889f3e3/); base `0xc8756b...e6ef01`; base `0xd675d8...c2e76b`; base `0xe923f8...425318`; base `0xeaa026...1ac028` | ⚠️ Unaudited |
| AerodromeSwap | unknown | base | 2 deployments: base [`0x2bb11c...ca44a5`](./contracts/base-8453/0x2bb11c6407bb9dcbb5b776f789371de5aaca44a5/); base `0x7785f0...13d003` | ⚠️ Unaudited |
| AGLDLevSwapper | adapter | ethereum | 3 deployments: ethereum [`0x244baf...92285b`](./contracts/ethereum-1/0x244bafbae9c47c795d3ab76ee77c5ba62e92285b/); ethereum `0x983ca3...962037`; ethereum `0xd404be...4cedec` | ⚠️ Unaudited |
| AGLDSwapper | adapter | ethereum | 2 deployments: ethereum [`0x184a07...8733cf`](./contracts/ethereum-1/0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf/); ethereum `0x2cb8d5...217f6f` | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| aOHMMigration | operational_periphery | ethereum | 4 deployments: ethereum [`0x906d7a...ad8fd2`](./contracts/ethereum-1/0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2/); ethereum `0xb1b462...d6ce87`; ethereum `0xc7f56e...97db3d`; ethereum `0xf31b98...7dd23c` | ⚠️ Unaudited |
| APWRewarder | unknown | ethereum | [`0xd0db15...6fc336`](./contracts/ethereum-1/0xd0db1516dc4aa963fd8aa4de41e49502d06fc336/) | ⚠️ Unaudited |
| ArraysConverter | unknown | plasma | 3 deployments: plasma [`0x097080...c5d0c2`](./contracts/plasma-9745/0x09708019cf2527ad3263885ff712fc79cec5d0c2/); arbitrum `0xb6ab7a...e5940f`; linea `0x341421...5480a8` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | arbitrum | 6 deployments: ethereum `0x73526d...9c0b75`; base `0x3750d3...577472`; arbitrum [`0x29d826...1c9f2b`](./contracts/arbitrum-42161/0x29d826a1bc5e87773571e5444da31f82131c9f2b/); arbitrum `0xb45bd0...bfabba`; arbitrum `0xea7ea3...34f538`; linea `0x46e9c8...7468ca` | ⚠️ Unaudited |
| AuraCalculator | unknown | ethereum | 13 deployments: ethereum [`0x041679...74ea07`](./contracts/ethereum-1/0x041679acb4088288178589c059543b56ce74ea07/); ethereum `0x0f5d9c...65acad`; ethereum `0x4e4eb5...c48348`; ethereum `0x4ead64...eb43ea`; ethereum `0x594baa...12898a`; ethereum `0x596866...b2cc43`; ethereum `0x5ac9dc...9d7f40`; ethereum `0x662e3f...9b018b`; ethereum `0xa4349b...08f3a0`; ethereum `0xacdc4a...05829d`; ethereum `0xb57e41...fb6621`; ethereum `0xd09bde...e59c71`; ethereum `0xddfd0a...9d84b2` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | base | 4 deployments: base [`0x7c4b58...13c539`](./contracts/base-8453/0x7c4b58eaa93005162bc80285af2003517213c539/); base `0x925492...4b62f3`; base `0xb9e981...02b6e8`; base `0xc5a917...7654d4` | ⚠️ Unaudited |
| AuraMintRewards | unknown | ethereum | [`0xe35a6f...77c20d`](./contracts/ethereum-1/0xe35a6f5de14ed7dfb90fbfc75dc96779e277c20d/) | ⚠️ Unaudited |
| AuraRewards | unknown | linea | 3 deployments: plasma `0x87b740...5b7b7a`; arbitrum `0xa9219c...440e8b`; linea [`0x786dce...9aeba7`](./contracts/linea-59144/0x786dce6c2490e715583d3840ee854ffd769aeba7/) | ⚠️ Unaudited |
| AuraStaking | unknown | arbitrum | 4 deployments: plasma `0x3a0f16...1df466`; arbitrum [`0x17dd20...440344`](./contracts/arbitrum-42161/0x17dd206f9eea4bf2553152a9a197e8c175440344/); arbitrum `0x887060...ac0408`; linea `0x727084...433188` | ⚠️ Unaudited |
| aUSTOracle | operational_periphery | ethereum | [`0x24a760...d3116c`](./contracts/ethereum-1/0x24a76073ab9131b25693f3b75dd1ce996fd3116c/) | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | linea | 8 deployments: linea [`0x2e5c9e...7c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/); linea `0x4bc655...6cb1f3`; linea `0x4dd0c2...ea2a4c`; linea `0x5ad9ec...b0e48c`; linea `0xb0b55d...af5939`; linea `0xbf0743...780d36`; linea `0xd7cb73...81ac2c`; linea `0xfd29fa...cf80e7` | ⚠️ Unaudited |
| AutopilotRouter | adapter | arbitrum | 13 deployments: ethereum `0x37dd40...e8ae21`; ethereum `0x39ff6d...0835a2`; ethereum `0xc23a37...ea893e`; ethereum `0xc45e93...084c30`; base `0x4d2b87...40f8df`; base `0x71761b...85f816`; base `0x93e7c5...5adcbd`; base `0xa18b89...606931`; plasma `0xc84883...91f27a`; arbitrum [`0x27a9c1...7621ad`](./contracts/arbitrum-42161/0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad/); arbitrum `0x643186...036487`; arbitrum `0xf86761...70b140`; linea `0xf61e75...990544` | ⚠️ Unaudited |
| Autopool4626 | core_logic | ethereum | 5 deployments: ethereum [`0x0fe851...a81159`](./contracts/ethereum-1/0x0fe85151d909f5571ac698ae756c5ff924a81159/); base `0x6d9be4...a2213f`; plasma `0x4480bc...a9109b`; arbitrum `0xc80e12...159416`; linea `0x299c64...642108` | ⚠️ Unaudited |
| AutopoolDebt | core_logic | plasma | 5 deployments: ethereum `0xf792a3...715b8b`; base `0xfaac11...57c194`; plasma [`0x153993...c780a9`](./contracts/plasma-9745/0x153993b20c5e5be956cec763ed936a44d3c780a9/); arbitrum `0x752004...c638ce`; linea `0xcd1e36...51b6c7` | ⚠️ Unaudited |
| AutopoolDestinations | core_logic | plasma | 5 deployments: ethereum `0x4d08d4...ae53f1`; base `0xd931d7...acdf09`; plasma [`0x12d0df...49651a`](./contracts/plasma-9745/0x12d0dfa581162f43877e2e26b46da15e3049651a/); arbitrum `0xbf35cc...b9c4ef`; linea `0x48dfb2...e8ba01` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x1ac1e0...8e9275`](./contracts/ethereum-1/0x1ac1e03ac3b98f1c4361fb1a90b6824eff8e9275/); ethereum `0x63139f...1428c8`; ethereum `0xea7daf...ae2bd9`; base `0xb111c5...c2d9b0` | ⚠️ Unaudited |
| AutopoolFactory | registry | base | 2 deployments: ethereum `0x7fed74...d2ed1f`; base [`0x78a7c4...898451`](./contracts/base-8453/0x78a7c45e3cc7b9567b4803aeaf9b33bc8c898451/) | ⚠️ Unaudited |
| AutopoolFees | core_logic | base | 5 deployments: ethereum `0x06958d...32cfc2`; base [`0x05e14b...372c45`](./contracts/base-8453/0x05e14bc4e4eb7db75354256ae239b8567f372c45/); plasma `0x852212...dbafff`; arbitrum `0x8350c5...09b11e`; linea `0x4edb7c...5e2c64` | ⚠️ Unaudited |
| AutopoolRegistry | registry | base | 6 deployments: ethereum `0x7e5828...2964e4`; base [`0x4fe791...b1fece`](./contracts/base-8453/0x4fe7916a10b15dadefc59d06ac81757112b1fece/); arbitrum `0xc3b8f5...c9d268`; arbitrum `0xef4e7d...2ccc48`; arbitrum `0xfbf87c...e352ca`; linea `0xf25f61...d5f42c` | ⚠️ Unaudited |
| AutopoolStrategyHooks | core_logic | base | 5 deployments: ethereum `0x2b0b9b...be77fc`; base [`0x1d39bf...89f876`](./contracts/base-8453/0x1d39bfee43a17bab3d35ce3503194309fe89f876/); plasma `0x337dd2...4dbccd`; arbitrum `0x33ff76...04e1b1`; linea `0x70b429...d63fc0` | ⚠️ Unaudited |
| AutopoolToken | core_logic | plasma | 5 deployments: ethereum `0x3161b8...79c9e4`; base `0xff0d0b...b1739f`; plasma [`0x2afc63...4f4da5`](./contracts/plasma-9745/0x2afc63a4339a0ad89a00f46258d239b3a64f4da5/); arbitrum `0x73c064...f10104`; linea `0x3f37bc...6ba37b` | ⚠️ Unaudited |
| BackingRootOracle | operational_periphery | plasma | 4 deployments: ethereum `0xb12206...87cfbf`; base `0x391fa5...f6b439`; plasma [`0x0fda04...af0532`](./contracts/plasma-9745/0x0fda0487d92b7a187d4795e2ecaeca6bbaaf0532/); arbitrum `0x3aac1c...e152ae` | ⚠️ Unaudited |
| BalancerAdapter | adapter | plasma | 2 deployments: plasma [`0x35cbe9...331866`](./contracts/plasma-9745/0x35cbe9f5cad6ed153fd269eba82fc6257e331866/); arbitrum `0xb0c974...57702f` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | base | 13 deployments: ethereum `0x2f2cc1...6dac3d`; ethereum `0x40219b...4791d9`; ethereum `0x5a4b54...8a4f4d`; ethereum `0x603390...972cca`; ethereum `0x867991...70717e`; ethereum `0xc4eb86...eda30b`; ethereum `0xc9b5d8...dd751c`; ethereum `0xdfe3fa...e86f0c`; ethereum `0xf9779a...25baac`; ethereum `0xfda499...33e94b`; base [`0x2a7a16...92b1ed`](./contracts/base-8453/0x2a7a163168682f58a5294089b7eb87a65d92b1ed/); base `0xa6efb9...48dd5d`; base `0xb3723e...8500e0` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | ethereum | 13 deployments: ethereum [`0x0e2b75...e39be4`](./contracts/ethereum-1/0x0e2b7536ecb785df0fa43c6622dd6b670ce39be4/); ethereum `0x2df5d9...ab0981`; ethereum `0x4c4d65...3a1970`; ethereum `0x4e7986...bd70e0`; ethereum `0x63b0ac...832ae9`; ethereum `0xa639d9...95193c`; ethereum `0xab0b54...27f9a5`; ethereum `0xadf54e...2dd5a6`; ethereum `0xb5652e...ea6866`; ethereum `0xf4b143...96e23c`; base `0x4fc45f...0002a9`; base `0x800f53...4820b3`; base `0xbd0fe9...f29f6a` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | ethereum | 4 deployments: ethereum [`0x4a3688...730e91`](./contracts/ethereum-1/0x4a3688fa864d42fabaea9e364266e81b50730e91/); ethereum `0x943673...13e9d2`; ethereum `0xa9b8e4...5702ab`; base `0x9d95e1...e39e33` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | ethereum | 4 deployments: ethereum [`0x92294a...61bad7`](./contracts/ethereum-1/0x92294a62d6d9f0fbe30ba3b543edb1806561bad7/); ethereum `0xa1b929...a29d05`; base `0xbd137c...84f59c`; base `0xee5e75...10f3f7` | ⚠️ Unaudited |
| BalancerGyroscopeEthOracle | operational_periphery | ethereum | [`0x4c70ef...cc1c58`](./contracts/ethereum-1/0x4c70ef1deffc14e8c0a3d5135ec8ebafefcc1c58/) | ⚠️ Unaudited |
| BalancerLPComposableStableEthOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x7c19e6...665a8b`](./contracts/ethereum-1/0x7c19e64904aba791dd653ecf7f355d65d7665a8b/); base `0x859dda...29399b` | ⚠️ Unaudited |
| BalancerLPMetaStableEthOracle | operational_periphery | ethereum | [`0x4d37d7...2a34d9`](./contracts/ethereum-1/0x4d37d799a44515c25e43ca6ec9e4ff7a0a2a34d9/) | ⚠️ Unaudited |
| BalancerMetaStablePoolCalculator | core_logic | ethereum | 2 deployments: ethereum [`0x084e65...f25a0c`](./contracts/ethereum-1/0x084e65a576949a431f7e8e4c9154d1ddd7f25a0c/); ethereum `0x66664b...9a59a4` | ⚠️ Unaudited |
| BalancerV2ComposableStableMathOracle | operational_periphery | arbitrum | [`0xddc9e4...7ab47c`](./contracts/arbitrum-42161/0xddc9e47b60c89bf39d14f3739e63763ebd7ab47c/) | ⚠️ Unaudited |
| BalancerV2Swap | unknown | base | 4 deployments: ethereum `0x620152...5ea3f2`; ethereum `0x780d5b...4ba5f1`; base [`0x4efcc0...73918b`](./contracts/base-8453/0x4efcc03e33470cfef7b2666eff67667f4173918b/); arbitrum `0x6def5e...13f311` | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | arbitrum | [`0x19fa89...c1a620`](./contracts/arbitrum-42161/0x19fa89cdadfe49ac70531c9ad714a27bc2c1a620/) | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | arbitrum | 2 deployments: arbitrum [`0xc77161...d536c0`](./contracts/arbitrum-42161/0xc77161af2701f2fb880d4a7144ddc5f4e7d536c0/); arbitrum `0xce1c82...aec809` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | plasma | 2 deployments: plasma [`0x6de328...729033`](./contracts/plasma-9745/0x6de328ea43d143e3993e8dbc8dd2499ab6729033/); arbitrum `0xbd6beb...4c741b` | ⚠️ Unaudited |
| BalancerV3DestinationVault | core_logic | plasma | [`0xb42c35...0aae84`](./contracts/plasma-9745/0xb42c35deba9491ad971dd8f8b04bde449f0aae84/) | ⚠️ Unaudited |
| BalancerV3MerklDestinationVault | core_logic | plasma | 4 deployments: plasma [`0x28c3b8...354ad3`](./contracts/plasma-9745/0x28c3b82d6d540fa57c9468a231b458cd6d354ad3/); plasma `0x28ed66...26badb`; plasma `0xc253ef...e8ffdc`; plasma `0xd94ec2...2649f9` | ⚠️ Unaudited |
| BalancerV3SingleSwap | unknown | plasma | [`0xf59adc...919d3f`](./contracts/plasma-9745/0xf59adc3592653b91cae14a834ede8a0387919d3f/) | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | arbitrum | 2 deployments: plasma `0xff9059...6ca748`; arbitrum [`0x990957...2e54d2`](./contracts/arbitrum-42161/0x9909571399f38fc9eea4eac30cf19ac4ce2e54d2/) | ⚠️ Unaudited |
| BankSwapper | adapter | arbitrum | 4 deployments: base `0x822b13...4d9077`; base `0xa196b8...f6dfad`; plasma `0xce618f...afbc90`; arbitrum [`0x1cde65...4647be`](./contracts/arbitrum-42161/0x1cde65265061d84753086fe39084694f934647be/) | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | linea | 64 deployments: ethereum `0x0ab823...6bc18b`; ethereum `0x1d549b...3b4a7f`; ethereum `0x216400...4ab9c5`; ethereum `0x2eab67...8bd678`; ethereum `0x38a3e8...a3b303`; ethereum `0x5a3512...696216`; ethereum `0x865285...fae79b`; ethereum `0x8821a5...7cf6b8`; ethereum `0x8bf1a0...593ef2`; ethereum `0x8ea340...16b859`; ethereum `0x957243...8f5192`; ethereum `0x9e2919...47a94a`; ethereum `0xa59477...2d6aba`; ethereum `0xbd9e1c...dd6db9`; ethereum `0xbf5881...470ff5`; ethereum `0xc15bd0...b2cbae`; ethereum `0xcaab99...7c08e1`; ethereum `0xd24d8a...f565e9`; base `0x10fad2...ac5c6d`; base `0x115f7d...15d6d6`; base `0x3f8113...2761c5`; base `0x5e753e...1f350f`; base `0x82e986...bb67f0`; base `0x891dcd...45c05c`; base `0xdd6b15...93cb76`; base `0xe9498c...8dfb69`; plasma `0x09c6ac...3e527f`; plasma `0x23eed2...8c0731`; plasma `0x2fc77f...6cd469`; plasma `0x835bee...52f40e`; arbitrum `0x0f23b8...05efe3`; arbitrum `0x18f9f3...c00df8`; arbitrum `0x2d534d...56b01c`; arbitrum `0x4423cb...450ceb`; arbitrum `0x44ec47...1fcb1d`; arbitrum `0x45bce6...3949fb`; arbitrum `0x4660a1...34f58d`; arbitrum `0x4ca6e6...4a3b4b`; arbitrum `0x621091...45deba`; arbitrum `0x7d6509...eb5482`; arbitrum `0x835f03...991299`; arbitrum `0x9f42f5...4f4ed5`; arbitrum `0xa2217d...69b478`; arbitrum `0xadb96b...49f858`; arbitrum `0xb8167e...10de65`; arbitrum `0xbbb989...41c3dc`; arbitrum `0xc54e00...4717ad`; arbitrum `0xcaf5b3...41bcad`; linea [`0x0288ef...246b19`](./contracts/linea-59144/0x0288ef3f2b32fbd03df27b27ca615080b2246b19/); linea `0x1b1b70...7b3a0e`; linea `0x1b9725...b9b3c9`; linea `0x25be90...498fd1`; linea `0x27ff73...ee0a9e`; linea `0x2844a0...6a26d8`; linea `0x422071...73cd1a`; linea `0x603b27...6251e6`; linea `0x843674...1032ec`; linea `0x997aa8...ac5d8b`; linea `0xc6f521...38dd8c`; linea `0xce131a...5f0ff2`; linea `0xd00c62...1424bb`; linea `0xdeabed...e0fb4a`; linea `0xe16d83...6ae856`; linea `0xf8c4eb...7913e6` | ⚠️ Unaudited |
| BebopSwapper | adapter | ethereum | 5 deployments: ethereum [`0x117c65...a210fd`](./contracts/ethereum-1/0x117c6504382434076ccf7121d747413ac2a210fd/); ethereum `0x39dd8e...a57329`; ethereum `0x69543c...96e142`; ethereum `0xcd478d...a75ff3`; base `0x3f18d0...8c5785` | ⚠️ Unaudited |
| BentoBoxOwner | unknown | ethereum | [`0xb9b55d...878211`](./contracts/ethereum-1/0xb9b55db94eb5581d7716235f5f55156f73878211/) | ⚠️ Unaudited |
| BlockchainInfo | periphery | linea | 4 deployments: base `0xa628e8...740e1e`; plasma `0x88ccc2...48d171`; arbitrum `0x86abaa...3308b3`; linea [`0x218975...7a76f2`](./contracts/linea-59144/0x2189751274d792b6693e70468fb43ec4af7a76f2/) | ⚠️ Unaudited |
| BlockMiner | unknown | ethereum | [`0xc0dc49...4fcaeb`](./contracts/ethereum-1/0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb/) | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | ethereum | [`0x90503d...624736`](./contracts/ethereum-1/0x90503d86e120b3b309cebf00c2ca013ab3624736/) | ⚠️ Unaudited |
| BridgedLSTCalculator | operational_periphery | base | 6 deployments: base [`0x4cb4b1...a64f99`](./contracts/base-8453/0x4cb4b14128c868f35afe9cac7c23cf821aa64f99/); base `0x58897e...17943e`; base `0xa80b38...892934`; base `0xb081af...1cbdb0`; base `0xb51829...1fa9ea`; base `0xbaf2ee...04e1a7` | ⚠️ Unaudited |
| BridgedStats | operational_periphery | base | 2 deployments: base [`0x01dd80...0d9231`](./contracts/base-8453/0x01dd808d87cc18639d9992c27f222a499d0d9231/); base `0x054322...02b2c2` | ⚠️ Unaudited |
| BundleUtils | unknown | ethereum | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | ⚠️ Unaudited |
| Bytes32 | unknown | plasma | 3 deployments: plasma [`0x12d5aa...48b970`](./contracts/plasma-9745/0x12d5aad28da62a2d7ec2255af6202a458b48b970/); arbitrum `0x5f317e...8f520e`; linea `0xe8905b...6f0459` | ⚠️ Unaudited |
| CauldronLib | unknown | ethereum | [`0x480a0a...51eb4d`](./contracts/ethereum-1/0x480a0af04186080bac985e595d66ea3bf351eb4d/) | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | ethereum | 2 deployments: ethereum [`0x469a99...c0b3d3`](./contracts/ethereum-1/0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3/); ethereum `0xc9facf...591918` | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | ethereum | 2 deployments: ethereum [`0x4a9cb5...c7c7d2`](./contracts/ethereum-1/0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2/); ethereum `0x4c56db...c07e17` | ⚠️ Unaudited |
| CauldronV2 | unknown | ethereum | [`0x476b1e...a85c1f`](./contracts/ethereum-1/0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f/) | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | ethereum | [`0x1df188...dd9e51`](./contracts/ethereum-1/0x1df188958a8674b5177f77667b8d173c3cdd9e51/) | ⚠️ Unaudited |
| CauldronV3 | unknown | ethereum | [`0xe965db...d6010b`](./contracts/ethereum-1/0xe965db54fe154765460c5289a2b383d34fd6010b/) | ⚠️ Unaudited |
| CbethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x24d783...069abb`](./contracts/ethereum-1/0x24d783e5ed8e4a507583e0c79abf489051069abb/); ethereum `0xab78a5...d01e08` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | 4 deployments: ethereum [`0xa37811...1541dc`](./contracts/ethereum-1/0xa37811563a85634cb7d43db8f427d40b2f1541dc/); ethereum `0xb21ebf...129ae8`; ethereum `0xdb55e5...25d4ba`; ethereum `0xeac275...f6d8d5` | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | [`0x714e6c...92f09f`](./contracts/ethereum-1/0x714e6c8361e13c4c7db5373b85de3835ec92f09f/) | ⚠️ Unaudited |
| ChainlinkIncentivePricesUpkeepV3 | operational_periphery | base | [`0x08b061...713e4d`](./contracts/base-8453/0x08b0617747ad7a839396a909876104e392713e4d/) | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | plasma | 5 deployments: ethereum `0x701f11...1b6c3f`; base `0xc7939c...11641c`; plasma [`0x0d0314...39c689`](./contracts/plasma-9745/0x0d0314555d0c6bf2194d7efee62476724539c689/); arbitrum `0xbbcc2d...628433`; linea `0x969954...189950` | ⚠️ Unaudited |
| ChainlinkStatsUpkeepV4 | unknown | base | [`0x30f285...27c637`](./contracts/base-8453/0x30f285c7cb4304e82302ce06f24e285bd527c637/) | ⚠️ Unaudited |
| ComboOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x4462df...34490c`](./contracts/ethereum-1/0x4462df433d01f32ac0c4adb0a76dcf255634490c/); ethereum `0x878f20...43b6d4`; ethereum `0xbdcb57...274caf` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | operational_periphery | ethereum | [`0x734fd1...ca4a73`](./contracts/ethereum-1/0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73/) | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | operational_periphery | ethereum | 4 deployments: ethereum [`0x184fe0...ab315b`](./contracts/ethereum-1/0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b/); ethereum `0x1cbe07...ec2dff`; ethereum `0xa038ef...d1bc3d`; ethereum `0xd13c9a...099862` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| ConvexAMO_V1_Recoverer | unknown | ethereum | [`0x49ee75...66bd71`](./contracts/ethereum-1/0x49ee75278820f409ecd67063d8d717b38d66bd71/) | ⚠️ Unaudited |
| ConvexCalculator | unknown | ethereum | 8 deployments: ethereum [`0x355f39...13de91`](./contracts/ethereum-1/0x355f39596a4bc907a84dbf8f627c7ca2ba13de91/); ethereum `0x4bbfa1...332276`; ethereum `0x74c3b0...269ab7`; ethereum `0x83b694...301d7a`; ethereum `0xbfdf3a...163841`; ethereum `0xd1e668...c98709`; ethereum `0xf25b36...45eac3`; ethereum `0xf7370f...4ba9d7` | ⚠️ Unaudited |
| CPITrackerOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x04baf3...ad8808`](./contracts/ethereum-1/0x04baf30115d7bac714709910dd286718cfad8808/); ethereum `0x5fca68...fd9adb`; ethereum `0x7086f2...f4f452`; ethereum `0x90e7ef...753490` | ⚠️ Unaudited |
| CRVDisperse | unknown | ethereum | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | ⚠️ Unaudited |
| CrvOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x69f795...50af50`](./contracts/ethereum-1/0x69f79536d304a556603ff55d4dac017ddf50af50/); ethereum `0xb7cb99...1e6375`; ethereum `0xc423ae...42d1dd` | ⚠️ Unaudited |
| CurveAdapter | adapter | arbitrum | 2 deployments: plasma `0xf70c47...e86e3a`; arbitrum [`0xcb9597...30af70`](./contracts/arbitrum-42161/0xcb9597bb803d7baa4b6a14c2afd6d4dc9230af70/) | ⚠️ Unaudited |
| CurveAMO_V2 | unknown | ethereum | [`0x7e983e...de8769`](./contracts/ethereum-1/0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769/) | ⚠️ Unaudited |
| CurveAMO_V3 | unknown | ethereum | [`0x72170c...105da2`](./contracts/ethereum-1/0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2/) | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | ethereum | 2 deployments: ethereum [`0x1ea622...f08573`](./contracts/ethereum-1/0x1ea622fa030e4a78f4cc2f305dd3c08da3f08573/); ethereum `0x356c79...6c3e77` | ⚠️ Unaudited |
| CurveDestinationVault | core_logic | plasma | [`0xa265ce...ed3e9f`](./contracts/plasma-9745/0xa265cec7a8ec92b9b4124023324534faa9ed3e9f/) | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x04f7ce...94f051`](./contracts/arbitrum-42161/0x04f7cee4169276e9245d09b2cf074b193f94f051/); arbitrum `0x9b1985...5c4410`; arbitrum `0xdd78ea...07b0fd` | ⚠️ Unaudited |
| CurveResolverMainnet | unknown | ethereum | [`0xc7c77b...53ba38`](./contracts/ethereum-1/0xc7c77b3a2c2641c6ee6c52bbd72ecfc86b53ba38/) | ⚠️ Unaudited |
| CurveResolverXchain | unknown | linea | 2 deployments: arbitrum `0xe0ebd6...05a5f8`; linea [`0xbb1dfb...852e5e`](./contracts/linea-59144/0xbb1dfbbf3cfa0ae92119db2d35a53b59fa852e5e/) | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | ethereum | 7 deployments: ethereum [`0x145e12...c41879`](./contracts/ethereum-1/0x145e12608c133c2b9062d10e33305d153ac41879/); ethereum `0x542a6b...99f0fa`; ethereum `0x94b58e...6c7a69`; ethereum `0xb8e7a5...9b8c2a`; ethereum `0xd48a39...fa0e4d`; ethereum `0xd545ee...201004`; ethereum `0xd6884a...ee6154` | ⚠️ Unaudited |
| CurveV1PoolRebasingLockedStatsCalculator | core_logic | ethereum | 2 deployments: ethereum [`0x549398...56e3c8`](./contracts/ethereum-1/0x54939860e3d185cd983421ace105ace79156e3c8/); ethereum `0xcb29d4...4bc3ae` | ⚠️ Unaudited |
| CurveV1PoolRebasingStatsCalculator | core_logic | ethereum | [`0xf5c49c...825ab4`](./contracts/ethereum-1/0xf5c49c69ec7735b7bab85c591ca93c8124825ab4/) | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | arbitrum | 4 deployments: ethereum `0xaed535...b8a92b`; plasma `0xb757c8...431d24`; arbitrum [`0x47b835...b49b5f`](./contracts/arbitrum-42161/0x47b835dcffcbfcc17a0ab2e5fb94cedb67b49b5f/); linea `0xbb1feb...8d2635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | arbitrum | 3 deployments: ethereum `0x620ffc...e89bc0`; plasma `0xc92797...82a635`; arbitrum [`0x1bdc53...b8cf69`](./contracts/arbitrum-42161/0x1bdc539dedd630d9bc66fd88a53305b07db8cf69/) | ⚠️ Unaudited |
| CurveV2CryptoEthOracle | operational_periphery | ethereum | [`0xd460a3...9ad160`](./contracts/ethereum-1/0xd460a37880c35aacf4f01ea6748f1195899ad160/) | ⚠️ Unaudited |
| CurveV2PoolNoRebasingStatsCalculator | core_logic | ethereum | [`0xd8ef13...8125e4`](./contracts/ethereum-1/0xd8ef136051014e89e9ea6ae32c3cd224778125e4/) | ⚠️ Unaudited |
| CurveV2Swap | unknown | ethereum | [`0xd3bf4a...612081`](./contracts/ethereum-1/0xd3bf4ac5d54f262f977be28c761470ea0e612081/) | ⚠️ Unaudited |
| CustomRedStoneOracleAdapter | operational_periphery | ethereum | 2 deployments: ethereum [`0x67c159...c21030`](./contracts/ethereum-1/0x67c15923248baf96fb3944a2a326a237b4c21030/); ethereum `0xbb353f...e63b03` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | ethereum | 8 deployments: ethereum [`0x53ff9d...24066f`](./contracts/ethereum-1/0x53ff9d648a8a1cf70c6b60ae26b93047cc24066f/); ethereum `0xe67d77...958c03`; base `0x92c726...eae3ef`; base `0xb840cd...3b1ff7`; plasma `0x9783c0...d55b72`; arbitrum `0x5e76c3...791551`; arbitrum `0x80c503...cdc4ca`; linea `0x9faefa...cc23e2` | ⚠️ Unaudited |
| DaiUsdsSwap | unknown | ethereum | 2 deployments: ethereum [`0x2c309e...994fbd`](./contracts/ethereum-1/0x2c309ee751a71bdd2544cb568470b01899994fbd/); ethereum `0xe65a46...c257f9` | ⚠️ Unaudited |
| DaiUsdsSwapper | adapter | ethereum | 2 deployments: ethereum [`0x6404f6...81cfdc`](./contracts/ethereum-1/0x6404f61b3d12b5f87d6f76c2c8b58a420581cfdc/); ethereum `0xbf7335...b759f0` | ⚠️ Unaudited |
| DefiRound | unknown | ethereum | [`0xc80373...00ac38`](./contracts/ethereum-1/0xc803737d3e12cc4034dde0b2457684322100ac38/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| Depositor | unknown | base | 4 deployments: base [`0x8599f0...ae7e7f`](./contracts/base-8453/0x8599f04821421d8f9a5e0a5f06eb1630cdae7e7f/); base `0x9af8aa...813577`; base `0xe10142...fef87b`; base `0xed0489...fa4a05` | ⚠️ Unaudited |
| DepositProxy | unknown | ethereum | [`0x031464...ee2abf`](./contracts/ethereum-1/0x031464af67c612a54676dd5dd71ea86605ee2abf/) | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | ethereum | 4 deployments: ethereum [`0x3ac921...54232b`](./contracts/ethereum-1/0x3ac921bb16321e8c9b2e6b83c56397f2e054232b/); ethereum `0x506199...91e295`; ethereum `0x9e60e4...45b28c`; base `0xc3ff90...598323` | ⚠️ Unaudited |
| DestinationRegistry | registry | linea | 6 deployments: ethereum `0xa698a9...a99402`; base `0xa1afc8...095ba1`; arbitrum `0x95b5f1...43c58e`; arbitrum `0xdf177c...d8d82c`; arbitrum `0xfea078...2c618b`; linea [`0x66b9eb...6e258c`](./contracts/linea-59144/0x66b9eba2cef184dfaf3b9e11b104be0a1c6e258c/) | ⚠️ Unaudited |
| DestinationVaultExtension | adapter | arbitrum | 4 deployments: base `0xb64dd5...093d68`; plasma `0x94ab3c...7a09f1`; arbitrum [`0x4ca8f3...443fc1`](./contracts/arbitrum-42161/0x4ca8f3e9a5adc4893c93643b2cd90dc9eb443fc1/); linea `0xef8d12...8707b6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | ethereum | 8 deployments: ethereum [`0x37de6f...0ff124`](./contracts/ethereum-1/0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124/); ethereum `0xc6c32c...199678`; base `0xf34f79...e9abb6`; plasma `0xc895bb...5c288a`; arbitrum `0x53303d...6c198d`; arbitrum `0x705688...49dbfb`; arbitrum `0xd66836...59225a`; linea `0x618273...67520f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | arbitrum | 6 deployments: ethereum `0x3aac1c...e152ae`; base `0xbbbb6e...21735f`; arbitrum [`0x39327c...264ba1`](./contracts/arbitrum-42161/0x39327cbec7e3190fc721108b4d5a0cb096264ba1/); arbitrum `0x852664...ed4f44`; arbitrum `0x8d75a2...032b4b`; linea `0xc7b061...d65da2` | ⚠️ Unaudited |
| DexIncentiveSetCalculator | unknown | ethereum | [`0x269dbe...908be7`](./contracts/ethereum-1/0x269dbe2c9a5756e2fc48c173c869679df3908be7/) | ⚠️ Unaudited |
| DynamicVestingEscrow | operational_periphery | ethereum | [`0x16d96b...d9c55d`](./contracts/ethereum-1/0x16d96ba86512b4f8d10bd74b1061d9f576d9c55d/) | ⚠️ Unaudited |
| EethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x4353e1...1350ba`](./contracts/ethereum-1/0x4353e181c13f7e970f24016a0762c1af271350ba/); ethereum `0xa87930...d4a71e` | ⚠️ Unaudited |
| EethOracle | operational_periphery | ethereum | [`0xaa573a...86df81`](./contracts/ethereum-1/0xaa573a9bf7560870a925ea1704c061546486df81/) | ⚠️ Unaudited |
| ERC4626BackingOracle | operational_periphery | base | 4 deployments: ethereum `0xfc3213...014721`; base [`0x16cd14...9e516a`](./contracts/base-8453/0x16cd14a7fc3a6749a777fd3e9639a861e49e516a/); plasma `0x5ab9f9...5031a9`; arbitrum `0x47cabf...81ed2f` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | ethereum | 8 deployments: ethereum [`0x000404...aadf01`](./contracts/ethereum-1/0x0004042f1cfaef8bd011e73d99f85a44b0aadf01/); ethereum `0x13da01...fc380f`; ethereum `0xc840bd...a86cf3`; ethereum `0xd50e56...6b0898`; base `0x336080...9c1678`; plasma `0x8a99bb...f682ad`; arbitrum `0xdd0394...f9a8f2`; linea `0x46c004...64686b` | ⚠️ Unaudited |
| ERC4626NonLPSpotRangeOracle | operational_periphery | linea | 3 deployments: base `0x136639...35a596`; plasma `0xdd597e...3822de`; linea [`0x1068bb...595061`](./contracts/linea-59144/0x1068bb81ac98aa7c1996ee0ea1189cc7cd595061/) | ⚠️ Unaudited |
| ERC4626OneToOneCalculator | unknown | base | 2 deployments: ethereum `0xf31bd1...91cdd9`; base [`0xcd749a...138a61`](./contracts/base-8453/0xcd749af731078ec7657a30458d3bc6558b138a61/) | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | ethereum | [`0xd4580a...0d44ba`](./contracts/ethereum-1/0xd4580a56e715f14ed9d340ff30147d66230d44ba/) | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | ethereum | 6 deployments: ethereum [`0x01f8d0...f16e96`](./contracts/ethereum-1/0x01f8d089dee86e2e22164394bcc8118688f16e96/); base `0xa60042...6be405`; plasma `0xba08e1...73e32f`; arbitrum `0x1cbd79...0ba22b`; arbitrum `0x5c47f4...905667`; linea `0x6978f2...b3f5c3` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | ethereum | 14 deployments: ethereum [`0x1dfb50...ae8c88`](./contracts/ethereum-1/0x1dfb5041c3f594caef41bcec02f3a9af47ae8c88/); ethereum `0x2386c9...74105f`; ethereum `0xfbc60c...39b895`; ethereum `0xffebb3...4d959f`; base `0x383421...205baf`; base `0xb1b8d7...0c0193`; plasma `0x9186ea...82617d`; plasma `0xed5dc1...272d93`; arbitrum `0x84c1ce...e5d152`; arbitrum `0x98a216...0e339a`; arbitrum `0xb22f75...e22f34`; arbitrum `0xe1a08b...799213`; linea `0x268cbb...161a03`; linea `0x3f962e...acc328` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x0d1e06...821fa8`](./contracts/ethereum-1/0x0d1e06578f4ae09e81d33bf5587a0616f4821fa8/); base `0x869255...f1714a`; plasma `0x8b504e...5df923`; arbitrum `0x2210d0...252237`; arbitrum `0xf701b4...2b7087`; linea `0xdb28f4...aeae68` | ⚠️ Unaudited |
| Etherex | unknown | linea | 3 deployments: linea [`0xbe8b8d...69f11d`](./contracts/linea-59144/0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d/); linea `0xefd81e...31e348`; linea `0xf0c89c...0bd9eb` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | arbitrum | 6 deployments: ethereum `0xdeb361...a67de3`; base `0xe33703...746aa9`; plasma `0x738066...8b759f`; plasma `0xac2087...754a5e`; arbitrum [`0x16adb8...f5a0a8`](./contracts/arbitrum-42161/0x16adb8209618e0cbd4c19f0487f8916b0cf5a0a8/); linea `0xa6e5ac...acf562` | ⚠️ Unaudited |
| EthPerTokenSender | token | ethereum | [`0xdd9251...625a3d`](./contracts/ethereum-1/0xdd92511f1fbe5de911e22a0247ba8c212d625a3d/) | ⚠️ Unaudited |
| EthPerTokenStore | token | base | [`0x578317...d68dfe`](./contracts/base-8453/0x57831780565ae1526ed1cc2296c1143b3ad68dfe/) | ⚠️ Unaudited |
| ETHxLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x2757f5...5b0c55`](./contracts/ethereum-1/0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55/); ethereum `0x6d3c5f...78334c` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | plasma | 17 deployments: base `0xc8ba1a...cc3c76`; plasma [`0x07ed7e...b8f95b`](./contracts/plasma-9745/0x07ed7ef81d7dd79fb6043d0a37c11d78f3b8f95b/); plasma `0x15b4dc...7178f9`; plasma `0x868c33...04b672`; plasma `0x919978...cf0377`; plasma `0xf3de68...78d217`; plasma `0xf5a4fa...0f684c`; arbitrum `0x398417...d80085`; arbitrum `0xc32572...ea15a8`; arbitrum `0xc82aec...28537f`; arbitrum `0xdc7b96...ec7101`; arbitrum `0xe6a2b1...08fc71`; arbitrum `0xfda745...010bd5`; linea `0x9d2868...239e3a`; linea `0xbe22c1...3ae95f`; linea `0xd27f7b...56fbf0`; linea `0xd2f243...5d4471` | ⚠️ Unaudited |
| EulerRewardLib | unknown | linea | 4 deployments: plasma `0x46ba85...80e409`; arbitrum `0x6f1c28...f65cdd`; linea [`0x349e41...6d59dd`](./contracts/linea-59144/0x349e418073d660dbd419ffc407d4ba077b6d59dd/); linea `0xc6383b...da5393` | ⚠️ Unaudited |
| ExtraRewarder | unknown | ethereum | 4 deployments: ethereum [`0x17c50b...022975`](./contracts/ethereum-1/0x17c50b9fba151f5f88618dae6c394bd731022975/); ethereum `0x23e9bb...7fec38`; ethereum `0x7a73fa...e05924`; plasma `0xae6b25...0e2124` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | ethereum | 2 deployments: ethereum [`0xa84cc1...b263d9`](./contracts/ethereum-1/0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9/); ethereum `0xe3e731...25b459` | ⚠️ Unaudited |
| FeeCollector | unknown | linea | 2 deployments: linea [`0x51a2a0...7f21a1`](./contracts/linea-59144/0x51a2a0b162d27254e30473b7072d95f4b37f21a1/); linea `0x532c15...54e0f3` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | linea | 2 deployments: linea [`0x61c56a...6f3f6f`](./contracts/linea-59144/0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f/); linea `0xfde487...e6b7bf` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | linea | [`0x75430c...02d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | ⚠️ Unaudited |
| FeeRedeemer | unknown | ethereum | [`0xd1057b...38e581`](./contracts/ethereum-1/0xd1057b6c6736bf4f5b4a850cff02054f1f38e581/) | ⚠️ Unaudited |
| Fei | unknown | ethereum | [`0x956f47...7f87ca`](./contracts/ethereum-1/0x956f47f50a910163d8bf957cf5846d573e7f87ca/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| FPI | unknown | ethereum | [`0x76c8ce...626767`](./contracts/ethereum-1/0x76c8cef5b18994a85bc2be1991e5b9c716626767/) | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| FPIS | unknown | ethereum | [`0xdb68c6...698d15`](./contracts/ethereum-1/0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15/) | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Convex_stkcvxFRAXBP | token | ethereum | [`0x963f48...03b199`](./contracts/ethereum-1/0x963f487796d54d2f27ba6f3fbe91154ca103b199/) | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x449a95...787590`](./contracts/ethereum-1/0x449a957490e24e4d915fd5dcf25dd5446e787590/); ethereum `0xad6d0e...18a223` | ⚠️ Unaudited |
| FTTOracle | operational_periphery | ethereum | [`0x41a376...7da186`](./contracts/ethereum-1/0x41a37655a7afb85787bd60a9fa750225567da186/) | ⚠️ Unaudited |
| FXS1559_AMO | unknown | ethereum | 2 deployments: ethereum [`0x9c6a04...1f51ee`](./contracts/ethereum-1/0x9c6a04871d11b33645ab592f68c41bb2b41f51ee/); ethereum `0xaf02be...8bc077` | ⚠️ Unaudited |
| FXS1559_AMO_V2 | unknown | ethereum | 2 deployments: ethereum [`0xc80c48...717c24`](./contracts/ethereum-1/0xc80c48862e4254f37047235298edb6aa35717c24/); ethereum `0xcde9a4...54294f` | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | ethereum | 2 deployments: ethereum [`0x7301bb...cedae5`](./contracts/ethereum-1/0x7301bb959ee286d8abc46f341144afe443cedae5/); ethereum `0xb52462...7c7dc5` | ⚠️ Unaudited |
| FXSOracleWrapper | operational_periphery | ethereum | [`0xee0f15...ab3480`](./contracts/ethereum-1/0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480/) | ⚠️ Unaudited |
| Gamma | unknown | ethereum | 2 deployments: ethereum [`0x6bea7c...44e197`](./contracts/ethereum-1/0x6bea7cfef803d1e3d5f7c0103f7ded065644e197/); ethereum `0x8a539c...ed793a` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x127563...ad9013`](./contracts/ethereum-1/0x127563761083d2ac7794c17d04e17393d8ad9013/); ethereum `0x8b4334...4a969b` | ⚠️ Unaudited |
| gOHM | unknown | ethereum | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | 2 deployments: ethereum [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/); ethereum `0xd74034...dcb00e` | ⚠️ Unaudited |
| GT | unknown | ethereum | [`0xf25dc5...baa20c`](./contracts/ethereum-1/0xf25dc58c25ba97529f5504dca81d2eaf4abaa20c/) | ⚠️ Unaudited |
| HoldTokenCalculator | token | ethereum | 3 deployments: ethereum [`0x076f94...a65f50`](./contracts/ethereum-1/0x076f94efae4621bab537ce72b9eb48bb0ca65f50/); ethereum `0x78c4af...f57c0e`; base `0x804336...fac3a4` | ⚠️ Unaudited |
| HypeRegistry | registry | ethereum | 2 deployments: ethereum [`0xa21b30...1e24ab`](./contracts/ethereum-1/0xa21b3085e9a97bb8f23c997e80fe6d91321e24ab/); ethereum `0xede66e...dc7dff` | ⚠️ Unaudited |
| Hypervisor | unknown | ethereum | 11 deployments: ethereum [`0x33412f...31dbb4`](./contracts/ethereum-1/0x33412fef1af035d6dba8b2f9b33b022e4c31dbb4/); ethereum `0x336d7e...cf146f`; ethereum `0x388a39...98e22c`; ethereum `0x39b96f...16013c`; ethereum `0x4d7f0f...d0c832`; ethereum `0x51bbf7...808865`; ethereum `0x586880...f8ef13`; ethereum `0x5e6c48...f11660`; ethereum `0xac571c...b1d02f`; ethereum `0xf402ce...adbd9b`; ethereum `0xf6eeca...c7927c` | ⚠️ Unaudited |
| HypervisorFactory | registry | ethereum | [`0x8ae6c8...97ceae`](./contracts/ethereum-1/0x8ae6c8c7005c7317963487bee834047eb497ceae/) | ⚠️ Unaudited |
| IncentiveCalculatorUpdateDestinationVaultExtension | adapter | ethereum | [`0xee117a...1ab674`](./contracts/ethereum-1/0xee117a999594cf8e7d5845e4a76cd6f8121ab674/) | ⚠️ Unaudited |
| IncentiveHarvester | operational_periphery | base | 3 deployments: ethereum `0x453bf4...7f51e7`; ethereum `0x4a566d...178791`; base [`0x1bfcdf...d5be5e`](./contracts/base-8453/0x1bfcdfa2722c17959acd1306df1f0406a7d5be5e/) | ⚠️ Unaudited |
| IncentivePricingStats | unknown | ethereum | 2 deployments: ethereum [`0x8607ba...85f862`](./contracts/ethereum-1/0x8607ba6540af378cba64f4e3497fbb2d1385f862/); base `0xf28213...48090d` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| InitialClaim | unknown | ethereum | [`0x2ad3cf...a17a11`](./contracts/ethereum-1/0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11/) | ⚠️ Unaudited |
| Integer | unknown | arbitrum | 4 deployments: ethereum `0x8a397a...94a71c`; plasma `0x5206eb...e4ec6e`; arbitrum [`0x4c0868...092028`](./contracts/arbitrum-42161/0x4c0868931b0c6e72aa835d657fa56179ce092028/); linea `0xe9dedf...9958c6` | ⚠️ Unaudited |
| InterestStrategy | operational_periphery | ethereum | 4 deployments: ethereum [`0x0ec271...b0d377`](./contracts/ethereum-1/0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377/); ethereum `0x294c8c...601aa7`; ethereum `0x2e61da...93f9a1`; ethereum `0xc1dbac...9a4033` | ⚠️ Unaudited |
| InverseOracle | operational_periphery | ethereum | [`0xe1ac24...60d318`](./contracts/ethereum-1/0xe1ac243f14de48eba4c267e82d97ebc7d260d318/) | ⚠️ Unaudited |
| InvestorAMO_V2 | operational_periphery | ethereum | 4 deployments: ethereum [`0x2b4d25...da01b4`](./contracts/ethereum-1/0x2b4d259a8f6e765ad881c4c1d04045d629da01b4/); ethereum `0xb8315a...7444f1`; ethereum `0xde3c8a...9cb341`; ethereum `0xecca5a...8c0a0c` | ⚠️ Unaudited |
| InvestorAMO_V2_upgrade | operational_periphery | ethereum | 2 deployments: ethereum [`0x1e5acc...bbf64d`](./contracts/ethereum-1/0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d/); ethereum `0x9b6c44...8391d0` | ⚠️ Unaudited |
| LBPController | governance | ethereum | [`0x2e0561...3e2987`](./contracts/ethereum-1/0x2e0561e87bb1c29d7e6259e163b03b7ab93e2987/) | ⚠️ Unaudited |
| Lens | periphery | arbitrum | 10 deployments: ethereum `0x0ab577...e6c89b`; ethereum `0x146b55...783882`; ethereum `0x6972ee...cde442`; ethereum `0x75455a...1d2300`; base `0x1c0059...db89f0`; base `0xaf05c2...17aa9c`; arbitrum [`0x03200d...f749c1`](./contracts/arbitrum-42161/0x03200d703c63d3b5a00de9896b7f82c240f749c1/); arbitrum `0x590a31...2fc754`; arbitrum `0x99f8f6...08279e`; linea `0x92537a...f7973c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | base | 9 deployments: ethereum `0xa61ab5...daaf53`; ethereum `0xd03f63...747738`; base [`0x0294d7...7b2c8c`](./contracts/base-8453/0x0294d71b2c9b88d10f6d3286f5b25026147b2c8c/); base `0xc48496...005e9a`; plasma `0x2ddb79...7980be`; arbitrum `0x34d929...f7ad94`; arbitrum `0x400662...5ca197`; arbitrum `0x4008dd...ceba03`; linea `0x9f8e50...db4bfa` | ⚠️ Unaudited |
| LiquidationRow | unknown | arbitrum | 7 deployments: ethereum `0xf570ea...58d481`; base `0x7571de...c10b5d`; base `0xe2f00b...881d4f`; plasma `0xd3132c...b2a018`; arbitrum [`0x610ffe...3e3ab5`](./contracts/arbitrum-42161/0x610ffeb00b8312b0540ded300c683227cb3e3ab5/); arbitrum `0xb47d36...d913ed`; linea `0xc33238...f05b3c` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | base | 7 deployments: ethereum `0xc7c308...bf4523`; base [`0x1617c7...d5f827`](./contracts/base-8453/0x1617c74f1e2616a6883249e490aa5e085cd5f827/); plasma `0xc91f3b...a4ebc5`; arbitrum `0x329e4c...dd525c`; arbitrum `0x67ae7b...cafbc0`; arbitrum `0xd57e25...aad943`; linea `0xf63daf...6f2f47` | ⚠️ Unaudited |
| MagicInternetGold | unknown | ethereum | [`0x5624b4...8c5fd0`](./contracts/ethereum-1/0x5624b48ec2848bd642230b46405e1f65938c5fd0/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| Manager | governance | base | 13 deployments: ethereum `0x0ad818...3bb7f7`; ethereum `0x1d7858...1b4d43`; ethereum `0x47fa86...f705df`; ethereum `0x59170d...f9f4c9`; ethereum `0xa86e41...b86a14`; ethereum `0xf31d02...6f2651`; ethereum `0xf663f4...2a244c`; base [`0x020849...b67262`](./contracts/base-8453/0x0208491b10f9fc61ac8047d1f0e11698bdb67262/); base `0x304c29...eb1520`; base `0x76e6a3...aee47e`; base `0x85f982...a4d14e`; arbitrum `0x027a33...238833`; arbitrum `0x37767c...742df6` | ⚠️ Unaudited |
| ManualTokenTrackerAMO | token | ethereum | 3 deployments: ethereum [`0x1be588...683f5a`](./contracts/ethereum-1/0x1be588641fb28eb8c2a51f1129707fb1e2683f5a/); ethereum `0xb3d07e...19b586`; ethereum `0xec8672...f6a413` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | arbitrum | 7 deployments: ethereum `0x3b16c8...43cfc3`; base `0x80af95...3e228b`; plasma `0x881bb3...3d63d4`; arbitrum [`0x0d1212...695426`](./contracts/arbitrum-42161/0x0d1212d67d676101bc9ed856b8574a95c7695426/); arbitrum `0x50306d...00ccf0`; arbitrum `0x6404da...44a402`; linea `0xaaee6a...869707` | ⚠️ Unaudited |
| MerklApiOperatorSetExtension | adapter | base | [`0x54f35d...6cdc8d`](./contracts/base-8453/0x54f35db38f7613a3993e41d56ee9c4c5ee6cdc8d/) | ⚠️ Unaudited |
| MessageProxy | unknown | ethereum | [`0x20ea2f...616f76`](./contracts/ethereum-1/0x20ea2f2ecf36bcb6df086d923a120496dc616f76/) | ⚠️ Unaudited |
| MevModule | unknown | linea | 3 deployments: linea [`0x614f11...703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/); linea `0x90fc1f...b4940d`; linea `0xdf2787...088d5b` | ⚠️ Unaudited |
| MicroVeFXSStaker | core_logic | ethereum | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | ethereum | 2 deployments: ethereum [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/); ethereum `0xe16723...1e78d6` | ⚠️ Unaudited |
| MigrationNFT | operational_periphery | ethereum | [`0x72baaa...39fe76`](./contracts/ethereum-1/0x72baaa523a4662856f413b0fc0a9e3068f39fe76/) | ⚠️ Unaudited |
| Minter | operational_periphery | linea | 4 deployments: linea [`0x0b6d3b...ecc3eb`](./contracts/linea-59144/0x0b6d3b42861ee8abfcaac818033694e758ecc3eb/); linea `0x462e26...d2a966`; linea `0x76da79...da9f8f`; linea `0xf83962...0b6255` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | arbitrum | 7 deployments: ethereum `0x2e9894...dc3466`; base `0xec1b42...1e5745`; plasma `0x71689a...1679d9`; arbitrum [`0x09d0d6...b50322`](./contracts/arbitrum-42161/0x09d0d6a48545e959b230600966d93600fab50322/); arbitrum `0x5483a2...a7ece8`; arbitrum `0xcb409a...2dffe0`; linea `0xb617bc...532e67` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | linea | [`0x59037f...3712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | arbitrum | 6 deployments: plasma `0xde852a...f90db4`; arbitrum [`0x52b31f...d48be3`](./contracts/arbitrum-42161/0x52b31f7d8397a7a3851ddb548acac64abfd48be3/); arbitrum `0x65f4fe...a62eef`; arbitrum `0xab3da8...c9bf0b`; arbitrum `0xd7b1f5...db00ce`; arbitrum `0xff004b...a24192` | ⚠️ Unaudited |
| MSIGHelper | periphery | ethereum | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | ⚠️ Unaudited |
| mSpellSender | unknown | ethereum | 8 deployments: ethereum [`0x1440ec...e80815`](./contracts/ethereum-1/0x1440ecdfc61386a64116e58326bc7d6074e80815/); ethereum `0x170d17...6853f5`; ethereum `0x3d94b7...6b6735`; ethereum `0x54c80f...1f07a5`; ethereum `0x7fa032...3e926c`; ethereum `0x88e9cb...149863`; ethereum `0x902180...7f0dd7`; ethereum `0xf780de...8f3e12` | ⚠️ Unaudited |
| mSpellSenderManual | unknown | ethereum | [`0xfc2796...13a4c0`](./contracts/ethereum-1/0xfc2796c47063d6fcb98006081778c7b45b13a4c0/) | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | 3 deployments: ethereum [`0x94635b...53f41d`](./contracts/ethereum-1/0x94635b2034ccec3293b81d411cd77c36c353f41d/); ethereum `0xbd2fba...5e6797`; ethereum `0xcdb71c...3bc8b1` | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NavLookbackHook | unknown | ethereum | 7 deployments: ethereum [`0x33db10...9c3624`](./contracts/ethereum-1/0x33db101517112a9b7b9f5b39eac185a0629c3624/); base `0x5ee04a...b5df51`; plasma `0x4c0be1...6b427b`; arbitrum `0x617005...19ea57`; arbitrum `0x9717e1...756f8b`; arbitrum `0xd184c5...bd2b16`; linea `0xa31fe5...59fa42` | ⚠️ Unaudited |
| NavTracking | unknown | linea | [`0x9d9118...8b2046`](./contracts/linea-59144/0x9d91184326b1b43cca0039523ed20a4bc08b2046/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | [`0xa04a9f...bb2f58`](./contracts/linea-59144/0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | linea | [`0xfc65c6...8453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | ⚠️ Unaudited |
| NoopRewardsDistributor | operational_periphery | ethereum | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | ⚠️ Unaudited |
| OethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x21fede...143826`](./contracts/ethereum-1/0x21fededbe1cc5aa22a17f171513c105300143826/); ethereum `0x90a7e9...2cbd59` | ⚠️ Unaudited |
| OHM_AMO | unknown | ethereum | 2 deployments: ethereum [`0x5699d2...c4db96`](./contracts/ethereum-1/0x5699d20732a2efa9a895ef04bb210aa751c4db96/); ethereum `0x89a5ce...d3dffa` | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | ethereum | [`0x0ee5c2...4815b9`](./contracts/ethereum-1/0x0ee5c2865d6dff605e527b13c336f0b8774815b9/) | ⚠️ Unaudited |
| OlympusAuthority | governance | ethereum | [`0x1c21f8...b38b7a`](./contracts/ethereum-1/0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a/) | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | ethereum | [`0x6a617f...68bedc`](./contracts/ethereum-1/0x6a617fe9163c1499b9d2773fb2d0105a2368bedc/) | ⚠️ Unaudited |
| OlympusLPStaking | unknown | ethereum | [`0xf11f0f...722223`](./contracts/ethereum-1/0xf11f0f078bfaf05a28eac345bb84fcb2a3722223/) | ⚠️ Unaudited |
| OlympusRewardDistributor | operational_periphery | ethereum | [`0x2ce62b...4a6cd1`](./contracts/ethereum-1/0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | 3 deployments: ethereum [`0x0822f3...f274a2`](./contracts/ethereum-1/0x0822f3c03dcc24d200aff33493dc08d0e1f274a2/); ethereum `0x4a049d...cf7d7e`; ethereum `0x9f93c9...e5abf4` | ⚠️ Unaudited |
| OlympusStakingDistributor | operational_periphery | ethereum | [`0xbe7315...93242f`](./contracts/ethereum-1/0xbe731507810c8747c3e01e62c676b1ca6f93242f/) | ⚠️ Unaudited |
| OlympusTokenMigrator | token | ethereum | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | ethereum | 6 deployments: ethereum [`0x160317...a915be`](./contracts/ethereum-1/0x16031783d3d27ce25ebcfb341f4eec8f7ba915be/); ethereum `0x43094e...6ca511`; ethereum `0x803ec0...bc22bc`; ethereum `0xa1a7ec...7721dd`; ethereum `0xabcf56...fa195c`; ethereum `0xc6807b...66e0bb` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x44670e...7f6c2d`](./contracts/ethereum-1/0x44670e424c88a1a887e413c49b4a82755e7f6c2d/); base `0xe4baac...4d7704`; plasma `0x951891...0fbb80`; arbitrum `0x4e8ce6...8e9b32` | ⚠️ Unaudited |
| OneToOneUSDBackingOracle | operational_periphery | arbitrum | 4 deployments: ethereum `0xaeb29c...fd1016`; base `0xe8b43d...83472a`; plasma `0xea292b...6b9818`; arbitrum [`0xa698a9...a99402`](./contracts/arbitrum-42161/0xa698a94c0dce389b862f58b08f618a981ea99402/) | ⚠️ Unaudited |
| Oracle | operational_periphery | linea | [`0x389df9...7e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | ⚠️ Unaudited |
| OsethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x3cc439...257b1b`](./contracts/ethereum-1/0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b/); ethereum `0xb5aa59...25aebb` | ⚠️ Unaudited |
| PairFactory | registry | linea | [`0xc0b920...644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | ⚠️ Unaudited |
| PointsHook | unknown | ethereum | [`0xa38606...c615c3`](./contracts/ethereum-1/0xa386067eb5f7dc9b731fe1130745b0fb00c615c3/) | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolToken | core_logic | ethereum | 2 deployments: ethereum [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/); ethereum `0x9122ee...208e35` | ⚠️ Unaudited |
| Position | unknown | linea | [`0x2832e1...bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | ⚠️ Unaudited |
| PricePerShareEthOracle | operational_periphery | base | [`0x5b0f86...248cea`](./contracts/base-8453/0x5b0f86a09eb9912152750212372f732c5c248cea/) | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | ethereum | 3 deployments: ethereum [`0xa869b9...0d49b5`](./contracts/ethereum-1/0xa869b9171c8f912c592abc58005922718d0d49b5/); ethereum `0xa9b386...30cbf3`; ethereum `0xb2ebf2...bfb1e3` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | ethereum | [`0x5e70f7...187103`](./contracts/ethereum-1/0x5e70f7acb8ec0231c00220d11c74dc2b23187103/) | ⚠️ Unaudited |
| ProtocolActions | unknown | linea | [`0x34413f...3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ⚠️ Unaudited |
| ProtocolOwnedDebtCauldron | unknown | ethereum | [`0xedcf19...08f12a`](./contracts/ethereum-1/0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 9 deployments: ethereum [`0x01b431...e7e1ee`](./contracts/ethereum-1/0x01b4314072fe86a497e97bd6ad48b635fbe7e1ee/); ethereum `0x069c24...76f577`; ethereum `0x900909...6df69c`; ethereum `0xc89f74...cf00df`; ethereum `0xcaa487...c6a692`; ethereum `0xd813b2...c51a21`; ethereum `0xe53d45...a0ce0a`; plasma `0xea6b81...bcc98a`; arbitrum `0xbfd637...047e9f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | ethereum | 3 deployments: ethereum [`0x24864c...25931e`](./contracts/ethereum-1/0x24864cc03efd84f9df0e5f1d23ab69128325931e/); ethereum `0x8a26c7...494e53`; ethereum `0xdbfb63...aaa43f` | ⚠️ Unaudited |
| ProxyOracle | operational_periphery | ethereum | 23 deployments: ethereum [`0x0ea220...4b8855`](./contracts/ethereum-1/0x0ea2207e31dc03701b12e4b322df1bbb404b8855/); ethereum `0x0f75c5...9028a6`; ethereum `0x15a2a9...54cd46`; ethereum `0x164956...774552`; ethereum `0x217c08...5e24ac`; ethereum `0x40cf1c...3394f6`; ethereum `0x445918...125582`; ethereum `0x4bdc9b...89ac37`; ethereum `0x4d9a78...2b2ff7`; ethereum `0x599ea9...49623d`; ethereum `0x6527a9...bfe986`; ethereum `0x6c86ad...c48ff1`; ethereum `0xa8fa24...95b1b4`; ethereum `0xabb326...007a97`; ethereum `0xacab7f...69a39f`; ethereum `0xbe9b99...3967c6`; ethereum `0xc4afee...c52459`; ethereum `0xc4e343...7c33ba`; ethereum `0xc8dcc1...e87aa3`; ethereum `0xcb1f6f...efe6ff`; ethereum `0xd9f2b9...4cc5a0`; ethereum `0xe92b32...8f5627`; ethereum `0xfa2675...cbd972` | ⚠️ Unaudited |
| PufEthLRTCalculator | unknown | ethereum | 2 deployments: ethereum [`0x878958...a17e73`](./contracts/ethereum-1/0x878958416059f3ea3cd4ac0dc0a5439b49a17e73/); ethereum `0x9d4920...8b34ac` | ⚠️ Unaudited |
| PxETHEthOracle | operational_periphery | ethereum | [`0x3cc521...ffc629`](./contracts/ethereum-1/0x3cc52170fdea5c485db6d412b78ea40f27ffc629/) | ⚠️ Unaudited |
| PxEthLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x37c9b7...06296a`](./contracts/ethereum-1/0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a/); ethereum `0x9cb562...972153` | ⚠️ Unaudited |
| Quoter | periphery | linea | [`0xb593fa...4fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | [`0xe660c9...aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | linea | 3 deployments: linea [`0x020079...d3200e`](./contracts/linea-59144/0x020079c6cb277ec22306a45e7d4eaefd24d3200e/); linea `0x0efaae...31693b`; linea `0x15325a...5636a5` | ⚠️ Unaudited |
| RamsesV3Factory | registry | linea | [`0xae334f...cf80f1`](./contracts/linea-59144/0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1/) | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | linea | [`0x80dca1...c7bec8`](./contracts/linea-59144/0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8/) | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | linea | [`0x4e710f...272bfb`](./contracts/linea-59144/0x4e710feb1b2e784233893af659442e4739272bfb/) | ⚠️ Unaudited |
| RariFuseLendingAMO | core_logic | ethereum | 3 deployments: ethereum [`0x843df6...ddb0a2`](./contracts/ethereum-1/0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2/); ethereum `0x94d97d...681086`; ethereum `0x96665d...c93c45` | ⚠️ Unaudited |
| ReceivingRouter | adapter | base | [`0x327966...12267e`](./contracts/base-8453/0x32796698388fbc64281dea9fc4070df80a12267e/) | ⚠️ Unaudited |
| ReceivingRouterGen | adapter | base | [`0xd2c543...ad19dc`](./contracts/base-8453/0xd2c543dd8e305b354ee1d713734acf7adead19dc/) | ⚠️ Unaudited |
| RedstoneOracle | operational_periphery | plasma | 3 deployments: ethereum `0xe1adb6...da5913`; base `0x9ab4b6...dad1ee`; plasma [`0x80d831...bb308d`](./contracts/plasma-9745/0x80d8315de571bfa4ff0b884a03f95837f8bb308d/) | ⚠️ Unaudited |
| RedStonePullOracle | operational_periphery | base | 6 deployments: ethereum `0x470139...b0a0ea`; ethereum `0x9a65e1...89b811`; base [`0x1e4d6a...679306`](./contracts/base-8453/0x1e4d6a828a7597808d16e3d096f230b01f679306/); base `0xb470a1...855cc4`; arbitrum `0x995a39...759d1f`; arbitrum `0xed2acb...5e081b` | ⚠️ Unaudited |
| RenBTCCrvOracle | operational_periphery | ethereum | [`0x2be431...f361b0`](./contracts/ethereum-1/0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0/) | ⚠️ Unaudited |
| RenCrvLevSwapper | adapter | ethereum | [`0x3bab72...45ed2a`](./contracts/ethereum-1/0x3bab7207d4e27b5de4a15d540b7297281b45ed2a/) | ⚠️ Unaudited |
| RenCrvSwapper | adapter | ethereum | [`0x41d65c...29df42`](./contracts/ethereum-1/0x41d65ce96342a3d9c3d878856e283e839d29df42/) | ⚠️ Unaudited |
| RepayHelper | periphery | ethereum | 4 deployments: ethereum [`0x0d07e5...634f21`](./contracts/ethereum-1/0x0d07e5d0c6657a59153359d6552c4664b6634f21/); ethereum `0x57823e...9eef4d`; ethereum `0x8f7405...983d9e`; ethereum `0x9f3362...c62ab8` | ⚠️ Unaudited |
| RethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x038516...90fac1`](./contracts/ethereum-1/0x038516cb9bbc0572c2d55896ce75f31fab90fac1/); ethereum `0x980109...bb84a8` | ⚠️ Unaudited |
| RewardClaimer | operational_periphery | ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| RewarderAutoLoader | unknown | linea | 2 deployments: arbitrum `0xa11733...30bf38`; linea [`0x2abfad...8ceec7`](./contracts/linea-59144/0x2abfad400361d49b40b24a894e0e417c4a8ceec7/) | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | 3 deployments: ethereum [`0x2c8f3c...572705`](./contracts/ethereum-1/0x2c8f3c8aca4413a9bccb0a4f6e5a18b537572705/); ethereum `0x3cce05...7661dd`; ethereum `0x5ec3ec...d02fb6` | ⚠️ Unaudited |
| RewardPool | core_logic | ethereum | [`0x39baa5...d34867`](./contracts/ethereum-1/0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | 6 deployments: ethereum [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22...a713c5`; ethereum `0xba7c0f...c4a54e`; ethereum `0xd69e57...f88003`; ethereum `0xf81d69...4cef69`; ethereum `0xffd22c...69ede3` | ⚠️ Unaudited |
| RewardsHash | unknown | ethereum | 2 deployments: ethereum [`0x70f0f4...373c24`](./contracts/ethereum-1/0x70f0f41b354ce2f1378952c50c635633e0373c24/); base `0xe43ca8...3ed9f7` | ⚠️ Unaudited |
| RewardsManager | governance | ethereum | 2 deployments: ethereum [`0x1b0512...7d4404`](./contracts/ethereum-1/0x1b05128b262ca335de162c8ad5e9281d5f7d4404/); ethereum `0x7cdbbd...e96d06` | ⚠️ Unaudited |
| RewardValidator | unknown | linea | 2 deployments: linea [`0x7930ec...b1e0fc`](./contracts/linea-59144/0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc/); linea `0xe57600...c0a97c` | ⚠️ Unaudited |
| REX33 | unknown | linea | 5 deployments: linea [`0x312b67...433ec0`](./contracts/linea-59144/0x312b67a8de4291ce2c3628d24fa62eb04f433ec0/); linea `0xbf42f6...639dff`; linea `0xc4b578...31509c`; linea `0xccfc11...f15749`; linea `0xe4eeb4...f051c4` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | linea | 7 deployments: ethereum `0x61f8be...bc2cac`; base `0xbcf67d...661795`; plasma `0xf25bdd...6d124f`; arbitrum `0x99ebce...8bed0e`; arbitrum `0xd24125...ab5b3d`; arbitrum `0xe84cea...72d97f`; linea [`0x03dc05...175618`](./contracts/linea-59144/0x03dc051eb7fe444cebcc2e870eba4464d8175618/) | ⚠️ Unaudited |
| Router | adapter | linea | 7 deployments: ethereum `0x81cfdc...fb2dec`; ethereum `0x86ac98...a1635c`; ethereum `0x92d853...975b16`; ethereum `0x994303...0f38e8`; ethereum `0xca17f5...b78536`; ethereum `0xf5ad91...cef3e0`; linea [`0x32db39...929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | ethereum | 2 deployments: ethereum [`0x114ca0...cefa86`](./contracts/ethereum-1/0x114ca0dc51abd118125f84d15f87e01e7dcefa86/); ethereum `0x840a49...4fc210` | ⚠️ Unaudited |
| RswethLRTCalculator | token | ethereum | 2 deployments: ethereum [`0xe861c6...15b90f`](./contracts/ethereum-1/0xe861c6eb5376ada41bcc238080439724fe15b90f/); ethereum `0xeedb3d...b6741a` | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0xa9900b...1d447b`](./contracts/ethereum-1/0xa9900b2d550c406d1cf58da27228feeef21d447b/) | ⚠️ Unaudited |
| SafeIsSpotEthOracle | operational_periphery | base | [`0x70659f...12e764`](./contracts/base-8453/0x70659f78ac20a8eddc309d6df6458ceacc12e764/) | ⚠️ Unaudited |
| SafeL2 | unknown | ethereum | [`0x1bb923...23cdc0`](./contracts/ethereum-1/0x1bb9231f96a5420858d273c3e311f0affc23cdc0/) | ⚠️ Unaudited |
| SelfSpotEthOracle | operational_periphery | ethereum | [`0x8e9a06...27a5d7`](./contracts/ethereum-1/0x8e9a06f85a3d188f2a851d1b4fb582680727a5d7/) | ⚠️ Unaudited |
| SequencerChecker | unknown | arbitrum | 4 deployments: base `0x564c39...d23535`; arbitrum [`0x05abaa...1f23f4`](./contracts/arbitrum-42161/0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4/); arbitrum `0x537f6e...d97dcc`; arbitrum `0xf37535...f129ef` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | linea | [`0xfb918e...eae19d`](./contracts/linea-59144/0xfb918e1d100707e732129407065c9b8dbbeae19d/) | ⚠️ Unaudited |
| ShibLevSwapper | adapter | ethereum | [`0xa3c893...a92a12`](./contracts/ethereum-1/0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12/) | ⚠️ Unaudited |
| ShibSwapper | adapter | ethereum | [`0x1085fa...0081ce`](./contracts/ethereum-1/0x1085fa0770a88a132e3b8aae21c84755d70081ce/) | ⚠️ Unaudited |
| SiloMainnetDestinationVault | core_logic | ethereum | 3 deployments: ethereum [`0x43ac60...97ab82`](./contracts/ethereum-1/0x43ac6018d520280fdbb98159acc4970b2b97ab82/); ethereum `0x679d6f...e3aca9`; ethereum `0x87a840...e4a262` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | base | 9 deployments: ethereum `0xab64ce...294569`; ethereum `0xd7ca2c...51270a`; ethereum `0xebdfe0...e4f7c3`; base [`0x27579e...056589`](./contracts/base-8453/0x27579eeb605f93a6931645e8fb0dde8f9a056589/); plasma `0xf68f04...80b335`; arbitrum `0x5984cf...11c192`; arbitrum `0x5db0e6...fd6b14`; arbitrum `0x8e9ac2...2d402d`; linea `0x798b8a...824645` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | 2 deployments: ethereum [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/); ethereum `0x81903f...b7c71b` | ⚠️ Unaudited |
| SnapshotToke | unknown | ethereum | [`0x572a7d...26aaa2`](./contracts/ethereum-1/0x572a7de03d4d2bded8c3e6faa99fb835b226aaa2/) | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | plasma | 5 deployments: ethereum `0xdb8747...3c20f1`; base `0x67d29b...282de1`; plasma [`0x03fad8...4d6cad`](./contracts/plasma-9745/0x03fad8445b30bf639c5f54e9502e43ba5f4d6cad/); arbitrum `0x5ee5d0...9cbd14`; linea `0x24127a...127e00` | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | [`0x31932e...77fbbe`](./contracts/ethereum-1/0x31932e6e45012476ba3a3a4953cba62aee77fbbe/) | ⚠️ Unaudited |
| SpellLevSwapper | adapter | ethereum | 3 deployments: ethereum [`0x152b59...0ce015`](./contracts/ethereum-1/0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015/); ethereum `0xd2b62a...48cf28`; ethereum `0xe3cd7c...7b36cf` | ⚠️ Unaudited |
| SpellOracle | operational_periphery | ethereum | [`0x75e142...69ec10`](./contracts/ethereum-1/0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10/) | ⚠️ Unaudited |
| SpellPower | unknown | ethereum | 3 deployments: ethereum [`0x20cb52...de9430`](./contracts/ethereum-1/0x20cb52832f35c61ccdbe5c336e405fe979de9430/); ethereum `0x38a67c...4375ed`; ethereum `0x59b3d5...fecd45` | ⚠️ Unaudited |
| SpellSuperSwapper | adapter | ethereum | 3 deployments: ethereum [`0x66436c...19765d`](./contracts/ethereum-1/0x66436c64da9d9a61bcc3f652490d20d7cf19765d/); ethereum `0x78a538...17cccf`; ethereum `0xef633d...7ed5ee` | ⚠️ Unaudited |
| SpellSwapper | adapter | ethereum | [`0x663ef4...1aeb38`](./contracts/ethereum-1/0x663ef4455a07243d9029ba0fc48297ae181aeb38/) | ⚠️ Unaudited |
| sSpellOracle | operational_periphery | ethereum | [`0xf8beb5...de90c7`](./contracts/ethereum-1/0xf8beb5c479a9b58f581076697bbce83baade90c7/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StakeDAO_AMO | unknown | ethereum | 4 deployments: ethereum [`0x375278...efe465`](./contracts/ethereum-1/0x375278d3c65f29c1a90e8550888f1439cfefe465/); ethereum `0x4740b7...940359`; ethereum `0x7ebef3...4300bc`; ethereum `0xcf1e69...93e646` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 7 deployments: ethereum [`0x0fc455...954b4f`](./contracts/ethereum-1/0x0fc45523d4c63a70f263dceaec9d08c947954b4f/); ethereum `0x1dddf8...1d0122`; ethereum `0x596723...11ebee`; ethereum `0x96f98e...3417d3`; ethereum `0xe5943d...6ba92f`; ethereum `0xef8670...4a955b`; ethereum `0xf82337...b54f63` | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingProxyConvex | proxy | ethereum | [`0x5d9ef8...a20eb8`](./contracts/ethereum-1/0x5d9ef8f1cfa952a4a383e10a447dd23c5ea20eb8/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 3 deployments: ethereum [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/); ethereum `0x3b7382...32a462`; ethereum `0xeb31da...0a2cf3` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StandardNonLPSpotEthOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x84ec46...0c15c1`](./contracts/ethereum-1/0x84ec46ad95c5fc56a729c831a86b6b4df70c15c1/); ethereum `0xd06906...a6bfba` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | ethereum | 2 deployments: ethereum [`0x819806...bc917c`](./contracts/ethereum-1/0x8198069f1709addc6a162c9433665776e5bc917c/); base `0xd82664...8b0a1c` | ⚠️ Unaudited |
| StatsCalculatorRegistry | registry | base | 2 deployments: ethereum `0xae6b25...0e2124`; base [`0x22dd21...b217d2`](./contracts/base-8453/0x22dd2189728b40409476f4f80ca8f2f6bdb217d2/) | ⚠️ Unaudited |
| StatsTransientCacheStore | unknown | ethereum | [`0x34712f...61bb88`](./contracts/ethereum-1/0x34712f37aee81b3a0d2fe03fea9f4cb25961bb88/) | ⚠️ Unaudited |
| StethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x66a466...dbad0c`](./contracts/ethereum-1/0x66a466b838f981b39cf3b3e13e19af5643dbad0c/); ethereum `0xaea78e...02cee7` | ⚠️ Unaudited |
| sTokeExtend | unknown | ethereum | [`0x6e1f00...c50673`](./contracts/ethereum-1/0x6e1f006c98b7389001eb427b1f593936b5c50673/) | ⚠️ Unaudited |
| StructuredLinkedList | unknown | linea | 5 deployments: ethereum `0xe40299...b6eb7e`; base `0xdd3aba...fc0865`; plasma `0x22adaa...820812`; arbitrum `0x5c72bd...c4845c`; linea [`0x073633...57401a`](./contracts/linea-59144/0x0736339bfcd152be60b504b19298a5d33b57401a/) | ⚠️ Unaudited |
| SubSaturateMath | unknown | linea | [`0xe51fc5...a08456`](./contracts/linea-59144/0xe51fc5f8e61bab7559208969db34eaece8a08456/) | ⚠️ Unaudited |
| SwapperAdapter | adapter | plasma | 3 deployments: plasma [`0x22babd...34c56f`](./contracts/plasma-9745/0x22babd3e0db07b69bb265e58c52d6a131234c56f/); arbitrum `0xac2e82...cad295`; linea `0xdf0797...a075ff` | ⚠️ Unaudited |
| SwapRouter | adapter | base | 3 deployments: base [`0x23783e...b85666`](./contracts/base-8453/0x23783e62282ca68fd5c3fb45fc7ad01f21b85666/); linea `0x8be024...a5052a`; linea `0xf0e746...7956d1` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | arbitrum | 8 deployments: ethereum `0x955b5a...4679ca`; base `0x77e11d...6e48dc`; plasma `0xb4da8d...fbcbe6`; arbitrum [`0x096f44...33e59a`](./contracts/arbitrum-42161/0x096f44f9fbbe6116de5db5954de776fb8733e59a/); arbitrum `0x0ed955...cde632`; arbitrum `0x11d14d...6f55e7`; arbitrum `0x4dd492...f6cd37`; arbitrum `0x5e4cb1...599da6` | ⚠️ Unaudited |
| SwethLSTCalculator | token | ethereum | 2 deployments: ethereum [`0x60e98e...ce3c9e`](./contracts/ethereum-1/0x60e98e2dac20faab84781076164290cc31ce3c9e/); ethereum `0x7cbbb3...ac7408` | ⚠️ Unaudited |
| SystemRegistry | registry | ethereum | [`0x2218f9...aa4285`](./contracts/ethereum-1/0x2218f90a98b0c070676f249ef44834686daa4285/) | ⚠️ Unaudited |
| SystemRegistryL2 | registry | base | 5 deployments: base [`0x18dc92...371b4e`](./contracts/base-8453/0x18dc926095a7a007c01ef836683fdef4c4371b4e/); arbitrum `0x700915...c86a2f`; arbitrum `0x7af0c2...639b7c`; arbitrum `0xbfd8e6...7b4220`; linea `0x25f26e...a9f980` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | ethereum | 5 deployments: ethereum [`0x027a33...238833`](./contracts/ethereum-1/0x027a3359b803885261b140415873845f72238833/); ethereum `0xe57a2e...f39b20`; plasma `0xf8cda9...699834`; linea `0x795abe...87f494`; linea `0xa287f0...493e46` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | arbitrum | 7 deployments: base `0x8c58af...8b4006`; base `0xb246f6...6192de`; arbitrum [`0x062a72...948127`](./contracts/arbitrum-42161/0x062a72ebb3f4a6c14fa18b2dcf34a8ee90948127/); arbitrum `0x63051c...05e6a1`; arbitrum `0x9b17ef...e08a96`; arbitrum `0xa19d96...44a44c`; arbitrum `0xe7eeb1...96cf99` | ⚠️ Unaudited |
| ThreeCrvLevSwapperV1 | adapter | ethereum | 2 deployments: ethereum [`0x1fc83f...aae530`](./contracts/ethereum-1/0x1fc83f75499b7620d53757f0b01e2ae626aae530/); ethereum `0x6e8093...08d9aa` | ⚠️ Unaudited |
| ThreeCrvOracle | operational_periphery | ethereum | [`0x13f193...24ddab`](./contracts/ethereum-1/0x13f193d5328d967076c5ed80be9ed5a79224ddab/) | ⚠️ Unaudited |
| ThreeCrvSwapperV1 | adapter | ethereum | 2 deployments: ethereum [`0x286ed6...0af7c5`](./contracts/ethereum-1/0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5/); ethereum `0xef9c97...15d70b` | ⚠️ Unaudited |
| ThreeCryptoLevSwapper | adapter | ethereum | 4 deployments: ethereum [`0x36d938...3889bf`](./contracts/ethereum-1/0x36d9386ad4b8636459c365295ddc7e70e33889bf/); ethereum `0x5488fb...f4b9a8`; ethereum `0xe02bf8...067a62`; ethereum `0xe94c44...4551da` | ⚠️ Unaudited |
| ThreeCryptoOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x20915f...0605f1`](./contracts/ethereum-1/0x20915f71474c127e5c3cdc41c75cb21d4e0605f1/); ethereum `0x9732d3...8ad7c9`; ethereum `0xb80dde...7940ee` | ⚠️ Unaudited |
| ThreeCryptoSwapper | adapter | ethereum | 5 deployments: ethereum [`0x0e1ea2...b5bc85`](./contracts/ethereum-1/0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85/); ethereum `0x1dde35...c38d28`; ethereum `0x307f43...c6639f`; ethereum `0x720310...b257c8`; ethereum `0xd794f1...a843cf` | ⚠️ Unaudited |
| TickLens | periphery | linea | [`0x432a52...e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/); ethereum `0xb72b88...fd69be` | ⚠️ Unaudited |
| TimeToken | token | ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| Toke | unknown | ethereum | [`0x2e9d63...a38c94`](./contracts/ethereum-1/0x2e9d63788249371f1dfc918a52f8d799f4a38c94/) | ⚠️ Unaudited |
| TokemakAMO | unknown | ethereum | 2 deployments: ethereum [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/); ethereum `0x8f8273...44d723` | ⚠️ Unaudited |
| TokeMigrationPool | operational_periphery | ethereum | 2 deployments: ethereum [`0xa760e2...8eb930`](./contracts/ethereum-1/0xa760e26aa76747020171fcf8bda108dfde8eb930/); ethereum `0xdb7074...d1e86e` | ⚠️ Unaudited |
| TokenManager | governance | ethereum | 2 deployments: ethereum [`0x6d520c...bd8326`](./contracts/ethereum-1/0x6d520c82cfa8146afe500e6ddd8b39c1d7bd8326/); ethereum `0xffec41...ed5020` | ⚠️ Unaudited |
| TokenMigration | operational_periphery | ethereum | [`0x279c80...ea0a72`](./contracts/ethereum-1/0x279c803e118609591e13e780269cd7f77dea0a72/) | ⚠️ Unaudited |
| TokenTrackerAMO | token | ethereum | 3 deployments: ethereum [`0x1e077b...11a612`](./contracts/ethereum-1/0x1e077b2a6a67f543629c8fccc97229452211a612/); ethereum `0x3f702a...368600`; ethereum `0x4b56b6...3eeb0d` | ⚠️ Unaudited |
| TokenTrackerV2 | token | ethereum | [`0x37336a...4d09ee`](./contracts/ethereum-1/0x37336ad1f3a145c710247e6a14c9acc7f34d09ee/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | ⚠️ Unaudited |
| TokeVotePool | core_logic | ethereum | [`0xc727de...6559e1`](./contracts/ethereum-1/0xc727defdb67974a63832d47ed08dd65cea6559e1/) | ⚠️ Unaudited |
| TopWithdrawMonitor | operational_periphery | ethereum | [`0x727313...97def9`](./contracts/ethereum-1/0x7273138186426119a809ede5d6e00169c997def9/) | ⚠️ Unaudited |
| TracerDAO | unknown | ethereum | [`0x515f28...aa259a`](./contracts/ethereum-1/0x515f2815c950c8385c1c3c30b63adf3207aa259a/) | ⚠️ Unaudited |
| TracerMultisigDAO | governance | ethereum | [`0xa84918...6b6cba`](./contracts/ethereum-1/0xa84918f3280d488eb3369cb713ec53ce386b6cba/) | ⚠️ Unaudited |
| TransferController | governance | ethereum | [`0x9d98a2...6d145e`](./contracts/ethereum-1/0x9d98a2792e78e8975eae54abd7e845f3646d145e/) | ⚠️ Unaudited |
| TransientStorage | unknown | plasma | 3 deployments: plasma [`0x596bec...821254`](./contracts/plasma-9745/0x596bec113eb0a63660a662519fc2f715bc821254/); arbitrum `0xc54851...a30833`; arbitrum `0xedcce7...de9d51` | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 13 deployments: ethereum `0x378ba0...3fbaf8`; ethereum `0x38c279...4736c1`; ethereum `0x3bc59a...2d3671`; ethereum `0x50b82e...80feea`; ethereum `0x7d4a5e...41fc96`; ethereum `0x93b34b...3d25f8`; base `0x0f7485...ec6053`; base `0x277078...901ebf`; base `0x535158...e46ff0`; base `0x9ecdc0...fff6c4`; base `0xad68bd...d3db34`; arbitrum [`0x01890e...744be4`](./contracts/arbitrum-42161/0x01890ea9326d6c2d5941a51473d12f8179744be4/); linea `0xf26431...1bb458` | ⚠️ Unaudited |
| TriCryptoUpdator | unknown | ethereum | [`0xbdaf49...b1632f`](./contracts/ethereum-1/0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f/) | ⚠️ Unaudited |
| TWAMM_AMO | unknown | ethereum | 2 deployments: ethereum [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/); ethereum `0x629c47...a78dc4` | ⚠️ Unaudited |
| UniProxy | unknown | ethereum | 6 deployments: ethereum [`0x1dceb4...00c161`](./contracts/ethereum-1/0x1dceb477e6216ae03252c359d48580822600c161/); ethereum `0x2ac79b...6706db`; ethereum `0x2c5114...01a111`; ethereum `0x785454...7448b3`; ethereum `0x7ab903...0ce316`; ethereum `0xe25811...ce869f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x5fa464...38c688`](./contracts/ethereum-1/0x5fa464cefe8901d66c09b85d5fcdc55b3738c688/); ethereum `0xd4e7a6...647e38` | ⚠️ Unaudited |
| UniV3LiquidityAMO | unknown | ethereum | 4 deployments: ethereum [`0x381430...f8f4e6`](./contracts/ethereum-1/0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6/); ethereum `0xb70a04...764a86`; ethereum `0xc687e6...dbe886`; ethereum `0xef2b08...99751f` | ⚠️ Unaudited |
| UniV3LiquidityAMO_V2 | unknown | ethereum | 2 deployments: ethereum [`0x0e8943...847440`](./contracts/ethereum-1/0x0e894387c073c6f62c9bbded21e33d3062847440/); ethereum `0xc91bb4...363a79` | ⚠️ Unaudited |
| UniV3Swap | unknown | linea | 9 deployments: ethereum `0x106a60...73963d`; ethereum `0x31576c...ee4cf9`; base `0x0915f5...da6e71`; base `0xec306b...30ced9`; plasma `0x90535f...55dcd1`; arbitrum `0x0ca3d0...34bb42`; arbitrum `0xfe10f2...1dbffb`; linea [`0x0093ff...b144c6`](./contracts/linea-59144/0x0093fff32ee2d0469cb00badb9f8d47efbb144c6/); linea `0xae315b...66bcc9` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | base | 2 deployments: base [`0xad1ccb...d4eb7a`](./contracts/base-8453/0xad1ccb0409424a02d7673aa1e568f695cbd4eb7a/); base `0xe4fef2...68ca11` | ⚠️ Unaudited |
| UniV3TWAPOracle | operational_periphery | ethereum | [`0xfa7c66...ce1559`](./contracts/ethereum-1/0xfa7c660683ff22989413256bd57f569562ce1559/) | ⚠️ Unaudited |
| UniversalRouter | adapter | linea | [`0x859744...07826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | ⚠️ Unaudited |
| USTLevSwapper | adapter | ethereum | 2 deployments: ethereum [`0x3f3771...11d864`](./contracts/ethereum-1/0x3f37712726c9e509c5479f13e17cb1033411d864/); ethereum `0x6b44d9...b68793` | ⚠️ Unaudited |
| USTMiddleLayer | unknown | ethereum | 2 deployments: ethereum [`0x908fcb...a54536`](./contracts/ethereum-1/0x908fcbf4cc0cb550cdaf668c94bf75321da54536/); ethereum `0xa2fcda...99fad9` | ⚠️ Unaudited |
| USTOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x4f5126...3268a7`](./contracts/ethereum-1/0x4f51264b07db8b2910e892eeef22460de23268a7/); ethereum `0xbb9997...4f4b86` | ⚠️ Unaudited |
| USTStrategy | core_logic | ethereum | 2 deployments: ethereum [`0xe6191a...2f39e2`](./contracts/ethereum-1/0xe6191aa754f9a881e0a73f2028edf324242f39e2/); ethereum `0xfdf2c2...1a58d7` | ⚠️ Unaudited |
| USTStrategyV2 | core_logic | ethereum | [`0xe0c29b...63d146`](./contracts/ethereum-1/0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146/) | ⚠️ Unaudited |
| USTSwapper | adapter | ethereum | 3 deployments: ethereum [`0x1067c6...13342c`](./contracts/ethereum-1/0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c/); ethereum `0xe45217...5fad2b`; ethereum `0xff498b...baf30b` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x886ce9...62399d`](./contracts/ethereum-1/0x886ce997aa9ee4f8c2282e182ab72a705762399d/); ethereum `0x8f5930...95da47` | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | operational_periphery | ethereum | 3 deployments: ethereum [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/); ethereum `0x95702e...8b4c0f`; ethereum `0xc3eb88...4d0331` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | operational_periphery | ethereum | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/); ethereum `0xed2647...e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | 2 deployments: ethereum [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/); ethereum `0xfe5113...763b4d` | ⚠️ Unaudited |
| Visor | unknown | ethereum | 7 deployments: ethereum [`0x00ae28...e17b0d`](./contracts/ethereum-1/0x00ae28c731e1fb152907a2e79d033bd638e17b0d/); ethereum `0x08fb62...de76e9`; ethereum `0x17cc4e...cd2f79`; ethereum `0x8398a3...0e38f2`; ethereum `0x8daed2...c7752c`; ethereum `0xe2696f...94502d`; ethereum `0xf62dff...e16d04` | ⚠️ Unaudited |
| VisorFactory | registry | ethereum | [`0xae0323...e6f20a`](./contracts/ethereum-1/0xae03233307865623aaef76da9ade669b86e6f20a/) | ⚠️ Unaudited |
| Vote | unknown | base | [`0x388cff...8d0fb9`](./contracts/base-8453/0x388cff4079e382fd7c11d699eb183882868d0fb9/) | ⚠️ Unaudited |
| VoteModule | unknown | linea | 2 deployments: linea [`0xedd7cb...9c15b1`](./contracts/linea-59144/0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1/); linea `0xf70dc8...631ee4` | ⚠️ Unaudited |
| Voter | unknown | linea | 10 deployments: linea [`0x1dac11...a94046`](./contracts/linea-59144/0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046/); linea `0x4961f7...fc7679`; linea `0x56ebcf...dd256f`; linea `0x5f26a6...06fc19`; linea `0x706e4a...f157e1`; linea `0x942117...f889c1`; linea `0x982c01...caa125`; linea `0xa0b937...d4f116`; linea `0xade917...9d56d1`; linea `0xe8e8e8...2f8468` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 213 deployments: ethereum [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/); ethereum `0x01632e...d5dc35`; ethereum `0x01b36f...b62ca1`; ethereum `0x02d341...1b285c`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x06534b...15fa35`; ethereum `0x071c66...ee8f4b`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x095915...21c9ae`; ethereum `0x096723...1c15ca`; ethereum `0x09eb0a...0339b9`; ethereum `0x09f4b8...9d4c05`; ethereum `0x0a53fa...e01e8e`; ethereum `0x0b5b92...3b0453`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f7cd0...2596dc`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x12220a...ac9b34`; ethereum `0x1337be...7963ec`; ethereum `0x13e987...dbd781`; ethereum `0x174baa...f1ca49`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1b0d34...ceac33`; ethereum `0x1b3e14...573e5b`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x1f1818...255015`; ethereum `0x213be3...2d5bbe`; ethereum `0x2393c3...548011`; ethereum `0x24d937...ae2262`; ethereum `0x2db0e8...e72840`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2ef1bc...656bc3`; ethereum `0x2f956e...5e027f`; ethereum `0x2fe94e...f9d614`; ethereum `0x32fb6b...3f4906`; ethereum `0x331af2...f9f785`; ethereum `0x35796d...c29f39`; ethereum `0x3669c4...fce737`; ethereum `0x368736...4ac0bd`; ethereum `0x36965b...1f1e80`; ethereum `0x39eac4...7c2bb5`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x3ef6a0...38e604`; ethereum `0x40fd58...ea56a8`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x44ade9...9166ce`; ethereum `0x462253...22ca39`; ethereum `0x466c8f...bd3f96`; ethereum `0x4a4d78...025c3f`; ethereum `0x4aacf3...170e33`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x50103e...a89b1f`; ethereum `0x50b085...068494`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x5544a0...4e0ba0`; ethereum `0x55858a...48e7ee`; ethereum `0x55aa9b...1ce7a9`; ethereum `0x55b916...e29822`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x59e132...44da0e`; ethereum `0x5ae854...34d846`; ethereum `0x5b5cfe...003858`; ethereum `0x5bd47e...2466b8`; ethereum `0x5f8908...f79fe6`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x6326de...d9b43e`; ethereum `0x640b8c...2a629e`; ethereum `0x64448b...b7136e`; ethereum `0x6523ac...d963f1`; ethereum `0x6600e9...b86afb`; ethereum `0x67a021...90f9fa`; ethereum `0x6955a5...c11f15`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x6dc22c...de1186`; ethereum `0x70f1ce...028649`; ethereum `0x786b37...301a58`; ethereum `0x78cf25...286470`; ethereum `0x7d8644...6b2b4c`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x7f55dd...6bdbef`; ethereum `0x7f9012...39f353`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x8101e6...1b7162`; ethereum `0x824f13...77a637`; ethereum `0x82c1cc...75b7ac`; ethereum `0x83f252...3744d7`; ethereum `0x8474dd...dec9f6`; ethereum `0x86a91b...b31369`; ethereum `0x874210...2e9af3`; ethereum `0x88855c...e915be`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x8c1ab7...d7de9b`; ethereum `0x8cf8af...f0d72b`; ethereum `0x8db91a...21faca`; ethereum `0x8e0c00...5b0d16`; ethereum `0x8e764b...829809`; ethereum `0x8f942c...2250d0`; ethereum `0x90bb60...245840`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94c866...5f6287`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x96d7bc...cfe8d9`; ethereum `0x97e276...19b787`; ethereum `0x9b52f1...409cc3`; ethereum `0x9b762e...11d5ec`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa52ee2...dd8dda`; ethereum `0xa549ff...9cf3cf`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa42c0...b1ff81`; ethereum `0xaa82ca...ddc78c`; ethereum `0xaad072...27c21e`; ethereum `0xaad661...6f60c9`; ethereum `0xabadfd...677d2e`; ethereum `0xad4753...7c1ad7`; ethereum `0xadf698...f6e205`; ethereum `0xaf8e83...52639a`; ethereum `0xb0a071...f52f2d`; ethereum `0xb174da...125c81`; ethereum `0xb4277e...331eb1`; ethereum `0xb4eb45...89b82e`; ethereum `0xb9705e...019b14`; ethereum `0xb9fc15...c990d4`; ethereum `0xba6d79...e6c586`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc2b1df...0bf627`; ethereum `0xc45b2e...93c756`; ethereum `0xc4c78b...ecd630`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc619ff...4ba99d`; ethereum `0xc620aa...d05655`; ethereum `0xc64f26...e7c47f`; ethereum `0xc6a846...7c9a52`; ethereum `0xc6c09b...53bc5a`; ethereum `0xc8418a...adc5b0`; ethereum `0xc85b38...4a5dd9`; ethereum `0xcb75a1...31f0a6`; ethereum `0xcee60c...656f3a`; ethereum `0xcfbd5a...2b58c0`; ethereum `0xd1602f...b0c6a2`; ethereum `0xd16ea3...5cd8c9`; ethereum `0xd1ebef...c17d67`; ethereum `0xd30dd0...225ac8`; ethereum `0xd35b58...de5bf6`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd66290...588b5d`; ethereum `0xd6930b...237594`; ethereum `0xd69ac8...294890`; ethereum `0xd782eb...849394`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xdd0e10...8774b8`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xdfc7ad...492aee`; ethereum `0xe1ea5d...fd0969`; ethereum `0xe49fad...a93fe1`; ethereum `0xe4b658...cfb3e6`; ethereum `0xe4c64b...069527`; ethereum `0xe5f41a...b5a2a6`; ethereum `0xe5f4b8...2e44de`; ethereum `0xe64608...4b552c`; ethereum `0xe7a24e...d7d171`; ethereum `0xe8060a...5da85f`; ethereum `0xeb16ae...65a733`; ethereum `0xec9189...8a6aa6`; ethereum `0xecaaec...f29d9e`; ethereum `0xecb456...e9b347`; ethereum `0xedf2c5...4fe242`; ethereum `0xefe30d...4d62e8`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf3b648...ce2e24`; ethereum `0xf5194c...c1949f`; ethereum `0xf53cc5...08e3de`; ethereum `0xf6bdc2...8cb1c9`; ethereum `0xf7de9c...19de09`; ethereum `0xf8b8db...47ca1e`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xf9fc73...5985cd`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d`; ethereum `0xfe6251...1e2e93` | ⚠️ Unaudited |
| WbtcLevSwapper | adapter | ethereum | [`0x6a5b5e...5c0da8`](./contracts/ethereum-1/0x6a5b5e025f2febf11646050e28240279215c0da8/) | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x292a6f...5b3f0a`](./contracts/ethereum-1/0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a/); ethereum `0x750e98...d55351` | ⚠️ Unaudited |
| WbtcOracleMig | operational_periphery | ethereum | [`0xdd1052...20b6b0`](./contracts/ethereum-1/0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0/) | ⚠️ Unaudited |
| WbtcSwapper | adapter | ethereum | [`0x6c6a54...19febf`](./contracts/ethereum-1/0x6c6a54a124e7b9859014425b8c0142ee0b19febf/) | ⚠️ Unaudited |
| WethController | governance | ethereum | [`0x3eb1b5...dc0a23`](./contracts/ethereum-1/0x3eb1b58dbe245b89c8494b8cff42b8ddbadc0a23/) | ⚠️ Unaudited |
| WethLevSwapper | adapter | ethereum | [`0x205d52...d7e0f5`](./contracts/ethereum-1/0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5/) | ⚠️ Unaudited |
| WethOracle | operational_periphery | ethereum | [`0x02dcc3...56557a`](./contracts/ethereum-1/0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a/) | ⚠️ Unaudited |
| WethSwapper | adapter | ethereum | [`0xfb81be...245437`](./contracts/ethereum-1/0xfb81be4bde317d32ec6934db87e05cfdc5245437/) | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | ethereum | [`0xe0d200...183f2b`](./contracts/ethereum-1/0xe0d2007f6f2a71b90143d6667257d95643183f2b/) | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | ethereum | [`0x369d81...d4da07`](./contracts/ethereum-1/0x369d81cf263abc7ee567d8836a39234141d4da07/) | ⚠️ Unaudited |
| Whitelister | unknown | ethereum | 3 deployments: ethereum [`0x0cc311...79d90a`](./contracts/ethereum-1/0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a/); ethereum `0x54a8c6...93de9e`; ethereum `0xcd7167...4a4b6f` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | linea | 5 deployments: ethereum `0x865a21...a5bb15`; base `0x7bce7f...1d9d4d`; plasma `0x6da532...75acda`; arbitrum `0xc5827c...c678a9`; linea [`0x02a50c...e9352c`](./contracts/linea-59144/0x02a50caf707ed8e99545f60b82e0c1ce1ee9352c/) | ⚠️ Unaudited |
| WrapZeroCalculator | unknown | ethereum | 9 deployments: ethereum [`0x148cc2...71b298`](./contracts/ethereum-1/0x148cc2553c7f3d7db1825ff893f8f433a871b298/); ethereum `0x35d305...ad4578`; ethereum `0x6daa9d...57e19d`; ethereum `0x7a4818...944d87`; ethereum `0x9cd467...430dfe`; ethereum `0xbc2d91...0c2899`; ethereum `0xda5bdd...8095d3`; ethereum `0xf5bb0a...323157`; ethereum `0xfd4026...1a4f2b` | ⚠️ Unaudited |
| WstETHEthOracle | operational_periphery | ethereum | [`0x31fec5...5af883`](./contracts/ethereum-1/0x31fec5a6c6bbf907144e6f81f60292ba7a5af883/) | ⚠️ Unaudited |
| xGamma | unknown | ethereum | [`0x268050...747d8c`](./contracts/ethereum-1/0x26805021988f1a45dc708b5fb75fc75f21747d8c/) | ⚠️ Unaudited |
| XRex | unknown | linea | 2 deployments: linea [`0x58d034...146997`](./contracts/linea-59144/0x58d034c3c22851e9dc8fc2f07055659cf9146997/); linea `0xc93b31...f366cc` | ⚠️ Unaudited |
| YVCrvStETHLevSwapper2 | adapter | ethereum | 3 deployments: ethereum [`0x39abc0...a7c21d`](./contracts/ethereum-1/0x39abc0483046d7ad4957c8ada6e0787824a7c21d/); ethereum `0xc98531...3c6c17`; ethereum `0xe4e821...3ee2da` | ⚠️ Unaudited |
| YVCrvStETHOracle2 | operational_periphery | ethereum | [`0xeae436...dd84eb`](./contracts/ethereum-1/0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb/) | ⚠️ Unaudited |
| YVCrvStETHSwapper2 | adapter | ethereum | 2 deployments: ethereum [`0xa6e97d...7202e7`](./contracts/ethereum-1/0xa6e97d76d21ae347b13c343508826496b07202e7/); ethereum `0xcbd7fd...a65264` | ⚠️ Unaudited |
| ZeroCalculator | unknown | arbitrum | 10 deployments: ethereum `0x3818d3...736d28`; ethereum `0x88761c...6e6b4e`; base `0x293f40...059144`; base `0x52282f...2738e2`; base `0x74b6cc...c76902`; plasma `0x2be9f3...beec61`; plasma `0xf58d7b...3da687`; arbitrum [`0x254d87...e6c563`](./contracts/arbitrum-42161/0x254d871685cac3b4a3b50f20e256fb4a9ae6c563/); arbitrum `0xaabc17...6197f5`; linea `0x94f20c...af56fe` | ⚠️ Unaudited |
| ZeroExSwapper | adapter | linea | [`0x69c6fb...c0440e`](./contracts/linea-59144/0x69c6fbba613dcf20cfa42aec902572d3fcc0440e/) | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | base | 6 deployments: ethereum `0x655fa9...b8aa28`; base [`0x015546...a1d14d`](./contracts/base-8453/0x01554657fa8c37161cad0fdc090e6a26aea1d14d/); plasma `0x6b7610...3d5d48`; arbitrum `0x42ecca...d23713`; arbitrum `0xc14caf...6133d3`; linea `0xd7c964...b24841` | ⚠️ Unaudited |
| ZkAddressRegistry | registry | ethereum | [`0x37076f...3d9eb2`](./contracts/ethereum-1/0x37076f886de8054d12a12db6253e871f6d3d9eb2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GaugeFactory | unknown | linea | 2 deployments: linea [`0x1ddf72...7944b3`](./contracts/linea-59144/0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3/); linea `0xd766d9...c4a200` | ⚠️ Unaudited (bytecode match) |
| GaugeV3 | operational_periphery | linea | 7 deployments: linea [`0x18068c...3b0b25`](./contracts/linea-59144/0x18068c050d237d46310f59f40559bd0c6b3b0b25/); linea `0x499aed...dd8fcb`; linea `0x84b465...04201b`; linea `0x9270d3...f81a74`; linea `0x9d5c0e...dc9cb4`; linea `0xeba9eb...eacb40`; linea `0xfb8561...c4950d` | ⚠️ Unaudited (bytecode match) |
| UpgradeableAutopoolFactory | registry | linea | 13 deployments: ethereum `0x2567c9...05e59f`; ethereum `0x2b2ca9...1ceb72`; ethereum `0x866cf4...11c4ce`; ethereum `0x90f74a...95cd35`; base `0x02fe08...e44d89`; base `0xc1e701...a34f79`; base `0xd0446a...1bd4e4`; base `0xdbb093...c2dc21`; base `0xdd08e4...b32b9e`; base `0xdf6dc6...699cd8`; arbitrum `0x9f76d5...08d7fb`; arbitrum `0xc08f39...a917a7`; linea [`0x01890e...744be4`](./contracts/linea-59144/0x01890ea9326d6c2d5941a51473d12f8179744be4/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (161)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x07a5fb...d30a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x085c11...2147a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0882ab...e7da64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x093eda...8d5337` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a2290...dd2451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b5161...cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d0324...78beb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14458f...c138a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16243c...962468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16fff7...f054c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x17e870...4ff07f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ac802...73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c5868...ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d837a...a889b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x239c95...c32e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x240eba...19bf37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2650d4...72e28f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c5354...bf8d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d363d...d55111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2dc7cd...dcb677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ffffb...b173cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30c271...188841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32d726...304c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x386035...72a673` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x395a34...32c3f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d5643...f5defa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ddb00...568a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f16df...22d71b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x422cd6...c7495b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44b95d...dc84aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x469561...cb0402` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e7cf3...67314b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50dc35...2cf9ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5154e7...e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x542572...572997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54e8a2...a17a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58258a...cfcf62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58edd1...daa754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c99be...0aeb05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f13ab...9bc520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5fc6b5...62478f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x602504...7a2795` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x650a36...b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65f0a0...227711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66ded3...d80176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66e323...476320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6dbe14...3f11f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f4c7e...73f8b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7228d6...776c26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x767789...04b9ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a7c5b...08d31b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f3c6b...a09116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8545d3...53eef5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87fab8...380f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88b2ab...08ae6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8cccdb...3e6a1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dfa3c...a5753d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90cb8b...531a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x914cb6...424499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94f13c...276df8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x966aa4...9d9705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96ad3a...0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96bac9...a8ca62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97f9a6...2dcf71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98801b...b33082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98ddbb...4130cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9aa0eb...0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9be019...558103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e7a52...01b75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f1c42...289c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa13d78...852647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3cce9...b947bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5200b...29a09b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6623d...8d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa706a7...ab5ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabadfe...1e1907` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac6714...93b27e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaedc80...b5cc14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb81179...e556e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2df2d...6b37e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3ffc7...abf0e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc63b77...01bd87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc805d4...bcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8e257...44da8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc519f...21a753` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd123c4...785967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd223f6...35bd48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd54d2b...695bd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd710df...221f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd74773...58135d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd85bd1...345413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8e4bb...85e6b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd90d7c...b483c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddd877...c62b27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0ec9b...cb850a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe14833...100ad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1c321...224f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2470c...512f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe25fbb...a3f017` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2968d...66ff97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5d263...92eeac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe621bb...663a8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6dbd1...835729` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb85dd...2b77a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xecaa8d...385e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee04bd...fbc3cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeea5ba...68916f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeee291...cbe213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1000d...866ccc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1ba3e...0ea689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf248aa...972e86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf391a6...72fa1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5b251...76979a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf721b9...9ac710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9b1f1...7c9161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff46eb...9086dc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0387a5...c17d0f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fec72...afa684` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e2fd1...572fbd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x244717...1b3b73` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x249acd...0a40e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2f1663...ed5697` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x68c58d...4c5bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b229e...724b49` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x819dbf...00f8df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x95a2d8...cc34c7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc285c8...a2e696` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd25751...c97332` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf73428...3305ca` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x0d8ea4...47668c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x0da0e8...54e1dc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x162f49...b4b30f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x3540f2...654834` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x459386...067ccd` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x4dd032...77e097` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x58f411...3773a3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x7bc604...560397` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x7bea14...ebe83d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x7de076...ffc1f4` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x8ccd47...00347d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x8dbad4...ae72e8` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xac93ee...be4113` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xe3063e...8246a5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xfc2337...8e5106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2218f9...aa4285` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6aec50...339c2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbf4fc6...7373e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x09e53a...83b9e7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0c1de6...167d8e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x10e5e0...cab7bc` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2acbdb...19d2a6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x35e755...ad5a69` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x631a30...4637f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7601df...7497b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x762e61...7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x88c987...d56756` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x971634...461ee0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb39939...5f11f4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd0dad8...1c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf36208...f1c721` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view?usp=sharing) | Hexens | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view) | Hexens | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://certora.cdn.prismic.io/certora/Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf) | Certora | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/Certora/tokemak-v2-core-fv/blob/main/Report.md) | Certora | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2Fm9vasMSC35JbnaqfyPVN%2FTokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2FauBJzmmsZIR0afW4AD7c%2FTokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view) | Halborn | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0a2b94...114e56`](./contracts/ethereum-1/0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56/) | AutopoolETH | core_logic | $36,195,621.77 | Verified native implementation with $36,195,621.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x03825c...c5bf0d`](./contracts/linea-59144/0x03825c8c817ff49a208c9c20365c002418c5bf0d/) | AutopoolMainRewarder | core_logic | $28,417,212.12 | Verified native implementation with $28,417,212.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0139b3...e6f15a`](./contracts/ethereum-1/0x0139b34012a6639e896b883901b7dc1bb6e6f15a/) | Pool | core_logic | $387,045.65 | Verified native implementation with $387,045.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x134c05...c8157f`](./contracts/ethereum-1/0x134c0591183e9c8a39250a9a04e6f8585bc8157f/) | APWToken | token | $156,038.20 | Verified native implementation with $156,038.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x116b3e...bf8f3e`](./contracts/ethereum-1/0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e/) | ERC20DestinationVault | core_logic | $111,702.79 | Verified native implementation with $111,702.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27a9c1...7621ad`](./contracts/arbitrum-42161/0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad/) | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78a7c4...898451`](./contracts/base-8453/0x78a7c45e3cc7b9567b4803aeaf9b33bc8c898451/) | AutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4fe791...b1fece`](./contracts/base-8453/0x4fe7916a10b15dadefc59d06ac81757112b1fece/) | AutopoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24d783...069abb`](./contracts/ethereum-1/0x24d783e5ed8e4a507583e0c79abf489051069abb/) | CbethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc80373...00ac38`](./contracts/ethereum-1/0xc803737d3e12cc4034dde0b2457684322100ac38/) | DefiRound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x66b9eb...6e258c`](./contracts/linea-59144/0x66b9eba2cef184dfaf3b9e11b104be0a1c6e258c/) | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37de6f...0ff124`](./contracts/ethereum-1/0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124/) | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd9251...625a3d`](./contracts/ethereum-1/0xdd92511f1fbe5de911e22a0247ba8c212d625a3d/) | EthPerTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x578317...d68dfe`](./contracts/base-8453/0x57831780565ae1526ed1cc2296c1143b3ad68dfe/) | EthPerTokenStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2757f5...5b0c55`](./contracts/ethereum-1/0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55/) | ETHxLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c50b...022975`](./contracts/ethereum-1/0x17c50b9fba151f5f88618dae6c394bd731022975/) | ExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8607ba...85f862`](./contracts/ethereum-1/0x8607ba6540af378cba64f4e3497fbb2d1385f862/) | IncentivePricingStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20ea2f...616f76`](./contracts/ethereum-1/0x20ea2f2ecf36bcb6df086d923a120496dc616f76/) | MessageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa698a9...a99402`](./contracts/arbitrum-42161/0xa698a94c0dce389b862f58b08f618a981ea99402/) | OneToOneUSDBackingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cc439...257b1b`](./contracts/ethereum-1/0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b/) | OsethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c9b7...06296a`](./contracts/ethereum-1/0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a/) | PxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x327966...12267e`](./contracts/base-8453/0x32796698388fbc64281dea9fc4070df80a12267e/) | ReceivingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038516...90fac1`](./contracts/ethereum-1/0x038516cb9bbc0572c2d55896ce75f31fab90fac1/) | RethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114ca0...cefa86`](./contracts/ethereum-1/0x114ca0dc51abd118125f84d15f87e01e7dcefa86/) | RsethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe861c6...15b90f`](./contracts/ethereum-1/0xe861c6eb5376ada41bcc238080439724fe15b90f/) | RswethLRTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05abaa...1f23f4`](./contracts/arbitrum-42161/0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4/) | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x819806...bc917c`](./contracts/ethereum-1/0x8198069f1709addc6a162c9433665776e5bc917c/) | StatsCalculatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x22dd21...b217d2`](./contracts/base-8453/0x22dd2189728b40409476f4f80ca8f2f6bdb217d2/) | StatsCalculatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23783e...b85666`](./contracts/base-8453/0x23783e62282ca68fd5c3fb45fc7ad01f21b85666/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096f44...33e59a`](./contracts/arbitrum-42161/0x096f44f9fbbe6116de5db5954de776fb8733e59a/) | SwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2218f9...aa4285`](./contracts/ethereum-1/0x2218f90a98b0c070676f249ef44834686daa4285/) | SystemRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18dc92...371b4e`](./contracts/base-8453/0x18dc926095a7a007c01ef836683fdef4c4371b4e/) | SystemRegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x027a33...238833`](./contracts/ethereum-1/0x027a3359b803885261b140415873845f72238833/) | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa760e2...8eb930`](./contracts/ethereum-1/0xa760e26aa76747020171fcf8bda108dfde8eb930/) | TokeMigrationPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 44 |
| standard_library | 0 |
| needs_review | 484 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11542] {% embed url="<>" %}
- [11543] {% embed url="<>" %}
- [11544] {% embed url="<>" %}
- [11545] {% embed url="<>" %}
- [11546] {% embed url="<>" %}
- [11547] {% embed url="<>" %}
- [11548] {% embed url="<>" %}
- [11549] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
