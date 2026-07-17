# Agentic Audit Brief: Spark

## Project Overview

- Project: Spark (`spark`)
- Website: [https://app.spark.fi/points/KNQ5HD](https://app.spark.fi/points/KNQ5HD)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.413Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, base, ethereum, optimism, unichain
- Contract surface: 192 unique implementations (192 raw deployments)
- DeFi Llama TVL: $7,893,448,199.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 189 project-authored contract(s) across 6 chain(s); 4 ERC4626 vaults, 16 ERC20 tokens, 15 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 30 common project-authored base contract(s) (aggor, auth, debttokenbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 192; live-surface contracts included: 192 (192 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 101/182 (55.5%)
- Deployed-live implementations: 192 of 192 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 102/192
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 192
- Raw deployments: 192
- Audits discovered: 59 (59 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 39
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 21 fresh, 24 aging, 12 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 102 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 54.9% (Certora, ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 85 | 44.3% | 2026-05 |
| Spearbit | Tier 1 | 50 | 26.0% | 2026-05 |
| Certora | Tier 1 | 46 | 24.0% | 2025-12 |
| ABDK | Tier 2 | 17 | 8.9% | 2022-01 |
| Trail of Bits | Tier 1 | 17 | 8.9% | 2021-11 |
| OpenZeppelin | Tier 1 | 15 | 7.8% | n/a |
| Sigma Prime | Tier 2 | 11 | 5.7% | 2023-04 |
| PeckShield | Tier 2 | 8 | 4.2% | 2022-12 |
| unknown | Tier 2 | 6 | 3.1% | 2024-09 |
| MakerDAO (internal review) | Tier 2 | 2 | 1.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (102)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ACLManager | unknown | ethereum | n/a | [`0xda135cd78a086025bcdc87b038a1c462032b510c`](./contracts/ethereum-1/0xda135cd78a086025bcdc87b038a1c462032b510c/) | ✅ Audited |
| ALMProxy | unknown | ethereum | n/a | [`0x1601843c5e9bc251a3272907010afa41fa18347e`](./contracts/ethereum-1/0x1601843c5e9bc251a3272907010afa41fa18347e/) | ✅ Audited |
| ALMProxyFreezable | unknown | ethereum | n/a | [`0x95bc36638750d9506c00934ea90e6b917daea1f7`](./contracts/ethereum-1/0x95bc36638750d9506c00934ea90e6b917daea1f7/) | ✅ Audited |
| ArbitrumReceiver | unknown | arbitrum | n/a | [`0x212871a1c235892f86cab30e937e18c94aed8474`](./contracts/arbitrum-42161/0x212871a1c235892f86cab30e937e18c94aed8474/) | ✅ Audited |
| AToken | unknown | ethereum | n/a | [`0x212871a1c235892f86cab30e937e18c94aed8474`](./contracts/ethereum-1/0x212871a1c235892f86cab30e937e18c94aed8474/) | ✅ Audited |
| BorrowLogic | unknown | ethereum | n/a | [`0x2634a7554343350f3ff974eb76bcc378c6e05e19`](./contracts/ethereum-1/0x2634a7554343350f3ff974eb76bcc378c6e05e19/) | ✅ Audited |
| BridgeLogic | unknown | ethereum | n/a | [`0x2c54924711e479e639032704146b865e12f0c6d1`](./contracts/ethereum-1/0x2c54924711e479e639032704146b865e12f0c6d1/) | ✅ Audited |
| CapAutomator | unknown | ethereum | n/a | [`0x4c1341636721b8b687647920b2e9481f3ab1f2ee`](./contracts/ethereum-1/0x4c1341636721b8b687647920b2e9481f3ab1f2ee/) | ✅ Audited |
| CappedFallbackRateSource | unknown | ethereum | n/a | [`0xabc99f366d2be1f4e5b8dfc0f561a751dd836246`](./contracts/ethereum-1/0xabc99f366d2be1f4e5b8dfc0f561a751dd836246/) | ✅ Audited |
| CBBTCRatioOracle | unknown | ethereum | n/a | [`0x64b157212c21097002920d57322b671b88dfccbc`](./contracts/ethereum-1/0x64b157212c21097002920d57322b671b88dfccbc/) | ✅ Audited |
| ConfiguratorLogic | unknown | ethereum | n/a | [`0xe10adc43aa2fd72a402e13afd4153ceca14e6e1f`](./contracts/ethereum-1/0xe10adc43aa2fd72a402e13afd4153ceca14e6e1f/) | ✅ Audited |
| DefaultReserveInterestRateStrategy | unknown | ethereum | n/a | [`0x0d56700c90a690d8795d6c148acd94b12932f4e3`](./contracts/ethereum-1/0x0d56700c90a690d8795d6c148acd94b12932f4e3/) | ✅ Audited |
| DSRAuthOracle | unknown | base | n/a | [`0x15acee5f73b36762ab1a6b7c98787b8148447898`](./contracts/base-8453/0x15acee5f73b36762ab1a6b7c98787b8148447898/) | ✅ Audited |
| DSROracleForwarderArbitrumOne | unknown | ethereum | n/a | [`0x1b62fd9bb00b2c730ec7ea3d4c32fccc6be9933f`](./contracts/ethereum-1/0x1b62fd9bb00b2c730ec7ea3d4c32fccc6be9933f/) | ✅ Audited |
| DSROracleForwarderBase | unknown | ethereum | n/a | [`0x66bcacc9e7add388c4254950df59bfec7cc4e6ad`](./contracts/ethereum-1/0x66bcacc9e7add388c4254950df59bfec7cc4e6ad/) | ✅ Audited |
| DSROracleForwarderGnosis | unknown | ethereum | n/a | [`0x35956b98d441edc00cc04c776dbff6ba9884cf27`](./contracts/ethereum-1/0x35956b98d441edc00cc04c776dbff6ba9884cf27/) | ✅ Audited |
| DSROracleForwarderOptimism | unknown | ethereum | n/a | [`0x2f9605751b55dd3414bfd39d7ecac9bc2b45082d`](./contracts/ethereum-1/0x2f9605751b55dd3414bfd39d7ecac9bc2b45082d/) | ✅ Audited |
| DSROracleReceiverArbitrum | unknown | arbitrum | n/a | [`0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17`](./contracts/arbitrum-42161/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/) | ✅ Audited |
| DSROracleReceiverOptimism | unknown | base | n/a | [`0x33a3ab524a43e69f30bfd9ae97d1ec679ff00b64`](./contracts/base-8453/0x33a3ab524a43e69f30bfd9ae97d1ec679ff00b64/) | ✅ Audited |
| DssVestMintable | unknown | ethereum | n/a | [`0x072c31c6c82c466b4b23ca0fdb487080ec1c190d`](./contracts/ethereum-1/0x072c31c6c82c466b4b23ca0fdb487080ec1c190d/) | ✅ Audited |
| EModeLogic | unknown | ethereum | n/a | [`0x1ef5e645fb31a441180e97d074b6fe73e2af5044`](./contracts/ethereum-1/0x1ef5e645fb31a441180e97d074b6fe73e2af5044/) | ✅ Audited |
| Executor | unknown | optimism | n/a | [`0x205216d89a00feb2a73273ceecd297baf89d576d`](./contracts/optimism-10/0x205216d89a00feb2a73273ceecd297baf89d576d/) | ✅ Audited |
| EZETHExchangeRateOracle | unknown | ethereum | n/a | [`0x52e85eb49e07df74c8a9466d2164b4c4ca60014a`](./contracts/ethereum-1/0x52e85eb49e07df74c8a9466d2164b4c4ca60014a/) | ✅ Audited |
| FixedPriceOracle | unknown | ethereum | n/a | [`0x32f5820f1a67419bd46e0f973b85ab0e0f17b62a`](./contracts/ethereum-1/0x32f5820f1a67419bd46e0f973b85ab0e0f17b62a/) | ✅ Audited |
| FlashLoanLogic | unknown | ethereum | n/a | [`0x3b3e6550d6eb18f7a85e62e546b6df475a939a89`](./contracts/ethereum-1/0x3b3e6550d6eb18f7a85e62e546b6df475a939a89/) | ✅ Audited |
| ForeignController | unknown | avalanche | n/a | [`0x0e4c4b62ce87a2862f9ffff29a059afd86f1313b`](./contracts/avalanche-43114/0x0e4c4b62ce87a2862f9ffff29a059afd86f1313b/) | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | base | n/a | [`0x4e65fe4dba92790696d040ac24aa414708f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ✅ Audited |
| LiquidationLogic | unknown | ethereum | n/a | [`0x6aea92693c527bc2c7b3171c6f2598d67d619088`](./contracts/ethereum-1/0x6aea92693c527bc2c7b3171c6f2598d67d619088/) | ✅ Audited |
| LZReceiver | unknown | avalanche | n/a | [`0x5079f43464d7ec7b0eaecb0a883ddd4324e0cd6b`](./contracts/avalanche-43114/0x5079f43464d7ec7b0eaecb0a883ddd4324e0cd6b/) | ✅ Audited |
| MainnetController | unknown | ethereum | n/a | [`0x08c830bc14b52a65e7e62abc7365e1c53933d4bf`](./contracts/ethereum-1/0x08c830bc14b52a65e7e62abc7365e1c53933d4bf/) | ✅ Audited |
| OptimismReceiver | unknown | optimism | n/a | [`0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce`](./contracts/optimism-10/0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce/) | ✅ Audited |
| OTCBuffer | unknown | ethereum | n/a | [`0x1851c64bbfad132cbe75481f1690c381288ea492`](./contracts/ethereum-1/0x1851c64bbfad132cbe75481f1690c381288ea492/) | ✅ Audited |
| Pool | unknown | ethereum | n/a | [`0x5ae329203e00f76891094dcfedd5aca082a50e1b`](./contracts/ethereum-1/0x5ae329203e00f76891094dcfedd5aca082a50e1b/) | ✅ Audited |
| PoolAddressesProvider | unknown | ethereum | n/a | [`0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee`](./contracts/ethereum-1/0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee/) | ✅ Audited |
| PoolAddressesProviderRegistry | unknown | ethereum | n/a | [`0x03cfa0c4622ff84e50e75062683f44c9587e6cc1`](./contracts/ethereum-1/0x03cfa0c4622ff84e50e75062683f44c9587e6cc1/) | ✅ Audited |
| PoolConfigurator | unknown | ethereum | n/a | [`0xca61540ec2ac74e6954fa558b4af836d95ecb91b`](./contracts/ethereum-1/0xca61540ec2ac74e6954fa558b4af836d95ecb91b/) | ✅ Audited |
| PotRateSource | unknown | ethereum | n/a | [`0x62b122a1d1ea2082c47c3fb70e788c168e96afd8`](./contracts/ethereum-1/0x62b122a1d1ea2082c47c3fb70e788c168e96afd8/) | ✅ Audited |
| PSM3 | unknown | base | n/a | [`0x1601843c5e9bc251a3272907010afa41fa18347e`](./contracts/base-8453/0x1601843c5e9bc251a3272907010afa41fa18347e/) | ✅ Audited |
| RateLimits | unknown | arbitrum | n/a | [`0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838`](./contracts/arbitrum-42161/0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838/) | ✅ Audited |
| RateTargetBaseInterestRateStrategy | unknown | ethereum | n/a | [`0x2a961acc1d79e743e479eb4b1473f62d3df07770`](./contracts/ethereum-1/0x2a961acc1d79e743e479eb4b1473f62d3df07770/) | ✅ Audited |
| RateTargetKinkInterestRateStrategy | unknown | ethereum | n/a | [`0x0f1a9a787b4103ef5929121cd9399224c6455dd6`](./contracts/ethereum-1/0x0f1a9a787b4103ef5929121cd9399224c6455dd6/) | ✅ Audited |
| RETHExchangeRateOracle | unknown | ethereum | n/a | [`0x11af58f13419fd3ce4d3a90372200c80bc62f140`](./contracts/ethereum-1/0x11af58f13419fd3ce4d3a90372200c80bc62f140/) | ✅ Audited |
| RETHRatioOracle | unknown | ethereum | n/a | [`0xd0b378da552d06b6d3497e4b5ba2a83418f78d06`](./contracts/ethereum-1/0xd0b378da552d06b6d3497e4b5ba2a83418f78d06/) | ✅ Audited |
| RSETHExchangeRateOracle | unknown | ethereum | n/a | [`0x70942d6b580741cf50a7906f4100063ee037b8eb`](./contracts/ethereum-1/0x70942d6b580741cf50a7906f4100063ee037b8eb/) | ✅ Audited |
| SavingsVaultIntents | unknown | ethereum | n/a | [`0x39f409754d98b2c3b3c9d17646fb15de44ec03e5`](./contracts/ethereum-1/0x39f409754d98b2c3b3c9d17646fb15de44ec03e5/) | ✅ Audited |
| SDAO | unknown | ethereum | n/a | [`0xc20059e0317de91738d13af027dfc4a50781b066`](./contracts/ethereum-1/0xc20059e0317de91738d13af027dfc4a50781b066/) | ✅ Audited |
| SparkArbitrumOne_20250220 | unknown | arbitrum | n/a | [`0x930e7efc310f1e62ff3dfc7b60a8ff06d4046887`](./contracts/arbitrum-42161/0x930e7efc310f1e62ff3dfc7b60a8ff06d4046887/) | ✅ Audited |
| SparkArbitrumOne_20250403 | unknown | arbitrum | n/a | [`0x545eeec8ca599085ce86ada51eb8c0c35af1e9d6`](./contracts/arbitrum-42161/0x545eeec8ca599085ce86ada51eb8c0c35af1e9d6/) | ✅ Audited |
| SparkArbitrumOne_20250417 | unknown | arbitrum | n/a | [`0xab465726a358c004c22bb8136d43716e1936afa6`](./contracts/arbitrum-42161/0xab465726a358c004c22bb8136d43716e1936afa6/) | ✅ Audited |
| SparkAvalanche_20251016 | unknown | avalanche | n/a | [`0x0546efebb465c33a49d3e592b218e0b00fa51bf1`](./contracts/avalanche-43114/0x0546efebb465c33a49d3e592b218e0b00fa51bf1/) | ✅ Audited |
| SparkBase_20241114 | unknown | base | n/a | [`0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838`](./contracts/base-8453/0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838/) | ✅ Audited |
| SparkBase_20250109 | unknown | base | n/a | [`0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee`](./contracts/base-8453/0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee/) | ✅ Audited |
| SparkBase_20250220 | unknown | base | n/a | [`0x1e59bbdbd97dda3e72a65061ecefef428f5efb9a`](./contracts/base-8453/0x1e59bbdbd97dda3e72a65061ecefef428f5efb9a/) | ✅ Audited |
| SparkBase_20250403 | unknown | base | n/a | [`0x43d32d791c35d34d28fa8c33cfb8ca3c6ae0d02d`](./contracts/base-8453/0x43d32d791c35d34d28fa8c33cfb8ca3c6ae0d02d/) | ✅ Audited |
| SparkBase_20251211 | unknown | base | n/a | [`0x2c07e5e977b6db3a2a776028158359fce212f04a`](./contracts/base-8453/0x2c07e5e977b6db3a2a776028158359fce212f04a/) | ✅ Audited |
| SparkEthereum_20241114 | unknown | ethereum | n/a | [`0x8a3aaeac45cf3d76cf82b0e4c63ccfa8c72bdca7`](./contracts/ethereum-1/0x8a3aaeac45cf3d76cf82b0e4c63ccfa8c72bdca7/) | ✅ Audited |
| SparkEthereum_20250109 | unknown | ethereum | n/a | [`0x7fb2967cdc6816dc508f35c5a6cb035c8b6507ec`](./contracts/ethereum-1/0x7fb2967cdc6816dc508f35c5a6cb035c8b6507ec/) | ✅ Audited |
| SparkEthereum_20250220 | unknown | ethereum | n/a | [`0x9eaa8d72bd731be8ed71d768a912f6832492071e`](./contracts/ethereum-1/0x9eaa8d72bd731be8ed71d768a912f6832492071e/) | ✅ Audited |
| SparkEthereum_20250403 | unknown | ethereum | n/a | [`0x6b34c0e12c84338f494effbf49534745dde2f24b`](./contracts/ethereum-1/0x6b34c0e12c84338f494effbf49534745dde2f24b/) | ✅ Audited |
| SparkEthereum_20250417 | unknown | ethereum | n/a | [`0xa8ff99ac98fc0c3322f639a9591257518514455c`](./contracts/ethereum-1/0xa8ff99ac98fc0c3322f639a9591257518514455c/) | ✅ Audited |
| SparkEthereum_20250515 | unknown | ethereum | n/a | [`0x08aba599bd82e4de7b78516077cdf1cb24788cc1`](./contracts/ethereum-1/0x08aba599bd82e4de7b78516077cdf1cb24788cc1/) | ✅ Audited |
| SparkEthereum_20250529 | unknown | ethereum | n/a | [`0x3968a022d955bbb7927cc011a48601b65a33f346`](./contracts/ethereum-1/0x3968a022d955bbb7927cc011a48601b65a33f346/) | ✅ Audited |
| SparkEthereum_20250612 | unknown | ethereum | n/a | [`0xf485e3351a4c3d7d1f89b1842af625fd0dfb90c8`](./contracts/ethereum-1/0xf485e3351a4c3d7d1f89b1842af625fd0dfb90c8/) | ✅ Audited |
| SparkEthereum_20250626 | unknown | ethereum | n/a | [`0x74e1ba852c864d689562b5977eedcb127fde0c9f`](./contracts/ethereum-1/0x74e1ba852c864d689562b5977eedcb127fde0c9f/) | ✅ Audited |
| SparkEthereum_20250724 | unknown | ethereum | n/a | [`0x41edbf09cd2f272175c7facb857b767859543d15`](./contracts/ethereum-1/0x41edbf09cd2f272175c7facb857b767859543d15/) | ✅ Audited |
| SparkEthereum_20250807 | unknown | ethereum | n/a | [`0xb12057500eb57c3c43b91171d52b6db141cca01a`](./contracts/ethereum-1/0xb12057500eb57c3c43b91171d52b6db141cca01a/) | ✅ Audited |
| SparkEthereum_20250821 | unknown | ethereum | n/a | [`0xa57d3ea3ababd57ed1a1d91cd998a68fb490b95e`](./contracts/ethereum-1/0xa57d3ea3ababd57ed1a1d91cd998a68fb490b95e/) | ✅ Audited |
| SparkEthereum_20250904 | unknown | ethereum | n/a | [`0xe7782847ef825ff37662ef2f426f2d8c5d904121`](./contracts/ethereum-1/0xe7782847ef825ff37662ef2f426f2d8c5d904121/) | ✅ Audited |
| SparkEthereum_20250918 | unknown | ethereum | n/a | [`0x7b28f4bdd7208fe80916ebc58611eb72fb6a09ed`](./contracts/ethereum-1/0x7b28f4bdd7208fe80916ebc58611eb72fb6a09ed/) | ✅ Audited |
| SparkEthereum_20251002 | unknown | ethereum | n/a | [`0x41579864efb2b32d787bba76d64dca4a3acdfef9`](./contracts/ethereum-1/0x41579864efb2b32d787bba76d64dca4a3acdfef9/) | ✅ Audited |
| SparkEthereum_20251030 | unknown | ethereum | n/a | [`0x71059eaab41d6fda3e916bc9d76cb44e96818654`](./contracts/ethereum-1/0x71059eaab41d6fda3e916bc9d76cb44e96818654/) | ✅ Audited |
| SparkEthereum_20251113 | unknown | ethereum | n/a | [`0x63fa202a7020e8ee0837196783f0fb768cbfe2f1`](./contracts/ethereum-1/0x63fa202a7020e8ee0837196783f0fb768cbfe2f1/) | ✅ Audited |
| SparkEthereum_20251127 | unknown | ethereum | n/a | [`0x2c9e477313ec440fe4ab6c98529da2793e6890f2`](./contracts/ethereum-1/0x2c9e477313ec440fe4ab6c98529da2793e6890f2/) | ✅ Audited |
| SparkEthereum_20251211 | unknown | ethereum | n/a | [`0x2cb9fa737603cb650d4919937a36ea732acfe963`](./contracts/ethereum-1/0x2cb9fa737603cb650d4919937a36ea732acfe963/) | ✅ Audited |
| SparkEthereum_20260129 | unknown | ethereum | n/a | [`0xa091bed493c27efaa4d6e06e32684eca0325adca`](./contracts/ethereum-1/0xa091bed493c27efaa4d6e06e32684eca0325adca/) | ✅ Audited |
| SparkEthereum_20260212 | unknown | ethereum | n/a | [`0x42db2a32c5f99034c90dac07bf790f738b127e93`](./contracts/ethereum-1/0x42db2a32c5f99034c90dac07bf790f738b127e93/) | ✅ Audited |
| SparkEthereum_20260226 | unknown | ethereum | n/a | [`0xf655f6e7843685bfd8cfa4523d43f2b9922bbd77`](./contracts/ethereum-1/0xf655f6e7843685bfd8cfa4523d43f2b9922bbd77/) | ✅ Audited |
| SparkEthereum_20260312 | unknown | ethereum | n/a | [`0x9ffadcf3afb43c1af4ec1d9b6b0405f1fbcf94d6`](./contracts/ethereum-1/0x9ffadcf3afb43c1af4ec1d9b6b0405f1fbcf94d6/) | ✅ Audited |
| SparkEthereum_20260326 | unknown | ethereum | n/a | [`0xe854ce4a58ec1baf997cca483de26b0935ae0f45`](./contracts/ethereum-1/0xe854ce4a58ec1baf997cca483de26b0935ae0f45/) | ✅ Audited |
| SparkEthereum_20260423 | unknown | ethereum | n/a | [`0x160158d029697fea486df8968f3be17a706df0f0`](./contracts/ethereum-1/0x160158d029697fea486df8968f3be17a706df0f0/) | ✅ Audited |
| SparkEthereum_20260507 | unknown | ethereum | n/a | [`0x5c18f92818c955e15892506cfb0d9394c213ab8a`](./contracts/ethereum-1/0x5c18f92818c955e15892506cfb0d9394c213ab8a/) | ✅ Audited |
| SparkOptimism_20250529 | unknown | optimism | n/a | [`0x08aba599bd82e4de7b78516077cdf1cb24788cc1`](./contracts/optimism-10/0x08aba599bd82e4de7b78516077cdf1cb24788cc1/) | ✅ Audited |
| SparkOptimism_20251030 | unknown | optimism | n/a | [`0x45d91340b3b7b96985a72b5c678f7d9e8d664b62`](./contracts/optimism-10/0x45d91340b3b7b96985a72b5c678f7d9e8d664b62/) | ✅ Audited |
| SparkOptimism_20251127 | unknown | optimism | n/a | [`0x2f66666fb60c038f10948e9645ca969bb397e2d5`](./contracts/optimism-10/0x2f66666fb60c038f10948e9645ca969bb397e2d5/) | ✅ Audited |
| SparkUnichain_20251030 | unknown | unichain | n/a | [`0x9c19c1e58a98a23e1363977c08085fd5dae92af0`](./contracts/unichain-130/0x9c19c1e58a98a23e1363977c08085fd5dae92af0/) | ✅ Audited |
| SparkUnichain_20251127 | unknown | unichain | n/a | [`0x41edbf09cd2f272175c7facb857b767859543d15`](./contracts/unichain-130/0x41edbf09cd2f272175c7facb857b767859543d15/) | ✅ Audited |
| SSRAuthOracle | unknown | unichain | n/a | [`0x08aba599bd82e4de7b78516077cdf1cb24788cc1`](./contracts/unichain-130/0x08aba599bd82e4de7b78516077cdf1cb24788cc1/) | ✅ Audited |
| SSRBalancerRateProviderAdapter | unknown | unichain | n/a | [`0x92d7b06e5844e67174ae9e86bdcb06428482ddf9`](./contracts/unichain-130/0x92d7b06e5844e67174ae9e86bdcb06428482ddf9/) | ✅ Audited |
| SSRChainlinkRateProviderAdapter | unknown | unichain | n/a | [`0xc40611ac4fff8572dc5f02a238176edcf15ea7ba`](./contracts/unichain-130/0xc40611ac4fff8572dc5f02a238176edcf15ea7ba/) | ✅ Audited |
| SSROracleForwarderArbitrum | unknown | ethereum | n/a | [`0x1a229adbac83a948226783f2a3257b52006247d5`](./contracts/ethereum-1/0x1a229adbac83a948226783f2a3257b52006247d5/) | ✅ Audited |
| SSROracleForwarderOptimism | unknown | ethereum | n/a | [`0x217844cf0a39b8fdab388047a9361c15fb9de3bf`](./contracts/ethereum-1/0x217844cf0a39b8fdab388047a9361c15fb9de3bf/) | ✅ Audited |
| SSRRateSource | unknown | ethereum | n/a | [`0x57027b6262083e3ac3c8b2eb99f7e8005f669973`](./contracts/ethereum-1/0x57027b6262083e3ac3c8b2eb99f7e8005f669973/) | ✅ Audited |
| StableDebtToken | unknown | ethereum | n/a | [`0x026a5b6114431d8f3ef2fa0e1b2edddcca9c540e`](./contracts/ethereum-1/0x026a5b6114431d8f3ef2fa0e1b2edddcca9c540e/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | [`0x00ee9a7624324c0b6cd948f022d584a80f25fec9`](./contracts/ethereum-1/0x00ee9a7624324c0b6cd948f022d584a80f25fec9/) | ✅ Audited |
| SubProxy | unknown | ethereum | n/a | [`0x3300f198988e4c9c63f75df86de36421f06af8c4`](./contracts/ethereum-1/0x3300f198988e4c9c63f75df86de36421f06af8c4/) | ✅ Audited |
| SubProxy | unknown | ethereum | n/a | [`0x643de481d5ea4db0f1b2e5101796824d8854a65c`](./contracts/ethereum-1/0x643de481d5ea4db0f1b2e5101796824d8854a65c/) | ✅ Audited |
| SupplyLogic | unknown | ethereum | n/a | [`0x1d5b30d7c74f605c9f22d29f8bb80de3ba853a9b`](./contracts/ethereum-1/0x1d5b30d7c74f605c9f22d29f8bb80de3ba853a9b/) | ✅ Audited |
| VariableDebtToken | unknown | ethereum | n/a | [`0x2b05f8e1cacc6974fd79a673a341fe1f58d27266`](./contracts/ethereum-1/0x2b05f8e1cacc6974fd79a673a341fe1f58d27266/) | ✅ Audited |
| VestedRewardsDistribution | unknown | ethereum | n/a | [`0x09b287963668b9565ca1aa11a21ec4b973d4fc0f`](./contracts/ethereum-1/0x09b287963668b9565ca1aa11a21ec4b973d4fc0f/) | ✅ Audited |
| WEETHExchangeRateOracle | unknown | ethereum | n/a | [`0x28897036f8459bfba886083dd6b4ce4d2f14a57f`](./contracts/ethereum-1/0x28897036f8459bfba886083dd6b4ce4d2f14a57f/) | ✅ Audited |
| WEETHRatioOracle | unknown | ethereum | n/a | [`0x4c805fd3c64b79840d36813fc90c165bf77bb7e4`](./contracts/ethereum-1/0x4c805fd3c64b79840d36813fc90c165bf77bb7e4/) | ✅ Audited |
| WSTETHExchangeRateOracle | unknown | ethereum | n/a | [`0xf77e132799dbb0d83a4fb7df10da04849340311a`](./contracts/ethereum-1/0xf77e132799dbb0d83a4fb7df10da04849340311a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aggor_ETH_USD_2 | unknown | ethereum | n/a | [`0x00480cd3ed33de45555410ba71b2f932a14b1cf2`](./contracts/ethereum-1/0x00480cd3ed33de45555410ba71b2f932a14b1cf2/) | ⚠️ Unaudited |
| Aggor_ETH_USD_3 | unknown | ethereum | n/a | [`0x69115a2826eb47fe9dfd1d5ca8d8642697c8b68a`](./contracts/ethereum-1/0x69115a2826eb47fe9dfd1d5ca8d8642697c8b68a/) | ⚠️ Unaudited |
| Aggor_ETH_USD_4 | unknown | ethereum | n/a | [`0xb20a1374efcafa32f701ab14316fa2e5b3400ed5`](./contracts/ethereum-1/0xb20a1374efcafa32f701ab14316fa2e5b3400ed5/) | ⚠️ Unaudited |
| AllocatorBuffer | unknown | ethereum | n/a | [`0x51e9681d7a05abfd33efafd43e5dd3afc0093f1d`](./contracts/ethereum-1/0x51e9681d7a05abfd33efafd43e5dd3afc0093f1d/) | ⚠️ Unaudited |
| AllocatorVault | unknown | ethereum | n/a | [`0xf275110dfe7b80df66a762f968f59b70babe2b29`](./contracts/ethereum-1/0xf275110dfe7b80df66a762f968f59b70babe2b29/) | ⚠️ Unaudited |
| AllowList | unknown | ethereum | n/a | [`0x42d75c8fdbbf046df0fe1ff388da16ff99de8149`](./contracts/ethereum-1/0x42d75c8fdbbf046df0fe1ff388da16ff99de8149/) | ⚠️ Unaudited |
| CapAutomatorResolver | unknown | ethereum | n/a | [`0x5c489f8b87f988d4cb56c40c03e5770dc36560de`](./contracts/ethereum-1/0x5c489f8b87f988d4cb56c40c03e5770dc36560de/) | ⚠️ Unaudited |
| CollectorController | unknown | ethereum | n/a | [`0x92ef091c5a1e01b3ce1ba0d0150c84412d818f7a`](./contracts/ethereum-1/0x92ef091c5a1e01b3ce1ba0d0150c84412d818f7a/) | ⚠️ Unaudited |
| Create2Spark | unknown | ethereum | n/a | [`0x59cd53e57cd3a2486795788a9e7731b4db426c31`](./contracts/ethereum-1/0x59cd53e57cd3a2486795788a9e7731b4db426c31/) | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | ethereum | n/a | [`0x00836fe54625be242bcfa286207795405ca4fd10`](./contracts/ethereum-1/0x00836fe54625be242bcfa286207795405ca4fd10/) | ⚠️ Unaudited |
| D3M4626TypePool | unknown | ethereum | n/a | [`0x9c259f14e5d9f35a0434cd3c4abbbcaa2f1f7f7e`](./contracts/ethereum-1/0x9c259f14e5d9f35a0434cd3c4abbbcaa2f1f7f7e/) | ⚠️ Unaudited |
| D3MOperatorPlan | unknown | ethereum | n/a | [`0x374b5f915aaed790cbdd341e6f406910d648fd39`](./contracts/ethereum-1/0x374b5f915aaed790cbdd341e6f406910d648fd39/) | ⚠️ Unaudited |
| D3MOracle | unknown | ethereum | n/a | [`0xa5aa14dee8c8204e424a55776e53bfff413b02af`](./contracts/ethereum-1/0xa5aa14dee8c8204e424a55776e53bfff413b02af/) | ⚠️ Unaudited |
| D3MResolver | unknown | ethereum | n/a | [`0x12f00746b7630f3603c93d34476d8ad46f70a1bd`](./contracts/ethereum-1/0x12f00746b7630f3603c93d34476d8ad46f70a1bd/) | ⚠️ Unaudited |
| DaiInterestRateStrategy | unknown | ethereum | n/a | [`0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce`](./contracts/ethereum-1/0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce/) | ⚠️ Unaudited |
| DaiInterestRateStrategyResolver | unknown | ethereum | n/a | [`0x290657bbec18a7fa6bb9b58ed27cbc068ee8881c`](./contracts/ethereum-1/0x290657bbec18a7fa6bb9b58ed27cbc068ee8881c/) | ⚠️ Unaudited |
| DaiJugInterestRateStrategy | unknown | ethereum | n/a | [`0x191e97623b1733369290ee5d018d0b068bc0400d`](./contracts/ethereum-1/0x191e97623b1733369290ee5d018d0b068bc0400d/) | ⚠️ Unaudited |
| DSROracleForwarderWorldChain | unknown | ethereum | n/a | [`0xa34437daae56a7cc6dc757048933d7777b3e547b`](./contracts/ethereum-1/0xa34437daae56a7cc6dc757048933d7777b3e547b/) | ⚠️ Unaudited |
| DssSpell | unknown | ethereum | n/a | [`0x1c8f5979a93ba0412677a9d315451de1570b3d03`](./contracts/ethereum-1/0x1c8f5979a93ba0412677a9d315451de1570b3d03/) | ⚠️ Unaudited |
| DssVestTransferrable | unknown | ethereum | n/a | [`0x6bad07722818ceff1deacc33280dbbfda4939a09`](./contracts/ethereum-1/0x6bad07722818ceff1deacc33280dbbfda4939a09/) | ⚠️ Unaudited |
| EmergencySpell_SparkLend_FreezeAllAssets | unknown | ethereum | n/a | [`0x9e2890bf7f8d5568cc9e5092e67ba00c8da3e97f`](./contracts/ethereum-1/0x9e2890bf7f8d5568cc9e5092e67ba00c8da3e97f/) | ⚠️ Unaudited |
| EmergencySpell_SparkLend_FreezeSingleAsset | unknown | ethereum | n/a | [`0x0f9149c4d6018a5999ada5b592e372845cfec725`](./contracts/ethereum-1/0x0f9149c4d6018a5999ada5b592e372845cfec725/) | ⚠️ Unaudited |
| EmergencySpell_SparkLend_PauseAllAssets | unknown | ethereum | n/a | [`0x216738c7b1e83cc1a1ffcd3433226b0a3b174484`](./contracts/ethereum-1/0x216738c7b1e83cc1a1ffcd3433226b0a3b174484/) | ⚠️ Unaudited |
| EmergencySpell_SparkLend_PauseSingleAsset | unknown | ethereum | n/a | [`0x1b94e2f3818e1d657be2a62d37560514b52db17f`](./contracts/ethereum-1/0x1b94e2f3818e1d657be2a62d37560514b52db17f/) | ⚠️ Unaudited |
| EmergencySpell_SparkLend_RemoveMultisig | unknown | ethereum | n/a | [`0xe47ab4919f6f5459dcbbfbe4264bd4630c0169a9`](./contracts/ethereum-1/0xe47ab4919f6f5459dcbbfbe4264bd4630c0169a9/) | ⚠️ Unaudited |
| EmissionManager | unknown | ethereum | n/a | [`0xf09e48dd4ca8e76f63a57add428bb06fee7932a4`](./contracts/ethereum-1/0xf09e48dd4ca8e76f63a57add428bb06fee7932a4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x15f4a4b19baaa168ac0b6092d310ae9725741211`](./contracts/ethereum-1/0x15f4a4b19baaa168ac0b6092d310ae9725741211/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x29bd15f2c80f2807c29d2428aa835f2be1098a62`](./contracts/ethereum-1/0x29bd15f2c80f2807c29d2428aa835f2be1098a62/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | unichain | n/a | [`0x14d9143becc348920b68d123687045db49a016c6`](./contracts/unichain-130/0x14d9143becc348920b68d123687045db49a016c6/) | ⚠️ Unaudited |
| fToken | unknown | base | n/a | [`0xf62e339f21d8018940f188f6987bcdf02a849619`](./contracts/base-8453/0xf62e339f21d8018940f188f6987bcdf02a849619/) | ⚠️ Unaudited |
| ImmutableBeaconProxy | unknown | ethereum | n/a | [`0x38464507e02c983f20428a6e8566693fe9e422a9`](./contracts/ethereum-1/0x38464507e02c983f20428a6e8566693fe9e422a9/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x77e11453a99a7770b04f7921ffccd3ee9761ba6c`](./contracts/ethereum-1/0x77e11453a99a7770b04f7921ffccd3ee9761ba6c/) | ⚠️ Unaudited |
| KillSwitchOracle | unknown | ethereum | n/a | [`0x909a86f78e1cded68f9c2fe2c9cd922c401abe82`](./contracts/ethereum-1/0x909a86f78e1cded68f9c2fe2c9cd922c401abe82/) | ⚠️ Unaudited |
| KillSwitchResolver | unknown | ethereum | n/a | [`0x4ee8eda1dd9412e04f2abab3b23353e8dcfe3a83`](./contracts/ethereum-1/0x4ee8eda1dd9412e04f2abab3b23353e8dcfe3a83/) | ⚠️ Unaudited |
| LiquidateLoan | unknown | ethereum | n/a | [`0xa8fc41696f2a230b03f77d258db39069e9e55f56`](./contracts/ethereum-1/0xa8fc41696f2a230b03f77d258db39069e9e55f56/) | ⚠️ Unaudited |
| MaplePool | unknown | ethereum | n/a | [`0x356b8d89c1e1239cbbb9de4815c39a1474d5ba7d`](./contracts/ethereum-1/0x356b8d89c1e1239cbbb9de4815c39a1474d5ba7d/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xca9ef7f3404b23c77a2a0dee8ab54b3338d35eae`](./contracts/ethereum-1/0xca9ef7f3404b23c77a2a0dee8ab54b3338d35eae/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | [`0x73e65dbd630f90604062f6e02fab9138e713edd9`](./contracts/ethereum-1/0x73e65dbd630f90604062f6e02fab9138e713edd9/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | [`0x56a76b428244a50513ec81e225a293d128fd581d`](./contracts/ethereum-1/0x56a76b428244a50513ec81e225a293d128fd581d/) | ⚠️ Unaudited |
| MigrationActions | unknown | ethereum | n/a | [`0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89`](./contracts/ethereum-1/0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89/) | ⚠️ Unaudited |
| MockAggregator | unknown | ethereum | n/a | [`0x98e6bcba7d5dafbfa4a92daf08d3d7512820c30c`](./contracts/ethereum-1/0x98e6bcba7d5dafbfa4a92daf08d3d7512820c30c/) | ⚠️ Unaudited |
| MockJug | unknown | ethereum | n/a | [`0x6c20dc38d8e978955b12217d82692d448239c005`](./contracts/ethereum-1/0x6c20dc38d8e978955b12217d82692d448239c005/) | ⚠️ Unaudited |
| MockUsdsJoin | unknown | ethereum | n/a | [`0x00df3c06aed70d70e1fa2996ceeae40bd515a69b`](./contracts/ethereum-1/0x00df3c06aed70d70e1fa2996ceeae40bd515a69b/) | ⚠️ Unaudited |
| MockVat | unknown | ethereum | n/a | [`0x2157802ce1172b7bae5540b0d20d8b4337b535c2`](./contracts/ethereum-1/0x2157802ce1172b7bae5540b0d20d8b4337b535c2/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MyOApp | unknown | ethereum | n/a | [`0xfd4d18d67d126211455b81f0d08bfe919adc5e2c`](./contracts/ethereum-1/0xfd4d18d67d126211455b81f0d08bfe919adc5e2c/) | ⚠️ Unaudited |
| PoolLogic | unknown | ethereum | n/a | [`0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17`](./contracts/ethereum-1/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xcb8d325c0af19697b8454481602097f93aa9040f`](./contracts/ethereum-1/0xcb8d325c0af19697b8454481602097f93aa9040f/) | ⚠️ Unaudited |
| PSMVariant1Actions | unknown | ethereum | n/a | [`0x52d298ff9e77e71c2eb1992260520e7b15257d99`](./contracts/ethereum-1/0x52d298ff9e77e71c2eb1992260520e7b15257d99/) | ⚠️ Unaudited |
| PSMWrapper | unknown | ethereum | n/a | [`0x35ae8fee20ef86c38aef060100bfbc6a016a2911`](./contracts/ethereum-1/0x35ae8fee20ef86c38aef060100bfbc6a016a2911/) | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | ethereum | n/a | [`0x11aac1ca5822cf8ba6d06b0d84901940c0ee36d8`](./contracts/ethereum-1/0x11aac1ca5822cf8ba6d06b0d84901940c0ee36d8/) | ⚠️ Unaudited |
| RewardsController | unknown | ethereum | n/a | [`0x0ee554f6a1f7a4cb4f82d4c124ddc2ad3e37fde1`](./contracts/ethereum-1/0x0ee554f6a1f7a4cb4f82d4c124ddc2ad3e37fde1/) | ⚠️ Unaudited |
| SavingsDaiOracle | unknown | ethereum | n/a | [`0xb9e6dbfa4de19cced908bcbfe1d015190678ab5f`](./contracts/ethereum-1/0xb9e6dbfa4de19cced908bcbfe1d015190678ab5f/) | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | arbitrum | n/a | [`0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5`](./contracts/arbitrum-42161/0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5/) | ⚠️ Unaudited |
| SparkBase_20250320 | unknown | base | n/a | [`0x356f19cb575cf40c7ff33a5117f9a9264c23f6e8`](./contracts/base-8453/0x356f19cb575cf40c7ff33a5117f9a9264c23f6e8/) | ⚠️ Unaudited |
| SparkEthereum_20230525 | unknown | ethereum | n/a | [`0x41d7c79ae5ecba7428283f66998dedfd84451e0e`](./contracts/ethereum-1/0x41d7c79ae5ecba7428283f66998dedfd84451e0e/) | ⚠️ Unaudited |
| SparkEthereum_20230712 | unknown | ethereum | n/a | [`0x843a0539ca7466abcb769f1c1d30c8423e13a297`](./contracts/ethereum-1/0x843a0539ca7466abcb769f1c1d30c8423e13a297/) | ⚠️ Unaudited |
| SparkEthereum_20230816 | unknown | ethereum | n/a | [`0x60cc45dab5f0b17789c77d5fe990f1ad80e9dd65`](./contracts/ethereum-1/0x60cc45dab5f0b17789c77d5fe990f1ad80e9dd65/) | ⚠️ Unaudited |
| SparkEthereum_20230927 | unknown | ethereum | n/a | [`0x9fffbc278119ad854b58c3d219212849e8b54ef8`](./contracts/ethereum-1/0x9fffbc278119ad854b58c3d219212849e8b54ef8/) | ⚠️ Unaudited |
| SparkEthereum_20231129 | unknown | ethereum | n/a | [`0x68a075249fa77173b8d1b92750c9920423997e2b`](./contracts/ethereum-1/0x68a075249fa77173b8d1b92750c9920423997e2b/) | ⚠️ Unaudited |
| SparkEthereum_20240110 | unknown | ethereum | n/a | [`0x2f2c514137173bc98b3699a0d291f7593637c596`](./contracts/ethereum-1/0x2f2c514137173bc98b3699a0d291f7593637c596/) | ⚠️ Unaudited |
| SparkEthereum_20240221 | unknown | ethereum | n/a | [`0x5d9406f377e6afebae18552806ea327ec7b10000`](./contracts/ethereum-1/0x5d9406f377e6afebae18552806ea327ec7b10000/) | ⚠️ Unaudited |
| SparkEthereum_20240306 | unknown | ethereum | n/a | [`0xf3449d6d5827f0f6e0ee4a941f058307056d3736`](./contracts/ethereum-1/0xf3449d6d5827f0f6e0ee4a941f058307056d3736/) | ⚠️ Unaudited |
| SparkEthereum_20240403 | unknown | ethereum | n/a | [`0x4d91ee41b18d8a8fdf2b49bd5154339a38c7ee8f`](./contracts/ethereum-1/0x4d91ee41b18d8a8fdf2b49bd5154339a38c7ee8f/) | ⚠️ Unaudited |
| SparkEthereum_20240417 | unknown | ethereum | n/a | [`0x151d5fa7b3ed50098fffdd61db29cb928ae04c0e`](./contracts/ethereum-1/0x151d5fa7b3ed50098fffdd61db29cb928ae04c0e/) | ⚠️ Unaudited |
| SparkEthereum_20240516 | unknown | ethereum | n/a | [`0x901e4450f01ae1a2615e384b9104888cb9cb02ff`](./contracts/ethereum-1/0x901e4450f01ae1a2615e384b9104888cb9cb02ff/) | ⚠️ Unaudited |
| SparkEthereum_20240530 | unknown | ethereum | n/a | [`0x7bcdd1c8641f8a0ef98572427fddd8c26d642256`](./contracts/ethereum-1/0x7bcdd1c8641f8a0ef98572427fddd8c26d642256/) | ⚠️ Unaudited |
| SparkEthereum_20240808 | unknown | ethereum | n/a | [`0x4622245a1aaf0fb752f9cac0a29616792b33f089`](./contracts/ethereum-1/0x4622245a1aaf0fb752f9cac0a29616792b33f089/) | ⚠️ Unaudited |
| SparkEthereum_20240926 | unknown | ethereum | n/a | [`0xc80621140bee6a105c180ae7cb0a084c2409c738`](./contracts/ethereum-1/0xc80621140bee6a105c180ae7cb0a084c2409c738/) | ⚠️ Unaudited |
| SparkEthereum_20250320 | unknown | ethereum | n/a | [`0x1e865856d8f97fb34fbb0edbf63f53e29a676ab6`](./contracts/ethereum-1/0x1e865856d8f97fb34fbb0edbf63f53e29a676ab6/) | ⚠️ Unaudited |
| SparkEthereum_20260409 | unknown | ethereum | n/a | [`0xfa5fc020311fcc1a467fec5886640c7dd746deaa`](./contracts/ethereum-1/0xfa5fc020311fcc1a467fec5886640c7dd746deaa/) | ⚠️ Unaudited |
| SparkEthereum_20260604 | unknown | ethereum | n/a | [`0xab385ec0df225d5a37f5245d2ae43d53fe4fed20`](./contracts/ethereum-1/0xab385ec0df225d5a37f5245d2ae43d53fe4fed20/) | ⚠️ Unaudited |
| SparkLendFreezerMom | unknown | ethereum | n/a | [`0x237e3985dd7e373f2ec878ec1ac48a228cf2e7a3`](./contracts/ethereum-1/0x237e3985dd7e373f2ec878ec1ac48a228cf2e7a3/) | ⚠️ Unaudited |
| SparkMigrationHelper | unknown | ethereum | n/a | [`0x8899e0510a152144826385d44c9c963b5168c7d8`](./contracts/ethereum-1/0x8899e0510a152144826385d44c9c963b5168c7d8/) | ⚠️ Unaudited |
| SparkRewards | unknown | ethereum | n/a | [`0x7ac96180c4d6b2a328d3a19ac059d0e7fc3c6d41`](./contracts/ethereum-1/0x7ac96180c4d6b2a328d3a19ac059d0e7fc3c6d41/) | ⚠️ Unaudited |
| SparkUnichain_20250529 | unknown | unichain | n/a | [`0xbf5a7cfaf47fd1ad75c9c613b1d4c196ee1b4eef`](./contracts/unichain-130/0xbf5a7cfaf47fd1ad75c9c613b1d4c196ee1b4eef/) | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | ethereum | n/a | [`0x14d60e7fdc0d71d8611742720e4c50e7a974020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | ⚠️ Unaudited |
| TransparentProxyFactory | unknown | ethereum | n/a | [`0x777803cbdd89d5d5bc1ddd2151b51b0b07f6bf37`](./contracts/ethereum-1/0x777803cbdd89d5d5bc1ddd2151b51b0b07f6bf37/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | ethereum | n/a | [`0x205216d89a00feb2a73273ceecd297baf89d576d`](./contracts/ethereum-1/0x205216d89a00feb2a73273ceecd297baf89d576d/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | ethereum | n/a | [`0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d`](./contracts/ethereum-1/0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d/) | ⚠️ Unaudited |
| USCC | unknown | ethereum | n/a | [`0x41feb4943df07f6793c059f98f28ed0e15f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | ⚠️ Unaudited |
| USCCv2 | unknown | ethereum | n/a | [`0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | ⚠️ Unaudited |
| USTB | unknown | ethereum | n/a | [`0x3986a1475f3c7786973e1b83cd6240521c51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | ⚠️ Unaudited |
| USTBv2 | unknown | ethereum | n/a | [`0x34ee7037db155b6fa18c9727169d39f63a8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | ⚠️ Unaudited |
| V3RateStrategyFactory | unknown | ethereum | n/a | [`0xd1a42b609362655e1290ec3b77fcea304d1cba99`](./contracts/ethereum-1/0xd1a42b609362655e1290ec3b77fcea304d1cba99/) | ⚠️ Unaudited |
| VaultV2 | unknown | ethereum | n/a | [`0xb0c424116172b55cbb6dd3136f5989f7959e5b91`](./contracts/ethereum-1/0xb0c424116172b55cbb6dd3136f5989f7959e5b91/) | ⚠️ Unaudited |
| VestedRewardsDistributionJob | unknown | ethereum | n/a | [`0x6464c34a02dd155dd0c630ce233dd6e21c24f9a5`](./contracts/ethereum-1/0x6464c34a02dd155dd0c630ce233dd6e21c24f9a5/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0x339a7c4e51e385ee22084c77456dedf58d742396`](./contracts/ethereum-1/0x339a7c4e51e385ee22084c77456dedf58d742396/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | ethereum | n/a | [`0x61baf0ce69d23c8318c786e161d1cac285aa4ea3`](./contracts/ethereum-1/0x61baf0ce69d23c8318c786e161d1cac285aa4ea3/) | ⚠️ Unaudited |
| XChainDSROracleResolver | unknown | ethereum | n/a | [`0x23913dcae97046a577a2c7cc9595e1c06768ecdf`](./contracts/ethereum-1/0x23913dcae97046a577a2c7cc9595e1c06768ecdf/) | ⚠️ Unaudited |

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
| [You can find the audits of Aave v3 here.](https://aave.com/security) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 15 | high |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2021-11 | stale | Direct | contract_name | 17 | high |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 1 | medium |
| [14-01-2022_PeckShield_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 8 | high |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name | 17 | high |
| [27-01-2022_SigmaPrime_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | 11 | high |
| [ChainSecurity_Sparklend_Core_Updates_audit.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/ChainSecurity_Sparklend_Core_Updates_audit.pdf) | ChainSecurity | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [v100-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v100-cantina-audit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | 44 | high |
| [v100-cantina-beta-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v100-cantina-beta-audit.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 43 | high |
| [v100-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 49 | high |
| [v110-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v110-cantina-audit.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 40 | high|medium |
| [v110-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v110-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-12 | aging | Direct | contract_name | 48 | high |
| [v1100-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v1100-cantina-audit.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | 42 | high |
| [v1100-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v1100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 43 | high |
| [v130-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v130-cantina-audit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 38 | high |
| [v130-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v130-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 44 | high |
| [v140-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v140-cantina-audit.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 38 | high |
| [v140-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v140-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 44 | high |
| [v150-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v150-cantina-audit.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 42 | high |
| [v150-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v150-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | 55 | high |
| [v160-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 39 | high|medium |
| [v160-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v160-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 58 | high |
| [v170-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v170-cantina-audit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 38 | medium |
| [v170-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v170-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 44 | high |
| [v180-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v180-cantina-audit.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | 39 | high |
| [v180-certora-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v180-certora-audit.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | 45 | high |
| [v190-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v190-cantina-audit.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 42 | medium |
| [v190-certora-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v190-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 46 | high |
| [v120-cantina-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-cantina-audit.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [v120-chainsecurity-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Direct | contract_name | 3 | high |
| [20260514-cantina-report-sky-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260514-cantina-report-sky-xchain-ssr-oracle.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf) | ChainSecurity | Audit | 2025-05 | aging | Direct | contract_name | 12 | high |
| [report-maker-review-0916-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/report-maker-review-0916-xchain-ssr-oracle.pdf) | Maker (internal review) | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [report-review-makerdao-xchain-dsr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/report-review-makerdao-xchain-dsr-oracle.pdf) | MakerDAO (internal review) | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [v101-cantina-audit.pdf](https://github.com/sparkdotfi/spark-gov-relay/blob/master/audits/v101-cantina-audit.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [20240909-cantina-audit.pdf](https://github.com/sparkdotfi/spark-psm/blob/master/audits/20240909-cantina-audit.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 1 | medium |
| [20241022-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-psm/blob/master/audits/20241022-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [20241023-cantina-audit.pdf](https://github.com/sparkdotfi/spark-psm/blob/master/audits/20241023-cantina-audit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | 1 | medium |
| [v100-cantina.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v100-cantina.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [v100-chainsecurity.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v100-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [v101-cantina.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v101-cantina.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [v101-chainsecurity.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v101-chainsecurity.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [20240926-cantina-report-maker-susds.pdf](https://github.com/sky-ecosystem/sdai/blob/susds/audit/20240926-cantina-report-maker-susds.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf](https://github.com/sky-ecosystem/sdai/blob/susds/audit/20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf](https://github.com/sky-ecosystem/sdai/blob/master/audits/ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [20250812-ChainSecurity_Sky_stUSDS_audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20250812-ChainSecurity_Sky_stUSDS_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [20250818-cantina-report-sky-stusds.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20250818-cantina-report-sky-stusds.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [20260504-cantina-report-sky-stusdsmom.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260504-cantina-report-sky-stusdsmom.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [* **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]()](https://github.com/sky-ecosystem/usds-wrappers/blob/dev/audit/20240904-ChainSecurity_MakerDAO_USDS_Wrappers_audit.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity_MakerDAO_PSM_Lite_audit.pdf](https://github.com/sky-ecosystem/dss-lite-psm/blob/main/audits/ChainSecurity_MakerDAO_PSM_Lite_audit.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [report-review-makerdao-dss-lite-psm.pdf](https://github.com/sky-ecosystem/dss-lite-psm/blob/main/audits/report-review-makerdao-dss-lite-psm.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 5 | high |
| [report-review-makerdao-endgametoolkit_2024-08-27.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/report-review-makerdao-endgametoolkit_2024-08-27.pdf) | Unknown | Audit | 2023-11 | stale | Direct | contract_name | 5 | medium |
| [report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00480cd3ed33de45555410ba71b2f932a14b1cf2`](./contracts/ethereum-1/0x00480cd3ed33de45555410ba71b2f932a14b1cf2/) | Aggor_ETH_USD_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69115a2826eb47fe9dfd1d5ca8d8642697c8b68a`](./contracts/ethereum-1/0x69115a2826eb47fe9dfd1d5ca8d8642697c8b68a/) | Aggor_ETH_USD_3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb20a1374efcafa32f701ab14316fa2e5b3400ed5`](./contracts/ethereum-1/0xb20a1374efcafa32f701ab14316fa2e5b3400ed5/) | Aggor_ETH_USD_4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51e9681d7a05abfd33efafd43e5dd3afc0093f1d`](./contracts/ethereum-1/0x51e9681d7a05abfd33efafd43e5dd3afc0093f1d/) | AllocatorBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf275110dfe7b80df66a762f968f59b70babe2b29`](./contracts/ethereum-1/0xf275110dfe7b80df66a762f968f59b70babe2b29/) | AllocatorVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42d75c8fdbbf046df0fe1ff388da16ff99de8149`](./contracts/ethereum-1/0x42d75c8fdbbf046df0fe1ff388da16ff99de8149/) | AllowList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c489f8b87f988d4cb56c40c03e5770dc36560de`](./contracts/ethereum-1/0x5c489f8b87f988d4cb56c40c03e5770dc36560de/) | CapAutomatorResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92ef091c5a1e01b3ce1ba0d0150c84412d818f7a`](./contracts/ethereum-1/0x92ef091c5a1e01b3ce1ba0d0150c84412d818f7a/) | CollectorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59cd53e57cd3a2486795788a9e7731b4db426c31`](./contracts/ethereum-1/0x59cd53e57cd3a2486795788a9e7731b4db426c31/) | Create2Spark | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c259f14e5d9f35a0434cd3c4abbbcaa2f1f7f7e`](./contracts/ethereum-1/0x9c259f14e5d9f35a0434cd3c4abbbcaa2f1f7f7e/) | D3M4626TypePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x374b5f915aaed790cbdd341e6f406910d648fd39`](./contracts/ethereum-1/0x374b5f915aaed790cbdd341e6f406910d648fd39/) | D3MOperatorPlan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5aa14dee8c8204e424a55776e53bfff413b02af`](./contracts/ethereum-1/0xa5aa14dee8c8204e424a55776e53bfff413b02af/) | D3MOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12f00746b7630f3603c93d34476d8ad46f70a1bd`](./contracts/ethereum-1/0x12f00746b7630f3603c93d34476d8ad46f70a1bd/) | D3MResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce`](./contracts/ethereum-1/0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce/) | DaiInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290657bbec18a7fa6bb9b58ed27cbc068ee8881c`](./contracts/ethereum-1/0x290657bbec18a7fa6bb9b58ed27cbc068ee8881c/) | DaiInterestRateStrategyResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x191e97623b1733369290ee5d018d0b068bc0400d`](./contracts/ethereum-1/0x191e97623b1733369290ee5d018d0b068bc0400d/) | DaiJugInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa34437daae56a7cc6dc757048933d7777b3e547b`](./contracts/ethereum-1/0xa34437daae56a7cc6dc757048933d7777b3e547b/) | DSROracleForwarderWorldChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c8f5979a93ba0412677a9d315451de1570b3d03`](./contracts/ethereum-1/0x1c8f5979a93ba0412677a9d315451de1570b3d03/) | DssSpell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bad07722818ceff1deacc33280dbbfda4939a09`](./contracts/ethereum-1/0x6bad07722818ceff1deacc33280dbbfda4939a09/) | DssVestTransferrable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e2890bf7f8d5568cc9e5092e67ba00c8da3e97f`](./contracts/ethereum-1/0x9e2890bf7f8d5568cc9e5092e67ba00c8da3e97f/) | EmergencySpell_SparkLend_FreezeAllAssets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f9149c4d6018a5999ada5b592e372845cfec725`](./contracts/ethereum-1/0x0f9149c4d6018a5999ada5b592e372845cfec725/) | EmergencySpell_SparkLend_FreezeSingleAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x216738c7b1e83cc1a1ffcd3433226b0a3b174484`](./contracts/ethereum-1/0x216738c7b1e83cc1a1ffcd3433226b0a3b174484/) | EmergencySpell_SparkLend_PauseAllAssets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b94e2f3818e1d657be2a62d37560514b52db17f`](./contracts/ethereum-1/0x1b94e2f3818e1d657be2a62d37560514b52db17f/) | EmergencySpell_SparkLend_PauseSingleAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe47ab4919f6f5459dcbbfbe4264bd4630c0169a9`](./contracts/ethereum-1/0xe47ab4919f6f5459dcbbfbe4264bd4630c0169a9/) | EmergencySpell_SparkLend_RemoveMultisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf09e48dd4ca8e76f63a57add428bb06fee7932a4`](./contracts/ethereum-1/0xf09e48dd4ca8e76f63a57add428bb06fee7932a4/) | EmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf62e339f21d8018940f188f6987bcdf02a849619`](./contracts/base-8453/0xf62e339f21d8018940f188f6987bcdf02a849619/) | fToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38464507e02c983f20428a6e8566693fe9e422a9`](./contracts/ethereum-1/0x38464507e02c983f20428a6e8566693fe9e422a9/) | ImmutableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x909a86f78e1cded68f9c2fe2c9cd922c401abe82`](./contracts/ethereum-1/0x909a86f78e1cded68f9c2fe2c9cd922c401abe82/) | KillSwitchOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee8eda1dd9412e04f2abab3b23353e8dcfe3a83`](./contracts/ethereum-1/0x4ee8eda1dd9412e04f2abab3b23353e8dcfe3a83/) | KillSwitchResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8fc41696f2a230b03f77d258db39069e9e55f56`](./contracts/ethereum-1/0xa8fc41696f2a230b03f77d258db39069e9e55f56/) | LiquidateLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x356b8d89c1e1239cbbb9de4815c39a1474d5ba7d`](./contracts/ethereum-1/0x356b8d89c1e1239cbbb9de4815c39a1474d5ba7d/) | MaplePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca9ef7f3404b23c77a2a0dee8ab54b3338d35eae`](./contracts/ethereum-1/0xca9ef7f3404b23c77a2a0dee8ab54b3338d35eae/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89`](./contracts/ethereum-1/0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89/) | MigrationActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e6bcba7d5dafbfa4a92daf08d3d7512820c30c`](./contracts/ethereum-1/0x98e6bcba7d5dafbfa4a92daf08d3d7512820c30c/) | MockAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c20dc38d8e978955b12217d82692d448239c005`](./contracts/ethereum-1/0x6c20dc38d8e978955b12217d82692d448239c005/) | MockJug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00df3c06aed70d70e1fa2996ceeae40bd515a69b`](./contracts/ethereum-1/0x00df3c06aed70d70e1fa2996ceeae40bd515a69b/) | MockUsdsJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2157802ce1172b7bae5540b0d20d8b4337b535c2`](./contracts/ethereum-1/0x2157802ce1172b7bae5540b0d20d8b4337b535c2/) | MockVat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd4d18d67d126211455b81f0d08bfe919adc5e2c`](./contracts/ethereum-1/0xfd4d18d67d126211455b81f0d08bfe919adc5e2c/) | MyOApp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17`](./contracts/ethereum-1/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d298ff9e77e71c2eb1992260520e7b15257d99`](./contracts/ethereum-1/0x52d298ff9e77e71c2eb1992260520e7b15257d99/) | PSMVariant1Actions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ae8fee20ef86c38aef060100bfbc6a016a2911`](./contracts/ethereum-1/0x35ae8fee20ef86c38aef060100bfbc6a016a2911/) | PSMWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11aac1ca5822cf8ba6d06b0d84901940c0ee36d8`](./contracts/ethereum-1/0x11aac1ca5822cf8ba6d06b0d84901940c0ee36d8/) | PullRewardsTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ee554f6a1f7a4cb4f82d4c124ddc2ad3e37fde1`](./contracts/ethereum-1/0x0ee554f6a1f7a4cb4f82d4c124ddc2ad3e37fde1/) | RewardsController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9e6dbfa4de19cced908bcbfe1d015190678ab5f`](./contracts/ethereum-1/0xb9e6dbfa4de19cced908bcbfe1d015190678ab5f/) | SavingsDaiOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5`](./contracts/arbitrum-42161/0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5/) | SparkArbitrumOne_20250320 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x356f19cb575cf40c7ff33a5117f9a9264c23f6e8`](./contracts/base-8453/0x356f19cb575cf40c7ff33a5117f9a9264c23f6e8/) | SparkBase_20250320 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d7c79ae5ecba7428283f66998dedfd84451e0e`](./contracts/ethereum-1/0x41d7c79ae5ecba7428283f66998dedfd84451e0e/) | SparkEthereum_20230525 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x843a0539ca7466abcb769f1c1d30c8423e13a297`](./contracts/ethereum-1/0x843a0539ca7466abcb769f1c1d30c8423e13a297/) | SparkEthereum_20230712 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60cc45dab5f0b17789c77d5fe990f1ad80e9dd65`](./contracts/ethereum-1/0x60cc45dab5f0b17789c77d5fe990f1ad80e9dd65/) | SparkEthereum_20230816 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fffbc278119ad854b58c3d219212849e8b54ef8`](./contracts/ethereum-1/0x9fffbc278119ad854b58c3d219212849e8b54ef8/) | SparkEthereum_20230927 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68a075249fa77173b8d1b92750c9920423997e2b`](./contracts/ethereum-1/0x68a075249fa77173b8d1b92750c9920423997e2b/) | SparkEthereum_20231129 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f2c514137173bc98b3699a0d291f7593637c596`](./contracts/ethereum-1/0x2f2c514137173bc98b3699a0d291f7593637c596/) | SparkEthereum_20240110 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d9406f377e6afebae18552806ea327ec7b10000`](./contracts/ethereum-1/0x5d9406f377e6afebae18552806ea327ec7b10000/) | SparkEthereum_20240221 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3449d6d5827f0f6e0ee4a941f058307056d3736`](./contracts/ethereum-1/0xf3449d6d5827f0f6e0ee4a941f058307056d3736/) | SparkEthereum_20240306 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d91ee41b18d8a8fdf2b49bd5154339a38c7ee8f`](./contracts/ethereum-1/0x4d91ee41b18d8a8fdf2b49bd5154339a38c7ee8f/) | SparkEthereum_20240403 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x151d5fa7b3ed50098fffdd61db29cb928ae04c0e`](./contracts/ethereum-1/0x151d5fa7b3ed50098fffdd61db29cb928ae04c0e/) | SparkEthereum_20240417 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x901e4450f01ae1a2615e384b9104888cb9cb02ff`](./contracts/ethereum-1/0x901e4450f01ae1a2615e384b9104888cb9cb02ff/) | SparkEthereum_20240516 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bcdd1c8641f8a0ef98572427fddd8c26d642256`](./contracts/ethereum-1/0x7bcdd1c8641f8a0ef98572427fddd8c26d642256/) | SparkEthereum_20240530 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4622245a1aaf0fb752f9cac0a29616792b33f089`](./contracts/ethereum-1/0x4622245a1aaf0fb752f9cac0a29616792b33f089/) | SparkEthereum_20240808 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc80621140bee6a105c180ae7cb0a084c2409c738`](./contracts/ethereum-1/0xc80621140bee6a105c180ae7cb0a084c2409c738/) | SparkEthereum_20240926 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e865856d8f97fb34fbb0edbf63f53e29a676ab6`](./contracts/ethereum-1/0x1e865856d8f97fb34fbb0edbf63f53e29a676ab6/) | SparkEthereum_20250320 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa5fc020311fcc1a467fec5886640c7dd746deaa`](./contracts/ethereum-1/0xfa5fc020311fcc1a467fec5886640c7dd746deaa/) | SparkEthereum_20260409 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab385ec0df225d5a37f5245d2ae43d53fe4fed20`](./contracts/ethereum-1/0xab385ec0df225d5a37f5245d2ae43d53fe4fed20/) | SparkEthereum_20260604 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237e3985dd7e373f2ec878ec1ac48a228cf2e7a3`](./contracts/ethereum-1/0x237e3985dd7e373f2ec878ec1ac48a228cf2e7a3/) | SparkLendFreezerMom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8899e0510a152144826385d44c9c963b5168c7d8`](./contracts/ethereum-1/0x8899e0510a152144826385d44c9c963b5168c7d8/) | SparkMigrationHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac96180c4d6b2a328d3a19ac059d0e7fc3c6d41`](./contracts/ethereum-1/0x7ac96180c4d6b2a328d3a19ac059d0e7fc3c6d41/) | SparkRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xbf5a7cfaf47fd1ad75c9c613b1d4c196ee1b4eef`](./contracts/unichain-130/0xbf5a7cfaf47fd1ad75c9c613b1d4c196ee1b4eef/) | SparkUnichain_20250529 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d60e7fdc0d71d8611742720e4c50e7a974020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | SuperstateTokenV5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x777803cbdd89d5d5bc1ddd2151b51b0b07f6bf37`](./contracts/ethereum-1/0x777803cbdd89d5d5bc1ddd2151b51b0b07f6bf37/) | TransparentProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x205216d89a00feb2a73273ceecd297baf89d576d`](./contracts/ethereum-1/0x205216d89a00feb2a73273ceecd297baf89d576d/) | UiIncentiveDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d`](./contracts/ethereum-1/0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d/) | UiPoolDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41feb4943df07f6793c059f98f28ed0e15f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | USCC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | USCCv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3986a1475f3c7786973e1b83cd6240521c51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | USTB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34ee7037db155b6fa18c9727169d39f63a8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | USTBv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1a42b609362655e1290ec3b77fcea304d1cba99`](./contracts/ethereum-1/0xd1a42b609362655e1290ec3b77fcea304d1cba99/) | V3RateStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0c424116172b55cbb6dd3136f5989f7959e5b91`](./contracts/ethereum-1/0xb0c424116172b55cbb6dd3136f5989f7959e5b91/) | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6464c34a02dd155dd0c630ce233dd6e21c24f9a5`](./contracts/ethereum-1/0x6464c34a02dd155dd0c630ce233dd6e21c24f9a5/) | VestedRewardsDistributionJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x339a7c4e51e385ee22084c77456dedf58d742396`](./contracts/ethereum-1/0x339a7c4e51e385ee22084c77456dedf58d742396/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61baf0ce69d23c8318c786e161d1cac285aa4ea3`](./contracts/ethereum-1/0x61baf0ce69d23c8318c786e161d1cac285aa4ea3/) | WrappedTokenGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23913dcae97046a577a2c7cc9595e1c06768ecdf`](./contracts/ethereum-1/0x23913dcae97046a577a2c7cc9595e1c06768ecdf/) | XChainDSROracleResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 182 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=33, medium=8
- Match method counts: extraction_exact=1026

Zero-match audit list:

- [18141] You can find the audits of Aave v3 here.
- [18146] 19-04-2023_SigmaPrime_AaveV3-0-2.pdf
- [18147] 23-12-2022_SigmaPrime_AaveV3-0-1.pdf
- [18184] 20260514-cantina-report-sky-xchain-ssr-oracle.pdf
- [18186] report-maker-review-0916-xchain-ssr-oracle.pdf
- [18193] v100-cantina.pdf
- [18194] v100-chainsecurity.pdf
- [18195] v101-cantina.pdf
- [18196] v101-chainsecurity.pdf
- [18199] 20240926-cantina-report-maker-susds.pdf
- [18200] 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf
- [18201] ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf
- [18202] 20250812-ChainSecurity_Sky_stUSDS_audit.pdf
- [18203] 20250818-cantina-report-sky-stusds.pdf
- [18204] 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf
- [18205] 20260504-cantina-report-sky-stusdsmom.pdf
- [18206] * **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]()
- [18207] ChainSecurity_MakerDAO_PSM_Lite_audit.pdf
- [18208] report-review-makerdao-dss-lite-psm.pdf
- [18209] ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
