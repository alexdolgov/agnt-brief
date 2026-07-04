# Agentic Audit Brief: Gyroscope Protocol

## Project Overview

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.148Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 195 unique implementations (339 raw deployments)
- DeFi Llama TVL: $353,872.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 245 project-authored contract(s) across 8 chain(s); 17 ERC20 tokens, 5 ERC721 NFTs, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 68 common project-authored base contract(s) (governableupgradeable, governablebase, nftvault). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 467; live-surface contracts included: 328 (245 live, 83 unknown).
- Excluded by liveness: 139 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 40/116 (34.5%)
- Deployed-live implementations: 119 of 195 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 41/120
- Verified + Unaudited implementations: 79
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 195
- Raw deployments: 339
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 35 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 1.7% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 41 | 34.2% | 2025-06 |
| Runtime Verification | Tier 2 | 5 | 4.2% | 2022-04 |
| Trail of Bits | Tier 1 | 2 | 1.7% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionTierConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8342b9...3478b6`](./contracts/ethereum-1/0x8342b910815b0127c98e7717d4276c1d393478b6/); ethereum `0xe9f7b8...fda965` | ✅ Audited |
| AggregateLPVault | unknown | ethereum | n/a | [`0xe8b18f...0db528`](./contracts/ethereum-1/0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528/) | ✅ Audited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66a7aa...60b0b2`](./contracts/ethereum-1/0x66a7aa37ea714e0b8dd553f375104ea7d160b0b2/); ethereum `0x94c341...5c9126` | ✅ Audited |
| BalancerPoolVault | unknown | ethereum | n/a | [`0x29609b...ee26e6`](./contracts/ethereum-1/0x29609b3fd68c647c3a619e69de386f2f02ee26e6/) | ✅ Audited |
| BatchVaultPriceOracle | unknown | ethereum | n/a | [`0x46412c...9ec881`](./contracts/ethereum-1/0x46412cdec90b266629bf05188185e9fd109ec881/) | ✅ Audited |
| CheckedPriceOracle | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2a18f5...482411`](./contracts/ethereum-1/0x2a18f596283f9082fd88f82556d5f78e3c482411/); ethereum `0xbdcfe6...a471b2`; polygon `0x64f84a...c75fc3`; polygon `0x70772f...20fcab`; polygon `0x8e9a7c...d5cf49`; polygon `0xba116c...1455c7`; polygon `0xfd83a2...377dcc` | ✅ Audited |
| GenericVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x80ecf3...295176`](./contracts/ethereum-1/0x80ecf3d96446ab3abaf3d037d1b352bb41295176/); ethereum `0x830913...89ab31`; ethereum `0x88f3b4...821d65`; ethereum `0x98962b...6a4953` | ✅ Audited |
| GovernanceManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0xb05bce...4e206e`](./contracts/ethereum-1/0xb05bcedb54814e0b3893cbf5b2c27d90164e206e/); ethereum `0xb2fbd0...2ae755`; ethereum `0xfc6879...beba17` | ✅ Audited |
| GovernanceProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x00a2a9...abb4a8`](./contracts/arbitrum-42161/0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8/); arbitrum `0x32acb4...2a23f3` | ✅ Audited |
| GovernanceRoleManager | governance | sei | n/a | [`0x78898a...b3a4b9`](./contracts/sei-1329/0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9/) | ✅ Audited |
| GydDistributor | operational_periphery | ethereum | n/a | [`0xc1024e...b0561d`](./contracts/ethereum-1/0xc1024e475e357375e16c7f86fe46cbc6ffb0561d/) | ✅ Audited |
| GydRecovery | unknown | ethereum | n/a | [`0x2a803c...fd4025`](./contracts/ethereum-1/0x2a803ce12be775802a7c6f50797e53e9c3fd4025/) | ✅ Audited |
| GydToken | unknown | ethereum | n/a | [`0xfa08eb...ea0cb5`](./contracts/ethereum-1/0xfa08eb3a781532f47b1dd811a6ca326842ea0cb5/) | ✅ Audited |
| GyroConfig | unknown | optimism | n/a | 2 deployments: optimism [`0x32acb4...2a23f3`](./contracts/optimism-10/0x32acb44fc929339b9f16f0449525cc590d2a23f3/); optimism `0xe02f11...6523b3` | ✅ Audited |
| GyroConfig | unknown | gnosis | n/a | 2 deployments: gnosis [`0x00a2a9...abb4a8`](./contracts/gnosis-100/0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8/); gnosis `0xe02f11...6523b3` | ✅ Audited |
| GyroConfig | unknown | polygon | n/a | [`0xfdc2e9...3fbe67`](./contracts/polygon-137/0xfdc2e9e03f515804744a40d0f8d25c16e93fbe67/) | ✅ Audited |
| GyroConfig | unknown | sonic | n/a | 2 deployments: polygon `0xf5d544...45f18c`; sonic [`0x2426d2...aff07f`](./contracts/sonic-146/0x2426d2133effc36c1579c868e569027a7daff07f/) | ✅ Audited |
| GyroConfig | unknown | sonic | n/a | 2 deployments: sonic [`0x3f1f85...b068da`](./contracts/sonic-146/0x3f1f8541500c4bcc26d47298ebf34e3aafb068da/); sonic `0xeecee5...8ea81b` | ✅ Audited |
| GyroConfig | unknown | sonic | n/a | 3 deployments: sonic [`0xa23112...bda069`](./contracts/sonic-146/0xa23112d44b713cabb142a6b29de7bcaaccbda069/); sonic `0xab7d2e...a70cce`; sonic `0xde6237...21e23d` | ✅ Audited |
| GyroConfig | unknown | sei | n/a | 2 deployments: sei [`0x194941...2deadd`](./contracts/sei-1329/0x194941b55555afd751285b8b792c7538152deadd/); sei `0x788fb3...5262c0` | ✅ Audited |
| GyroConfig | unknown | base | n/a | 2 deployments: base [`0x8a5eb9...42c8a6`](./contracts/base-8453/0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6/); base `0x9b683c...77413c` | ✅ Audited |
| GyroConfig | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9b683c...77413c`](./contracts/arbitrum-42161/0x9b683ca24b0e013512e2566b68704dbe9677413c/); arbitrum `0xefde1c...c97f58` | ✅ Audited |
| GyroThreePoolFactory | unknown | polygon | n/a | [`0xe59910...36d981`](./contracts/polygon-137/0xe59910c7725e15c28ba48bbbb995e7396536d981/) | ✅ Audited |
| GyroTwoPoolFactory | unknown | polygon | n/a | [`0x333fad...3ed028`](./contracts/polygon-137/0x333fadaf093cccc04d83ac19f1b6a6f2443ed028/) | ✅ Audited |
| L2GydDistributor | operational_periphery | arbitrum | n/a | [`0x4dfdad...6ba299`](./contracts/arbitrum-42161/0x4dfdad359bd4c154dd307350582c4bff636ba299/) | ✅ Audited |
| Motherboard | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8de76b...fff393`](./contracts/ethereum-1/0x8de76bf863e0a571be7165d9c85a1116c0fff393/); ethereum `0xbaf6a0...a6cc95` | ✅ Audited |
| PrimaryAMMV1 | unknown | ethereum | n/a | [`0xe7ea59...5a6ce5`](./contracts/ethereum-1/0xe7ea594b5905ec0dd321e61d7625711b635a6ce5/) | ✅ Audited |
| Reserve | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00ffba...435c2a`](./contracts/ethereum-1/0x00ffbaeaacae63a295a23c7bd2c2a9193d435c2a/); ethereum `0xc7ab17...b21a37` | ✅ Audited |
| ReserveManager | unknown | ethereum | n/a | [`0x2519a7...1c2869`](./contracts/ethereum-1/0x2519a729535470830d345b78109818f94c1c2869/) | ✅ Audited |
| ReserveSafetyManager | unknown | ethereum | n/a | [`0x8f3832...3a3fab`](./contracts/ethereum-1/0x8f38321416d587ec4f3a4b37b1ccbb80013a3fab/) | ✅ Audited |
| ReserveStewardshipIncentives | unknown | ethereum | n/a | [`0x5c73d4...d94f86`](./contracts/ethereum-1/0x5c73d4e5349ffd392e62fa6bed994bb449d94f86/) | ✅ Audited |
| RootSafetyCheck | unknown | ethereum | n/a | [`0x56773c...273789`](./contracts/ethereum-1/0x56773ca4a4138f21128d23adb237004697273789/) | ✅ Audited |
| sGYD | unknown | ethereum | n/a | [`0xea50f4...f37816`](./contracts/ethereum-1/0xea50f402653c41cadbafd1f788341db7b7f37816/) | ✅ Audited |
| sGYD | unknown | arbitrum | n/a | [`0xea50f4...f37816`](./contracts/arbitrum-42161/0xea50f402653c41cadbafd1f788341db7b7f37816/) | ✅ Audited |
| StaticPercentageFeeHandler | unknown | ethereum | n/a | [`0x757cfc...f9a051`](./contracts/ethereum-1/0x757cfcf4fec346e4880ec686d11bea60c8f9a051/) | ✅ Audited |
| StaticTierStrategy | unknown | ethereum | n/a | 11 deployments: ethereum [`0x4180e9...7c24d3`](./contracts/ethereum-1/0x4180e9a1e611dc88cb2866ba233db232197c24d3/); ethereum `0x6170ed...4dae7a`; ethereum `0xc0dea0...1fb7b4`; ethereum `0xc2daef...3492e6`; ethereum `0xd32971...65b272`; ethereum `0xd70027...570c75`; ethereum `0xd837d6...8d1c6d`; ethereum `0xd95523...18fd49`; ethereum `0xea8106...fd538e`; ethereum `0xfdbcc2...e4d582`; ethereum `0xfe4199...27c27c` | ✅ Audited |
| TellorOracle | unknown | ethereum | n/a | [`0xe22188...f9d9a0`](./contracts/ethereum-1/0xe22188f5d6acc1dd951bd20f531624b690f9d9a0/) | ✅ Audited |
| TrustedSignerPriceOracle | unknown | ethereum | n/a | [`0xf4ca93...4b4aa5`](./contracts/ethereum-1/0xf4ca93c70a00032856e6d942be2eb1cea54b4aa5/) | ✅ Audited |
| UpdatableRateProviderBalV2 | unknown | sonic | n/a | 10 deployments: optimism `0x32f6fc...c41041`; sonic [`0x13024f...50a05d`](./contracts/sonic-146/0x13024ff3879ce1d3a827958ab1e5fdf29250a05d/); sonic `0x20a7e5...04bc89`; sonic `0x218cb3...a7bd9f`; sonic `0x4881ef...99ec83`; sonic `0x5b5c4b...1f2048`; sonic `0xb7b5d2...f5f144`; sei `0x27ce6a...8d7bb0`; base `0x2a803c...fd4025`; base `0x42d9b3...4aadc0` | ✅ Audited |
| VaultRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x82c45c...0b5a22`](./contracts/ethereum-1/0x82c45c1b7b798aa152937107058c8098630b5a22/); ethereum `0xf2865b...ed4eb5` | ✅ Audited |
| VaultSafetyMode | unknown | ethereum | n/a | [`0x84b22e...232c0e`](./contracts/ethereum-1/0x84b22e0f83d848ead9fc050734e946b665232c0e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (79)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveRateProvider | unknown | sonic | n/a | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | ⚠️ Unaudited |
| BatchRouter | adapter | optimism | n/a | [`0xad8905...f8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | ⚠️ Unaudited |
| BatchRouter | adapter | sonic | n/a | [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | ⚠️ Unaudited |
| Beets | unknown | sonic | n/a | [`0x2d0e08...66e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | sonic | n/a | [`0x1e5fe9...626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | ⚠️ Unaudited |
| BoundedERC20WithEMA | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc69129...be714c`](./contracts/ethereum-1/0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c/); ethereum `0xe4c243...efb1e4` | ⚠️ Unaudited |
| BufferRouter | adapter | sonic | n/a | [`0x532da9...3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | ⚠️ Unaudited |
| Child Liquidity Gauge | operational_periphery | base | n/a | [`0x9f7e65...b37013`](./contracts/base-8453/0x9f7e65887413a8497b87ba2058ce6e4ef4b37013/) | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | base | n/a | 4 deployments: optimism `0xa523f4...4612dc`; sonic `0xe6338d...33bd7c`; base [`0x2498a2...29ba95`](./contracts/base-8453/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95/); base `0xb1a4fe...d9021f` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | optimism | n/a | 3 deployments: optimism [`0x56c8d8...864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/); optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | optimism | n/a | [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | optimism | n/a | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ⚠️ Unaudited |
| DistributionManager | governance | ethereum | n/a | [`0x4d9c76...0e6586`](./contracts/ethereum-1/0x4d9c765d7431ff354d208cf9a37e7186180e6586/) | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | optimism | n/a | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | optimism | n/a | 6 deployments: ethereum `0xfc541f...c259ec`; optimism [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/); gnosis `0x15e86b...574cec`; sonic `0xc9a0e6...50e487`; base `0xefd3af...d7ff1a`; arbitrum `0xe548a2...915f31` | ⚠️ Unaudited |
| FoundingFrog | unknown | ethereum | n/a | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | ⚠️ Unaudited |
| FoundingMemberVault | core_logic | ethereum | n/a | [`0x7783b7...9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53b8b1...2a6298`](./contracts/ethereum-1/0x53b8b175045816d447916b81ac12ba78fa2a6298/); ethereum `0xb2d2db...2e2916` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77f2ae...5e0014`](./contracts/ethereum-1/0x77f2aeb44088cdb35f6d3070dc072c56ff5e0014/); ethereum `0x8e1787...a94ff2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sonic `0xc95140...947f22`; sei [`0xb438ea...baf7fa`](./contracts/sei-1329/0xb438ea246cefa9241305ad62e5d307d014baf7fa/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xa8d612...b5f9e9`](./contracts/ethereum-1/0xa8d612739354a4106072a91aa4ca1458e1b5f9e9/) | ⚠️ Unaudited |
| GydTokenPaused | token | ethereum | n/a | [`0xe07f9d...491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x579653...1d98c9`](./contracts/ethereum-1/0x579653927bf509b361f6e3813f5d4b95331d98c9/); ethereum `0x99fafe...9eb1af` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | polygon | n/a | 4 deployments: optimism `0x99364f...c52c58`; polygon [`0x3841ee...1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/); polygon `0x3b55b6...53c7a4`; polygon `0x968348...2bb982` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | polygon | n/a | [`0x5d8545...1dfc34`](./contracts/polygon-137/0x5d8545a7330245150be0ce88f8afb0edc41dfc34/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7a3652...a4a088`](./contracts/arbitrum-42161/0x7a36527a02d96693b0af2b70421f952816a4a088/); arbitrum `0x8342b9...3478b6` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x90f08b...83adda`](./contracts/polygon-137/0x90f08b3705208e41dbeeb37a42fb628dd483adda/); polygon `0x977e8a...043079` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x05d8c4...a3971e`](./contracts/sonic-146/0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e/); sonic `0x0e3558...0a627e` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | sei | n/a | [`0x4ac500...9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | ⚠️ Unaudited |
| GyroECLPMath | unknown | sei | n/a | 10 deployments: optimism `0x4e56f1...de07ec`; gnosis `0x9b683c...77413c`; polygon `0x10aba8...3b5d63`; polygon `0x2ec9fa...64a530`; polygon `0xbe1a07...0c4350`; sonic `0xfa45ac...947be3`; sei [`0x086602...b38701`](./contracts/sei-1329/0x086602c022a4362d48dce1596cd1b7ad6fb38701/); base `0x721325...951e5f`; arbitrum `0x41e9ac...4d946a`; arbitrum `0xcfc923...7ecbfd` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8d93b8...66ee91`](./contracts/ethereum-1/0x8d93b853849b9884e2bb413444ec23eb5366ee91/); ethereum `0xfbfad5...a64c63` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | optimism | n/a | 9 deployments: ethereum `0xa87217...25bda2`; optimism [`0x22625e...86b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/); optimism `0x53eff5...c479ef`; optimism `0xefde1c...c97f58`; polygon `0x949af2...f9d02f`; sonic `0xf02373...7775a9`; sei `0x66d89d...6c0c93`; base `0x5f6848...f082e3`; arbitrum `0x721325...951e5f` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | optimism | n/a | 2 deployments: optimism [`0x9b683c...77413c`](./contracts/optimism-10/0x9b683ca24b0e013512e2566b68704dbe9677413c/); optimism `0xe8b18f...0db528` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | gnosis | n/a | 2 deployments: gnosis [`0x5d3be8...c99b89`](./contracts/gnosis-100/0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89/); gnosis `0x8a5eb9...42c8a6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | polygon | n/a | [`0x1a79a2...05926b`](./contracts/polygon-137/0x1a79a24db0f73e9087205287761fc9c5c305926b/) | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x4c818c...addf17`](./contracts/polygon-137/0x4c818c579431052e92b89434e00ae729d8addf17/); polygon `0xd42045...ee0ef6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x4a1d66...0defec`](./contracts/sonic-146/0x4a1d66cb3f33008657d100c38e4fa158aa0defec/); sonic `0xda598c...94fb8b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x536429...620c5f`](./contracts/sonic-146/0x5364296d19d453d73f84a94e78681a430e620c5f/); sonic `0xe22c6d...b38739` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x765505...178c6b`](./contracts/sonic-146/0x765505f7fef6dab854a75162801048c2ba178c6b/); sonic `0xf80435...9c4491` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | base | n/a | 2 deployments: base [`0x15e86b...574cec`](./contracts/base-8453/0x15e86be6084c6a5a8c17732d398dfbc2ec574cec/); base `0xdca5f1...53eaf6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xdca5f1...53eaf6`](./contracts/arbitrum-42161/0xdca5f1f0d7994a32bc511e7dba0259946653eaf6/); arbitrum `0xde0e16...b9ec2e` | ⚠️ Unaudited |
| GyroTokenPaused | token | sei | n/a | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | ⚠️ Unaudited |
| L2Gyfi | unknown | sei | n/a | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | sonic | n/a | 4 deployments: sonic [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/); sonic `0x6dab80...407885`; sonic `0x82adf9...52bd81`; sonic `0xefd42b...f66fef` | ⚠️ Unaudited |
| LevelNftDescriptor | unknown | sonic | n/a | [`0x113cf9...106d71`](./contracts/sonic-146/0x113cf97f53297b9a14baaba5733ee37040106d71/) | ⚠️ Unaudited |
| LockedVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48a64b...023d2b`](./contracts/ethereum-1/0x48a64b352989feb0e98843bd0415c94fc8023d2b/); ethereum `0xa3979e...4a3008` | ⚠️ Unaudited |
| LockedVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x991aeb...70a336`](./contracts/ethereum-1/0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336/); ethereum `0xdb5494...eff57a` | ⚠️ Unaudited |
| LockedVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb6dc4f...410f9e`](./contracts/ethereum-1/0xb6dc4f06867274539ecd06e244349f0a75410f9e/); ethereum `0xe1c7ad...44123b` | ⚠️ Unaudited |
| LockedVaultWithThreshold | unknown | ethereum | n/a | 2 deployments: ethereum [`0x695225...b6bc61`](./contracts/ethereum-1/0x695225a1e074ffbe8ffe42364e77857df9b6bc61/); ethereum `0xb94c4f...8bc1f6` | ⚠️ Unaudited |
| MultiownerProxyAdmin | unknown | ethereum | n/a | [`0x71260f...c4f961`](./contracts/ethereum-1/0x71260fce6c16fb7b3481bafb64377c2aadc4f961/) | ⚠️ Unaudited |
| NftDescriptor | unknown | sonic | n/a | 2 deployments: sonic [`0x6fb10e...133ed5`](./contracts/sonic-146/0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5/); sonic `0xe36d5d...598b9c` | ⚠️ Unaudited |
| OneSidedECLPJoiner | unknown | gnosis | n/a | 3 deployments: gnosis [`0x84b22e...232c0e`](./contracts/gnosis-100/0x84b22e0f83d848ead9fc050734e946b665232c0e/); base `0xe8b48d...236016`; arbitrum `0xa0a555...f1322b` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | n/a | 2 deployments: optimism [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f...7ae5db` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | optimism | n/a | 3 deployments: optimism [`0x1cd776...b1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/); optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | n/a | 2 deployments: optimism `0xdb8d75...a1bd3a`; base [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | base | n/a | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | optimism | n/a | 2 deployments: optimism [`0x774cb6...17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/); optimism `0xcc267d...3a7a4e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 10 deployments: gnosis `0x4e56f1...de07ec`; polygon `0x83d34c...c4cbbe`; sonic [`0x096f0a...ef3089`](./contracts/sonic-146/0x096f0a6490aac8324cf387cc248fb2f991ef3089/); sonic `0x33c11b...8f7a47`; sonic `0x4b13e4...89d0f1`; sonic `0x5aa1b0...7d34de`; sonic `0x8a4fdf...0dc399`; sei `0x8c12a1...48ef03`; base `0xefde1c...c97f58`; arbitrum `0x4e56f1...de07ec` | ⚠️ Unaudited |
| QueryProcessor | unknown | gnosis | n/a | 4 deployments: gnosis [`0x32acb4...2a23f3`](./contracts/gnosis-100/0x32acb44fc929339b9f16f0449525cc590d2a23f3/); sonic `0xdbf966...920ca9`; sei `0x594383...cfa4c4`; base `0xefc86a...d228c1` | ⚠️ Unaudited |
| QuotientRateProvider | unknown | sonic | n/a | 2 deployments: sonic [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/); sonic `0x79a88b...c40447` | ⚠️ Unaudited |
| ReClammPoolFactory | registry | optimism | n/a | 2 deployments: optimism [`0x891ec9...017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/); sonic `0x99c13b...310de0` | ⚠️ Unaudited |
| Reliquary | unknown | sonic | n/a | [`0x973670...941684`](./contracts/sonic-146/0x973670ce19594f857a7cd85ee834c7a74a941684/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: optimism `0xe2fa4e...9e285b`; sonic [`0x93db46...a8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | sonic | n/a | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | ⚠️ Unaudited |
| SonicStaking | unknown | sonic | n/a | 2 deployments: sonic [`0xbf46ae...59038d`](./contracts/sonic-146/0xbf46aef3c4c119495245e6b1911a4a961859038d/); sonic `0xf4fa7f...79400b` | ⚠️ Unaudited |
| SonicStaking | unknown | sonic | n/a | 2 deployments: sonic [`0xd5f7fc...b3f141`](./contracts/sonic-146/0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141/); sonic `0xe5da20...be3955` | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/); optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x1780e8...d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/); optimism `0x268e2e...d9af42`; sonic `0x482ee5...48affb`; base `0xc49ca9...97950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | sonic | n/a | 2 deployments: optimism `0xf39ca6...ab9015`; sonic [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/); optimism `0xfd2142...f3128f`; sonic `0x3d9319...0f0bad`; sonic `0x6187f6...e6776e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f4141...3c22a6`](./contracts/ethereum-1/0x1f4141f7ac1f85b178d63baf15832a141d3c22a6/); ethereum `0x9543b9...bef92a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb7ae7b...41bc50`](./contracts/ethereum-1/0xb7ae7b8e34fae3066b5adcc305e54a78e941bc50/); ethereum `0xe548a2...915f31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcfc923...7ecbfd`](./contracts/ethereum-1/0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd/); ethereum `0xde0e16...b9ec2e` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | n/a | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x9da189...7e017c`](./contracts/optimism-10/0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c/); base `0xd87f44...9f5acd` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xfc7d96...55c467`](./contracts/ethereum-1/0xfc7d964f1676831d8105506b1f0c3b3e2b55c467/) | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x6ee18f...e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/); optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a...5f83b0`; sonic `0x4726eb...d60fc3`; base `0x4c32a8...d6a1c4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x78a3dcdda13a58c198b5aabea91f51273abd1d87) | unknown | ethereum | n/a | 2 deployments: ethereum `0x522ef5...8aa889`; ethereum `0x78a3dc...bd1d87` | ❓ Unverified |
| Proxy (impl: 0x9b683ca24b0e013512e2566b68704dbe9677413c) | unknown | avalanche | n/a | 2 deployments: avalanche `0x8a5eb9...42c8a6`; avalanche `0x9b683c...77413c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02a569...e75c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0980e8...5c6754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ee0a5...a8403a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19144e...bc09ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a7f72...bb6a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1add0c...0d8f17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x287dfa...637f07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c1c0e...253f55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2decae...2cb615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e77c9...091c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ec43d...7ea792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x329084...6f6fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x354389...cb2cda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42abd5...f68e56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43455e...660a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ae17b...441dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52beb0...1993fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x587983...8eb5cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5986af...9b3939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59c856...1e196d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60a6c5...bc42f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x683b88...81b8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x713b6b...c5edc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7171e6...d2611b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a3652...a4a088` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e43d3...981c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86d794...2fe1e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x938895...f3efbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b337c...a45287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2f03...11ac78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab42c4...64f44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad4413...527360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdcd8...e35d04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0753a...246f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7af8b...1a0fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc156f6...b0fbef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4f032...dac7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xead80e...c911ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa0d65...4fe3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfca17a...139d6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x00a2a9...abb4a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x155aeb...c21b9d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cab84...345cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7de29b...5a3c3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe6f65...83f09d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd89025...96eb87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3246e...d0a90a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc2b39...800aae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9763e6...2ca562` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9cde25...521867` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xadf9ed...01e92d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb221bc...2f6bb1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc07500...33d39a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xde491d...448bdb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfcc325...67dba1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x60825f...7d07b0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6b87fa...d69fb9` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7660d9...0d9e5d` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9c5a52...a97e1a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xa7a10b...eb0b08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x180295...cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2dd70f...cabdbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcb724...74efc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeef937...3a34e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32acb4...2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e9ac...4d946a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d3be8...c99b89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa88bbe...789d6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefc86a...d228c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefde1c...c97f58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM_0526_Gyroscope-dynamic-eclp.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | aging | Direct | contract_name | 2 | n/a |
| [NM0440_GYFI_FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [NM0255_GYROSCOPE _FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [NM0264_GYRO_SGYD.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | stale | Direct | contract_name | 4 | n/a |
| [NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 52 | high |
| [NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 21 | high |
| [NM-0055 Security Review - Gyroscope CEMM.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [NM-0051 Security Review Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | 45 | high |
| [Summary Report & Fix Review - Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [Gyroscope_Protocol_Audit_Report.pdf](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | AdaptiveRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xad8905...f8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2d0e08...66e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | Beets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e5fe9...626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | BeetsOFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc69129...be714c`](./contracts/ethereum-1/0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c/) | BoundedERC20WithEMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x532da9...3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | BufferRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9f7e65...b37013`](./contracts/base-8453/0x9f7e65887413a8497b87ba2058ce6e4ef4b37013/) | Child Liquidity Gauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2498a2...29ba95`](./contracts/base-8453/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95/) | ChildChainGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x56c8d8...864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/) | ClaimSignatureRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | CompositeLiquidityRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ConstantPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d9c76...0e6586`](./contracts/ethereum-1/0x4d9c765d7431ff354d208cf9a37e7186180e6586/) | DistributionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | EclpLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/) | ERC4626RateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | FoundingFrog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7783b7...9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | FoundingMemberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53b8b1...2a6298`](./contracts/ethereum-1/0x53b8b175045816d447916b81ac12ba78fa2a6298/) | FreezableTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xb438ea...baf7fa`](./contracts/sei-1329/0xb438ea246cefa9241305ad62e5d307d014baf7fa/) | FreezableTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe07f9d...491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | GydTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x579653...1d98c9`](./contracts/ethereum-1/0x579653927bf509b361f6e3813f5d4b95331d98c9/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3841ee...1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5d8545...1dfc34`](./contracts/polygon-137/0x5d8545a7330245150be0ce88f8afb0edc41dfc34/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a3652...a4a088`](./contracts/arbitrum-42161/0x7a36527a02d96693b0af2b70421f952816a4a088/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x90f08b...83adda`](./contracts/polygon-137/0x90f08b3705208e41dbeeb37a42fb628dd483adda/) | Gyro3CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05d8c4...a3971e`](./contracts/sonic-146/0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e/) | Gyro3CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4ac500...9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | Gyro3CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x086602...b38701`](./contracts/sei-1329/0x086602c022a4362d48dce1596cd1b7ad6fb38701/) | GyroECLPMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d93b8...66ee91`](./contracts/ethereum-1/0x8d93b853849b9884e2bb413444ec23eb5366ee91/) | GyroECLPPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22625e...86b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | GyroECLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9b683c...77413c`](./contracts/optimism-10/0x9b683ca24b0e013512e2566b68704dbe9677413c/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x5d3be8...c99b89`](./contracts/gnosis-100/0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a79a2...05926b`](./contracts/polygon-137/0x1a79a24db0f73e9087205287761fc9c5c305926b/) | GyroECLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c818c...addf17`](./contracts/polygon-137/0x4c818c579431052e92b89434e00ae729d8addf17/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4a1d66...0defec`](./contracts/sonic-146/0x4a1d66cb3f33008657d100c38e4fa158aa0defec/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x536429...620c5f`](./contracts/sonic-146/0x5364296d19d453d73f84a94e78681a430e620c5f/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x765505...178c6b`](./contracts/sonic-146/0x765505f7fef6dab854a75162801048c2ba178c6b/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15e86b...574cec`](./contracts/base-8453/0x15e86be6084c6a5a8c17732d398dfbc2ec574cec/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdca5f1...53eaf6`](./contracts/arbitrum-42161/0xdca5f1f0d7994a32bc511e7dba0259946653eaf6/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | GyroTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | L2Gyfi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/) | LegendsOfMaBeets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x113cf9...106d71`](./contracts/sonic-146/0x113cf97f53297b9a14baaba5733ee37040106d71/) | LevelNftDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48a64b...023d2b`](./contracts/ethereum-1/0x48a64b352989feb0e98843bd0415c94fc8023d2b/) | LockedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991aeb...70a336`](./contracts/ethereum-1/0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336/) | LockedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6dc4f...410f9e`](./contracts/ethereum-1/0xb6dc4f06867274539ecd06e244349f0a75410f9e/) | LockedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x695225...b6bc61`](./contracts/ethereum-1/0x695225a1e074ffbe8ffe42364e77857df9b6bc61/) | LockedVaultWithThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71260f...c4f961`](./contracts/ethereum-1/0x71260fce6c16fb7b3481bafb64377c2aadc4f961/) | MultiownerProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6fb10e...133ed5`](./contracts/sonic-146/0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5/) | NftDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x84b22e...232c0e`](./contracts/gnosis-100/0x84b22e0f83d848ead9fc050734e946b665232c0e/) | OneSidedECLPJoiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/) | PoolPauseHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1cd776...b1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/) | PoolSwapFeeHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ProtocolFeeController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ProtocolFeeControllerMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x774cb6...17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/) | ProtocolFeeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x32acb4...2a23f3`](./contracts/gnosis-100/0x32acb44fc929339b9f16f0449525cc590d2a23f3/) | QueryProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/) | QuotientRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x891ec9...017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/) | ReClammPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x973670...941684`](./contracts/sonic-146/0x973670ce19594f857a7cd85ee834c7a74a941684/) | Reliquary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x93db46...a8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | SonicBeetsMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbf46ae...59038d`](./contracts/sonic-146/0xbf46aef3c4c119495245e6b1911a4a961859038d/) | SonicStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd5f7fc...b3f141`](./contracts/sonic-146/0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141/) | SonicStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/) | StableLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1780e8...d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/) | StablePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | StableSurgeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/) | StableSurgePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | UnbalancedAddViaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9da189...7e017c`](./contracts/optimism-10/0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c/) | VotingEscrowDelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc7d96...55c467`](./contracts/ethereum-1/0xfc7d964f1676831d8105506b1f0c3b3e2b55c467/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6ee18f...e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/) | WeightedLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/) | WeightedPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 113 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 79 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: contract_name=6, extraction_exact=127

Zero-match audit list:

- [2963] NM0440_GYFI_FINAL.pdf
- [2964] NM0255_GYROSCOPE _FINAL.pdf
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf

Fork inheritance lineage and inherited audits are included when available.
