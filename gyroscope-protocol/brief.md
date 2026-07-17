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
| ActionTierConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8342b910815b0127c98e7717d4276c1d393478b6`](./contracts/ethereum-1/0x8342b910815b0127c98e7717d4276c1d393478b6/); ethereum `0xe9f7b804d535ad9cf07aa10f48fe9fcaf5fda965` | ✅ Audited |
| AggregateLPVault | unknown | ethereum | n/a | [`0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528`](./contracts/ethereum-1/0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528/) | ✅ Audited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66a7aa37ea714e0b8dd553f375104ea7d160b0b2`](./contracts/ethereum-1/0x66a7aa37ea714e0b8dd553f375104ea7d160b0b2/); ethereum `0x94c34174f484cc0c80ea2d3670a50ec9325c9126` | ✅ Audited |
| BalancerPoolVault | unknown | ethereum | n/a | [`0x29609b3fd68c647c3a619e69de386f2f02ee26e6`](./contracts/ethereum-1/0x29609b3fd68c647c3a619e69de386f2f02ee26e6/) | ✅ Audited |
| BatchVaultPriceOracle | unknown | ethereum | n/a | [`0x46412cdec90b266629bf05188185e9fd109ec881`](./contracts/ethereum-1/0x46412cdec90b266629bf05188185e9fd109ec881/) | ✅ Audited |
| CheckedPriceOracle | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2a18f596283f9082fd88f82556d5f78e3c482411`](./contracts/ethereum-1/0x2a18f596283f9082fd88f82556d5f78e3c482411/); ethereum `0xbdcfe6e4d1ca68b18b8d65f999746a75c1a471b2`; polygon `0x64f84aac92320bba0bfa7af76a2da1d89ec75fc3`; polygon `0x70772f847ed577a7ed8d764ea602a96cdd20fcab`; polygon `0x8e9a7c0f15bb4d6d997d9e0bc29ad90263d5cf49`; polygon `0xba116c6f9e631413847747df3cf6dc5cdd1455c7`; polygon `0xfd83a2eb966422d3e7f43fb42e8ac93cc3377dcc` | ✅ Audited |
| GenericVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x80ecf3d96446ab3abaf3d037d1b352bb41295176`](./contracts/ethereum-1/0x80ecf3d96446ab3abaf3d037d1b352bb41295176/); ethereum `0x830913c917b07311eae53687be27c1c0b589ab31`; ethereum `0x88f3b40e45213131860f81b32ca12a3d54821d65`; ethereum `0x98962bec8bf0363d00d97d9049b40079356a4953` | ✅ Audited |
| GovernanceManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0xb05bcedb54814e0b3893cbf5b2c27d90164e206e`](./contracts/ethereum-1/0xb05bcedb54814e0b3893cbf5b2c27d90164e206e/); ethereum `0xb2fbd0087e5e2fe1f752ab0a8ca67bebd02ae755`; ethereum `0xfc68799da8feef47d1afb30960e6fef06cbeba17` | ✅ Audited |
| GovernanceProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8`](./contracts/arbitrum-42161/0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8/); arbitrum `0x32acb44fc929339b9f16f0449525cc590d2a23f3` | ✅ Audited |
| GovernanceRoleManager | governance | sei | n/a | [`0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9`](./contracts/sei-1329/0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9/) | ✅ Audited |
| GydDistributor | operational_periphery | ethereum | n/a | [`0xc1024e475e357375e16c7f86fe46cbc6ffb0561d`](./contracts/ethereum-1/0xc1024e475e357375e16c7f86fe46cbc6ffb0561d/) | ✅ Audited |
| GydRecovery | unknown | ethereum | n/a | [`0x2a803ce12be775802a7c6f50797e53e9c3fd4025`](./contracts/ethereum-1/0x2a803ce12be775802a7c6f50797e53e9c3fd4025/) | ✅ Audited |
| GydToken | unknown | ethereum | n/a | [`0xfa08eb3a781532f47b1dd811a6ca326842ea0cb5`](./contracts/ethereum-1/0xfa08eb3a781532f47b1dd811a6ca326842ea0cb5/) | ✅ Audited |
| GyroConfig | unknown | optimism | n/a | 2 deployments: optimism [`0x32acb44fc929339b9f16f0449525cc590d2a23f3`](./contracts/optimism-10/0x32acb44fc929339b9f16f0449525cc590d2a23f3/); optimism `0xe02f11277cfa84c696370c097c51848c6a6523b3` | ✅ Audited |
| GyroConfig | unknown | gnosis | n/a | 2 deployments: gnosis [`0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8`](./contracts/gnosis-100/0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8/); gnosis `0xe02f11277cfa84c696370c097c51848c6a6523b3` | ✅ Audited |
| GyroConfig | unknown | polygon | n/a | [`0xfdc2e9e03f515804744a40d0f8d25c16e93fbe67`](./contracts/polygon-137/0xfdc2e9e03f515804744a40d0f8d25c16e93fbe67/) | ✅ Audited |
| GyroConfig | unknown | sonic | n/a | 2 deployments: polygon `0xf5d5441384283e1accc58c9f4d5e058d2845f18c`; sonic [`0x2426d2133effc36c1579c868e569027a7daff07f`](./contracts/sonic-146/0x2426d2133effc36c1579c868e569027a7daff07f/) | ✅ Audited |
| GyroConfig | unknown | sonic | n/a | 2 deployments: sonic [`0x3f1f8541500c4bcc26d47298ebf34e3aafb068da`](./contracts/sonic-146/0x3f1f8541500c4bcc26d47298ebf34e3aafb068da/); sonic `0xeecee50a4333c8b8a8f76c81b6092477ae8ea81b` | ✅ Audited |
| GyroConfig | unknown | sonic | n/a | 3 deployments: sonic [`0xa23112d44b713cabb142a6b29de7bcaaccbda069`](./contracts/sonic-146/0xa23112d44b713cabb142a6b29de7bcaaccbda069/); sonic `0xab7d2e7d2140858048ba44bdd62f4c92a3a70cce`; sonic `0xde62378b913337667c7a238caf695b146421e23d` | ✅ Audited |
| GyroConfig | unknown | sei | n/a | 2 deployments: sei [`0x194941b55555afd751285b8b792c7538152deadd`](./contracts/sei-1329/0x194941b55555afd751285b8b792c7538152deadd/); sei `0x788fb3a1428fd851c2204dc6e30d775cb45262c0` | ✅ Audited |
| GyroConfig | unknown | base | n/a | 2 deployments: base [`0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6`](./contracts/base-8453/0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6/); base `0x9b683ca24b0e013512e2566b68704dbe9677413c` | ✅ Audited |
| GyroConfig | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9b683ca24b0e013512e2566b68704dbe9677413c`](./contracts/arbitrum-42161/0x9b683ca24b0e013512e2566b68704dbe9677413c/); arbitrum `0xefde1c764df6522a068b38106563de166ac97f58` | ✅ Audited |
| GyroThreePoolFactory | unknown | polygon | n/a | [`0xe59910c7725e15c28ba48bbbb995e7396536d981`](./contracts/polygon-137/0xe59910c7725e15c28ba48bbbb995e7396536d981/) | ✅ Audited |
| GyroTwoPoolFactory | unknown | polygon | n/a | [`0x333fadaf093cccc04d83ac19f1b6a6f2443ed028`](./contracts/polygon-137/0x333fadaf093cccc04d83ac19f1b6a6f2443ed028/) | ✅ Audited |
| L2GydDistributor | operational_periphery | arbitrum | n/a | [`0x4dfdad359bd4c154dd307350582c4bff636ba299`](./contracts/arbitrum-42161/0x4dfdad359bd4c154dd307350582c4bff636ba299/) | ✅ Audited |
| Motherboard | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8de76bf863e0a571be7165d9c85a1116c0fff393`](./contracts/ethereum-1/0x8de76bf863e0a571be7165d9c85a1116c0fff393/); ethereum `0xbaf6a0be2dca3350d3558783740dd8d540a6cc95` | ✅ Audited |
| PrimaryAMMV1 | unknown | ethereum | n/a | [`0xe7ea594b5905ec0dd321e61d7625711b635a6ce5`](./contracts/ethereum-1/0xe7ea594b5905ec0dd321e61d7625711b635a6ce5/) | ✅ Audited |
| Reserve | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00ffbaeaacae63a295a23c7bd2c2a9193d435c2a`](./contracts/ethereum-1/0x00ffbaeaacae63a295a23c7bd2c2a9193d435c2a/); ethereum `0xc7ab175954b1211f93209ca9fc89fafc3fb21a37` | ✅ Audited |
| ReserveManager | unknown | ethereum | n/a | [`0x2519a729535470830d345b78109818f94c1c2869`](./contracts/ethereum-1/0x2519a729535470830d345b78109818f94c1c2869/) | ✅ Audited |
| ReserveSafetyManager | unknown | ethereum | n/a | [`0x8f38321416d587ec4f3a4b37b1ccbb80013a3fab`](./contracts/ethereum-1/0x8f38321416d587ec4f3a4b37b1ccbb80013a3fab/) | ✅ Audited |
| ReserveStewardshipIncentives | unknown | ethereum | n/a | [`0x5c73d4e5349ffd392e62fa6bed994bb449d94f86`](./contracts/ethereum-1/0x5c73d4e5349ffd392e62fa6bed994bb449d94f86/) | ✅ Audited |
| RootSafetyCheck | unknown | ethereum | n/a | [`0x56773ca4a4138f21128d23adb237004697273789`](./contracts/ethereum-1/0x56773ca4a4138f21128d23adb237004697273789/) | ✅ Audited |
| sGYD | unknown | ethereum | n/a | [`0xea50f402653c41cadbafd1f788341db7b7f37816`](./contracts/ethereum-1/0xea50f402653c41cadbafd1f788341db7b7f37816/) | ✅ Audited |
| sGYD | unknown | arbitrum | n/a | [`0xea50f402653c41cadbafd1f788341db7b7f37816`](./contracts/arbitrum-42161/0xea50f402653c41cadbafd1f788341db7b7f37816/) | ✅ Audited |
| StaticPercentageFeeHandler | unknown | ethereum | n/a | [`0x757cfcf4fec346e4880ec686d11bea60c8f9a051`](./contracts/ethereum-1/0x757cfcf4fec346e4880ec686d11bea60c8f9a051/) | ✅ Audited |
| StaticTierStrategy | unknown | ethereum | n/a | 11 deployments: ethereum [`0x4180e9a1e611dc88cb2866ba233db232197c24d3`](./contracts/ethereum-1/0x4180e9a1e611dc88cb2866ba233db232197c24d3/); ethereum `0x6170edee4f62db7deeb55ba15cc7a5517f4dae7a`; ethereum `0xc0dea027935b1e1add71eb68585b1078611fb7b4`; ethereum `0xc2daeff6fe82ab18a32bc70c0098345a183492e6`; ethereum `0xd32971e1b9e4d5b09ba2ed3a6f404b1dc665b272`; ethereum `0xd70027c5754c2cab356154aab830f94c4e570c75`; ethereum `0xd837d6c421ec3d6e6361bffbccd0ff8f218d1c6d`; ethereum `0xd955238d7815564365706e327108331f8a18fd49`; ethereum `0xea8106503a136eaad94bf9fcf1de485459fd538e`; ethereum `0xfdbcc2e01d4ec8df128664325100173e67e4d582`; ethereum `0xfe41992176ad0fa41c4a2ed70f3c36273027c27c` | ✅ Audited |
| TellorOracle | unknown | ethereum | n/a | [`0xe22188f5d6acc1dd951bd20f531624b690f9d9a0`](./contracts/ethereum-1/0xe22188f5d6acc1dd951bd20f531624b690f9d9a0/) | ✅ Audited |
| TrustedSignerPriceOracle | unknown | ethereum | n/a | [`0xf4ca93c70a00032856e6d942be2eb1cea54b4aa5`](./contracts/ethereum-1/0xf4ca93c70a00032856e6d942be2eb1cea54b4aa5/) | ✅ Audited |
| UpdatableRateProviderBalV2 | unknown | sonic | n/a | 10 deployments: optimism `0x32f6fc935456f5fa4e37b095ba17efe95fc41041`; sonic [`0x13024ff3879ce1d3a827958ab1e5fdf29250a05d`](./contracts/sonic-146/0x13024ff3879ce1d3a827958ab1e5fdf29250a05d/); sonic `0x20a7e5f22a16cfb5b33258abdc1d6d48f104bc89`; sonic `0x218cb380c31896396325ef007820146791a7bd9f`; sonic `0x4881eff86856216b38eee74a20bc3156a599ec83`; sonic `0x5b5c4be8db97e5cb8048fc2bcc8bb1a3201f2048`; sonic `0xb7b5d20dba8afac9049909e3be080d4841f5f144`; sei `0x27ce6a70b572302cd5466591313a0029b38d7bb0`; base `0x2a803ce12be775802a7c6f50797e53e9c3fd4025`; base `0x42d9b390da26e817cdf27ef794677250aa4aadc0` | ✅ Audited |
| VaultRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x82c45c1b7b798aa152937107058c8098630b5a22`](./contracts/ethereum-1/0x82c45c1b7b798aa152937107058c8098630b5a22/); ethereum `0xf2865bf37c820af6fe3a1b4a0b92fa050aed4eb5` | ✅ Audited |
| VaultSafetyMode | unknown | ethereum | n/a | [`0x84b22e0f83d848ead9fc050734e946b665232c0e`](./contracts/ethereum-1/0x84b22e0f83d848ead9fc050734e946b665232c0e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (79)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveRateProvider | unknown | sonic | n/a | [`0xc23542cd402fe4f7c7539fc0929b010992fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | ⚠️ Unaudited |
| BatchRouter | adapter | optimism | n/a | [`0xad89051bed8d96f045e8912ae1672c6c0bf8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | ⚠️ Unaudited |
| BatchRouter | adapter | sonic | n/a | [`0x7761659f9e9834ad367e4d25e0306ba7a4968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | ⚠️ Unaudited |
| Beets | unknown | sonic | n/a | [`0x2d0e0814e62d80056181f5cd932274405966e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | sonic | n/a | [`0x1e5fe95fb90ac0530f581c617272cd0864626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | ⚠️ Unaudited |
| BoundedERC20WithEMA | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c`](./contracts/ethereum-1/0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c/); ethereum `0xe4c243ecc7a0fba69006855e0a02232e02efb1e4` | ⚠️ Unaudited |
| BufferRouter | adapter | sonic | n/a | [`0x532da919d3eb5606b5867a6f505969c57f3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | ⚠️ Unaudited |
| Child Liquidity Gauge | operational_periphery | base | n/a | [`0x9f7e65887413a8497b87ba2058ce6e4ef4b37013`](./contracts/base-8453/0x9f7e65887413a8497b87ba2058ce6e4ef4b37013/) | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | base | n/a | 4 deployments: optimism `0xa523f47a933d5020b23629ddf689695aa94612dc`; sonic `0xe6338d702941998102fc4d7550a36ea9e833bd7c`; base [`0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95`](./contracts/base-8453/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95/); base `0xb1a4fe1c6d25a0ddab47431a92a723dd71d9021f` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | optimism | n/a | 3 deployments: optimism [`0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/); optimism `0xc86ef81e57492be65bfca9b0ed53dcbafdbe6100`; optimism `0xea692068ccf15b9560f9a694162b3f0a0fb8a687` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | optimism | n/a | [`0xc9b36096f5201ea332db35d6d195774ea0d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | optimism | n/a | [`0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ⚠️ Unaudited |
| DistributionManager | governance | ethereum | n/a | [`0x4d9c765d7431ff354d208cf9a37e7186180e6586`](./contracts/ethereum-1/0x4d9c765d7431ff354d208cf9a37e7186180e6586/) | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | optimism | n/a | [`0xc00ff743b73346c9a4c40509e0550ffc18e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | optimism | n/a | 6 deployments: ethereum `0xfc541f8d8c5e907e236c8931f0df9f58e0c259ec`; optimism [`0x02a569eea6f85736e2d63c59e60d27d075e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/); gnosis `0x15e86be6084c6a5a8c17732d398dfbc2ec574cec`; sonic `0xc9a0e686c02affb176e06f0b344cab182250e487`; base `0xefd3af73d3359014f3b864d37ac672a6d3d7ff1a`; arbitrum `0xe548a29631f9e49830be8edc22d407b2d2915f31` | ⚠️ Unaudited |
| FoundingFrog | unknown | ethereum | n/a | [`0x4e56f19235ff2a14c76332877a35d6af5bde07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | ⚠️ Unaudited |
| FoundingMemberVault | core_logic | ethereum | n/a | [`0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53b8b175045816d447916b81ac12ba78fa2a6298`](./contracts/ethereum-1/0x53b8b175045816d447916b81ac12ba78fa2a6298/); ethereum `0xb2d2dbaac71d9c0fdf75138d4a8f5dd05a2e2916` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77f2aeb44088cdb35f6d3070dc072c56ff5e0014`](./contracts/ethereum-1/0x77f2aeb44088cdb35f6d3070dc072c56ff5e0014/); ethereum `0x8e17873fe6c257fcd4b32777658914b4b1a94ff2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sonic `0xc951409bb50088a98d6a12b403eebae3ad947f22`; sei [`0xb438ea246cefa9241305ad62e5d307d014baf7fa`](./contracts/sei-1329/0xb438ea246cefa9241305ad62e5d307d014baf7fa/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xa8d612739354a4106072a91aa4ca1458e1b5f9e9`](./contracts/ethereum-1/0xa8d612739354a4106072a91aa4ca1458e1b5f9e9/) | ⚠️ Unaudited |
| GydTokenPaused | token | ethereum | n/a | [`0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x579653927bf509b361f6e3813f5d4b95331d98c9`](./contracts/ethereum-1/0x579653927bf509b361f6e3813f5d4b95331d98c9/); ethereum `0x99fafebb9471963d7f480c1f30257439b59eb1af` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | polygon | n/a | 4 deployments: optimism `0x99364f84d1c68d87aead0ce92eb47409a0c52c58`; polygon [`0x3841ee752ae02b3e4260d064621902de1f1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/); polygon `0x3b55b649a5f2bc4ff39bbd2e345743e3a853c7a4`; polygon `0x968348c6135c25e7160ad0671c8c9ca2ed2bb982` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | polygon | n/a | [`0x5d8545a7330245150be0ce88f8afb0edc41dfc34`](./contracts/polygon-137/0x5d8545a7330245150be0ce88f8afb0edc41dfc34/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7a36527a02d96693b0af2b70421f952816a4a088`](./contracts/arbitrum-42161/0x7a36527a02d96693b0af2b70421f952816a4a088/); arbitrum `0x8342b910815b0127c98e7717d4276c1d393478b6` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x90f08b3705208e41dbeeb37a42fb628dd483adda`](./contracts/polygon-137/0x90f08b3705208e41dbeeb37a42fb628dd483adda/); polygon `0x977e8a3917dffe582afbb2ee5a6be3e9fa043079` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e`](./contracts/sonic-146/0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e/); sonic `0x0e355824f66364bb721cf1c728654f2bd10a627e` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | sei | n/a | [`0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | ⚠️ Unaudited |
| GyroECLPMath | unknown | sei | n/a | 10 deployments: optimism `0x4e56f19235ff2a14c76332877a35d6af5bde07ec`; gnosis `0x9b683ca24b0e013512e2566b68704dbe9677413c`; polygon `0x10aba87fed017734349e3ff31c01dd76bb3b5d63`; polygon `0x2ec9faa1ed444b52778b559b69e27f502564a530`; polygon `0xbe1a07f3979e15e60d739a2b153680a6df0c4350`; sonic `0xfa45ac4009f4f0391298dba18f0ebb3884947be3`; sei [`0x086602c022a4362d48dce1596cd1b7ad6fb38701`](./contracts/sei-1329/0x086602c022a4362d48dce1596cd1b7ad6fb38701/); base `0x721325c9cbb8c2636db50075eb062b445c951e5f`; arbitrum `0x41e9ac0bfed353c2de21a980da0ebb8a464d946a`; arbitrum `0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8d93b853849b9884e2bb413444ec23eb5366ee91`](./contracts/ethereum-1/0x8d93b853849b9884e2bb413444ec23eb5366ee91/); ethereum `0xfbfad5fa9e99081da6461f36f229b5cc88a64c63` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | optimism | n/a | 9 deployments: ethereum `0xa87217d855edad15d63255db176b810b0325bda2`; optimism [`0x22625eedd92c81a219a83e1dc48f88d54786b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/); optimism `0x53eff5068a1a3b39a9157da6ef5a18d555c479ef`; optimism `0xefde1c764df6522a068b38106563de166ac97f58`; polygon `0x949af2fc2a04761f2a0a921507ecee91a1f9d02f`; sonic `0xf023731dd8758d7c869af10005e6380cb57775a9`; sei `0x66d89dbe4f8c9765bd9d83abc0a3eed0c66c0c93`; base `0x5f6848976c2914403b425f18b589a65772f082e3`; arbitrum `0x721325c9cbb8c2636db50075eb062b445c951e5f` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | optimism | n/a | 2 deployments: optimism [`0x9b683ca24b0e013512e2566b68704dbe9677413c`](./contracts/optimism-10/0x9b683ca24b0e013512e2566b68704dbe9677413c/); optimism `0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | gnosis | n/a | 2 deployments: gnosis [`0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89`](./contracts/gnosis-100/0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89/); gnosis `0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | polygon | n/a | [`0x1a79a24db0f73e9087205287761fc9c5c305926b`](./contracts/polygon-137/0x1a79a24db0f73e9087205287761fc9c5c305926b/) | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x4c818c579431052e92b89434e00ae729d8addf17`](./contracts/polygon-137/0x4c818c579431052e92b89434e00ae729d8addf17/); polygon `0xd4204551bc5397455f8897745d50ac4f6bee0ef6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x4a1d66cb3f33008657d100c38e4fa158aa0defec`](./contracts/sonic-146/0x4a1d66cb3f33008657d100c38e4fa158aa0defec/); sonic `0xda598c87a27cea5a7de875d7d472e99b5794fb8b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x5364296d19d453d73f84a94e78681a430e620c5f`](./contracts/sonic-146/0x5364296d19d453d73f84a94e78681a430e620c5f/); sonic `0xe22c6ddc731a9fd55b3ed224e7b58ad669b38739` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x765505f7fef6dab854a75162801048c2ba178c6b`](./contracts/sonic-146/0x765505f7fef6dab854a75162801048c2ba178c6b/); sonic `0xf804356137a460bec75c7daf70244029629c4491` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | base | n/a | 2 deployments: base [`0x15e86be6084c6a5a8c17732d398dfbc2ec574cec`](./contracts/base-8453/0x15e86be6084c6a5a8c17732d398dfbc2ec574cec/); base `0xdca5f1f0d7994a32bc511e7dba0259946653eaf6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xdca5f1f0d7994a32bc511e7dba0259946653eaf6`](./contracts/arbitrum-42161/0xdca5f1f0d7994a32bc511e7dba0259946653eaf6/); arbitrum `0xde0e16c5e234339ac3becf8c26be91be3cb9ec2e` | ⚠️ Unaudited |
| GyroTokenPaused | token | sei | n/a | [`0x7cd75be2af9bb0279f2445f08ec7590643218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | ⚠️ Unaudited |
| L2Gyfi | unknown | sei | n/a | [`0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | sonic | n/a | 4 deployments: sonic [`0x5ae2ce196f039a968997528adcdcb0c69cd6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/); sonic `0x6dab80bca8f4a50ebb20d6246347214f39407885`; sonic `0x82adf9f82facf80fac75d4197b058a8c4252bd81`; sonic `0xefd42bd332bd8d2b68d83ab6acc833fae0f66fef` | ⚠️ Unaudited |
| LevelNftDescriptor | unknown | sonic | n/a | [`0x113cf97f53297b9a14baaba5733ee37040106d71`](./contracts/sonic-146/0x113cf97f53297b9a14baaba5733ee37040106d71/) | ⚠️ Unaudited |
| LockedVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48a64b352989feb0e98843bd0415c94fc8023d2b`](./contracts/ethereum-1/0x48a64b352989feb0e98843bd0415c94fc8023d2b/); ethereum `0xa3979e46d1791a4f947641ed0e058025534a3008` | ⚠️ Unaudited |
| LockedVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336`](./contracts/ethereum-1/0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336/); ethereum `0xdb5494f1ec62a50595c0101ab124e9c706eff57a` | ⚠️ Unaudited |
| LockedVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb6dc4f06867274539ecd06e244349f0a75410f9e`](./contracts/ethereum-1/0xb6dc4f06867274539ecd06e244349f0a75410f9e/); ethereum `0xe1c7ad5722aa5826a2dd95a9710a8fbbe644123b` | ⚠️ Unaudited |
| LockedVaultWithThreshold | unknown | ethereum | n/a | 2 deployments: ethereum [`0x695225a1e074ffbe8ffe42364e77857df9b6bc61`](./contracts/ethereum-1/0x695225a1e074ffbe8ffe42364e77857df9b6bc61/); ethereum `0xb94c4ff4d5d18fa5a33bf1445c3790326d8bc1f6` | ⚠️ Unaudited |
| MultiownerProxyAdmin | unknown | ethereum | n/a | [`0x71260fce6c16fb7b3481bafb64377c2aadc4f961`](./contracts/ethereum-1/0x71260fce6c16fb7b3481bafb64377c2aadc4f961/) | ⚠️ Unaudited |
| NftDescriptor | unknown | sonic | n/a | 2 deployments: sonic [`0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5`](./contracts/sonic-146/0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5/); sonic `0xe36d5d493c0575b3153cbe3c92fa75972a598b9c` | ⚠️ Unaudited |
| OneSidedECLPJoiner | unknown | gnosis | n/a | 3 deployments: gnosis [`0x84b22e0f83d848ead9fc050734e946b665232c0e`](./contracts/gnosis-100/0x84b22e0f83d848ead9fc050734e946b665232c0e/); base `0xe8b48dc91e494c3c018119e8f3191a806a236016`; arbitrum `0xa0a555c1c11ef36d2381768eb734fa2bddf1322b` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | n/a | 2 deployments: optimism [`0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | optimism | n/a | 3 deployments: optimism [`0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/); optimism `0x355bd33f0033066bb3de396a6d069be57353ad95`; optimism `0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | n/a | 2 deployments: optimism `0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a`; base [`0x2ff226cd12c80511a641a6101f071d853a4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | base | n/a | [`0x1b6f057520b4e826271d47b8bdab98e35af17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | optimism | n/a | 2 deployments: optimism [`0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/); optimism `0xcc267d25576b48f08a90c3605624ab62a73a7a4e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 10 deployments: gnosis `0x4e56f19235ff2a14c76332877a35d6af5bde07ec`; polygon `0x83d34ca335d197bcfe403cb38e82cbd734c4cbbe`; sonic [`0x096f0a6490aac8324cf387cc248fb2f991ef3089`](./contracts/sonic-146/0x096f0a6490aac8324cf387cc248fb2f991ef3089/); sonic `0x33c11b9ea53a8072873ab8e9678023d3f68f7a47`; sonic `0x4b13e4d3e345debdc88f27b7e629ed96c289d0f1`; sonic `0x5aa1b0a51c107a82c56645f1c28b03d2547d34de`; sonic `0x8a4fdf6e76549bd85a40c3234962088f400dc399`; sei `0x8c12a15ce60daea80fdb1b73def39e6ba048ef03`; base `0xefde1c764df6522a068b38106563de166ac97f58`; arbitrum `0x4e56f19235ff2a14c76332877a35d6af5bde07ec` | ⚠️ Unaudited |
| QueryProcessor | unknown | gnosis | n/a | 4 deployments: gnosis [`0x32acb44fc929339b9f16f0449525cc590d2a23f3`](./contracts/gnosis-100/0x32acb44fc929339b9f16f0449525cc590d2a23f3/); sonic `0xdbf96621b9e1a8e3e5c96e314c734b969f920ca9`; sei `0x5943834e22cafeab2e0c9c2d4a57fa5875cfa4c4`; base `0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1` | ⚠️ Unaudited |
| QuotientRateProvider | unknown | sonic | n/a | 2 deployments: sonic [`0x10e0b3db47dbdb9b38a4657881d3769263245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/); sonic `0x79a88bb30beebc41f2b104a86f5dc96c70c40447` | ⚠️ Unaudited |
| ReClammPoolFactory | registry | optimism | n/a | 2 deployments: optimism [`0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/); sonic `0x99c13b259138a8ad8badbbfb87a4074591310de0` | ⚠️ Unaudited |
| Reliquary | unknown | sonic | n/a | [`0x973670ce19594f857a7cd85ee834c7a74a941684`](./contracts/sonic-146/0x973670ce19594f857a7cd85ee834c7a74a941684/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | [`0x6077b9801b5627a65a5eee70697c793751d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: optimism `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b`; sonic [`0x93db4682a40721e7c698ea0a842389d10fa8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | sonic | n/a | [`0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | ⚠️ Unaudited |
| SonicStaking | unknown | sonic | n/a | 2 deployments: sonic [`0xbf46aef3c4c119495245e6b1911a4a961859038d`](./contracts/sonic-146/0xbf46aef3c4c119495245e6b1911a4a961859038d/); sonic `0xf4fa7f3308a1543e7d89950519341c7ce479400b` | ⚠️ Unaudited |
| SonicStaking | unknown | sonic | n/a | 2 deployments: sonic [`0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141`](./contracts/sonic-146/0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141/); sonic `0xe5da20f15420ad15de0fa650600afc998bbe3955` | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/); optimism `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9`; optimism `0xc4c4940dc7c57df46d3a217647db1649721cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x1780e8185199dac45284039bb3e3b64060d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/); optimism `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; sonic `0x482ee54595f79b6ba34b75754a4983134148affb`; base `0xc49ca921c4cd1117162eaeec0ee969649997950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | sonic | n/a | 2 deployments: optimism `0xf39ca6ede9bf7820a952b52f3c94af526bab9015`; sonic [`0x049919ae32e50aee5ea1a0998a841d175ec6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x3beb058de1a25dd24223fd9e1796df8589429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/); optimism `0xfd214210587fb84798cbe7f37235e12898f3128f`; sonic `0x3d9319bb29daf6081d01dc56b6203efcc90f0bad`; sonic `0x6187f6c78ca4d89490d959e9c629b93214e6776e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f4141f7ac1f85b178d63baf15832a141d3c22a6`](./contracts/ethereum-1/0x1f4141f7ac1f85b178d63baf15832a141d3c22a6/); ethereum `0x9543b9f3450c17f1e5e558cc135fd8964dbef92a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb7ae7b8e34fae3066b5adcc305e54a78e941bc50`](./contracts/ethereum-1/0xb7ae7b8e34fae3066b5adcc305e54a78e941bc50/); ethereum `0xe548a29631f9e49830be8edc22d407b2d2915f31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd`](./contracts/ethereum-1/0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd/); ethereum `0xde0e16c5e234339ac3becf8c26be91be3cb9ec2e` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | n/a | [`0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c`](./contracts/optimism-10/0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c/); base `0xd87f44df0159dc78029ab9ca7d7e57e7249f5acd` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xfc7d964f1676831d8105506b1f0c3b3e2b55c467`](./contracts/ethereum-1/0xfc7d964f1676831d8105506b1f0c3b3e2b55c467/) | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/); optimism `0x718e1176f01ddbb2409a77b2847b749c8df4457f`; optimism `0xeb2bb012869255f8c622563dc4c3afa8619fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x0f08eef2c785aa5e7539684af04755dec1347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a2974b97dc2e675f6115c845567c55f83b0`; sonic `0x4726eb55c37f0353f6d5011b5652d44a87d60fc3`; base `0x4c32a8a8fda4e24139b51b456b42290f51d6a1c4` | ⚠️ Unaudited |

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
| Proxy (impl: 0x78a3dcdda13a58c198b5aabea91f51273abd1d87) | unknown | ethereum | n/a | 2 deployments: ethereum `0x522ef53be5a1b6efe914cff30d328a8e1e8aa889`; ethereum `0x78a3dcdda13a58c198b5aabea91f51273abd1d87` | ❓ Unverified |
| Proxy (impl: 0x9b683ca24b0e013512e2566b68704dbe9677413c) | unknown | avalanche | n/a | 2 deployments: avalanche `0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6`; avalanche `0x9b683ca24b0e013512e2566b68704dbe9677413c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02a569eea6f85736e2d63c59e60d27d075e75c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0980e8997da424d2f2108212c6461c42a85c6754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ee0a55548ae92102abe195015694f0f3ea8403a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19144e641bfe62b624296a211d47798187bc09ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a7f722018a8064a6abd5b24e9bf2f9460bb6a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1add0c81f9c4eee727c3bdb5f7298177b40d8f17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x287dfaad83b39879dc44d53431879a62de637f07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c1c0edf206ad7b69a2138385d3e2df1fb253f55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2decae9c1e605f20c79b91856a3121fb2d2cb615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e77c9cf8df912007f524c300cf203d308091c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ec43d68c03b1d90d53b19c4a6f01185867ea792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x329084119d410bf0019ff7aa9d699d35c06f6fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3543890fb851c3361d3009f04b3749f8b3cb2cda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42abd55848431ab545efb34d611a95342df68e56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43455e04e9b58b4fad59260fced78f2a11660a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ae17b5e327cd659f64912333fbc5039b0441dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52beb0a083ca0fb84f6408e63c4c5a896c1993fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5879839cf7d0a314160fd7c2236e89ba9b8eb5cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5986af4b0f6f4663ddde2ff9dcb9a6d3389b3939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59c85668dfbcb97a7e082eb716eadf1f901e196d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60a6c5b447b1b9d6bc5d790e95889e0eacbc42f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x683b882ea1f63d6a9a5592ea0e5ad8b46281b8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x713b6bb440e6071c8b28f966b39f7ea3a2c5edc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7171e66863b5a1d58771379362200d92e3d2611b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a36527a02d96693b0af2b70421f952816a4a088` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e43d3825bb4c960395f829932831d6f59981c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86d794c2fa75b774c85b65778f33fdf0302fe1e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9388950ee3d7380ed9e83570df2f94ab14f3efbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b337c6dd33f99538a620f2670be76920fa45287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2f03eaf1f9da36a3e4e8e0e9dbd408bd11ac78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab42c40a560a7dca6489ed5fd0828a106b64f44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad44134d7828a1e9f6d5666d0e9fedc82f527360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdcd8bc66565cdaa6f656500e8d6773fde35d04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0753a3a53e96eb3053c3cd62a6d14d527246f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7af8ba0580019f63e8a16b82c0f71e9fb1a0fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc156f656afcc68b0fd347bf3dc4c16a6cfb0fbef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4f032c193fd6e0a222769efbfd936b53bdac7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xead80ebee8fa790ac45ced2048e598920dc911ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa0d65e2d856a615bcd3cf66153d115f444fe3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfca17af880b0f159bd68bbaf136fec81cf139d6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x155aeb135c35cb4832f0af36d251a1154dc21b9d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cab842a4472f8ba2715c90a3bc0b96ea7345cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7de29b8d7bd98fa4866fc9faf02c670ffa5a3c3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe6f65ca1214f1e6bb004e4b6f68e492bd83f09d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd8902590f55ab9aa9afa3eeeb12c4a0b9b96eb87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3246e5b1f05e3af805ebc5e3526d63944d0a90a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc2b39fd360547b29edb7c13083a4a5532800aae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9763e692d66208e195cc57baa737fc9ec72ca562` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9cde251b08caf8d2d34070244b83c0567f521867` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xadf9ed37ea8055d8437035650e4325819901e92d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb221bcb6d60712973b98eabe63eb991e302f6bb1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc07500b9fe7bea9efd5b54341d0aa3658a33d39a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xde491d90aa34bb749fa3d591ffdac52a88448bdb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfcc325c78b904b02472cffe8cc6caa32af67dba1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x60825fe010d8cd5f63dd7271cb43e2da657d07b0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6b87fa6013d4020e8bcebb8a43cf2be42fd69fb9` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7660d9d96119a63db5809dd95e6983c61a0d9e5d` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9c5a5225967865c4ad53f679c8e735ca78a97e1a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xa7a10bfea90f59317ca24d63cbbd3f9830eb0b08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1802953277fd955f9a254b80aa0582f193cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2dd70f6bd1d78083ef40f072375771f18fcabdbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcb724291fc34f9bbefa45e92159abf3f674efc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeef937f14f4b536c82a802962484a0d4183a34e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32acb44fc929339b9f16f0449525cc590d2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e9ac0bfed353c2de21a980da0ebb8a464d946a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa88bbeee5d67db0a2dbba07ce61c2ee14c789d6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefde1c764df6522a068b38106563de166ac97f58` | ❓ Unverified |

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
| sonic | [`0xc23542cd402fe4f7c7539fc0929b010992fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | AdaptiveRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xad89051bed8d96f045e8912ae1672c6c0bf8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7761659f9e9834ad367e4d25e0306ba7a4968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2d0e0814e62d80056181f5cd932274405966e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | Beets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e5fe95fb90ac0530f581c617272cd0864626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | BeetsOFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c`](./contracts/ethereum-1/0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c/) | BoundedERC20WithEMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x532da919d3eb5606b5867a6f505969c57f3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | BufferRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9f7e65887413a8497b87ba2058ce6e4ef4b37013`](./contracts/base-8453/0x9f7e65887413a8497b87ba2058ce6e4ef4b37013/) | Child Liquidity Gauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95`](./contracts/base-8453/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95/) | ChildChainGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/) | ClaimSignatureRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc9b36096f5201ea332db35d6d195774ea0d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | CompositeLiquidityRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ConstantPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d9c765d7431ff354d208cf9a37e7186180e6586`](./contracts/ethereum-1/0x4d9c765d7431ff354d208cf9a37e7186180e6586/) | DistributionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc00ff743b73346c9a4c40509e0550ffc18e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | EclpLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02a569eea6f85736e2d63c59e60d27d075e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/) | ERC4626RateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56f19235ff2a14c76332877a35d6af5bde07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | FoundingFrog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | FoundingMemberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53b8b175045816d447916b81ac12ba78fa2a6298`](./contracts/ethereum-1/0x53b8b175045816d447916b81ac12ba78fa2a6298/) | FreezableTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xb438ea246cefa9241305ad62e5d307d014baf7fa`](./contracts/sei-1329/0xb438ea246cefa9241305ad62e5d307d014baf7fa/) | FreezableTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | GydTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x579653927bf509b361f6e3813f5d4b95331d98c9`](./contracts/ethereum-1/0x579653927bf509b361f6e3813f5d4b95331d98c9/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3841ee752ae02b3e4260d064621902de1f1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5d8545a7330245150be0ce88f8afb0edc41dfc34`](./contracts/polygon-137/0x5d8545a7330245150be0ce88f8afb0edc41dfc34/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a36527a02d96693b0af2b70421f952816a4a088`](./contracts/arbitrum-42161/0x7a36527a02d96693b0af2b70421f952816a4a088/) | Gyro2CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x90f08b3705208e41dbeeb37a42fb628dd483adda`](./contracts/polygon-137/0x90f08b3705208e41dbeeb37a42fb628dd483adda/) | Gyro3CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e`](./contracts/sonic-146/0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e/) | Gyro3CLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | Gyro3CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x086602c022a4362d48dce1596cd1b7ad6fb38701`](./contracts/sei-1329/0x086602c022a4362d48dce1596cd1b7ad6fb38701/) | GyroECLPMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d93b853849b9884e2bb413444ec23eb5366ee91`](./contracts/ethereum-1/0x8d93b853849b9884e2bb413444ec23eb5366ee91/) | GyroECLPPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22625eedd92c81a219a83e1dc48f88d54786b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | GyroECLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9b683ca24b0e013512e2566b68704dbe9677413c`](./contracts/optimism-10/0x9b683ca24b0e013512e2566b68704dbe9677413c/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89`](./contracts/gnosis-100/0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a79a24db0f73e9087205287761fc9c5c305926b`](./contracts/polygon-137/0x1a79a24db0f73e9087205287761fc9c5c305926b/) | GyroECLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c818c579431052e92b89434e00ae729d8addf17`](./contracts/polygon-137/0x4c818c579431052e92b89434e00ae729d8addf17/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4a1d66cb3f33008657d100c38e4fa158aa0defec`](./contracts/sonic-146/0x4a1d66cb3f33008657d100c38e4fa158aa0defec/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5364296d19d453d73f84a94e78681a430e620c5f`](./contracts/sonic-146/0x5364296d19d453d73f84a94e78681a430e620c5f/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x765505f7fef6dab854a75162801048c2ba178c6b`](./contracts/sonic-146/0x765505f7fef6dab854a75162801048c2ba178c6b/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15e86be6084c6a5a8c17732d398dfbc2ec574cec`](./contracts/base-8453/0x15e86be6084c6a5a8c17732d398dfbc2ec574cec/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdca5f1f0d7994a32bc511e7dba0259946653eaf6`](./contracts/arbitrum-42161/0xdca5f1f0d7994a32bc511e7dba0259946653eaf6/) | GyroECLPPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7cd75be2af9bb0279f2445f08ec7590643218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | GyroTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | L2Gyfi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ae2ce196f039a968997528adcdcb0c69cd6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/) | LegendsOfMaBeets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x113cf97f53297b9a14baaba5733ee37040106d71`](./contracts/sonic-146/0x113cf97f53297b9a14baaba5733ee37040106d71/) | LevelNftDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48a64b352989feb0e98843bd0415c94fc8023d2b`](./contracts/ethereum-1/0x48a64b352989feb0e98843bd0415c94fc8023d2b/) | LockedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336`](./contracts/ethereum-1/0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336/) | LockedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6dc4f06867274539ecd06e244349f0a75410f9e`](./contracts/ethereum-1/0xb6dc4f06867274539ecd06e244349f0a75410f9e/) | LockedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x695225a1e074ffbe8ffe42364e77857df9b6bc61`](./contracts/ethereum-1/0x695225a1e074ffbe8ffe42364e77857df9b6bc61/) | LockedVaultWithThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71260fce6c16fb7b3481bafb64377c2aadc4f961`](./contracts/ethereum-1/0x71260fce6c16fb7b3481bafb64377c2aadc4f961/) | MultiownerProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5`](./contracts/sonic-146/0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5/) | NftDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x84b22e0f83d848ead9fc050734e946b665232c0e`](./contracts/gnosis-100/0x84b22e0f83d848ead9fc050734e946b665232c0e/) | OneSidedECLPJoiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/) | PoolPauseHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/) | PoolSwapFeeHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ff226cd12c80511a641a6101f071d853a4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ProtocolFeeController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b6f057520b4e826271d47b8bdab98e35af17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ProtocolFeeControllerMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/) | ProtocolFeeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x32acb44fc929339b9f16f0449525cc590d2a23f3`](./contracts/gnosis-100/0x32acb44fc929339b9f16f0449525cc590d2a23f3/) | QueryProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10e0b3db47dbdb9b38a4657881d3769263245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/) | QuotientRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/) | ReClammPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x973670ce19594f857a7cd85ee834c7a74a941684`](./contracts/sonic-146/0x973670ce19594f857a7cd85ee834c7a74a941684/) | Reliquary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6077b9801b5627a65a5eee70697c793751d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x93db4682a40721e7c698ea0a842389d10fa8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | SonicBeetsMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbf46aef3c4c119495245e6b1911a4a961859038d`](./contracts/sonic-146/0xbf46aef3c4c119495245e6b1911a4a961859038d/) | SonicStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141`](./contracts/sonic-146/0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141/) | SonicStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/) | StableLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1780e8185199dac45284039bb3e3b64060d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/) | StablePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x049919ae32e50aee5ea1a0998a841d175ec6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | StableSurgeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3beb058de1a25dd24223fd9e1796df8589429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/) | StableSurgePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | UnbalancedAddViaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c`](./contracts/optimism-10/0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c/) | VotingEscrowDelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc7d964f1676831d8105506b1f0c3b3e2b55c467`](./contracts/ethereum-1/0xfc7d964f1676831d8105506b1f0c3b3e2b55c467/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/) | WeightedLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f08eef2c785aa5e7539684af04755dec1347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/) | WeightedPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
