# Agentic Audit Brief: Edel

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Edel (`edel`)
- Website: [https://www.edel.finance/](https://www.edel.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, ethereum
- Contract surface: 164 unique implementations (164 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,743,686.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Edel. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, bsc, ethereum. Structural roles: 5 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (4), ownable2step (2), erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: aave (4), openzeppelin (3), uniswap (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d6aca7411e2e35125def630dcb0ed77a6ef7a5a`, chain 1)
- UnnamedContract (`0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c`, chain 1)
- UnnamedContract (`0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c`, chain 56)
- ContractOne (`0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95`, chain 8453)
- EdelZap (`0xfc3f2b827a1176641022a9369c483b6faa2cb6f3`, chain 1)
- ERC4626EdelWrapperGateway (`0x349fa7e2a00fd64855713cf9b11e3c4c0232082c`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x3eeeb3cd20f844a578807fc457388ceb9a67faa6`, chain 1)
- PoolAddressesProvider (`0x7ff6bac9fedfa774060c880122bad2b607ba8a4d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 156 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 8 of 164 unique; 156 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 111
- Unique implementations: 164
- Raw deployments: 164
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8493f5c3e335602557c4684e46502c43c6fb64` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e5235753880491b1d46c44fb44787628834cc3` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69193ab664dfb61ef9093fdc9ef229d560de1c8e` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d61e0b36b9419bcbbf7e32eb6b49c53188ae526` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eb30706831854b78bca2472952f84d92e30425c` | ⚠️ Unaudited |
| ContractOne | unknown | project_anchor | own_supporting | 0 | base | unit-236679 | `0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95` | ⚠️ Unaudited |
| ContractOneOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c4c42ed68584ff02f5a00d5d3d985108a3961c` | ⚠️ Unaudited |
| DataStreamsConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4fe9fbc38a5f87862be4be13264039b28848dd` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c05f8a12bb64ea7fa3ca98dcddb60b43bf236b8` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e11a40ba857e3c24c07798f2cf386b0d2df6161` | ⚠️ Unaudited |
| EdelStreams_XStocks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13536966973f5f463918cef7cd6e1545cd790116` | ⚠️ Unaudited |
| EdelWrappedXStocksAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e9b93b8ad0f43f1dd0bca596ab6cce663efa71` | ⚠️ Unaudited |
| EdelZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236677 | `0xfc3f2b827a1176641022a9369c483b6faa2cb6f3` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ac3babec0050c970d415854c8360b278056789` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119505b31d369d5cf27c149a0d132d8cdd99cf5e` | ⚠️ Unaudited |
| ERC4626EdelWrapperGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236673 | `0x349fa7e2a00fd64855713cf9b11e3c4c0232082c` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245f4a173dd1e40017b17011710f5a5c467f121d` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6803ac1ad765a6d03a52b7b89302acf66f262a99` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x72fc034dc80f4fdf5436c2772e844170ca73e971` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236680 | `0x3eeeb3cd20f844a578807fc457388ceb9a67faa6` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c14f1091947572f592ca4de13462a4f5195cb2` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4455e3f74adbe89d46e4ba1ef3231f0695664df8` | ⚠️ Unaudited |
| OndoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c6a25739ffe02b1dae12502632126ffa7497c2` | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56149c159544b23530ff772244f9011dcec297d5` | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1123a070386e131db934b4136b1219da7e97be75` | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1559d61af153ce8511dd2a1afb5ca92d7639d2e` | ⚠️ Unaudited |
| ParaSwapRepayAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d123e921ec8810699dcb8c77a77d159064e6c1f` | ⚠️ Unaudited |
| ParaSwapRepayAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d7f1b7d28c23bfe442e59a2a0d91b7ddd7df18` | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243aecbd7964ffda26c3c8e66f175853a10fafe7` | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465289527cc6f5946bbfc87442cbfbbd69fb9c99` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87ed0c515ffd27474ccfc05f48ac206d4924637` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236675 | `0x7ff6bac9fedfa774060c880122bad2b607ba8a4d` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa5c4c61a25c50d96cfcc325de62fa19bdd406b` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861381d4955d3fae194e9d60fb3233f22aa3562a` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10bc9308c6045946918aebe38a5c9ca8cd2c6542` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2970e7ea5e74052e99455931931840d51c0835f9` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2511bda9c038ad1a82f7d283c5df72b6cfc90303` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7231fcfcc2ecb512cbe07a4b5fd9e9911653d` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8f2946a09a7137ea72f7f79261bf8f77f0d5e0` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4e969ec8ce68e8b3e22ec71ef30791ecd54b18` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ace7f72413fd391300c45b4440e5f651fe8fb4` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e9577255b7e4289b78c8c9bdef20abf69bb158` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df7427cd2d104ec6c452aaeac7b13b1addb2d15` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38554e6cc65637a5d4b6fb8daefb7cc7254c9a54` | ⚠️ Unaudited |
| WrappedBackedTokenImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b2456017c5df2dfc0289740c4b352049892780c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a233ecd6ff9e0b20fad37bf827937d2f7feae6a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (111)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca32f114e7f6b36894432735c8a17cd217a1116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cbb13ccb1e3d951821ad8cb67667111176b2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e6996adac4f09b16f0b6e0b73fae9af6eab7fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f7db9fd9324de6de8a2c657bba1dad8acedff8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a5685a704d40754bceb901b83ede08710c239c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31dcea29fc68ac8d64b51971bef68f21f1933c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34014943e3332f5bee34c0e88dab970c184a7e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367a8a0a55f405aa6980e44f3920463abc6bb132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c1c8625131b39b83ca405bb778a432dcfbc3eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de3d0079e077fff801b03e0c5a2bfa557db07f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ddceb3301813c38b65318ba96b3b1dc3bec7f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43e606cc92194528fae829e2e23abf0fdc40bd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460921251b7bc4fadec1b050d7435b95bb1f37a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a8a8362ac83d22a52cf01c822a94504630c7bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a8d617b63db1235cc957c4b97439c2d0a6aac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f32d03d10865c0e8da651328114ff1773d1e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d19975a5b42049213cac544efed34cc2d30656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566a7b65f506a2eb27e4b459f8f69e91c9e4a65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x569f359497dd825c0450abf54d92d0570abc685c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57545f06b4fecb5542ff99c14ccc5285d7422eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59c73e12f09ed100469181c16affdafe0e4e1742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd4ba9f0e7b30eb68057382c846d70830003a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x635e2d90a65be82b8db92e66128bdd106a068780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6401999437fb8d6af9df5adefe10d87f2af3ec7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656eb6ea018f4b2e37b3a7b6561a74f1f62432e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e8d8e1ba5cfadb32df6cc0b45ea05cc3d7201e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66ef0906dfb355351e644b0b4005f4ff6e6cfa19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e77301545af8e0ab52b6828f5022a10844aec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69105c2faa3c0ac14bfd7cdc18e69c3ec82a696a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c38222f46008f933a2c6730e22fe7c519a1639d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236674 | `0x6d6aca7411e2e35125def630dcb0ed77a6ef7a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f31eee99cd77477cd3d8e61e231c952a5eea242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8591f945763d6e5b42fed3a425c957a1fee00c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70002ee831a5e7f4229aa2c14e7a3b5ccf272cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ade622936fb71dce65a120e01c11a647304ac7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c22296779b865ec498fbe3cd00b35a4b9365d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd14bf8a910e24ce72a709ab735fb01065274af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed238e5d846b23ed5466244e792e8368b81ddf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c38a862f1e0b09d1e15e1456159ea59d38a3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856736dff1579dde3e35b278432c857cb55bc407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a5f0cc5051eb0426ff4d7227d465b499a15904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869c3981db4f89c65bdb997021bd07c1a962ce59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8abd79b6ee78bedb4a67d4f789345be95564550d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc35734add740d36fefb41c057975dd3facff3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90378c1029d7d39c956dcc9ce757f0348b9e43b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ddb29c155ee34337714e51b62f8f84f6b49d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960e1155741108c85a9bb554f79165df939e66bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b917f5385c9585f886d066d8f0d4cc0c22a28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9823d24ce9af8c86b37098c7ca016a6e7d98e577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x982d49c4ee1b60ddd9f45e642eb45d9855811258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce590429d9bb40eac7eec5b6f2afa93213528c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0aa9dd11c6a770cebb4772728538648f2de0f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa32dc5e764a962fb1a09d6924091f4a338393df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bf7bec6f5f276faf83bd701b688e30fdd9b122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa703ffe45007c569beb16b0230d41402e13a1b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82e59767b855e5f4d0033cdc8573ac09a6ef1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8edcf6d5807a07be9d3c6fd7f7588ecbcf0d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9bdd9a805005761f5cabafd0f5c442523e28e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9202cd9d2f750360cc98e28b13126ab208f0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafa01c812b622183eaa4d6a76d5321576423066b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c626f9c25418ba16132e5ae33cf54e61f8242f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb251a77da5137a6f7776bb51a1193ccef04b68a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb519d7e53a466633d0b10db209a68b8877945b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb567c928532aacd93d6c123f83a065f35432ab04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb768bcaa908f2356a710d4ca3cddec346fc1b776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7ecd275692cd62537ce426197b21bff8a34e215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe015118d6ca79c8e1da11cd7015e5b1107ec36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc95ebb40a5f98445e266cf6b237bdf2a0867752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd0243033315c5531c6d87f0e3a824afe85494ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd478fcb05ada3bd3eb51d52269211f833fba472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeeb12ae26183b5387f66d78243acfa9313301dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236676 | `0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc109c98f34e01eaff2c4c60a208f86e7b6ebed4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc140cf7ac87d726a6c20b91dc0c2bd046b61b719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f76f5f8cab297a096aec245b28b70b8822bfa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77730e01e5e2cb96aab9f954b64f209c7ac3d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84577a366bdc6ace161388dace77ff0a8958b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93712d85c71ad3b494d2bd8bdcdabc7caed7c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc958f05dcb9f7961003016767124b06575af8260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8a30d002b51090d8631dcc945afc54eed3eab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb002197b5d4a178f84db028d7093a3fc3ff7ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceaaa7fe8d80fcf24739873f85ed33f575128bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcedb1cabfcb8600745e7dba8fdc8bee0342e70f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf52126f2a663efd7cf98d8d10c2233868792484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01f28143f5597d4b1be14f5ec4b48b3b27ca2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3aece66e8a36656e93e4d70b63ee7ae2ac86ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4fd7cfe984bf78fdb13d1eecec186dc95574953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd919af87df2b163e3cdaadbb2cbc61a6128346f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9e5f1648a374762dc73aab1df5d8975156273a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe398490cdc482ef9dc1d3ca2c1821e2262849dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe429fbd3734eafc519841f8289107170fa152777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe489b6709d5a07334349343d1c9119647e3b228b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f08fd3d6bb792fb08e5296e9299375c9331875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c5e0348e3ae8ea393b748da5e890cc1986546f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8c1a80191a8b216facbe6c0deda65ee2c4707a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed33095cf3c88dbc9c2eea3d3bb0eb82f59c8231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee22ca5d241f52490205b86b15bbcedd94fe7c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee90373603d45f81cdb5ed64e19ec76db1a60c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeed91a1ad2a168b6bb83794762e096aec28a36df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ef3a07b7548c5bdf9e120dcfe7222416eb0af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2e36d95f3f06894d3f9baed30b8e0d19c03878c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf40db948e8d701f59da9f7639c7b1f2fd09ea7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c570e80d903b206ed4b74daab0f6e441df75fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7ba2c2b2e3b8c3c327b632e6bdff77840f06b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9bcc202c471819d3487d6f135ab05cf028f8bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6eeca67f6089cd0c2093cdda9397dd8ab13b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb71f34a89355239c94546a8b8fb72ae4f1f2d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbefae5034aa4cc7f3e9ac17e56d761a1bf211d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfff7c86b267f59ab27d18e510b5760cc2b82325d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c4c42ed68584ff02f5a00d5d3d985108a3961c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236678 | `0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 105
- Live contracts: 0
- Unknown liveness contracts: 105
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=105

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0ca32f114e7f6b36894432735c8a17cd217a1116` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x16cbb13ccb1e3d951821ad8cb67667111176b2c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x2e6996adac4f09b16f0b6e0b73fae9af6eab7fa3` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x2f7db9fd9324de6de8a2c657bba1dad8acedff8a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x31a5685a704d40754bceb901b83ede08710c239c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x31dcea29fc68ac8d64b51971bef68f21f1933c13` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x34014943e3332f5bee34c0e88dab970c184a7e3f` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x367a8a0a55f405aa6980e44f3920463abc6bb132` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x3c1c8625131b39b83ca405bb778a432dcfbc3eab` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x3de3d0079e077fff801b03e0c5a2bfa557db07f7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x43ddceb3301813c38b65318ba96b3b1dc3bec7f8` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x43e606cc92194528fae829e2e23abf0fdc40bd41` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x460921251b7bc4fadec1b050d7435b95bb1f37a7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x52a8a8362ac83d22a52cf01c822a94504630c7bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x52a8d617b63db1235cc957c4b97439c2d0a6aac2` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x52f32d03d10865c0e8da651328114ff1773d1e1e` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x53d19975a5b42049213cac544efed34cc2d30656` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x566a7b65f506a2eb27e4b459f8f69e91c9e4a65c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x569f359497dd825c0450abf54d92d0570abc685c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x57545f06b4fecb5542ff99c14ccc5285d7422eb7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x59c73e12f09ed100469181c16affdafe0e4e1742` | non_address_book | unknown | unknown | unverified | n/a | `0x9a1f4408252d524419c2d8ccb4845e47799c1376` |
| unverified unclassified | UnnamedContract<br>`0x5dd4ba9f0e7b30eb68057382c846d70830003a3e` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x635e2d90a65be82b8db92e66128bdd106a068780` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x6401999437fb8d6af9df5adefe10d87f2af3ec7d` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x656eb6ea018f4b2e37b3a7b6561a74f1f62432e7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x66e8d8e1ba5cfadb32df6cc0b45ea05cc3d7201e` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x66ef0906dfb355351e644b0b4005f4ff6e6cfa19` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x68e77301545af8e0ab52b6828f5022a10844aec2` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x69105c2faa3c0ac14bfd7cdc18e69c3ec82a696a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x6c38222f46008f933a2c6730e22fe7c519a1639d` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x6f31eee99cd77477cd3d8e61e231c952a5eea242` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x6f8591f945763d6e5b42fed3a425c957a1fee00c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x70002ee831a5e7f4229aa2c14e7a3b5ccf272cfc` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x7ade622936fb71dce65a120e01c11a647304ac7c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x7c22296779b865ec498fbe3cd00b35a4b9365d9f` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x7dd14bf8a910e24ce72a709ab735fb01065274af` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x7ed238e5d846b23ed5466244e792e8368b81ddf7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x81c38a862f1e0b09d1e15e1456159ea59d38a3f5` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x856736dff1579dde3e35b278432c857cb55bc407` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x85a5f0cc5051eb0426ff4d7227d465b499a15904` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x869c3981db4f89c65bdb997021bd07c1a962ce59` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x8abd79b6ee78bedb4a67d4f789345be95564550d` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x8dc35734add740d36fefb41c057975dd3facff3a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x90378c1029d7d39c956dcc9ce757f0348b9e43b9` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x91ddb29c155ee34337714e51b62f8f84f6b49d81` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x960e1155741108c85a9bb554f79165df939e66bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x97b917f5385c9585f886d066d8f0d4cc0c22a28d` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x9823d24ce9af8c86b37098c7ca016a6e7d98e577` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x982d49c4ee1b60ddd9f45e642eb45d9855811258` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x9ce590429d9bb40eac7eec5b6f2afa93213528c3` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa0aa9dd11c6a770cebb4772728538648f2de0f82` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa32dc5e764a962fb1a09d6924091f4a338393df8` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa6bf7bec6f5f276faf83bd701b688e30fdd9b122` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa703ffe45007c569beb16b0230d41402e13a1b4c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa82e59767b855e5f4d0033cdc8573ac09a6ef1c3` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa8edcf6d5807a07be9d3c6fd7f7588ecbcf0d0d6` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xa9bdd9a805005761f5cabafd0f5c442523e28e29` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xad9202cd9d2f750360cc98e28b13126ab208f0ef` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xafa01c812b622183eaa4d6a76d5321576423066b` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xb0c626f9c25418ba16132e5ae33cf54e61f8242f` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xb251a77da5137a6f7776bb51a1193ccef04b68a3` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xb519d7e53a466633d0b10db209a68b8877945b83` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xb567c928532aacd93d6c123f83a065f35432ab04` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xb768bcaa908f2356a710d4ca3cddec346fc1b776` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xb7ecd275692cd62537ce426197b21bff8a34e215` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xbd0243033315c5531c6d87f0e3a824afe85494ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xbd478fcb05ada3bd3eb51d52269211f833fba472` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xbeeb12ae26183b5387f66d78243acfa9313301dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc109c98f34e01eaff2c4c60a208f86e7b6ebed4f` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc140cf7ac87d726a6c20b91dc0c2bd046b61b719` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc1f76f5f8cab297a096aec245b28b70b8822bfa4` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc77730e01e5e2cb96aab9f954b64f209c7ac3d2b` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc84577a366bdc6ace161388dace77ff0a8958b9a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc93712d85c71ad3b494d2bd8bdcdabc7caed7c2d` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xc958f05dcb9f7961003016767124b06575af8260` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xca8a30d002b51090d8631dcc945afc54eed3eab3` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xcb002197b5d4a178f84db028d7093a3fc3ff7ec1` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xceaaa7fe8d80fcf24739873f85ed33f575128bfa` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xcedb1cabfcb8600745e7dba8fdc8bee0342e70f7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xcf52126f2a663efd7cf98d8d10c2233868792484` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xd01f28143f5597d4b1be14f5ec4b48b3b27ca2a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xd3aece66e8a36656e93e4d70b63ee7ae2ac86ebf` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xd4fd7cfe984bf78fdb13d1eecec186dc95574953` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xd919af87df2b163e3cdaadbb2cbc61a6128346f9` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xda9e5f1648a374762dc73aab1df5d8975156273a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xe398490cdc482ef9dc1d3ca2c1821e2262849dd5` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xe429fbd3734eafc519841f8289107170fa152777` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xe489b6709d5a07334349343d1c9119647e3b228b` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xe8f08fd3d6bb792fb08e5296e9299375c9331875` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xe9c5e0348e3ae8ea393b748da5e890cc1986546f` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xea8c1a80191a8b216facbe6c0deda65ee2c4707a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xed33095cf3c88dbc9c2eea3d3bb0eb82f59c8231` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xee22ca5d241f52490205b86b15bbcedd94fe7c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xee90373603d45f81cdb5ed64e19ec76db1a60c35` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xf0ef3a07b7548c5bdf9e120dcfe7222416eb0af2` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xf2e36d95f3f06894d3f9baed30b8e0d19c03878c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xf40db948e8d701f59da9f7639c7b1f2fd09ea7fa` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xf4c570e80d903b206ed4b74daab0f6e441df75fb` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xf7ba2c2b2e3b8c3c327b632e6bdff77840f06b34` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xf9bcc202c471819d3487d6f135ab05cf028f8bf7` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xfa6eeca67f6089cd0c2093cdda9397dd8ab13b48` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xfb71f34a89355239c94546a8b8fb72ae4f1f2d57` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xfbefae5034aa4cc7f3e9ac17e56d761a1bf211d4` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0xfff7c86b267f59ab27d18e510b5760cc2b82325d` | non_address_book | unknown | unknown | unverified | n/a | `0xd0e0bfd1cd4f7a7a4c79a51ae60c5e9a1fb8a9ad` |
| unverified unclassified | UnnamedContract<br>`0x88c4c42ed68584ff02f5a00d5d3d985108a3961c` | non_address_book | unknown | unknown | unverified | n/a | `0x9a1f4408252d524419c2d8ccb4845e47799c1376` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95` | ContractOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc3f2b827a1176641022a9369c483b6faa2cb6f3` | EdelZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x349fa7e2a00fd64855713cf9b11e3c4c0232082c` | ERC4626EdelWrapperGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ff6bac9fedfa774060c880122bad2b607ba8a4d` | PoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 111 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
