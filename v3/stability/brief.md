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

- UnnamedContract (`0x422025...4dc549`, chain 146)
- UnnamedContract (`0x4aca67...6b20d8`, chain 146)
- UnnamedContract (`0x589a50...39381e`, chain 146)
- UnnamedContract (`0x635b1f...48f701`, chain 146)
- UnnamedContract (`0xc184a3...f56671`, chain 146)
- UnnamedContract (`0xe0e71b...78478a`, chain 146)
- UnnamedContract (`0xe52fcf...2771be`, chain 146)
- Frontend (`0x154874...6dfc32`, chain 146)
- Proxy (`0x029dfd...9b913d`, chain 146)

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
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09c1f8...0079c1` | ⚠️ Unaudited |
| AggregatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c7505...b82dfe` | ⚠️ Unaudited |
| AlgebraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dfbc9...b696fa` | ⚠️ Unaudited |
| AlgebraSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00bc08...1af03f` | ⚠️ Unaudited |
| AlgebraV4Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93ad0f...e77f24` | ⚠️ Unaudited |
| Allocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6dd49...02933b` | ⚠️ Unaudited |
| ALMPositionNameLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79791d...5bd7cc` | ⚠️ Unaudited |
| ALMShadowFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05f407...087fc2` | ⚠️ Unaudited |
| Api3Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x045c8a...c59a90` | ⚠️ Unaudited |
| AprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57fc53...867959` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17a5d2...8d50ee` | ⚠️ Unaudited |
| Aurum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f144f...e31a46` | ⚠️ Unaudited |
| BalancerComposableStablePoolSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xab6f8e...d7d574` | ⚠️ Unaudited |
| BeetsStableFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54ea39...519a63` | ⚠️ Unaudited |
| BeetsWeightedFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x72b931...195941` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x011d9b...840f93` | ⚠️ Unaudited |
| CommonLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x075333...be1088` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x405c82...a0f601` | ⚠️ Unaudited |
| CVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0df1d0...7d8e9b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x077867...088364` | ⚠️ Unaudited |
| DefiEdgeQuickSwapMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14377a...5ccfe0` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x08fe64...6f61b6` | ⚠️ Unaudited |
| DeployerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x008be4...c3f8c9` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36093c...48bcbe` | ⚠️ Unaudited |
| DividendToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4a5f0...12f3a5` | ⚠️ Unaudited |
| DQMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff6a3...d995da` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x309d21...8e85fd` | ⚠️ Unaudited |
| EqualizerFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c3c94...7ca977` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x2165f4...e9270c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x29353b...d73d53` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x6214ba...463226` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x9844a1...f9d4bb` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8af63b...860c82` | ⚠️ Unaudited |
| EulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x734949...91c99f` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46667c...3ed008` | ⚠️ Unaudited |
| FactoryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ae170...4c0291` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa2848...dd7067` | ⚠️ Unaudited |
| Frontend | unknown | project_anchor | own_supporting | 0 | sonic | unit-392970 | `0x154874...6dfc32` | ⚠️ Unaudited |
| GammaLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0a4a3...a5fd8c` | ⚠️ Unaudited |
| GammaQuickSwapFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f3fc6...ada65f` | ⚠️ Unaudited |
| GammaQuickSwapMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38fe73...0b75c8` | ⚠️ Unaudited |
| GammaRetroMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f8d6b...4f3a75` | ⚠️ Unaudited |
| GovTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40ff08...fa34d8` | ⚠️ Unaudited |
| GRMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x255a88...2064f9` | ⚠️ Unaudited |
| HardWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e412c...442175` | ⚠️ Unaudited |
| IchiQuickSwapMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x079fff...44691f` | ⚠️ Unaudited |
| IchiRetroMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac52d...380ce2` | ⚠️ Unaudited |
| IchiSwapXFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x42e274...7ff239` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0e009b...2c9d87` | ⚠️ Unaudited |
| IQMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ce1f7...fbb3b1` | ⚠️ Unaudited |
| IRMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2dd3fe...d2f38c` | ⚠️ Unaudited |
| KyberSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d661f...52fb94` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x113254...3e3636` | ⚠️ Unaudited |
| LPStrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c0697...197e6c` | ⚠️ Unaudited |
| MetaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c40fe...a96c7f` | ⚠️ Unaudited |
| MetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x07c598...c5567d` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x336861...150124` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43d13d...ad2569` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f3a8c...72d7d2` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x24f0cc...e9a71c` | ⚠️ Unaudited |
| PriceReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22745e...936cde` | ⚠️ Unaudited |
| ProfitMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c4cbc...02a67a` | ⚠️ Unaudited |
| ProfitToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48469a...c02f44` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x2116e2...f19e80` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | sonic | unit-392978 | `0x029dfd...9b913d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0391ab...39416b` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x17a7cf...9a6997` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x3950b3...88a661` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x7d6641...e70b9e` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x902215...9b80cb` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x9fce12...b2437b` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xa039cd...62cce5` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xb8fa84...fc9d9f` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xc53172...3abb73` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xcd8542...7c143c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x005d71...dce0d6` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8825fd...efb611` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa44832...c0bf66` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54ae5e...171ae1` | ⚠️ Unaudited |
| QSMFLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b9b14...ae03ae` | ⚠️ Unaudited |
| QuickswapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a4a05...e54079` | ⚠️ Unaudited |
| QuickSwapStaticMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1465be...d33c74` | ⚠️ Unaudited |
| QuickSwapV3StaticFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42bd97...bc3634` | ⚠️ Unaudited |
| RebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x659119...ee04d8` | ⚠️ Unaudited |
| RecoveryToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85c04c...074257` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006d75...c3b062` | ⚠️ Unaudited |
| RevenueRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x005d71...dce0d6` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x022787...c25512` | ⚠️ Unaudited |
| RMVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f82ec...fb68e1` | ⚠️ Unaudited |
| RVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x260a71...d546a1` | ⚠️ Unaudited |
| RVaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f0f21...370b0c` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0a02be...68ea1f` | ⚠️ Unaudited |
| SaleReceiptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d61cb...32224b` | ⚠️ Unaudited |
| SiloAdvancedLeverageStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x254af2...3d1a3a` | ⚠️ Unaudited |
| SiloFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x72b033...1a3703` | ⚠️ Unaudited |
| SiloLeverageStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c4b9b...7a5368` | ⚠️ Unaudited |
| SiloManagedFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63903f...5f8f0a` | ⚠️ Unaudited |
| SiloManagedMerklFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xea23cc...2cf90f` | ⚠️ Unaudited |
| SiloStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e1b5a...8d7079` | ⚠️ Unaudited |
| SolidlyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc9282...ec752d` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50b867...b8e458` | ⚠️ Unaudited |
| StabilityDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc82676...b8607e` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b4ee8...3eed4c` | ⚠️ Unaudited |
| STBL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78a763...2bd2c7` | ⚠️ Unaudited |
| StrategyDeveloperLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc766a4...43448d` | ⚠️ Unaudited |
| StrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x256e24...538f66` | ⚠️ Unaudited |
| StrategyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a0344...158410` | ⚠️ Unaudited |
| StrategyLogicLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7e1d0...6f3557` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23a63c...beea70` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000739...e325ef` | ⚠️ Unaudited |
| SwapXFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x58d978...cdb2a3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ce90e...270e75` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1f4680...43b023` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2539c8...652c94` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2ee619...d18ce5` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xaa059e...95e2c7` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a08cd...e96d6d` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x018af6...321bf9` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0444e9...687ef7` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00d85e...1a2eae` | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x43a6d1...11a246` | ⚠️ Unaudited |
| UpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8aa4e3...3d938a` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x215615...93af47` | ⚠️ Unaudited |
| VaultBaseLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5af516...7589d0` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x418914...c2aa8e` | ⚠️ Unaudited |
| VaultManagerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fb1f5...994548` | ⚠️ Unaudited |
| VaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34f891...2825a1` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a125f...22b212` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x009efe...f483cc` | ⚠️ Unaudited |
| WrappedMetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0746e1...db2653` | ⚠️ Unaudited |
| WrappedMetaVaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x440a6b...8c584c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1368da...f694b9` | ⚠️ Unaudited |
| XSTBL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ab56a...ab1d3b` | ⚠️ Unaudited |
| XUSDBridgedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3b7d4a...5aa890` | ⚠️ Unaudited |
| ZapTetuBal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3aa67b...25c8dc` | ⚠️ Unaudited |
| ZapTetuBalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa80597...733d20` | ⚠️ Unaudited |
| ZapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a6729...8c7f05` | ⚠️ Unaudited |
| ZapV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8013e1...7a3519` | ⚠️ Unaudited |
| ZapV2XTetuBal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc37916...7040b6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392971 | `0x422025...4dc549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392972 | `0x4aca67...6b20d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392973 | `0x589a50...39381e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392974 | `0x635b1f...48f701` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392975 | `0xc184a3...f56671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392976 | `0xe0e71b...78478a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392977 | `0xe52fcf...2771be` | ❓ Unverified |

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
| report-cantina.pdf | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x029dfd...9b913d` — deployed 2024-12-24 23:36:20+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| report-cantina.pdf | FullMockSetup | unmatched — not counted | — | used in PoC | no |
| report-cantina.pdf | SonicConstantsLib | unmatched — not counted | — | used in PoC | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x154874...6dfc32` | Frontend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
