# Agentic Audit Brief: MUX Protocol

## Project Overview

- Project: MUX Protocol (`mux-protocol`)
- Website: [https://mux.network](https://mux.network)
- Lifecycle: active (Tier 0, 89.2% below peak)
- Generated: 2026-06-19T06:14:30.850Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, avalanche, bsc, fantom, optimism
- Contract surface: 161 unique implementations (203 raw deployments)
- DeFi Llama TVL: $8,323,751.00
- On-chain TVL (included contracts): $0.21
- TVL by chain: Arbitrum $0.21

## Project Description

MUX Protocol is a decentralized derivatives platform offering leveraged trading, liquidity provision, and yield strategies across multiple chains. It aggregates liquidity and trading infrastructure through vaults, liquidity pools, and a modular contract architecture.

### Architecture

MUX Perps and MUXLP Tranches share the MUX token and reward infrastructure (e.g., RewardDistributor, RewardController) for incentives. MUX V3 Protocol introduces a new modular architecture but reuses price providers and fee distributors, while the Cross-Chain Bridge supports asset movement across all families.

## Contract Surface Quality

- Indexed contracts: 2151; live-surface contracts included: 203 (62 live, 141 unknown).
- Excluded by liveness: 1490 inactive, 458 singleton, 0 uninitialized.
- Deployment units: 6/206 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 9/37 (24.3%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 124
- Unique implementations: 161
- Raw deployments: 203
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/mux/information))
- ASD (verified + unaudited TVL): $0.21
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 5 | 13.5% | 2022-06 |
| Guardian | Tier 2 | 5 | 13.5% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralPool | core_logic | arbitrum | n/a | [`0x2f9ac5...f7b909`](./contracts/arbitrum-42161/0x2f9ac5322e6fac446e0b9861cf7f8a0662f7b909/) | ✅ Audited |
| Delegator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa3b5d8...938cf3`](./contracts/arbitrum-42161/0xa3b5d8ac1074120d702798cee04cf1c49a938cf3/); arbitrum `0xf370b9...75eaef` | ✅ Audited |
| LibOrderBook | unknown | arbitrum | n/a | 3 deployments: bsc `0x48be7a...2f0b84`; bsc `0xf48342...7a27dd`; arbitrum [`0x1b8ac2...2a63ef`](./contracts/arbitrum-42161/0x1b8ac2bdf693457ab25233f2a2865f3e7d2a63ef/) | ✅ Audited |
| LiquidityManager | governance | bsc | n/a | [`0x71a672...f2614c`](./contracts/bsc-56/0x71a672db7d72047118d664861e4643f84cf2614c/) | ✅ Audited |
| LiquidityPoolHop1 | core_logic | avalanche | n/a | 2 deployments: bsc `0x973db3...ee6b07`; avalanche [`0x3d44ef...d66475`](./contracts/avalanche-43114/0x3d44efa23a531fae02d8daf9ee8daaac61d66475/) | ✅ Audited |
| LiquidityPoolHop2 | core_logic | bsc | n/a | 6 deployments: bsc [`0x3e3ae3...a9706f`](./contracts/bsc-56/0x3e3ae3250a51851242f59d2876db3147a3a9706f/); bsc `0x480894...91df89`; bsc `0x505659...97e785`; bsc `0xcd4e22...abcf8c`; bsc `0xe837ad...78a3a4`; bsc `0xee3b94...94dffa` | ✅ Audited |
| NativeUnwrapper | unknown | bsc | n/a | 2 deployments: bsc [`0x2b9d44...e7771d`](./contracts/bsc-56/0x2b9d445dc03fecd49d52da986b5aca38a7e7771d/); bsc `0x60a8f1...54bcb7` | ✅ Audited |
| OrderBook | unknown | bsc | n/a | 5 deployments: bsc [`0x30ab1b...aa4299`](./contracts/bsc-56/0x30ab1bafa1488a3deb07e98a969f08b969aa4299/); bsc `0x30acc1...2f707e`; bsc `0x38e538...f07e0c`; bsc `0x770cf6...42501b`; bsc `0x826111...b95be1` | ✅ Audited |
| Swapper | adapter | arbitrum | n/a | 6 deployments: arbitrum [`0x36b74e...8e424a`](./contracts/arbitrum-42161/0x36b74e1d00aff68e472dbdcf2e35f085878e424a/); arbitrum `0x37c893...a47837`; arbitrum `0x7f6401...7d1337`; arbitrum `0x91d8c0...2cfeb8`; arbitrum `0xd00594...e85706`; arbitrum `0xd822d7...b703a0` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OriginalTokenVaultV2 | core_logic | arbitrum | n/a | [`0xea4b1b...a4a58b`](./contracts/arbitrum-42161/0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b/) | ⚠️ Unaudited |
| Diamond | unknown | arbitrum | n/a | [`0x53b472...bde744`](./contracts/arbitrum-42161/0x53b47240f9725c9baf4637a1196b1700cfbde744/) | ⚠️ Unaudited |
| GmxAdapter | adapter | arbitrum | n/a | [`0xf89adc...6b72be`](./contracts/arbitrum-42161/0xf89adc4e0f3659e9b69aa4f8606176e8fd6b72be/) | ⚠️ Unaudited |
| GmxV2Adapter | adapter | arbitrum | n/a | 7 deployments: arbitrum [`0x3038fa...31f1bd`](./contracts/arbitrum-42161/0x3038faa722de6f2c9eac80fb15e75bbfef31f1bd/); arbitrum `0x6ccece...d4cc0c`; arbitrum `0x89258c...4ab600`; arbitrum `0x93c68e...ec92cf`; arbitrum `0xcbe6f7...d87c05`; arbitrum `0xd342b2...91ca22`; arbitrum `0xfe2afa...feb115` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | unit-35612 | [`0x7c8126...8068a5`](./contracts/optimism-10/0x7c8126ef43c09c22bf0ccdf7426180e6c48068a5/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-35630 | [`0xf67d9e...964204`](./contracts/bsc-56/0xf67d9ec4f3362589e56ab0dbee448eb7a4964204/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-35634 | [`0x029a4a...c6bfd6`](./contracts/arbitrum-42161/0x029a4a97e892e7270d9b3b90bfef95599bc6bfd6/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | avalanche | unit-35807 | [`0x8564c7...23fc94`](./contracts/avalanche-43114/0x8564c77261094abeee6d60a26d40f8dbaf23fc94/) | ⚠️ Unaudited |
| LibFlashTake | unknown | bsc | n/a | [`0x544458...205a11`](./contracts/bsc-56/0x544458efd22b6953203409d06b50e5ec84205a11/) | ⚠️ Unaudited |
| LibGmx | unknown | arbitrum | n/a | [`0x11c0c4...603bd9`](./contracts/arbitrum-42161/0x11c0c4dd6ce692b2aa2d65da07aa38687f603bd9/) | ⚠️ Unaudited |
| LibGmxV2 | unknown | arbitrum | n/a | [`0x433f76...bbedfb`](./contracts/arbitrum-42161/0x433f7611ef8176b70469dfda659e554ae2bbedfb/) | ⚠️ Unaudited |
| LibLiquidity | unknown | bsc | n/a | 2 deployments: bsc [`0x4b4b0a...95db31`](./contracts/bsc-56/0x4b4b0a545630284fdbb41f4edf78a7087595db31/); bsc `0xfb0dcd...642b76` | ⚠️ Unaudited |
| LibOrderBook2 | unknown | arbitrum | n/a | [`0x0035f6...296059`](./contracts/arbitrum-42161/0x0035f6ca0417cd36eb62764bcbbe163e7d296059/) | ⚠️ Unaudited |
| MarketEventUtils | unknown | arbitrum | n/a | [`0x80c874...e7587b`](./contracts/arbitrum-42161/0x80c874e50017996106baf6d551ed9b0706e7587b/) | ⚠️ Unaudited |
| MarketStoreUtils | unknown | arbitrum | n/a | [`0x46ffa9...a5acec`](./contracts/arbitrum-42161/0x46ffa915d87bf915c2d01ac7d4c1c5338fa5acec/) | ⚠️ Unaudited |
| MarketUtils | unknown | arbitrum | n/a | [`0x2a2987...6b8d9f`](./contracts/arbitrum-42161/0x2a2987c407e76782fc422a27240c9821206b8d9f/) | ⚠️ Unaudited |
| Mux3Rebalancer | adapter | arbitrum | unit-35698 (2 proxies) | 2 deployments: arbitrum [`0x6fded1...4d2705`](./contracts/arbitrum-42161/0x6fded16b69ca396e437af47bdad1d0352e4d2705/); arbitrum `0xe27ca8...757029` | ⚠️ Unaudited |
| MuxBookUpdater202404 | unknown | bsc | n/a | [`0x335fd3...422002`](./contracts/bsc-56/0x335fd3bb235322a54590684b2990e8be73422002/) | ⚠️ Unaudited |
| MuxLpOracle | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x1dc6de...3cb1cf`](./contracts/arbitrum-42161/0x1dc6de1bba19e04c069da8d0a8f367ace33cb1cf/); arbitrum `0x324691...635349`; arbitrum `0x8a71e5...72dbf2`; arbitrum `0xa2288d...58dd58` | ⚠️ Unaudited |
| MuxPoolUpdater202404 | core_logic | bsc | n/a | [`0xe12fde...94310d`](./contracts/bsc-56/0xe12fde70907cdf165eb0d35ffa4f78ce4194310d/) | ⚠️ Unaudited |
| PositionStoreUtils | unknown | arbitrum | n/a | [`0xe1645e...f94f8e`](./contracts/arbitrum-42161/0xe1645e6a4e166ce4811f9fd559b895a9c3f94f8e/) | ⚠️ Unaudited |
| PositionUtils | unknown | arbitrum | n/a | [`0x19b9ec...4f1d8b`](./contracts/arbitrum-42161/0x19b9ecd3fa2dc9272cd815ee05f300534b4f1d8b/) | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | 6 deployments: bsc [`0x2257dc...34ed3f`](./contracts/bsc-56/0x2257dc42b363d611898057354c031a670934ed3f/); bsc `0x2d0c13...e51a4f`; bsc `0xb3022d...3c5fca`; arbitrum [`0x2257dc...34ed3f`](./contracts/arbitrum-42161/0x2257dc42b363d611898057354c031a670934ed3f/); arbitrum `0x67740d...e58508`; arbitrum `0xe75278...c801e9` | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0xe56a0a...e2b29c`](./contracts/arbitrum-42161/0xe56a0a38c6085c748638948e2c224f98c1e2b29c/) | ⚠️ Unaudited |
| ReaderLite | unknown | arbitrum | n/a | [`0x436c9b...6af525`](./contracts/arbitrum-42161/0x436c9b6182e96b0526dd12f041730854756af525/) | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | arbitrum | n/a | [`0xf61da3...ec6c2c`](./contracts/arbitrum-42161/0xf61da339230c4bb7cafa444bd7ffa4d5d5ec6c2c/) | ⚠️ Unaudited |
| SwapPricingUtils | unknown | arbitrum | n/a | [`0x985c24...79b89c`](./contracts/arbitrum-42161/0x985c24816385c4cce9fa48ca484fa174a279b89c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 8 deployments: bsc [`0x1ea32f...0e5b3b`](./contracts/bsc-56/0x1ea32f93cd1edfbdd8279f7cfc1da9546e0e5b3b/); bsc `0x393df1...3ef457`; bsc `0x4e1b11...701441`; bsc `0x728d3c...d6af84`; bsc `0x782ffe...7f318d`; bsc `0x7f6542...4379ee`; bsc `0x9b699a...7665fe`; bsc `0xe6c127...9a4722` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (124)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1fb5df...8f5b87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2981bb...9c7489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e0654...2f2128` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e81f4...1a88e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38fef1...38f109` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3afe92...ec369d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ce9e4...f90580` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cf25c...89d536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db8a8...1b0464` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43bf4d...b2b236` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4713eb...b74a79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49943b...52518d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f2bd5...a5965b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fbee3...a4f476` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fedc4...e00bc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x514320...f6e1c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x526f5f...943edd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52d730...b214c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56ad74...154313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5898c3...ea2add` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b772c...9f3975` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c8cf8...65f493` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d92b2...adf3ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d9569...488521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f4eca...58e844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61d96a...bac1ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62e37d...1b178b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65e880...055768` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6708d3...9a85e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68533b...a30870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69bc68...32458f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e3f47...e77dac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fa411...bc153b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x727eeb...a8c0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x731b19...881e7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73e526...d1309b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78d67d...651f3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79dc40...1c6871` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a1ae3...7f27c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c2b41...21c520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c7fe6...010113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ebc2d...26e431` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f58f3...85d6a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fa247...77ef6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x818372...0347c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86c90f...16b356` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x887681...429ba0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e6ccb...0fdd6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x918626...4f6153` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9469fe...f24cc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97789f...69fabd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9897a7...63a9c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99fae6...f92ac5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a3eba...3607ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9af441...85f8be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d4a8d...7e95ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa30333...6a67a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4455f...1a0c43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa49f4a...4b4588` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb06ac4...33f7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0b047...7f4668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4686d...ebaeb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc4d2a...e1207b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc05ab1...e12463` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc05cfb...654a37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc25e72...5b97e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2848b...b12714` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc294bf...1a17a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc560b2...e9a667` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0c004...fce519` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2d695...184efe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd37383...e3fe5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf1da4...672b6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf47a8...57b57d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf88fe...893a44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe26139...6b1683` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe389b9...97b773` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea3055...2d238a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeab5b0...3beca1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2d73...55a6a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0909e...89db97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf893ce...dee805` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf911cd...ec62f2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0b70ad...ecd07c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0c30b1...5a965b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1305b2...619fd4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x13ccb7...892861` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2e81f4...1a88e6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x30acc1...2f707e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3efe46...5bf82b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x450d81...bf9718` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x480894...91df89` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x55214e...7a9fb6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5898c3...ea2add` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x746ba4...b9c3dc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9d4a8d...7e95ae` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9ea320...ba2adc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb5e423...4f594d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc70107...f04878` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc9296e...f0b404` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdaf206...a99683` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xddade9...39edd2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe60061...5cf8ff` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe6f4e8...7cd8c3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe780d9...1ae9c7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf16f66...63e424` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfb0dcd...642b76` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfcca7f...e9647a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f3f4d...b39d10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43d783...c18e2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4aaf78...8ff455` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57b73a...71e89f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63d0ce...558244` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x724ab9...f21b4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a1bdc...a1fe03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dfb2d...310bd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa2067...dd8fe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc74b3...e599c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcaadf...90d355` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbba17...736a4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd10ab...c97273` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4ce14...3d8dec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2ab53...99cf3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe48a7...081ee0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://github.com/mux-world/mux3-protocol/blob/main/audit/MUX%203%20Protocol%20Report.pdf) | Guardian | Audit | 2025-02 | aging | Direct | contract_name | 17 | high |
| [Certik-Audit-20220601.pdf](https://github.com/mux-world/mux-protocol/blob/main/audit/Certik-Audit-20220601.pdf) | CertiK | Audit | 2022-06 | stale | Direct | contract_name | 16 | high |
| [DL audit link](https://skynet.certik.com/projects/mux-protocol) | CertiK | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/mux/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xea4b1b...a4a58b`](./contracts/arbitrum-42161/0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b/) | OriginalTokenVaultV2 | core_logic | $0.21 | Verified native implementation with $0.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53b472...bde744`](./contracts/arbitrum-42161/0x53b47240f9725c9baf4637a1196b1700cfbde744/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3038fa...31f1bd`](./contracts/arbitrum-42161/0x3038faa722de6f2c9eac80fb15e75bbfef31f1bd/) | GmxV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x544458...205a11`](./contracts/bsc-56/0x544458efd22b6953203409d06b50e5ec84205a11/) | LibFlashTake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11c0c4...603bd9`](./contracts/arbitrum-42161/0x11c0c4dd6ce692b2aa2d65da07aa38687f603bd9/) | LibGmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x433f76...bbedfb`](./contracts/arbitrum-42161/0x433f7611ef8176b70469dfda659e554ae2bbedfb/) | LibGmxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b4b0a...95db31`](./contracts/bsc-56/0x4b4b0a545630284fdbb41f4edf78a7087595db31/) | LibLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0035f6...296059`](./contracts/arbitrum-42161/0x0035f6ca0417cd36eb62764bcbbe163e7d296059/) | LibOrderBook2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x46ffa9...a5acec`](./contracts/arbitrum-42161/0x46ffa915d87bf915c2d01ac7d4c1c5338fa5acec/) | MarketStoreUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a2987...6b8d9f`](./contracts/arbitrum-42161/0x2a2987c407e76782fc422a27240c9821206b8d9f/) | MarketUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x335fd3...422002`](./contracts/bsc-56/0x335fd3bb235322a54590684b2990e8be73422002/) | MuxBookUpdater202404 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dc6de...3cb1cf`](./contracts/arbitrum-42161/0x1dc6de1bba19e04c069da8d0a8f367ace33cb1cf/) | MuxLpOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe12fde...94310d`](./contracts/bsc-56/0xe12fde70907cdf165eb0d35ffa4f78ce4194310d/) | MuxPoolUpdater202404 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19b9ec...4f1d8b`](./contracts/arbitrum-42161/0x19b9ecd3fa2dc9272cd815ee05f300534b4f1d8b/) | PositionUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x436c9b...6af525`](./contracts/arbitrum-42161/0x436c9b6182e96b0526dd12f041730854756af525/) | ReaderLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=433

Zero-match audit list:

- [11952] DL audit link

Fork inheritance lineage and inherited audits are included when available.
