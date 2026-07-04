# Agentic Audit Brief: AUTOfinance

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 47.5% over 90 days

## Project Overview

- Project: AUTOfinance (`autofinance`)
- Website: [https://www.auto.finance](https://www.auto.finance)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-07-03T21:05:31.953Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, base, ethereum, linea, plasma, sonic
- Contract surface: 423 unique implementations (1521 raw deployments)
- DeFi Llama TVL: $31,903,043.62
- On-chain TVL (included contracts): $110,603,707.78
- TVL by chain: Ethereum $102,815,751.84 | Base $6,206,560.28 | Arbitrum $1,581,272.34 | Linea $123.22 | Plasma $0.10

## Project Description

Yield. Structurally: 288 project-authored contract(s) across 6 chain(s); 4 ERC4626 vaults, 47 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 11 functional families. Its contracts share 50 common project-authored base contract(s) (systemcomponent, securitybase, curvedestinationvault). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 1574; live-surface contracts included: 1514 (1026 live, 488 unknown).
- Excluded by liveness: 60 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/283 (0.4%)
- Deployed-live implementations: 283 of 423 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/334
- Verified + Unaudited implementations: 330
- Verified by bytecode match: 3
- Unverified implementations: 89
- Unique implementations: 423
- Raw deployments: 1521
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $110,603,707.78
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 0.4% (Certora)
- Note: This protocol is classified as [transitioning]. ASD of $110,603,707.78 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 1 | 0.3% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NavTracking | unknown | linea | n/a | [`0x9d9118...8b2046`](./contracts/linea-59144/0x9d91184326b1b43cca0039523ed20a4bc08b2046/) | ✅ Audited |

### ⚠️ Verified + Unaudited (330)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x02e215...41d5b3`](./contracts/ethereum-1/0x02e2151d4f351881017abdf2dd2b51150841d5b3/); ethereum `0x0a7604...e70f03`; ethereum `0x7e2b9b...81ad4a`; ethereum `0x7e8808...717b02`; ethereum `0xb900ef...209b2e`; ethereum `0xf27afa...d669cb` | ⚠️ Unaudited |
| OlympusERC20Token | token | ethereum | n/a | [`0x383518...14a899`](./contracts/ethereum-1/0x383518188c0c6d7730d91b2c03a03c837814a899/) | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | linea | n/a | 8 deployments: ethereum `0x60882d...d1755e`; ethereum `0x726104...b6c27b`; ethereum `0xe041b3...5456f2`; ethereum `0xf59086...26e716`; base `0x4103a4...630595`; base `0x69a63d...3e0522`; arbitrum `0xf6cc56...b09540`; linea [`0x03825c...c5bf0d`](./contracts/linea-59144/0x03825c8c817ff49a208c9c20365c002418c5bf0d/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AutopoolETH | unknown | sonic | n/a | 29 deployments: ethereum `0x0a2b94...114e56`; ethereum `0x1c2aa6...7c821a`; ethereum `0x1da0b3...691e61`; ethereum `0x35911a...cd3e5a`; ethereum `0x558d67...61ef7a`; ethereum `0x824b39...439c66`; ethereum `0xa1f351...b50dc1`; ethereum `0xb0a44f...3f428a`; ethereum `0xcc1af2...49c1ea`; ethereum `0xd4ba03...870568`; ethereum `0xf90bb2...367281`; ethereum `0xfb2ebd...ad0695`; sonic [`0x0591c1...74eb4d`](./contracts/sonic-146/0x0591c1f3e0d587f88261509c0f8295ce8474eb4d/); sonic `0x67da05...31fe06`; sonic `0x84c8c1...2fd55e`; sonic `0x9075ec...187c2f`; sonic `0xfe0663...7aa92e`; base `0x2ab4a3...6efdf9`; base `0x375c79...f87235`; base `0x40ed41...45d381`; base `0x6e2cb0...caf85c`; base `0xaadf01...6e0404`; base `0xc6bc14...985ef1`; plasma `0xd0cf0c...cc5821`; arbitrum `0x12db19...ff66c3`; arbitrum `0xa1ecbb...768510`; arbitrum `0xdeb9a2...d4e0ee`; linea `0x60a9b4...9ec01c`; linea `0xc9db15...195e7b` | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x2b0813...93eb78`](./contracts/ethereum-1/0x2b08137beabd2454ad3631deb754f97c5c93eb78/); ethereum `0x3f55ee...edb7f9`; ethereum `0x5c6aeb...d45126`; ethereum `0x9fb4a7...dff483` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | arbitrum | n/a | 15 deployments: ethereum `0x8f84c9...3a0f8f`; ethereum `0xf6c131...6b32d7`; base `0x99ff2b...a9da64`; base `0xcb52d8...09d136`; base `0xfaa818...2a652d`; plasma `0x5b2cd1...ffd68c`; plasma `0x5dd8e6...7f905b`; plasma `0xf07c1d...49a1d1`; arbitrum [`0x1975b2...9b20bb`](./contracts/arbitrum-42161/0x1975b2d4c525587a50d431b68634067de29b20bb/); arbitrum `0x2b8c97...414127`; arbitrum `0x40454f...aa2f74`; arbitrum `0x5a4a23...565331`; arbitrum `0xc3350f...a9fb69`; arbitrum `0xd70f87...d6c74b`; arbitrum `0xdedb00...d2fb40` | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | n/a | [`0xa693b1...ee87a5`](./contracts/ethereum-1/0xa693b19d2931d498c5b318df961919bb4aee87a5/) | ⚠️ Unaudited |
| EthPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xb104a7...8246d5`](./contracts/ethereum-1/0xb104a7fa1041168556218ddb40fe2516f88246d5/); ethereum `0xd3d13a...2a2f36` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 22 deployments: ethereum [`0x03dccc...2d360d`](./contracts/ethereum-1/0x03dcccd17cc36ee61f9004bcfd7a85f58b2d360d/); ethereum `0x04bda0...0e860d`; ethereum `0x061aee...b2a7e7`; ethereum `0x0ce34f...fdfb75`; ethereum `0x15a629...b79415`; ethereum `0x1b429e...192fd3`; ethereum `0x2e9f9b...bd4fed`; ethereum `0x2fc6e9...ad22e1`; ethereum `0x41f6a9...b00263`; ethereum `0x482258...e6b03d`; ethereum `0x721150...ad4b4c`; ethereum `0x808d3e...ed5311`; ethereum `0x8858a7...61faa3`; ethereum `0x8d2254...d97832`; ethereum `0x94671a...20efb2`; ethereum `0x9eee9e...9797a3`; ethereum `0xadf15e...81e655`; ethereum `0xd3b5d9...f9aa84`; ethereum `0xd899ac...5fc03e`; ethereum `0xdc0b02...9709b0`; ethereum `0xeff721...ffc8de`; ethereum `0xf49764...629777` | ⚠️ Unaudited |
| DepositToken | token | ethereum | n/a | 2 deployments: ethereum [`0x117a0b...23560c`](./contracts/ethereum-1/0x117a0bab81f25e60900787d98061ccfae023560c/); ethereum `0xcb6d87...e7ce74` | ⚠️ Unaudited |
| SiloVaultWrapper | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x0e80f6...a47dc6`](./contracts/ethereum-1/0x0e80f6db7fc8e5966828eae36874b62dc8a47dc6/); ethereum `0x1e308f...58e4d1`; ethereum `0x78910c...3d55cc`; ethereum `0x851c31...779f8e`; ethereum `0xb07168...114f3f`; ethereum `0xb0bb32...3a6af0`; ethereum `0xd065e6...76fe68` | ⚠️ Unaudited |
| TracerToken | token | ethereum | n/a | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| APWToken | token | ethereum | n/a | 2 deployments: ethereum [`0x134c05...c8157f`](./contracts/ethereum-1/0x134c0591183e9c8a39250a9a04e6f8585bc8157f/); ethereum `0x4104b1...7660c8` | ⚠️ Unaudited |
| ERC20DestinationVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x116b3e...bf8f3e`](./contracts/ethereum-1/0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e/); ethereum `0x8b025d...1ad095`; ethereum `0xaeb549...fb97c1`; ethereum `0xb6b90d...d1362e`; sonic `0x3058da...261b2d`; base `0xbc6128...c6c35c` | ⚠️ Unaudited |
| MYCToken | token | ethereum | n/a | [`0x4b1300...eaf5ba`](./contracts/ethereum-1/0x4b13006980acb09645131b91d259eaa111eaf5ba/) | ⚠️ Unaudited |
| ERC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb9200c...f2070d`](./contracts/ethereum-1/0xb9200c2aa4053102b984806c63d67e21b8f2070d/); ethereum `0xf93842...72e91e` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | base | n/a | 21 deployments: ethereum `0x067cb9...8364ad`; ethereum `0x20d762...5885b9`; ethereum `0x2795b6...3ae6b6`; ethereum `0x76187c...c18d9d`; ethereum `0x9491a1...6f3690`; ethereum `0x952d7a...6d2f5d`; ethereum `0x9cf7e7...80433d`; ethereum `0xace0eb...b36704`; ethereum `0xcc97cc...c97919`; ethereum `0xd02b50...15b6f9`; sonic `0xaf6f21...30e10c`; sonic `0xf5a106...b09ec0`; base [`0x044e16...81b776`](./contracts/base-8453/0x044e1609efb154150436cec9d03e95847f81b776/); base `0x5ae89e...da9e20`; base `0xfbe1ce...b992c1`; base `0xfff192...a3a304`; plasma `0x673f9b...759fbb`; arbitrum `0x371b3c...b29488`; arbitrum `0x3dbbb7...56fce9`; linea `0x796115...e6a9dd`; linea `0xe085d4...d62a03` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | arbitrum | n/a | 11 deployments: ethereum `0x588354...940406`; plasma `0x5dffae...602ee7`; plasma `0x714ffc...8ab8e9`; plasma `0xde4d6c...f84855`; plasma `0xfc962a...2e5069`; arbitrum [`0x00e52a...9c5f4a`](./contracts/arbitrum-42161/0x00e52ae3cfc140fdf3dff8932500d4ad919c5f4a/); arbitrum `0xa087e1...e7d7bb`; arbitrum `0xebcff8...864991`; linea `0x68e93d...de15f7`; linea `0xbd353d...45e7e2`; linea `0xd96d54...57f3fd` | ⚠️ Unaudited |
| AaveV2Swapper | adapter | ethereum | n/a | [`0x5067e4...faace2`](./contracts/ethereum-1/0x5067e4ebac0f0984d39b02808d2ad84625faace2/) | ⚠️ Unaudited |
| AaveV3Swapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x91c008...8c95d6`](./contracts/ethereum-1/0x91c008853fdfadc8266d55ec11843dd3d58c95d6/); ethereum `0x9d6616...1f0b44` | ⚠️ Unaudited |
| AccessController | governance | arbitrum | n/a | 9 deployments: ethereum `0x37767c...742df6`; sonic `0x7ae9ff...0e67f5`; sonic `0xb4b6b1...7b4dbc`; sonic `0xb99357...a5d006`; base `0x20dfa8...1f27e8`; arbitrum [`0x09006e...ca9312`](./contracts/arbitrum-42161/0x09006e65787c8389b230758f23f66b2ca3ca9312/); arbitrum `0x7ec410...4fd6b2`; arbitrum `0xdd5b72...2e00ca`; linea `0xf4425c...b76a04` | ⚠️ Unaudited |
| AccessHub | unknown | linea | n/a | 26 deployments: linea [`0x00cc29...423b67`](./contracts/linea-59144/0x00cc296010664ff909aa90795a919046d1423b67/); linea `0x09aaa5...fbea2a`; linea `0x09d128...fc72a3`; linea `0x0cc5a7...2d666c`; linea `0x0d8ff3...e66422`; linea `0x3fd55d...d6d071`; linea `0x44f551...22f508`; linea `0x51a269...e80006`; linea `0x55cab4...4b40b1`; linea `0x582f3f...031c7a`; linea `0x5aae85...da036b`; linea `0x5e2f4d...e4b4e7`; linea `0x6a0673...1c99c1`; linea `0x7026f9...8dd004`; linea `0x7ac793...8c9026`; linea `0x8af8a0...71b734`; linea `0x8e394f...5b49e1`; linea `0x93948c...4351ed`; linea `0x967a7a...37854c`; linea `0x9ce2fb...709346`; linea `0xb61396...31a7b6`; linea `0xb66d0c...9fd40b`; linea `0xbb100b...008e31`; linea `0xd434fe...06805e`; linea `0xe345ad...ddc6bc`; linea `0xe6d0d3...cb5298` | ⚠️ Unaudited |
| AccessHub | unknown | linea | n/a | [`0x683035...8ed5f3`](./contracts/linea-59144/0x683035188e3670fda1def2a7aa5742dea28ed5f3/) | ⚠️ Unaudited |
| AccToke | unknown | ethereum | n/a | [`0xa374a6...7c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | ⚠️ Unaudited |
| AccToke | unknown | sonic | n/a | 2 deployments: sonic [`0x0cb44f...5f907b`](./contracts/sonic-146/0x0cb44f5ec4f3b85e40f160c6db7b85bf0e5f907b/); sonic `0x822248...99f928` | ⚠️ Unaudited |
| AccToke | unknown | base | n/a | 3 deployments: base [`0x2af04a...eed518`](./contracts/base-8453/0x2af04ac8a89e800b69e6764d5434b60525eed518/); base `0x8a0e61...e6e718`; base `0x999545...8bed8f` | ⚠️ Unaudited |
| AccToke | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x24127a...127e00`](./contracts/arbitrum-42161/0x24127aad4fb9e7d52803fa6860b9964537127e00/); arbitrum `0x7e5828...2964e4` | ⚠️ Unaudited |
| AddressRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x2445e2...91e63c`](./contracts/ethereum-1/0x2445e2f04d6bd2995003c1cb115292942d91e63c/); ethereum `0x28cb0d...f44d45` | ⚠️ Unaudited |
| Admin | unknown | ethereum | n/a | [`0x9bbbd9...0409d9`](./contracts/ethereum-1/0x9bbbd96048bbbe2bc011a3efe42e7c93700409d9/) | ⚠️ Unaudited |
| AerodromeAdapter | unknown | base | n/a | [`0xd35d77...38ea9a`](./contracts/base-8453/0xd35d77f7e0444d8669962724b02fb163e938ea9a/) | ⚠️ Unaudited |
| AerodromeDestinationVault | unknown | base | n/a | 6 deployments: base [`0x20bace...8a8107`](./contracts/base-8453/0x20bace8353c3512ebf13b86d9c99b6da278a8107/); base `0x58c223...a1ed3e`; base `0x945a4f...5835ad`; base `0xa94031...39845a`; base `0xd18db4...e0cdad`; base `0xdbd149...02c627` | ⚠️ Unaudited |
| AerodromeOracle | unknown | base | n/a | [`0x099a7e...8900f4`](./contracts/base-8453/0x099a7e3ff39024c3d1e87568b4eda59a938900f4/) | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | base | n/a | 5 deployments: base [`0xb02cb1...57184e`](./contracts/base-8453/0xb02cb15597e214b9a843ccff9eefe628c057184e/); base `0xc7b711...d2bd10`; base `0xcef50b...253985`; base `0xd9b54d...8042e3`; base `0xe40523...a7c240` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | base | n/a | 5 deployments: base [`0x9813e3...89f3e3`](./contracts/base-8453/0x9813e3091278f41cd6b2686ff83255f97889f3e3/); base `0xc8756b...e6ef01`; base `0xd675d8...c2e76b`; base `0xe923f8...425318`; base `0xeaa026...1ac028` | ⚠️ Unaudited |
| AerodromeSwap | unknown | base | n/a | 2 deployments: base [`0x2bb11c...ca44a5`](./contracts/base-8453/0x2bb11c6407bb9dcbb5b776f789371de5aaca44a5/); base `0x7785f0...13d003` | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| aOHMMigration | unknown | ethereum | n/a | 4 deployments: ethereum [`0x906d7a...ad8fd2`](./contracts/ethereum-1/0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2/); ethereum `0xb1b462...d6ce87`; ethereum `0xc7f56e...97db3d`; ethereum `0xf31b98...7dd23c` | ⚠️ Unaudited |
| ArraysConverter | unknown | plasma | n/a | 4 deployments: sonic `0xb93c19...dae2f2`; plasma [`0x097080...c5d0c2`](./contracts/plasma-9745/0x09708019cf2527ad3263885ff712fc79cec5d0c2/); arbitrum `0xb6ab7a...e5940f`; linea `0x341421...5480a8` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | arbitrum | n/a | 9 deployments: ethereum `0x73526d...9c0b75`; sonic `0x330f3c...cdaa93`; sonic `0xacffb6...56a814`; sonic `0xd527f2...3fd120`; base `0x3750d3...577472`; arbitrum [`0x29d826...1c9f2b`](./contracts/arbitrum-42161/0x29d826a1bc5e87773571e5444da31f82131c9f2b/); arbitrum `0xb45bd0...bfabba`; arbitrum `0xea7ea3...34f538`; linea `0x46e9c8...7468ca` | ⚠️ Unaudited |
| AuraCalculator | unknown | ethereum | n/a | 13 deployments: ethereum [`0x041679...74ea07`](./contracts/ethereum-1/0x041679acb4088288178589c059543b56ce74ea07/); ethereum `0x0f5d9c...65acad`; ethereum `0x4e4eb5...c48348`; ethereum `0x4ead64...eb43ea`; ethereum `0x594baa...12898a`; ethereum `0x596866...b2cc43`; ethereum `0x5ac9dc...9d7f40`; ethereum `0x662e3f...9b018b`; ethereum `0xa4349b...08f3a0`; ethereum `0xacdc4a...05829d`; ethereum `0xb57e41...fb6621`; ethereum `0xd09bde...e59c71`; ethereum `0xddfd0a...9d84b2` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | base | n/a | 4 deployments: base [`0x7c4b58...13c539`](./contracts/base-8453/0x7c4b58eaa93005162bc80285af2003517213c539/); base `0x925492...4b62f3`; base `0xb9e981...02b6e8`; base `0xc5a917...7654d4` | ⚠️ Unaudited |
| AuraRewards | unknown | linea | n/a | 3 deployments: plasma `0x87b740...5b7b7a`; arbitrum `0xa9219c...440e8b`; linea [`0x786dce...9aeba7`](./contracts/linea-59144/0x786dce6c2490e715583d3840ee854ffd769aeba7/) | ⚠️ Unaudited |
| AuraStaking | unknown | arbitrum | n/a | 4 deployments: plasma `0x3a0f16...1df466`; arbitrum [`0x17dd20...440344`](./contracts/arbitrum-42161/0x17dd206f9eea4bf2553152a9a197e8c175440344/); arbitrum `0x887060...ac0408`; linea `0x727084...433188` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | linea | n/a | 8 deployments: linea [`0x2e5c9e...7c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/); linea `0x4bc655...6cb1f3`; linea `0x4dd0c2...ea2a4c`; linea `0x5ad9ec...b0e48c`; linea `0xb0b55d...af5939`; linea `0xbf0743...780d36`; linea `0xd7cb73...81ac2c`; linea `0xfd29fa...cf80e7` | ⚠️ Unaudited |
| AutopilotRouter | adapter | ethereum | n/a | [`0x37dd40...e8ae21`](./contracts/ethereum-1/0x37dd409f5e98ab4f151f4259ea0cc13e97e8ae21/) | ⚠️ Unaudited |
| AutopilotRouter | adapter | ethereum | n/a | [`0xc45e93...084c30`](./contracts/ethereum-1/0xc45e939ca8c43822a2a233404ecf420712084c30/) | ⚠️ Unaudited |
| AutopilotRouter | adapter | base | n/a | [`0x4d2b87...40f8df`](./contracts/base-8453/0x4d2b87339b1f9e480aa84c770fa3604d7d40f8df/) | ⚠️ Unaudited |
| AutopilotRouter | adapter | arbitrum | n/a | 13 deployments: ethereum `0x39ff6d...0835a2`; ethereum `0xc23a37...ea893e`; sonic `0x298c60...cb7def`; sonic `0x396daf...e2dcce`; sonic `0xeb419f...fddd64`; sonic `0xf25c74...0ea85a`; base `0x71761b...85f816`; base `0x93e7c5...5adcbd`; base `0xa18b89...606931`; plasma `0xc84883...91f27a`; arbitrum [`0x27a9c1...7621ad`](./contracts/arbitrum-42161/0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad/); arbitrum `0x643186...036487`; arbitrum `0xf86761...70b140` | ⚠️ Unaudited |
| AutopilotRouter | adapter | linea | n/a | [`0xf61e75...990544`](./contracts/linea-59144/0xf61e75fbe9147f230400a1e7737c6f6934990544/) | ⚠️ Unaudited |
| Autopool4626 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0fe851...a81159`](./contracts/ethereum-1/0x0fe85151d909f5571ac698ae756c5ff924a81159/); base `0x6d9be4...a2213f`; plasma `0x4480bc...a9109b`; arbitrum `0xc80e12...159416`; linea `0x299c64...642108` | ⚠️ Unaudited |
| AutopoolDebt | core_logic | plasma | n/a | 5 deployments: ethereum `0xf792a3...715b8b`; base `0xfaac11...57c194`; plasma [`0x153993...c780a9`](./contracts/plasma-9745/0x153993b20c5e5be956cec763ed936a44d3c780a9/); arbitrum `0x752004...c638ce`; linea `0xcd1e36...51b6c7` | ⚠️ Unaudited |
| AutopoolDestinations | core_logic | plasma | n/a | 5 deployments: ethereum `0x4d08d4...ae53f1`; base `0xd931d7...acdf09`; plasma [`0x12d0df...49651a`](./contracts/plasma-9745/0x12d0dfa581162f43877e2e26b46da15e3049651a/); arbitrum `0xbf35cc...b9c4ef`; linea `0x48dfb2...e8ba01` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1ac1e0...8e9275`](./contracts/ethereum-1/0x1ac1e03ac3b98f1c4361fb1a90b6824eff8e9275/); ethereum `0x63139f...1428c8`; ethereum `0xea7daf...ae2bd9`; base `0xb111c5...c2d9b0` | ⚠️ Unaudited |
| AutopoolFactory | unknown | base | n/a | 2 deployments: ethereum `0x7fed74...d2ed1f`; base [`0x78a7c4...898451`](./contracts/base-8453/0x78a7c45e3cc7b9567b4803aeaf9b33bc8c898451/) | ⚠️ Unaudited |
| AutopoolFees | core_logic | base | n/a | 5 deployments: ethereum `0x06958d...32cfc2`; base [`0x05e14b...372c45`](./contracts/base-8453/0x05e14bc4e4eb7db75354256ae239b8567f372c45/); plasma `0x852212...dbafff`; arbitrum `0x8350c5...09b11e`; linea `0x4edb7c...5e2c64` | ⚠️ Unaudited |
| AutopoolRegistry | unknown | sonic | n/a | 9 deployments: ethereum `0x7e5828...2964e4`; sonic [`0x3a3f3b...fed0af`](./contracts/sonic-146/0x3a3f3b2a05bdde90e4e950a1ba04234a09fed0af/); sonic `0x43c35d...354658`; sonic `0x63e8e5...e8c253`; base `0x4fe791...b1fece`; arbitrum `0xc3b8f5...c9d268`; arbitrum `0xef4e7d...2ccc48`; arbitrum `0xfbf87c...e352ca`; linea `0xf25f61...d5f42c` | ⚠️ Unaudited |
| AutopoolStrategyHooks | core_logic | base | n/a | 5 deployments: ethereum `0x2b0b9b...be77fc`; base [`0x1d39bf...89f876`](./contracts/base-8453/0x1d39bfee43a17bab3d35ce3503194309fe89f876/); plasma `0x337dd2...4dbccd`; arbitrum `0x33ff76...04e1b1`; linea `0x70b429...d63fc0` | ⚠️ Unaudited |
| AutopoolToken | core_logic | plasma | n/a | 5 deployments: ethereum `0x3161b8...79c9e4`; base `0xff0d0b...b1739f`; plasma [`0x2afc63...4f4da5`](./contracts/plasma-9745/0x2afc63a4339a0ad89a00f46258d239b3a64f4da5/); arbitrum `0x73c064...f10104`; linea `0x3f37bc...6ba37b` | ⚠️ Unaudited |
| BackingRootOracle | unknown | sonic | n/a | 5 deployments: ethereum `0xb12206...87cfbf`; sonic [`0x05a7de...75a1d6`](./contracts/sonic-146/0x05a7de7c838c7f92bd2c3a04233303cfd175a1d6/); base `0x391fa5...f6b439`; plasma `0x0fda04...af0532`; arbitrum `0x3aac1c...e152ae` | ⚠️ Unaudited |
| BalancerAdapter | adapter | plasma | n/a | 2 deployments: plasma [`0x35cbe9...331866`](./contracts/plasma-9745/0x35cbe9f5cad6ed153fd269eba82fc6257e331866/); arbitrum `0xb0c974...57702f` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x2f2cc1...6dac3d`](./contracts/ethereum-1/0x2f2cc1bf461413014741dd68481db4a3686dac3d/); ethereum `0x400aa2...6180f7`; ethereum `0x5a4b54...8a4f4d`; ethereum `0x5f1349...55a4d8`; ethereum `0x867991...70717e`; ethereum `0xc066dd...3efaf5`; ethereum `0xc9b5d8...dd751c`; ethereum `0xfda499...33e94b`; base `0xa6efb9...48dd5d`; base `0xb3723e...8500e0` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x0e2b75...e39be4`](./contracts/ethereum-1/0x0e2b7536ecb785df0fa43c6622dd6b670ce39be4/); ethereum `0x2df5d9...ab0981`; ethereum `0x4c4d65...3a1970`; ethereum `0x4e7986...bd70e0`; ethereum `0x63b0ac...832ae9`; ethereum `0xa639d9...95193c`; ethereum `0xab0b54...27f9a5`; ethereum `0xadf54e...2dd5a6`; ethereum `0xb5652e...ea6866`; ethereum `0xfbd7fa...66186b`; base `0x4fc45f...0002a9`; base `0x800f53...4820b3` | ⚠️ Unaudited |
| BalancerDestinationVault | core_logic | ethereum | n/a | [`0xfc0927...d9fb6c`](./contracts/ethereum-1/0xfc09271e3020110f7bb420c34eaddb7b6cd9fb6c/) | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x943673...13e9d2`](./contracts/ethereum-1/0x943673e7996a5d2ac2e945d0eabf1aa39913e9d2/); ethereum `0xa9b8e4...5702ab`; base `0x9d95e1...e39e33` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x6aa9ea...0decc6`](./contracts/ethereum-1/0x6aa9eaabb466b2f869ba6e1b07b1c414980decc6/); ethereum `0x92294a...61bad7`; ethereum `0xa1b929...a29d05`; base `0xbd137c...84f59c` | ⚠️ Unaudited |
| BalancerMetaStablePoolCalculator | core_logic | ethereum | n/a | [`0x66664b...9a59a4`](./contracts/ethereum-1/0x66664bd801ff4edf8778bae66acf1de9c29a59a4/) | ⚠️ Unaudited |
| BalancerV2ComposableStableMathOracle | operational_periphery | arbitrum | n/a | [`0xddc9e4...7ab47c`](./contracts/arbitrum-42161/0xddc9e47b60c89bf39d14f3739e63763ebd7ab47c/) | ⚠️ Unaudited |
| BalancerV2Swap | unknown | ethereum | n/a | [`0x620152...5ea3f2`](./contracts/ethereum-1/0x6201523176dc66ccd249248b9c422aac725ea3f2/) | ⚠️ Unaudited |
| BalancerV2Swap | unknown | arbitrum | n/a | [`0x6def5e...13f311`](./contracts/arbitrum-42161/0x6def5e2bb8545e1cd9f4f52ff42e2732fc13f311/) | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | arbitrum | n/a | 4 deployments: ethereum `0x2b91e3...eca587`; ethereum `0x39de7c...40ab27`; ethereum `0x9c8d18...82ec0a`; arbitrum [`0x19fa89...c1a620`](./contracts/arbitrum-42161/0x19fa89cdadfe49ac70531c9ad714a27bc2c1a620/) | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x34d81f...d3dc7d`](./contracts/ethereum-1/0x34d81fc5582fc7d38f26fc322f92955154d3dc7d/); arbitrum `0xc77161...d536c0`; arbitrum `0xce1c82...aec809` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | plasma | n/a | 2 deployments: plasma [`0x6de328...729033`](./contracts/plasma-9745/0x6de328ea43d143e3993e8dbc8dd2499ab6729033/); arbitrum `0xbd6beb...4c741b` | ⚠️ Unaudited |
| BalancerV3DestinationVault | core_logic | plasma | n/a | [`0xb42c35...0aae84`](./contracts/plasma-9745/0xb42c35deba9491ad971dd8f8b04bde449f0aae84/) | ⚠️ Unaudited |
| BalancerV3GaugeDestinationVault | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x4b021f...2f212a`](./contracts/ethereum-1/0x4b021f2edd87a601e3010885a9b2a3924b2f212a/); ethereum `0x684424...6727eb`; ethereum `0x77a541...7d3350`; ethereum `0x947bed...83135e`; ethereum `0xb22242...e6aaab` | ⚠️ Unaudited |
| BalancerV3MerklDestinationVault | core_logic | plasma | n/a | 4 deployments: plasma [`0x28c3b8...354ad3`](./contracts/plasma-9745/0x28c3b82d6d540fa57c9468a231b458cd6d354ad3/); plasma `0x28ed66...26badb`; plasma `0xc253ef...e8ffdc`; plasma `0xd94ec2...2649f9` | ⚠️ Unaudited |
| BalancerV3SingleSwap | unknown | plasma | n/a | [`0xf59adc...919d3f`](./contracts/plasma-9745/0xf59adc3592653b91cae14a834ede8a0387919d3f/) | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x1140cd...e8421b`](./contracts/ethereum-1/0x1140cd28e7b8e6b6509761f0bbbfa88abbe8421b/); ethereum `0x792587...0651fe`; plasma `0xff9059...6ca748`; arbitrum `0x990957...2e54d2` | ⚠️ Unaudited |
| BalancerV3StablePoolCalculator | core_logic | ethereum | n/a | [`0xe18c81...9e4184`](./contracts/ethereum-1/0xe18c81055aabb1f23c79db29c7eac9f7889e4184/) | ⚠️ Unaudited |
| BankSwapper | unknown | sonic | n/a | 2 deployments: sonic [`0xf3b137...8afc8e`](./contracts/sonic-146/0xf3b137219325466004aeb91caa0a0bdd2a8afc8e/); sonic `0xfbaa0e...d8b4ba` | ⚠️ Unaudited |
| BankSwapper | adapter | arbitrum | n/a | 4 deployments: base `0x822b13...4d9077`; base `0xa196b8...f6dfad`; plasma `0xce618f...afbc90`; arbitrum [`0x1cde65...4647be`](./contracts/arbitrum-42161/0x1cde65265061d84753086fe39084694f934647be/) | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x8821a5...7cf6b8`](./contracts/ethereum-1/0x8821a5c4f808d970de5bb2c31379c67cd67cf6b8/); ethereum `0xbf5881...470ff5` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | linea | n/a | 68 deployments: ethereum `0x0ab823...6bc18b`; ethereum `0x1d549b...3b4a7f`; ethereum `0x216400...4ab9c5`; ethereum `0x2eab67...8bd678`; ethereum `0x38a3e8...a3b303`; ethereum `0x5a3512...696216`; ethereum `0x865285...fae79b`; ethereum `0x8bf1a0...593ef2`; ethereum `0x8ea340...16b859`; ethereum `0x957243...8f5192`; ethereum `0x9e2919...47a94a`; ethereum `0xa59477...2d6aba`; ethereum `0xbd9e1c...dd6db9`; ethereum `0xc15bd0...b2cbae`; ethereum `0xcaab99...7c08e1`; ethereum `0xd24d8a...f565e9`; sonic `0x394d48...d1ef25`; sonic `0x4d8145...dc503e`; sonic `0x618e00...ec164b`; sonic `0x6d13db...f345b2`; sonic `0x971e93...7456da`; sonic `0x98b55e...9c9502`; base `0x10fad2...ac5c6d`; base `0x115f7d...15d6d6`; base `0x3f8113...2761c5`; base `0x5e753e...1f350f`; base `0x82e986...bb67f0`; base `0x891dcd...45c05c`; base `0xdd6b15...93cb76`; base `0xe9498c...8dfb69`; plasma `0x09c6ac...3e527f`; plasma `0x23eed2...8c0731`; plasma `0x2fc77f...6cd469`; plasma `0x835bee...52f40e`; arbitrum `0x0f23b8...05efe3`; arbitrum `0x18f9f3...c00df8`; arbitrum `0x2d534d...56b01c`; arbitrum `0x4423cb...450ceb`; arbitrum `0x44ec47...1fcb1d`; arbitrum `0x45bce6...3949fb`; arbitrum `0x4660a1...34f58d`; arbitrum `0x4ca6e6...4a3b4b`; arbitrum `0x621091...45deba`; arbitrum `0x7d6509...eb5482`; arbitrum `0x835f03...991299`; arbitrum `0x9f42f5...4f4ed5`; arbitrum `0xa2217d...69b478`; arbitrum `0xadb96b...49f858`; arbitrum `0xb8167e...10de65`; arbitrum `0xbbb989...41c3dc`; arbitrum `0xc54e00...4717ad`; arbitrum `0xcaf5b3...41bcad`; linea [`0x0288ef...246b19`](./contracts/linea-59144/0x0288ef3f2b32fbd03df27b27ca615080b2246b19/); linea `0x1b1b70...7b3a0e`; linea `0x1b9725...b9b3c9`; linea `0x25be90...498fd1`; linea `0x27ff73...ee0a9e`; linea `0x2844a0...6a26d8`; linea `0x422071...73cd1a`; linea `0x603b27...6251e6`; linea `0x843674...1032ec`; linea `0x997aa8...ac5d8b`; linea `0xc6f521...38dd8c`; linea `0xce131a...5f0ff2`; linea `0xd00c62...1424bb`; linea `0xdeabed...e0fb4a`; linea `0xe16d83...6ae856`; linea `0xf8c4eb...7913e6` | ⚠️ Unaudited |
| BebopSwapper | adapter | ethereum | n/a | 5 deployments: ethereum [`0x117c65...a210fd`](./contracts/ethereum-1/0x117c6504382434076ccf7121d747413ac2a210fd/); ethereum `0x39dd8e...a57329`; ethereum `0x69543c...96e142`; ethereum `0xcd478d...a75ff3`; base `0x3f18d0...8c5785` | ⚠️ Unaudited |
| BlockchainInfo | periphery | linea | n/a | 5 deployments: sonic `0xf1e608...87aeba`; base `0xa628e8...740e1e`; plasma `0x88ccc2...48d171`; arbitrum `0x86abaa...3308b3`; linea [`0x218975...7a76f2`](./contracts/linea-59144/0x2189751274d792b6693e70468fb43ec4af7a76f2/) | ⚠️ Unaudited |
| BridgedLSTCalculator | unknown | base | n/a | 6 deployments: base [`0x4cb4b1...a64f99`](./contracts/base-8453/0x4cb4b14128c868f35afe9cac7c23cf821aa64f99/); base `0x58897e...17943e`; base `0xa80b38...892934`; base `0xb081af...1cbdb0`; base `0xb51829...1fa9ea`; base `0xbaf2ee...04e1a7` | ⚠️ Unaudited |
| BridgedStats | unknown | base | n/a | 2 deployments: base [`0x01dd80...0d9231`](./contracts/base-8453/0x01dd808d87cc18639d9992c27f222a499d0d9231/); base `0x054322...02b2c2` | ⚠️ Unaudited |
| Bytes32 | unknown | plasma | n/a | 4 deployments: sonic `0x8737f9...8dcef2`; plasma [`0x12d5aa...48b970`](./contracts/plasma-9745/0x12d5aad28da62a2d7ec2255af6202a458b48b970/); arbitrum `0x5f317e...8f520e`; linea `0xe8905b...6f0459` | ⚠️ Unaudited |
| CbethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x24d783...069abb`](./contracts/ethereum-1/0x24d783e5ed8e4a507583e0c79abf489051069abb/); ethereum `0xab78a5...d01e08` | ⚠️ Unaudited |
| ChainlinkEthPerTokenSenderUpkeep | token | ethereum | n/a | 2 deployments: ethereum [`0x1d0b1e...364ec6`](./contracts/ethereum-1/0x1d0b1e9f82f381936f9025ba0552e25bc5364ec6/); ethereum `0x235c47...407499` | ⚠️ Unaudited |
| ChainlinkIncentivePricesUpkeepV3 | operational_periphery | ethereum | n/a | [`0xd8d4e7...b2a39e`](./contracts/ethereum-1/0xd8d4e70034b8f06a389b4e15d5c0b14d12b2a39e/) | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | plasma | n/a | 5 deployments: ethereum `0x701f11...1b6c3f`; base `0xc7939c...11641c`; plasma [`0x0d0314...39c689`](./contracts/plasma-9745/0x0d0314555d0c6bf2194d7efee62476724539c689/); arbitrum `0xbbcc2d...628433`; linea `0x969954...189950` | ⚠️ Unaudited |
| ChainlinkStatsUpkeepV4 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1a63df...ecdf4f`](./contracts/ethereum-1/0x1a63df7f0addd9cfaf36f4a1b535d4a4afecdf4f/); ethereum `0x691350...679262`; ethereum `0x7d6582...b8c497`; base `0x30f285...27c637` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| ConvexCalculator | unknown | ethereum | n/a | 7 deployments: ethereum [`0x355f39...13de91`](./contracts/ethereum-1/0x355f39596a4bc907a84dbf8f627c7ca2ba13de91/); ethereum `0x4bbfa1...332276`; ethereum `0x74c3b0...269ab7`; ethereum `0x83b694...301d7a`; ethereum `0xbfdf3a...163841`; ethereum `0xf25b36...45eac3`; ethereum `0xf7370f...4ba9d7` | ⚠️ Unaudited |
| CRVDisperse | unknown | ethereum | n/a | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | ⚠️ Unaudited |
| CurveAdapter | adapter | arbitrum | n/a | 2 deployments: plasma `0xf70c47...e86e3a`; arbitrum [`0xcb9597...30af70`](./contracts/arbitrum-42161/0xcb9597bb803d7baa4b6a14c2afd6d4dc9230af70/) | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x356c79...6c3e77`](./contracts/ethereum-1/0x356c79ab2b2cefab685004ce827146058a6c3e77/); ethereum `0xd78860...be3631` | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | ethereum | n/a | 11 deployments: ethereum [`0x0091fe...6758cb`](./contracts/ethereum-1/0x0091fec1b75013d1b83f4bb82f0bec4e256758cb/); ethereum `0x10b459...967b2d`; ethereum `0x23032a...4e9d8c`; ethereum `0x2fa4c8...d9b171`; ethereum `0x73047a...bf5ec6`; ethereum `0x737f2e...7f004b`; ethereum `0x88d0e0...f90ab0`; ethereum `0x9828b1...fb37f2`; ethereum `0xa7d642...fe3b29`; ethereum `0xafd498...706a90`; ethereum `0xf4cedd...948fa2` | ⚠️ Unaudited |
| CurveDestinationVault | core_logic | plasma | n/a | [`0xa265ce...ed3e9f`](./contracts/plasma-9745/0xa265cec7a8ec92b9b4124023324534faa9ed3e9f/) | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | arbitrum | n/a | 7 deployments: ethereum `0x3c5be4...21f64e`; ethereum `0x6652b0...9bcbe2`; ethereum `0x946d9b...11391b`; ethereum `0xa07f6c...141a38`; arbitrum [`0x04f7ce...94f051`](./contracts/arbitrum-42161/0x04f7cee4169276e9245d09b2cf074b193f94f051/); arbitrum `0x9b1985...5c4410`; arbitrum `0xdd78ea...07b0fd` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | linea | n/a | 2 deployments: arbitrum `0xe0ebd6...05a5f8`; linea [`0xbb1dfb...852e5e`](./contracts/linea-59144/0xbb1dfbbf3cfa0ae92119db2d35a53b59fa852e5e/) | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x145e12...c41879`](./contracts/ethereum-1/0x145e12608c133c2b9062d10e33305d153ac41879/); ethereum `0x542a6b...99f0fa`; ethereum `0x94b58e...6c7a69`; ethereum `0xb8e7a5...9b8c2a`; ethereum `0xd2e14c...6d4edc`; ethereum `0xd545ee...201004`; ethereum `0xd6884a...ee6154` | ⚠️ Unaudited |
| CurveV1PoolRebasingLockedStatsCalculator | core_logic | ethereum | n/a | [`0x549398...56e3c8`](./contracts/ethereum-1/0x54939860e3d185cd983421ace105ace79156e3c8/) | ⚠️ Unaudited |
| CurveV1StableEthLockedOracle | operational_periphery | ethereum | n/a | [`0xde695e...e4bf31`](./contracts/ethereum-1/0xde695e7f9958725ba78a18fa2191bfd980e4bf31/) | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | arbitrum | n/a | 4 deployments: ethereum `0xaed535...b8a92b`; plasma `0xb757c8...431d24`; arbitrum [`0x47b835...b49b5f`](./contracts/arbitrum-42161/0x47b835dcffcbfcc17a0ab2e5fb94cedb67b49b5f/); linea `0xbb1feb...8d2635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | arbitrum | n/a | 2 deployments: plasma `0xc92797...82a635`; arbitrum [`0x1bdc53...b8cf69`](./contracts/arbitrum-42161/0x1bdc539dedd630d9bc66fd88a53305b07db8cf69/) | ⚠️ Unaudited |
| CustomRedStoneOracleAdapter | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x67c159...c21030`](./contracts/ethereum-1/0x67c15923248baf96fb3944a2a326a237b4c21030/); ethereum `0xbb353f...e63b03` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x53ff9d...24066f`](./contracts/ethereum-1/0x53ff9d648a8a1cf70c6b60ae26b93047cc24066f/); ethereum `0xe67d77...958c03`; sonic `0x9dd5e7...b87254`; sonic `0xaad907...deb19d`; base `0x92c726...eae3ef`; base `0xb840cd...3b1ff7`; plasma `0x9783c0...d55b72`; arbitrum `0x5e76c3...791551`; arbitrum `0x80c503...cdc4ca`; linea `0x9faefa...cc23e2` | ⚠️ Unaudited |
| DaiUsdsSwapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6404f6...81cfdc`](./contracts/ethereum-1/0x6404f61b3d12b5f87d6f76c2c8b58a420581cfdc/); ethereum `0xbf7335...b759f0` | ⚠️ Unaudited |
| DefiRound | unknown | ethereum | n/a | [`0xc80373...00ac38`](./contracts/ethereum-1/0xc803737d3e12cc4034dde0b2457684322100ac38/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| Depositor | unknown | base | n/a | 4 deployments: base [`0x8599f0...ae7e7f`](./contracts/base-8453/0x8599f04821421d8f9a5e0a5f06eb1630cdae7e7f/); base `0x9af8aa...813577`; base `0xe10142...fef87b`; base `0xed0489...fa4a05` | ⚠️ Unaudited |
| DepositProxy | unknown | ethereum | n/a | [`0x031464...ee2abf`](./contracts/ethereum-1/0x031464af67c612a54676dd5dd71ea86605ee2abf/) | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3ac921...54232b`](./contracts/ethereum-1/0x3ac921bb16321e8c9b2e6b83c56397f2e054232b/); ethereum `0x506199...91e295`; ethereum `0x9e60e4...45b28c`; base `0xc3ff90...598323` | ⚠️ Unaudited |
| DestinationRegistry | unknown | sonic | n/a | 9 deployments: ethereum `0xa698a9...a99402`; sonic [`0x0283a2...3afb61`](./contracts/sonic-146/0x0283a267eb0b7479831fc049487d9e13ec3afb61/); sonic `0x62794e...96886e`; sonic `0xa5e45b...6a17b8`; base `0xa1afc8...095ba1`; arbitrum `0x95b5f1...43c58e`; arbitrum `0xdf177c...d8d82c`; arbitrum `0xfea078...2c618b`; linea `0x66b9eb...6e258c` | ⚠️ Unaudited |
| DestinationVaultExtension | adapter | arbitrum | n/a | 4 deployments: base `0xb64dd5...093d68`; plasma `0x94ab3c...7a09f1`; arbitrum [`0x4ca8f3...443fc1`](./contracts/arbitrum-42161/0x4ca8f3e9a5adc4893c93643b2cd90dc9eb443fc1/); linea `0xef8d12...8707b6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | ethereum | n/a | 11 deployments: ethereum [`0x37de6f...0ff124`](./contracts/ethereum-1/0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124/); ethereum `0xc6c32c...199678`; sonic `0x4b3575...d5b0f0`; sonic `0x71ce71...f89837`; sonic `0xd707a2...49928c`; base `0xf34f79...e9abb6`; plasma `0xc895bb...5c288a`; arbitrum `0x53303d...6c198d`; arbitrum `0x705688...49dbfb`; arbitrum `0xd66836...59225a`; linea `0x618273...67520f` | ⚠️ Unaudited |
| DestinationVaultRegistry | unknown | sonic | n/a | 9 deployments: ethereum `0x3aac1c...e152ae`; sonic [`0x005b5d...f79fa8`](./contracts/sonic-146/0x005b5dd2182f4adf9fca299e762029337ff79fa8/); sonic `0x0b7f22...520f57`; sonic `0x9e4530...62cca8`; base `0xbbbb6e...21735f`; arbitrum `0x39327c...264ba1`; arbitrum `0x852664...ed4f44`; arbitrum `0x8d75a2...032b4b`; linea `0xc7b061...d65da2` | ⚠️ Unaudited |
| DexIncentiveSetCalculator | unknown | ethereum | n/a | [`0x269dbe...908be7`](./contracts/ethereum-1/0x269dbe2c9a5756e2fc48c173c869679df3908be7/) | ⚠️ Unaudited |
| EethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x4353e1...1350ba`](./contracts/ethereum-1/0x4353e181c13f7e970f24016a0762c1af271350ba/); ethereum `0xa87930...d4a71e` | ⚠️ Unaudited |
| EethOracle | operational_periphery | ethereum | n/a | [`0xaa573a...86df81`](./contracts/ethereum-1/0xaa573a9bf7560870a925ea1704c061546486df81/) | ⚠️ Unaudited |
| ERC4626BackingOracle | unknown | base | n/a | 5 deployments: ethereum `0xfc3213...014721`; sonic `0x881fd7...34fb26`; base [`0x16cd14...9e516a`](./contracts/base-8453/0x16cd14a7fc3a6749a777fd3e9639a861e49e516a/); plasma `0x5ab9f9...5031a9`; arbitrum `0x47cabf...81ed2f` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x000404...aadf01`](./contracts/ethereum-1/0x0004042f1cfaef8bd011e73d99f85a44b0aadf01/); ethereum `0x13da01...fc380f`; ethereum `0xc840bd...a86cf3`; ethereum `0xd50e56...6b0898`; sonic `0x375e79...dab4f1`; sonic `0x475707...fd1623`; base `0x336080...9c1678`; plasma `0x8a99bb...f682ad`; arbitrum `0xdd0394...f9a8f2`; linea `0x46c004...64686b` | ⚠️ Unaudited |
| ERC4626NonLPSpotRangeOracle | operational_periphery | linea | n/a | 4 deployments: sonic `0x82de00...f5d356`; base `0x136639...35a596`; plasma `0xdd597e...3822de`; linea [`0x1068bb...595061`](./contracts/linea-59144/0x1068bb81ac98aa7c1996ee0ea1189cc7cd595061/) | ⚠️ Unaudited |
| ERC4626OneToOneCalculator | unknown | base | n/a | 2 deployments: ethereum `0xf31bd1...91cdd9`; base [`0xcd749a...138a61`](./contracts/base-8453/0xcd749af731078ec7657a30458d3bc6558b138a61/) | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | arbitrum | n/a | 6 deployments: sonic `0xe2239b...e55824`; base `0xa60042...6be405`; plasma `0xba08e1...73e32f`; arbitrum [`0x1cbd79...0ba22b`](./contracts/arbitrum-42161/0x1cbd79d2d77faa8980c4f7fda0f6591aec0ba22b/); arbitrum `0x5c47f4...905667`; linea `0x6978f2...b3f5c3` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | ethereum | n/a | 16 deployments: ethereum [`0x1dfb50...ae8c88`](./contracts/ethereum-1/0x1dfb5041c3f594caef41bcec02f3a9af47ae8c88/); ethereum `0x2386c9...74105f`; ethereum `0xfbc60c...39b895`; ethereum `0xffebb3...4d959f`; sonic `0xab9f53...33241c`; sonic `0xc3c458...af1790`; base `0x383421...205baf`; base `0xb1b8d7...0c0193`; plasma `0x9186ea...82617d`; plasma `0xed5dc1...272d93`; arbitrum `0x84c1ce...e5d152`; arbitrum `0x98a216...0e339a`; arbitrum `0xb22f75...e22f34`; arbitrum `0xe1a08b...799213`; linea `0x268cbb...161a03`; linea `0x3f962e...acc328` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x0d1e06...821fa8`](./contracts/ethereum-1/0x0d1e06578f4ae09e81d33bf5587a0616f4821fa8/); sonic `0x2bae39...be5f19`; base `0x869255...f1714a`; plasma `0x8b504e...5df923`; arbitrum `0x2210d0...252237`; arbitrum `0xf701b4...2b7087`; linea `0xdb28f4...aeae68` | ⚠️ Unaudited |
| Etherex | unknown | linea | n/a | 3 deployments: linea [`0xbe8b8d...69f11d`](./contracts/linea-59144/0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d/); linea `0xefd81e...31e348`; linea `0xf0c89c...0bd9eb` | ⚠️ Unaudited |
| EtherFiClaimingDestinationVaultExtension | adapter | ethereum | n/a | [`0x3b65dc...339639`](./contracts/ethereum-1/0x3b65dc9db1d0935ca412c0a685a2c77581339639/) | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | arbitrum | n/a | 8 deployments: ethereum `0xdeb361...a67de3`; sonic `0xac9ae2...b83ea9`; sonic `0xb074ee...6df27f`; base `0xe33703...746aa9`; plasma `0x738066...8b759f`; plasma `0xac2087...754a5e`; arbitrum [`0x16adb8...f5a0a8`](./contracts/arbitrum-42161/0x16adb8209618e0cbd4c19f0487f8916b0cf5a0a8/); linea `0xa6e5ac...acf562` | ⚠️ Unaudited |
| EthPerTokenSender | token | ethereum | n/a | [`0xdd9251...625a3d`](./contracts/ethereum-1/0xdd92511f1fbe5de911e22a0247ba8c212d625a3d/) | ⚠️ Unaudited |
| EthPerTokenStore | unknown | base | n/a | [`0x578317...d68dfe`](./contracts/base-8453/0x57831780565ae1526ed1cc2296c1143b3ad68dfe/) | ⚠️ Unaudited |
| EthPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x77f18a...b864ee`](./contracts/ethereum-1/0x77f18a6968a38f9aef1af676420c4799e8b864ee/); ethereum `0xca77a2...d5da31` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x2757f5...5b0c55`](./contracts/ethereum-1/0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55/); ethereum `0x6d3c5f...78334c` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | plasma | n/a | 18 deployments: sonic `0x59e6e9...e12afb`; base `0xc8ba1a...cc3c76`; plasma [`0x07ed7e...b8f95b`](./contracts/plasma-9745/0x07ed7ef81d7dd79fb6043d0a37c11d78f3b8f95b/); plasma `0x15b4dc...7178f9`; plasma `0x868c33...04b672`; plasma `0x919978...cf0377`; plasma `0xf3de68...78d217`; plasma `0xf5a4fa...0f684c`; arbitrum `0x398417...d80085`; arbitrum `0xc32572...ea15a8`; arbitrum `0xc82aec...28537f`; arbitrum `0xdc7b96...ec7101`; arbitrum `0xe6a2b1...08fc71`; arbitrum `0xfda745...010bd5`; linea `0x9d2868...239e3a`; linea `0xbe22c1...3ae95f`; linea `0xd27f7b...56fbf0`; linea `0xd2f243...5d4471` | ⚠️ Unaudited |
| EulerRewardLib | unknown | linea | n/a | 4 deployments: plasma `0x46ba85...80e409`; arbitrum `0x6f1c28...f65cdd`; linea [`0x349e41...6d59dd`](./contracts/linea-59144/0x349e418073d660dbd419ffc407d4ba077b6d59dd/); linea `0xc6383b...da5393` | ⚠️ Unaudited |
| ExtraRewarder | unknown | ethereum | n/a | 4 deployments: ethereum [`0x17c50b...022975`](./contracts/ethereum-1/0x17c50b9fba151f5f88618dae6c394bd731022975/); ethereum `0x23e9bb...7fec38`; ethereum `0x7a73fa...e05924`; plasma `0xae6b25...0e2124` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa84cc1...b263d9`](./contracts/ethereum-1/0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9/); ethereum `0xe3e731...25b459` | ⚠️ Unaudited |
| FeeCollector | unknown | linea | n/a | 2 deployments: linea [`0x51a2a0...7f21a1`](./contracts/linea-59144/0x51a2a0b162d27254e30473b7072d95f4b37f21a1/); linea `0x532c15...54e0f3` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | linea | n/a | 2 deployments: linea [`0x61c56a...6f3f6f`](./contracts/linea-59144/0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f/); linea `0xfde487...e6b7bf` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | linea | n/a | [`0x75430c...02d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | ⚠️ Unaudited |
| FeeRedeemer | unknown | ethereum | n/a | [`0xd1057b...38e581`](./contracts/ethereum-1/0xd1057b6c6736bf4f5b4a850cff02054f1f38e581/) | ⚠️ Unaudited |
| Fei | unknown | ethereum | n/a | [`0x956f47...7f87ca`](./contracts/ethereum-1/0x956f47f50a910163d8bf957cf5846d573e7f87ca/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | n/a | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Convex_stkcvxFRAXBP | token | ethereum | n/a | [`0x963f48...03b199`](./contracts/ethereum-1/0x963f487796d54d2f27ba6f3fbe91154ca103b199/) | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x449a95...787590`](./contracts/ethereum-1/0x449a957490e24e4d915fd5dcf25dd5446e787590/); ethereum `0xad6d0e...18a223` | ⚠️ Unaudited |
| Gamma | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6bea7c...44e197`](./contracts/ethereum-1/0x6bea7cfef803d1e3d5f7c0103f7ded065644e197/); ethereum `0x8a539c...ed793a` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | linea | n/a | 5 deployments: linea [`0x18068c...3b0b25`](./contracts/linea-59144/0x18068c050d237d46310f59f40559bd0c6b3b0b25/); linea `0x84b465...04201b`; linea `0x9270d3...f81a74`; linea `0x9d5c0e...dc9cb4`; linea `0xeba9eb...eacb40` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x127563...ad9013`](./contracts/ethereum-1/0x127563761083d2ac7794c17d04e17393d8ad9013/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x8b4334...4a969b`](./contracts/ethereum-1/0x8b4334d4812c530574bd4f2763fcd22de94a969b/) | ⚠️ Unaudited |
| gOHM | unknown | ethereum | n/a | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| GT | unknown | ethereum | n/a | [`0xf25dc5...baa20c`](./contracts/ethereum-1/0xf25dc58c25ba97529f5504dca81d2eaf4abaa20c/) | ⚠️ Unaudited |
| HoldTokenCalculator | token | ethereum | n/a | 3 deployments: ethereum [`0x076f94...a65f50`](./contracts/ethereum-1/0x076f94efae4621bab537ce72b9eb48bb0ca65f50/); ethereum `0x78c4af...f57c0e`; base `0x804336...fac3a4` | ⚠️ Unaudited |
| HypeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa21b30...1e24ab`](./contracts/ethereum-1/0xa21b3085e9a97bb8f23c997e80fe6d91321e24ab/); ethereum `0xede66e...dc7dff` | ⚠️ Unaudited |
| Hypervisor | unknown | ethereum | n/a | 11 deployments: ethereum [`0x33412f...31dbb4`](./contracts/ethereum-1/0x33412fef1af035d6dba8b2f9b33b022e4c31dbb4/); ethereum `0x336d7e...cf146f`; ethereum `0x388a39...98e22c`; ethereum `0x39b96f...16013c`; ethereum `0x4d7f0f...d0c832`; ethereum `0x51bbf7...808865`; ethereum `0x586880...f8ef13`; ethereum `0x5e6c48...f11660`; ethereum `0xac571c...b1d02f`; ethereum `0xf402ce...adbd9b`; ethereum `0xf6eeca...c7927c` | ⚠️ Unaudited |
| HypervisorFactory | unknown | ethereum | n/a | [`0x8ae6c8...97ceae`](./contracts/ethereum-1/0x8ae6c8c7005c7317963487bee834047eb497ceae/) | ⚠️ Unaudited |
| IncentiveCalculatorUpdateDestinationVaultExtension | adapter | ethereum | n/a | [`0xee117a...1ab674`](./contracts/ethereum-1/0xee117a999594cf8e7d5845e4a76cd6f8121ab674/) | ⚠️ Unaudited |
| IncentiveHarvester | unknown | base | n/a | 2 deployments: ethereum `0x4a566d...178791`; base [`0x1bfcdf...d5be5e`](./contracts/base-8453/0x1bfcdfa2722c17959acd1306df1f0406a7d5be5e/) | ⚠️ Unaudited |
| IncentivePricingStats | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8607ba...85f862`](./contracts/ethereum-1/0x8607ba6540af378cba64f4e3497fbb2d1385f862/); base `0xf28213...48090d` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| InitialClaim | unknown | ethereum | n/a | [`0x2ad3cf...a17a11`](./contracts/ethereum-1/0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11/) | ⚠️ Unaudited |
| Integer | unknown | arbitrum | n/a | 5 deployments: ethereum `0x8a397a...94a71c`; sonic `0xad3331...95f3f5`; plasma `0x5206eb...e4ec6e`; arbitrum [`0x4c0868...092028`](./contracts/arbitrum-42161/0x4c0868931b0c6e72aa835d657fa56179ce092028/); linea `0xe9dedf...9958c6` | ⚠️ Unaudited |
| KelpDaoClaimingDestinationVaultExtension | adapter | ethereum | n/a | [`0xa30579...ddd067`](./contracts/ethereum-1/0xa305791458d9a53bac60e8273e8208ab00ddd067/) | ⚠️ Unaudited |
| Lens | periphery | arbitrum | n/a | 14 deployments: ethereum `0x0ab577...e6c89b`; ethereum `0x146b55...783882`; ethereum `0x6972ee...cde442`; ethereum `0x75455a...1d2300`; sonic `0x8b5871...b42182`; sonic `0x93f91a...3d9584`; sonic `0xcb7e45...85a163`; sonic `0xf4201e...3cf18b`; base `0x1c0059...db89f0`; base `0xaf05c2...17aa9c`; arbitrum [`0x03200d...f749c1`](./contracts/arbitrum-42161/0x03200d703c63d3b5a00de9896b7f82c240f749c1/); arbitrum `0x590a31...2fc754`; arbitrum `0x99f8f6...08279e`; linea `0x92537a...f7973c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | base | n/a | 8 deployments: sonic `0x5a7110...5d0ab3`; base [`0x0294d7...7b2c8c`](./contracts/base-8453/0x0294d71b2c9b88d10f6d3286f5b25026147b2c8c/); base `0xc48496...005e9a`; plasma `0x2ddb79...7980be`; arbitrum `0x34d929...f7ad94`; arbitrum `0x400662...5ca197`; arbitrum `0x4008dd...ceba03`; linea `0x9f8e50...db4bfa` | ⚠️ Unaudited |
| LiquidationRow | unknown | arbitrum | n/a | 7 deployments: ethereum `0xf570ea...58d481`; base `0x7571de...c10b5d`; base `0xe2f00b...881d4f`; plasma `0xd3132c...b2a018`; arbitrum [`0x610ffe...3e3ab5`](./contracts/arbitrum-42161/0x610ffeb00b8312b0540ded300c683227cb3e3ab5/); arbitrum `0xb47d36...d913ed`; linea `0xc33238...f05b3c` | ⚠️ Unaudited |
| LstPriceHook | unknown | base | n/a | 8 deployments: ethereum `0xc7c308...bf4523`; sonic `0x3fab79...1c0626`; base [`0x1617c7...d5f827`](./contracts/base-8453/0x1617c74f1e2616a6883249e490aa5e085cd5f827/); plasma `0xc91f3b...a4ebc5`; arbitrum `0x329e4c...dd525c`; arbitrum `0x67ae7b...cafbc0`; arbitrum `0xd57e25...aad943`; linea `0xf63daf...6f2f47` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| Manager | governance | ethereum | n/a | 2 deployments: ethereum [`0x59170d...f9f4c9`](./contracts/ethereum-1/0x59170d9d1d3db8ac3539c6705fb38c735af9f4c9/); ethereum `0xa86e41...b86a14` | ⚠️ Unaudited |
| Manager | unknown | sonic | n/a | 2 deployments: sonic [`0x0fee3b...237f64`](./contracts/sonic-146/0x0fee3b431eb86edddcb297c4921a2577a8237f64/); sonic `0x38b556...399227` | ⚠️ Unaudited |
| Manager | unknown | base | n/a | 2 deployments: base [`0x020849...b67262`](./contracts/base-8453/0x0208491b10f9fc61ac8047d1f0e11698bdb67262/); base `0x85f982...a4d14e` | ⚠️ Unaudited |
| Manager | unknown | base | n/a | 2 deployments: base [`0x304c29...eb1520`](./contracts/base-8453/0x304c29f8f89691dc3d5f9564c64bad19cdeb1520/); base `0x76e6a3...aee47e` | ⚠️ Unaudited |
| Manager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x027a33...238833`](./contracts/arbitrum-42161/0x027a3359b803885261b140415873845f72238833/); arbitrum `0x37767c...742df6` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | arbitrum | n/a | 8 deployments: ethereum `0x3b16c8...43cfc3`; sonic `0x720b31...ddee52`; base `0x80af95...3e228b`; plasma `0x881bb3...3d63d4`; arbitrum [`0x0d1212...695426`](./contracts/arbitrum-42161/0x0d1212d67d676101bc9ed856b8574a95c7695426/); arbitrum `0x50306d...00ccf0`; arbitrum `0x6404da...44a402`; linea `0xaaee6a...869707` | ⚠️ Unaudited |
| MerklApiOperatorSetExtension | adapter | base | n/a | [`0x54f35d...6cdc8d`](./contracts/base-8453/0x54f35db38f7613a3993e41d56ee9c4c5ee6cdc8d/) | ⚠️ Unaudited |
| MessageProxy | unknown | ethereum | n/a | [`0x20ea2f...616f76`](./contracts/ethereum-1/0x20ea2f2ecf36bcb6df086d923a120496dc616f76/) | ⚠️ Unaudited |
| MevModule | unknown | linea | n/a | 2 deployments: linea [`0x614f11...703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/); linea `0xdf2787...088d5b` | ⚠️ Unaudited |
| MevModule | unknown | linea | n/a | [`0x90fc1f...b4940d`](./contracts/linea-59144/0x90fc1f74cde75122a17db99c11597bf593b4940d/) | ⚠️ Unaudited |
| MigrationNFT | operational_periphery | ethereum | n/a | [`0x72baaa...39fe76`](./contracts/ethereum-1/0x72baaa523a4662856f413b0fc0a9e3068f39fe76/) | ⚠️ Unaudited |
| Minter | operational_periphery | linea | n/a | 4 deployments: linea [`0x0b6d3b...ecc3eb`](./contracts/linea-59144/0x0b6d3b42861ee8abfcaac818033694e758ecc3eb/); linea `0x462e26...d2a966`; linea `0x76da79...da9f8f`; linea `0xf83962...0b6255` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | arbitrum | n/a | 8 deployments: ethereum `0x2e9894...dc3466`; sonic `0x7a0c45...a9c7bc`; base `0xec1b42...1e5745`; plasma `0x71689a...1679d9`; arbitrum [`0x09d0d6...b50322`](./contracts/arbitrum-42161/0x09d0d6a48545e959b230600966d93600fab50322/); arbitrum `0x5483a2...a7ece8`; arbitrum `0xcb409a...2dffe0`; linea `0xb617bc...532e67` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | linea | n/a | [`0x59037f...3712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | arbitrum | n/a | 8 deployments: ethereum `0x616e7e...0ecdcc`; ethereum `0x9bc152...9dad01`; plasma `0xde852a...f90db4`; arbitrum [`0x52b31f...d48be3`](./contracts/arbitrum-42161/0x52b31f7d8397a7a3851ddb548acac64abfd48be3/); arbitrum `0x65f4fe...a62eef`; arbitrum `0xab3da8...c9bf0b`; arbitrum `0xd7b1f5...db00ce`; arbitrum `0xff004b...a24192` | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NavLookbackHook | unknown | ethereum | n/a | 8 deployments: ethereum [`0x33db10...9c3624`](./contracts/ethereum-1/0x33db101517112a9b7b9f5b39eac185a0629c3624/); sonic `0xa6c320...e29268`; base `0x5ee04a...b5df51`; plasma `0x4c0be1...6b427b`; arbitrum `0x617005...19ea57`; arbitrum `0x9717e1...756f8b`; arbitrum `0xd184c5...bd2b16`; linea `0xa31fe5...59fa42` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0xa04a9f...bb2f58`](./contracts/linea-59144/0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | linea | n/a | [`0xfc65c6...8453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | ⚠️ Unaudited |
| OethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x21fede...143826`](./contracts/ethereum-1/0x21fededbe1cc5aa22a17f171513c105300143826/); ethereum `0x90a7e9...2cbd59` | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | ethereum | n/a | [`0x0ee5c2...4815b9`](./contracts/ethereum-1/0x0ee5c2865d6dff605e527b13c336f0b8774815b9/) | ⚠️ Unaudited |
| OlympusAuthority | unknown | ethereum | n/a | [`0x1c21f8...b38b7a`](./contracts/ethereum-1/0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a/) | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | ethereum | n/a | [`0x6a617f...68bedc`](./contracts/ethereum-1/0x6a617fe9163c1499b9d2773fb2d0105a2368bedc/) | ⚠️ Unaudited |
| OlympusLPStaking | unknown | ethereum | n/a | [`0xf11f0f...722223`](./contracts/ethereum-1/0xf11f0f078bfaf05a28eac345bb84fcb2a3722223/) | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | ethereum | n/a | [`0x2ce62b...4a6cd1`](./contracts/ethereum-1/0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0822f3...f274a2`](./contracts/ethereum-1/0x0822f3c03dcc24d200aff33493dc08d0e1f274a2/); ethereum `0x4a049d...cf7d7e`; ethereum `0x9f93c9...e5abf4` | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | ethereum | n/a | [`0xbe7315...93242f`](./contracts/ethereum-1/0xbe731507810c8747c3e01e62c676b1ca6f93242f/) | ⚠️ Unaudited |
| OlympusTokenMigrator | token | ethereum | n/a | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x160317...a915be`](./contracts/ethereum-1/0x16031783d3d27ce25ebcfb341f4eec8f7ba915be/); ethereum `0x43094e...6ca511` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x803ec0...bc22bc`](./contracts/ethereum-1/0x803ec0b526c226cd73ec5633701f4baa59bc22bc/); ethereum `0xa1a7ec...7721dd` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xabcf56...fa195c`](./contracts/ethereum-1/0xabcf56d1a0f721a690d70da06c72380dc1fa195c/); ethereum `0xc6807b...66e0bb` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | arbitrum | n/a | 4 deployments: sonic `0x57ade9...ff038e`; base `0xe4baac...4d7704`; plasma `0x951891...0fbb80`; arbitrum [`0x4e8ce6...8e9b32`](./contracts/arbitrum-42161/0x4e8ce63cce31f667d03955dd98133d504d8e9b32/) | ⚠️ Unaudited |
| OneToOneUSDBackingOracle | unknown | sonic | n/a | 5 deployments: ethereum `0xaeb29c...fd1016`; sonic [`0xa28ffd...599822`](./contracts/sonic-146/0xa28ffdaad6506681aea69d951eb0032206599822/); base `0xe8b43d...83472a`; plasma `0xea292b...6b9818`; arbitrum `0xa698a9...a99402` | ⚠️ Unaudited |
| Oracle | operational_periphery | linea | n/a | [`0x389df9...7e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | ⚠️ Unaudited |
| OsethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x3cc439...257b1b`](./contracts/ethereum-1/0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b/); ethereum `0xb5aa59...25aebb` | ⚠️ Unaudited |
| PairFactory | registry | linea | n/a | [`0xc0b920...644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | ⚠️ Unaudited |
| PointsHook | unknown | ethereum | n/a | [`0xa38606...c615c3`](./contracts/ethereum-1/0xa386067eb5f7dc9b731fe1130745b0fb00c615c3/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x0139b3...e6f15a`](./contracts/ethereum-1/0x0139b34012a6639e896b883901b7dc1bb6e6f15a/); ethereum `0x2d3ead...022029`; ethereum `0x7a75ec...ac63fd`; ethereum `0xe7a7d1...31532d` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xbbfc7d...c7ba8a`](./contracts/ethereum-1/0xbbfc7d1d53116830326478f77f489530cec7ba8a/); ethereum `0xca5e07...d58d4e` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/); ethereum `0x9122ee...208e35` | ⚠️ Unaudited |
| Position | unknown | linea | n/a | [`0x2832e1...bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | ⚠️ Unaudited |
| PricePerShareEthOracle | unknown | base | n/a | [`0x5b0f86...248cea`](./contracts/base-8453/0x5b0f86a09eb9912152750212372f732c5c248cea/) | ⚠️ Unaudited |
| ProtocolActions | unknown | linea | n/a | [`0x34413f...3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 5 deployments: ethereum [`0x01b431...e7e1ee`](./contracts/ethereum-1/0x01b4314072fe86a497e97bd6ad48b635fbe7e1ee/); ethereum `0xc89f74...cf00df`; ethereum `0xd813b2...c51a21`; plasma `0xea6b81...bcc98a`; arbitrum `0xbfd637...047e9f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | ethereum | n/a | 3 deployments: ethereum [`0x24864c...25931e`](./contracts/ethereum-1/0x24864cc03efd84f9df0e5f1d23ab69128325931e/); ethereum `0x8a26c7...494e53`; ethereum `0xdbfb63...aaa43f` | ⚠️ Unaudited |
| PufEthLRTCalculator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x878958...a17e73`](./contracts/ethereum-1/0x878958416059f3ea3cd4ac0dc0a5439b49a17e73/); ethereum `0x9d4920...8b34ac` | ⚠️ Unaudited |
| PxETHEthOracle | operational_periphery | ethereum | n/a | [`0x3cc521...ffc629`](./contracts/ethereum-1/0x3cc52170fdea5c485db6d412b78ea40f27ffc629/) | ⚠️ Unaudited |
| PxEthLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x37c9b7...06296a`](./contracts/ethereum-1/0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a/); ethereum `0x9cb562...972153` | ⚠️ Unaudited |
| Quoter | periphery | linea | n/a | [`0xb593fa...4fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | n/a | [`0xe660c9...aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | linea | n/a | 2 deployments: linea [`0x020079...d3200e`](./contracts/linea-59144/0x020079c6cb277ec22306a45e7d4eaefd24d3200e/); linea `0x0efaae...31693b` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | linea | n/a | [`0x15325a...5636a5`](./contracts/linea-59144/0x15325a2ec4bf164d47cf48d5d6a9edda385636a5/) | ⚠️ Unaudited |
| RamsesV3Factory | registry | linea | n/a | [`0xae334f...cf80f1`](./contracts/linea-59144/0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1/) | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | linea | n/a | [`0x80dca1...c7bec8`](./contracts/linea-59144/0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8/) | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | linea | n/a | [`0x4e710f...272bfb`](./contracts/linea-59144/0x4e710feb1b2e784233893af659442e4739272bfb/) | ⚠️ Unaudited |
| ReceivingRouter | unknown | base | n/a | [`0x327966...12267e`](./contracts/base-8453/0x32796698388fbc64281dea9fc4070df80a12267e/) | ⚠️ Unaudited |
| ReceivingRouterGen | unknown | base | n/a | [`0xd2c543...ad19dc`](./contracts/base-8453/0xd2c543dd8e305b354ee1d713734acf7adead19dc/) | ⚠️ Unaudited |
| RedstoneOracle | unknown | sonic | n/a | 5 deployments: ethereum `0xe1adb6...da5913`; sonic [`0x7b1e13...f5b3f2`](./contracts/sonic-146/0x7b1e13fd6cb47cbe274e20a7ec542e75f4f5b3f2/); sonic `0xa1ce23...874718`; base `0x9ab4b6...dad1ee`; plasma `0x80d831...bb308d` | ⚠️ Unaudited |
| RedStonePullOracle | unknown | sonic | n/a | 8 deployments: ethereum `0x470139...b0a0ea`; ethereum `0x9a65e1...89b811`; sonic [`0x0324a2...33abec`](./contracts/sonic-146/0x0324a2d690bc974512fabd22615755b47f33abec/); sonic `0xc557b7...929d63`; base `0x1e4d6a...679306`; base `0xb470a1...855cc4`; arbitrum `0x995a39...759d1f`; arbitrum `0xed2acb...5e081b` | ⚠️ Unaudited |
| RethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x038516...90fac1`](./contracts/ethereum-1/0x038516cb9bbc0572c2d55896ce75f31fab90fac1/); ethereum `0x980109...bb84a8` | ⚠️ Unaudited |
| RewardClaimer | unknown | ethereum | n/a | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| RewarderAutoLoader | unknown | linea | n/a | 2 deployments: arbitrum `0xa11733...30bf38`; linea [`0x2abfad...8ceec7`](./contracts/linea-59144/0x2abfad400361d49b40b24a894e0e417c4a8ceec7/) | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | n/a | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0x39baa5...d34867`](./contracts/ethereum-1/0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 6 deployments: ethereum [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22...a713c5`; ethereum `0xba7c0f...c4a54e`; ethereum `0xd69e57...f88003`; ethereum `0xf81d69...4cef69`; ethereum `0xffd22c...69ede3` | ⚠️ Unaudited |
| RewardsHash | unknown | ethereum | n/a | 2 deployments: ethereum [`0x70f0f4...373c24`](./contracts/ethereum-1/0x70f0f41b354ce2f1378952c50c635633e0373c24/); base `0xe43ca8...3ed9f7` | ⚠️ Unaudited |
| RewardsManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x1b0512...7d4404`](./contracts/ethereum-1/0x1b05128b262ca335de162c8ad5e9281d5f7d4404/); ethereum `0x7cdbbd...e96d06` | ⚠️ Unaudited |
| RewardValidator | unknown | linea | n/a | 2 deployments: linea [`0x7930ec...b1e0fc`](./contracts/linea-59144/0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc/); linea `0xe57600...c0a97c` | ⚠️ Unaudited |
| REX33 | unknown | linea | n/a | 5 deployments: linea [`0x312b67...433ec0`](./contracts/linea-59144/0x312b67a8de4291ce2c3628d24fa62eb04f433ec0/); linea `0xbf42f6...639dff`; linea `0xc4b578...31509c`; linea `0xccfc11...f15749`; linea `0xe4eeb4...f051c4` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | linea | n/a | 10 deployments: ethereum `0x61f8be...bc2cac`; sonic `0x356d6e...46751f`; sonic `0x471100...cb8c9e`; sonic `0x7844db...5a3e97`; base `0xbcf67d...661795`; plasma `0xf25bdd...6d124f`; arbitrum `0x99ebce...8bed0e`; arbitrum `0xd24125...ab5b3d`; arbitrum `0xe84cea...72d97f`; linea [`0x03dc05...175618`](./contracts/linea-59144/0x03dc051eb7fe444cebcc2e870eba4464d8175618/) | ⚠️ Unaudited |
| Router | adapter | linea | n/a | 7 deployments: ethereum `0x81cfdc...fb2dec`; ethereum `0x86ac98...a1635c`; ethereum `0x92d853...975b16`; ethereum `0x994303...0f38e8`; ethereum `0xca17f5...b78536`; ethereum `0xf5ad91...cef3e0`; linea [`0x32db39...929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x114ca0...cefa86`](./contracts/ethereum-1/0x114ca0dc51abd118125f84d15f87e01e7dcefa86/); ethereum `0x840a49...4fc210` | ⚠️ Unaudited |
| RswethLRTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0xe861c6...15b90f`](./contracts/ethereum-1/0xe861c6eb5376ada41bcc238080439724fe15b90f/); ethereum `0xeedb3d...b6741a` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xa9900b...1d447b`](./contracts/ethereum-1/0xa9900b2d550c406d1cf58da27228feeef21d447b/) | ⚠️ Unaudited |
| SafeIsSpotEthOracle | operational_periphery | base | n/a | [`0x70659f...12e764`](./contracts/base-8453/0x70659f78ac20a8eddc309d6df6458ceacc12e764/) | ⚠️ Unaudited |
| SafeL2 | unknown | ethereum | n/a | [`0x1bb923...23cdc0`](./contracts/ethereum-1/0x1bb9231f96a5420858d273c3e311f0affc23cdc0/) | ⚠️ Unaudited |
| SelfSpotEthOracle | operational_periphery | ethereum | n/a | [`0x8e9a06...27a5d7`](./contracts/ethereum-1/0x8e9a06f85a3d188f2a851d1b4fb582680727a5d7/) | ⚠️ Unaudited |
| SequencerChecker | unknown | arbitrum | n/a | 4 deployments: base `0x564c39...d23535`; arbitrum [`0x05abaa...1f23f4`](./contracts/arbitrum-42161/0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4/); arbitrum `0x537f6e...d97dcc`; arbitrum `0xf37535...f129ef` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | sonic | n/a | 2 deployments: sonic [`0xadc552...33e2cc`](./contracts/sonic-146/0xadc55207b2f7b9642c4c94a0725a29abb833e2cc/); linea `0xfb918e...eae19d` | ⚠️ Unaudited |
| SiloMainnetDestinationVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x43ac60...97ab82`](./contracts/ethereum-1/0x43ac6018d520280fdbb98159acc4970b2b97ab82/); ethereum `0x679d6f...e3aca9`; ethereum `0x87a840...e4a262` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | sonic | n/a | 10 deployments: ethereum `0xab64ce...294569`; ethereum `0xd7ca2c...51270a`; ethereum `0xebdfe0...e4f7c3`; sonic [`0x1a1c7e...7439c2`](./contracts/sonic-146/0x1a1c7e06fe24d822fbfbe93d6e2f4c70a77439c2/); base `0x27579e...056589`; plasma `0xf68f04...80b335`; arbitrum `0x5984cf...11c192`; arbitrum `0x5db0e6...fd6b14`; arbitrum `0x8e9ac2...2d402d`; linea `0x798b8a...824645` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | plasma | n/a | 6 deployments: ethereum `0xdb8747...3c20f1`; sonic `0x4137b3...1cc970`; base `0x67d29b...282de1`; plasma [`0x03fad8...4d6cad`](./contracts/plasma-9745/0x03fad8445b30bf639c5f54e9502e43ba5f4d6cad/); arbitrum `0x5ee5d0...9cbd14`; linea `0x24127a...127e00` | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x31932e...77fbbe`](./contracts/ethereum-1/0x31932e6e45012476ba3a3a4953cba62aee77fbbe/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0fc455...954b4f`](./contracts/ethereum-1/0x0fc45523d4c63a70f263dceaec9d08c947954b4f/); ethereum `0x1dddf8...1d0122`; ethereum `0xe5943d...6ba92f`; ethereum `0xef8670...4a955b` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x96f98e...3417d3`](./contracts/ethereum-1/0x96f98ed74639689c3a11daf38ef86e59f43417d3/) | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingProxyConvex | proxy | ethereum | n/a | [`0x5d9ef8...a20eb8`](./contracts/ethereum-1/0x5d9ef8f1cfa952a4a383e10a447dd23c5ea20eb8/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/); ethereum `0x3b7382...32a462`; ethereum `0xeb31da...0a2cf3` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StandardNonLPSpotEthOracle | unknown | sonic | n/a | 3 deployments: ethereum `0x84ec46...0c15c1`; ethereum `0xd06906...a6bfba`; sonic [`0x62949f...b628d2`](./contracts/sonic-146/0x62949fc757b22862dde2da40fcc8297c06b628d2/) | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x819806...bc917c`](./contracts/ethereum-1/0x8198069f1709addc6a162c9433665776e5bc917c/); sonic `0x9f6ed3...15dace`; base `0xd82664...8b0a1c` | ⚠️ Unaudited |
| StatsCalculatorRegistry | unknown | base | n/a | 3 deployments: ethereum `0xae6b25...0e2124`; sonic `0x734ad2...dbb67e`; base [`0x22dd21...b217d2`](./contracts/base-8453/0x22dd2189728b40409476f4f80ca8f2f6bdb217d2/) | ⚠️ Unaudited |
| StatsTransientCacheStore | unknown | ethereum | n/a | [`0x34712f...61bb88`](./contracts/ethereum-1/0x34712f37aee81b3a0d2fe03fea9f4cb25961bb88/) | ⚠️ Unaudited |
| StethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x66a466...dbad0c`](./contracts/ethereum-1/0x66a466b838f981b39cf3b3e13e19af5643dbad0c/); ethereum `0xaea78e...02cee7` | ⚠️ Unaudited |
| sTokeExtend | unknown | ethereum | n/a | [`0x6e1f00...c50673`](./contracts/ethereum-1/0x6e1f006c98b7389001eb427b1f593936b5c50673/) | ⚠️ Unaudited |
| StructuredLinkedList | unknown | linea | n/a | 5 deployments: ethereum `0xe40299...b6eb7e`; base `0xdd3aba...fc0865`; plasma `0x22adaa...820812`; arbitrum `0x5c72bd...c4845c`; linea [`0x073633...57401a`](./contracts/linea-59144/0x0736339bfcd152be60b504b19298a5d33b57401a/) | ⚠️ Unaudited |
| SubSaturateMath | unknown | linea | n/a | [`0xe51fc5...a08456`](./contracts/linea-59144/0xe51fc5f8e61bab7559208969db34eaece8a08456/) | ⚠️ Unaudited |
| SushiswapControllerV1 | governance | ethereum | n/a | [`0x3f2647...ec3bf5`](./contracts/ethereum-1/0x3f2647952208c1f22d8045e1b55d361abcec3bf5/) | ⚠️ Unaudited |
| SwapperAdapter | adapter | plasma | n/a | 4 deployments: sonic `0x833adb...d3d4e3`; plasma [`0x22babd...34c56f`](./contracts/plasma-9745/0x22babd3e0db07b69bb265e58c52d6a131234c56f/); arbitrum `0xac2e82...cad295`; linea `0xdf0797...a075ff` | ⚠️ Unaudited |
| SwapRouter | unknown | base | n/a | 4 deployments: sonic `0x9b7d6e...4a3b10`; base [`0x23783e...b85666`](./contracts/base-8453/0x23783e62282ca68fd5c3fb45fc7ad01f21b85666/); linea `0x8be024...a5052a`; linea `0xf0e746...7956d1` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | arbitrum | n/a | 10 deployments: ethereum `0x955b5a...4679ca`; sonic `0x7850cf...d3f1b9`; sonic `0xce96e2...66fc71`; base `0x77e11d...6e48dc`; plasma `0xb4da8d...fbcbe6`; arbitrum [`0x096f44...33e59a`](./contracts/arbitrum-42161/0x096f44f9fbbe6116de5db5954de776fb8733e59a/); arbitrum `0x0ed955...cde632`; arbitrum `0x11d14d...6f55e7`; arbitrum `0x4dd492...f6cd37`; arbitrum `0x5e4cb1...599da6` | ⚠️ Unaudited |
| SwapXClassicSwap | unknown | sonic | n/a | [`0x09cf82...38eeb9`](./contracts/sonic-146/0x09cf827dd2a80281d5e1bbd210df526f4338eeb9/) | ⚠️ Unaudited |
| SwapXConcentratedSwap | unknown | sonic | n/a | [`0xb4ed0b...5d3960`](./contracts/sonic-146/0xb4ed0b7fea9a1a03b4a9ef0c6b4b1738205d3960/) | ⚠️ Unaudited |
| SwethLSTCalculator | token | ethereum | n/a | 2 deployments: ethereum [`0x60e98e...ce3c9e`](./contracts/ethereum-1/0x60e98e2dac20faab84781076164290cc31ce3c9e/); ethereum `0x7cbbb3...ac7408` | ⚠️ Unaudited |
| SystemRegistry | unknown | sonic | n/a | 3 deployments: ethereum `0x2218f9...aa4285`; sonic [`0x1e4cb0...3acb29`](./contracts/sonic-146/0x1e4cb0bd70860ac5b58acbe950878419483acb29/); sonic `0x734f85...97d5b1` | ⚠️ Unaudited |
| SystemRegistryL2 | unknown | base | n/a | 6 deployments: sonic `0x1a912e...ad8848`; base [`0x18dc92...371b4e`](./contracts/base-8453/0x18dc926095a7a007c01ef836683fdef4c4371b4e/); arbitrum `0x700915...c86a2f`; arbitrum `0x7af0c2...639b7c`; arbitrum `0xbfd8e6...7b4220`; linea `0x25f26e...a9f980` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x027a33...238833`](./contracts/ethereum-1/0x027a3359b803885261b140415873845f72238833/); ethereum `0xe57a2e...f39b20`; sonic `0x4024de...a2f1a2`; sonic `0x479b70...0072af`; sonic `0xb960eb...ace4d2`; plasma `0xf8cda9...699834`; linea `0x795abe...87f494`; linea `0xa287f0...493e46` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | arbitrum | n/a | 7 deployments: base `0x8c58af...8b4006`; base `0xb246f6...6192de`; arbitrum [`0x062a72...948127`](./contracts/arbitrum-42161/0x062a72ebb3f4a6c14fa18b2dcf34a8ee90948127/); arbitrum `0x63051c...05e6a1`; arbitrum `0x9b17ef...e08a96`; arbitrum `0xa19d96...44a44c`; arbitrum `0xe7eeb1...96cf99` | ⚠️ Unaudited |
| TickLens | periphery | linea | n/a | [`0x432a52...e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| Toke | unknown | ethereum | n/a | [`0x2e9d63...a38c94`](./contracts/ethereum-1/0x2e9d63788249371f1dfc918a52f8d799f4a38c94/) | ⚠️ Unaudited |
| TokeMigrationPool | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa760e2...8eb930`](./contracts/ethereum-1/0xa760e26aa76747020171fcf8bda108dfde8eb930/); ethereum `0xdb7074...d1e86e` | ⚠️ Unaudited |
| TokenManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d520c...bd8326`](./contracts/ethereum-1/0x6d520c82cfa8146afe500e6ddd8b39c1d7bd8326/); ethereum `0xffec41...ed5020` | ⚠️ Unaudited |
| TokenMigration | unknown | ethereum | n/a | [`0x279c80...ea0a72`](./contracts/ethereum-1/0x279c803e118609591e13e780269cd7f77dea0a72/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | ⚠️ Unaudited |
| TokeVotePool | core_logic | ethereum | n/a | [`0xc727de...6559e1`](./contracts/ethereum-1/0xc727defdb67974a63832d47ed08dd65cea6559e1/) | ⚠️ Unaudited |
| TopWithdrawMonitor | operational_periphery | ethereum | n/a | [`0x727313...97def9`](./contracts/ethereum-1/0x7273138186426119a809ede5d6e00169c997def9/) | ⚠️ Unaudited |
| TracerDAO | unknown | ethereum | n/a | [`0x515f28...aa259a`](./contracts/ethereum-1/0x515f2815c950c8385c1c3c30b63adf3207aa259a/) | ⚠️ Unaudited |
| TracerMultisigDAO | unknown | ethereum | n/a | [`0xa84918...6b6cba`](./contracts/ethereum-1/0xa84918f3280d488eb3369cb713ec53ce386b6cba/) | ⚠️ Unaudited |
| TransientStorage | unknown | plasma | n/a | 3 deployments: plasma [`0x596bec...821254`](./contracts/plasma-9745/0x596bec113eb0a63660a662519fc2f715bc821254/); arbitrum `0xc54851...a30833`; arbitrum `0xedcce7...de9d51` | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | n/a | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x38c279...4736c1`](./contracts/ethereum-1/0x38c279761864a2329b8298b730ba5e31bf4736c1/); ethereum `0x66ded3...d80176` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x3bc59a...2d3671`](./contracts/ethereum-1/0x3bc59a43d82c1acf3a597652eadd3a02082d3671/); ethereum `0xc8e257...44da8a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 3 deployments: ethereum [`0x50b82e...80feea`](./contracts/ethereum-1/0x50b82e9b1811125b4c4fc463616580d60b80feea/); ethereum `0x93b34b...3d25f8`; ethereum `0xd54d2b...695bd1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 8 deployments: ethereum `0x378ba0...3fbaf8`; ethereum `0x7d4a5e...41fc96`; base `0x0f7485...ec6053`; base `0x277078...901ebf`; base `0x535158...e46ff0`; base `0x9ecdc0...fff6c4`; base `0xad68bd...d3db34`; arbitrum [`0x01890e...744be4`](./contracts/arbitrum-42161/0x01890ea9326d6c2d5941a51473d12f8179744be4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | n/a | [`0xf26431...1bb458`](./contracts/linea-59144/0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458/) | ⚠️ Unaudited |
| UniProxy | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1dceb4...00c161`](./contracts/ethereum-1/0x1dceb477e6216ae03252c359d48580822600c161/); ethereum `0x2ac79b...6706db`; ethereum `0x2c5114...01a111`; ethereum `0x785454...7448b3`; ethereum `0x7ab903...0ce316`; ethereum `0xe25811...ce869f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fa464...38c688`](./contracts/ethereum-1/0x5fa464cefe8901d66c09b85d5fcdc55b3738c688/); ethereum `0xd4e7a6...647e38` | ⚠️ Unaudited |
| UniV3Swap | unknown | linea | n/a | 8 deployments: sonic `0x5520f6...c4acf8`; base `0x0915f5...da6e71`; base `0xec306b...30ced9`; plasma `0x90535f...55dcd1`; arbitrum `0x0ca3d0...34bb42`; arbitrum `0xfe10f2...1dbffb`; linea [`0x0093ff...b144c6`](./contracts/linea-59144/0x0093fff32ee2d0469cb00badb9f8d47efbb144c6/); linea `0xae315b...66bcc9` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | base | n/a | 2 deployments: base [`0xad1ccb...d4eb7a`](./contracts/base-8453/0xad1ccb0409424a02d7673aa1e568f695cbd4eb7a/); base `0xe4fef2...68ca11` | ⚠️ Unaudited |
| UniversalRouter | adapter | linea | n/a | [`0x859744...07826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x886ce9...62399d`](./contracts/ethereum-1/0x886ce997aa9ee4f8c2282e182ab72a705762399d/); ethereum `0x8f5930...95da47` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| Visor | unknown | ethereum | n/a | 7 deployments: ethereum [`0x00ae28...e17b0d`](./contracts/ethereum-1/0x00ae28c731e1fb152907a2e79d033bd638e17b0d/); ethereum `0x08fb62...de76e9`; ethereum `0x17cc4e...cd2f79`; ethereum `0x8398a3...0e38f2`; ethereum `0x8daed2...c7752c`; ethereum `0xe2696f...94502d`; ethereum `0xf62dff...e16d04` | ⚠️ Unaudited |
| VisorFactory | registry | ethereum | n/a | [`0xae0323...e6f20a`](./contracts/ethereum-1/0xae03233307865623aaef76da9ade669b86e6f20a/) | ⚠️ Unaudited |
| Vote | unknown | base | n/a | [`0x388cff...8d0fb9`](./contracts/base-8453/0x388cff4079e382fd7c11d699eb183882868d0fb9/) | ⚠️ Unaudited |
| VoteModule | unknown | linea | n/a | 2 deployments: linea [`0xedd7cb...9c15b1`](./contracts/linea-59144/0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1/); linea `0xf70dc8...631ee4` | ⚠️ Unaudited |
| Voter | unknown | linea | n/a | 7 deployments: linea [`0x1dac11...a94046`](./contracts/linea-59144/0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046/); linea `0x4961f7...fc7679`; linea `0x5f26a6...06fc19`; linea `0x706e4a...f157e1`; linea `0xa0b937...d4f116`; linea `0xade917...9d56d1`; linea `0xe8e8e8...2f8468` | ⚠️ Unaudited |
| Voter | unknown | linea | n/a | 2 deployments: linea [`0x56ebcf...dd256f`](./contracts/linea-59144/0x56ebcffb07b86b87d1d344e5c483b18d07dd256f/); linea `0x982c01...caa125` | ⚠️ Unaudited |
| Voter | unknown | linea | n/a | [`0x942117...f889c1`](./contracts/linea-59144/0x942117ec0458a8aa08669e94b52001bd43f889c1/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 200 deployments: ethereum [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/); ethereum `0x01632e...d5dc35`; ethereum `0x01b36f...b62ca1`; ethereum `0x02d341...1b285c`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x06534b...15fa35`; ethereum `0x071c66...ee8f4b`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x095915...21c9ae`; ethereum `0x096723...1c15ca`; ethereum `0x09eb0a...0339b9`; ethereum `0x09f4b8...9d4c05`; ethereum `0x0a53fa...e01e8e`; ethereum `0x0b5b92...3b0453`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f7cd0...2596dc`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x12220a...ac9b34`; ethereum `0x1337be...7963ec`; ethereum `0x13e987...dbd781`; ethereum `0x174baa...f1ca49`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1b0d34...ceac33`; ethereum `0x1b3e14...573e5b`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x213be3...2d5bbe`; ethereum `0x2393c3...548011`; ethereum `0x24d937...ae2262`; ethereum `0x2db0e8...e72840`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2ef1bc...656bc3`; ethereum `0x2f956e...5e027f`; ethereum `0x2fe94e...f9d614`; ethereum `0x32fb6b...3f4906`; ethereum `0x331af2...f9f785`; ethereum `0x35796d...c29f39`; ethereum `0x3669c4...fce737`; ethereum `0x368736...4ac0bd`; ethereum `0x36965b...1f1e80`; ethereum `0x39eac4...7c2bb5`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x3ef6a0...38e604`; ethereum `0x40fd58...ea56a8`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x462253...22ca39`; ethereum `0x466c8f...bd3f96`; ethereum `0x4a4d78...025c3f`; ethereum `0x4aacf3...170e33`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x50b085...068494`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x5544a0...4e0ba0`; ethereum `0x55858a...48e7ee`; ethereum `0x55aa9b...1ce7a9`; ethereum `0x55b916...e29822`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5ae854...34d846`; ethereum `0x5b5cfe...003858`; ethereum `0x5bd47e...2466b8`; ethereum `0x5f8908...f79fe6`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x6326de...d9b43e`; ethereum `0x64448b...b7136e`; ethereum `0x6523ac...d963f1`; ethereum `0x6600e9...b86afb`; ethereum `0x67a021...90f9fa`; ethereum `0x6955a5...c11f15`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x6dc22c...de1186`; ethereum `0x786b37...301a58`; ethereum `0x78cf25...286470`; ethereum `0x7d8644...6b2b4c`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x7f55dd...6bdbef`; ethereum `0x7f9012...39f353`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x8101e6...1b7162`; ethereum `0x824f13...77a637`; ethereum `0x82c1cc...75b7ac`; ethereum `0x83f252...3744d7`; ethereum `0x8474dd...dec9f6`; ethereum `0x86a91b...b31369`; ethereum `0x874210...2e9af3`; ethereum `0x88855c...e915be`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x8c1ab7...d7de9b`; ethereum `0x8cf8af...f0d72b`; ethereum `0x8db91a...21faca`; ethereum `0x8e0c00...5b0d16`; ethereum `0x8e764b...829809`; ethereum `0x8f942c...2250d0`; ethereum `0x90bb60...245840`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94c866...5f6287`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x96d7bc...cfe8d9`; ethereum `0x97e276...19b787`; ethereum `0x9b52f1...409cc3`; ethereum `0x9b762e...11d5ec`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa52ee2...dd8dda`; ethereum `0xa549ff...9cf3cf`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa42c0...b1ff81`; ethereum `0xaa82ca...ddc78c`; ethereum `0xaad072...27c21e`; ethereum `0xabadfd...677d2e`; ethereum `0xad4753...7c1ad7`; ethereum `0xadf698...f6e205`; ethereum `0xaf8e83...52639a`; ethereum `0xb0a071...f52f2d`; ethereum `0xb174da...125c81`; ethereum `0xb9705e...019b14`; ethereum `0xb9fc15...c990d4`; ethereum `0xba6d79...e6c586`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc2b1df...0bf627`; ethereum `0xc45b2e...93c756`; ethereum `0xc4c78b...ecd630`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc620aa...d05655`; ethereum `0xc64f26...e7c47f`; ethereum `0xc6a846...7c9a52`; ethereum `0xc6c09b...53bc5a`; ethereum `0xc8418a...adc5b0`; ethereum `0xc85b38...4a5dd9`; ethereum `0xcee60c...656f3a`; ethereum `0xcfbd5a...2b58c0`; ethereum `0xd1602f...b0c6a2`; ethereum `0xd16ea3...5cd8c9`; ethereum `0xd1ebef...c17d67`; ethereum `0xd30dd0...225ac8`; ethereum `0xd35b58...de5bf6`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd66290...588b5d`; ethereum `0xd6930b...237594`; ethereum `0xd69ac8...294890`; ethereum `0xd782eb...849394`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xdd0e10...8774b8`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xdfc7ad...492aee`; ethereum `0xe1ea5d...fd0969`; ethereum `0xe49fad...a93fe1`; ethereum `0xe4b658...cfb3e6`; ethereum `0xe4c64b...069527`; ethereum `0xe5f41a...b5a2a6`; ethereum `0xe5f4b8...2e44de`; ethereum `0xe64608...4b552c`; ethereum `0xe7a24e...d7d171`; ethereum `0xe8060a...5da85f`; ethereum `0xeb16ae...65a733`; ethereum `0xecaaec...f29d9e`; ethereum `0xecb456...e9b347`; ethereum `0xedf2c5...4fe242`; ethereum `0xefe30d...4d62e8`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf3b648...ce2e24`; ethereum `0xf5194c...c1949f`; ethereum `0xf6bdc2...8cb1c9`; ethereum `0xf7de9c...19de09`; ethereum `0xf8b8db...47ca1e`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xf9fc73...5985cd`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d`; ethereum `0xfe6251...1e2e93` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | linea | n/a | 5 deployments: ethereum `0x865a21...a5bb15`; base `0x7bce7f...1d9d4d`; plasma `0x6da532...75acda`; arbitrum `0xc5827c...c678a9`; linea [`0x02a50c...e9352c`](./contracts/linea-59144/0x02a50caf707ed8e99545f60b82e0c1ce1ee9352c/) | ⚠️ Unaudited |
| WrapZeroCalculator | unknown | ethereum | n/a | 7 deployments: ethereum [`0x148cc2...71b298`](./contracts/ethereum-1/0x148cc2553c7f3d7db1825ff893f8f433a871b298/); ethereum `0x35d305...ad4578`; ethereum `0x7a4818...944d87`; ethereum `0x9cd467...430dfe`; ethereum `0xbc2d91...0c2899`; ethereum `0xda5bdd...8095d3`; ethereum `0xfd4026...1a4f2b` | ⚠️ Unaudited |
| WstETHEthOracle | operational_periphery | ethereum | n/a | [`0x31fec5...5af883`](./contracts/ethereum-1/0x31fec5a6c6bbf907144e6f81f60292ba7a5af883/) | ⚠️ Unaudited |
| xGamma | unknown | ethereum | n/a | [`0x268050...747d8c`](./contracts/ethereum-1/0x26805021988f1a45dc708b5fb75fc75f21747d8c/) | ⚠️ Unaudited |
| XRex | unknown | linea | n/a | 2 deployments: linea [`0x58d034...146997`](./contracts/linea-59144/0x58d034c3c22851e9dc8fc2f07055659cf9146997/); linea `0xc93b31...f366cc` | ⚠️ Unaudited |
| ZeroCalculator | unknown | arbitrum | n/a | 9 deployments: sonic `0xf0be36...07ed33`; base `0x293f40...059144`; base `0x52282f...2738e2`; base `0x74b6cc...c76902`; plasma `0x2be9f3...beec61`; plasma `0xf58d7b...3da687`; arbitrum [`0x254d87...e6c563`](./contracts/arbitrum-42161/0x254d871685cac3b4a3b50f20e256fb4a9ae6c563/); arbitrum `0xaabc17...6197f5`; linea `0x94f20c...af56fe` | ⚠️ Unaudited |
| ZeroExSwapper | adapter | linea | n/a | [`0x69c6fb...c0440e`](./contracts/linea-59144/0x69c6fbba613dcf20cfa42aec902572d3fcc0440e/) | ⚠️ Unaudited |
| ZeroOracle | unknown | base | n/a | 9 deployments: ethereum `0x655fa9...b8aa28`; sonic `0x7f61fd...f5bc63`; sonic `0xaf4c76...d5dc40`; sonic `0xd2926f...d0c69e`; base [`0x015546...a1d14d`](./contracts/base-8453/0x01554657fa8c37161cad0fdc090e6a26aea1d14d/); plasma `0x6b7610...3d5d48`; arbitrum `0x42ecca...d23713`; arbitrum `0xc14caf...6133d3`; linea `0xd7c964...b24841` | ⚠️ Unaudited |
| ZkAddressRegistry | registry | ethereum | n/a | [`0x37076f...3d9eb2`](./contracts/ethereum-1/0x37076f886de8054d12a12db6253e871f6d3d9eb2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GaugeFactory | unknown | linea | n/a | 2 deployments: linea [`0x1ddf72...7944b3`](./contracts/linea-59144/0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3/); linea `0xd766d9...c4a200` | ⚠️ Unaudited (bytecode match) |
| GaugeV3 | operational_periphery | linea | n/a | 2 deployments: linea [`0x499aed...dd8fcb`](./contracts/linea-59144/0x499aed38bdafd972e1cd2926d2b9088547dd8fcb/); linea `0xfb8561...c4950d` | ⚠️ Unaudited (bytecode match) |
| UpgradeableAutopoolFactory | unknown | sonic | n/a | 17 deployments: ethereum `0x2567c9...05e59f`; ethereum `0x2b2ca9...1ceb72`; ethereum `0x866cf4...11c4ce`; ethereum `0x90f74a...95cd35`; sonic [`0x00d9ca...f489af`](./contracts/sonic-146/0x00d9cad65287d22c60d9c1957e844b06c4f489af/); sonic `0x865774...c55b70`; sonic `0x98bbb7...6b38e8`; sonic `0xe76266...e5c9e8`; base `0x02fe08...e44d89`; base `0xc1e701...a34f79`; base `0xd0446a...1bd4e4`; base `0xdbb093...c2dc21`; base `0xdd08e4...b32b9e`; base `0xdf6dc6...699cd8`; arbitrum `0x9f76d5...08d7fb`; arbitrum `0xc08f39...a917a7`; linea `0x01890e...744be4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (89)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0882ab...e7da64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14458f...c138a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16243c...962468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16fff7...f054c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17e870...4ff07f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18dc92...371b4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a6593...32bed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a912e...ad8848` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5868...ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2650d4...72e28f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5354...bf8d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d363d...d55111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e8a2...a17a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58edd1...daa754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c99be...0aeb05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f13ab...9bc520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65f0a0...227711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dbe14...3f11f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x767789...04b9ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87fab8...380f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cccdb...3e6a1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92872b...367057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94f13c...276df8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98801b...b33082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98ddbb...4130cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9be019...558103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa706a7...ab5ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabadfe...1e1907` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaedc80...b5cc14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfd8e6...7b4220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc63b77...01bd87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe14833...100ad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2470c...512f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5d263...92eeac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecaa8d...385e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee04bd...fbc3cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee291...cbe213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf721b9...9ac710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b1f1...7c9161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff46eb...9086dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0387a5...c17d0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fec72...afa684` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e2fd1...572fbd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x244717...1b3b73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x249acd...0a40e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f1663...ed5697` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68c58d...4c5bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b229e...724b49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x819dbf...00f8df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95a2d8...cc34c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc285c8...a2e696` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd25751...c97332` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf73428...3305ca` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0d8ea4...47668c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0da0e8...54e1dc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x162f49...b4b30f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x3540f2...654834` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x459386...067ccd` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4dd032...77e097` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x58f411...3773a3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7bc604...560397` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7bea14...ebe83d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7de076...ffc1f4` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8ccd47...00347d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8dbad4...ae72e8` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xac93ee...be4113` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xe3063e...8246a5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc2337...8e5106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2218f9...aa4285` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f465e...d60605` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6aec50...339c2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa86e41...b86a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf4fc6...7373e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2edad...a888cd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x09e53a...83b9e7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0c1de6...167d8e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x10e5e0...cab7bc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2acbdb...19d2a6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x35e755...ad5a69` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x631a30...4637f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7601df...7497b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x762e61...7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x88c987...d56756` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x971634...461ee0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb39939...5f11f4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd0dad8...1c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf36208...f1c721` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view](https://drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view](https://drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view?usp=sharing) | Hexens | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view](https://drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view) | Hexens | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf](https://certora.cdn.prismic.io/certora/Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf) | Certora | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Report.md](https://github.com/Certora/tokemak-v2-core-fv/blob/main/Report.md) | Certora | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2Fm9vasMSC35JbnaqfyPVN%2FTokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2FauBJzmmsZIR0afW4AD7c%2FTokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view](https://drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view) | Halborn | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x383518...14a899`](./contracts/ethereum-1/0x383518188c0c6d7730d91b2c03a03c837814a899/) | OlympusERC20Token | token | $21,712,444.80 | Verified native implementation with $21,712,444.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x03825c...c5bf0d`](./contracts/linea-59144/0x03825c8c817ff49a208c9c20365c002418c5bf0d/) | AutopoolMainRewarder | core_logic | $18,482,031.55 | Verified native implementation with $18,482,031.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | token | $10,266,778.10 | Verified native implementation with $10,266,778.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $7,172,260.89 | Verified native implementation with $7,172,260.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1975b2...9b20bb`](./contracts/arbitrum-42161/0x1975b2d4c525587a50d431b68634067de29b20bb/) | FluidDestinationVault | core_logic | $821,430.69 | Verified native implementation with $821,430.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb104a7...8246d5`](./contracts/ethereum-1/0xb104a7fa1041168556218ddb40fe2516f88246d5/) | EthPool | core_logic | $449,445.58 | Verified native implementation with $449,445.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x117a0b...23560c`](./contracts/ethereum-1/0x117a0bab81f25e60900787d98061ccfae023560c/) | DepositToken | token | $322,760.20 | Verified native implementation with $322,760.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e80f6...a47dc6`](./contracts/ethereum-1/0x0e80f6db7fc8e5966828eae36874b62dc8a47dc6/) | SiloVaultWrapper | core_logic | $268,629.27 | Verified native implementation with $268,629.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | TracerToken | token | $172,890.00 | Verified native implementation with $172,890.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x134c05...c8157f`](./contracts/ethereum-1/0x134c0591183e9c8a39250a9a04e6f8585bc8157f/) | APWToken | token | $112,368.76 | Verified native implementation with $112,368.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x116b3e...bf8f3e`](./contracts/ethereum-1/0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e/) | ERC20DestinationVault | core_logic | $52,043.38 | Verified native implementation with $52,043.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1300...eaf5ba`](./contracts/ethereum-1/0x4b13006980acb09645131b91d259eaa111eaf5ba/) | MYCToken | token | $45,738.35 | Verified native implementation with $45,738.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x044e16...81b776`](./contracts/base-8453/0x044e1609efb154150436cec9d03e95847f81b776/) | FlashBorrowerSolver | core_logic | $455.97 | Verified native implementation with $455.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09006e...ca9312`](./contracts/arbitrum-42161/0x09006e65787c8389b230758f23f66b2ca3ca9312/) | AccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x00cc29...423b67`](./contracts/linea-59144/0x00cc296010664ff909aa90795a919046d1423b67/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2445e2...91e63c`](./contracts/ethereum-1/0x2445e2f04d6bd2995003c1cb115292942d91e63c/) | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb02cb1...57184e`](./contracts/base-8453/0xb02cb15597e214b9a843ccff9eefe628c057184e/) | AerodromeStakingDexCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9813e3...89f3e3`](./contracts/base-8453/0x9813e3091278f41cd6b2686ff83255f97889f3e3/) | AerodromeStakingIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x097080...c5d0c2`](./contracts/plasma-9745/0x09708019cf2527ad3263885ff712fc79cec5d0c2/) | ArraysConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x29d826...1c9f2b`](./contracts/arbitrum-42161/0x29d826a1bc5e87773571e5444da31f82131c9f2b/) | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x041679...74ea07`](./contracts/ethereum-1/0x041679acb4088288178589c059543b56ce74ea07/) | AuraCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c4b58...13c539`](./contracts/base-8453/0x7c4b58eaa93005162bc80285af2003517213c539/) | AuraL2Calculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2e5c9e...7c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37dd40...e8ae21`](./contracts/ethereum-1/0x37dd409f5e98ab4f151f4259ea0cc13e97e8ae21/) | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc45e93...084c30`](./contracts/ethereum-1/0xc45e939ca8c43822a2a233404ecf420712084c30/) | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4d2b87...40f8df`](./contracts/base-8453/0x4d2b87339b1f9e480aa84c770fa3604d7d40f8df/) | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27a9c1...7621ad`](./contracts/arbitrum-42161/0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad/) | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fe851...a81159`](./contracts/ethereum-1/0x0fe85151d909f5571ac698ae756c5ff924a81159/) | Autopool4626 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x153993...c780a9`](./contracts/plasma-9745/0x153993b20c5e5be956cec763ed936a44d3c780a9/) | AutopoolDebt | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x12d0df...49651a`](./contracts/plasma-9745/0x12d0dfa581162f43877e2e26b46da15e3049651a/) | AutopoolDestinations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ac1e0...8e9275`](./contracts/ethereum-1/0x1ac1e03ac3b98f1c4361fb1a90b6824eff8e9275/) | AutopoolETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05e14b...372c45`](./contracts/base-8453/0x05e14bc4e4eb7db75354256ae239b8567f372c45/) | AutopoolFees | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d39bf...89f876`](./contracts/base-8453/0x1d39bfee43a17bab3d35ce3503194309fe89f876/) | AutopoolStrategyHooks | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x2afc63...4f4da5`](./contracts/plasma-9745/0x2afc63a4339a0ad89a00f46258d239b3a64f4da5/) | AutopoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x620152...5ea3f2`](./contracts/ethereum-1/0x6201523176dc66ccd249248b9c422aac725ea3f2/) | BalancerV2Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cde65...4647be`](./contracts/arbitrum-42161/0x1cde65265061d84753086fe39084694f934647be/) | BankSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8821a5...7cf6b8`](./contracts/ethereum-1/0x8821a5c4f808d970de5bb2c31379c67cd67cf6b8/) | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0288ef...246b19`](./contracts/linea-59144/0x0288ef3f2b32fbd03df27b27ca615080b2246b19/) | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x117c65...a210fd`](./contracts/ethereum-1/0x117c6504382434076ccf7121d747413ac2a210fd/) | BebopSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x218975...7a76f2`](./contracts/linea-59144/0x2189751274d792b6693e70468fb43ec4af7a76f2/) | BlockchainInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x12d5aa...48b970`](./contracts/plasma-9745/0x12d5aad28da62a2d7ec2255af6202a458b48b970/) | Bytes32 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24d783...069abb`](./contracts/ethereum-1/0x24d783e5ed8e4a507583e0c79abf489051069abb/) | CbethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | CommunalFarm_SaddleD4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67c159...c21030`](./contracts/ethereum-1/0x67c15923248baf96fb3944a2a326a237b4c21030/) | CustomRedStoneOracleAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53ff9d...24066f`](./contracts/ethereum-1/0x53ff9d648a8a1cf70c6b60ae26b93047cc24066f/) | CustomSetOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6404f6...81cfdc`](./contracts/ethereum-1/0x6404f61b3d12b5f87d6f76c2c8b58a420581cfdc/) | DaiUsdsSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc80373...00ac38`](./contracts/ethereum-1/0xc803737d3e12cc4034dde0b2457684322100ac38/) | DefiRound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8599f0...ae7e7f`](./contracts/base-8453/0x8599f04821421d8f9a5e0a5f06eb1630cdae7e7f/) | Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ac921...54232b`](./contracts/ethereum-1/0x3ac921bb16321e8c9b2e6b83c56397f2e054232b/) | DestinationIncentiveChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ca8f3...443fc1`](./contracts/arbitrum-42161/0x4ca8f3e9a5adc4893c93643b2cd90dc9eb443fc1/) | DestinationVaultExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37de6f...0ff124`](./contracts/ethereum-1/0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124/) | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x269dbe...908be7`](./contracts/ethereum-1/0x269dbe2c9a5756e2fc48c173c869679df3908be7/) | DexIncentiveSetCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4353e1...1350ba`](./contracts/ethereum-1/0x4353e181c13f7e970f24016a0762c1af271350ba/) | EethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa573a...86df81`](./contracts/ethereum-1/0xaa573a9bf7560870a925ea1704c061546486df81/) | EethOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000404...aadf01`](./contracts/ethereum-1/0x0004042f1cfaef8bd011e73d99f85a44b0aadf01/) | ERC4626NonLPSpotEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1068bb...595061`](./contracts/linea-59144/0x1068bb81ac98aa7c1996ee0ea1189cc7cd595061/) | ERC4626NonLPSpotRangeOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcd749a...138a61`](./contracts/base-8453/0xcd749af731078ec7657a30458d3bc6558b138a61/) | ERC4626OneToOneCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cbd79...0ba22b`](./contracts/arbitrum-42161/0x1cbd79d2d77faa8980c4f7fda0f6591aec0ba22b/) | ERC4626RedeemSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dfb50...ae8c88`](./contracts/ethereum-1/0x1dfb5041c3f594caef41bcec02f3a9af47ae8c88/) | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d1e06...821fa8`](./contracts/ethereum-1/0x0d1e06578f4ae09e81d33bf5587a0616f4821fa8/) | ERC4626VaultShareEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16adb8...f5a0a8`](./contracts/arbitrum-42161/0x16adb8209618e0cbd4c19f0487f8916b0cf5a0a8/) | EthPeggedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd9251...625a3d`](./contracts/ethereum-1/0xdd92511f1fbe5de911e22a0247ba8c212d625a3d/) | EthPerTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77f18a...b864ee`](./contracts/ethereum-1/0x77f18a6968a38f9aef1af676420c4799e8b864ee/) | EthPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2757f5...5b0c55`](./contracts/ethereum-1/0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55/) | ETHxLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x07ed7e...b8f95b`](./contracts/plasma-9745/0x07ed7ef81d7dd79fb6043d0a37c11d78f3b8f95b/) | EulerDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x349e41...6d59dd`](./contracts/linea-59144/0x349e418073d660dbd419ffc407d4ba077b6d59dd/) | EulerRewardLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c50b...022975`](./contracts/ethereum-1/0x17c50b9fba151f5f88618dae6c394bd731022975/) | ExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa84cc1...b263d9`](./contracts/ethereum-1/0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9/) | EzethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x51a2a0...7f21a1`](./contracts/linea-59144/0x51a2a0b162d27254e30473b7072d95f4b37f21a1/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x61c56a...6f3f6f`](./contracts/linea-59144/0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f/) | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1057b...38e581`](./contracts/ethereum-1/0xd1057b6c6736bf4f5b4a850cff02054f1f38e581/) | FeeRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x956f47...7f87ca`](./contracts/ethereum-1/0x956f47f50a910163d8bf957cf5846d573e7f87ca/) | Fei | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | FPIControllerPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449a95...787590`](./contracts/ethereum-1/0x449a957490e24e4d915fd5dcf25dd5446e787590/) | FrxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bea7c...44e197`](./contracts/ethereum-1/0x6bea7cfef803d1e3d5f7c0103f7ded065644e197/) | Gamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18068c...3b0b25`](./contracts/linea-59144/0x18068c050d237d46310f59f40559bd0c6b3b0b25/) | GaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x499aed...dd8fcb`](./contracts/linea-59144/0x499aed38bdafd972e1cd2926d2b9088547dd8fcb/) | GaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | gOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf25dc5...baa20c`](./contracts/ethereum-1/0xf25dc58c25ba97529f5504dca81d2eaf4abaa20c/) | GT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x076f94...a65f50`](./contracts/ethereum-1/0x076f94efae4621bab537ce72b9eb48bb0ca65f50/) | HoldTokenCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee117a...1ab674`](./contracts/ethereum-1/0xee117a999594cf8e7d5845e4a76cd6f8121ab674/) | IncentiveCalculatorUpdateDestinationVaultExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8607ba...85f862`](./contracts/ethereum-1/0x8607ba6540af378cba64f4e3497fbb2d1385f862/) | IncentivePricingStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03200d...f749c1`](./contracts/arbitrum-42161/0x03200d703c63d3b5a00de9896b7f82c240f749c1/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x610ffe...3e3ab5`](./contracts/arbitrum-42161/0x610ffeb00b8312b0540ded300c683227cb3e3ab5/) | LiquidationRow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59170d...f9f4c9`](./contracts/ethereum-1/0x59170d9d1d3db8ac3539c6705fb38c735af9f4c9/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d1212...695426`](./contracts/arbitrum-42161/0x0d1212d67d676101bc9ed856b8574a95c7695426/) | MaxValueSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54f35d...6cdc8d`](./contracts/base-8453/0x54f35db38f7613a3993e41d56ee9c4c5ee6cdc8d/) | MerklApiOperatorSetExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20ea2f...616f76`](./contracts/ethereum-1/0x20ea2f2ecf36bcb6df086d923a120496dc616f76/) | MessageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x614f11...703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72baaa...39fe76`](./contracts/ethereum-1/0x72baaa523a4662856f413b0fc0a9e3068f39fe76/) | MigrationNFT | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b6d3b...ecc3eb`](./contracts/linea-59144/0x0b6d3b42861ee8abfcaac818033694e758ecc3eb/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09d0d6...b50322`](./contracts/arbitrum-42161/0x09d0d6a48545e959b230600966d93600fab50322/) | MinTimeGapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33db10...9c3624`](./contracts/ethereum-1/0x33db101517112a9b7b9f5b39eac185a0629c3624/) | NavLookbackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21fede...143826`](./contracts/ethereum-1/0x21fededbe1cc5aa22a17f171513c105300143826/) | OethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4e8ce6...8e9b32`](./contracts/arbitrum-42161/0x4e8ce63cce31f667d03955dd98133d504d8e9b32/) | OneToOneBaseAssetBackingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x389df9...7e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cc439...257b1b`](./contracts/ethereum-1/0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b/) | OsethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa38606...c615c3`](./contracts/ethereum-1/0xa386067eb5f7dc9b731fe1130745b0fb00c615c3/) | PointsHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0139b3...e6f15a`](./contracts/ethereum-1/0x0139b34012a6639e896b883901b7dc1bb6e6f15a/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbfc7d...c7ba8a`](./contracts/ethereum-1/0xbbfc7d1d53116830326478f77f489530cec7ba8a/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2832e1...bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x34413f...3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ProtocolActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24864c...25931e`](./contracts/ethereum-1/0x24864cc03efd84f9df0e5f1d23ab69128325931e/) | ProxyLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x878958...a17e73`](./contracts/ethereum-1/0x878958416059f3ea3cd4ac0dc0a5439b49a17e73/) | PufEthLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cc521...ffc629`](./contracts/ethereum-1/0x3cc52170fdea5c485db6d412b78ea40f27ffc629/) | PxETHEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c9b7...06296a`](./contracts/ethereum-1/0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a/) | PxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038516...90fac1`](./contracts/ethereum-1/0x038516cb9bbc0572c2d55896ce75f31fab90fac1/) | RethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2abfad...8ceec7`](./contracts/linea-59144/0x2abfad400361d49b40b24a894e0e417c4a8ceec7/) | RewarderAutoLoader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | RewardHash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70f0f4...373c24`](./contracts/ethereum-1/0x70f0f41b354ce2f1378952c50c635633e0373c24/) | RewardsHash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x312b67...433ec0`](./contracts/linea-59144/0x312b67a8de4291ce2c3628d24fa62eb04f433ec0/) | REX33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x03dc05...175618`](./contracts/linea-59144/0x03dc051eb7fe444cebcc2e870eba4464d8175618/) | RootPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x32db39...929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114ca0...cefa86`](./contracts/ethereum-1/0x114ca0dc51abd118125f84d15f87e01e7dcefa86/) | RsethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe861c6...15b90f`](./contracts/ethereum-1/0xe861c6eb5376ada41bcc238080439724fe15b90f/) | RswethLRTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x70659f...12e764`](./contracts/base-8453/0x70659f78ac20a8eddc309d6df6458ceacc12e764/) | SafeIsSpotEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e9a06...27a5d7`](./contracts/ethereum-1/0x8e9a06f85a3d188f2a851d1b4fb582680727a5d7/) | SelfSpotEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05abaa...1f23f4`](./contracts/arbitrum-42161/0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4/) | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ac60...97ab82`](./contracts/ethereum-1/0x43ac6018d520280fdbb98159acc4970b2b97ab82/) | SiloMainnetDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x03fad8...4d6cad`](./contracts/plasma-9745/0x03fad8445b30bf639c5f54e9502e43ba5f4d6cad/) | SolverRootOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31932e...77fbbe`](./contracts/ethereum-1/0x31932e6e45012476ba3a3a4953cba62aee77fbbe/) | sOlympus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | Stake_FXS_WETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc455...954b4f`](./contracts/ethereum-1/0x0fc45523d4c63a70f263dceaec9d08c947954b4f/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | StakingRewardsMultiGauge_StakeDAO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x819806...bc917c`](./contracts/ethereum-1/0x8198069f1709addc6a162c9433665776e5bc917c/) | StatsCalculatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34712f...61bb88`](./contracts/ethereum-1/0x34712f37aee81b3a0d2fe03fea9f4cb25961bb88/) | StatsTransientCacheStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66a466...dbad0c`](./contracts/ethereum-1/0x66a466b838f981b39cf3b3e13e19af5643dbad0c/) | StethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e1f00...c50673`](./contracts/ethereum-1/0x6e1f006c98b7389001eb427b1f593936b5c50673/) | sTokeExtend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x22babd...34c56f`](./contracts/plasma-9745/0x22babd3e0db07b69bb265e58c52d6a131234c56f/) | SwapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096f44...33e59a`](./contracts/arbitrum-42161/0x096f44f9fbbe6116de5db5954de776fb8733e59a/) | SwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60e98e...ce3c9e`](./contracts/ethereum-1/0x60e98e2dac20faab84781076164290cc31ce3c9e/) | SwethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x027a33...238833`](./contracts/ethereum-1/0x027a3359b803885261b140415873845f72238833/) | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x062a72...948127`](./contracts/arbitrum-42161/0x062a72ebb3f4a6c14fa18b2dcf34a8ee90948127/) | SystemSecurityL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e9d63...a38c94`](./contracts/ethereum-1/0x2e9d63788249371f1dfc918a52f8d799f4a38c94/) | Toke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc727de...6559e1`](./contracts/ethereum-1/0xc727defdb67974a63832d47ed08dd65cea6559e1/) | TokeVotePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x727313...97def9`](./contracts/ethereum-1/0x7273138186426119a809ede5d6e00169c997def9/) | TopWithdrawMonitor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x596bec...821254`](./contracts/plasma-9745/0x596bec113eb0a63660a662519fc2f715bc821254/) | TransientStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | veFXSYieldDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | veFXSYieldDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x02a50c...e9352c`](./contracts/linea-59144/0x02a50caf707ed8e99545f60b82e0c1ce1ee9352c/) | WithdrawalQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x148cc2...71b298`](./contracts/ethereum-1/0x148cc2553c7f3d7db1825ff893f8f433a871b298/) | WrapZeroCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31fec5...5af883`](./contracts/ethereum-1/0x31fec5a6c6bbf907144e6f81f60292ba7a5af883/) | WstETHEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x268050...747d8c`](./contracts/ethereum-1/0x26805021988f1a45dc708b5fb75fc75f21747d8c/) | xGamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x58d034...146997`](./contracts/linea-59144/0x58d034c3c22851e9dc8fc2f07055659cf9146997/) | XRex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x254d87...e6c563`](./contracts/arbitrum-42161/0x254d871685cac3b4a3b50f20e256fb4a9ae6c563/) | ZeroCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37076f...3d9eb2`](./contracts/ethereum-1/0x37076f886de8054d12a12db6253e871f6d3d9eb2/) | ZkAddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 165 |
| upstream | 53 |
| standard_library | 18 |
| needs_review | 187 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [11542] drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view
- [11543] drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view
- [11544] drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view
- [11545] Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf
- [11547] spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf
- [11548] spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf
- [11549] drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view

Fork inheritance lineage and inherited audits are included when available.
