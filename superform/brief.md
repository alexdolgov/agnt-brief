# Agentic Audit Brief: Superform

## Project Overview

- Project: Superform (`superform`)
- Website: [https://app.superform.xyz](https://app.superform.xyz)
- Lifecycle: active (Tier 0, 82.2% below peak)
- Generated: 2026-06-18T03:39:07.469Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, base, ethereum, fantom, hyperliquid
- Contract surface: 93 unique implementations (103 raw deployments)
- DeFi Llama TVL: $25,916,308.63
- On-chain TVL (included contracts): $2,983,449.44
- TVL by chain: Base $2,251,682.82 | Ethereum $731,694.22 | Arbitrum $72.40

## Project Description

Superform is a non-custodial onchain wealth app and yield platform that lets users save, swap, send, earn, and stake across supported chains. Its app includes Earn/SuperVault products, Swap, Market, Rewards, Activity, and $UP staking flows; SuperVaults, $UP token staking, and third-party earning opportunities should be treated as distinct product areas rather than conflated contract surfaces.

### Architecture

The Superform family provides the core vault and factory, while Hooks extend vault actions and Bridge Adapters enable cross-chain transfers. Yield Source Oracles supply pricing data to SuperVault Contracts, which aggregate yields, and the Infrastructure family manages accounts and execution across chains, with the $UP Token serving as the ecosystem's native asset.

## Contract Surface Quality

- Indexed contracts: 249; live-surface contracts included: 103 (25 live, 78 unknown).
- Excluded by liveness: 116 inactive, 30 singleton, 0 uninitialized.
- Deployment units: 7/22 live.
- Detected codebases: none
- Unverified dependencies: 4/34.

## Audit Coverage Summary

- Verified implementations audited: 49/90 (54.4%)
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 93
- Raw deployments: 103
- Audits discovered: 14
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $72.40
- Latest audit: 2025-11 (fresh)
- Staleness: 6 fresh, 3 aging, 5 stale, 0 unknown
- Tier 1 coverage: 40.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 36 | 40.0% | 2025-08 |
| Orion Security | Tier 2 | 16 | 17.8% | 2025-08 |
| GetRecon | Tier 2 | 9 | 10.0% | 2025-11 |
| sujithsomraaj | Tier 2 | 9 | 10.0% | 2025-03 |
| 0xMacro | Tier 2 | 7 | 7.8% | 2025-11 |
| nodesecurity | Tier 2 | 3 | 3.3% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SuperVault | core_logic | base | n/a | [`0x2c71f7...94f417`](./contracts/base-8453/0x2c71f70e2ec720ae061ae7e0316fc9654d94f417/) | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | unit-34395 (2 proxies) | 2 deployments: ethereum [`0xef1015...4e4389`](./contracts/ethereum-1/0xef101508bf4dc6cf0f0a0c135f39a41fab4e4389/); ethereum `0xf7de3c...17822a` | ✅ Audited |
| TokenizedStrategy | core_logic | base | unit-34396 | [`0xe9f2a5...b2d65b`](./contracts/base-8453/0xe9f2a5f9f3c846f29066d7fb3564f8e6b6b2d65b/) | ✅ Audited |
| AcrossSendFundsAndExecuteOnDstHook | unknown | ethereum | n/a | [`0x39962b...04d16a`](./contracts/ethereum-1/0x39962be24192d0d6b6e3a19f332e3c825604d16a/) | ✅ Audited |
| ApproveAndDeposit4626VaultHook | core_logic | ethereum | n/a | [`0xf37535...1e6a86`](./contracts/ethereum-1/0xf37535d96712fbaef6d868e721e7b987ad1e6a86/) | ✅ Audited |
| ApproveAndRequestDeposit7540VaultHook | core_logic | ethereum | n/a | [`0x840b2b...73b43f`](./contracts/ethereum-1/0x840b2b0553683de46c5e6382d1a405f44773b43f/) | ✅ Audited |
| ApproveAndSwapOdosV2Hook | unknown | ethereum | n/a | [`0x067696...7d9671`](./contracts/ethereum-1/0x067696e1efbd25cafd3b55648ed253c20a7d9671/) | ✅ Audited |
| ApproveERC20Hook | token | ethereum | n/a | [`0x8b7899...f6d306`](./contracts/ethereum-1/0x8b789980dc6cc7d88e30c442d704646ff7f6d306/) | ✅ Audited |
| BatchTransferFromHook | periphery | ethereum | n/a | [`0x816d5d...ebb00a`](./contracts/ethereum-1/0x816d5de8835fb7a003896f486fcce46a6debb00a/) | ✅ Audited |
| CircleGatewayAddDelegateHook | unknown | ethereum | n/a | [`0xa7ae12...1fe2cc`](./contracts/ethereum-1/0xa7ae1263fd7d6017770147393ce130f16e1fe2cc/) | ✅ Audited |
| CircleGatewayMinterHook | unknown | ethereum | n/a | [`0x659b72...104824`](./contracts/ethereum-1/0x659b720a5e8e08d2c379165d17ba5f74dd104824/) | ✅ Audited |
| CircleGatewayRemoveDelegateHook | unknown | ethereum | n/a | [`0x00fbc4...a0e2cd`](./contracts/ethereum-1/0x00fbc4e3608a26e0d05905759c2a6188fda0e2cd/) | ✅ Audited |
| ClaimCancelRedeemRequest7540Hook | unknown | ethereum | n/a | [`0x0668f9...99d594`](./contracts/ethereum-1/0x0668f9a638f34928f0bd91588e7b157f0699d594/) | ✅ Audited |
| DebridgeAdapter | operational_periphery | ethereum | n/a | [`0x5be003...5a36d8`](./contracts/ethereum-1/0x5be003c2cd2dacd4cd23488db7e74568475a36d8/) | ✅ Audited |
| DeBridgeSendOrderAndExecuteOnDstHook | operational_periphery | ethereum | n/a | [`0x162225...8f1795`](./contracts/ethereum-1/0x162225095a384787a257bced9b8893b29c8f1795/) | ✅ Audited |
| Deposit4626VaultHook | core_logic | ethereum | n/a | [`0xa06703...b0698e`](./contracts/ethereum-1/0xa067037b29431c1ff23deb9b10cc8a1669b0698e/) | ✅ Audited |
| Deposit5115VaultHook | core_logic | ethereum | n/a | [`0x32209a...205851`](./contracts/ethereum-1/0x32209a2302865784bc1dc0bd3c55d0a6eb205851/) | ✅ Audited |
| Deposit7540VaultHook | core_logic | ethereum | n/a | [`0x0ab1b1...c1dc84`](./contracts/ethereum-1/0x0ab1b12e090775fa67df6e1b44dfaee676c1dc84/) | ✅ Audited |
| ECDSAPPSOracle | operational_periphery | ethereum | n/a | [`0x366d88...f694f2`](./contracts/ethereum-1/0x366d88f03b8ef34eb49f32a927ff6e1609f694f2/) | ✅ Audited |
| ERC4626YieldSourceOracle | operational_periphery | ethereum | n/a | [`0xd12a40...1d9fb8`](./contracts/ethereum-1/0xd12a40b2abd166e17f18854f57ccd202091d9fb8/) | ✅ Audited |
| ERC5115YieldSourceOracle | operational_periphery | ethereum | n/a | [`0xec64fe...c6dd5c`](./contracts/ethereum-1/0xec64fe4256e9e2b935f9acb13cf0b1ce06c6dd5c/) | ✅ Audited |
| ERC7540YieldSourceOracle | operational_periphery | ethereum | n/a | [`0x8963d6...612005`](./contracts/ethereum-1/0x8963d668adce629996ca0247885771b490612005/) | ✅ Audited |
| EthenaCooldownSharesHook | unknown | ethereum | n/a | [`0x1bd769...b18aef`](./contracts/ethereum-1/0x1bd7698cc3e3f4ccf5d6cbc74a611bddeab18aef/) | ✅ Audited |
| EthenaUnstakeHook | unknown | ethereum | n/a | [`0xaebeec...7e7796`](./contracts/ethereum-1/0xaebeec6548b727fd4f3464b19d99f4676d7e7796/) | ✅ Audited |
| FlatFeeLedger | unknown | ethereum | n/a | [`0xab56d0...ad683e`](./contracts/ethereum-1/0xab56d09ad9975116fceb14970f2ffb3bb0ad683e/) | ✅ Audited |
| MarkRootAsUsedHook | unknown | ethereum | n/a | [`0xe61774...71b5e2`](./contracts/ethereum-1/0xe61774aa87a05fb1b5665158f2b5e0e10c71b5e2/) | ✅ Audited |
| MerklClaimRewardHook | unknown | ethereum | n/a | [`0x6c12d4...b228df`](./contracts/ethereum-1/0x6c12d4453ed2278b37ecd169f4b8693537b228df/) | ✅ Audited |
| PendlePTYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x98d40e...4799a6`](./contracts/ethereum-1/0x98d40e5b9d0911f15278223d58fddcb5cb4799a6/) | ✅ Audited |
| PendleRouterSwapHook | adapter | ethereum | n/a | [`0x02a0a9...d305cd`](./contracts/ethereum-1/0x02a0a95c379220e9759960a8ee923cbbc2d305cd/) | ✅ Audited |
| Redeem4626VaultHook | core_logic | ethereum | n/a | [`0x5c3edf...af5a69`](./contracts/ethereum-1/0x5c3edf3f7c43828bb72a668e2b29f9e2d9af5a69/) | ✅ Audited |
| Redeem5115VaultHook | core_logic | ethereum | n/a | [`0x6ab1fd...44e6f5`](./contracts/ethereum-1/0x6ab1fd107825f9bb3e079d23508a07486b44e6f5/) | ✅ Audited |
| RequestDeposit7540VaultHook | core_logic | ethereum | n/a | [`0xbe7738...b60097`](./contracts/ethereum-1/0xbe7738b26992a322d53edeb9a39331bf11b60097/) | ✅ Audited |
| RequestRedeem7540VaultHook | core_logic | ethereum | n/a | [`0x9c21c1...216797`](./contracts/ethereum-1/0x9c21c130acf3eadd781ae79d75ff5fc4bd216797/) | ✅ Audited |
| StakingYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x6a685c...57394c`](./contracts/ethereum-1/0x6a685cad15b7bb46094497243dcf94ad6557394c/) | ✅ Audited |
| SuperBank | unknown | ethereum | n/a | [`0x6fcc6a...cb5d15`](./contracts/ethereum-1/0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15/) | ✅ Audited |
| SuperDestinationExecutor | unknown | ethereum | n/a | [`0x6ac58e...7817ef`](./contracts/ethereum-1/0x6ac58e854798d4aae5989b18ad5a1c0ff17817ef/) | ✅ Audited |
| SuperDestinationValidator | unknown | ethereum | n/a | [`0xadeff5...fd0098`](./contracts/ethereum-1/0xadeff5a0684392c4c273a9c638d1db8c5dfd0098/) | ✅ Audited |
| SuperExecutor | unknown | ethereum | n/a | [`0x9cc8ed...1f6281`](./contracts/ethereum-1/0x9cc8edcc41154aafc74d261ad3d87140d21f6281/) | ✅ Audited |
| SuperGovernor | governance | ethereum | n/a | [`0xb5396e...0e74d4`](./contracts/ethereum-1/0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4/) | ✅ Audited |
| SuperLedger | unknown | ethereum | n/a | [`0x04916b...cb1be6`](./contracts/ethereum-1/0x04916bb42564cded96e10f55c059d65e4fcb1be6/) | ✅ Audited |
| SuperLedgerConfiguration | governance | ethereum | n/a | [`0x2e2d71...165e69`](./contracts/ethereum-1/0x2e2d71289cba19f831856f85dec7f194b0165e69/) | ✅ Audited |
| SuperNativePaymaster | unknown | ethereum | n/a | [`0x2288c4...a7a532`](./contracts/ethereum-1/0x2288c49689c2cced5c5bdd74ac3b775e61a7a532/) | ✅ Audited |
| SuperOracle | operational_periphery | ethereum | n/a | [`0x894312...5aa070`](./contracts/ethereum-1/0x8943128dbab4279d561654deed2930bb975aa070/) | ✅ Audited |
| SuperValidator | unknown | ethereum | n/a | [`0xb46b47...5f9f8e`](./contracts/ethereum-1/0xb46b4773c5f53ff941533f5dfeffd0713f5f9f8e/) | ✅ Audited |
| SuperVaultAggregator | core_logic | ethereum | n/a | [`0x10ac0b...2d4698`](./contracts/ethereum-1/0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698/) | ✅ Audited |
| SuperYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x98f068...29f52d`](./contracts/ethereum-1/0x98f0682ef39de9cd6028d91090be6edae129f52d/) | ✅ Audited |
| Swap1InchHook | unknown | ethereum | n/a | [`0x1303d5...d2425c`](./contracts/ethereum-1/0x1303d5f3e3d9e4a81945cb0c2e309e1940d2425c/) | ✅ Audited |
| TransferERC20Hook | token | ethereum | n/a | [`0x6031c3...a67ca4`](./contracts/ethereum-1/0x6031c3953bc12d9af4651b7ed517190a31a67ca4/) | ✅ Audited |
| Up | unknown | ethereum | n/a | [`0x1d926b...80bf33`](./contracts/ethereum-1/0x1d926bbe67425c9f507b9a0e8030eedc7880bf33/) | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiStrategyVault | core_logic | arbitrum | n/a | [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | ⚠️ Unaudited |
| AcrossV3Adapter | adapter | ethereum | n/a | [`0x4dc34c...0f0fd7`](./contracts/ethereum-1/0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7/) | ⚠️ Unaudited |
| ApproveAndAcrossSendFundsAndExecuteOnDstHook | unknown | ethereum | n/a | [`0x72422a...e0f3f2`](./contracts/ethereum-1/0x72422ab917e4a698369767f7ace667a769e0f3f2/) | ⚠️ Unaudited |
| ApproveAndDeposit5115VaultHook | core_logic | ethereum | n/a | [`0x44c7a4...593988`](./contracts/ethereum-1/0x44c7a40f05771fdaeaee61f36902d95cbf593988/) | ⚠️ Unaudited |
| ApproveAndSwapKyberSwapHook | unknown | ethereum | n/a | [`0xdc9d10...12d37d`](./contracts/ethereum-1/0xdc9d10d9710dbf82924a3f7733293457ad12d37d/) | ⚠️ Unaudited |
| BatchTransferHook | periphery | ethereum | n/a | [`0x852c6e...74c93a`](./contracts/ethereum-1/0x852c6e00a7ec7590318deaad03030d4ddd74c93a/) | ⚠️ Unaudited |
| CancelDepositRequest7540Hook | unknown | ethereum | n/a | [`0x0bba42...4e921a`](./contracts/ethereum-1/0x0bba42ddaa6ef6ccd228bd6270565f87154e921a/) | ⚠️ Unaudited |
| CancelRedeemRequest7540Hook | unknown | ethereum | n/a | [`0x542601...f0c2c0`](./contracts/ethereum-1/0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0/) | ⚠️ Unaudited |
| CircleGatewayWalletHook | unknown | ethereum | n/a | [`0x6383d0...356db5`](./contracts/ethereum-1/0x6383d09cf761feaa4108b65130793c7eda356db5/) | ⚠️ Unaudited |
| ClaimCancelDepositRequest7540Hook | unknown | ethereum | n/a | [`0xdf958a...285858`](./contracts/ethereum-1/0xdf958a047d90b202a7097b5f9b67bb8cb5285858/) | ⚠️ Unaudited |
| DeBridgeCancelOrderHook | operational_periphery | ethereum | n/a | [`0xc5dbbb...b482c9`](./contracts/ethereum-1/0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9/) | ⚠️ Unaudited |
| NexusAccountFactory | registry | ethereum | n/a | [`0x4153db...20c050`](./contracts/ethereum-1/0x4153db38136e74a88a77b51a955a88823820c050/) | ⚠️ Unaudited |
| NexusBootstrap | unknown | ethereum | n/a | [`0x5ebeb4...4bc9be`](./contracts/ethereum-1/0x5ebeb4d51723ba345080d81bbf178d93e84bc9be/) | ⚠️ Unaudited |
| OfframpTokensHook | token | ethereum | n/a | [`0xfbbd9a...0bea73`](./contracts/ethereum-1/0xfbbd9a7026e29e889d28882606660fc5be0bea73/) | ⚠️ Unaudited |
| PendlePTAmortizedOracle | operational_periphery | ethereum | n/a | [`0xd64089...47eb62`](./contracts/ethereum-1/0xd64089698f82cbcd91ba5e0422adfa81d247eb62/) | ⚠️ Unaudited |
| PendlePTAmortizedOracleV2 | operational_periphery | ethereum | n/a | [`0x2185b4...282a04`](./contracts/ethereum-1/0x2185b40476510ad27d17af90889ce91be9282a04/) | ⚠️ Unaudited |
| PendleRouterRedeemHook | adapter | ethereum | n/a | [`0xaae2db...daff2f`](./contracts/ethereum-1/0xaae2db58e2f426b910f518ccbb627545aedaff2f/) | ⚠️ Unaudited |
| PrimeCashProxy | unknown | ethereum | unit-34393 (9 proxies) | 9 deployments: ethereum [`0x265329...57948f`](./contracts/ethereum-1/0x265329c8f15671d7ca501710e3bd0e6cb257948f/); ethereum `0x39a1f8...f5cc95`; ethereum `0x4a9e28...dee9b8`; ethereum `0x4ebfc1...d305a6`; ethereum `0x54fa13...959974`; ethereum `0x7ef4d0...bf3dec`; ethereum `0x83706a...25d29d`; ethereum `0xaeeafb...2de762`; ethereum `0xfbadc4...6788d1` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0xeec16e...518e34`](./contracts/arbitrum-42161/0xeec16e611ddf561bcc3962ca7914563a6d518e34/) | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | ethereum | n/a | [`0x771d4f...a03fa3`](./contracts/ethereum-1/0x771d4ff615f87ea00488a2dbcb70df98bda03fa3/) | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | ethereum | n/a | [`0xa0e61e...784431`](./contracts/ethereum-1/0xa0e61eb90817e28abbb5a40045921b69bb784431/) | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | ethereum | n/a | [`0xb68a34...e326fc`](./contracts/ethereum-1/0xb68a34af34e64a8b3bb72983088aceb2fae326fc/) | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | ethereum | n/a | [`0x2a4f70...c89634`](./contracts/ethereum-1/0x2a4f700923324b14bd546630fe87b1ee08c89634/) | ⚠️ Unaudited |
| Redeem7540VaultHook | core_logic | ethereum | n/a | [`0xe165fb...bba79d`](./contracts/ethereum-1/0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d/) | ⚠️ Unaudited |
| SetOperator7540Hook | unknown | ethereum | n/a | [`0x86f9dc...8636a8`](./contracts/ethereum-1/0x86f9dce0a1a83c501ba95a1ab1088d67978636a8/) | ⚠️ Unaudited |
| SetSlippageHook | unknown | ethereum | n/a | [`0x6551d0...e4364e`](./contracts/ethereum-1/0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e/) | ⚠️ Unaudited |
| SpectraPTYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x30ecd1...1e3260`](./contracts/ethereum-1/0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260/) | ⚠️ Unaudited |
| StringPoRAddressList | unknown | arbitrum | n/a | [`0x6b2091...5a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | ⚠️ Unaudited |
| SuperSenderCreator | unknown | ethereum | n/a | [`0xbc6fb9...7c1799`](./contracts/ethereum-1/0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799/) | ⚠️ Unaudited |
| SuperSponsorshipPaymaster | unknown | ethereum | n/a | [`0x8c71eb...1366aa`](./contracts/ethereum-1/0x8c71eb1817a2707e8e40ac978b1993b98f1366aa/) | ⚠️ Unaudited |
| SuperVaultYieldSourceOracle | operational_periphery | ethereum | n/a | [`0xeebb42...df149a`](./contracts/ethereum-1/0xeebb42210d8a8b165dcf154b325c588ee8df149a/) | ⚠️ Unaudited |
| SwapKyberSwapHook | unknown | ethereum | n/a | [`0x828d8a...204df9`](./contracts/ethereum-1/0x828d8a9c015cef90b373a071500ae463ed204df9/) | ⚠️ Unaudited |
| TransferHook | unknown | ethereum | n/a | [`0x0d54e1...9164e9`](./contracts/ethereum-1/0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-34401 | [`0x421c25...f76a1d`](./contracts/arbitrum-42161/0x421c25a322c7683af7c0076664f8ab36a2f76a1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-34404 | [`0x806e85...492475`](./contracts/arbitrum-42161/0x806e8538fc05774ea83d9428f778e423f6492475/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-34408 | [`0x919898...c9cf27`](./contracts/arbitrum-42161/0x9198989a85e35adec46309e06684dca444c9cf27/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-34411 | [`0xc53a53...7e5b6f`](./contracts/arbitrum-42161/0xc53a53552191bee184557a15f114a87a757e5b6f/) | ⚠️ Unaudited |
| UpOFT | unknown | base | n/a | 2 deployments: hyperliquid `0x642ffc...9654fe`; base [`0x5b2193...f8c86b`](./contracts/base-8453/0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b/) | ⚠️ Unaudited |
| VaultRouter | adapter | arbitrum | n/a | [`0x48943f...1f777b`](./contracts/arbitrum-42161/0x48943f145686bf5c4580d545cda405844d1f777b/) | ⚠️ Unaudited |
| Water | unknown | arbitrum | unit-34405 | [`0x9045ae...13b48c`](./contracts/arbitrum-42161/0x9045ae36f963b7184861bdce205ea8b08913b48c/) | ⚠️ Unaudited |
| YoYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x125d43...d626d4`](./contracts/ethereum-1/0x125d43f5f35c032a45aad41ebe344d5c65d626d4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x211e04...39dfe7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x433f9a...eba9ad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbc8504...bbb62a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Report](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.08.22-orion.pdf) | Orion Security | Audit | 2025-08 | fresh | Direct | contract_name | 16 | high |
| [Report](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.30-octane-security.pdf) | Octane Security | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Report](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.27-0xMacro.pdf) | 0xMacro | Audit | 2025-11 | fresh | Direct | contract_name | 7 | high |
| [2023-09-gerard-persoon.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-gerard-persoon.pdf) | Gerard Persoon | Audit | 2023-09 | stale | Direct | contract_name | 0 | n/a |
| [2023-09-hans-friese.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-hans-friese.pdf) | Hans Friese | Audit | 2023-09 | stale | Direct | contract_name | 0 | n/a |
| [2023-12-cantina-competition.md](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-12-cantina-competition.md) | Spearbit | Audit | 2023-12 | stale | Direct | contract_name | 0 | n/a |
| [report-cantinacode-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-cantinacode-superform.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [report-competition-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-competition-superform.pdf) | Unknown (competition) | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2025.03.24-sujithsomraaj.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.03.24-sujithsomraaj.pdf) | sujithsomraaj | Audit | 2025-03 | aging | Direct | contract_name | 9 | high |
| [2025.04.19-cantinacode.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.04.19-cantinacode.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 14 | high |
| [2025.05.05-nodesecurity.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.05.05-nodesecurity.pdf) | nodesecurity | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [2025.06.02-cantina-competition.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.06.02-cantina-competition.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 24 | medium |
| [2025.06.30-cantinacode.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.06.30-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 10 | high |
| [2025.11.07-GetRecon.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.07-GetRecon.pdf) | GetRecon | Audit | 2025-11 | fresh | Direct | contract_name | 10 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | MultiStrategyVault | core_logic | $72.40 | Verified native implementation with $72.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c7a4...593988`](./contracts/ethereum-1/0x44c7a40f05771fdaeaee61f36902d95cbf593988/) | ApproveAndDeposit5115VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x852c6e...74c93a`](./contracts/ethereum-1/0x852c6e00a7ec7590318deaad03030d4ddd74c93a/) | BatchTransferHook | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bba42...4e921a`](./contracts/ethereum-1/0x0bba42ddaa6ef6ccd228bd6270565f87154e921a/) | CancelDepositRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542601...f0c2c0`](./contracts/ethereum-1/0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0/) | CancelRedeemRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf958a...285858`](./contracts/ethereum-1/0xdf958a047d90b202a7097b5f9b67bb8cb5285858/) | ClaimCancelDepositRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4153db...20c050`](./contracts/ethereum-1/0x4153db38136e74a88a77b51a955a88823820c050/) | NexusAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ebeb4...4bc9be`](./contracts/ethereum-1/0x5ebeb4d51723ba345080d81bbf178d93e84bc9be/) | NexusBootstrap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbbd9a...0bea73`](./contracts/ethereum-1/0xfbbd9a7026e29e889d28882606660fc5be0bea73/) | OfframpTokensHook | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265329...57948f`](./contracts/ethereum-1/0x265329c8f15671d7ca501710e3bd0e6cb257948f/) | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771d4f...a03fa3`](./contracts/ethereum-1/0x771d4ff615f87ea00488a2dbcb70df98bda03fa3/) | RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e61e...784431`](./contracts/ethereum-1/0xa0e61eb90817e28abbb5a40045921b69bb784431/) | RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68a34...e326fc`](./contracts/ethereum-1/0xb68a34af34e64a8b3bb72983088aceb2fae326fc/) | RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a4f70...c89634`](./contracts/ethereum-1/0x2a4f700923324b14bd546630fe87b1ee08c89634/) | RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe165fb...bba79d`](./contracts/ethereum-1/0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d/) | Redeem7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86f9dc...8636a8`](./contracts/ethereum-1/0x86f9dce0a1a83c501ba95a1ab1088d67978636a8/) | SetOperator7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6551d0...e4364e`](./contracts/ethereum-1/0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e/) | SetSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6fb9...7c1799`](./contracts/ethereum-1/0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799/) | SuperSenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c71eb...1366aa`](./contracts/ethereum-1/0x8c71eb1817a2707e8e40ac978b1993b98f1366aa/) | SuperSponsorshipPaymaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeebb42...df149a`](./contracts/ethereum-1/0xeebb42210d8a8b165dcf154b325c588ee8df149a/) | SuperVaultYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d54e1...9164e9`](./contracts/ethereum-1/0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9/) | TransferHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b2193...f8c86b`](./contracts/base-8453/0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b/) | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48943f...1f777b`](./contracts/arbitrum-42161/0x48943f145686bf5c4580d545cda405844d1f777b/) | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x125d43...d626d4`](./contracts/ethereum-1/0x125d43f5f35c032a45aad41ebe344d5c65d626d4/) | YoYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 23 |
| standard_library | 6 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=2
- Match method counts: extraction_exact=96

Zero-match audit list:

- [3986] Report
- [14877] 2023-09-gerard-persoon.pdf
- [14878] 2023-09-hans-friese.pdf
- [14879] 2023-12-cantina-competition.md
- [14880] report-cantinacode-superform.pdf
- [14881] report-competition-superform.pdf

Fork inheritance lineage and inherited audits are included when available.
