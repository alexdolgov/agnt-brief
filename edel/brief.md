# Agentic Audit Brief: Edel

## Project Overview

- Project: Edel (`edel`)
- Website: [https://www.edel.finance/](https://www.edel.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.333Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 53 unique implementations (53 raw deployments)
- DeFi Llama TVL: $1,743,686.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 53 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 19 ERC20 tokens, 4 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on aave.

### Architecture

The protocol comprises 2 functional families. Its contracts share 19 common project-authored base contract(s) (versionedinitializable, scaledbalancetokenbase, mintableincentivizederc20). Dominant framework: aave.

## Fork Lineage

This project reuses audited code from **Spark** (`spark`) in the ACLManager, PoolConfigurator, RewardsController subsystem.
16 audits inherited from `spark`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 53 (53 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/50 (8.0%)
- Deployed-live implementations: 53 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/53
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 53
- Raw deployments: 53
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 2 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.0% (ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 4 | 7.5% | n/a |
| ChainSecurity | Tier 1 | 4 | 7.5% | 2026-05 |
| OpenZeppelin | Tier 1 | 4 | 7.5% | n/a |
| PeckShield | Tier 2 | 4 | 7.5% | n/a |
| Sigma Prime | Tier 2 | 4 | 7.5% | 2023-04 |
| Spearbit | Tier 1 | 4 | 7.5% | 2026-05 |
| Trail of Bits | Tier 1 | 4 | 7.5% | n/a |
| yAudit | Tier 2 | 4 | 7.5% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ACLManager | unknown | ethereum | n/a | [`0x0b8493...c6fb64`](./contracts/ethereum-1/0x0b8493f5c3e335602557c4684e46502c43c6fb64/) | ✅ Audited |
| PoolConfigurator | unknown | ethereum | n/a | [`0x861381...a3562a`](./contracts/ethereum-1/0x861381d4955d3fae194e9d60fb3233f22aa3562a/) | ✅ Audited |
| ReservesSetupHelper | unknown | ethereum | n/a | [`0x2511bd...c90303`](./contracts/ethereum-1/0x2511bda9c038ad1a82f7d283c5df72b6cfc90303/) | ✅ Audited |
| RewardsController | unknown | ethereum | n/a | [`0x28d723...11653d`](./contracts/ethereum-1/0x28d7231fcfcc2ecb512cbe07a4b5fd9e9911653d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | ethereum | n/a | [`0x03e523...834cc3`](./contracts/ethereum-1/0x03e5235753880491b1d46c44fb44787628834cc3/) | ⚠️ Unaudited |
| BorrowLogic | unknown | ethereum | n/a | [`0x69193a...de1c8e`](./contracts/ethereum-1/0x69193ab664dfb61ef9093fdc9ef229d560de1c8e/) | ⚠️ Unaudited |
| BridgeLogic | unknown | ethereum | n/a | [`0x5d61e0...8ae526`](./contracts/ethereum-1/0x5d61e0b36b9419bcbbf7e32eb6b49c53188ae526/) | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | ethereum | n/a | [`0x4eb307...30425c`](./contracts/ethereum-1/0x4eb30706831854b78bca2472952f84d92e30425c/) | ⚠️ Unaudited |
| ContractOne | unknown | base | n/a | [`0xfb31f8...2ccc95`](./contracts/base-8453/0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95/) | ⚠️ Unaudited |
| ContractOneOFT | unknown | ethereum | n/a | [`0x88c4c4...a3961c`](./contracts/ethereum-1/0x88c4c42ed68584ff02f5a00d5d3d985108a3961c/) | ⚠️ Unaudited |
| DataStreamsConsumer | unknown | ethereum | n/a | [`0x8f4fe9...8848dd`](./contracts/ethereum-1/0x8f4fe9fbc38a5f87862be4be13264039b28848dd/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | ethereum | n/a | [`0x2c05f8...f236b8`](./contracts/ethereum-1/0x2c05f8a12bb64ea7fa3ca98dcddb60b43bf236b8/) | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | ethereum | n/a | [`0x5e11a4...df6161`](./contracts/ethereum-1/0x5e11a40ba857e3c24c07798f2cf386b0d2df6161/) | ⚠️ Unaudited |
| EdelStreams_XStocks | unknown | ethereum | n/a | [`0x135369...790116`](./contracts/ethereum-1/0x13536966973f5f463918cef7cd6e1545cd790116/) | ⚠️ Unaudited |
| EdelWrappedXStocksAdapter | unknown | ethereum | n/a | [`0x74e9b9...3efa71`](./contracts/ethereum-1/0x74e9b93b8ad0f43f1dd0bca596ab6cce663efa71/) | ⚠️ Unaudited |
| EdelZap | unknown | ethereum | n/a | [`0xfc3f2b...2cb6f3`](./contracts/ethereum-1/0xfc3f2b827a1176641022a9369c483b6faa2cb6f3/) | ⚠️ Unaudited |
| EmissionManager | unknown | ethereum | n/a | [`0x82ac3b...056789`](./contracts/ethereum-1/0x82ac3babec0050c970d415854c8360b278056789/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | n/a | [`0x119505...99cf5e`](./contracts/ethereum-1/0x119505b31d369d5cf27c149a0d132d8cdd99cf5e/) | ⚠️ Unaudited |
| ERC4626EdelWrapperGateway | unknown | ethereum | n/a | [`0x349fa7...32082c`](./contracts/ethereum-1/0x349fa7e2a00fd64855713cf9b11e3c4c0232082c/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | ethereum | n/a | [`0x245f4a...7f121d`](./contracts/ethereum-1/0x245f4a173dd1e40017b17011710f5a5c467f121d/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x6803ac...262a99`](./contracts/ethereum-1/0x6803ac1ad765a6d03a52b7b89302acf66f262a99/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x72fc03...73e971`](./contracts/ethereum-1/0x72fc034dc80f4fdf5436c2772e844170ca73e971/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x3eeeb3...67faa6`](./contracts/ethereum-1/0x3eeeb3cd20f844a578807fc457388ceb9a67faa6/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | ethereum | n/a | [`0x38c14f...195cb2`](./contracts/ethereum-1/0x38c14f1091947572f592ca4de13462a4f5195cb2/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MockAggregator | unknown | ethereum | n/a | [`0x4455e3...664df8`](./contracts/ethereum-1/0x4455e3f74adbe89d46e4ba1ef3231f0695664df8/) | ⚠️ Unaudited |
| OndoAggregator | unknown | ethereum | n/a | [`0x07c6a2...7497c2`](./contracts/ethereum-1/0x07c6a25739ffe02b1dae12502632126ffa7497c2/) | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | unknown | ethereum | n/a | [`0x56149c...c297d5`](./contracts/ethereum-1/0x56149c159544b23530ff772244f9011dcec297d5/) | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapter | unknown | ethereum | n/a | [`0x1123a0...97be75`](./contracts/ethereum-1/0x1123a070386e131db934b4136b1219da7e97be75/) | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapterV3 | unknown | ethereum | n/a | [`0xe1559d...639d2e`](./contracts/ethereum-1/0xe1559d61af153ce8511dd2a1afb5ca92d7639d2e/) | ⚠️ Unaudited |
| ParaSwapRepayAdapter | unknown | ethereum | n/a | [`0x0d123e...4e6c1f`](./contracts/ethereum-1/0x0d123e921ec8810699dcb8c77a77d159064e6c1f/) | ⚠️ Unaudited |
| ParaSwapRepayAdapterV3 | unknown | ethereum | n/a | [`0xa7d7f1...d7df18`](./contracts/ethereum-1/0xa7d7f1b7d28c23bfe442e59a2a0d91b7ddd7df18/) | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapter | unknown | ethereum | n/a | [`0x243aec...0fafe7`](./contracts/ethereum-1/0x243aecbd7964ffda26c3c8e66f175853a10fafe7/) | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapterV3 | unknown | ethereum | n/a | [`0x465289...fb9c99`](./contracts/ethereum-1/0x465289527cc6f5946bbfc87442cbfbbd69fb9c99/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0xc87ed0...924637`](./contracts/ethereum-1/0xc87ed0c515ffd27474ccfc05f48ac206d4924637/) | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | ethereum | n/a | [`0x7ff6ba...ba8a4d`](./contracts/ethereum-1/0x7ff6bac9fedfa774060c880122bad2b607ba8a4d/) | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | ethereum | n/a | [`0x2aa5c4...dd406b`](./contracts/ethereum-1/0x2aa5c4c61a25c50d96cfcc325de62fa19bdd406b/) | ⚠️ Unaudited |
| PoolLogic | unknown | ethereum | n/a | [`0x10bc93...2c6542`](./contracts/ethereum-1/0x10bc9308c6045946918aebe38a5c9ca8cd2c6542/) | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | ethereum | n/a | [`0x2970e7...0835f9`](./contracts/ethereum-1/0x2970e7ea5e74052e99455931931840d51c0835f9/) | ⚠️ Unaudited |
| StableDebtToken | unknown | ethereum | n/a | [`0x4f8f29...f0d5e0`](./contracts/ethereum-1/0x4f8f2946a09a7137ea72f7f79261bf8f77f0d5e0/) | ⚠️ Unaudited |
| SupplyLogic | unknown | ethereum | n/a | [`0x6e4e96...d54b18`](./contracts/ethereum-1/0x6e4e969ec8ce68e8b3e22ec71ef30791ecd54b18/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | ethereum | n/a | [`0xb5ace7...fe8fb4`](./contracts/ethereum-1/0xb5ace7f72413fd391300c45b4440e5f651fe8fb4/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | ethereum | n/a | [`0x56e957...9bb158`](./contracts/ethereum-1/0x56e9577255b7e4289b78c8c9bdef20abf69bb158/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | ethereum | n/a | [`0x0df742...db2d15`](./contracts/ethereum-1/0x0df7427cd2d104ec6c452aaeac7b13b1addb2d15/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0x38554e...4c9a54`](./contracts/ethereum-1/0x38554e6cc65637a5d4b6fb8daefb7cc7254c9a54/) | ⚠️ Unaudited |
| WrappedBackedTokenImplementation | unknown | ethereum | n/a | [`0x0b2456...92780c`](./contracts/ethereum-1/0x0b2456017c5df2dfc0289740c4b352049892780c/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | ethereum | n/a | [`0x3a233e...feae6a`](./contracts/ethereum-1/0x3a233ecd6ff9e0b20fad37bf827937d2f7feae6a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [aave.com/security](https://aave.com/security) | yAudit | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [14-01-2022_PeckShield_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [20260514-cantina-report-sky-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260514-cantina-report-sky-xchain-ssr-oracle.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [v120-cantina-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-cantina-audit.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [v120-chainsecurity-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [20260504-cantina-report-sky-stusdsmom.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260504-cantina-report-sky-stusdsmom.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [v100-cantina-audit.pdf](https://github.com/sparkdotfi/spark-savings-intents/blob/master/audits/v100-cantina-audit.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [v100-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-savings-intents/blob/master/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |
| [v160-cantina-audit.pdf](https://github.com/sparkdotfi/sparklend-advanced/blob/master/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2026-02 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x03e523...834cc3`](./contracts/ethereum-1/0x03e5235753880491b1d46c44fb44787628834cc3/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69193a...de1c8e`](./contracts/ethereum-1/0x69193ab664dfb61ef9093fdc9ef229d560de1c8e/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d61e0...8ae526`](./contracts/ethereum-1/0x5d61e0b36b9419bcbbf7e32eb6b49c53188ae526/) | BridgeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eb307...30425c`](./contracts/ethereum-1/0x4eb30706831854b78bca2472952f84d92e30425c/) | ConfiguratorLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfb31f8...2ccc95`](./contracts/base-8453/0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95/) | ContractOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c4c4...a3961c`](./contracts/ethereum-1/0x88c4c42ed68584ff02f5a00d5d3d985108a3961c/) | ContractOneOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f4fe9...8848dd`](./contracts/ethereum-1/0x8f4fe9fbc38a5f87862be4be13264039b28848dd/) | DataStreamsConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c05f8...f236b8`](./contracts/ethereum-1/0x2c05f8a12bb64ea7fa3ca98dcddb60b43bf236b8/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e11a4...df6161`](./contracts/ethereum-1/0x5e11a40ba857e3c24c07798f2cf386b0d2df6161/) | DelegationAwareAToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x135369...790116`](./contracts/ethereum-1/0x13536966973f5f463918cef7cd6e1545cd790116/) | EdelStreams_XStocks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74e9b9...3efa71`](./contracts/ethereum-1/0x74e9b93b8ad0f43f1dd0bca596ab6cce663efa71/) | EdelWrappedXStocksAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc3f2b...2cb6f3`](./contracts/ethereum-1/0xfc3f2b827a1176641022a9369c483b6faa2cb6f3/) | EdelZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ac3b...056789`](./contracts/ethereum-1/0x82ac3babec0050c970d415854c8360b278056789/) | EmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x119505...99cf5e`](./contracts/ethereum-1/0x119505b31d369d5cf27c149a0d132d8cdd99cf5e/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x349fa7...32082c`](./contracts/ethereum-1/0x349fa7e2a00fd64855713cf9b11e3c4c0232082c/) | ERC4626EdelWrapperGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x245f4a...7f121d`](./contracts/ethereum-1/0x245f4a173dd1e40017b17011710f5a5c467f121d/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38c14f...195cb2`](./contracts/ethereum-1/0x38c14f1091947572f592ca4de13462a4f5195cb2/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4455e3...664df8`](./contracts/ethereum-1/0x4455e3f74adbe89d46e4ba1ef3231f0695664df8/) | MockAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c6a2...7497c2`](./contracts/ethereum-1/0x07c6a25739ffe02b1dae12502632126ffa7497c2/) | OndoAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56149c...c297d5`](./contracts/ethereum-1/0x56149c159544b23530ff772244f9011dcec297d5/) | ParaSwapDebtSwapAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1123a0...97be75`](./contracts/ethereum-1/0x1123a070386e131db934b4136b1219da7e97be75/) | ParaSwapLiquiditySwapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1559d...639d2e`](./contracts/ethereum-1/0xe1559d61af153ce8511dd2a1afb5ca92d7639d2e/) | ParaSwapLiquiditySwapAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d123e...4e6c1f`](./contracts/ethereum-1/0x0d123e921ec8810699dcb8c77a77d159064e6c1f/) | ParaSwapRepayAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7d7f1...d7df18`](./contracts/ethereum-1/0xa7d7f1b7d28c23bfe442e59a2a0d91b7ddd7df18/) | ParaSwapRepayAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243aec...0fafe7`](./contracts/ethereum-1/0x243aecbd7964ffda26c3c8e66f175853a10fafe7/) | ParaSwapWithdrawSwapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465289...fb9c99`](./contracts/ethereum-1/0x465289527cc6f5946bbfc87442cbfbbd69fb9c99/) | ParaSwapWithdrawSwapAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc87ed0...924637`](./contracts/ethereum-1/0xc87ed0c515ffd27474ccfc05f48ac206d4924637/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ff6ba...ba8a4d`](./contracts/ethereum-1/0x7ff6bac9fedfa774060c880122bad2b607ba8a4d/) | PoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aa5c4...dd406b`](./contracts/ethereum-1/0x2aa5c4c61a25c50d96cfcc325de62fa19bdd406b/) | PoolAddressesProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10bc93...2c6542`](./contracts/ethereum-1/0x10bc9308c6045946918aebe38a5c9ca8cd2c6542/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2970e7...0835f9`](./contracts/ethereum-1/0x2970e7ea5e74052e99455931931840d51c0835f9/) | PullRewardsTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f8f29...f0d5e0`](./contracts/ethereum-1/0x4f8f2946a09a7137ea72f7f79261bf8f77f0d5e0/) | StableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e4e96...d54b18`](./contracts/ethereum-1/0x6e4e969ec8ce68e8b3e22ec71ef30791ecd54b18/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5ace7...fe8fb4`](./contracts/ethereum-1/0xb5ace7f72413fd391300c45b4440e5f651fe8fb4/) | UiIncentiveDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56e957...9bb158`](./contracts/ethereum-1/0x56e9577255b7e4289b78c8c9bdef20abf69bb158/) | UiPoolDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df742...db2d15`](./contracts/ethereum-1/0x0df7427cd2d104ec6c452aaeac7b13b1addb2d15/) | VariableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38554e...4c9a54`](./contracts/ethereum-1/0x38554e6cc65637a5d4b6fb8daefb7cc7254c9a54/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b2456...92780c`](./contracts/ethereum-1/0x0b2456017c5df2dfc0289740c4b352049892780c/) | WrappedBackedTokenImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a233e...feae6a`](./contracts/ethereum-1/0x3a233ecd6ff9e0b20fad37bf827937d2f7feae6a/) | WrappedTokenGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=64

Fork inheritance lineage and inherited audits are included when available.
