# Agentic Audit Brief: Stability

## Project Overview

- Project: Stability (`stability`)
- Website: [https://stability.farm](https://stability.farm)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.599Z
- Pipeline run: v2-2026-07-04-7d91d2
- Chains: base, polygon, sonic
- Contract surface: 139 unique implementations (139 raw deployments)
- DeFi Llama TVL: $1,151,817.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 123 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 24 ERC20 tokens, 3 ERC721 NFTs, 4 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 25 common project-authored base contract(s) (controllable, erc165, contextupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Spark** (`spark`) in the ACLManager, PoolConfigurator, RewardsController subsystem.
16 audits inherited from `spark`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 139 (139 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 18/120 (15.0%)
- Deployed-live implementations: 139 of 139 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/139
- Verified + Unaudited implementations: 121
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 139
- Raw deployments: 139
- Audits discovered: 23 (7 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 8 fresh, 1 aging, 3 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 18 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 15.0% (ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 18 | 12.9% | 2026-05 |
| ABDK | Tier 2 | 3 | 2.2% | n/a |
| ChainSecurity | Tier 1 | 3 | 2.2% | 2026-05 |
| OpenZeppelin | Tier 1 | 3 | 2.2% | n/a |
| PeckShield | Tier 2 | 3 | 2.2% | n/a |
| Sigma Prime | Tier 2 | 3 | 2.2% | 2023-04 |
| Trail of Bits | Tier 1 | 3 | 2.2% | n/a |
| unknown | Tier 2 | 3 | 2.2% | 2024-03 |
| yAudit | Tier 2 | 3 | 2.2% | n/a |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ACLManager | unknown | sonic | n/a | [`0x09c1f8cec4e91e178a584464c449cb270e0079c1`](./contracts/sonic-146/0x09c1f8cec4e91e178a584464c449cb270e0079c1/) | ✅ Audited |
| CVault | unknown | sonic | n/a | [`0x0df1d0527f1fac9e5139be2318546b40677d8e9b`](./contracts/sonic-146/0x0df1d0527f1fac9e5139be2318546b40677d8e9b/) | ✅ Audited |
| DefiEdgeQuickSwapMerklFarmStrategy | unknown | polygon | n/a | [`0x14377abfdf6f068cfdfbfee83222d83f4b5ccfe0`](./contracts/polygon-137/0x14377abfdf6f068cfdfbfee83222d83f4b5ccfe0/) | ✅ Audited |
| GammaQuickSwapMerklFarmStrategy | unknown | polygon | n/a | [`0x38fe7372926389c8a1cbdbd3d5ad4913070b75c8`](./contracts/polygon-137/0x38fe7372926389c8a1cbdbd3d5ad4913070b75c8/) | ✅ Audited |
| GammaRetroMerklFarmStrategy | unknown | polygon | n/a | [`0x1f8d6b1eb4f81f1de9684032278febfa4b4f3a75`](./contracts/polygon-137/0x1f8d6b1eb4f81f1de9684032278febfa4b4f3a75/) | ✅ Audited |
| IchiQuickSwapMerklFarmStrategy | unknown | polygon | n/a | [`0x079fff65ee5fe6bedd9790ca3a930eb37244691f`](./contracts/polygon-137/0x079fff65ee5fe6bedd9790ca3a930eb37244691f/) | ✅ Audited |
| IchiRetroMerklFarmStrategy | unknown | polygon | n/a | [`0x0ac52df67e7668b4f3e3416d1dafc35921380ce2`](./contracts/polygon-137/0x0ac52df67e7668b4f3e3416d1dafc35921380ce2/) | ✅ Audited |
| MetaVault | unknown | sonic | n/a | [`0x07c598f50ba04bcb1acb7f8e41887f9a51c5567d`](./contracts/sonic-146/0x07c598f50ba04bcb1acb7f8e41887f9a51c5567d/) | ✅ Audited |
| PoolConfigurator | unknown | sonic | n/a | [`0x1f3a8c7b19d8c2148bfe62a967f77f182972d7d2`](./contracts/sonic-146/0x1f3a8c7b19d8c2148bfe62a967f77f182972d7d2/) | ✅ Audited |
| QuickSwapStaticMerklFarmStrategy | unknown | polygon | n/a | [`0x1465be6dc3a23bd755b0602e1684a25d9fd33c74`](./contracts/polygon-137/0x1465be6dc3a23bd755b0602e1684a25d9fd33c74/) | ✅ Audited |
| QuickSwapV3StaticFarmStrategy | unknown | polygon | n/a | [`0x42bd97b129ab31ee3072dcb7e9be788efdbc3634`](./contracts/polygon-137/0x42bd97b129ab31ee3072dcb7e9be788efdbc3634/) | ✅ Audited |
| RevenueRouter | unknown | polygon | n/a | [`0x005d71553ad3f8f919e5121aa45bf24594dce0d6`](./contracts/polygon-137/0x005d71553ad3f8f919e5121aa45bf24594dce0d6/) | ✅ Audited |
| RewardsController | unknown | sonic | n/a | [`0x022787fe454e0fc45dcc9b5f1f5bb001dec25512`](./contracts/sonic-146/0x022787fe454e0fc45dcc9b5f1f5bb001dec25512/) | ✅ Audited |
| RMVault | unknown | polygon | n/a | [`0x2f82eca3e2b7acc902246a2342edfce99ffb68e1`](./contracts/polygon-137/0x2f82eca3e2b7acc902246a2342edfce99ffb68e1/) | ✅ Audited |
| RVault | unknown | polygon | n/a | [`0x260a7109a22759e6426274f5074a675faad546a1`](./contracts/polygon-137/0x260a7109a22759e6426274f5074a675faad546a1/) | ✅ Audited |
| StrategyLib | unknown | polygon | n/a | [`0x256e2479130a1b02f2d876df3fbcea50ab538f66`](./contracts/polygon-137/0x256e2479130a1b02f2d876df3fbcea50ab538f66/) | ✅ Audited |
| VaultBaseLib | unknown | polygon | n/a | [`0x5af516e9a5668675de3a84b11809f34e377589d0`](./contracts/polygon-137/0x5af516e9a5668675de3a84b11809f34e377589d0/) | ✅ Audited |
| WrappedMetaVault | unknown | sonic | n/a | [`0x0746e119ae0f4ef1e11d015cc909ba58dadb2653`](./contracts/sonic-146/0x0746e119ae0f4ef1e11d015cc909ba58dadb2653/) | ✅ Audited |

### ⚠️ Verified + Unaudited (121)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorAdapter | unknown | sonic | n/a | [`0x4c7505a433905dab0cbe989f0bb090fdc1b82dfe`](./contracts/sonic-146/0x4c7505a433905dab0cbe989f0bb090fdc1b82dfe/) | ⚠️ Unaudited |
| AlgebraAdapter | unknown | polygon | n/a | [`0x0dfbc9b86cca6370b2f303e61c823239dfb696fa`](./contracts/polygon-137/0x0dfbc9b86cca6370b2f303e61c823239dfb696fa/) | ⚠️ Unaudited |
| AlgebraSwapper | unknown | polygon | n/a | [`0x00bc08759396ffda72f726b97f703b743a1af03f`](./contracts/polygon-137/0x00bc08759396ffda72f726b97f703b743a1af03f/) | ⚠️ Unaudited |
| AlgebraV4Adapter | unknown | sonic | n/a | [`0x93ad0f295f5c718b0ce82fffbeb4cfdef4e77f24`](./contracts/sonic-146/0x93ad0f295f5c718b0ce82fffbeb4cfdef4e77f24/) | ⚠️ Unaudited |
| Allocator | unknown | sonic | n/a | [`0xb6dd49fbb6a6ee28f0655bad5e509a2a8002933b`](./contracts/sonic-146/0xb6dd49fbb6a6ee28f0655bad5e509a2a8002933b/) | ⚠️ Unaudited |
| ALMPositionNameLib | unknown | base | n/a | [`0x79791d67588a50e613893d5d47e55303185bd7cc`](./contracts/base-8453/0x79791d67588a50e613893d5d47e55303185bd7cc/) | ⚠️ Unaudited |
| ALMShadowFarmStrategy | unknown | sonic | n/a | [`0x05f40734c64d946707417098ff40f6cd35087fc2`](./contracts/sonic-146/0x05f40734c64d946707417098ff40f6cd35087fc2/) | ⚠️ Unaudited |
| Api3Adapter | unknown | sonic | n/a | [`0x045c8a060474874c5918717ecd55f07b62c59a90`](./contracts/sonic-146/0x045c8a060474874c5918717ecd55f07b62c59a90/) | ⚠️ Unaudited |
| AprOracle | unknown | base | n/a | [`0x57fc539b66bdc081e19bd828e6c668b249867959`](./contracts/base-8453/0x57fc539b66bdc081e19bd828e6c668b249867959/) | ⚠️ Unaudited |
| AToken | unknown | sonic | n/a | [`0x17a5d25b63c6357281b12d5ec761df53478d50ee`](./contracts/sonic-146/0x17a5d25b63c6357281b12d5ec761df53478d50ee/) | ⚠️ Unaudited |
| Aurum | unknown | sonic | n/a | [`0x7f144f8691cba3d2efd8e5bcf042f9303ee31a46`](./contracts/sonic-146/0x7f144f8691cba3d2efd8e5bcf042f9303ee31a46/) | ⚠️ Unaudited |
| BalancerComposableStablePoolSwapper | unknown | polygon | n/a | [`0xab6f8e82ddea3ee2ad192cfe92dd608f4ad7d574`](./contracts/polygon-137/0xab6f8e82ddea3ee2ad192cfe92dd608f4ad7d574/) | ⚠️ Unaudited |
| BeetsStableFarm | unknown | sonic | n/a | [`0x54ea393aac117d67b913f1cc63df143761519a63`](./contracts/sonic-146/0x54ea393aac117d67b913f1cc63df143761519a63/) | ⚠️ Unaudited |
| BeetsWeightedFarm | unknown | sonic | n/a | [`0x72b931a12aacda6729b4f8f76454855cb5195941`](./contracts/sonic-146/0x72b931a12aacda6729b4f8f76454855cb5195941/) | ⚠️ Unaudited |
| BorrowLogic | unknown | sonic | n/a | [`0x011d9b51758bfede6396c55129f754b684840f93`](./contracts/sonic-146/0x011d9b51758bfede6396c55129f754b684840f93/) | ⚠️ Unaudited |
| CommonLib | unknown | polygon | n/a | [`0x075333569edac16f5a88b0e1ed4930886abe1088`](./contracts/polygon-137/0x075333569edac16f5a88b0e1ed4930886abe1088/) | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | sonic | n/a | [`0x405c82acd100f8e136b6c23b828ae64a44a0f601`](./contracts/sonic-146/0x405c82acd100f8e136b6c23b828ae64a44a0f601/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | sonic | n/a | [`0x0778671fbd150cc806b725b68ca7d1c57c088364`](./contracts/sonic-146/0x0778671fbd150cc806b725b68ca7d1c57c088364/) | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | sonic | n/a | [`0x08fe64851ddc1e79024c870f415bb7a8ba6f61b6`](./contracts/sonic-146/0x08fe64851ddc1e79024c870f415bb7a8ba6f61b6/) | ⚠️ Unaudited |
| DeployerLib | unknown | polygon | n/a | [`0x008be4fabe48981e01c017f8249325d5fcc3f8c9`](./contracts/polygon-137/0x008be4fabe48981e01c017f8249325d5fcc3f8c9/) | ⚠️ Unaudited |
| DepositHelper | unknown | polygon | n/a | [`0x36093c7be3b060513002e9ca763456cd5048bcbe`](./contracts/polygon-137/0x36093c7be3b060513002e9ca763456cd5048bcbe/) | ⚠️ Unaudited |
| DividendToken | unknown | polygon | n/a | [`0xd4a5f0a6bf09c1dc042254329ac144d99412f3a5`](./contracts/polygon-137/0xd4a5f0a6bf09c1dc042254329ac144d99412f3a5/) | ⚠️ Unaudited |
| DQMFLib | unknown | polygon | n/a | [`0x1ff6a3d3d93f756df9a2feb26e4b05cce6d995da`](./contracts/polygon-137/0x1ff6a3d3d93f756df9a2feb26e4b05cce6d995da/) | ⚠️ Unaudited |
| EModeLogic | unknown | sonic | n/a | [`0x309d2169bb582943da74d3aeba9ce7cdfb8e85fd`](./contracts/sonic-146/0x309d2169bb582943da74d3aeba9ce7cdfb8e85fd/) | ⚠️ Unaudited |
| EqualizerFarmStrategy | unknown | sonic | n/a | [`0x0c3c948c324a75d548142ce1d9329c1eec7ca977`](./contracts/sonic-146/0x0c3c948c324a75d548142ce1d9329c1eec7ca977/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x2165f4f4f13a7cd900cfcc9035ab03401fe9270c`](./contracts/polygon-137/0x2165f4f4f13a7cd900cfcc9035ab03401fe9270c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x29353bb4c9010c6112a77d702ac890e70cd73d53`](./contracts/polygon-137/0x29353bb4c9010c6112a77d702ac890e70cd73d53/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x6214ba4ce85c0a6f6025b0d63be7d65214463226`](./contracts/polygon-137/0x6214ba4ce85c0a6f6025b0d63be7d65214463226/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x9844a1c30462b55cd383a2c06f90bb4171f9d4bb`](./contracts/polygon-137/0x9844a1c30462b55cd383a2c06f90bb4171f9d4bb/) | ⚠️ Unaudited |
| ERC4626Adapter | unknown | sonic | n/a | [`0x8af63b65130704db90cfa8ea9aa32379f4860c82`](./contracts/sonic-146/0x8af63b65130704db90cfa8ea9aa32379f4860c82/) | ⚠️ Unaudited |
| EulerStrategy | unknown | sonic | n/a | [`0x73494971656288ed799743f131144dfd0a91c99f`](./contracts/sonic-146/0x73494971656288ed799743f131144dfd0a91c99f/) | ⚠️ Unaudited |
| Factory | unknown | polygon | n/a | [`0x46667c868e3ac78b679f951cc0e9f5a7383ed008`](./contracts/polygon-137/0x46667c868e3ac78b679f951cc0e9f5a7383ed008/) | ⚠️ Unaudited |
| FactoryLib | unknown | polygon | n/a | [`0x0ae170a7fe06ecb8c961563407686eb3704c0291`](./contracts/polygon-137/0x0ae170a7fe06ecb8c961563407686eb3704c0291/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | sonic | n/a | [`0xaa2848e204f72b1fa93f036e8630cf9155dd7067`](./contracts/sonic-146/0xaa2848e204f72b1fa93f036e8630cf9155dd7067/) | ⚠️ Unaudited |
| Frontend | unknown | sonic | n/a | [`0x15487495cce9210795f9c2e0e1a7238e336dfc32`](./contracts/sonic-146/0x15487495cce9210795f9c2e0e1a7238e336dfc32/) | ⚠️ Unaudited |
| GammaLib | unknown | polygon | n/a | [`0xb0a4a3fb20fe5f005964f06524f1e12de4a5fd8c`](./contracts/polygon-137/0xb0a4a3fb20fe5f005964f06524f1e12de4a5fd8c/) | ⚠️ Unaudited |
| GammaQuickSwapFarmStrategy | unknown | polygon | n/a | [`0x1f3fc619863211906f28ef3abb2e7cd9f9ada65f`](./contracts/polygon-137/0x1f3fc619863211906f28ef3abb2e7cd9f9ada65f/) | ⚠️ Unaudited |
| GovTimelock | unknown | polygon | n/a | [`0x40ff0883f6ab81f7d617f9502fdfc5e497fa34d8`](./contracts/polygon-137/0x40ff0883f6ab81f7d617f9502fdfc5e497fa34d8/) | ⚠️ Unaudited |
| GRMFLib | unknown | polygon | n/a | [`0x255a88cfc4b4a71d660e699bbad43694cd2064f9`](./contracts/polygon-137/0x255a88cfc4b4a71d660e699bbad43694cd2064f9/) | ⚠️ Unaudited |
| HardWorker | unknown | base | n/a | [`0x1e412c1e9e25ef09ae91f52b74014ff804442175`](./contracts/base-8453/0x1e412c1e9e25ef09ae91f52b74014ff804442175/) | ⚠️ Unaudited |
| IchiSwapXFarmStrategy | unknown | sonic | n/a | [`0x42e27463b0ce2901ce8e8028c435cea5f97ff239`](./contracts/sonic-146/0x42e27463b0ce2901ce8e8028c435cea5f97ff239/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | sonic | n/a | [`0x0e009bd3eed7a6650b0f782adb393abdc22c9d87`](./contracts/sonic-146/0x0e009bd3eed7a6650b0f782adb393abdc22c9d87/) | ⚠️ Unaudited |
| IQMFLib | unknown | polygon | n/a | [`0x5ce1f7f66cff82e32992b09ccbb6aa23f4fbb3b1`](./contracts/polygon-137/0x5ce1f7f66cff82e32992b09ccbb6aa23f4fbb3b1/) | ⚠️ Unaudited |
| IRMFLib | unknown | polygon | n/a | [`0x2dd3fe9ea9f4e6141e6644fdbea6d0f919d2f38c`](./contracts/polygon-137/0x2dd3fe9ea9f4e6141e6644fdbea6d0f919d2f38c/) | ⚠️ Unaudited |
| KyberSwapper | unknown | polygon | n/a | [`0x7d661fa2da3089ccfb60a33411229ddc2f52fb94`](./contracts/polygon-137/0x7d661fa2da3089ccfb60a33411229ddc2f52fb94/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | sonic | n/a | [`0x1132546d384fda1285091f207e9a3ca7173e3636`](./contracts/sonic-146/0x1132546d384fda1285091f207e9a3ca7173e3636/) | ⚠️ Unaudited |
| LPStrategyLib | unknown | polygon | n/a | [`0x0c0697b5d55418e17ab5adb9eb000c42e3197e6c`](./contracts/polygon-137/0x0c0697b5d55418e17ab5adb9eb000c42e3197e6c/) | ⚠️ Unaudited |
| MetaRouter | unknown | polygon | n/a | [`0x2c40fe0c7de47e050d168455c2f5292d2fa96c7f`](./contracts/polygon-137/0x2c40fe0c7de47e050d168455c2f5292d2fa96c7f/) | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | sonic | n/a | [`0x3368619c2f8333298dd406f774bea188ee150124`](./contracts/sonic-146/0x3368619c2f8333298dd406f774bea188ee150124/) | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | sonic | n/a | [`0x43d13dbd46f7cca8ef56f1eef3872685abad2569`](./contracts/sonic-146/0x43d13dbd46f7cca8ef56f1eef3872685abad2569/) | ⚠️ Unaudited |
| PoolLogic | unknown | sonic | n/a | [`0x24f0cc8484f29c218d15992068572daac4e9a71c`](./contracts/sonic-146/0x24f0cc8484f29c218d15992068572daac4e9a71c/) | ⚠️ Unaudited |
| PriceReader | unknown | base | n/a | [`0x22745e0262e6a94c6e8b74569a2c988189936cde`](./contracts/base-8453/0x22745e0262e6a94c6e8b74569a2c988189936cde/) | ⚠️ Unaudited |
| ProfitMaker | unknown | polygon | n/a | [`0x1c4cbcafe90140080af3bbe8743e54d7c602a67a`](./contracts/polygon-137/0x1c4cbcafe90140080af3bbe8743e54d7c602a67a/) | ⚠️ Unaudited |
| ProfitToken | unknown | polygon | n/a | [`0x48469a0481254d5945e7e56c1eb9861429c02f44`](./contracts/polygon-137/0x48469a0481254d5945e7e56c1eb9861429c02f44/) | ⚠️ Unaudited |
| Proxy | unknown | polygon | n/a | [`0x2116e254bccb932a788d2fcf1c5199e8dcf19e80`](./contracts/polygon-137/0x2116e254bccb932a788d2fcf1c5199e8dcf19e80/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x029dfd1a79e0ad9305d773fb8f3c01d8ef9b913d`](./contracts/sonic-146/0x029dfd1a79e0ad9305d773fb8f3c01d8ef9b913d/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x0391abdcfab86947d93f9dd032955733b639416b`](./contracts/sonic-146/0x0391abdcfab86947d93f9dd032955733b639416b/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x17a7cf838a7c91de47552a9f65822b547f9a6997`](./contracts/sonic-146/0x17a7cf838a7c91de47552a9f65822b547f9a6997/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x3950b3a43fa0687561bc5c8e32d2ee826d88a661`](./contracts/sonic-146/0x3950b3a43fa0687561bc5c8e32d2ee826d88a661/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x7d6641cf68e5169c11d91266d3e410130de70b9e`](./contracts/sonic-146/0x7d6641cf68e5169c11d91266d3e410130de70b9e/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x902215dd96a291b256a3aef6c4dee62d2a9b80cb`](./contracts/sonic-146/0x902215dd96a291b256a3aef6c4dee62d2a9b80cb/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0x9fce12c813fc2280a800e8683b918de121b2437b`](./contracts/sonic-146/0x9fce12c813fc2280a800e8683b918de121b2437b/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0xa039cdbd5b800208e20a02b5aa02f21e3062cce5`](./contracts/sonic-146/0xa039cdbd5b800208e20a02b5aa02f21e3062cce5/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0xb8fa84494bfc3cf7143363e10123396debfc9d9f`](./contracts/sonic-146/0xb8fa84494bfc3cf7143363e10123396debfc9d9f/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0xc53172db113fbb310a4d53ec3bcfa60f233abb73`](./contracts/sonic-146/0xc53172db113fbb310a4d53ec3bcfa60f233abb73/) | ⚠️ Unaudited |
| Proxy | unknown | sonic | n/a | [`0xcd85425ff6c07cf09ca6ac8f683e8164f27c143c`](./contracts/sonic-146/0xcd85425ff6c07cf09ca6ac8f683e8164f27c143c/) | ⚠️ Unaudited |
| Proxy | unknown | base | n/a | [`0x005d71553ad3f8f919e5121aa45bf24594dce0d6`](./contracts/base-8453/0x005d71553ad3f8f919e5121aa45bf24594dce0d6/) | ⚠️ Unaudited |
| ProxyControlled | unknown | polygon | n/a | [`0x8825fdf0018d136b923f4c31ea92548edbefb611`](./contracts/polygon-137/0x8825fdf0018d136b923f4c31ea92548edbefb611/) | ⚠️ Unaudited |
| ProxyControlled | unknown | polygon | n/a | [`0xa448329a95970194567fca4b6b1b0bba4ac0bf66`](./contracts/polygon-137/0xa448329a95970194567fca4b6b1b0bba4ac0bf66/) | ⚠️ Unaudited |
| ProxyFactory | unknown | sonic | n/a | [`0x54ae5e8c474cb95e71c0291da1ad8b2e82171ae1`](./contracts/sonic-146/0x54ae5e8c474cb95e71c0291da1ad8b2e82171ae1/) | ⚠️ Unaudited |
| QSMFLib | unknown | polygon | n/a | [`0x6b9b1472799bec9ce6e604f3b28f05abe6ae03ae`](./contracts/polygon-137/0x6b9b1472799bec9ce6e604f3b28f05abe6ae03ae/) | ⚠️ Unaudited |
| QuickswapLib | unknown | polygon | n/a | [`0x5a4a05a6820b9d4a5d46b7615b1fbede18e54079`](./contracts/polygon-137/0x5a4a05a6820b9d4a5d46b7615b1fbede18e54079/) | ⚠️ Unaudited |
| RebalanceHelper | unknown | sonic | n/a | [`0x659119200de09f266f3256a70986713ca1ee04d8`](./contracts/sonic-146/0x659119200de09f266f3256a70986713ca1ee04d8/) | ⚠️ Unaudited |
| RecoveryToken | unknown | sonic | n/a | [`0x85c04c502c01fa7b4bb8040647d5d6cec1074257`](./contracts/sonic-146/0x85c04c502c01fa7b4bb8040647d5d6cec1074257/) | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | sonic | n/a | [`0x006d758313845305c3a8be1ebd99874c90c3b062`](./contracts/sonic-146/0x006d758313845305c3a8be1ebd99874c90c3b062/) | ⚠️ Unaudited |
| RVaultLib | unknown | polygon | n/a | [`0x0f0f211e2d89315333385a8e4d0ea76106370b0c`](./contracts/polygon-137/0x0f0f211e2d89315333385a8e4d0ea76106370b0c/) | ⚠️ Unaudited |
| Sale | unknown | sonic | n/a | [`0x0a02be0de3dd109b1abf4c197f0b58a3bb68ea1f`](./contracts/sonic-146/0x0a02be0de3dd109b1abf4c197f0b58a3bb68ea1f/) | ⚠️ Unaudited |
| SaleReceiptToken | unknown | sonic | n/a | [`0x4d61cb8553bb5db02df3bdc6cda88aa85b32224b`](./contracts/sonic-146/0x4d61cb8553bb5db02df3bdc6cda88aa85b32224b/) | ⚠️ Unaudited |
| SiloAdvancedLeverageStrategy | unknown | sonic | n/a | [`0x254af2fb93af3f65143cd079874486d51f3d1a3a`](./contracts/sonic-146/0x254af2fb93af3f65143cd079874486d51f3d1a3a/) | ⚠️ Unaudited |
| SiloFarmStrategy | unknown | sonic | n/a | [`0x72b033e6774e0afc8c029c36f78525ac521a3703`](./contracts/sonic-146/0x72b033e6774e0afc8c029c36f78525ac521a3703/) | ⚠️ Unaudited |
| SiloLeverageStrategy | unknown | sonic | n/a | [`0x2c4b9b522d3e9b4232ef469c332c4429c27a5368`](./contracts/sonic-146/0x2c4b9b522d3e9b4232ef469c332c4429c27a5368/) | ⚠️ Unaudited |
| SiloManagedFarmStrategy | unknown | sonic | n/a | [`0x63903f47139eab282b62add051485da2755f8f0a`](./contracts/sonic-146/0x63903f47139eab282b62add051485da2755f8f0a/) | ⚠️ Unaudited |
| SiloManagedMerklFarmStrategy | unknown | sonic | n/a | [`0xea23cce3844b0eb82dad0e5ad688ddd67b2cf90f`](./contracts/sonic-146/0xea23cce3844b0eb82dad0e5ad688ddd67b2cf90f/) | ⚠️ Unaudited |
| SiloStrategy | unknown | sonic | n/a | [`0x4e1b5ae6f511f838b664d7aacbee3088f08d7079`](./contracts/sonic-146/0x4e1b5ae6f511f838b664d7aacbee3088f08d7079/) | ⚠️ Unaudited |
| SolidlyAdapter | unknown | sonic | n/a | [`0xdc9282c2c0bf94832db65f9120f3d51c7bec752d`](./contracts/sonic-146/0xdc9282c2c0bf94832db65f9120f3d51c7bec752d/) | ⚠️ Unaudited |
| Splitter | unknown | polygon | n/a | [`0x50b867305f71ebcbbbdd2c9d249d611691b8e458`](./contracts/polygon-137/0x50b867305f71ebcbbbdd2c9d249d611691b8e458/) | ⚠️ Unaudited |
| StabilityDAO | unknown | polygon | n/a | [`0xc82676d6025bba6df3585d2450ef6d0ee9b8607e`](./contracts/polygon-137/0xc82676d6025bba6df3585d2450ef6d0ee9b8607e/) | ⚠️ Unaudited |
| StableDebtToken | unknown | sonic | n/a | [`0x0b4ee8a5ee2ef36555e6f48a4afd80fbde3eed4c`](./contracts/sonic-146/0x0b4ee8a5ee2ef36555e6f48a4afd80fbde3eed4c/) | ⚠️ Unaudited |
| STBL | unknown | sonic | n/a | [`0x78a76316f66224cbaca6e70acb24d5ee5b2bd2c7`](./contracts/sonic-146/0x78a76316f66224cbaca6e70acb24d5ee5b2bd2c7/) | ⚠️ Unaudited |
| StrategyDeveloperLib | unknown | polygon | n/a | [`0xc766a4cac8b55a95c64715b3cb024f0a5843448d`](./contracts/polygon-137/0xc766a4cac8b55a95c64715b3cb024f0a5843448d/) | ⚠️ Unaudited |
| StrategyLogic | unknown | polygon | n/a | [`0x1a034458ad126cbf1f03eeb12064396b81158410`](./contracts/polygon-137/0x1a034458ad126cbf1f03eeb12064396b81158410/) | ⚠️ Unaudited |
| StrategyLogicLib | unknown | base | n/a | [`0xa7e1d04e82ac8f1a223f2feb634d57ceba6f3557`](./contracts/base-8453/0xa7e1d04e82ac8f1a223f2feb634d57ceba6f3557/) | ⚠️ Unaudited |
| SupplyLogic | unknown | sonic | n/a | [`0x23a63c6866bd20dac16f419b9965e3fdd6beea70`](./contracts/sonic-146/0x23a63c6866bd20dac16f419b9965e3fdd6beea70/) | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | [`0x0007397cf51d5bdcd409045c2a3bf683e6e325ef`](./contracts/base-8453/0x0007397cf51d5bdcd409045c2a3bf683e6e325ef/) | ⚠️ Unaudited |
| SwapXFarmStrategy | unknown | sonic | n/a | [`0x58d978b1efaac1f6fd98ab721a1ee2a7c1cdb2a3`](./contracts/sonic-146/0x58d978b1efaac1f6fd98ab721a1ee2a7c1cdb2a3/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x1ce90e4adf41a4107580cd58ae1075b2e5270e75`](./contracts/polygon-137/0x1ce90e4adf41a4107580cd58ae1075b2e5270e75/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x1f46804e2d4b11ce7a61e36720df316b7343b023`](./contracts/polygon-137/0x1f46804e2d4b11ce7a61e36720df316b7343b023/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x2539c8c0efc0a2d3e453cb940e9c143383652c94`](./contracts/polygon-137/0x2539c8c0efc0a2d3e453cb940e9c143383652c94/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0x2ee619589ca1787398979ec3b3eb44c4a4d18ce5`](./contracts/polygon-137/0x2ee619589ca1787398979ec3b3eb44c4a4d18ce5/) | ⚠️ Unaudited |
| TetuProxyControlled | unknown | polygon | n/a | [`0xaa059efdd3f47814d7eea0df793ad7c70795e2c7`](./contracts/polygon-137/0xaa059efdd3f47814d7eea0df793ad7c70795e2c7/) | ⚠️ Unaudited |
| Token | unknown | sonic | n/a | [`0x9a08cd5691e009cc72e2a4d8e7f2e6ee14e96d6d`](./contracts/sonic-146/0x9a08cd5691e009cc72e2a4d8e7f2e6ee14e96d6d/) | ⚠️ Unaudited |
| TokenSender | unknown | sonic | n/a | [`0x018af6336c7cedba68a1745b063a87e437321bf9`](./contracts/sonic-146/0x018af6336c7cedba68a1745b063a87e437321bf9/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | sonic | n/a | [`0x0444e9156fa391f1799e7b2bcf480d0488687ef7`](./contracts/sonic-146/0x0444e9156fa391f1799e7b2bcf480d0488687ef7/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | sonic | n/a | [`0x00d85ee4a74c9bb3837e21959298914d941a2eae`](./contracts/sonic-146/0x00d85ee4a74c9bb3837e21959298914d941a2eae/) | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | base | n/a | [`0x43a6d1ba67264be41628d4ca6a493946ad11a246`](./contracts/base-8453/0x43a6d1ba67264be41628d4ca6a493946ad11a246/) | ⚠️ Unaudited |
| UpgradeHelper | unknown | sonic | n/a | [`0x8aa4e3cfd805d33c0215dcab9a5c9223ab3d938a`](./contracts/sonic-146/0x8aa4e3cfd805d33c0215dcab9a5c9223ab3d938a/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | sonic | n/a | [`0x21561536f274982cd0aed2515ac3e0c5e293af47`](./contracts/sonic-146/0x21561536f274982cd0aed2515ac3e0c5e293af47/) | ⚠️ Unaudited |
| VaultManager | unknown | base | n/a | [`0x418914aabb2c21afc7dc216dceda4cb03ec2aa8e`](./contracts/base-8453/0x418914aabb2c21afc7dc216dceda4cb03ec2aa8e/) | ⚠️ Unaudited |
| VaultManagerLib | unknown | polygon | n/a | [`0x1fb1f5f63d938a5ff0bd2dfbad9f3f358a994548`](./contracts/polygon-137/0x1fb1f5f63d938a5ff0bd2dfbad9f3f358a994548/) | ⚠️ Unaudited |
| VaultOracle | unknown | sonic | n/a | [`0x34f8918e117c28842f044e5fe262b9dbc12825a1`](./contracts/sonic-146/0x34f8918e117c28842f044e5fe262b9dbc12825a1/) | ⚠️ Unaudited |
| Vesting | unknown | sonic | n/a | [`0x1a125ff7efdb54dc9efb4ad90c552c4c8822b212`](./contracts/sonic-146/0x1a125ff7efdb54dc9efb4ad90c552c4c8822b212/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | sonic | n/a | [`0x009efeb54f27d24c051a08d3bd2957c095f483cc`](./contracts/sonic-146/0x009efeb54f27d24c051a08d3bd2957c095f483cc/) | ⚠️ Unaudited |
| WrappedMetaVaultOracle | unknown | sonic | n/a | [`0x440a6bf579069fa4e7c3c9fe634b34d2c78c584c`](./contracts/sonic-146/0x440a6bf579069fa4e7c3c9fe634b34d2c78c584c/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | sonic | n/a | [`0x1368da91b6a293cc4de744f009efd06040f694b9`](./contracts/sonic-146/0x1368da91b6a293cc4de744f009efd06040f694b9/) | ⚠️ Unaudited |
| XSTBL | unknown | sonic | n/a | [`0x3ab56a0728a8f5ebb9bfc1c5818ea09bfaab1d3b`](./contracts/sonic-146/0x3ab56a0728a8f5ebb9bfc1c5818ea09bfaab1d3b/) | ⚠️ Unaudited |
| XUSDBridgedOracle | unknown | sonic | n/a | [`0x3b7d4a571b00c53a8f4f829f1b3ce78c375aa890`](./contracts/sonic-146/0x3b7d4a571b00c53a8f4f829f1b3ce78c375aa890/) | ⚠️ Unaudited |
| ZapTetuBal | unknown | polygon | n/a | [`0x3aa67b2ae7316c9a158cd63772e2e7074125c8dc`](./contracts/polygon-137/0x3aa67b2ae7316c9a158cd63772e2e7074125c8dc/) | ⚠️ Unaudited |
| ZapTetuBalHelper | unknown | polygon | n/a | [`0xa80597f67121bf2604f7da810651a3d6ca733d20`](./contracts/polygon-137/0xa80597f67121bf2604f7da810651a3d6ca733d20/) | ⚠️ Unaudited |
| ZapV2 | unknown | polygon | n/a | [`0x3a6729f8866ea8c21b32a13d52a69c3de48c7f05`](./contracts/polygon-137/0x3a6729f8866ea8c21b32a13d52a69c3de48c7f05/) | ⚠️ Unaudited |
| ZapV2Helper | unknown | polygon | n/a | [`0x8013e18cc2d3530a6f80b9fee13e67479f7a3519`](./contracts/polygon-137/0x8013e18cc2d3530a6f80b9fee13e67479f7a3519/) | ⚠️ Unaudited |
| ZapV2XTetuBal | unknown | polygon | n/a | [`0xc37916ed31ea4fa26593b29aa03c0b8bbc7040b6`](./contracts/polygon-137/0xc37916ed31ea4fa26593b29aa03c0b8bbc7040b6/) | ⚠️ Unaudited |

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
| [aave.com/security](https://aave.com/security) | yAudit | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [14-01-2022_PeckShield_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [initial-audit-stability-platform-v24.01.1-alpha.md](https://github.com/stabilitydao/stability-contracts/blob/main/audits/initial-audit-stability-platform-v24.01.1-alpha.md) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [report-cantina.pdf](https://github.com/stabilitydao/stability-contracts/blob/main/audits/report-cantina.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 15 | medium |
| [audits.md](https://docs.soniclabs.com/technology/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/sonic-gateway-audit](https://www.openzeppelin.com/news/sonic-gateway-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/sonic-gateway/fbb78575-2a22-4f4b-813f-340eb6296185/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.certora.com/reports/sonic-bridge](https://www.certora.com/reports/sonic-bridge) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/sonic-opera-native-token-bridge-audit](https://www.openzeppelin.com/news/sonic-opera-native-token-bridge-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20260514-cantina-report-sky-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260514-cantina-report-sky-xchain-ssr-oracle.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [v120-cantina-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-cantina-audit.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [v120-chainsecurity-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [20260504-cantina-report-sky-stusdsmom.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260504-cantina-report-sky-stusdsmom.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [v100-cantina-audit.pdf](https://github.com/sparkdotfi/spark-savings-intents/blob/master/audits/v100-cantina-audit.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [v100-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-savings-intents/blob/master/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |
| [v160-cantina-audit.pdf](https://github.com/sparkdotfi/sparklend-advanced/blob/master/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2026-02 | fresh | Inherited from Spark — forked code, scoped to ACLManager, PoolConfigurator, RewardsController | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x4c7505a433905dab0cbe989f0bb090fdc1b82dfe`](./contracts/sonic-146/0x4c7505a433905dab0cbe989f0bb090fdc1b82dfe/) | AggregatorAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0dfbc9b86cca6370b2f303e61c823239dfb696fa`](./contracts/polygon-137/0x0dfbc9b86cca6370b2f303e61c823239dfb696fa/) | AlgebraAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00bc08759396ffda72f726b97f703b743a1af03f`](./contracts/polygon-137/0x00bc08759396ffda72f726b97f703b743a1af03f/) | AlgebraSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x93ad0f295f5c718b0ce82fffbeb4cfdef4e77f24`](./contracts/sonic-146/0x93ad0f295f5c718b0ce82fffbeb4cfdef4e77f24/) | AlgebraV4Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb6dd49fbb6a6ee28f0655bad5e509a2a8002933b`](./contracts/sonic-146/0xb6dd49fbb6a6ee28f0655bad5e509a2a8002933b/) | Allocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79791d67588a50e613893d5d47e55303185bd7cc`](./contracts/base-8453/0x79791d67588a50e613893d5d47e55303185bd7cc/) | ALMPositionNameLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05f40734c64d946707417098ff40f6cd35087fc2`](./contracts/sonic-146/0x05f40734c64d946707417098ff40f6cd35087fc2/) | ALMShadowFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x045c8a060474874c5918717ecd55f07b62c59a90`](./contracts/sonic-146/0x045c8a060474874c5918717ecd55f07b62c59a90/) | Api3Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x57fc539b66bdc081e19bd828e6c668b249867959`](./contracts/base-8453/0x57fc539b66bdc081e19bd828e6c668b249867959/) | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x17a5d25b63c6357281b12d5ec761df53478d50ee`](./contracts/sonic-146/0x17a5d25b63c6357281b12d5ec761df53478d50ee/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f144f8691cba3d2efd8e5bcf042f9303ee31a46`](./contracts/sonic-146/0x7f144f8691cba3d2efd8e5bcf042f9303ee31a46/) | Aurum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x54ea393aac117d67b913f1cc63df143761519a63`](./contracts/sonic-146/0x54ea393aac117d67b913f1cc63df143761519a63/) | BeetsStableFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x72b931a12aacda6729b4f8f76454855cb5195941`](./contracts/sonic-146/0x72b931a12aacda6729b4f8f76454855cb5195941/) | BeetsWeightedFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x011d9b51758bfede6396c55129f754b684840f93`](./contracts/sonic-146/0x011d9b51758bfede6396c55129f754b684840f93/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x075333569edac16f5a88b0e1ed4930886abe1088`](./contracts/polygon-137/0x075333569edac16f5a88b0e1ed4930886abe1088/) | CommonLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x405c82acd100f8e136b6c23b828ae64a44a0f601`](./contracts/sonic-146/0x405c82acd100f8e136b6c23b828ae64a44a0f601/) | ConfiguratorLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0778671fbd150cc806b725b68ca7d1c57c088364`](./contracts/sonic-146/0x0778671fbd150cc806b725b68ca7d1c57c088364/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x08fe64851ddc1e79024c870f415bb7a8ba6f61b6`](./contracts/sonic-146/0x08fe64851ddc1e79024c870f415bb7a8ba6f61b6/) | DelegationAwareAToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x008be4fabe48981e01c017f8249325d5fcc3f8c9`](./contracts/polygon-137/0x008be4fabe48981e01c017f8249325d5fcc3f8c9/) | DeployerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x36093c7be3b060513002e9ca763456cd5048bcbe`](./contracts/polygon-137/0x36093c7be3b060513002e9ca763456cd5048bcbe/) | DepositHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4a5f0a6bf09c1dc042254329ac144d99412f3a5`](./contracts/polygon-137/0xd4a5f0a6bf09c1dc042254329ac144d99412f3a5/) | DividendToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ff6a3d3d93f756df9a2feb26e4b05cce6d995da`](./contracts/polygon-137/0x1ff6a3d3d93f756df9a2feb26e4b05cce6d995da/) | DQMFLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x309d2169bb582943da74d3aeba9ce7cdfb8e85fd`](./contracts/sonic-146/0x309d2169bb582943da74d3aeba9ce7cdfb8e85fd/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c3c948c324a75d548142ce1d9329c1eec7ca977`](./contracts/sonic-146/0x0c3c948c324a75d548142ce1d9329c1eec7ca977/) | EqualizerFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8af63b65130704db90cfa8ea9aa32379f4860c82`](./contracts/sonic-146/0x8af63b65130704db90cfa8ea9aa32379f4860c82/) | ERC4626Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x73494971656288ed799743f131144dfd0a91c99f`](./contracts/sonic-146/0x73494971656288ed799743f131144dfd0a91c99f/) | EulerStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46667c868e3ac78b679f951cc0e9f5a7383ed008`](./contracts/polygon-137/0x46667c868e3ac78b679f951cc0e9f5a7383ed008/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ae170a7fe06ecb8c961563407686eb3704c0291`](./contracts/polygon-137/0x0ae170a7fe06ecb8c961563407686eb3704c0291/) | FactoryLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xaa2848e204f72b1fa93f036e8630cf9155dd7067`](./contracts/sonic-146/0xaa2848e204f72b1fa93f036e8630cf9155dd7067/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x15487495cce9210795f9c2e0e1a7238e336dfc32`](./contracts/sonic-146/0x15487495cce9210795f9c2e0e1a7238e336dfc32/) | Frontend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb0a4a3fb20fe5f005964f06524f1e12de4a5fd8c`](./contracts/polygon-137/0xb0a4a3fb20fe5f005964f06524f1e12de4a5fd8c/) | GammaLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f3fc619863211906f28ef3abb2e7cd9f9ada65f`](./contracts/polygon-137/0x1f3fc619863211906f28ef3abb2e7cd9f9ada65f/) | GammaQuickSwapFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40ff0883f6ab81f7d617f9502fdfc5e497fa34d8`](./contracts/polygon-137/0x40ff0883f6ab81f7d617f9502fdfc5e497fa34d8/) | GovTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x255a88cfc4b4a71d660e699bbad43694cd2064f9`](./contracts/polygon-137/0x255a88cfc4b4a71d660e699bbad43694cd2064f9/) | GRMFLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e412c1e9e25ef09ae91f52b74014ff804442175`](./contracts/base-8453/0x1e412c1e9e25ef09ae91f52b74014ff804442175/) | HardWorker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x42e27463b0ce2901ce8e8028c435cea5f97ff239`](./contracts/sonic-146/0x42e27463b0ce2901ce8e8028c435cea5f97ff239/) | IchiSwapXFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5ce1f7f66cff82e32992b09ccbb6aa23f4fbb3b1`](./contracts/polygon-137/0x5ce1f7f66cff82e32992b09ccbb6aa23f4fbb3b1/) | IQMFLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2dd3fe9ea9f4e6141e6644fdbea6d0f919d2f38c`](./contracts/polygon-137/0x2dd3fe9ea9f4e6141e6644fdbea6d0f919d2f38c/) | IRMFLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7d661fa2da3089ccfb60a33411229ddc2f52fb94`](./contracts/polygon-137/0x7d661fa2da3089ccfb60a33411229ddc2f52fb94/) | KyberSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1132546d384fda1285091f207e9a3ca7173e3636`](./contracts/sonic-146/0x1132546d384fda1285091f207e9a3ca7173e3636/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c0697b5d55418e17ab5adb9eb000c42e3197e6c`](./contracts/polygon-137/0x0c0697b5d55418e17ab5adb9eb000c42e3197e6c/) | LPStrategyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c40fe0c7de47e050d168455c2f5292d2fa96c7f`](./contracts/polygon-137/0x2c40fe0c7de47e050d168455c2f5292d2fa96c7f/) | MetaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3368619c2f8333298dd406f774bea188ee150124`](./contracts/sonic-146/0x3368619c2f8333298dd406f774bea188ee150124/) | PoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x43d13dbd46f7cca8ef56f1eef3872685abad2569`](./contracts/sonic-146/0x43d13dbd46f7cca8ef56f1eef3872685abad2569/) | PoolAddressesProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x24f0cc8484f29c218d15992068572daac4e9a71c`](./contracts/sonic-146/0x24f0cc8484f29c218d15992068572daac4e9a71c/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x22745e0262e6a94c6e8b74569a2c988189936cde`](./contracts/base-8453/0x22745e0262e6a94c6e8b74569a2c988189936cde/) | PriceReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c4cbcafe90140080af3bbe8743e54d7c602a67a`](./contracts/polygon-137/0x1c4cbcafe90140080af3bbe8743e54d7c602a67a/) | ProfitMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x48469a0481254d5945e7e56c1eb9861429c02f44`](./contracts/polygon-137/0x48469a0481254d5945e7e56c1eb9861429c02f44/) | ProfitToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8825fdf0018d136b923f4c31ea92548edbefb611`](./contracts/polygon-137/0x8825fdf0018d136b923f4c31ea92548edbefb611/) | ProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa448329a95970194567fca4b6b1b0bba4ac0bf66`](./contracts/polygon-137/0xa448329a95970194567fca4b6b1b0bba4ac0bf66/) | ProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x54ae5e8c474cb95e71c0291da1ad8b2e82171ae1`](./contracts/sonic-146/0x54ae5e8c474cb95e71c0291da1ad8b2e82171ae1/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6b9b1472799bec9ce6e604f3b28f05abe6ae03ae`](./contracts/polygon-137/0x6b9b1472799bec9ce6e604f3b28f05abe6ae03ae/) | QSMFLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a4a05a6820b9d4a5d46b7615b1fbede18e54079`](./contracts/polygon-137/0x5a4a05a6820b9d4a5d46b7615b1fbede18e54079/) | QuickswapLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x659119200de09f266f3256a70986713ca1ee04d8`](./contracts/sonic-146/0x659119200de09f266f3256a70986713ca1ee04d8/) | RebalanceHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x85c04c502c01fa7b4bb8040647d5d6cec1074257`](./contracts/sonic-146/0x85c04c502c01fa7b4bb8040647d5d6cec1074257/) | RecoveryToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x006d758313845305c3a8be1ebd99874c90c3b062`](./contracts/sonic-146/0x006d758313845305c3a8be1ebd99874c90c3b062/) | ReservesSetupHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f0f211e2d89315333385a8e4d0ea76106370b0c`](./contracts/polygon-137/0x0f0f211e2d89315333385a8e4d0ea76106370b0c/) | RVaultLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0a02be0de3dd109b1abf4c197f0b58a3bb68ea1f`](./contracts/sonic-146/0x0a02be0de3dd109b1abf4c197f0b58a3bb68ea1f/) | Sale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4d61cb8553bb5db02df3bdc6cda88aa85b32224b`](./contracts/sonic-146/0x4d61cb8553bb5db02df3bdc6cda88aa85b32224b/) | SaleReceiptToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x254af2fb93af3f65143cd079874486d51f3d1a3a`](./contracts/sonic-146/0x254af2fb93af3f65143cd079874486d51f3d1a3a/) | SiloAdvancedLeverageStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x72b033e6774e0afc8c029c36f78525ac521a3703`](./contracts/sonic-146/0x72b033e6774e0afc8c029c36f78525ac521a3703/) | SiloFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2c4b9b522d3e9b4232ef469c332c4429c27a5368`](./contracts/sonic-146/0x2c4b9b522d3e9b4232ef469c332c4429c27a5368/) | SiloLeverageStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x63903f47139eab282b62add051485da2755f8f0a`](./contracts/sonic-146/0x63903f47139eab282b62add051485da2755f8f0a/) | SiloManagedFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xea23cce3844b0eb82dad0e5ad688ddd67b2cf90f`](./contracts/sonic-146/0xea23cce3844b0eb82dad0e5ad688ddd67b2cf90f/) | SiloManagedMerklFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4e1b5ae6f511f838b664d7aacbee3088f08d7079`](./contracts/sonic-146/0x4e1b5ae6f511f838b664d7aacbee3088f08d7079/) | SiloStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xdc9282c2c0bf94832db65f9120f3d51c7bec752d`](./contracts/sonic-146/0xdc9282c2c0bf94832db65f9120f3d51c7bec752d/) | SolidlyAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x50b867305f71ebcbbbdd2c9d249d611691b8e458`](./contracts/polygon-137/0x50b867305f71ebcbbbdd2c9d249d611691b8e458/) | Splitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc82676d6025bba6df3585d2450ef6d0ee9b8607e`](./contracts/polygon-137/0xc82676d6025bba6df3585d2450ef6d0ee9b8607e/) | StabilityDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0b4ee8a5ee2ef36555e6f48a4afd80fbde3eed4c`](./contracts/sonic-146/0x0b4ee8a5ee2ef36555e6f48a4afd80fbde3eed4c/) | StableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x78a76316f66224cbaca6e70acb24d5ee5b2bd2c7`](./contracts/sonic-146/0x78a76316f66224cbaca6e70acb24d5ee5b2bd2c7/) | STBL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc766a4cac8b55a95c64715b3cb024f0a5843448d`](./contracts/polygon-137/0xc766a4cac8b55a95c64715b3cb024f0a5843448d/) | StrategyDeveloperLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a034458ad126cbf1f03eeb12064396b81158410`](./contracts/polygon-137/0x1a034458ad126cbf1f03eeb12064396b81158410/) | StrategyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa7e1d04e82ac8f1a223f2feb634d57ceba6f3557`](./contracts/base-8453/0xa7e1d04e82ac8f1a223f2feb634d57ceba6f3557/) | StrategyLogicLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x23a63c6866bd20dac16f419b9965e3fdd6beea70`](./contracts/sonic-146/0x23a63c6866bd20dac16f419b9965e3fdd6beea70/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0007397cf51d5bdcd409045c2a3bf683e6e325ef`](./contracts/base-8453/0x0007397cf51d5bdcd409045c2a3bf683e6e325ef/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x58d978b1efaac1f6fd98ab721a1ee2a7c1cdb2a3`](./contracts/sonic-146/0x58d978b1efaac1f6fd98ab721a1ee2a7c1cdb2a3/) | SwapXFarmStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ce90e4adf41a4107580cd58ae1075b2e5270e75`](./contracts/polygon-137/0x1ce90e4adf41a4107580cd58ae1075b2e5270e75/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f46804e2d4b11ce7a61e36720df316b7343b023`](./contracts/polygon-137/0x1f46804e2d4b11ce7a61e36720df316b7343b023/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2539c8c0efc0a2d3e453cb940e9c143383652c94`](./contracts/polygon-137/0x2539c8c0efc0a2d3e453cb940e9c143383652c94/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2ee619589ca1787398979ec3b3eb44c4a4d18ce5`](./contracts/polygon-137/0x2ee619589ca1787398979ec3b3eb44c4a4d18ce5/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaa059efdd3f47814d7eea0df793ad7c70795e2c7`](./contracts/polygon-137/0xaa059efdd3f47814d7eea0df793ad7c70795e2c7/) | TetuProxyControlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9a08cd5691e009cc72e2a4d8e7f2e6ee14e96d6d`](./contracts/sonic-146/0x9a08cd5691e009cc72e2a4d8e7f2e6ee14e96d6d/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x018af6336c7cedba68a1745b063a87e437321bf9`](./contracts/sonic-146/0x018af6336c7cedba68a1745b063a87e437321bf9/) | TokenSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0444e9156fa391f1799e7b2bcf480d0488687ef7`](./contracts/sonic-146/0x0444e9156fa391f1799e7b2bcf480d0488687ef7/) | UiIncentiveDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00d85ee4a74c9bb3837e21959298914d941a2eae`](./contracts/sonic-146/0x00d85ee4a74c9bb3837e21959298914d941a2eae/) | UiPoolDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x43a6d1ba67264be41628d4ca6a493946ad11a246`](./contracts/base-8453/0x43a6d1ba67264be41628d4ca6a493946ad11a246/) | UniswapV3Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8aa4e3cfd805d33c0215dcab9a5c9223ab3d938a`](./contracts/sonic-146/0x8aa4e3cfd805d33c0215dcab9a5c9223ab3d938a/) | UpgradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x21561536f274982cd0aed2515ac3e0c5e293af47`](./contracts/sonic-146/0x21561536f274982cd0aed2515ac3e0c5e293af47/) | VariableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x418914aabb2c21afc7dc216dceda4cb03ec2aa8e`](./contracts/base-8453/0x418914aabb2c21afc7dc216dceda4cb03ec2aa8e/) | VaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1fb1f5f63d938a5ff0bd2dfbad9f3f358a994548`](./contracts/polygon-137/0x1fb1f5f63d938a5ff0bd2dfbad9f3f358a994548/) | VaultManagerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x34f8918e117c28842f044e5fe262b9dbc12825a1`](./contracts/sonic-146/0x34f8918e117c28842f044e5fe262b9dbc12825a1/) | VaultOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a125ff7efdb54dc9efb4ad90c552c4c8822b212`](./contracts/sonic-146/0x1a125ff7efdb54dc9efb4ad90c552c4c8822b212/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x009efeb54f27d24c051a08d3bd2957c095f483cc`](./contracts/sonic-146/0x009efeb54f27d24c051a08d3bd2957c095f483cc/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x440a6bf579069fa4e7c3c9fe634b34d2c78c584c`](./contracts/sonic-146/0x440a6bf579069fa4e7c3c9fe634b34d2c78c584c/) | WrappedMetaVaultOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1368da91b6a293cc4de744f009efd06040f694b9`](./contracts/sonic-146/0x1368da91b6a293cc4de744f009efd06040f694b9/) | WrappedTokenGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3ab56a0728a8f5ebb9bfc1c5818ea09bfaab1d3b`](./contracts/sonic-146/0x3ab56a0728a8f5ebb9bfc1c5818ea09bfaab1d3b/) | XSTBL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3b7d4a571b00c53a8f4f829f1b3ce78c375aa890`](./contracts/sonic-146/0x3b7d4a571b00c53a8f4f829f1b3ce78c375aa890/) | XUSDBridgedOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3aa67b2ae7316c9a158cd63772e2e7074125c8dc`](./contracts/polygon-137/0x3aa67b2ae7316c9a158cd63772e2e7074125c8dc/) | ZapTetuBal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa80597f67121bf2604f7da810651a3d6ca733d20`](./contracts/polygon-137/0xa80597f67121bf2604f7da810651a3d6ca733d20/) | ZapTetuBalHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3a6729f8866ea8c21b32a13d52a69c3de48c7f05`](./contracts/polygon-137/0x3a6729f8866ea8c21b32a13d52a69c3de48c7f05/) | ZapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8013e18cc2d3530a6f80b9fee13e67479f7a3519`](./contracts/polygon-137/0x8013e18cc2d3530a6f80b9fee13e67479f7a3519/) | ZapV2Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc37916ed31ea4fa26593b29aa03c0b8bbc7040b6`](./contracts/polygon-137/0xc37916ed31ea4fa26593b29aa03c0b8bbc7040b6/) | ZapV2XTetuBal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 120 |
| upstream | 1 |
| standard_library | 18 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=18, inherited_name_remap=48

Zero-match audit list:

- [21125] audits.md
- [21126] www.openzeppelin.com/news/sonic-gateway-audit
- [21127] index.html
- [21128] www.certora.com/reports/sonic-bridge
- [21129] www.openzeppelin.com/news/sonic-opera-native-token-bridge-audit

Fork inheritance lineage and inherited audits are included when available.
