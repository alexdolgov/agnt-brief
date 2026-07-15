# Agentic Audit Brief: Ondo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 9 audit(s)
- Eligible audit results: 31 (9 matched; 22 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ondo Finance (`ondo-finance`)
- Website: [https://ondo.finance](https://ondo.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, mantle, polygon, sei
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 6/15 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,552,276,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ondo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, bsc, ethereum, mantle, polygon, sei. Structural roles: 8 core, 7 supporting. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (8), supporting (7)
- Contract kinds: contract (10), abstract (5)
- Detected standards: accesscontrol (7), erc165 (7), erc1967proxy (7), pausable (1)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (10), chainlink (1)
- Upgradeable-pattern rows: 10

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x96f6ef...cb985c`, chain 1)
- UnnamedContract (`0xace8e7...2119f1`, chain 1)
- UnnamedContract (`0xd8c817...21b0a8`, chain 1)
- UnnamedContract (`0xf0bc39...10f451`, chain 1)
- UnnamedContract (`0x91f8af...bdb299`, chain 56)
- UnnamedContract (`0x96b525...525d48`, chain 56)
- UnnamedContract (`0xf4fd8a...35f15e`, chain 56)
- UnnamedContract (`0x6b7443...6ee945`, chain 137)
- UnnamedContract (`0x7cd852...059ac1`, chain 137)
- UnnamedContract (`0xba11c5...925811`, chain 137)
- UnnamedContract (`0x54cd90...60e2a6`, chain 1329)
- UnnamedContract (`0xab5752...397cf3`, chain 5000)
- UnnamedContract (`0xdbd7a7...87e5c6`, chain 5000)
- UnnamedContract (`0x0be393...bfbb41`, chain 42161)
- CashKYCSenderReceiver (`0x1b19c1...bbee92`, chain 1)
- GMTokenManager (`0x2c158b...4c5c8c`, chain 1)
- GnosisSafe (`0x72be8c...d4b63d`, chain 1)
- OndoOracle (`0x9cad45...ab4094`, chain 1)
- OUSG_InstantManager (`0x93358d...c2643a`, chain 1)
- rUSDY (`0xaf37c1...26b879`, chain 1)
- RWADynamicOracle (`0xa0219a...121de0`, chain 1)
- SyntheticSharesOracle (`0x9bc39d...741be6`, chain 1)
- TokenProxy (`0x5be265...57c5a6`, chain 5000)
- TransparentUpgradeableProxy (`0xcf6958...7d97df`, chain 1)
- USDon (`0x1f8955...20dfe6`, chain 56)
- USDonManager (`0x05ccbb...13d7e1`, chain 1)
- USDY (`0x35e050...df9a9d`, chain 42161)
- USDY_InstantManager (`0xa42613...491f15`, chain 1)
- USDYc (`0xe86845...974c09`, chain 1)

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/15 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations excluded (4 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 29 of 128 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/15
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 128
- Raw deployments: 128
- Audits discovered: 31 (31 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/ondofinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 16 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 20.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 20.0% | 2024-03 |
| Halborn | Tier 2 | 3 | 20.0% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CashKYCSenderReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250354 | `0x1b19c1...bbee92` | ✅ Audited |
| OndoOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250334 | `0x9cad45...ab4094` | ✅ Audited |
| OUSG_InstantManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250331 | `0x93358d...c2643a` | ✅ Audited |
| rUSDY | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250356 | `0xaf37c1...26b879` | ✅ Audited |
| RWADynamicOracle | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-250335 | `0xa0219a...121de0` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250353 | `0xcf6958...7d97df` | ✅ Audited |

### ⚠️ Verified + Unaudited (103)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminSubscriptionChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb2dc...1fa018` | ⚠️ Unaudited |
| AllowlistFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed796...8ac988` | ⚠️ Unaudited |
| AllowlistStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cd9e3...e0c665` | ⚠️ Unaudited |
| AllPairVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb8de...de08bc` | ⚠️ Unaudited |
| BasicRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d8bb...c853e7` | ⚠️ Unaudited |
| BasicSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x273700...ce280e` | ⚠️ Unaudited |
| BeaconProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x02d608...1e44f8` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5857fe...0deddf` | ⚠️ Unaudited |
| BondStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1c121...e31154` | ⚠️ Unaudited |
| BridgeRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d730...75e9ec` | ⚠️ Unaudited |
| BridgeRegistrarStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55e0b3...d7c31c` | ⚠️ Unaudited |
| BuidlUSDCSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f205e...05b722` | ⚠️ Unaudited |
| CashKYCSenderReceiverFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf5d0...09b4a8` | ⚠️ Unaudited |
| CashManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x350188...4d618f` | ⚠️ Unaudited |
| CCashDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1927c3...c322b9` | ⚠️ Unaudited |
| CDaiDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e1e54...5db18d` | ⚠️ Unaudited |
| CErc20DelegatorKYC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049e2a...4651a9` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076c84...d527e0` | ⚠️ Unaudited |
| DestinationBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8fb5...c9235c` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FluxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1f01...2280c5` | ⚠️ Unaudited |
| FluxStateSanityCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe486b2...72cce2` | ⚠️ Unaudited |
| GMTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bb86...733e82` | ⚠️ Unaudited |
| GMTokenLimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x132fcd...dd50a3` | ⚠️ Unaudited |
| GMTokenManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250330 | `0x2c158b...4c5c8c` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250357 | `0x72be8c...d4b63d` | ⚠️ Unaudited |
| GovernerAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755481...50673f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bd72...970a13` | ⚠️ Unaudited |
| Inspector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3423...9bb7a1` | ⚠️ Unaudited |
| InvestorBasedRateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b013b...c56ffa` | ⚠️ Unaudited |
| IssuanceHours | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d3fa4...3c47b5` | ⚠️ Unaudited |
| IssuanceHoursAlwaysOpen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x180eec...fdd1bb` | ⚠️ Unaudited |
| IssuanceHoursStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd664...0d3c52` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3342e3...ba06c2` | ⚠️ Unaudited |
| KYCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71923a...678336` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| Messenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2bab...341eb3` | ⚠️ Unaudited |
| MinimalWhitelistedMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc872aa...992bc4` | ⚠️ Unaudited |
| OMMFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f1ea...80e793` | ⚠️ Unaudited |
| OMMFManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d01be...be7929` | ⚠️ Unaudited |
| OMMFRebaseSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463efa...88afa7` | ⚠️ Unaudited |
| Ondo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d72c7...f462df` | ⚠️ Unaudited |
| OndoCoinlistDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14efbb...eb1e54` | ⚠️ Unaudited |
| OndoCompliance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156f73...751002` | ⚠️ Unaudited |
| OndoComplianceGMView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a875...e80318` | ⚠️ Unaudited |
| OndoFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1cb24...c8d20c` | ⚠️ Unaudited |
| OndoIDRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db71e...c5d891` | ⚠️ Unaudited |
| OndoIDRegistryView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a5d9...7463e7` | ⚠️ Unaudited |
| OndoMintBurnAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0be393...bfbb41` | ⚠️ Unaudited |
| OndoOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6d5c...171c3e` | ⚠️ Unaudited |
| OndoPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526a13...753c8e` | ⚠️ Unaudited |
| OndoRateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98db50...71003c` | ⚠️ Unaudited |
| OndoSanityCheckOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x140328...e48c03` | ⚠️ Unaudited |
| OndoTokenRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff19c...48350f` | ⚠️ Unaudited |
| OUSGInstantManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1189ba...8ad97c` | ⚠️ Unaudited |
| OUSGManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb9a23...81736b` | ⚠️ Unaudited |
| OUSGOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc496...94cdf3` | ⚠️ Unaudited |
| PauseManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fdad5...8cd578` | ⚠️ Unaudited |
| PortfolioEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff1b1...c83397` | ⚠️ Unaudited |
| PortfolioOrchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2661c6...6e0b09` | ⚠️ Unaudited |
| PortfolioTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a0afa...49dea1` | ⚠️ Unaudited |
| PortfolioTokenLimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x713cb4...d193d5` | ⚠️ Unaudited |
| PortfolioTokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x096371...17cae9` | ⚠️ Unaudited |
| PortfolioTokenRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38b012...b98835` | ⚠️ Unaudited |
| Pricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d2691...78a07e` | ⚠️ Unaudited |
| PricerWithOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b113...f67b02` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x328ea3...0f67b4` | ⚠️ Unaudited |
| RateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4e56...699933` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a05f3...0720ac` | ⚠️ Unaudited |
| ROUSGFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d770...b0fbaa` | ⚠️ Unaudited |
| rUSDYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x127123...6e6a74` | ⚠️ Unaudited |
| rUSDYW_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x410907...8c64d1` | ⚠️ Unaudited |
| RWAOracleExternalComparisonCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0502c5...cc6abe` | ⚠️ Unaudited |
| RWAOracleRateCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0576f5...eccc22` | ⚠️ Unaudited |
| RWAOracleTestOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ec84...5d41c4` | ⚠️ Unaudited |
| SourceBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1d29b8...fc111b` | ⚠️ Unaudited |
| SyntheticSharesOracle | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-250333 | `0x9bc39d...741be6` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c5898...b18d9c` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715b2...bc34f1` | ⚠️ Unaudited |
| TokenManagerRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa21ed4...f689cb` | ⚠️ Unaudited |
| TokenPauseManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x633492...62638f` | ⚠️ Unaudited |
| TokenProxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-250359 | `0x5be265...57c5a6` | ⚠️ Unaudited |
| TrancheToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc75c...8839a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03ec22...9bbb23` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5fa0...4659f4` | ⚠️ Unaudited |
| USDon | unknown | project_anchor | own_supporting | 1 | bsc | unit-250360 | `0x1f8955...20dfe6` | ⚠️ Unaudited |
| USDon_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa9427...7ff8cf` | ⚠️ Unaudited |
| USDonConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f5eb...1fc813` | ⚠️ Unaudited |
| USDonManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250329 | `0x05ccbb...13d7e1` | ⚠️ Unaudited |
| USDY | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-250358 | `0x35e050...df9a9d` | ⚠️ Unaudited |
| USDY_InstantManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250336 | `0xa42613...491f15` | ⚠️ Unaudited |
| USDYc | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250355 | `0xe86845...974c09` | ⚠️ Unaudited |
| USDYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c81a...557a87` | ⚠️ Unaudited |
| USDYManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25a103...86b97e` | ⚠️ Unaudited |
| USDYOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87b126...43df90` | ⚠️ Unaudited |
| USDYPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb022...b2bfb5` | ⚠️ Unaudited |
| USDYW_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x36bd93...7330c1` | ⚠️ Unaudited |
| WOMMFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d77d...e2b51d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282698...eb6a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ce912...02dc70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250332 | `0x96f6ef...cb985c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62757...52307d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250337 | `0xace8e7...2119f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250339 | `0xd8c817...21b0a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250340 | `0xf0bc39...10f451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16c18...d3d5e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250350 | `0x91f8af...bdb299` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250351 | `0x96b525...525d48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | third_party_dependency | 0 | bsc | unit-250352 | `0xf4fd8a...35f15e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250343 | `0x6b7443...6ee945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250344 | `0x7cd852...059ac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250345 | `0xba11c5...925811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-250342 | `0x54cd90...60e2a6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-250347 | `0xa96abb...b4882f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-250348 | `0xab5752...397cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-250349 | `0xdbd7a7...87e5c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250346 | `0x0be393...bfbb41` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/ondofinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/ondofinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [February 2026 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-LimitOrder-Protocol-Cantina-01-30-2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [December 2025 Zellic Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-Zellic-12-29-2025.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [December 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/report-cantinacode-ondo-1121.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [December 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-LimitOrder-Protocol-Cantina-12-02-2025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [November 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-SyntheticShares-Cantina-11-18-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [November 2025 FYEO Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-FYEO-11-05-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [October 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-USDonConverter-BridgeRegistrar-Cantina-10-06-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [September 2025 FYEO Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-FEYO-09-08-2025.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [July 2025 Cyfrin Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/2025-07-14-cyfrin-ondo-global-markets-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [June 2025 Spearbit Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/report-cantinacode-ondo-0224-2.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [March 2025 Spearbit Audit](https://cantina.xyz/portfolio/fb329103-8bd1-45ac-91d8-4f75e1abf812) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | medium |
| [February 2025 Halborn Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Audit-Feb-2025.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 16 | high |
| [April 2024 Code4rena Audit](https://code4rena.com/reports/2024-03-ondo-finance) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [April 2024 Cyfrin Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Cyfrin-Audit-April-2024.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [September 2023 Code4rena Audit](https://code4rena.com/reports/2023-09-ondo) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 4 | high |
| [August 2023 Zokyo Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Zokyo-Audit-August-2023.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 30 | high |
| [April 2023 NetherMind Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-NetherMind-Audit-April-2023.pdf) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [January 2023 Code4rena Audit](https://code4rena.com/reports/2023-01-ondo) | Code4rena | Contest | 2023-01 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 18 | high |
| [July 2024 Halborn Audit (additional module)](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Additional-Aura-Module-Audit-June-2024.pdf) | Halborn | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [June 2024 Halborn Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Audit-June-2024.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [May 2022 ABDK Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-ABDK-Audit-October-2022.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 26 | high |
| [January 2022 Quantstamp Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Quantstamp-Audit-January_2022.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 25 | high |
| [September 2021 Quantstamp Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Quantstamp-Audit-September_2021.pdf) | Quantstamp | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [May 2021 Peckshield Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Peckshield-Audit-May_2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [April 2021 Certik Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Certik-Audit-April_2021.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [- [Audits]()](https://ondo-finance.gitbook.io/ondo-finance-users/architecture/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Ondo Quantstamp Audit September 2021.pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-MkenlI2MZZkbzwrFKdT%2FOndo%20Quantstamp%20Audit%20September%202021.pdf) | Quantstamp | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Ondo Peckshield Audit May_2021.pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-Mkenx8CYnEwiqHSa7AO%2FOndo%20Peckshield%20Audit%20May_2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [Ondo_Certik_Audit_April_2021 (2).pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-MkenzUoS6gy1eVNHwlY%2FOndo_Certik_Audit_April_2021%20(2).pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17920] DL audit link — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned is 0xfaba6f8e4a5e8ab82f62fe7c39859fa577269be3, but it is not listed as an audited contract in a scope table.
- [17921] Active Bug Bounty Program — no match: The document is a bug bounty program page, not an audit report. It does not list specific contracts in scope; it only references previous audits and general assets. No contract names or audit date could be extracted.
- [17922] February 2026 Cantina Audit — no match: Scope section explicitly lists 6 files under contracts/ directory. Audit date is February 6, 2026 from the cover page.
- [17923] December 2025 Zellic Audit — no match: The scope section lists only the Solana program 'ondo-gm' from the repository 'gm-solana'. No individual contract files are named; the program is the sole target.
- [17924] December 2025 Cantina Audit — no match: Extracted contract names from the scope section listing state files. Audit date from cover page.
- [17925] December 2025 Cantina Audit — no match: Scope section explicitly lists three contracts under contracts/ directory.
- [17926] November 2025 Cantina Audit — no match: Scope section explicitly lists two contracts: ISyntheticSharesOracle.sol and SyntheticSharesOracle.sol. Audit date from cover page.
- [17927] November 2025 FYEO Audit — no match: No explicit scope section; contracts inferred from findings and file paths. Audit date from report header.
- [17928] October 2025 Cantina Audit — no match: Scope explicitly mentions USDonConverter.sol and BridgeRegistrar.sol from rwa-internal repo.
- [17929] September 2025 FYEO Audit — no match: The report is a security review update that does not list specific contracts in scope. It mentions file paths (e.g., programs/ondo-finance/src/instructions/admin_operations.rs) but no contract names are explicitly stated as being audited.
- [17930] July 2025 Cyfrin Audit — no match: Scope section explicitly lists all files under contracts/globalMarkets. Additional contracts (BaseRWAManager, OndoRateLimiter) are referenced in findings but not in scope; they are included as they are part of the audited codebase.
- [17931] June 2025 Spearbit Audit — no match: Extracted contract names from findings context and file paths. Audit date from report cover page.
- [17932] March 2025 Spearbit Audit — no match: No explicit scope section found; contracts extracted from findings and file paths mentioned in the report.
- [17933] February 2025 Halborn Audit — matched: Scope section lists contracts in scope; additional contracts referenced in findings are also included.
- [17934] April 2024 Code4rena Audit — no match: Scope section lists 3 smart contracts; extracted OUSGInstantManager and rOUSG from file paths, ROUSG from contract definition.
- [17935] April 2024 Cyfrin Audit — no match: All five contracts listed in the Audit Scope section of the report.
- [17936] September 2023 Code4rena Audit — matched: Extracted 6 contracts from scope section and file paths. Audit date from report header.
- [17937] August 2023 Zokyo Audit — no match: Extracted contract names from the scope section listing files and directories. The audit date is from the cover page: 'August 10th 2023'.
- [17938] April 2023 NetherMind Audit — no match: Four contracts explicitly listed in 'Audited Files' table and described in system overview.
- [17939] January 2023 Code4rena Audit — matched: Extracted 20 contract names from the scope description and file paths mentioned in the report. The audit date is from the report title page.
- [17940] July 2024 Halborn Audit (additional module) — no match: The audit scope is a Cosmos SDK module named 'aura' located in the 'x/aura' directory. No individual contract files are listed; the module is the scope item.
- [17941] June 2024 Halborn Audit — no match: The audit scope is a Cosmos SDK module named 'aura' (repository 'aura', path 'x/aura'). No individual smart contract files are listed; the scope is the entire module. The audit date range is June 3-21, 2024, so the end date is used.
- [17942] May 2022 ABDK Audit — matched: Extracted from 'Project scope' section listing files and interfaces.
- [17943] January 2022 Quantstamp Audit — matched: Extracted contract names from the appendix file signatures and findings sections. The audit date is from the re-audit date (January 25th 2022) mentioned in the changelog and executive summary.
- [17944] September 2021 Quantstamp Audit — no match: Audit report for Ondo Finance V2. Scope explicitly includes SushiStakingV2Strategy.sol and AlchemixUserReward.sol as per file signatures and findings. Other contracts mentioned (e.g., AllPairVault, TrancheToken) are part of the codebase but not explicitly listed as in-scope for this audit; only the two strategy contracts are consistently referenced as audited targets.
- [17945] May 2021 Peckshield Audit — matched: Contracts extracted from findings targets and descriptions. No explicit scope section found, but contracts are clearly audited.
- [17946] April 2021 Certik Audit — matched: Extracted from the 'Files In Scope' table and the findings sections. The audit date is from the cover page.
- [17947] - [Audits]() — no match: The document is an index page listing audit reports from Quantstamp, Peckshield, and Certik, but does not contain the actual audit reports or any contract names in scope.
- [17948] Ondo Quantstamp Audit September 2021.pdf — no match: Audit report for Ondo Finance V2. Scope explicitly includes SushiStakingV2Strategy.sol and AlchemixUserReward.sol as per file signatures and findings sections. Other contracts mentioned (e.g., AllPairVault, TrancheToken) are part of the codebase but not explicitly listed as in-scope for this audit; they appear in test results and coverage but not in the scope definition.
- [17949] Ondo Peckshield Audit May_2021.pdf — matched: Contracts extracted from findings targets and descriptions. No explicit scope table, but contracts are clearly audited.
- [17950] Ondo_Certik_Audit_April_2021 (2).pdf — matched: Extracted from the 'Files In Scope' table and the findings sections. The audit date is explicitly stated as 'Delivery Date April 19th, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| February 2026 Cantina Audit | IGMTokenManager | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | GMTokenLimitOrder | ambiguous — not counted | 0xf0bc39… (alternative) `0xf0bc39...10f451` — liveness: live (current_address_book_code)<br>0x96b525… (alternative) `0x96b525...525d48` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| February 2026 Cantina Audit | IGMTokenLimitOrder | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | LimitOrderLib | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | LimitOrderStorage | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | IOndoIDRegistry | unmatched — not counted | — | listed in scope | no |
| December 2025 Zellic Audit | ondo-gm | unmatched — not counted | — | listed in scope as program 'ondo-gm' | no |
| December 2025 Cantina Audit | GmTokenManagerState | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | USDonManagerState | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | TokenLimit | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | Roles | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | Attestation | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | OndoUser | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | OracleSanityCheck | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | Whitelist | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | IGMTokenManager | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | GMTokenLimitOrder | ambiguous — not counted | 0xf0bc39… (alternative) `0xf0bc39...10f451` — liveness: live (current_address_book_code)<br>0x96b525… (alternative) `0x96b525...525d48` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| December 2025 Cantina Audit | IGMTokenLimitOrderErrors | unmatched — not counted | — | listed in scope | no |
| November 2025 Cantina Audit | ISyntheticSharesOracle | unmatched — not counted | — | listed in scope section | no |
| November 2025 Cantina Audit | SyntheticSharesOracle | ambiguous — not counted | 0xf4fd8a… (alternative) `0xf4fd8a...35f15e` — liveness: live (current_address_book_code)<br>SyntheticSharesOracle (alternative) `0x9bc39d...741be6` — deployed 2026-01-15 23:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| November 2025 FYEO Audit | token_manager | unmatched — not counted | — | mentioned in findings FYEO-ONDO-01, FYEO-ONDO-02, FYEO-ONDO-03, FYEO-ONDO-04 | no |
| November 2025 FYEO Audit | initialize_token_limit | unmatched — not counted | — | mentioned in finding FYEO-ONDO-06 | no |
| November 2025 FYEO Audit | constants | unmatched — not counted | — | mentioned in finding FYEO-ONDO-05 | no |
| October 2025 Cantina Audit | USDonConverter | unmatched — not counted | — | listed in scope section | no |
| October 2025 Cantina Audit | BridgeRegistrar | unmatched — not counted | — | listed in scope section | no |
| July 2025 Cyfrin Audit | OndoComplianceGMClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | OndoComplianceGMView | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | IssuanceHours | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | onUSDManager | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | OndoSanityCheckOracle | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | GMTokenFactory | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | GMTokenManager | ambiguous — not counted | GMTokenManager (alternative) `0x2c158b...4c5c8c` — deployed 2025-07-15 21:55:59+03 — liveness: live (current_address_book_code)<br>0x91f8af… (alternative) `0x91f8af...bdb299` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| July 2025 Cyfrin Audit | TokenPauseManager | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | TokenPauseManagerClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | BridgeRegistrarStub | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | GMToken | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | onUSD | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | onUSDFactory | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | TokenManagerRegistrar | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | BaseRWAManager | unmatched — not counted | — | mentioned in findings as inherited contract | no |
| July 2025 Cyfrin Audit | OndoRateLimiter | unmatched — not counted | — | mentioned in findings as referenced contract | no |
| June 2025 Spearbit Audit | GMToken | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | GMTokenManager | ambiguous — not counted | GMTokenManager (alternative) `0x2c158b...4c5c8c` — deployed 2025-07-15 21:55:59+03 — liveness: live (current_address_book_code)<br>0x91f8af… (alternative) `0x91f8af...bdb299` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| June 2025 Spearbit Audit | IGMTokenManager | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | OndoComplianceGMView | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | IssuanceHours | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | onUSD | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | onUSDFactory | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | IonUSDManagerEvents | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | OndoSanityCheckOracle | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | GMTokenFactory | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | IGMTokenManagerEvents | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | TokenPauseManagerClientUpgradeable | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | OndoComplianceGMClientUpgradeable | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | onUSDManager | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | TokenManagerRegistrar | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | BaseRWAManager | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | SimpleVerifier | unmatched — not counted | — | mentioned in findings context | no |
| March 2025 Spearbit Audit | OndoFees | unmatched — not counted | — | mentioned in findings and scope | no |
| March 2025 Spearbit Audit | rOUSG | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | OUSG | ambiguous — not counted | 0xba11c5… (alternative) `0xba11c5...925811` — liveness: live (current_address_book_code)<br>CashKYCSenderReceiver (proxy) (alternative) `0x1b19c1...bbee92` — deployed 2022-12-21 19:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| March 2025 Spearbit Audit | BuidlUSDCSource | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | PSMSource | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | OndoTokenRouter | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | PauseManager | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | IPauseManager | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | ContinuousPriceOracle | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OUSG_InstantManager | own contract | OUSG_InstantManager (selected) `0x93358d...c2643a` — deployed 2025-03-28 02:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| February 2025 Halborn Audit | BaseRWAManager | unmatched — not counted | — | mentioned in scope and findings | no |
| February 2025 Halborn Audit | OndoCompliance | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoFees | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoIDRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcf6958...7d97df` — deployed 2025-03-28 01:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| February 2025 Halborn Audit | OndoIDRegistryView | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoRateLimiter | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | PauseManager | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | UsdsPSMRecipient | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | BuidlUSDCSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | PSMSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoTokenRouter | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoOracle | own contract | OndoOracle (selected) `0x9cad45...ab4094` — deployed 2025-03-28 01:58:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| February 2025 Halborn Audit | AbstractRWAOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | BasicRecipient | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | BasicSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | SusdsSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | IBaseRWAManagerEvents | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | AdminSubscriptionChecker | unmatched — not counted | — | mentioned in findings | no |
| April 2024 Code4rena Audit | OUSGInstantManager | unmatched — not counted | — | listed in scope | no |
| April 2024 Code4rena Audit | rOUSG | unmatched — not counted | — | contract name in source | no |
| April 2024 Cyfrin Audit | OUSGInstantManager | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | rOUSG | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | InvestorBasedRateLimiter | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | InstantMintTimeBasedRateLimiter | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | KYCRegistryClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | SourceBridge | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | DestinationBridge | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | rUSDY | own proxy deployment | rUSDY (proxy) (selected) `0xaf37c1...26b879` — deployed 2024-05-01 01:54:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2023 Code4rena Audit | rUSDYFactory | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | RWADynamicOracle | own contract | RWADynamicOracle (selected) `0xa0219a...121de0` — deployed 2023-11-02 17:36:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2023 Code4rena Audit | IRWADynamicOracle | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | InstantMintTimeBasedRateLimiter | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | RWAHubInstantMints | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | Pricer | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | RWAHubOffChainRedemptions | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | usdy | ambiguous — not counted | 0x96f6ef… (alternative) `0x96f6ef...cb985c` — liveness: live (current_address_book_code)<br>TokenProxy (proxy) (alternative) `0x5be265...57c5a6` — deployed 2023-10-24 20:49:14+03 — liveness: live (current_address_book_code)<br>0x54cd90… (alternative) `0x54cd90...60e2a6` — liveness: live (current_address_book_code)<br>USDY (proxy) (alternative) `0x35e050...df9a9d` — deployed 2024-08-07 22:02:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| August 2023 Zokyo Audit | RWAHub | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommfManager | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf_token | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | wrappedOMMF | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf_factory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | wOMMF | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | wOMMF_factory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ISanctionsListClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | SanctionsListClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | SanctionsListClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | USDYFactory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | USDYManager | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | allowlist | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | blocklist | ambiguous — not counted | 0xdbd7a7… (alternative) `0xdbd7a7...87e5c6` — liveness: live (current_address_book_code)<br>0xd8c817… (alternative) `0xd8c817...21b0a8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| August 2023 Zokyo Audit | AllowlistClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | AllowlistFactory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | AllowlistClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | AllowlistUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | BlocklistClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | BlocklistClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf_rebaseSetter | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ousgManager | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | RWAHubNonStableInstantMints | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | IRWAHubNonStableInstantMint | unmatched — not counted | — | listed in scope | no |
| April 2023 NetherMind Audit | FluxOracle | unmatched — not counted | — | listed in scope table and system overview | no |
| April 2023 NetherMind Audit | RWAOracleRateCheck | unmatched — not counted | — | listed in scope table and system overview | no |
| April 2023 NetherMind Audit | RWAOracleExternalComparisonCheck | unmatched — not counted | — | listed in scope table and system overview | no |
| April 2023 NetherMind Audit | fTokenOracle | unmatched — not counted | — | listed in scope table and system overview | no |
| January 2023 Code4rena Audit | CashManager | own contract | 0x6b7443… (selected) `0x6b7443...6ee945` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| January 2023 Code4rena Audit | KYCRegistry | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenModified | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenCash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CCash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CErc20 | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CCashDelegate | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenDelegate | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashFactory | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSenderFactory | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSenderReceiverFactory | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | OndoPriceOracle | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | OndoPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | JumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | Cash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSender | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSenderReceiver | own proxy deployment | CashKYCSenderReceiver (proxy) (selected) `0x1b19c1...bbee92` — deployed 2022-12-21 19:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| January 2023 Code4rena Audit | cErc20ModifiedDelegator | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenInterfacesModifiedCash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenInterfacesModified | unmatched — not counted | — | listed in scope | no |
| July 2024 Halborn Audit (additional module) | aura | unmatched — not counted | — | Scope section: Items in scope: x/aura | no |
| June 2024 Halborn Audit | aura | unmatched — not counted | — | listed in scope as repository 'aura' and items in scope 'x/aura' | no |
| May 2022 ABDK Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852...059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| May 2022 ABDK Audit | Multiex | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IMultiex | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IPairVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IRegistry | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IRollover | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ISASStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ISingleAssetVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ITrancheToken | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IWETH | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | OndoLibrary | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SAStrategyAllPairVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SAStrategyConvex | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SAStrategyRollover | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SingleAssetVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | AConvexAutocompounder | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | BalancerStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | BasePairLPStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ConvexAutocompounderStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IBalancerVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IBaseRewardPool | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IConvexBooster | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ICurve_2 | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ICurve_3 | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | AllPairVault | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852...059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| January 2022 Quantstamp Audit | RolloverVault | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | SampleFeeCollector | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | TrancheToken | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | Ondo | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | StakingPools | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | OndoLibrary | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | AlchemixUserReward | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | UniswapStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | SushiStrategyLP | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | SushiStakingV2Strategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | EdenStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | DopexStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | BondStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | AlchemixLPStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | BasePairLPStrategy | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | AUniswapStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | ASushiswapStrategy | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | QuickSwapLibrary | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | QuickswapStrategyLP | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | PancakeSwapLibrary | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | PancakeStrategyLP | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | PancakeStrategy | unmatched — not counted | — | listed in scope | no |
| September 2021 Quantstamp Audit | SushiStakingV2Strategy | unmatched — not counted | — | listed in scope and findings | no |
| September 2021 Quantstamp Audit | AlchemixUserReward | unmatched — not counted | — | listed in scope and findings | no |
| May 2021 Peckshield Audit | BasePairLPStrategy | unmatched — not counted | — | Target in finding PVE-001 | no |
| May 2021 Peckshield Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852...059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| May 2021 Peckshield Audit | AllPairCCO | unmatched — not counted | — | Target in findings PVE-003, PVE-005, PVE-006 | no |
| May 2021 Peckshield Audit | RolloverCCO | unmatched — not counted | — | Target in findings PVE-010, PVE-011 | no |
| May 2021 Peckshield Audit | TrancheToken | unmatched — not counted | — | Mentioned in description of PVE-002 | no |
| May 2021 Peckshield Audit | UniswapStrategy | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| May 2021 Peckshield Audit | SushiStrategyLP | unmatched — not counted | — | Target in findings PVE-007, PVE-009 | no |
| April 2021 Certik Audit | AllPairCCO | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852...059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| April 2021 Certik Audit | TrancheToken | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | IBasicCCO | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | IPairCCO | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | IRegistry | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | IStrategy | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | ITrancheToken | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | OndoLibrary | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | BasePairLPStrategy | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | UniswapStrategy | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo Quantstamp Audit September 2021.pdf | SushiStakingV2Strategy | unmatched — not counted | — | Listed in file signatures and findings | no |
| Ondo Quantstamp Audit September 2021.pdf | AlchemixUserReward | unmatched — not counted | — | Listed in file signatures and findings | no |
| Ondo Peckshield Audit May_2021.pdf | BasePairLPStrategy | unmatched — not counted | — | Target in finding PVE-001 | no |
| Ondo Peckshield Audit May_2021.pdf | Registry | own contract | 0x7cd852… (selected) `0x7cd852...059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ondo Peckshield Audit May_2021.pdf | AllPairCCO | unmatched — not counted | — | Target in findings PVE-003, PVE-005, PVE-006 | no |
| Ondo Peckshield Audit May_2021.pdf | RolloverCCO | unmatched — not counted | — | Target in findings PVE-010, PVE-011 | no |
| Ondo Peckshield Audit May_2021.pdf | TrancheToken | unmatched — not counted | — | Mentioned in description of PVE-002 | no |
| Ondo Peckshield Audit May_2021.pdf | UniswapStrategy | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| Ondo Peckshield Audit May_2021.pdf | SushiStrategyLP | unmatched — not counted | — | Target in findings PVE-006, PVE-007, PVE-009 | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | AllPairCCO | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoRegistryClient | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | Registry | own contract | 0x7cd852… (selected) `0x7cd852...059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ondo_Certik_Audit_April_2021 (2).pdf | TrancheToken | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IBasicCCO | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IPairCCO | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IRegistry | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | ITrancheToken | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoLibrary | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | BasePairLPStrategy | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | UniswapStrategy | unmatched — not counted | — | listed in scope table and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2c158b...4c5c8c` | GMTokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bc39d...741be6` | SyntheticSharesOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x5be265...57c5a6` | TokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1f8955...20dfe6` | USDon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05ccbb...13d7e1` | USDonManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x35e050...df9a9d` | USDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa42613...491f15` | USDY_InstantManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe86845...974c09` | USDYc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 103 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 21
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 231 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=25, low=4, medium=2
- Match method counts: unique_name=13

Zero-match audit list:

- [17920] DL audit link
- [17922] February 2026 Cantina Audit
- [17923] December 2025 Zellic Audit
- [17924] December 2025 Cantina Audit
- [17925] December 2025 Cantina Audit
- [17926] November 2025 Cantina Audit
- [17927] November 2025 FYEO Audit
- [17928] October 2025 Cantina Audit
- [17929] September 2025 FYEO Audit
- [17930] July 2025 Cyfrin Audit
- [17931] June 2025 Spearbit Audit
- [17932] March 2025 Spearbit Audit
- [17934] April 2024 Code4rena Audit
- [17935] April 2024 Cyfrin Audit
- [17937] August 2023 Zokyo Audit
- [17938] April 2023 NetherMind Audit
- [17940] July 2024 Halborn Audit (additional module)
- [17941] June 2024 Halborn Audit
- [17944] September 2021 Quantstamp Audit
- [17947] - [Audits]()
- [17948] Ondo Quantstamp Audit September 2021.pdf

Fork inheritance lineage and inherited audits are included when available.
