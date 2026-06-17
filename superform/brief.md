# Agentic Audit Brief: Superform

## Project Overview

- Project: Superform (`superform`)
- Website: [https://app.superform.xyz](https://app.superform.xyz)
- Lifecycle: active (Tier 0, 82.2% below peak)
- Generated: 2026-06-17T07:00:43.738Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, fantom, hyperliquid
- Contract surface: 136 unique implementations (195 raw deployments)
- DeFi Llama TVL: $25,916,308.63
- On-chain TVL (included contracts): $1,985,848.29
- TVL by chain: Base $1,985,775.89 | Arbitrum $72.40

## Project Description

Superform is a non-custodial onchain wealth app and yield platform that lets users save, swap, send, earn, and stake across supported chains. Its app includes Earn/SuperVault products, Swap, Market, Rewards, Activity, and $UP staking flows; SuperVaults, $UP token staking, and third-party earning opportunities should be treated as distinct product areas rather than conflated contract surfaces.

### Architecture

The Superform family provides the core vault and factory, while Hooks extend vault actions and Bridge Adapters enable cross-chain transfers. Yield Source Oracles supply pricing data to SuperVault Contracts, which aggregate yields, and the Infrastructure family manages accounts and execution across chains, with the $UP Token serving as the ecosystem's native asset.

## Contract Surface Quality

- Indexed contracts: 246; live-surface contracts included: 195 (13 live, 182 unknown).
- Excluded by liveness: 21 inactive, 30 singleton, 0 uninitialized.
- Deployment units: 0/20 live.
- Detected codebases: none
- Unverified dependencies: 4/32.

## Audit Coverage Summary

- Verified implementations audited: 23/107 (21.5%)
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 136
- Raw deployments: 195
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $72.40
- Latest audit: 2025-11 (fresh)
- Staleness: 3 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Orion Security | Tier 2 | 16 | 15.0% | 2025-08 |
| 0xMacro | Tier 2 | 7 | 6.5% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SuperVault | core_logic | base | n/a | [`0x2c71f7...94f417`](./contracts/base-8453/0x2c71f70e2ec720ae061ae7e0316fc9654d94f417/) | ✅ Audited |
| ApproveAndSwapOdosV2Hook | unknown | ethereum | n/a | [`0x067696...7d9671`](./contracts/ethereum-1/0x067696e1efbd25cafd3b55648ed253c20a7d9671/) | ✅ Audited |
| BatchTransferFromHook | periphery | ethereum | n/a | [`0x816d5d...ebb00a`](./contracts/ethereum-1/0x816d5de8835fb7a003896f486fcce46a6debb00a/) | ✅ Audited |
| CircleGatewayAddDelegateHook | unknown | ethereum | n/a | [`0xa7ae12...1fe2cc`](./contracts/ethereum-1/0xa7ae1263fd7d6017770147393ce130f16e1fe2cc/) | ✅ Audited |
| CircleGatewayMinterHook | unknown | ethereum | n/a | [`0x659b72...104824`](./contracts/ethereum-1/0x659b720a5e8e08d2c379165d17ba5f74dd104824/) | ✅ Audited |
| CircleGatewayRemoveDelegateHook | unknown | ethereum | n/a | [`0x00fbc4...a0e2cd`](./contracts/ethereum-1/0x00fbc4e3608a26e0d05905759c2a6188fda0e2cd/) | ✅ Audited |
| DebridgeAdapter | operational_periphery | ethereum | n/a | [`0x5be003...5a36d8`](./contracts/ethereum-1/0x5be003c2cd2dacd4cd23488db7e74568475a36d8/) | ✅ Audited |
| DeBridgeSendOrderAndExecuteOnDstHook | operational_periphery | ethereum | n/a | [`0x162225...8f1795`](./contracts/ethereum-1/0x162225095a384787a257bced9b8893b29c8f1795/) | ✅ Audited |
| ECDSAPPSOracle | operational_periphery | ethereum | n/a | [`0x366d88...f694f2`](./contracts/ethereum-1/0x366d88f03b8ef34eb49f32a927ff6e1609f694f2/) | ✅ Audited |
| MarkRootAsUsedHook | unknown | ethereum | n/a | [`0xe61774...71b5e2`](./contracts/ethereum-1/0xe61774aa87a05fb1b5665158f2b5e0e10c71b5e2/) | ✅ Audited |
| MerklClaimRewardHook | unknown | ethereum | n/a | [`0x6c12d4...b228df`](./contracts/ethereum-1/0x6c12d4453ed2278b37ecd169f4b8693537b228df/) | ✅ Audited |
| SuperBank | unknown | ethereum | n/a | [`0x6fcc6a...cb5d15`](./contracts/ethereum-1/0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15/) | ✅ Audited |
| SuperDestinationExecutor | unknown | ethereum | n/a | [`0x6ac58e...7817ef`](./contracts/ethereum-1/0x6ac58e854798d4aae5989b18ad5a1c0ff17817ef/) | ✅ Audited |
| SuperDestinationValidator | unknown | ethereum | n/a | [`0xadeff5...fd0098`](./contracts/ethereum-1/0xadeff5a0684392c4c273a9c638d1db8c5dfd0098/) | ✅ Audited |
| SuperExecutor | unknown | ethereum | n/a | [`0x9cc8ed...1f6281`](./contracts/ethereum-1/0x9cc8edcc41154aafc74d261ad3d87140d21f6281/) | ✅ Audited |
| SuperGovernor | governance | ethereum | n/a | [`0xb5396e...0e74d4`](./contracts/ethereum-1/0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4/) | ✅ Audited |
| SuperNativePaymaster | unknown | ethereum | n/a | [`0x2288c4...a7a532`](./contracts/ethereum-1/0x2288c49689c2cced5c5bdd74ac3b775e61a7a532/) | ✅ Audited |
| SuperOracle | operational_periphery | ethereum | n/a | [`0x894312...5aa070`](./contracts/ethereum-1/0x8943128dbab4279d561654deed2930bb975aa070/) | ✅ Audited |
| SuperValidator | unknown | ethereum | n/a | [`0xb46b47...5f9f8e`](./contracts/ethereum-1/0xb46b4773c5f53ff941533f5dfeffd0713f5f9f8e/) | ✅ Audited |
| SuperVaultAggregator | core_logic | ethereum | n/a | [`0x10ac0b...2d4698`](./contracts/ethereum-1/0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698/) | ✅ Audited |
| SuperYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x98f068...29f52d`](./contracts/ethereum-1/0x98f0682ef39de9cd6028d91090be6edae129f52d/) | ✅ Audited |
| Swap1InchHook | unknown | ethereum | n/a | [`0x1303d5...d2425c`](./contracts/ethereum-1/0x1303d5f3e3d9e4a81945cb0c2e309e1940d2425c/) | ✅ Audited |
| Up | unknown | ethereum | n/a | [`0x1d926b...80bf33`](./contracts/ethereum-1/0x1d926bbe67425c9f507b9a0e8030eedc7880bf33/) | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiStrategyVault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/); arbitrum `0xe1543d...8f20f8` | ⚠️ Unaudited |
| AcrossSendFundsAndExecuteOnDstHook | unknown | ethereum | n/a | [`0x39962b...04d16a`](./contracts/ethereum-1/0x39962be24192d0d6b6e3a19f332e3c825604d16a/) | ⚠️ Unaudited |
| AcrossV3Adapter | adapter | ethereum | n/a | [`0x4dc34c...0f0fd7`](./contracts/ethereum-1/0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7/) | ⚠️ Unaudited |
| ApproveAndAcrossSendFundsAndExecuteOnDstHook | unknown | ethereum | n/a | [`0x72422a...e0f3f2`](./contracts/ethereum-1/0x72422ab917e4a698369767f7ace667a769e0f3f2/) | ⚠️ Unaudited |
| ApproveAndDeposit4626VaultHook | core_logic | ethereum | n/a | [`0xf37535...1e6a86`](./contracts/ethereum-1/0xf37535d96712fbaef6d868e721e7b987ad1e6a86/) | ⚠️ Unaudited |
| ApproveAndDeposit5115VaultHook | core_logic | ethereum | n/a | [`0x44c7a4...593988`](./contracts/ethereum-1/0x44c7a40f05771fdaeaee61f36902d95cbf593988/) | ⚠️ Unaudited |
| ApproveAndRequestDeposit7540VaultHook | core_logic | ethereum | n/a | [`0x840b2b...73b43f`](./contracts/ethereum-1/0x840b2b0553683de46c5e6382d1a405f44773b43f/) | ⚠️ Unaudited |
| ApproveAndSwapKyberSwapHook | unknown | ethereum | n/a | [`0xdc9d10...12d37d`](./contracts/ethereum-1/0xdc9d10d9710dbf82924a3f7733293457ad12d37d/) | ⚠️ Unaudited |
| ApproveERC20Hook | token | ethereum | n/a | [`0x8b7899...f6d306`](./contracts/ethereum-1/0x8b789980dc6cc7d88e30c442d704646ff7f6d306/) | ⚠️ Unaudited |
| BatchTransferHook | periphery | ethereum | n/a | [`0x852c6e...74c93a`](./contracts/ethereum-1/0x852c6e00a7ec7590318deaad03030d4ddd74c93a/) | ⚠️ Unaudited |
| CancelDepositRequest7540Hook | unknown | ethereum | n/a | [`0x0bba42...4e921a`](./contracts/ethereum-1/0x0bba42ddaa6ef6ccd228bd6270565f87154e921a/) | ⚠️ Unaudited |
| CancelRedeemRequest7540Hook | unknown | ethereum | n/a | [`0x542601...f0c2c0`](./contracts/ethereum-1/0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0/) | ⚠️ Unaudited |
| CircleGatewayWalletHook | unknown | ethereum | n/a | [`0x6383d0...356db5`](./contracts/ethereum-1/0x6383d09cf761feaa4108b65130793c7eda356db5/) | ⚠️ Unaudited |
| ClaimCancelDepositRequest7540Hook | unknown | ethereum | n/a | [`0xdf958a...285858`](./contracts/ethereum-1/0xdf958a047d90b202a7097b5f9b67bb8cb5285858/) | ⚠️ Unaudited |
| ClaimCancelRedeemRequest7540Hook | unknown | ethereum | n/a | [`0x0668f9...99d594`](./contracts/ethereum-1/0x0668f9a638f34928f0bd91588e7b157f0699d594/) | ⚠️ Unaudited |
| DeBridgeCancelOrderHook | operational_periphery | ethereum | n/a | [`0xc5dbbb...b482c9`](./contracts/ethereum-1/0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9/) | ⚠️ Unaudited |
| Deposit4626VaultHook | core_logic | ethereum | n/a | [`0xa06703...b0698e`](./contracts/ethereum-1/0xa067037b29431c1ff23deb9b10cc8a1669b0698e/) | ⚠️ Unaudited |
| Deposit5115VaultHook | core_logic | ethereum | n/a | [`0x32209a...205851`](./contracts/ethereum-1/0x32209a2302865784bc1dc0bd3c55d0a6eb205851/) | ⚠️ Unaudited |
| Deposit7540VaultHook | core_logic | ethereum | n/a | [`0x0ab1b1...c1dc84`](./contracts/ethereum-1/0x0ab1b12e090775fa67df6e1b44dfaee676c1dc84/) | ⚠️ Unaudited |
| ERC4626YieldSourceOracle | operational_periphery | ethereum | n/a | [`0xd12a40...1d9fb8`](./contracts/ethereum-1/0xd12a40b2abd166e17f18854f57ccd202091d9fb8/) | ⚠️ Unaudited |
| ERC5115YieldSourceOracle | operational_periphery | ethereum | n/a | [`0xec64fe...c6dd5c`](./contracts/ethereum-1/0xec64fe4256e9e2b935f9acb13cf0b1ce06c6dd5c/) | ⚠️ Unaudited |
| ERC7540YieldSourceOracle | operational_periphery | ethereum | n/a | [`0x8963d6...612005`](./contracts/ethereum-1/0x8963d668adce629996ca0247885771b490612005/) | ⚠️ Unaudited |
| esVKAToken | token | arbitrum | n/a | [`0x6cb30b...03b3f8`](./contracts/arbitrum-42161/0x6cb30b737ba441d7b5cf449d122223c55c03b3f8/) | ⚠️ Unaudited |
| EthenaCooldownSharesHook | unknown | ethereum | n/a | [`0x1bd769...b18aef`](./contracts/ethereum-1/0x1bd7698cc3e3f4ccf5d6cbc74a611bddeab18aef/) | ⚠️ Unaudited |
| EthenaUnstakeHook | unknown | ethereum | n/a | [`0xaebeec...7e7796`](./contracts/ethereum-1/0xaebeec6548b727fd4f3464b19d99f4676d7e7796/) | ⚠️ Unaudited |
| FlatFeeLedger | unknown | ethereum | n/a | [`0xab56d0...ad683e`](./contracts/ethereum-1/0xab56d09ad9975116fceb14970f2ffb3bb0ad683e/) | ⚠️ Unaudited |
| GenericVaultAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x5769f1...b45ffd`](./contracts/arbitrum-42161/0x5769f1c62fa2aa6087df3dd1fa6a7ae89bb45ffd/); arbitrum `0xd6dfe8...8cd828` | ⚠️ Unaudited |
| GlmManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x3e2d82...a59df9`](./contracts/arbitrum-42161/0x3e2d8202d1ed655f9e5fb969204201fc87a59df9/); arbitrum `0xdfe351...4b8db2` | ⚠️ Unaudited |
| GlmManagerCallback | governance | arbitrum | n/a | 7 deployments: arbitrum [`0x55b40e...2a1e33`](./contracts/arbitrum-42161/0x55b40e454853c593e8cddb28b2d0a87ff02a1e33/); arbitrum `0x56d88e...182f76`; arbitrum `0x602b1b...baf829`; arbitrum `0x6eb066...8e0796`; arbitrum `0x8e0219...954d85`; arbitrum `0xb78fea...d09fd4`; arbitrum `0xddde50...bbcd95` | ⚠️ Unaudited |
| GlmRebalance | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1b634f...9a8bab`](./contracts/arbitrum-42161/0x1b634f37794a8e34af81db6163788de9ea9a8bab/); arbitrum `0x204c00...3e62c1`; arbitrum `0x479a46...3a2149` | ⚠️ Unaudited |
| GlmRebalanceCallback | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x246409...4dbf14`](./contracts/arbitrum-42161/0x246409c1d5c90384b9740bf03d61b1d8d14dbf14/); arbitrum `0x6529a5...e434f3`; arbitrum `0x7033be...63fd1e`; arbitrum `0x8d80f0...87732e`; arbitrum `0xa87568...f299f9` | ⚠️ Unaudited |
| GlmRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x8d64c3...cef49b`](./contracts/arbitrum-42161/0x8d64c3098ee103e364766e6cacf37fd442cef49b/); arbitrum `0x942d34...090305` | ⚠️ Unaudited |
| GlmVault | core_logic | arbitrum | n/a | 4 deployments: arbitrum [`0x0308cb...6eada2`](./contracts/arbitrum-42161/0x0308cb92edc5a2fa9eb64b2f50a32185986eada2/); arbitrum `0xadbf04...7fe2fb`; arbitrum `0xc319c8...f0581b`; arbitrum `0xe561e7...99d4be` | ⚠️ Unaudited |
| NexusAccountFactory | registry | ethereum | n/a | [`0x4153db...20c050`](./contracts/ethereum-1/0x4153db38136e74a88a77b51a955a88823820c050/) | ⚠️ Unaudited |
| NexusBootstrap | unknown | ethereum | n/a | [`0x5ebeb4...4bc9be`](./contracts/ethereum-1/0x5ebeb4d51723ba345080d81bbf178d93e84bc9be/) | ⚠️ Unaudited |
| OfframpTokensHook | token | ethereum | n/a | [`0xfbbd9a...0bea73`](./contracts/ethereum-1/0xfbbd9a7026e29e889d28882606660fc5be0bea73/) | ⚠️ Unaudited |
| PendlePTAmortizedOracle | operational_periphery | ethereum | n/a | [`0xd64089...47eb62`](./contracts/ethereum-1/0xd64089698f82cbcd91ba5e0422adfa81d247eb62/) | ⚠️ Unaudited |
| PendlePTAmortizedOracleV2 | operational_periphery | ethereum | n/a | [`0x2185b4...282a04`](./contracts/ethereum-1/0x2185b40476510ad27d17af90889ce91be9282a04/) | ⚠️ Unaudited |
| PendlePTYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x98d40e...4799a6`](./contracts/ethereum-1/0x98d40e5b9d0911f15278223d58fddcb5cb4799a6/) | ⚠️ Unaudited |
| PendleRouterRedeemHook | adapter | ethereum | n/a | [`0xaae2db...daff2f`](./contracts/ethereum-1/0xaae2db58e2f426b910f518ccbb627545aedaff2f/) | ⚠️ Unaudited |
| PendleRouterSwapHook | adapter | ethereum | n/a | [`0x02a0a9...d305cd`](./contracts/ethereum-1/0x02a0a95c379220e9759960a8ee923cbbc2d305cd/) | ⚠️ Unaudited |
| PrimeCashProxy | unknown | ethereum | unit-27078 (9 proxies) | 9 deployments: ethereum [`0x265329...57948f`](./contracts/ethereum-1/0x265329c8f15671d7ca501710e3bd0e6cb257948f/); ethereum `0x39a1f8...f5cc95`; ethereum `0x4a9e28...dee9b8`; ethereum `0x4ebfc1...d305a6`; ethereum `0x54fa13...959974`; ethereum `0x7ef4d0...bf3dec`; ethereum `0x83706a...25d29d`; ethereum `0xaeeafb...2de762`; ethereum `0xfbadc4...6788d1` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | arbitrum | unit-27081 (9 proxies) | 9 deployments: arbitrum [`0x0ace2d...93b886`](./contracts/arbitrum-42161/0x0ace2dc3995acd739ae5e0599e71a5524b93b886/); arbitrum `0x1fd865...85d3aa`; arbitrum `0x6f28ca...e0f53d`; arbitrum `0x866eb0...840385`; arbitrum `0xa135d7...cf56bf`; arbitrum `0xabc07b...1b90d6`; arbitrum `0xb9bfbb...463192`; arbitrum `0xbc323e...402d6b`; arbitrum `0xd63ace...8081ac` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 4 deployments: arbitrum [`0x053abe...9da624`](./contracts/arbitrum-42161/0x053abef168984912e1500cea50889e382a9da624/); arbitrum `0x906f16...9c9f43`; arbitrum `0xcddb0a...e787a9`; arbitrum `0xeec16e...518e34` | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | ethereum | n/a | [`0x771d4f...a03fa3`](./contracts/ethereum-1/0x771d4ff615f87ea00488a2dbcb70df98bda03fa3/) | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | ethereum | n/a | [`0xa0e61e...784431`](./contracts/ethereum-1/0xa0e61eb90817e28abbb5a40045921b69bb784431/) | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | ethereum | n/a | [`0xb68a34...e326fc`](./contracts/ethereum-1/0xb68a34af34e64a8b3bb72983088aceb2fae326fc/) | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | ethereum | n/a | [`0x2a4f70...c89634`](./contracts/ethereum-1/0x2a4f700923324b14bd546630fe87b1ee08c89634/) | ⚠️ Unaudited |
| Redeem4626VaultHook | core_logic | ethereum | n/a | [`0x5c3edf...af5a69`](./contracts/ethereum-1/0x5c3edf3f7c43828bb72a668e2b29f9e2d9af5a69/) | ⚠️ Unaudited |
| Redeem5115VaultHook | core_logic | ethereum | n/a | [`0x6ab1fd...44e6f5`](./contracts/ethereum-1/0x6ab1fd107825f9bb3e079d23508a07486b44e6f5/) | ⚠️ Unaudited |
| Redeem7540VaultHook | core_logic | ethereum | n/a | [`0xe165fb...bba79d`](./contracts/ethereum-1/0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d/) | ⚠️ Unaudited |
| RequestDeposit7540VaultHook | core_logic | ethereum | n/a | [`0xbe7738...b60097`](./contracts/ethereum-1/0xbe7738b26992a322d53edeb9a39331bf11b60097/) | ⚠️ Unaudited |
| RequestRedeem7540VaultHook | core_logic | ethereum | n/a | [`0x9c21c1...216797`](./contracts/ethereum-1/0x9c21c130acf3eadd781ae79d75ff5fc4bd216797/) | ⚠️ Unaudited |
| RumVault | core_logic | arbitrum | n/a | [`0x8b4f9b...6ae8bb`](./contracts/arbitrum-42161/0x8b4f9b565d56dfc581130acd82055c48556ae8bb/) | ⚠️ Unaudited |
| SakeVaultV2 | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0xaf9217...4e5e35`](./contracts/arbitrum-42161/0xaf92175d43472124990d965d6e6858effd4e5e35/); arbitrum `0xbe052e...874020`; arbitrum `0xead021...9570ec` | ⚠️ Unaudited |
| SetOperator7540Hook | unknown | ethereum | n/a | [`0x86f9dc...8636a8`](./contracts/ethereum-1/0x86f9dce0a1a83c501ba95a1ab1088d67978636a8/) | ⚠️ Unaudited |
| SetSlippageHook | unknown | ethereum | n/a | [`0x6551d0...e4364e`](./contracts/ethereum-1/0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e/) | ⚠️ Unaudited |
| SpectraPTYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x30ecd1...1e3260`](./contracts/ethereum-1/0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260/) | ⚠️ Unaudited |
| StakingVaultFactory | registry | arbitrum | n/a | 6 deployments: arbitrum [`0x25172c...dc2219`](./contracts/arbitrum-42161/0x25172c73958064f9abc757ffc63eb859d7dc2219/); arbitrum `0x504f82...3cb109`; arbitrum `0x58a270...670f6a`; arbitrum `0x62ac43...0a9cb4`; arbitrum `0x823033...eae7a8`; arbitrum `0xdd0d13...a6d23a` | ⚠️ Unaudited |
| StakingYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x6a685c...57394c`](./contracts/ethereum-1/0x6a685cad15b7bb46094497243dcf94ad6557394c/) | ⚠️ Unaudited |
| StringPoRAddressList | unknown | arbitrum | n/a | [`0x6b2091...5a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | ⚠️ Unaudited |
| SuperLedger | unknown | ethereum | n/a | [`0x04916b...cb1be6`](./contracts/ethereum-1/0x04916bb42564cded96e10f55c059d65e4fcb1be6/) | ⚠️ Unaudited |
| SuperLedgerConfiguration | governance | ethereum | n/a | [`0x2e2d71...165e69`](./contracts/ethereum-1/0x2e2d71289cba19f831856f85dec7f194b0165e69/) | ⚠️ Unaudited |
| SuperSenderCreator | unknown | ethereum | n/a | [`0xbc6fb9...7c1799`](./contracts/ethereum-1/0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799/) | ⚠️ Unaudited |
| SuperSponsorshipPaymaster | unknown | ethereum | n/a | [`0x8c71eb...1366aa`](./contracts/ethereum-1/0x8c71eb1817a2707e8e40ac978b1993b98f1366aa/) | ⚠️ Unaudited |
| SuperVaultYieldSourceOracle | operational_periphery | ethereum | n/a | [`0xeebb42...df149a`](./contracts/ethereum-1/0xeebb42210d8a8b165dcf154b325c588ee8df149a/) | ⚠️ Unaudited |
| SwapKyberSwapHook | unknown | ethereum | n/a | [`0x828d8a...204df9`](./contracts/ethereum-1/0x828d8a9c015cef90b373a071500ae463ed204df9/) | ⚠️ Unaudited |
| TransferERC20Hook | token | ethereum | n/a | [`0x6031c3...a67ca4`](./contracts/ethereum-1/0x6031c3953bc12d9af4651b7ed517190a31a67ca4/) | ⚠️ Unaudited |
| TransferHook | unknown | ethereum | n/a | [`0x0d54e1...9164e9`](./contracts/ethereum-1/0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-27084 | [`0x421c25...f76a1d`](./contracts/arbitrum-42161/0x421c25a322c7683af7c0076664f8ab36a2f76a1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-27087 | [`0x806e85...492475`](./contracts/arbitrum-42161/0x806e8538fc05774ea83d9428f778e423f6492475/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-27091 | [`0x919898...c9cf27`](./contracts/arbitrum-42161/0x9198989a85e35adec46309e06684dca444c9cf27/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-27094 | [`0xc53a53...7e5b6f`](./contracts/arbitrum-42161/0xc53a53552191bee184557a15f114a87a757e5b6f/) | ⚠️ Unaudited |
| UpOFT | unknown | base | n/a | 2 deployments: hyperliquid `0x642ffc...9654fe`; base [`0x5b2193...f8c86b`](./contracts/base-8453/0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b/) | ⚠️ Unaudited |
| VaultRouter | adapter | arbitrum | n/a | [`0x48943f...1f777b`](./contracts/arbitrum-42161/0x48943f145686bf5c4580d545cda405844d1f777b/) | ⚠️ Unaudited |
| VKAVesting | operational_periphery | arbitrum | n/a | 6 deployments: arbitrum [`0x28a9af...00fa35`](./contracts/arbitrum-42161/0x28a9affc94f0264078d248a301b36af15500fa35/); arbitrum `0x5cd984...68d037`; arbitrum `0x74dfbc...6d8a24`; arbitrum `0x9a7300...ae976f`; arbitrum `0xcc3b78...e54cde`; arbitrum `0xd11ea6...59d1c4` | ⚠️ Unaudited |
| VodkaV2GMXHandler | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x5c6a40...100ea1`](./contracts/arbitrum-42161/0x5c6a40b51e62f47eae748470cd776d6c3f100ea1/); arbitrum `0x6ff982...4a78ce`; arbitrum `0xa52a42...a6ba1f`; arbitrum `0xdd4a1a...cd84aa` | ⚠️ Unaudited |
| VodkaVaultV2 | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x317532...d32260`](./contracts/arbitrum-42161/0x31753244102660fb2b87978c02bce42cc3d32260/); arbitrum `0x7f15d2...e2e475`; arbitrum `0xa8fcd3...14ac23`; arbitrum `0xb3d9da...3de99e`; arbitrum `0xc72cd5...614c75` | ⚠️ Unaudited |
| Water | unknown | arbitrum | unit-27088 | [`0x9045ae...13b48c`](./contracts/arbitrum-42161/0x9045ae36f963b7184861bdce205ea8b08913b48c/) | ⚠️ Unaudited |
| Water | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xdb197b...c50b87`](./contracts/arbitrum-42161/0xdb197b57be684148c905a433252dc87d0dc50b87/); arbitrum `0xe136dc...1651af` | ⚠️ Unaudited |
| WaterV2 | unknown | arbitrum | n/a | [`0x44afbd...87909b`](./contracts/arbitrum-42161/0x44afbde22fe0ae82c8980052d4b70e8dd087909b/) | ⚠️ Unaudited |
| WaterV3 | unknown | arbitrum | n/a | [`0x499637...3727eb`](./contracts/arbitrum-42161/0x4996372aeedd7ef2e42a7170ce7e1603783727eb/) | ⚠️ Unaudited |
| WaterV4 | unknown | arbitrum | n/a | [`0x5ea253...959385`](./contracts/arbitrum-42161/0x5ea253d8a948d455524354fb3b3c3bf0f8959385/) | ⚠️ Unaudited |
| YoYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x125d43...d626d4`](./contracts/ethereum-1/0x125d43f5f35c032a45aad41ebe344d5c65d626d4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x211e04...39dfe7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x433f9a...eba9ad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbc8504...bbb62a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fcfe2...851f89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd690...7e472a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x240224...24afe5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f87db...1e5c4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3988e5...86040c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x448906...df6b4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x468020...996844` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4870f4...4245aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4aef25...4fb96d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b2c17...d18c18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f6603...ac04d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x712ccb...456e91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78e359...499099` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e0bd7...072412` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7eb6bb...df5508` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87719a...96f08f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x953a11...c3c1f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cdc06...76e258` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac588f...8e3ea2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd252b...e43a85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbc9c2...6ca03e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1bfbd...93be55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4364d...bb1783` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef771d...e1f82f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf27745...34a2ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd44f3...020696` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Report](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.08.22-orion.pdf) | Orion Security | Audit | 2025-08 | fresh | Direct | contract_name | 16 | high |
| [Report](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.30-octane-security.pdf) | Octane Security | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Report](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.27-0xMacro.pdf) | 0xMacro | Audit | 2025-11 | fresh | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | MultiStrategyVault | core_logic | $72.40 | Verified native implementation with $72.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37535...1e6a86`](./contracts/ethereum-1/0xf37535d96712fbaef6d868e721e7b987ad1e6a86/) | ApproveAndDeposit4626VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c7a4...593988`](./contracts/ethereum-1/0x44c7a40f05771fdaeaee61f36902d95cbf593988/) | ApproveAndDeposit5115VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x840b2b...73b43f`](./contracts/ethereum-1/0x840b2b0553683de46c5e6382d1a405f44773b43f/) | ApproveAndRequestDeposit7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7899...f6d306`](./contracts/ethereum-1/0x8b789980dc6cc7d88e30c442d704646ff7f6d306/) | ApproveERC20Hook | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x852c6e...74c93a`](./contracts/ethereum-1/0x852c6e00a7ec7590318deaad03030d4ddd74c93a/) | BatchTransferHook | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bba42...4e921a`](./contracts/ethereum-1/0x0bba42ddaa6ef6ccd228bd6270565f87154e921a/) | CancelDepositRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542601...f0c2c0`](./contracts/ethereum-1/0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0/) | CancelRedeemRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf958a...285858`](./contracts/ethereum-1/0xdf958a047d90b202a7097b5f9b67bb8cb5285858/) | ClaimCancelDepositRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0668f9...99d594`](./contracts/ethereum-1/0x0668f9a638f34928f0bd91588e7b157f0699d594/) | ClaimCancelRedeemRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa06703...b0698e`](./contracts/ethereum-1/0xa067037b29431c1ff23deb9b10cc8a1669b0698e/) | Deposit4626VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32209a...205851`](./contracts/ethereum-1/0x32209a2302865784bc1dc0bd3c55d0a6eb205851/) | Deposit5115VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab1b1...c1dc84`](./contracts/ethereum-1/0x0ab1b12e090775fa67df6e1b44dfaee676c1dc84/) | Deposit7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd12a40...1d9fb8`](./contracts/ethereum-1/0xd12a40b2abd166e17f18854f57ccd202091d9fb8/) | ERC4626YieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec64fe...c6dd5c`](./contracts/ethereum-1/0xec64fe4256e9e2b935f9acb13cf0b1ce06c6dd5c/) | ERC5115YieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8963d6...612005`](./contracts/ethereum-1/0x8963d668adce629996ca0247885771b490612005/) | ERC7540YieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6cb30b...03b3f8`](./contracts/arbitrum-42161/0x6cb30b737ba441d7b5cf449d122223c55c03b3f8/) | esVKAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab56d0...ad683e`](./contracts/ethereum-1/0xab56d09ad9975116fceb14970f2ffb3bb0ad683e/) | FlatFeeLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5769f1...b45ffd`](./contracts/arbitrum-42161/0x5769f1c62fa2aa6087df3dd1fa6a7ae89bb45ffd/) | GenericVaultAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e2d82...a59df9`](./contracts/arbitrum-42161/0x3e2d8202d1ed655f9e5fb969204201fc87a59df9/) | GlmManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55b40e...2a1e33`](./contracts/arbitrum-42161/0x55b40e454853c593e8cddb28b2d0a87ff02a1e33/) | GlmManagerCallback | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b634f...9a8bab`](./contracts/arbitrum-42161/0x1b634f37794a8e34af81db6163788de9ea9a8bab/) | GlmRebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x246409...4dbf14`](./contracts/arbitrum-42161/0x246409c1d5c90384b9740bf03d61b1d8d14dbf14/) | GlmRebalanceCallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d64c3...cef49b`](./contracts/arbitrum-42161/0x8d64c3098ee103e364766e6cacf37fd442cef49b/) | GlmRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0308cb...6eada2`](./contracts/arbitrum-42161/0x0308cb92edc5a2fa9eb64b2f50a32185986eada2/) | GlmVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4153db...20c050`](./contracts/ethereum-1/0x4153db38136e74a88a77b51a955a88823820c050/) | NexusAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ebeb4...4bc9be`](./contracts/ethereum-1/0x5ebeb4d51723ba345080d81bbf178d93e84bc9be/) | NexusBootstrap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbbd9a...0bea73`](./contracts/ethereum-1/0xfbbd9a7026e29e889d28882606660fc5be0bea73/) | OfframpTokensHook | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771d4f...a03fa3`](./contracts/ethereum-1/0x771d4ff615f87ea00488a2dbcb70df98bda03fa3/) | RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e61e...784431`](./contracts/ethereum-1/0xa0e61eb90817e28abbb5a40045921b69bb784431/) | RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68a34...e326fc`](./contracts/ethereum-1/0xb68a34af34e64a8b3bb72983088aceb2fae326fc/) | RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a4f70...c89634`](./contracts/ethereum-1/0x2a4f700923324b14bd546630fe87b1ee08c89634/) | RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c3edf...af5a69`](./contracts/ethereum-1/0x5c3edf3f7c43828bb72a668e2b29f9e2d9af5a69/) | Redeem4626VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ab1fd...44e6f5`](./contracts/ethereum-1/0x6ab1fd107825f9bb3e079d23508a07486b44e6f5/) | Redeem5115VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe165fb...bba79d`](./contracts/ethereum-1/0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d/) | Redeem7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe7738...b60097`](./contracts/ethereum-1/0xbe7738b26992a322d53edeb9a39331bf11b60097/) | RequestDeposit7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c21c1...216797`](./contracts/ethereum-1/0x9c21c130acf3eadd781ae79d75ff5fc4bd216797/) | RequestRedeem7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b4f9b...6ae8bb`](./contracts/arbitrum-42161/0x8b4f9b565d56dfc581130acd82055c48556ae8bb/) | RumVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf9217...4e5e35`](./contracts/arbitrum-42161/0xaf92175d43472124990d965d6e6858effd4e5e35/) | SakeVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86f9dc...8636a8`](./contracts/ethereum-1/0x86f9dce0a1a83c501ba95a1ab1088d67978636a8/) | SetOperator7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6551d0...e4364e`](./contracts/ethereum-1/0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e/) | SetSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ecd1...1e3260`](./contracts/ethereum-1/0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260/) | SpectraPTYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25172c...dc2219`](./contracts/arbitrum-42161/0x25172c73958064f9abc757ffc63eb859d7dc2219/) | StakingVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a685c...57394c`](./contracts/ethereum-1/0x6a685cad15b7bb46094497243dcf94ad6557394c/) | StakingYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04916b...cb1be6`](./contracts/ethereum-1/0x04916bb42564cded96e10f55c059d65e4fcb1be6/) | SuperLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e2d71...165e69`](./contracts/ethereum-1/0x2e2d71289cba19f831856f85dec7f194b0165e69/) | SuperLedgerConfiguration | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6fb9...7c1799`](./contracts/ethereum-1/0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799/) | SuperSenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c71eb...1366aa`](./contracts/ethereum-1/0x8c71eb1817a2707e8e40ac978b1993b98f1366aa/) | SuperSponsorshipPaymaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeebb42...df149a`](./contracts/ethereum-1/0xeebb42210d8a8b165dcf154b325c588ee8df149a/) | SuperVaultYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6031c3...a67ca4`](./contracts/ethereum-1/0x6031c3953bc12d9af4651b7ed517190a31a67ca4/) | TransferERC20Hook | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d54e1...9164e9`](./contracts/ethereum-1/0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9/) | TransferHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48943f...1f777b`](./contracts/arbitrum-42161/0x48943f145686bf5c4580d545cda405844d1f777b/) | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28a9af...00fa35`](./contracts/arbitrum-42161/0x28a9affc94f0264078d248a301b36af15500fa35/) | VKAVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c6a40...100ea1`](./contracts/arbitrum-42161/0x5c6a40b51e62f47eae748470cd776d6c3f100ea1/) | VodkaV2GMXHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x317532...d32260`](./contracts/arbitrum-42161/0x31753244102660fb2b87978c02bce42cc3d32260/) | VodkaVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdb197b...c50b87`](./contracts/arbitrum-42161/0xdb197b57be684148c905a433252dc87d0dc50b87/) | Water | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x44afbd...87909b`](./contracts/arbitrum-42161/0x44afbde22fe0ae82c8980052d4b70e8dd087909b/) | WaterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x499637...3727eb`](./contracts/arbitrum-42161/0x4996372aeedd7ef2e42a7170ce7e1603783727eb/) | WaterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ea253...959385`](./contracts/arbitrum-42161/0x5ea253d8a948d455524354fb3b3c3bf0f8959385/) | WaterV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x125d43...d626d4`](./contracts/ethereum-1/0x125d43f5f35c032a45aad41ebe344d5c65d626d4/) | YoYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 91 |
| upstream | 13 |
| standard_library | 8 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=23

Zero-match audit list:

- [3986] Report

Fork inheritance lineage and inherited audits are included when available.
