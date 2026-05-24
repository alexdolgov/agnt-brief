# Agentic Audit Brief: Gyroscope Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 72.3% over 90 days

## Project Overview

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-05-24T17:19:53.401Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 233 unique implementations (503 raw deployments)
- DeFi Llama TVL: $1,808,656.59
- On-chain TVL (included contracts): $44.59
- TVL by chain: Ethereum $44.59

## Project Description

Gyroscope Protocol is a decentralized exchange (DEX) and stablecoin infrastructure project. It provides automated market maker (AMM) pools with concentrated liquidity (ECLP, 2CLP, 3CLP) and a stablecoin (GYD) backed by diversified reserves, governed by a system of vaults, oracles, and config contracts.

### Architecture

All contracts are part of a single integrated protocol. Pool factories create AMM pools that interact with the Balancer vault; the GYD stablecoin is minted via vaults and reserves, governed by GyroConfig and GovernanceProxy, with routers facilitating user interactions. Proxies are used extensively for upgradeability and access control.

## Audit Coverage Summary

- Verified implementations audited: 32/150 (21.3%)
- Verified + Unaudited implementations: 116
- Verified by bytecode match: 2
- Unverified implementations: 83
- Unique implementations: 233
- Raw deployments: 503
- Audits discovered: 10
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (fresh)
- Staleness: 1 fresh, 3 aging, 6 stale, 0 unknown
- Tier 1 coverage: 1.3% (Trail of Bits)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 32 | 21.3% | 2025-06 |
| Runtime Verification | Tier 2 | 5 | 3.3% | 2022-04 |
| Trail of Bits | Tier 1 | 2 | 1.3% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (32)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GenericVault | core_logic | ethereum | 4 deployments: ethereum [`0x80ecf3...295176`](./contracts/ethereum-1/0x80ecf3d96446ab3abaf3d037d1b352bb41295176/); ethereum `0x830913...89ab31`; ethereum `0x88f3b4...821d65`; ethereum `0x98962b...6a4953` | ✅ Audited |
| ActionTierConfig | governance | ethereum | 3 deployments: ethereum [`0x0f51c8...1bfce1`](./contracts/ethereum-1/0x0f51c89c368ccaa518b16d2169ea6bab911bfce1/); ethereum `0x8342b9...3478b6`; ethereum `0xe9f7b8...fda965` | ✅ Audited |
| AggregateLPVault | core_logic | ethereum | [`0xe8b18f...0db528`](./contracts/ethereum-1/0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528/) | ✅ Audited |
| AssetRegistry | registry | ethereum | 2 deployments: ethereum [`0x66a7aa...60b0b2`](./contracts/ethereum-1/0x66a7aa37ea714e0b8dd553f375104ea7d160b0b2/); ethereum `0x94c341...5c9126` | ✅ Audited |
| BalancerPoolVault | core_logic | ethereum | [`0x29609b...ee26e6`](./contracts/ethereum-1/0x29609b3fd68c647c3a619e69de386f2f02ee26e6/) | ✅ Audited |
| BatchVaultPriceOracle | operational_periphery | ethereum | [`0x46412c...9ec881`](./contracts/ethereum-1/0x46412cdec90b266629bf05188185e9fd109ec881/) | ✅ Audited |
| CheckedPriceOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x2a18f5...482411`](./contracts/ethereum-1/0x2a18f596283f9082fd88f82556d5f78e3c482411/); ethereum `0xbdcfe6...a471b2`; polygon `0x64f84a...c75fc3`; polygon `0x70772f...20fcab`; polygon `0x8e9a7c...d5cf49`; polygon `0xba116c...1455c7`; polygon `0xfd83a2...377dcc` | ✅ Audited |
| EmergencyRecovery | unknown | ethereum | [`0x70d3ec...f1215d`](./contracts/ethereum-1/0x70d3ec9ff6cb962246072fa9d18153fdf6f1215d/) | ✅ Audited |
| GenericVaultPriceOracle | operational_periphery | ethereum | [`0x89b938...de854a`](./contracts/ethereum-1/0x89b93862bebba6c98e6f158ef9fada004fde854a/) | ✅ Audited |
| GovernanceManager | governance | ethereum | 4 deployments: ethereum [`0x587b60...a684a7`](./contracts/ethereum-1/0x587b602f38e18c1e2626f19ff61c70e935a684a7/); ethereum `0xb05bce...4e206e`; ethereum `0xb2fbd0...2ae755`; ethereum `0xfc6879...beba17` | ✅ Audited |
| GovernanceProxy | unknown | arbitrum | 4 deployments: ethereum `0x4f244f...f7a1d4`; ethereum `0x575725...c96628`; arbitrum [`0x00a2a9...abb4a8`](./contracts/arbitrum-42161/0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8/); arbitrum `0x32acb4...2a23f3` | ✅ Audited |
| GovernanceRoleManager | governance | sei | [`0x78898a...b3a4b9`](./contracts/sei-1329/0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9/) | ✅ Audited |
| GydRecovery | unknown | ethereum | [`0x2a803c...fd4025`](./contracts/ethereum-1/0x2a803ce12be775802a7c6f50797e53e9c3fd4025/) | ✅ Audited |
| GydToken | token | ethereum | [`0xfa08eb...ea0cb5`](./contracts/ethereum-1/0xfa08eb3a781532f47b1dd811a6ca326842ea0cb5/) | ✅ Audited |
| GyroConfig | governance | gnosis | 22 deployments: ethereum `0x48028b...2912cc`; ethereum `0xac89cc...908aa6`; ethereum `0xe00741...45986b`; ethereum `0xfaf502...462ed9`; optimism `0x32acb4...2a23f3`; optimism `0xe02f11...6523b3`; gnosis [`0x00a2a9...abb4a8`](./contracts/gnosis-100/0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8/); gnosis `0xe02f11...6523b3`; polygon `0xf5d544...45f18c`; polygon `0xfdc2e9...3fbe67`; sonic `0x2426d2...aff07f`; sonic `0x3f1f85...b068da`; sonic `0xa23112...bda069`; sonic `0xab7d2e...a70cce`; sonic `0xde6237...21e23d`; sonic `0xeecee5...8ea81b`; sei `0x194941...2deadd`; sei `0x788fb3...5262c0`; base `0x8a5eb9...42c8a6`; base `0x9b683c...77413c`; arbitrum `0x9b683c...77413c`; arbitrum `0xefde1c...c97f58` | ✅ Audited |
| GyroThreePoolFactory | registry | polygon | [`0xe59910...36d981`](./contracts/polygon-137/0xe59910c7725e15c28ba48bbbb995e7396536d981/) | ✅ Audited |
| GyroTwoPoolFactory | registry | polygon | [`0x333fad...3ed028`](./contracts/polygon-137/0x333fadaf093cccc04d83ac19f1b6a6f2443ed028/) | ✅ Audited |
| Motherboard | unknown | ethereum | 2 deployments: ethereum [`0x8de76b...fff393`](./contracts/ethereum-1/0x8de76bf863e0a571be7165d9c85a1116c0fff393/); ethereum `0xbaf6a0...a6cc95` | ✅ Audited |
| PrimaryAMMV1 | unknown | ethereum | [`0xe7ea59...5a6ce5`](./contracts/ethereum-1/0xe7ea594b5905ec0dd321e61d7625711b635a6ce5/) | ✅ Audited |
| Reserve | unknown | ethereum | 2 deployments: ethereum [`0x00ffba...435c2a`](./contracts/ethereum-1/0x00ffbaeaacae63a295a23c7bd2c2a9193d435c2a/); ethereum `0xc7ab17...b21a37` | ✅ Audited |
| ReserveManager | governance | ethereum | [`0x2519a7...1c2869`](./contracts/ethereum-1/0x2519a729535470830d345b78109818f94c1c2869/) | ✅ Audited |
| ReserveSafetyManager | governance | ethereum | [`0x8f3832...3a3fab`](./contracts/ethereum-1/0x8f38321416d587ec4f3a4b37b1ccbb80013a3fab/) | ✅ Audited |
| ReserveStewardshipIncentives | operational_periphery | ethereum | [`0x5c73d4...d94f86`](./contracts/ethereum-1/0x5c73d4e5349ffd392e62fa6bed994bb449d94f86/) | ✅ Audited |
| RootSafetyCheck | unknown | ethereum | [`0x56773c...273789`](./contracts/ethereum-1/0x56773ca4a4138f21128d23adb237004697273789/) | ✅ Audited |
| StaticPercentageFeeHandler | unknown | ethereum | [`0x757cfc...f9a051`](./contracts/ethereum-1/0x757cfcf4fec346e4880ec686d11bea60c8f9a051/) | ✅ Audited |
| StaticTierStrategy | core_logic | ethereum | 12 deployments: ethereum [`0x0b4237...d60edf`](./contracts/ethereum-1/0x0b4237b829c34507eeddb67006db6061d3d60edf/); ethereum `0x4180e9...7c24d3`; ethereum `0x6170ed...4dae7a`; ethereum `0xc0dea0...1fb7b4`; ethereum `0xc2daef...3492e6`; ethereum `0xd32971...65b272`; ethereum `0xd70027...570c75`; ethereum `0xd837d6...8d1c6d`; ethereum `0xd95523...18fd49`; ethereum `0xea8106...fd538e`; ethereum `0xfdbcc2...e4d582`; ethereum `0xfe4199...27c27c` | ✅ Audited |
| TellorOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xbc7168...3ac25d`](./contracts/ethereum-1/0xbc7168da9ee565fa0becb5aec9400929dd3ac25d/); ethereum `0xe22188...f9d9a0` | ✅ Audited |
| TrustedSignerPriceOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x28f93f...b9464a`](./contracts/ethereum-1/0x28f93f0dccdac0a7891250fb9c72156595b9464a/); ethereum `0xf4ca93...4b4aa5`; polygon `0x611a66...a5ece4` | ✅ Audited |
| UpdatableRateProviderBalV2 | unknown | sonic | 10 deployments: optimism `0x32f6fc...c41041`; sonic [`0x13024f...50a05d`](./contracts/sonic-146/0x13024ff3879ce1d3a827958ab1e5fdf29250a05d/); sonic `0x20a7e5...04bc89`; sonic `0x218cb3...a7bd9f`; sonic `0x4881ef...99ec83`; sonic `0x5b5c4b...1f2048`; sonic `0xb7b5d2...f5f144`; sei `0x27ce6a...8d7bb0`; base `0x2a803c...fd4025`; base `0x42d9b3...4aadc0` | ✅ Audited |
| VaultRegistry | registry | ethereum | 2 deployments: ethereum [`0x82c45c...0b5a22`](./contracts/ethereum-1/0x82c45c1b7b798aa152937107058c8098630b5a22/); ethereum `0xf2865b...ed4eb5` | ✅ Audited |
| VaultSafetyMode | core_logic | ethereum | [`0x84b22e...232c0e`](./contracts/ethereum-1/0x84b22e0f83d848ead9fc050734e946b665232c0e/) | ✅ Audited |
| VotingPowerAggregator | unknown | ethereum | [`0xa015a8...cb1487`](./contracts/ethereum-1/0xa015a8c96f45758614c4077813dc863a74cb1487/) | ✅ Audited |

### ⚠️ Verified + Unaudited (116)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdaptiveRateProvider | unknown | sonic | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | ⚠️ Unaudited |
| AggregatorBatchRouter | adapter | optimism | [`0xb9d01c...20ab14`](./contracts/optimism-10/0xb9d01ca61b9c181da1051bfdd28e1097e920ab14/) | ⚠️ Unaudited |
| AggregatorRouter | adapter | sonic | 2 deployments: optimism `0x84813a...a63617`; sonic [`0x7943b4...bb8565`](./contracts/sonic-146/0x7943b40c37233fe5daf9b64dd09c339eb0bb8565/) | ⚠️ Unaudited |
| AssociatedDAOVault | core_logic | ethereum | [`0xa2321e...6b0247`](./contracts/ethereum-1/0xa2321e23b3060e160195e138b62f8498546b0247/) | ⚠️ Unaudited |
| Authorizer | unknown | optimism | 2 deployments: optimism [`0x5cf492...62a4b9`](./contracts/optimism-10/0x5cf4928a3205728bd12830e1840f7db85c62a4b9/); base `0x809b79...93213a` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | base | [`0x6cad2e...509bc7`](./contracts/base-8453/0x6cad2ea22bfa7f4c14aae92e47f510cd5c509bc7/) | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | optimism | 2 deployments: optimism [`0x36cac2...b5a17c`](./contracts/optimism-10/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/); base `0x9129e8...86b8dc` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | base | [`0xa69e0c...7e8eee`](./contracts/base-8453/0xa69e0ccf150a29369d8bbc0b3f510849db7e8eee/) | ⚠️ Unaudited |
| BAL | unknown | optimism | [`0x5dbad7...2113cd`](./contracts/optimism-10/0x5dbad78818d4c8958eff2d5b95b28385a22113cd/) | ⚠️ Unaudited |
| BatchRelayerLibrary | periphery | sonic | 6 deployments: optimism `0x96484f...f13b6d`; sonic [`0x149843...4f50fc`](./contracts/sonic-146/0x1498437067d7bddc4c9427964f073ee1ab4f50fc/); sonic `0x965c2f...0cef57`; base `0x82416c...a382c4`; base `0xaf779e...c80632`; base `0xdf9b5b...3be025` | ⚠️ Unaudited |
| BatchRouter | adapter | sonic | 2 deployments: optimism `0xad8905...f8a85e`; sonic [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | ⚠️ Unaudited |
| Beets | unknown | sonic | [`0x2d0e08...66e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | ⚠️ Unaudited |
| BeetsNftDescriptor | token | sonic | 3 deployments: sonic [`0x685dfb...aad88e`](./contracts/sonic-146/0x685dfbe5e38ca7eda140603ec5902be888aad88e/); sonic `0x91befa...077ea2`; sonic `0xfaa8d7...14a6f5` | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | sonic | [`0x1e5fe9...626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | ⚠️ Unaudited |
| BeetsShadowArbitrage | unknown | sonic | [`0x4c5e12...e28010`](./contracts/sonic-146/0x4c5e12950d0a32d3fbc95504ea1b232752e28010/) | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | optimism | [`0x681714...ff4bc0`](./contracts/optimism-10/0x6817149cb753bf529565b4d023d7507ed2ff4bc0/) | ⚠️ Unaudited |
| BoundedERC20WithEMA | token | ethereum | 2 deployments: ethereum [`0xc69129...be714c`](./contracts/ethereum-1/0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c/); ethereum `0xe4c243...efb1e4` | ⚠️ Unaudited |
| BufferRouter | adapter | optimism | 2 deployments: optimism [`0x311334...358615`](./contracts/optimism-10/0x311334883921fb1b813826e585df1c2be4358615/); sonic `0x532da9...3a721b` | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | base | 4 deployments: optimism `0xa523f4...4612dc`; sonic `0xe6338d...33bd7c`; base [`0x2498a2...29ba95`](./contracts/base-8453/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95/); base `0xb1a4fe...d9021f` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | optimism | 2 deployments: optimism [`0xe42ffa...42e467`](./contracts/optimism-10/0xe42ffa682a26ef8f25891db4882932711d42e467/); base `0xef454a...865425` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | optimism | 3 deployments: optimism [`0x56c8d8...864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/); optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687` | ⚠️ Unaudited |
| CombinedRateProvider | unknown | sonic | [`0xd2f927...37f98f`](./contracts/sonic-146/0xd2f927cb65fd23dac5225fcd024a2c097e37f98f/) | ⚠️ Unaudited |
| CombinedRateProviderFactory | registry | sonic | [`0xdc580c...a923e6`](./contracts/sonic-146/0xdc580ce8e689a49d3ce58fad4c52786c39a923e6/) | ⚠️ Unaudited |
| ComposableStablePoolFactory | registry | optimism | 5 deployments: optimism [`0x043a2d...625412`](./contracts/optimism-10/0x043a2dad730d585c44fb79d2614f295d2d625412/); optimism `0x4bdcc2...0eada7`; optimism `0x85a80a...853062`; sonic `0x993767...f3fc62`; base `0x8df317...579b88` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | optimism | 2 deployments: optimism [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/); sonic `0xcf2166...0f3e65` | ⚠️ Unaudited |
| ConnectorArbBot | unknown | arbitrum | 2 deployments: arbitrum [`0x284265...2dc9d9`](./contracts/arbitrum-42161/0x284265d0b95bedbfc9acade0414ea1a1ba2dc9d9/); arbitrum `0xc6f195...2fc29c` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | optimism | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ⚠️ Unaudited |
| ConstantRateProvider | unknown | sonic | 18 deployments: ethereum `0x5413e8...8556d8`; ethereum `0xbb08c8...c46ce2`; ethereum `0xd43f5a...b820a1`; sonic [`0x180ec5...138c46`](./contracts/sonic-146/0x180ec5fe23a2331b8180775c712eab5f7a138c46/); sonic `0x526c66...18a8d2`; sonic `0x635d8b...0e1051`; sonic `0x9969ce...a60a0a`; sonic `0xc5ef57...aa26de`; sonic `0xec722f...43f747`; sonic `0xecdfaa...ea2bd7`; base `0x3e89cc...348313`; base `0x3fa516...b88f15`; base `0x587983...8eb5cc`; base `0x5e10c2...3a4748`; base `0xa42cc9...4e67ef`; arbitrum `0x3a216b...67697f`; arbitrum `0x72f6da...fe2dd0`; arbitrum `0xdcd8db...c70832` | ⚠️ Unaudited |
| ConstantRateProviderFactory | registry | sonic | 7 deployments: sonic [`0x511052...ec6554`](./contracts/sonic-146/0x511052c991d8955653093445034f061597ec6554/); sonic `0x545bf8...049a7a`; sonic `0x7afc1c...71c75d`; sonic `0x8267f1...fb9f43`; sonic `0xb32d49...3af497`; sonic `0xd64d82...807f89`; sonic `0xdc8315...f0b26e` | ⚠️ Unaudited |
| CouncillorNFT | governance | ethereum | 3 deployments: ethereum [`0x1fb731...aba876`](./contracts/ethereum-1/0x1fb7317359d88076a24cdb97d84cec796baba876/); ethereum `0x79e65f...dd35dc`; ethereum `0x917156...7d1e18` | ⚠️ Unaudited |
| CouncillorNFTVault | core_logic | ethereum | 2 deployments: ethereum [`0x339b89...f09404`](./contracts/ethereum-1/0x339b896bafd5d3811241d607d0cd33a1c2f09404/); ethereum `0x360ce1...4719ee` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | optimism | [`0xf4743d...7241d7`](./contracts/optimism-10/0xf4743d026f3d07af3747bb7d05bed06d177241d7/) | ⚠️ Unaudited |
| CTokenRateProvider | token | ethereum | [`0x8ee79e...d8c718`](./contracts/ethereum-1/0x8ee79eb3f37b0ea4544df2a0b9e228b6fcd8c718/) | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | optimism | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | optimism | 2 deployments: optimism [`0x201efd...2a86cc`](./contracts/optimism-10/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/); optimism `0x7c1b7a...c78275` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | registry | base | [`0x161f40...028846`](./contracts/base-8453/0x161f4014c27773840ccb4ec1957113e6dd028846/) | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | optimism | 6 deployments: ethereum `0xfc541f...c259ec`; optimism [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/); gnosis `0x15e86b...574cec`; sonic `0xc9a0e6...50e487`; base `0xefd3af...d7ff1a`; arbitrum `0xe548a2...915f31` | ⚠️ Unaudited |
| EventEmitter | unknown | sonic | [`0xe0f1df...65211e`](./contracts/sonic-146/0xe0f1dfae777bb7d44d3cb7d8fcdce6731165211e/) | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | base | [`0x7920bf...c50cfd`](./contracts/base-8453/0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd/) | ⚠️ Unaudited |
| FoundingFrog | unknown | ethereum | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | ⚠️ Unaudited |
| FoundingMemberVault | core_logic | ethereum | 5 deployments: ethereum [`0x0400d6...9f157c`](./contracts/ethereum-1/0x0400d6aac2545d2e4b547c3a18ebbef5fb9f157c/); ethereum `0x5241b3...4460bb`; ethereum `0x7783b7...9d2754`; ethereum `0xaf5578...6274a2`; ethereum `0xc87d57...1bcac2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | proxy | ethereum | 4 deployments: ethereum [`0x53b8b1...2a6298`](./contracts/ethereum-1/0x53b8b175045816d447916b81ac12ba78fa2a6298/); ethereum `0x8e1787...a94ff2`; sonic `0xc95140...947f22`; sei `0xb438ea...baf7fa` | ⚠️ Unaudited |
| FrogMinter | unknown | ethereum | [`0xe02f11...6523b3`](./contracts/ethereum-1/0xe02f11277cfa84c696370c097c51848c6a6523b3/) | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | operational_periphery | base | [`0xa7d524...738d48`](./contracts/base-8453/0xa7d524046ef89de9f8e4f2d7b029f66ccb738d48/) | ⚠️ Unaudited |
| GearboxLinearPoolFactory | registry | base | [`0x9dd326...07bd62`](./contracts/base-8453/0x9dd32684176638d977883448a4c914311c07bd62/) | ⚠️ Unaudited |
| GydTokenPaused | token | ethereum | [`0xe07f9d...491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | sonic | 7 deployments: polygon `0x694852...f04cfb`; polygon `0x90f08b...83adda`; polygon `0x977e8a...043079`; polygon `0xe0d2c7...5f28bd`; sonic [`0x05d8c4...a3971e`](./contracts/sonic-146/0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e/); sonic `0x0e3558...0a627e`; sei `0x4ac500...9c6c24` | ⚠️ Unaudited |
| GyroECLPMath | unknown | sei | 11 deployments: ethereum `0xf89a17...ef20f9`; optimism `0x4e56f1...de07ec`; gnosis `0x9b683c...77413c`; polygon `0x10aba8...3b5d63`; polygon `0x2ec9fa...64a530`; polygon `0xbe1a07...0c4350`; sonic `0xfa45ac...947be3`; sei [`0x086602...b38701`](./contracts/sei-1329/0x086602c022a4362d48dce1596cd1b7ad6fb38701/); base `0x721325...951e5f`; arbitrum `0x41e9ac...4d946a`; arbitrum `0xcfc923...7ecbfd` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | base | 28 deployments: ethereum `0x412a5b...4931d5`; ethereum `0x968348...2bb982`; ethereum `0xa87217...25bda2`; optimism `0x22625e...86b017`; optimism `0x53eff5...c479ef`; optimism `0x9b683c...77413c`; optimism `0xe8b18f...0db528`; optimism `0xefde1c...c97f58`; gnosis `0x5d3be8...c99b89`; gnosis `0x8a5eb9...42c8a6`; polygon `0x1a79a2...05926b`; polygon `0x4c818c...addf17`; polygon `0x949af2...f9d02f`; polygon `0xd42045...ee0ef6`; sonic `0x4a1d66...0defec`; sonic `0x536429...620c5f`; sonic `0x765505...178c6b`; sonic `0xda598c...94fb8b`; sonic `0xe22c6d...b38739`; sonic `0xf02373...7775a9`; sonic `0xf80435...9c4491`; sei `0x66d89d...6c0c93`; base [`0x15e86b...574cec`](./contracts/base-8453/0x15e86be6084c6a5a8c17732d398dfbc2ec574cec/); base `0x5f6848...f082e3`; base `0xdca5f1...53eaf6`; arbitrum `0x721325...951e5f`; arbitrum `0xdca5f1...53eaf6`; arbitrum `0xde0e16...b9ec2e` | ⚠️ Unaudited |
| GyroL2Governance | unknown | sei | [`0xd0c53f...990ba3`](./contracts/sei-1329/0xd0c53f30e3990fe8c4b8c31c4b6ca0e9dd990ba3/) | ⚠️ Unaudited |
| GyroTokenPaused | token | sei | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | ⚠️ Unaudited |
| GyroTokenV2 | token | ethereum | 2 deployments: ethereum [`0xa8725f...030525`](./contracts/ethereum-1/0xa8725f6ff4af9eefbbe468b87a6f242353030525/); ethereum `0xe0d2c7...5f28bd` | ⚠️ Unaudited |
| L2Gyfi | unknown | sei | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | ⚠️ Unaudited |
| LBPoolFactory | registry | sonic | 2 deployments: optimism `0xc1a645...3227f0`; sonic [`0x60e9fe...f8b5d9`](./contracts/sonic-146/0x60e9feb41b409ded3dde9c5025e10fb5f4f8b5d9/) | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | sonic | 4 deployments: sonic [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/); sonic `0x6dab80...407885`; sonic `0x82adf9...52bd81`; sonic `0xefd42b...f66fef` | ⚠️ Unaudited |
| LevelNftDescriptor | token | sonic | [`0x113cf9...106d71`](./contracts/sonic-146/0x113cf97f53297b9a14baaba5733ee37040106d71/) | ⚠️ Unaudited |
| LockedVault | core_logic | ethereum | 8 deployments: ethereum [`0x4476ff...bfa007`](./contracts/ethereum-1/0x4476ffcb74a793092544ab29f45286cb1abfa007/); ethereum `0x48a64b...023d2b`; ethereum `0x534aca...d5f95b`; ethereum `0x991aeb...70a336`; ethereum `0xa3979e...4a3008`; ethereum `0xb6dc4f...410f9e`; ethereum `0xdb5494...eff57a`; ethereum `0xe1c7ad...44123b` | ⚠️ Unaudited |
| LockedVaultWithThreshold | core_logic | ethereum | 3 deployments: ethereum [`0x16b13d...1ac7d1`](./contracts/ethereum-1/0x16b13dd24977a13e9857f36eb405db11d01ac7d1/); ethereum `0x695225...b6bc61`; ethereum `0xb94c4f...8bc1f6` | ⚠️ Unaudited |
| MaBeetsBoost | unknown | sonic | [`0x496b56...a2f7b4`](./contracts/sonic-146/0x496b562c9fe6e86d7c169a8e7ed8947ecba2f7b4/) | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | core_logic | base | 2 deployments: optimism `0xf24917...b9fd39`; base [`0xb19382...377b75`](./contracts/base-8453/0xb19382073c7a0addbb56ac6af1808fa49e377b75/) | ⚠️ Unaudited |
| ManagedPoolAmmLib | core_logic | base | [`0x7d2248...d28c9a`](./contracts/base-8453/0x7d2248f194755dca9a1887099394f39476d28c9a/) | ⚠️ Unaudited |
| ManagedPoolFactory | registry | optimism | 2 deployments: optimism [`0x956cca...3d9288`](./contracts/optimism-10/0x956ccab09898c0af2aca5e6c229c3ad4e93d9288/); base `0x9a62c9...20134d` | ⚠️ Unaudited |
| MevCaptureHook | unknown | optimism | [`0x3630d2...eeaf5b`](./contracts/optimism-10/0x3630d26e51c03026f4f063d69d65f8e234eeaf5b/) | ⚠️ Unaudited |
| MockERC4626Token | token | base | [`0x4638ab...f1551c`](./contracts/base-8453/0x4638ab64022927c9bd5947607459d13f57f1551c/) | ⚠️ Unaudited |
| MockGearboxDieselToken | token | base | [`0xb521dd...760ce4`](./contracts/base-8453/0xb521dd5c8e13fe202626cac98873fea2b7760ce4/) | ⚠️ Unaudited |
| MockGearboxVault | core_logic | base | [`0x79e435...05ea6c`](./contracts/base-8453/0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c/) | ⚠️ Unaudited |
| MockStaticAToken | token | base | [`0x698cae...2bcda4`](./contracts/base-8453/0x698caed853be9cea96c268f565e2b61d3b2bcda4/) | ⚠️ Unaudited |
| MockVault | core_logic | optimism | [`0xe38816...0be5f7`](./contracts/optimism-10/0xe3881627b8deebccf9c23b291430a549fc0be5f7/) | ⚠️ Unaudited |
| MultiownerProxyAdmin | governance | ethereum | [`0x71260f...c4f961`](./contracts/ethereum-1/0x71260fce6c16fb7b3481bafb64377c2aadc4f961/) | ⚠️ Unaudited |
| NftDescriptor | token | sonic | 2 deployments: sonic [`0x6fb10e...133ed5`](./contracts/sonic-146/0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5/); sonic `0xe36d5d...598b9c` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | registry | base | [`0x0c6052...18828f`](./contracts/base-8453/0x0c6052254551eae3ecac77b01dfcf1025418828f/) | ⚠️ Unaudited |
| NullVotingEscrow | operational_periphery | base | 2 deployments: optimism `0xc3ccac...a1bb68`; base [`0x475d18...0fa229`](./contracts/base-8453/0x475d18169be8a89357a9ee3ab00ca386d20fa229/) | ⚠️ Unaudited |
| OneSidedECLPJoiner | unknown | gnosis | 3 deployments: gnosis [`0x84b22e...232c0e`](./contracts/gnosis-100/0x84b22e0f83d848ead9fc050734e946b665232c0e/); base `0xe8b48d...236016`; arbitrum `0xa0a555...f1322b` | ⚠️ Unaudited |
| PauseManager | governance | sei | [`0xfce81c...2b238e`](./contracts/sei-1329/0xfce81cafe4b3f7e2263efc2d907f488ebf2b238e/) | ⚠️ Unaudited |
| PoolOwner | core_logic | sonic | 9 deployments: ethereum `0x4b15f2...34250b`; optimism `0xcfc923...7ecbfd`; gnosis `0xefde1c...c97f58`; sonic [`0x315f64...ec52ee`](./contracts/sonic-146/0x315f64a6a80b3c55a96dc3fc987cfa4287ec52ee/); sonic `0x34a02e...a48bca`; sonic `0x7ca5ea...c7fcae`; sei `0x9e4658...69a172`; base `0x5d56ea...324f0c`; arbitrum `0xc2daef...3492e6` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | 2 deployments: optimism [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f...7ae5db` | ⚠️ Unaudited |
| PoolRecoveryHelper | core_logic | base | [`0x03f3fb...712054`](./contracts/base-8453/0x03f3fb107e74f2eac9358862e91ad3c692712054/) | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | optimism | 3 deployments: optimism [`0x1cd776...b1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/); optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | 2 deployments: optimism `0xdb8d75...a1bd3a`; base [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | operational_periphery | base | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | optimism | 2 deployments: optimism [`0x774cb6...17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/); optimism `0xcc267d...3a7a4e` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | sonic | 2 deployments: sonic [`0x4d4ddc...1f4146`](./contracts/sonic-146/0x4d4ddc3e4479e42c4288f6b61554cad9e41f4146/); base `0xded7fe...e6695d` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | optimism | 2 deployments: optimism [`0x4cb42f...a4ac4d`](./contracts/optimism-10/0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d/); optimism `0x86e67e...e7bc2b` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | operational_periphery | base | [`0xacf05b...996650`](./contracts/base-8453/0xacf05be5134d64d150d153818f8c67ee36996650/) | ⚠️ Unaudited |
| ProtocolIdRegistry | registry | base | 2 deployments: optimism `0x9805dc...764102`; base [`0x682f0d...e27589`](./contracts/base-8453/0x682f0ddbfd41d1272982f64a499fb62d80e27589/) | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | 11 deployments: ethereum `0x581ae4...7bc2c6`; gnosis `0x4e56f1...de07ec`; polygon `0x83d34c...c4cbbe`; sonic [`0x096f0a...ef3089`](./contracts/sonic-146/0x096f0a6490aac8324cf387cc248fb2f991ef3089/); sonic `0x33c11b...8f7a47`; sonic `0x4b13e4...89d0f1`; sonic `0x5aa1b0...7d34de`; sonic `0x8a4fdf...0dc399`; sei `0x8c12a1...48ef03`; base `0xefde1c...c97f58`; arbitrum `0x4e56f1...de07ec` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | sonic | [`0x3c35e5...17781a`](./contracts/sonic-146/0x3c35e59488b124deec2a1b1f7c0745682c17781a/) | ⚠️ Unaudited |
| QueryProcessor | unknown | gnosis | 4 deployments: gnosis [`0x32acb4...2a23f3`](./contracts/gnosis-100/0x32acb44fc929339b9f16f0449525cc590d2a23f3/); sonic `0xdbf966...920ca9`; sei `0x594383...cfa4c4`; base `0xefc86a...d228c1` | ⚠️ Unaudited |
| QuotientRateProvider | unknown | sonic | 3 deployments: sonic [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/); sonic `0x79a88b...c40447`; base `0x15cfd6...7b627f` | ⚠️ Unaudited |
| RateManager | governance | ethereum | [`0xdbc810...c4eda7`](./contracts/ethereum-1/0xdbc810d748f808967f34da2f37f116c58ec4eda7/) | ⚠️ Unaudited |
| ReClammPoolFactory | registry | optimism | 3 deployments: optimism [`0x0b1120...e63911`](./contracts/optimism-10/0x0b11209b8c5e821b18ded147583b8978c3e63911/); optimism `0x891ec9...017e0d`; sonic `0x99c13b...310de0` | ⚠️ Unaudited |
| RecoveryModeHelper | periphery | base | [`0x313a8d...0be053`](./contracts/base-8453/0x313a8d36b1d90a4cba3a505fdc3480c3870be053/) | ⚠️ Unaudited |
| Reliquary | unknown | sonic | 2 deployments: sonic [`0x492e4b...6a8f7d`](./contracts/sonic-146/0x492e4b1b6ef658c459ae82c7fba61d0c086a8f7d/); sonic `0x973670...941684` | ⚠️ Unaudited |
| RewardsClaimer | operational_periphery | arbitrum | [`0x238fbf...818b0a`](./contracts/arbitrum-42161/0x238fbf9b7594681838fb563c417937eb95818b0a/) | ⚠️ Unaudited |
| Router | adapter | sonic | 3 deployments: optimism `0xe2fa4e...9e285b`; sonic [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/); sonic `0x93db46...a8dae5` | ⚠️ Unaudited |
| Simple Vesting Escrow | operational_periphery | sonic | [`0x455a56...b72aeb`](./contracts/sonic-146/0x455a56994df75ef70795c7a2d6a1d40534b72aeb/) | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | sonic | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | ⚠️ Unaudited |
| SonicStaking | unknown | sonic | 4 deployments: sonic [`0xbf46ae...59038d`](./contracts/sonic-146/0xbf46aef3c4c119495245e6b1911a4a961859038d/); sonic `0xd5f7fc...b3f141`; sonic `0xe5da20...be3955`; sonic `0xf4fa7f...79400b` | ⚠️ Unaudited |
| SonicStakingWithdrawRequestHelper | operational_periphery | sonic | [`0x52b16e...432d78`](./contracts/sonic-146/0x52b16e3d7d25ba64f242e59f9a74799ecc432d78/) | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | optimism | 3 deployments: optimism [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/); optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | optimism | 5 deployments: optimism [`0x1780e8...d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/); optimism `0x268e2e...d9af42`; sonic `0x482ee5...48affb`; sonic `0x815ab5...6f31fd`; base `0xc49ca9...97950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | sonic | 2 deployments: optimism `0xf39ca6...ab9015`; sonic [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | optimism | 4 deployments: optimism [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/); optimism `0xfd2142...f3128f`; sonic `0x3d9319...0f0bad`; sonic `0x6187f6...e6776e` | ⚠️ Unaudited |
| StandaloneECLPPriceOracle | operational_periphery | ethereum | [`0xcfae89...e9f7fd`](./contracts/ethereum-1/0xcfae89029b2c3a695f4e8624f9e1428229e9f7fd/) | ⚠️ Unaudited |
| StaticATokenRateProviderV2 | token | ethereum | [`0xd25712...84aa9d`](./contracts/ethereum-1/0xd2571257b0c2c97cb596c58338fb04665184aa9d/) | ⚠️ Unaudited |
| TimelockController | governance | sonic | 4 deployments: sonic [`0x4b1617...4bbc0d`](./contracts/sonic-146/0x4b16176b5c5727a9f646e4a9005c2597ad4bbc0d/); sonic `0xd0f62f...c743f4`; sonic `0xdcd406...8a67f2`; sonic `0xf750f4...f0e5d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 3 deployments: ethereum [`0x9543b9...bef92a`](./contracts/ethereum-1/0x9543b9f3450c17f1e5e558cc135fd8964dbef92a/); ethereum `0xde0e16...b9ec2e`; ethereum `0xe548a2...915f31` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | ⚠️ Unaudited |
| VaultExplorer | core_logic | optimism | 4 deployments: optimism [`0x1311fb...5cc4d1`](./contracts/optimism-10/0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1/); optimism `0xeaedc3...aacf2e`; sonic `0x6f6cd1...637300`; sonic `0x9672af...09d5b3` | ⚠️ Unaudited |
| VaultFactory | registry | optimism | [`0x170206...68492d`](./contracts/optimism-10/0x1702067424096f07a60e62ccee3de9420068492d/) | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | sonic | [`0x15e556...dc76be`](./contracts/sonic-146/0x15e556d316e45241267e1ecb6f34b114a2dc76be/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | operational_periphery | optimism | 2 deployments: optimism [`0x9da189...7e017c`](./contracts/optimism-10/0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c/); base `0xd87f44...9f5acd` | ⚠️ Unaudited |
| Vyper_contract | unknown | optimism | [`0x81cfae...eeb310`](./contracts/optimism-10/0x81cfae226343b24ba12ec6521db2c79e7aeeb310/) | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | optimism | 3 deployments: optimism [`0x6ee18f...e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/); optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | 5 deployments: optimism [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a...5f83b0`; sonic `0x22f5b7...44d56d`; sonic `0x4726eb...d60fc3`; base `0x4c32a8...d6a1c4` | ⚠️ Unaudited |
| X33RateProvider | unknown | sonic | [`0xfa5084...a68312`](./contracts/sonic-146/0xfa5084c5428b1a999858b163b12ff63117a68312/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Child Liquidity Gauge | operational_periphery | base | 4 deployments: sonic `0xadf9ed...01e92d`; sonic `0xf00c00...d7ce76`; base [`0x59562f...c3324f`](./contracts/base-8453/0x59562f93c447656f6e4799fc1fc7c3d977c3324f/); base `0x9f7e65...b37013` | ⚠️ Unaudited (bytecode match) |
| Gyro2CLPPoolFactory | registry | polygon | 12 deployments: ethereum `0x579653...1d98c9`; ethereum `0x99fafe...9eb1af`; optimism `0x4b979e...99729c`; optimism `0x99364f...c52c58`; polygon [`0x3841ee...1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/); polygon `0x3b55b6...53c7a4`; polygon `0x5d8545...1dfc34`; polygon `0x968348...2bb982`; sonic `0xe61fce...5884a7`; arbitrum `0x7a3652...a4a088`; arbitrum `0x8342b9...3478b6`; avalanche `0x41e9ac...4d946a` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (83)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x78a3dcdda13a58c198b5aabea91f51273abd1d87) | proxy | ethereum | `0x522ef5...8aa889` | ❓ Unverified |
| Proxy (impl: 0x9b683ca24b0e013512e2566b68704dbe9677413c) | proxy | avalanche | `0x8a5eb9...42c8a6` | ❓ Unverified |
| Proxy (impl: 0xe59910c7725e15c28ba48bbbb995e7396536d981) | proxy | ethereum | `0x90f08b...83adda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x02a569...e75c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0980e8...5c6754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ee0a5...a8403a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19144e...bc09ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a7f72...bb6a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1add0c...0d8f17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f4141...3c22a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x287dfa...637f07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c1c0e...253f55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2decae...2cb615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e77c9...091c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ec43d...7ea792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x329084...6f6fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x354389...cb2cda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x42abd5...f68e56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43455e...660a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ae17b...441dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x52beb0...1993fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x587983...8eb5cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5986af...9b3939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59c856...1e196d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d8545...1dfc34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60a6c5...bc42f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x683b88...81b8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x713b6b...c5edc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7171e6...d2611b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77f2ae...5e0014` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78a3dc...bd1d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a3652...a4a088` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e43d3...981c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86d794...2fe1e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x938895...f3efbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b337c...a45287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d2f03...11ac78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab42c4...64f44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad4413...527360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafdcd8...e35d04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0753a...246f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2d2db...2e2916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7ae7b...41bc50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7af8b...1a0fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc156f6...b0fbef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfc923...7ecbfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4f032...dac7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe59910...36d981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xead80e...c911ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa0d65...4fe3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfca17a...139d6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x00a2a9...abb4a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x155aeb...c21b9d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1cab84...345cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7de29b...5a3c3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe6f65...83f09d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd89025...96eb87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe3246e...d0a90a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfc2b39...800aae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9763e6...2ca562` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9cde25...521867` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb221bc...2f6bb1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc07500...33d39a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xde491d...448bdb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfcc325...67dba1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x60825f...7d07b0` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x6b87fa...d69fb9` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x7660d9...0d9e5d` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9c5a52...a97e1a` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xa7a10b...eb0b08` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x180295...cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2dd70f...cabdbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbcb724...74efc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeef937...3a34e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x32acb4...2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d3be8...c99b89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9b683c...77413c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa88bbe...789d6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xefc86a...d228c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xefde1c...c97f58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Security Review: Dynamic E-CLP](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | fresh | Direct | contract_name | 11 | high |
| [Security Review: GYFI](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Security Review: Bridges](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [Security Review: sGYD](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Security Review: Protocol](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 62 | high |
| [Security Review: Governance](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 26 | high |
| [Security Review: E-CLP (previously called CEMM)](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Security Review: Protocol, 2-CLP and 3-CLP](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | 51 | high |
| [Security Review](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [Security Review: Mathematical Model Implementation](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | AdaptiveRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb9d01c...20ab14`](./contracts/optimism-10/0xb9d01ca61b9c181da1051bfdd28e1097e920ab14/) | AggregatorBatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7943b4...bb8565`](./contracts/sonic-146/0x7943b40c37233fe5daf9b64dd09c339eb0bb8565/) | AggregatorRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2321e...6b0247`](./contracts/ethereum-1/0xa2321e23b3060e160195e138b62f8498546b0247/) | AssociatedDAOVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x685dfb...aad88e`](./contracts/sonic-146/0x685dfbe5e38ca7eda140603ec5902be888aad88e/) | BeetsNftDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x311334...358615`](./contracts/optimism-10/0x311334883921fb1b813826e585df1c2be4358615/) | BufferRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe42ffa...42e467`](./contracts/optimism-10/0xe42ffa682a26ef8f25891db4882932711d42e467/) | CircuitBreakerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd2f927...37f98f`](./contracts/sonic-146/0xd2f927cb65fd23dac5225fcd024a2c097e37f98f/) | CombinedRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xdc580c...a923e6`](./contracts/sonic-146/0xdc580ce8e689a49d3ce58fad4c52786c39a923e6/) | CombinedRateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | CompositeLiquidityRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x284265...2dc9d9`](./contracts/arbitrum-42161/0x284265d0b95bedbfc9acade0414ea1a1ba2dc9d9/) | ConnectorArbBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ConstantPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x180ec5...138c46`](./contracts/sonic-146/0x180ec5fe23a2331b8180775c712eab5f7a138c46/) | ConstantRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x511052...ec6554`](./contracts/sonic-146/0x511052c991d8955653093445034f061597ec6554/) | ConstantRateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb731...aba876`](./contracts/ethereum-1/0x1fb7317359d88076a24cdb97d84cec796baba876/) | CouncillorNFT | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x339b89...f09404`](./contracts/ethereum-1/0x339b896bafd5d3811241d607d0cd33a1c2f09404/) | CouncillorNFTVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4743d...7241d7`](./contracts/optimism-10/0xf4743d026f3d07af3747bb7d05bed06d177241d7/) | CowSwapFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | EclpLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x201efd...2a86cc`](./contracts/optimism-10/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/) | ERC4626CowSwapFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/) | ERC4626RateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe0f1df...65211e`](./contracts/sonic-146/0xe0f1dfae777bb7d44d3cb7d8fcdce6731165211e/) | EventEmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7920bf...c50cfd`](./contracts/base-8453/0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd/) | ExternalWeightedMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | FoundingFrog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0400d6...9f157c`](./contracts/ethereum-1/0x0400d6aac2545d2e4b547c3a18ebbef5fb9f157c/) | FoundingMemberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe02f11...6523b3`](./contracts/ethereum-1/0xe02f11277cfa84c696370c097c51848c6a6523b3/) | FrogMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3841ee...1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/) | Gyro2CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05d8c4...a3971e`](./contracts/sonic-146/0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e/) | Gyro3CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x086602...b38701`](./contracts/sei-1329/0x086602c022a4362d48dce1596cd1b7ad6fb38701/) | GyroECLPMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xd0c53f...990ba3`](./contracts/sei-1329/0xd0c53f30e3990fe8c4b8c31c4b6ca0e9dd990ba3/) | GyroL2Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | GyroTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8725f...030525`](./contracts/ethereum-1/0xa8725f6ff4af9eefbbe468b87a6f242353030525/) | GyroTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | L2Gyfi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x60e9fe...f8b5d9`](./contracts/sonic-146/0x60e9feb41b409ded3dde9c5025e10fb5f4f8b5d9/) | LBPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/) | LegendsOfMaBeets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x113cf9...106d71`](./contracts/sonic-146/0x113cf97f53297b9a14baaba5733ee37040106d71/) | LevelNftDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4476ff...bfa007`](./contracts/ethereum-1/0x4476ffcb74a793092544ab29f45286cb1abfa007/) | LockedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16b13d...1ac7d1`](./contracts/ethereum-1/0x16b13dd24977a13e9857f36eb405db11d01ac7d1/) | LockedVaultWithThreshold | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb19382...377b75`](./contracts/base-8453/0xb19382073c7a0addbb56ac6af1808fa49e377b75/) | ManagedPoolAddRemoveTokenLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d2248...d28c9a`](./contracts/base-8453/0x7d2248f194755dca9a1887099394f39476d28c9a/) | ManagedPoolAmmLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x956cca...3d9288`](./contracts/optimism-10/0x956ccab09898c0af2aca5e6c229c3ad4e93d9288/) | ManagedPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3630d2...eeaf5b`](./contracts/optimism-10/0x3630d26e51c03026f4f063d69d65f8e234eeaf5b/) | MevCaptureHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4638ab...f1551c`](./contracts/base-8453/0x4638ab64022927c9bd5947607459d13f57f1551c/) | MockERC4626Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79e435...05ea6c`](./contracts/base-8453/0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c/) | MockGearboxVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x698cae...2bcda4`](./contracts/base-8453/0x698caed853be9cea96c268f565e2b61d3b2bcda4/) | MockStaticAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe38816...0be5f7`](./contracts/optimism-10/0xe3881627b8deebccf9c23b291430a549fc0be5f7/) | MockVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71260f...c4f961`](./contracts/ethereum-1/0x71260fce6c16fb7b3481bafb64377c2aadc4f961/) | MultiownerProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6fb10e...133ed5`](./contracts/sonic-146/0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5/) | NftDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c6052...18828f`](./contracts/base-8453/0x0c6052254551eae3ecac77b01dfcf1025418828f/) | NoProtocolFeeLiquidityBootstrappingPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x84b22e...232c0e`](./contracts/gnosis-100/0x84b22e0f83d848ead9fc050734e946b665232c0e/) | OneSidedECLPJoiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xfce81c...2b238e`](./contracts/sei-1329/0xfce81cafe4b3f7e2263efc2d907f488ebf2b238e/) | PauseManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x315f64...ec52ee`](./contracts/sonic-146/0x315f64a6a80b3c55a96dc3fc987cfa4287ec52ee/) | PoolOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03f3fb...712054`](./contracts/base-8453/0x03f3fb107e74f2eac9358862e91ad3c692712054/) | PoolRecoveryHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ProtocolFeeController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ProtocolFeeControllerMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x682f0d...e27589`](./contracts/base-8453/0x682f0ddbfd41d1272982f64a499fb62d80e27589/) | ProtocolIdRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x32acb4...2a23f3`](./contracts/gnosis-100/0x32acb44fc929339b9f16f0449525cc590d2a23f3/) | QueryProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/) | QuotientRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbc810...c4eda7`](./contracts/ethereum-1/0xdbc810d748f808967f34da2f37f116c58ec4eda7/) | RateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x238fbf...818b0a`](./contracts/arbitrum-42161/0x238fbf9b7594681838fb563c417937eb95818b0a/) | RewardsClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x455a56...b72aeb`](./contracts/sonic-146/0x455a56994df75ef70795c7a2d6a1d40534b72aeb/) | Simple Vesting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | SonicBeetsMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbf46ae...59038d`](./contracts/sonic-146/0xbf46aef3c4c119495245e6b1911a4a961859038d/) | SonicStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x52b16e...432d78`](./contracts/sonic-146/0x52b16e3d7d25ba64f242e59f9a74799ecc432d78/) | SonicStakingWithdrawRequestHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/) | StableLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | StableSurgeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/) | StableSurgePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfae89...e9f7fd`](./contracts/ethereum-1/0xcfae89029b2c3a695f4e8624f9e1428229e9f7fd/) | StandaloneECLPPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | UnbalancedAddViaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x15e556...dc76be`](./contracts/sonic-146/0x15e556d316e45241267e1ecb6f34b114a2dc76be/) | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfa5084...a68312`](./contracts/sonic-146/0xfa5084c5428b1a999858b163b12ff63117a68312/) | X33RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 168 |
| upstream | 38 |
| standard_library | 8 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=159

Zero-match audit list:

- [2963] Security Review: GYFI
- [2964] Security Review: Bridges
- [2965] Security Review: sGYD
- [2968] Security Review: E-CLP (previously called CEMM)

Fork inheritance lineage and inherited audits are included when available.
