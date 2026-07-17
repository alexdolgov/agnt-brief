# Agentic Audit Brief: Stability

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stability (`stability`)
- Website: [https://stability.farm](https://stability.farm)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, polygon, sonic
- Contract surface: 146 unique implementations (146 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,151,817.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stability. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, polygon, sonic. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x422025182dd83a610bfa8b20550dcccdf94dc549`, chain 146)
- UnnamedContract (`0x4aca671a420eeb58ecafe83700686a2ad06b20d8`, chain 146)
- UnnamedContract (`0x589a504f2ee9d054b483c700fa814863d639381e`, chain 146)
- UnnamedContract (`0x635b1f7dd7d0172533ba9fe5cfe2d83d9848f701`, chain 146)
- UnnamedContract (`0xc184a3ecca684f2621c903a7943d85fa42f56671`, chain 146)
- UnnamedContract (`0xe0e71b484bb20e37d18ab51fb60c32dec778478a`, chain 146)
- UnnamedContract (`0xe52fcf607a8328106723804de1ef65da512771be`, chain 146)
- Frontend (`0x15487495cce9210795f9c2e0e1a7238e336dfc32`, chain 146)
- Proxy (`0x029dfd1a79e0ad9305d773fb8f3c01d8ef9b913d`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 137 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 16 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Confirmed-live implementations: 9 of 146 unique; 137 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/139
- Verified + Unaudited implementations: 139
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 146
- Raw deployments: 146
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (139)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09c1f8cec4e91e178a584464c449cb270e0079c1` | ⚠️ Unaudited |
| AggregatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c7505a433905dab0cbe989f0bb090fdc1b82dfe` | ⚠️ Unaudited |
| AlgebraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dfbc9b86cca6370b2f303e61c823239dfb696fa` | ⚠️ Unaudited |
| AlgebraSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00bc08759396ffda72f726b97f703b743a1af03f` | ⚠️ Unaudited |
| AlgebraV4Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93ad0f295f5c718b0ce82fffbeb4cfdef4e77f24` | ⚠️ Unaudited |
| Allocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6dd49fbb6a6ee28f0655bad5e509a2a8002933b` | ⚠️ Unaudited |
| ALMPositionNameLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79791d67588a50e613893d5d47e55303185bd7cc` | ⚠️ Unaudited |
| ALMShadowFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05f40734c64d946707417098ff40f6cd35087fc2` | ⚠️ Unaudited |
| Api3Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x045c8a060474874c5918717ecd55f07b62c59a90` | ⚠️ Unaudited |
| AprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57fc539b66bdc081e19bd828e6c668b249867959` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17a5d25b63c6357281b12d5ec761df53478d50ee` | ⚠️ Unaudited |
| Aurum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f144f8691cba3d2efd8e5bcf042f9303ee31a46` | ⚠️ Unaudited |
| BalancerComposableStablePoolSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xab6f8e82ddea3ee2ad192cfe92dd608f4ad7d574` | ⚠️ Unaudited |
| BeetsStableFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54ea393aac117d67b913f1cc63df143761519a63` | ⚠️ Unaudited |
| BeetsWeightedFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x72b931a12aacda6729b4f8f76454855cb5195941` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x011d9b51758bfede6396c55129f754b684840f93` | ⚠️ Unaudited |
| CommonLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x075333569edac16f5a88b0e1ed4930886abe1088` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x405c82acd100f8e136b6c23b828ae64a44a0f601` | ⚠️ Unaudited |
| CVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0df1d0527f1fac9e5139be2318546b40677d8e9b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0778671fbd150cc806b725b68ca7d1c57c088364` | ⚠️ Unaudited |
| DefiEdgeQuickSwapMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14377abfdf6f068cfdfbfee83222d83f4b5ccfe0` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x08fe64851ddc1e79024c870f415bb7a8ba6f61b6` | ⚠️ Unaudited |
| DeployerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x008be4fabe48981e01c017f8249325d5fcc3f8c9` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36093c7be3b060513002e9ca763456cd5048bcbe` | ⚠️ Unaudited |
| DividendToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4a5f0a6bf09c1dc042254329ac144d99412f3a5` | ⚠️ Unaudited |
| DQMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff6a3d3d93f756df9a2feb26e4b05cce6d995da` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x309d2169bb582943da74d3aeba9ce7cdfb8e85fd` | ⚠️ Unaudited |
| EqualizerFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c3c948c324a75d548142ce1d9329c1eec7ca977` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x2165f4f4f13a7cd900cfcc9035ab03401fe9270c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x29353bb4c9010c6112a77d702ac890e70cd73d53` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x6214ba4ce85c0a6f6025b0d63be7d65214463226` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x9844a1c30462b55cd383a2c06f90bb4171f9d4bb` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8af63b65130704db90cfa8ea9aa32379f4860c82` | ⚠️ Unaudited |
| EulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x73494971656288ed799743f131144dfd0a91c99f` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46667c868e3ac78b679f951cc0e9f5a7383ed008` | ⚠️ Unaudited |
| FactoryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ae170a7fe06ecb8c961563407686eb3704c0291` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa2848e204f72b1fa93f036e8630cf9155dd7067` | ⚠️ Unaudited |
| Frontend | unknown | project_anchor | own_supporting | 0 | sonic | unit-392970 | `0x15487495cce9210795f9c2e0e1a7238e336dfc32` | ⚠️ Unaudited |
| GammaLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0a4a3fb20fe5f005964f06524f1e12de4a5fd8c` | ⚠️ Unaudited |
| GammaQuickSwapFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f3fc619863211906f28ef3abb2e7cd9f9ada65f` | ⚠️ Unaudited |
| GammaQuickSwapMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38fe7372926389c8a1cbdbd3d5ad4913070b75c8` | ⚠️ Unaudited |
| GammaRetroMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f8d6b1eb4f81f1de9684032278febfa4b4f3a75` | ⚠️ Unaudited |
| GovTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40ff0883f6ab81f7d617f9502fdfc5e497fa34d8` | ⚠️ Unaudited |
| GRMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x255a88cfc4b4a71d660e699bbad43694cd2064f9` | ⚠️ Unaudited |
| HardWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e412c1e9e25ef09ae91f52b74014ff804442175` | ⚠️ Unaudited |
| IchiQuickSwapMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x079fff65ee5fe6bedd9790ca3a930eb37244691f` | ⚠️ Unaudited |
| IchiRetroMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac52df67e7668b4f3e3416d1dafc35921380ce2` | ⚠️ Unaudited |
| IchiSwapXFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x42e27463b0ce2901ce8e8028c435cea5f97ff239` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0e009bd3eed7a6650b0f782adb393abdc22c9d87` | ⚠️ Unaudited |
| IQMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ce1f7f66cff82e32992b09ccbb6aa23f4fbb3b1` | ⚠️ Unaudited |
| IRMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2dd3fe9ea9f4e6141e6644fdbea6d0f919d2f38c` | ⚠️ Unaudited |
| KyberSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d661fa2da3089ccfb60a33411229ddc2f52fb94` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1132546d384fda1285091f207e9a3ca7173e3636` | ⚠️ Unaudited |
| LPStrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c0697b5d55418e17ab5adb9eb000c42e3197e6c` | ⚠️ Unaudited |
| MetaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c40fe0c7de47e050d168455c2f5292d2fa96c7f` | ⚠️ Unaudited |
| MetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x07c598f50ba04bcb1acb7f8e41887f9a51c5567d` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3368619c2f8333298dd406f774bea188ee150124` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43d13dbd46f7cca8ef56f1eef3872685abad2569` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f3a8c7b19d8c2148bfe62a967f77f182972d7d2` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x24f0cc8484f29c218d15992068572daac4e9a71c` | ⚠️ Unaudited |
| PriceReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22745e0262e6a94c6e8b74569a2c988189936cde` | ⚠️ Unaudited |
| ProfitMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c4cbcafe90140080af3bbe8743e54d7c602a67a` | ⚠️ Unaudited |
| ProfitToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48469a0481254d5945e7e56c1eb9861429c02f44` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x2116e254bccb932a788d2fcf1c5199e8dcf19e80` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | sonic | unit-392978 | `0x029dfd1a79e0ad9305d773fb8f3c01d8ef9b913d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0391abdcfab86947d93f9dd032955733b639416b` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x17a7cf838a7c91de47552a9f65822b547f9a6997` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x3950b3a43fa0687561bc5c8e32d2ee826d88a661` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x7d6641cf68e5169c11d91266d3e410130de70b9e` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x902215dd96a291b256a3aef6c4dee62d2a9b80cb` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x9fce12c813fc2280a800e8683b918de121b2437b` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xa039cdbd5b800208e20a02b5aa02f21e3062cce5` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xb8fa84494bfc3cf7143363e10123396debfc9d9f` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xc53172db113fbb310a4d53ec3bcfa60f233abb73` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xcd85425ff6c07cf09ca6ac8f683e8164f27c143c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x005d71553ad3f8f919e5121aa45bf24594dce0d6` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8825fdf0018d136b923f4c31ea92548edbefb611` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa448329a95970194567fca4b6b1b0bba4ac0bf66` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54ae5e8c474cb95e71c0291da1ad8b2e82171ae1` | ⚠️ Unaudited |
| QSMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b9b1472799bec9ce6e604f3b28f05abe6ae03ae` | ⚠️ Unaudited |
| QuickswapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a4a05a6820b9d4a5d46b7615b1fbede18e54079` | ⚠️ Unaudited |
| QuickSwapStaticMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1465be6dc3a23bd755b0602e1684a25d9fd33c74` | ⚠️ Unaudited |
| QuickSwapV3StaticFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42bd97b129ab31ee3072dcb7e9be788efdbc3634` | ⚠️ Unaudited |
| RebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x659119200de09f266f3256a70986713ca1ee04d8` | ⚠️ Unaudited |
| RecoveryToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85c04c502c01fa7b4bb8040647d5d6cec1074257` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006d758313845305c3a8be1ebd99874c90c3b062` | ⚠️ Unaudited |
| RevenueRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x005d71553ad3f8f919e5121aa45bf24594dce0d6` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x022787fe454e0fc45dcc9b5f1f5bb001dec25512` | ⚠️ Unaudited |
| RMVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f82eca3e2b7acc902246a2342edfce99ffb68e1` | ⚠️ Unaudited |
| RVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x260a7109a22759e6426274f5074a675faad546a1` | ⚠️ Unaudited |
| RVaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f0f211e2d89315333385a8e4d0ea76106370b0c` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0a02be0de3dd109b1abf4c197f0b58a3bb68ea1f` | ⚠️ Unaudited |
| SaleReceiptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d61cb8553bb5db02df3bdc6cda88aa85b32224b` | ⚠️ Unaudited |
| SiloAdvancedLeverageStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x254af2fb93af3f65143cd079874486d51f3d1a3a` | ⚠️ Unaudited |
| SiloFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x72b033e6774e0afc8c029c36f78525ac521a3703` | ⚠️ Unaudited |
| SiloLeverageStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c4b9b522d3e9b4232ef469c332c4429c27a5368` | ⚠️ Unaudited |
| SiloManagedFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63903f47139eab282b62add051485da2755f8f0a` | ⚠️ Unaudited |
| SiloManagedMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xea23cce3844b0eb82dad0e5ad688ddd67b2cf90f` | ⚠️ Unaudited |
| SiloStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e1b5ae6f511f838b664d7aacbee3088f08d7079` | ⚠️ Unaudited |
| SolidlyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc9282c2c0bf94832db65f9120f3d51c7bec752d` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50b867305f71ebcbbbdd2c9d249d611691b8e458` | ⚠️ Unaudited |
| StabilityDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc82676d6025bba6df3585d2450ef6d0ee9b8607e` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b4ee8a5ee2ef36555e6f48a4afd80fbde3eed4c` | ⚠️ Unaudited |
| STBL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78a76316f66224cbaca6e70acb24d5ee5b2bd2c7` | ⚠️ Unaudited |
| StrategyDeveloperLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc766a4cac8b55a95c64715b3cb024f0a5843448d` | ⚠️ Unaudited |
| StrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x256e2479130a1b02f2d876df3fbcea50ab538f66` | ⚠️ Unaudited |
| StrategyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a034458ad126cbf1f03eeb12064396b81158410` | ⚠️ Unaudited |
| StrategyLogicLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7e1d04e82ac8f1a223f2feb634d57ceba6f3557` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23a63c6866bd20dac16f419b9965e3fdd6beea70` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0007397cf51d5bdcd409045c2a3bf683e6e325ef` | ⚠️ Unaudited |
| SwapXFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x58d978b1efaac1f6fd98ab721a1ee2a7c1cdb2a3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ce90e4adf41a4107580cd58ae1075b2e5270e75` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1f46804e2d4b11ce7a61e36720df316b7343b023` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2539c8c0efc0a2d3e453cb940e9c143383652c94` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2ee619589ca1787398979ec3b3eb44c4a4d18ce5` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xaa059efdd3f47814d7eea0df793ad7c70795e2c7` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a08cd5691e009cc72e2a4d8e7f2e6ee14e96d6d` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x018af6336c7cedba68a1745b063a87e437321bf9` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0444e9156fa391f1799e7b2bcf480d0488687ef7` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00d85ee4a74c9bb3837e21959298914d941a2eae` | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x43a6d1ba67264be41628d4ca6a493946ad11a246` | ⚠️ Unaudited |
| UpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8aa4e3cfd805d33c0215dcab9a5c9223ab3d938a` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x21561536f274982cd0aed2515ac3e0c5e293af47` | ⚠️ Unaudited |
| VaultBaseLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5af516e9a5668675de3a84b11809f34e377589d0` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x418914aabb2c21afc7dc216dceda4cb03ec2aa8e` | ⚠️ Unaudited |
| VaultManagerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fb1f5f63d938a5ff0bd2dfbad9f3f358a994548` | ⚠️ Unaudited |
| VaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34f8918e117c28842f044e5fe262b9dbc12825a1` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a125ff7efdb54dc9efb4ad90c552c4c8822b212` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x009efeb54f27d24c051a08d3bd2957c095f483cc` | ⚠️ Unaudited |
| WrappedMetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0746e119ae0f4ef1e11d015cc909ba58dadb2653` | ⚠️ Unaudited |
| WrappedMetaVaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x440a6bf579069fa4e7c3c9fe634b34d2c78c584c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1368da91b6a293cc4de744f009efd06040f694b9` | ⚠️ Unaudited |
| XSTBL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ab56a0728a8f5ebb9bfc1c5818ea09bfaab1d3b` | ⚠️ Unaudited |
| XUSDBridgedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3b7d4a571b00c53a8f4f829f1b3ce78c375aa890` | ⚠️ Unaudited |
| ZapTetuBal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3aa67b2ae7316c9a158cd63772e2e7074125c8dc` | ⚠️ Unaudited |
| ZapTetuBalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa80597f67121bf2604f7da810651a3d6ca733d20` | ⚠️ Unaudited |
| ZapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a6729f8866ea8c21b32a13d52a69c3de48c7f05` | ⚠️ Unaudited |
| ZapV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8013e18cc2d3530a6f80b9fee13e67479f7a3519` | ⚠️ Unaudited |
| ZapV2XTetuBal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc37916ed31ea4fa26593b29aa03c0b8bbc7040b6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392971 | `0x422025182dd83a610bfa8b20550dcccdf94dc549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392972 | `0x4aca671a420eeb58ecafe83700686a2ad06b20d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392973 | `0x589a504f2ee9d054b483c700fa814863d639381e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392974 | `0x635b1f7dd7d0172533ba9fe5cfe2d83d9848f701` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392975 | `0xc184a3ecca684f2621c903a7943d85fa42f56671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392976 | `0xe0e71b484bb20e37d18ab51fb60c32dec778478a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392977 | `0xe52fcf607a8328106723804de1ef65da512771be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [initial-audit-stability-platform-v24.01.1-alpha.md](https://github.com/stabilitydao/stability-contracts/blob/main/audits/initial-audit-stability-platform-v24.01.1-alpha.md) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [report-cantina.pdf](https://github.com/stabilitydao/stability-contracts/blob/main/audits/report-cantina.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21123] initial-audit-stability-platform-v24.01.1-alpha.md — no match: Scope table lists two files: VaultBase.sol and CVault.sol. Audit date from title '11.03.24' interpreted as 2024-11-03.
- [21124] report-cantina.pdf — no match: Extracted contract names from findings and PoC code. No explicit scope section found; contracts are inferred from the report content.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| initial-audit-stability-platform-v24.01.1-alpha.md | VaultBase | unmatched — not counted | — | listed in scope table | no |
| initial-audit-stability-platform-v24.01.1-alpha.md | CVault | unmatched — not counted | — | listed in scope table | no |
| report-cantina.pdf | WrappedMetaVault | unmatched — not counted | — | mentioned in findings 3.1.2, 3.2.6 | no |
| report-cantina.pdf | MetaVault | unmatched — not counted | — | mentioned in findings 3.1.3, 3.1.4, 3.2.1, 3.2.4, 3.2.6, 3.2.9, 3.2.10 | no |
| report-cantina.pdf | CVault | unmatched — not counted | — | mentioned in finding 3.2.3 | no |
| report-cantina.pdf | VaultBase | unmatched — not counted | — | mentioned in findings 3.1.4, 3.2.5 | no |
| report-cantina.pdf | StrategyBase | unmatched — not counted | — | mentioned in findings 3.1.1, 3.1.5, 3.2.8 | no |
| report-cantina.pdf | ERC4626StrategyBase | unmatched — not counted | — | mentioned in finding 3.1.5 | no |
| report-cantina.pdf | VaultStatusLib | unmatched — not counted | — | imported in PoC | no |
| report-cantina.pdf | ConstantsLib | unmatched — not counted | — | referenced in finding 3.2.7 | no |
| report-cantina.pdf | StrategyLib | unmatched — not counted | — | referenced in findings 3.1.1, 3.1.5 | no |
| report-cantina.pdf | CommonLib | unmatched — not counted | — | imported in PoC | no |
| report-cantina.pdf | PriceReader | unmatched — not counted | — | referenced in finding 3.2.1 | no |
| report-cantina.pdf | IPlatform | unmatched — not counted | — | referenced in finding 3.2.7 | no |
| report-cantina.pdf | IRevenueRouter | unmatched — not counted | — | referenced in finding 3.2.7 | no |
| report-cantina.pdf | IStabilityVault | unmatched — not counted | — | referenced in findings 3.1.2, 3.1.4, 3.2.6, 3.2.9 | no |
| report-cantina.pdf | IStrategy | unmatched — not counted | — | referenced in finding 3.1.1 | no |
| report-cantina.pdf | IMetaVault | unmatched — not counted | — | referenced in findings 3.2.1, 3.2.4, 3.2.6 | no |
| report-cantina.pdf | IVault | unmatched — not counted | — | referenced in findings 3.2.3, 3.2.5, 3.2.8 | no |
| report-cantina.pdf | IControllable | unmatched — not counted | — | referenced in findings 3.2.3, 3.2.9 | no |
| report-cantina.pdf | IWrappedMetaVault | unmatched — not counted | — | referenced in finding 3.2.6 | no |
| report-cantina.pdf | MockERC20 | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | MockERC4626Vault | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | HalfConsumeStrategy | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | CaptureLiquidateStrategy | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | LPStrategyBase | unmatched — not counted | — | inherited in PoC | no |
| report-cantina.pdf | MockStrategy | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x029dfd1a79e0ad9305d773fb8f3c01d8ef9b913d` — deployed 2024-12-24 23:36:20+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| report-cantina.pdf | FullMockSetup | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | SonicConstantsLib | unmatched — not counted | — | used in PoC | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x15487495cce9210795f9c2e0e1a7238e336dfc32` | Frontend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 120 |
| upstream | 1 |
| standard_library | 18 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 29 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21123] initial-audit-stability-platform-v24.01.1-alpha.md
- [21124] report-cantina.pdf

Fork inheritance lineage and inherited audits are included when available.
