# Agentic Audit Brief: Superform

## Project Overview

- Project: Superform (`superform`)
- Website: [https://app.superform.xyz](https://app.superform.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.084Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, fantom, hyperliquid
- Contract surface: 148 unique implementations (186 raw deployments)
- DeFi Llama TVL: $22,050,136.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 125 project-authored contract(s) across 3 chain(s); 9 ERC4626 vaults, 15 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 27 common project-authored base contract(s) (basehook, baseledger, vaultbanklockablehook). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 253; live-surface contracts included: 176 (130 live, 46 unknown).
- Excluded by liveness: 77 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 46/92 (50.0%)
- Deployed-live implementations: 105 of 148 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 50/105
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 148
- Raw deployments: 186
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 49 match-unverified
- Tier 1 coverage: 35.9% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 37 | 35.2% | 2025-08 |
| Orion Security | Tier 2 | 16 | 15.2% | 2025-08 |
| GetRecon | Tier 2 | 9 | 8.6% | 2025-11 |
| sujithsomraaj | Tier 2 | 9 | 8.6% | 2025-03 |
| 0xMacro | Tier 2 | 7 | 6.7% | 2025-11 |
| nodesecurity | Tier 2 | 3 | 2.9% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcrossSendFundsAndExecuteOnDstHook | unknown | ethereum | n/a | [`0x39962be24192d0d6b6e3a19f332e3c825604d16a`](./contracts/ethereum-1/0x39962be24192d0d6b6e3a19f332e3c825604d16a/) | ✅ Audited |
| ApproveAndDeposit4626VaultHook | core_logic | ethereum | n/a | [`0xf37535d96712fbaef6d868e721e7b987ad1e6a86`](./contracts/ethereum-1/0xf37535d96712fbaef6d868e721e7b987ad1e6a86/) | ✅ Audited |
| ApproveAndRequestDeposit7540VaultHook | core_logic | ethereum | n/a | [`0x840b2b0553683de46c5e6382d1a405f44773b43f`](./contracts/ethereum-1/0x840b2b0553683de46c5e6382d1a405f44773b43f/) | ✅ Audited |
| ApproveAndSwapOdosV2Hook | unknown | ethereum | n/a | [`0x067696e1efbd25cafd3b55648ed253c20a7d9671`](./contracts/ethereum-1/0x067696e1efbd25cafd3b55648ed253c20a7d9671/) | ✅ Audited |
| ApproveERC20Hook | token | ethereum | n/a | [`0x8b789980dc6cc7d88e30c442d704646ff7f6d306`](./contracts/ethereum-1/0x8b789980dc6cc7d88e30c442d704646ff7f6d306/) | ✅ Audited |
| BatchTransferFromHook | periphery | ethereum | n/a | [`0x816d5de8835fb7a003896f486fcce46a6debb00a`](./contracts/ethereum-1/0x816d5de8835fb7a003896f486fcce46a6debb00a/) | ✅ Audited |
| CircleGatewayAddDelegateHook | unknown | ethereum | n/a | [`0xa7ae1263fd7d6017770147393ce130f16e1fe2cc`](./contracts/ethereum-1/0xa7ae1263fd7d6017770147393ce130f16e1fe2cc/) | ✅ Audited |
| CircleGatewayMinterHook | unknown | ethereum | n/a | [`0x659b720a5e8e08d2c379165d17ba5f74dd104824`](./contracts/ethereum-1/0x659b720a5e8e08d2c379165d17ba5f74dd104824/) | ✅ Audited |
| CircleGatewayRemoveDelegateHook | unknown | ethereum | n/a | [`0x00fbc4e3608a26e0d05905759c2a6188fda0e2cd`](./contracts/ethereum-1/0x00fbc4e3608a26e0d05905759c2a6188fda0e2cd/) | ✅ Audited |
| ClaimCancelRedeemRequest7540Hook | unknown | ethereum | n/a | [`0x0668f9a638f34928f0bd91588e7b157f0699d594`](./contracts/ethereum-1/0x0668f9a638f34928f0bd91588e7b157f0699d594/) | ✅ Audited |
| DebridgeAdapter | operational_periphery | ethereum | n/a | [`0x5be003c2cd2dacd4cd23488db7e74568475a36d8`](./contracts/ethereum-1/0x5be003c2cd2dacd4cd23488db7e74568475a36d8/) | ✅ Audited |
| DeBridgeSendOrderAndExecuteOnDstHook | operational_periphery | ethereum | n/a | [`0x162225095a384787a257bced9b8893b29c8f1795`](./contracts/ethereum-1/0x162225095a384787a257bced9b8893b29c8f1795/) | ✅ Audited |
| Deposit4626VaultHook | core_logic | ethereum | n/a | [`0xa067037b29431c1ff23deb9b10cc8a1669b0698e`](./contracts/ethereum-1/0xa067037b29431c1ff23deb9b10cc8a1669b0698e/) | ✅ Audited |
| Deposit5115VaultHook | core_logic | ethereum | n/a | [`0x32209a2302865784bc1dc0bd3c55d0a6eb205851`](./contracts/ethereum-1/0x32209a2302865784bc1dc0bd3c55d0a6eb205851/) | ✅ Audited |
| Deposit7540VaultHook | core_logic | ethereum | n/a | [`0x0ab1b12e090775fa67df6e1b44dfaee676c1dc84`](./contracts/ethereum-1/0x0ab1b12e090775fa67df6e1b44dfaee676c1dc84/) | ✅ Audited |
| ECDSAPPSOracle | operational_periphery | ethereum | n/a | [`0x366d88f03b8ef34eb49f32a927ff6e1609f694f2`](./contracts/ethereum-1/0x366d88f03b8ef34eb49f32a927ff6e1609f694f2/) | ✅ Audited |
| ERC4626YieldSourceOracle | operational_periphery | ethereum | n/a | [`0xd12a40b2abd166e17f18854f57ccd202091d9fb8`](./contracts/ethereum-1/0xd12a40b2abd166e17f18854f57ccd202091d9fb8/) | ✅ Audited |
| ERC5115YieldSourceOracle | operational_periphery | ethereum | n/a | [`0xec64fe4256e9e2b935f9acb13cf0b1ce06c6dd5c`](./contracts/ethereum-1/0xec64fe4256e9e2b935f9acb13cf0b1ce06c6dd5c/) | ✅ Audited |
| ERC7540YieldSourceOracle | operational_periphery | ethereum | n/a | [`0x8963d668adce629996ca0247885771b490612005`](./contracts/ethereum-1/0x8963d668adce629996ca0247885771b490612005/) | ✅ Audited |
| EthenaCooldownSharesHook | unknown | ethereum | n/a | [`0x1bd7698cc3e3f4ccf5d6cbc74a611bddeab18aef`](./contracts/ethereum-1/0x1bd7698cc3e3f4ccf5d6cbc74a611bddeab18aef/) | ✅ Audited |
| EthenaUnstakeHook | unknown | ethereum | n/a | [`0xaebeec6548b727fd4f3464b19d99f4676d7e7796`](./contracts/ethereum-1/0xaebeec6548b727fd4f3464b19d99f4676d7e7796/) | ✅ Audited |
| FlatFeeLedger | unknown | ethereum | n/a | [`0xab56d09ad9975116fceb14970f2ffb3bb0ad683e`](./contracts/ethereum-1/0xab56d09ad9975116fceb14970f2ffb3bb0ad683e/) | ✅ Audited |
| MarkRootAsUsedHook | unknown | ethereum | n/a | [`0xe61774aa87a05fb1b5665158f2b5e0e10c71b5e2`](./contracts/ethereum-1/0xe61774aa87a05fb1b5665158f2b5e0e10c71b5e2/) | ✅ Audited |
| MerklClaimRewardHook | unknown | ethereum | n/a | [`0x6c12d4453ed2278b37ecd169f4b8693537b228df`](./contracts/ethereum-1/0x6c12d4453ed2278b37ecd169f4b8693537b228df/) | ✅ Audited |
| PendlePTYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x98d40e5b9d0911f15278223d58fddcb5cb4799a6`](./contracts/ethereum-1/0x98d40e5b9d0911f15278223d58fddcb5cb4799a6/) | ✅ Audited |
| PendleRouterSwapHook | adapter | ethereum | n/a | [`0x02a0a95c379220e9759960a8ee923cbbc2d305cd`](./contracts/ethereum-1/0x02a0a95c379220e9759960a8ee923cbbc2d305cd/) | ✅ Audited |
| Redeem4626VaultHook | core_logic | ethereum | n/a | [`0x5c3edf3f7c43828bb72a668e2b29f9e2d9af5a69`](./contracts/ethereum-1/0x5c3edf3f7c43828bb72a668e2b29f9e2d9af5a69/) | ✅ Audited |
| Redeem5115VaultHook | core_logic | ethereum | n/a | [`0x6ab1fd107825f9bb3e079d23508a07486b44e6f5`](./contracts/ethereum-1/0x6ab1fd107825f9bb3e079d23508a07486b44e6f5/) | ✅ Audited |
| RequestDeposit7540VaultHook | core_logic | ethereum | n/a | [`0xbe7738b26992a322d53edeb9a39331bf11b60097`](./contracts/ethereum-1/0xbe7738b26992a322d53edeb9a39331bf11b60097/) | ✅ Audited |
| RequestRedeem7540VaultHook | core_logic | ethereum | n/a | [`0x9c21c130acf3eadd781ae79d75ff5fc4bd216797`](./contracts/ethereum-1/0x9c21c130acf3eadd781ae79d75ff5fc4bd216797/) | ✅ Audited |
| StakingYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x6a685cad15b7bb46094497243dcf94ad6557394c`](./contracts/ethereum-1/0x6a685cad15b7bb46094497243dcf94ad6557394c/) | ✅ Audited |
| SuperBank | unknown | ethereum | n/a | [`0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15`](./contracts/ethereum-1/0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15/) | ✅ Audited |
| SuperDestinationExecutor | unknown | ethereum | n/a | [`0x6ac58e854798d4aae5989b18ad5a1c0ff17817ef`](./contracts/ethereum-1/0x6ac58e854798d4aae5989b18ad5a1c0ff17817ef/) | ✅ Audited |
| SuperDestinationValidator | unknown | ethereum | n/a | [`0xadeff5a0684392c4c273a9c638d1db8c5dfd0098`](./contracts/ethereum-1/0xadeff5a0684392c4c273a9c638d1db8c5dfd0098/) | ✅ Audited |
| SuperExecutor | unknown | ethereum | n/a | [`0x9cc8edcc41154aafc74d261ad3d87140d21f6281`](./contracts/ethereum-1/0x9cc8edcc41154aafc74d261ad3d87140d21f6281/) | ✅ Audited |
| SuperFrens | unknown | base | n/a | 6 deployments: base [`0x4fdf7e39b8d3bb2503e97f49360e199c38c1dfee`](./contracts/base-8453/0x4fdf7e39b8d3bb2503e97f49360e199c38c1dfee/); base `0x55bf2f25bd1e5a97b948948f2e64bf0720093822`; base `0x5a3c6729ac93d87cfd3788c307478c0df2a402b3`; base `0x73317659b5a768b712d8d079f4df298510053135`; base `0x9c451e5f05c03cefc30404dfd193788799c58c7a`; base `0xb5fec2c7344cfba8e785dbada927f32559a4741d` | ✅ Audited |
| SuperGovernor | governance | ethereum | n/a | [`0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4`](./contracts/ethereum-1/0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4/) | ✅ Audited |
| SuperLedger | unknown | ethereum | n/a | [`0x04916bb42564cded96e10f55c059d65e4fcb1be6`](./contracts/ethereum-1/0x04916bb42564cded96e10f55c059d65e4fcb1be6/) | ✅ Audited |
| SuperLedgerConfiguration | governance | ethereum | n/a | [`0x2e2d71289cba19f831856f85dec7f194b0165e69`](./contracts/ethereum-1/0x2e2d71289cba19f831856f85dec7f194b0165e69/) | ✅ Audited |
| SuperNativePaymaster | unknown | ethereum | n/a | [`0x2288c49689c2cced5c5bdd74ac3b775e61a7a532`](./contracts/ethereum-1/0x2288c49689c2cced5c5bdd74ac3b775e61a7a532/) | ✅ Audited |
| SuperOracle | operational_periphery | ethereum | n/a | [`0x8943128dbab4279d561654deed2930bb975aa070`](./contracts/ethereum-1/0x8943128dbab4279d561654deed2930bb975aa070/) | ✅ Audited |
| SuperValidator | unknown | ethereum | n/a | [`0xb46b4773c5f53ff941533f5dfeffd0713f5f9f8e`](./contracts/ethereum-1/0xb46b4773c5f53ff941533f5dfeffd0713f5f9f8e/) | ✅ Audited |
| SuperVault | unknown | base | n/a | 6 deployments: base [`0x0b538db1bd28ecc978e863d89ace34a9f9101fc2`](./contracts/base-8453/0x0b538db1bd28ecc978e863d89ace34a9f9101fc2/); base `0x2c71f70e2ec720ae061ae7e0316fc9654d94f417`; base `0x3392f08d93de2e1675c2e0d19f3ed021746f742c`; base `0x369b2d0c701f791645ecf40f14d390f69a6023e3`; base `0x7f68862632a1c27a16fe75cd4225628547da6450`; base `0xd8ba05abcbe0baf1ee748104da11fb8f717fd291` | ✅ Audited |
| SuperVaultAggregator | core_logic | ethereum | n/a | [`0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698`](./contracts/ethereum-1/0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698/) | ✅ Audited |
| SuperYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x98f0682ef39de9cd6028d91090be6edae129f52d`](./contracts/ethereum-1/0x98f0682ef39de9cd6028d91090be6edae129f52d/) | ✅ Audited |
| Swap1InchHook | unknown | ethereum | n/a | [`0x1303d5f3e3d9e4a81945cb0c2e309e1940d2425c`](./contracts/ethereum-1/0x1303d5f3e3d9e4a81945cb0c2e309e1940d2425c/) | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xef101508bf4dc6cf0f0a0c135f39a41fab4e4389`](./contracts/ethereum-1/0xef101508bf4dc6cf0f0a0c135f39a41fab4e4389/); ethereum `0xf7de3c70f2db39a188a81052d2f3c8e3e217822a` | ✅ Audited |
| TokenizedStrategy | unknown | base | n/a | 2 deployments: base [`0xbd34db7ef42533a51eb0f53ed9d91d06880bcdf1`](./contracts/base-8453/0xbd34db7ef42533a51eb0f53ed9d91d06880bcdf1/); base `0xe9f2a5f9f3c846f29066d7fb3564f8e6b6b2d65b` | ✅ Audited |
| TransferERC20Hook | token | ethereum | n/a | [`0x6031c3953bc12d9af4651b7ed517190a31a67ca4`](./contracts/ethereum-1/0x6031c3953bc12d9af4651b7ed517190a31a67ca4/) | ✅ Audited |
| Up | unknown | ethereum | n/a | [`0x1d926bbe67425c9f507b9a0e8030eedc7880bf33`](./contracts/ethereum-1/0x1d926bbe67425c9f507b9a0e8030eedc7880bf33/) | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcrossV3Adapter | adapter | ethereum | n/a | [`0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7`](./contracts/ethereum-1/0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7/) | ⚠️ Unaudited |
| ApproveAndAcrossSendFundsAndExecuteOnDstHook | unknown | ethereum | n/a | [`0x72422ab917e4a698369767f7ace667a769e0f3f2`](./contracts/ethereum-1/0x72422ab917e4a698369767f7ace667a769e0f3f2/) | ⚠️ Unaudited |
| ApproveAndDeposit5115VaultHook | core_logic | ethereum | n/a | [`0x44c7a40f05771fdaeaee61f36902d95cbf593988`](./contracts/ethereum-1/0x44c7a40f05771fdaeaee61f36902d95cbf593988/) | ⚠️ Unaudited |
| ApproveAndSwapKyberSwapHook | unknown | ethereum | n/a | [`0xdc9d10d9710dbf82924a3f7733293457ad12d37d`](./contracts/ethereum-1/0xdc9d10d9710dbf82924a3f7733293457ad12d37d/) | ⚠️ Unaudited |
| BatchTransferHook | periphery | ethereum | n/a | [`0x852c6e00a7ec7590318deaad03030d4ddd74c93a`](./contracts/ethereum-1/0x852c6e00a7ec7590318deaad03030d4ddd74c93a/) | ⚠️ Unaudited |
| CancelDepositRequest7540Hook | unknown | ethereum | n/a | [`0x0bba42ddaa6ef6ccd228bd6270565f87154e921a`](./contracts/ethereum-1/0x0bba42ddaa6ef6ccd228bd6270565f87154e921a/) | ⚠️ Unaudited |
| CancelRedeemRequest7540Hook | unknown | ethereum | n/a | [`0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0`](./contracts/ethereum-1/0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0/) | ⚠️ Unaudited |
| CircleGatewayWalletHook | unknown | ethereum | n/a | [`0x6383d09cf761feaa4108b65130793c7eda356db5`](./contracts/ethereum-1/0x6383d09cf761feaa4108b65130793c7eda356db5/) | ⚠️ Unaudited |
| ClaimCancelDepositRequest7540Hook | unknown | ethereum | n/a | [`0xdf958a047d90b202a7097b5f9b67bb8cb5285858`](./contracts/ethereum-1/0xdf958a047d90b202a7097b5f9b67bb8cb5285858/) | ⚠️ Unaudited |
| DeBridgeCancelOrderHook | operational_periphery | ethereum | n/a | [`0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9`](./contracts/ethereum-1/0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9/) | ⚠️ Unaudited |
| FirelightYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x211e048350c5b61704245bdabfefe95a1239dfe7`](./contracts/ethereum-1/0x211e048350c5b61704245bdabfefe95a1239dfe7/) | ⚠️ Unaudited |
| GlmFeeCalculator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb0b61275dec07b3e8035cad6ccd17233d0cbb29d`](./contracts/arbitrum-42161/0xb0b61275dec07b3e8035cad6ccd17233d0cbb29d/); arbitrum `0xeb404c91e2f29cd55313daf9735ea71337370e22` | ⚠️ Unaudited |
| GlmManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8e9657fa74edb8bfd4473f1dfeb6715432c01be1`](./contracts/arbitrum-42161/0x8e9657fa74edb8bfd4473f1dfeb6715432c01be1/); arbitrum `0x90b0a11b784954a2ebd357380b8ad68e54f43cef` | ⚠️ Unaudited |
| GlmManagerCallback | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x233547580a7223231b8dc8ab34d1606ea673b264`](./contracts/arbitrum-42161/0x233547580a7223231b8dc8ab34d1606ea673b264/); arbitrum `0x36b5fbe6875e2ce74587da5838dcb6dc0dc09da0` | ⚠️ Unaudited |
| GlmPriceReader | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc7bdf21b20b22030d375424cf576e34454de71fb`](./contracts/arbitrum-42161/0xc7bdf21b20b22030d375424cf576e34454de71fb/); arbitrum `0xe4d0c7ac6deb2f7027ad82c5c42c5baafa73d67a` | ⚠️ Unaudited |
| GlmRebalance | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6ed6c5be7a8d1f8e4556b1f61ed056f5e7627c51`](./contracts/arbitrum-42161/0x6ed6c5be7a8d1f8e4556b1f61ed056f5e7627c51/); arbitrum `0x90d425b973697253162c0ca625546a92b55047ae` | ⚠️ Unaudited |
| GlmRebalanceCallback | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x237328712a706309c1d9ae447bcce2e690eddda8`](./contracts/arbitrum-42161/0x237328712a706309c1d9ae447bcce2e690eddda8/); arbitrum `0xaf71fff38a28f652aba33a31d0638f8f10997ad2` | ⚠️ Unaudited |
| GlmRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0652c29f6d521e56de14ce4c8f2a55aa72651365`](./contracts/arbitrum-42161/0x0652c29f6d521e56de14ce4c8f2a55aa72651365/); arbitrum `0xd318de159b1320bed03b4553eb58591a43156c47` | ⚠️ Unaudited |
| GlmVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4a2e51a8e25bd7d9d6a858269bb8a927495fe661`](./contracts/arbitrum-42161/0x4a2e51a8e25bd7d9d6a858269bb8a927495fe661/); arbitrum `0xb455f2ab7905785e90ed09ff542290a722b3fbb5` | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | arbitrum | n/a | [`0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | ⚠️ Unaudited |
| NexusAccountFactory | registry | ethereum | n/a | [`0x4153db38136e74a88a77b51a955a88823820c050`](./contracts/ethereum-1/0x4153db38136e74a88a77b51a955a88823820c050/) | ⚠️ Unaudited |
| NexusBootstrap | unknown | ethereum | n/a | [`0x5ebeb4d51723ba345080d81bbf178d93e84bc9be`](./contracts/ethereum-1/0x5ebeb4d51723ba345080d81bbf178d93e84bc9be/) | ⚠️ Unaudited |
| OfframpTokensHook | token | ethereum | n/a | [`0xfbbd9a7026e29e889d28882606660fc5be0bea73`](./contracts/ethereum-1/0xfbbd9a7026e29e889d28882606660fc5be0bea73/) | ⚠️ Unaudited |
| PendlePTAmortizedOracle | operational_periphery | ethereum | n/a | [`0xd64089698f82cbcd91ba5e0422adfa81d247eb62`](./contracts/ethereum-1/0xd64089698f82cbcd91ba5e0422adfa81d247eb62/) | ⚠️ Unaudited |
| PendlePTAmortizedOracleV2 | operational_periphery | ethereum | n/a | [`0x2185b40476510ad27d17af90889ce91be9282a04`](./contracts/ethereum-1/0x2185b40476510ad27d17af90889ce91be9282a04/) | ⚠️ Unaudited |
| PendleRouterRedeemHook | adapter | ethereum | n/a | [`0xaae2db58e2f426b910f518ccbb627545aedaff2f`](./contracts/ethereum-1/0xaae2db58e2f426b910f518ccbb627545aedaff2f/) | ⚠️ Unaudited |
| PendleUnifiedHook | unknown | ethereum | n/a | [`0x433f9a343e4132a294e02d4a09da4b575eeba9ad`](./contracts/ethereum-1/0x433f9a343e4132a294e02d4a09da4b575eeba9ad/) | ⚠️ Unaudited |
| PrimeCashProxy | unknown | ethereum | n/a | 9 deployments: ethereum [`0x265329c8f15671d7ca501710e3bd0e6cb257948f`](./contracts/ethereum-1/0x265329c8f15671d7ca501710e3bd0e6cb257948f/); ethereum `0x39a1f8e5d2422ccc5e08c5b4019ab70147f5cc95`; ethereum `0x4a9e282635567cc4d3c6a24e16c2335f10dee9b8`; ethereum `0x4ebfc11ad2dd1c2a450ba194558d797ee5d305a6`; ethereum `0x54fa13a38a690bc69584a7ac8b834c1770959974`; ethereum `0x7ef4d0168b12b168f14b67c708bc16f7e8bf3dec`; ethereum `0x83706a2ec580fe1fdb84744366fa02fb8e25d29d`; ethereum `0xaeeafb1259f01f363d09d7027ad80a9d442de762`; ethereum `0xfbadc4f18ddc7ebdbc920d3f9b0ca7a1296788d1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x053abef168984912e1500cea50889e382a9da624`](./contracts/arbitrum-42161/0x053abef168984912e1500cea50889e382a9da624/); arbitrum `0xeec16e611ddf561bcc3962ca7914563a6d518e34` | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | ethereum | n/a | [`0x771d4ff615f87ea00488a2dbcb70df98bda03fa3`](./contracts/ethereum-1/0x771d4ff615f87ea00488a2dbcb70df98bda03fa3/) | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | ethereum | n/a | [`0xa0e61eb90817e28abbb5a40045921b69bb784431`](./contracts/ethereum-1/0xa0e61eb90817e28abbb5a40045921b69bb784431/) | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | ethereum | n/a | [`0xb68a34af34e64a8b3bb72983088aceb2fae326fc`](./contracts/ethereum-1/0xb68a34af34e64a8b3bb72983088aceb2fae326fc/) | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | ethereum | n/a | [`0x2a4f700923324b14bd546630fe87b1ee08c89634`](./contracts/ethereum-1/0x2a4f700923324b14bd546630fe87b1ee08c89634/) | ⚠️ Unaudited |
| Redeem7540VaultHook | core_logic | ethereum | n/a | [`0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d`](./contracts/ethereum-1/0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d/) | ⚠️ Unaudited |
| SetOperator7540Hook | unknown | ethereum | n/a | [`0x86f9dce0a1a83c501ba95a1ab1088d67978636a8`](./contracts/ethereum-1/0x86f9dce0a1a83c501ba95a1ab1088d67978636a8/) | ⚠️ Unaudited |
| SetSlippageHook | unknown | ethereum | n/a | [`0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e`](./contracts/ethereum-1/0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e/) | ⚠️ Unaudited |
| SpectraPTYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260`](./contracts/ethereum-1/0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260/) | ⚠️ Unaudited |
| StringPoRAddressList | unknown | arbitrum | n/a | [`0x6b2091c4eccb16756c2ade0a298fcc75c25a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | ⚠️ Unaudited |
| SuperSenderCreator | unknown | ethereum | n/a | [`0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799`](./contracts/ethereum-1/0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799/) | ⚠️ Unaudited |
| SuperSponsorshipPaymaster | unknown | ethereum | n/a | [`0x8c71eb1817a2707e8e40ac978b1993b98f1366aa`](./contracts/ethereum-1/0x8c71eb1817a2707e8e40ac978b1993b98f1366aa/) | ⚠️ Unaudited |
| SuperVaultYieldSourceOracle | operational_periphery | ethereum | n/a | [`0xeebb42210d8a8b165dcf154b325c588ee8df149a`](./contracts/ethereum-1/0xeebb42210d8a8b165dcf154b325c588ee8df149a/) | ⚠️ Unaudited |
| SwapKyberSwapHook | unknown | ethereum | n/a | [`0x828d8a9c015cef90b373a071500ae463ed204df9`](./contracts/ethereum-1/0x828d8a9c015cef90b373a071500ae463ed204df9/) | ⚠️ Unaudited |
| TransferHook | unknown | ethereum | n/a | [`0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9`](./contracts/ethereum-1/0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x056b76f57b1d1fad01c80b72b1a7af136fdcb285`](./contracts/arbitrum-42161/0x056b76f57b1d1fad01c80b72b1a7af136fdcb285/); arbitrum `0xe68e600c65315f0390c2de7e576aa7fed02a5d6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0x421c25a322c7683af7c0076664f8ab36a2f76a1d`](./contracts/arbitrum-42161/0x421c25a322c7683af7c0076664f8ab36a2f76a1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4fcb03f2dc8dd39286b0fe203277ee0cb25b1192`](./contracts/arbitrum-42161/0x4fcb03f2dc8dd39286b0fe203277ee0cb25b1192/); arbitrum `0xa9f8995fa6950fd8e01a35397d9fdcd0673ac341` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0x806e8538fc05774ea83d9428f778e423f6492475`](./contracts/arbitrum-42161/0x806e8538fc05774ea83d9428f778e423f6492475/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0x9198989a85e35adec46309e06684dca444c9cf27`](./contracts/arbitrum-42161/0x9198989a85e35adec46309e06684dca444c9cf27/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xc53a53552191bee184557a15f114a87a757e5b6f`](./contracts/arbitrum-42161/0xc53a53552191bee184557a15f114a87a757e5b6f/) | ⚠️ Unaudited |
| UpOFT | unknown | base | n/a | 2 deployments: hyperliquid `0x642ffc3496aca19106bab7a42f1f221a329654fe`; base [`0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b`](./contracts/base-8453/0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b/) | ⚠️ Unaudited |
| VaultRouter | adapter | arbitrum | n/a | [`0x48943f145686bf5c4580d545cda405844d1f777b`](./contracts/arbitrum-42161/0x48943f145686bf5c4580d545cda405844d1f777b/) | ⚠️ Unaudited |
| VKAPublicSale | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x6aa23c0d1ed749d6b5cf25a57159f3fd704e44d5`](./contracts/arbitrum-42161/0x6aa23c0d1ed749d6b5cf25a57159f3fd704e44d5/); arbitrum `0xa6a5755cb552b52a98d64f4aa11e313c20704181`; arbitrum `0xca600f65d72dcb307c06ef949302eb0720db7138`; arbitrum `0xe969f32a2ee6b7f3ad4b5455efc9b6797199cd58` | ⚠️ Unaudited |
| VKAWhitelistedSale | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1be85fde1ad5264e88e5a6dec8ca800071369df0`](./contracts/arbitrum-42161/0x1be85fde1ad5264e88e5a6dec8ca800071369df0/); arbitrum `0x1ea2ae7ec69508fbd83978f4a7afd7c0dffae711`; arbitrum `0x6985c055d10fb5dcbacf424ce67f70864fcdd24f`; arbitrum `0x87aac02808cbd258b8d04c3dc67cea9a9cda58f5` | ⚠️ Unaudited |
| Water | unknown | arbitrum | n/a | [`0x9045ae36f963b7184861bdce205ea8b08913b48c`](./contracts/arbitrum-42161/0x9045ae36f963b7184861bdce205ea8b08913b48c/) | ⚠️ Unaudited |
| YoYieldSourceOracle | operational_periphery | ethereum | n/a | [`0x125d43f5f35c032a45aad41ebe344d5c65d626d4`](./contracts/ethereum-1/0x125d43f5f35c032a45aad41ebe344d5c65d626d4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0xbc85043544cc2b3fd095d54b6431822979bbb62a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22037285999e216de3b079c25ce464cfbb6aa1f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fa5212be2b53a0bf3ca6b06664232695625f108` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94ca885c5498d6e53b802e589aa340878cb60b3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa4725c386164ea9ad932bc306a1f87da7526aca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc5f472e7772caedc7d09277120b4dff24fb8ef9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd059e58645bce3380677ae0b54d628a018e942b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b64206eadd25f27145d1b29a27e3a242d0922f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fcfe2978374af129cd4f3366b17a57367851f89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd690d27ae6a5036348a44fae5458ede27e472a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1db17afe14732a5267a0839d5f3de0af1426cb9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2402248b74fabe16d93f48448f03c74a9f24afe5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x243331e8e825db310fda328e35755670f878db9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f87dba133b630dc45b10c36b5c5d6c5cd1e5c4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3988e57f06c0ef1703e6103602098567b786040c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4489066f5e0ad20ff4ee7347219126043fdf6b4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x468020394c40cc6129626f763deaab1665996844` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4870f46792706b9f783da0f7ab5a6a56664245aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4aef25d0279d69c2426b1ec485b89a63ee4fb96d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b2c17942a0c306bf12ffd95077cc5be0bd18c18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b946b0b2d19f59884d756babaf93c079fbfc809` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69c5290eeae87d10d0b8d8dc6291dd31292a6a41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f6603e80235168d033420f91f4cf287c9ac04d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x712ccb82a52cb582f9b5cf70a3b6b0c8f2456e91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78e3599d603b91d03c29b1ec199c9ce17a499099` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e0bd79e561f3f5adc1d3090dc2af54165072412` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7eb6bb4cba7daa374c062ba7c939d92c9fdf5508` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87719a2aa570a90c962827f986ef085da496f08f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ac3b69aa4b14649f746dec66ab0e9ff1624482b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x932249c0ca46245a88455716a63b511208cbe824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x953a1176bc13954b157ae06267ed8c8237c3c1f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cdc06b2f251d5ae181c57e4509c6cba4076e258` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac588fbf8bd947e80c4c280fad37e24f458e3ea2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb3c6f7c755eb9c83363249d883ccdc551232c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd252bdf427de269f37b004ecd18ba9591e43a85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbc9c265afe8d64b3774b91cb01ad6745e6ca03e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1bfbd1eba60e91899b460d5ba905eff9c93be55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4364d0dfc6e6e155048602cc6d5b1900abb1783` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef771d198656e6dc44c4bc834d8a96418ce1f82f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeff1094d76c4f44f17583d78ecfc4965d8078739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2774575fbe5ab3f62c723306a7486786d34a2ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd44f30c71854d98e1a334b23af822bce5020696` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025.08.22-orion.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.08.22-orion.pdf) | Orion Security | Audit | 2025-08 | fresh | Direct | contract_name | 16 | n/a |
| [2025.11.30-octane-security.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.30-octane-security.pdf) | Octane Security | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2025.11.27-0xMacro.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.27-0xMacro.pdf) | 0xMacro | Audit | 2025-11 | fresh | Direct | contract_name | 7 | n/a |
| [2023-09-gerard-persoon.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-gerard-persoon.pdf) | Gerard Persoon | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [2023-09-hans-friese.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-hans-friese.pdf) | Hans Friese | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [2023-12-cantina-competition.md](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-12-cantina-competition.md) | Spearbit | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [report-cantinacode-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-cantinacode-superform.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 6 | high |
| [report-competition-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-competition-superform.pdf) | Unknown (competition) | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2025.03.24-sujithsomraaj.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.03.24-sujithsomraaj.pdf) | sujithsomraaj | Audit | 2025-03 | aging | Direct | contract_name | 9 | n/a |
| [2025.04.19-cantinacode.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.04.19-cantinacode.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 14 | n/a |
| [2025.05.05-nodesecurity.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.05.05-nodesecurity.pdf) | nodesecurity | Audit | 2025-05 | aging | Direct | contract_name | 3 | n/a |
| [2025.06.02-cantina-competition.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.06.02-cantina-competition.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 24 | n/a |
| [2025.06.30-cantinacode.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.06.30-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 9 | n/a |
| [2025.11.07-GetRecon.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.07-GetRecon.pdf) | GetRecon | Audit | 2025-11 | fresh | Direct | contract_name | 9 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7`](./contracts/ethereum-1/0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7/) | AcrossV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72422ab917e4a698369767f7ace667a769e0f3f2`](./contracts/ethereum-1/0x72422ab917e4a698369767f7ace667a769e0f3f2/) | ApproveAndAcrossSendFundsAndExecuteOnDstHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c7a40f05771fdaeaee61f36902d95cbf593988`](./contracts/ethereum-1/0x44c7a40f05771fdaeaee61f36902d95cbf593988/) | ApproveAndDeposit5115VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc9d10d9710dbf82924a3f7733293457ad12d37d`](./contracts/ethereum-1/0xdc9d10d9710dbf82924a3f7733293457ad12d37d/) | ApproveAndSwapKyberSwapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x852c6e00a7ec7590318deaad03030d4ddd74c93a`](./contracts/ethereum-1/0x852c6e00a7ec7590318deaad03030d4ddd74c93a/) | BatchTransferHook | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bba42ddaa6ef6ccd228bd6270565f87154e921a`](./contracts/ethereum-1/0x0bba42ddaa6ef6ccd228bd6270565f87154e921a/) | CancelDepositRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0`](./contracts/ethereum-1/0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0/) | CancelRedeemRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6383d09cf761feaa4108b65130793c7eda356db5`](./contracts/ethereum-1/0x6383d09cf761feaa4108b65130793c7eda356db5/) | CircleGatewayWalletHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf958a047d90b202a7097b5f9b67bb8cb5285858`](./contracts/ethereum-1/0xdf958a047d90b202a7097b5f9b67bb8cb5285858/) | ClaimCancelDepositRequest7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9`](./contracts/ethereum-1/0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9/) | DeBridgeCancelOrderHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211e048350c5b61704245bdabfefe95a1239dfe7`](./contracts/ethereum-1/0x211e048350c5b61704245bdabfefe95a1239dfe7/) | FirelightYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb0b61275dec07b3e8035cad6ccd17233d0cbb29d`](./contracts/arbitrum-42161/0xb0b61275dec07b3e8035cad6ccd17233d0cbb29d/) | GlmFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8e9657fa74edb8bfd4473f1dfeb6715432c01be1`](./contracts/arbitrum-42161/0x8e9657fa74edb8bfd4473f1dfeb6715432c01be1/) | GlmManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x233547580a7223231b8dc8ab34d1606ea673b264`](./contracts/arbitrum-42161/0x233547580a7223231b8dc8ab34d1606ea673b264/) | GlmManagerCallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7bdf21b20b22030d375424cf576e34454de71fb`](./contracts/arbitrum-42161/0xc7bdf21b20b22030d375424cf576e34454de71fb/) | GlmPriceReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ed6c5be7a8d1f8e4556b1f61ed056f5e7627c51`](./contracts/arbitrum-42161/0x6ed6c5be7a8d1f8e4556b1f61ed056f5e7627c51/) | GlmRebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x237328712a706309c1d9ae447bcce2e690eddda8`](./contracts/arbitrum-42161/0x237328712a706309c1d9ae447bcce2e690eddda8/) | GlmRebalanceCallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0652c29f6d521e56de14ce4c8f2a55aa72651365`](./contracts/arbitrum-42161/0x0652c29f6d521e56de14ce4c8f2a55aa72651365/) | GlmRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a2e51a8e25bd7d9d6a858269bb8a927495fe661`](./contracts/arbitrum-42161/0x4a2e51a8e25bd7d9d6a858269bb8a927495fe661/) | GlmVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | MultiStrategyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4153db38136e74a88a77b51a955a88823820c050`](./contracts/ethereum-1/0x4153db38136e74a88a77b51a955a88823820c050/) | NexusAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ebeb4d51723ba345080d81bbf178d93e84bc9be`](./contracts/ethereum-1/0x5ebeb4d51723ba345080d81bbf178d93e84bc9be/) | NexusBootstrap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbbd9a7026e29e889d28882606660fc5be0bea73`](./contracts/ethereum-1/0xfbbd9a7026e29e889d28882606660fc5be0bea73/) | OfframpTokensHook | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265329c8f15671d7ca501710e3bd0e6cb257948f`](./contracts/ethereum-1/0x265329c8f15671d7ca501710e3bd0e6cb257948f/) | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771d4ff615f87ea00488a2dbcb70df98bda03fa3`](./contracts/ethereum-1/0x771d4ff615f87ea00488a2dbcb70df98bda03fa3/) | RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e61eb90817e28abbb5a40045921b69bb784431`](./contracts/ethereum-1/0xa0e61eb90817e28abbb5a40045921b69bb784431/) | RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68a34af34e64a8b3bb72983088aceb2fae326fc`](./contracts/ethereum-1/0xb68a34af34e64a8b3bb72983088aceb2fae326fc/) | RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a4f700923324b14bd546630fe87b1ee08c89634`](./contracts/ethereum-1/0x2a4f700923324b14bd546630fe87b1ee08c89634/) | RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d`](./contracts/ethereum-1/0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d/) | Redeem7540VaultHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86f9dce0a1a83c501ba95a1ab1088d67978636a8`](./contracts/ethereum-1/0x86f9dce0a1a83c501ba95a1ab1088d67978636a8/) | SetOperator7540Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e`](./contracts/ethereum-1/0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e/) | SetSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260`](./contracts/ethereum-1/0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260/) | SpectraPTYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b2091c4eccb16756c2ade0a298fcc75c25a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | StringPoRAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799`](./contracts/ethereum-1/0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799/) | SuperSenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c71eb1817a2707e8e40ac978b1993b98f1366aa`](./contracts/ethereum-1/0x8c71eb1817a2707e8e40ac978b1993b98f1366aa/) | SuperSponsorshipPaymaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeebb42210d8a8b165dcf154b325c588ee8df149a`](./contracts/ethereum-1/0xeebb42210d8a8b165dcf154b325c588ee8df149a/) | SuperVaultYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x828d8a9c015cef90b373a071500ae463ed204df9`](./contracts/ethereum-1/0x828d8a9c015cef90b373a071500ae463ed204df9/) | SwapKyberSwapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9`](./contracts/ethereum-1/0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9/) | TransferHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b`](./contracts/base-8453/0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b/) | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48943f145686bf5c4580d545cda405844d1f777b`](./contracts/arbitrum-42161/0x48943f145686bf5c4580d545cda405844d1f777b/) | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6aa23c0d1ed749d6b5cf25a57159f3fd704e44d5`](./contracts/arbitrum-42161/0x6aa23c0d1ed749d6b5cf25a57159f3fd704e44d5/) | VKAPublicSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1be85fde1ad5264e88e5a6dec8ca800071369df0`](./contracts/arbitrum-42161/0x1be85fde1ad5264e88e5a6dec8ca800071369df0/) | VKAWhitelistedSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9045ae36f963b7184861bdce205ea8b08913b48c`](./contracts/arbitrum-42161/0x9045ae36f963b7184861bdce205ea8b08913b48c/) | Water | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x125d43f5f35c032a45aad41ebe344d5c65d626d4`](./contracts/ethereum-1/0x125d43f5f35c032a45aad41ebe344d5c65d626d4/) | YoYieldSourceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 8 |
| standard_library | 6 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=91, extraction_exact=6

Zero-match audit list:

- [3986] 2025.11.30-octane-security.pdf
- [14877] 2023-09-gerard-persoon.pdf
- [14878] 2023-09-hans-friese.pdf
- [14879] 2023-12-cantina-competition.md
- [14881] report-competition-superform.pdf

Fork inheritance lineage and inherited audits are included when available.
