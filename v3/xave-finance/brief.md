# Agentic Audit Brief: Xave Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Xave Finance (`xave-finance`)
- Website: [https://xave.co](https://xave.co)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum, polygon
- Contract surface: 108 unique implementations (108 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $148,158.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Xave Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across avalanche, ethereum, polygon. Structural roles: 10 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (10), core (1)
- Contract kinds: contract (11)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BRLA:USDC FXPool (`0x427333...f178e1`, chain 137)
- BRLA/USD assimilator (`0x55ed7f...fb136f`, chain 137)
- EUROC:USDC FXPool (`0x7a1a91...826ca2`, chain 43114)
- EUROC/USD assimilator (`0xb80390...7beb54`, chain 43114)
- EURS:USDC FXPool (`0x5f8b11...e0ec7b`, chain 1)
- EURS/USD assimilator (`0x4cda5b...d0f73e`, chain 1)
- GBPT:USDC FXPool (`0x73f8e7...75f059`, chain 1)
- GBPT/USD assimilator (`0x3ec21b...4e8052`, chain 1)
- USDC/USD assimilator (`0xfbdc1b...c49a1a`, chain 137)
- USDC/USD assimilator (`0x217207...d6f272`, chain 43114)
- USDC/USD assimilator v2 (`0x217207...d6f272`, chain 1)
- VCHF:USDC FXPool (`0x32cc63...053b27`, chain 137)
- VCHF:USDC FXPool (`0x009911...aac440`, chain 43114)
- VCHF/USD assimilator (`0xbeb0d4...54d4e0`, chain 137)
- VCHF/USD assimilator (`0xc2750a...194d2d`, chain 43114)
- VEUR:USDC FXPool (`0x28f3a9...9f5569`, chain 43114)
- VEUR/USD assimilator (`0x520427...98ecff`, chain 137)
- VEUR/USD assimilator (`0x4cda5b...d0f73e`, chain 43114)
- VNXAU:USDC FXPool (`0x6bf004...bd66de`, chain 137)
- VNXAU/USD assimilator (`0x278a53...e7ea38`, chain 137)
- XSGD:USDC FXPool (`0xe6d8fc...684e0e`, chain 137)
- XSGD/USD assimilator (`0xb089a2...b44ea4`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/47 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (21 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 22 of 108 unique; 86 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 108
- Raw deployments: 108
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmmRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af007...bcda45` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cd131...1535f1` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f937...ff2799` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2441b8...dabe8a` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4761...553dde` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd05d85...d412de` | ⚠️ Unaudited |
| BRLA:USDC FXPool | unknown | project_anchor | own_supporting | 0 | polygon | unit-397320 | `0x427333...f178e1` | ⚠️ Unaudited |
| Curve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20e1d8...1ef8b0` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa505d...2717e5` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03199d...b3675e` | ⚠️ Unaudited |
| EpochManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfae4cf...a83551` | ⚠️ Unaudited |
| ERC20Mintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02510a...bdf8f5` | ⚠️ Unaudited |
| EUROC/USD assimilator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397345 | `0xb80390...7beb54` | ⚠️ Unaudited |
| EURS:USDC FXPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397309 | `0x5f8b11...e0ec7b` | ⚠️ Unaudited |
| FXPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14728e...11d901` | ⚠️ Unaudited |
| FXPoolDeployerTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2fc51...1a8e2a` | ⚠️ Unaudited |
| FXPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x627d75...dfed71` | ⚠️ Unaudited |
| FXSwaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x390bcd...7b279c` | ⚠️ Unaudited |
| GBPT:USDC FXPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397310 | `0x73f8e7...75f059` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45318d...2a297e` | ⚠️ Unaudited |
| GenericUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x142ca0...4d3162` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d5da1...c9551a` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0605ac...7d23bf` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9355fd...05b673` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c8e2...50eb8c` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25290e...7cafe7` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49dd29...e3f4ce` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f0ac8...87d199` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1879...f0b299` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4924be...a0b36c` | ⚠️ Unaudited |
| PrimaryBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee3c7...ecfe50` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c650...d2251b` | ⚠️ Unaudited |
| RebalanceAddLiq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x095ef4...919343` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd56344...39c7b4` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x585b52...d80802` | ⚠️ Unaudited |
| SecondaryBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f2275...9b2d14` | ⚠️ Unaudited |
| SGDRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15308f...f6b8c5` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057b4e...99e3c3` | ⚠️ Unaudited |
| ST_Basic_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9a66d...c9b949` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e91e...33bd00` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00ee7f...d12344` | ⚠️ Unaudited |
| Swaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85476a...522fbf` | ⚠️ Unaudited |
| TaudToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c3a1...f430d4` | ⚠️ Unaudited |
| TcadToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ba04...654df5` | ⚠️ Unaudited |
| TgbpToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a590...77ecfb` | ⚠️ Unaudited |
| TrybToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3108c...af2f46` | ⚠️ Unaudited |
| UiIncentiveDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb435f0...9286fb` | ⚠️ Unaudited |
| USDC/USD assimilator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397339 | `0x217207...d6f272` | ⚠️ Unaudited |
| UsdcToUsdAssimilator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397305 | `0x311fdd...f9c59a` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x317a2a...21198c` | ⚠️ Unaudited |
| VCHF:USDC FXPool | unknown | project_anchor | own_supporting | 0 | polygon | unit-397319 | `0x32cc63...053b27` | ⚠️ Unaudited |
| VCHF/USD assimilator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397347 | `0xc2750a...194d2d` | ⚠️ Unaudited |
| VEUR/USD assimilator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397341 | `0x4cda5b...d0f73e` | ⚠️ Unaudited |
| ViewLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f9d0b...5b968b` | ⚠️ Unaudited |
| VNXAU:USDC FXPool | unknown | project_anchor | own_supporting | 0 | polygon | unit-397324 | `0x6bf004...bd66de` | ⚠️ Unaudited |
| VNXAUGramOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58e352...c9ae2f` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ea84...9689b9` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7111a3...3bf374` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d6c36...527309` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0576e...23c796` | ⚠️ Unaudited |
| WrappedHaloToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18e7bd...3a560c` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aab1f...592a4a` | ⚠️ Unaudited |
| WrappedVestingHaloToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc104e5...f47193` | ⚠️ Unaudited |
| XaveStratXSGDUSDCIndexUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf2ab9...0b1a01` | ⚠️ Unaudited |
| XaveStratXSGDUSDCIndexUSDCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x156f3f...193c29` | ⚠️ Unaudited |
| xAveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c66d4...6438e2` | ⚠️ Unaudited |
| XaveVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe701...3768d5` | ⚠️ Unaudited |
| XAVToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08a10...68aded` | ⚠️ Unaudited |
| XSGD:USDC FXPool | unknown | project_anchor | own_supporting | 0 | polygon | unit-397333 | `0xe6d8fc...684e0e` | ⚠️ Unaudited |
| XsgdToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb61...a91062` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe950ec...7d5b72` | ⚠️ Unaudited |
| ZapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2003b...aee090` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BRLA/USD assimilator | unknown | project_anchor | own_supporting | 0 | polygon | unit-397323 | `0x55ed7f...fb136f` | ❓ Unverified |
| EUROC:USDC FXPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397343 | `0x7a1a91...826ca2` | ❓ Unverified |
| EURS/USD assimilator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397307 | `0x4cda5b...d0f73e` | ❓ Unverified |
| GBPT/USD assimilator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397306 | `0x3ec21b...4e8052` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397308 | `0x5c0ab2...cdd4b5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397311 | `0x8fffff...6818f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397312 | `0xa1b116...8ba09e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397313 | `0xa67062...a81e6d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397314 | `0xb49f67...1734c1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397315 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397316 | `0xce8868...109f9f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397317 | `0x06cc3a...14a369` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397322 | `0x556065...197728` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397325 | `0x73366f...556a98` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397326 | `0x8ce3ca...304299` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397328 | `0xb90da3...86af2c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397329 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397331 | `0xc76f76...1e70c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397332 | `0xce8868...109f9f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397335 | `0xfe4a8c...81b2f7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-397336 | `0xff551f...fb4f95` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-397338 | `0x192f2d...61333e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-397342 | `0x701ef8...bf94d0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-397344 | `0xa41857...faf677` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-397346 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-397348 | `0xce8868...109f9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397349 | `0xd6d88a...5bedc8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-397350 | `0xf09687...7a23b9` | ❓ Unverified |
| USDC/USD assimilator | unknown | project_anchor | own_supporting | 0 | polygon | unit-397334 | `0xfbdc1b...c49a1a` | ❓ Unverified |
| USDC/USD assimilator v2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397304 | `0x217207...d6f272` | ❓ Unverified |
| VCHF:USDC FXPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397337 | `0x009911...aac440` | ❓ Unverified |
| VCHF/USD assimilator | unknown | project_anchor | own_supporting | 0 | polygon | unit-397330 | `0xbeb0d4...54d4e0` | ❓ Unverified |
| VEUR:USDC FXPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397340 | `0x28f3a9...9f5569` | ❓ Unverified |
| VEUR/USD assimilator | unknown | project_anchor | own_supporting | 0 | polygon | unit-397321 | `0x520427...98ecff` | ❓ Unverified |
| VNXAU/USD assimilator | unknown | project_anchor | own_supporting | 0 | polygon | unit-397318 | `0x278a53...e7ea38` | ❓ Unverified |
| XSGD/USD assimilator | unknown | project_anchor | own_supporting | 0 | polygon | unit-397327 | `0xb089a2...b44ea4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [here](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Xave-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Lending Market](https://xave-finance.gitbook.io/general/contract-audits/lending-market.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [FXPool Final Audit](https://xave-finance.gitbook.io/general/contract-audits/fxpool-final-audit.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Price Oracles Final Audit](https://xave-finance.gitbook.io/general/contract-audits/price-oracles-final-audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Standard Operating Procedure for Security](https://xave-finance.gitbook.io/general/contract-audits/standard-operating-procedure-for-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Overview](https://xave-finance.gitbook.io/general/contract-audits/overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* The repository used by the auditors, Akira Tech, is also now publicly accessible here: <>](https://github.com/akiratechhq/review-xave-lending-market-2021-10) | Akira Tech | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Report.pdf](https://github.com/akiratechhq/review-xave-lending-market-2021-10/blob/master/Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [PeckShield-Audit-Report-Xave-v1.0.pdf](https://2822860750-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6utITMNjJXVJJVMgUpbZ%2Fuploads%2FLQAXXEvpoWMKI7r6OS5M%2FPeckShield-Audit-Report-Xave-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Akira-Tech-Audit-Report.pdf](https://2822860750-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6utITMNjJXVJJVMgUpbZ%2Fuploads%2FTYQRLx7EbvMNno8HoNxI%2FAkira-Tech-Audit-Report.pdf) | Akira Tech | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [PriceOracle-Final-Report.pdf](https://2822860750-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6utITMNjJXVJJVMgUpbZ%2Fuploads%2FYcVqQtVTNZmK0SAh7JoK%2FPriceOracle-Final-Report.pdf) | CertiK | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18770] here — no match: The audit report explicitly lists the contracts in scope: BaseToUsdAssimilator, UsdcToUsdAssimilator, AssimilatorFactory, FXPool. BalancerPoolToken and ProportionalLiquidity are referenced in code snippets but may be dependencies; however, they are included as they appear in the audited codebase.
- [18771] Lending Market — no match: No specific contract names or file paths mentioned in the provided text. The report references a lending market but does not list individual contracts.
- [18772] FXPool Final Audit — no match: Only one contract name (FXPool) is explicitly mentioned as the focus of the audit. No file paths, addresses, or dates are provided.
- [18773] Price Oracles Final Audit — no match: The provided text is a brief page linking to an audit report file and a repository, but does not contain the actual audit report content. No contract names or scope details are extractable.
- [18774] Standard Operating Procedure for Security — no match: The provided text is a standard operating procedure for security, not an audit report. No contracts in scope or audit date were found.
- [18775] Overview — no match: The provided text is an overview of Xave Finance's audit process, not an actual audit report. No contract names, scope sections, or audit dates are present.
- [18776] * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> — no match: Scope section explicitly lists file paths; contract names extracted from filenames. Audit date is October 2021, using last day of month.
- [18777] Report.pdf — no match: Extracted contracts from scope listing and Surya file list. Date is October 2021, interpreted as last day of month.
- [18778] PeckShield-Audit-Report-Xave-v1.0.pdf — no match: Audit report for Xave Protocol AMM v2. Scope includes FXPool and related assimilator contracts. Date from cover page and table.
- [18779] Akira-Tech-Audit-Report.pdf — no match: All contracts listed in the Scope section of the report. Date is September 2022, interpreted as last day of month.
- [18780] PriceOracle-Final-Report.pdf — no match: Two contracts in scope: HLPPriceFeedOracle and PriceFeed. Audit date from Delivery Date in Audit Summary.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| here | BaseToUsdAssimilator | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-002, and PVE-003 as a target contract. | no |
| here | UsdcToUsdAssimilator | unmatched — not counted | — | Mentioned in finding PVE-001 as a target contract. | no |
| here | AssimilatorFactory | unmatched — not counted | — | Mentioned in finding PVE-003 as a target contract. | no |
| here | FXPool | unmatched — not counted | — | Mentioned in findings PVE-004 and PVE-005 as a target contract. | no |
| here | BalancerPoolToken | unmatched — not counted | — | Referenced in FXPool code snippet (line 144) as a contract used. | no |
| here | ProportionalLiquidity | unmatched — not counted | — | Referenced in FXPool code snippet (line 132) as a contract used. | no |
| FXPool Final Audit | FXPool | unmatched — not counted | — | The review focused on the FXPool contract | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | Treasury | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | ICurve | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | ICurveFactory | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IUniswapV2Router01 | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IUniswapV2Router02 | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | RnbwDistributionManager | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | RnbwIncentivesController | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IAToken | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IERC20 | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IERC20Detailed | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IRnbwDistributionManager | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IRnbwIncentivesController | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IStakedAave | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | Context | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | DistributionTypes | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | ERC20 | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | SafeMath | unmatched — not counted | — | listed in scope | no |
| * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <> | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Report.pdf | Treasury | unmatched — not counted | — | listed in scope and Surya description | no |
| Report.pdf | ICurve | unmatched — not counted | — | listed in scope | no |
| Report.pdf | ICurveFactory | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope | no |
| Report.pdf | RnbwDistributionManager | unmatched — not counted | — | listed in scope | no |
| Report.pdf | RnbwIncentivesController | unmatched — not counted | — | listed in scope | no |
| Report.pdf | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IAToken | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IERC20Detailed | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IRnbwDistributionManager | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IRnbwIncentivesController | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IStakedAave | unmatched — not counted | — | listed in scope | no |
| Report.pdf | Context | unmatched — not counted | — | listed in scope | no |
| Report.pdf | DistributionTypes | unmatched — not counted | — | listed in scope | no |
| Report.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| Report.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Report.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in Surya file list | no |
| PeckShield-Audit-Report-Xave-v1.0.pdf | BaseToUsdAssimilator | unmatched — not counted | — | Mentioned in findings PVE-001 and PVE-002 as target contracts | no |
| PeckShield-Audit-Report-Xave-v1.0.pdf | UsdcToUsdAssimilator | unmatched — not counted | — | Mentioned in finding PVE-001 as having same issue as BaseToUsdAssimilator | no |
| PeckShield-Audit-Report-Xave-v1.0.pdf | AssimilatorFactory | unmatched — not counted | — | Target of finding PVE-003 | no |
| PeckShield-Audit-Report-Xave-v1.0.pdf | FXPool | unmatched — not counted | — | Target of findings PVE-004 and PVE-005; described as key contract in scope | no |
| PeckShield-Audit-Report-Xave-v1.0.pdf | BalancerPoolToken | unmatched — not counted | — | Referenced in FXPool::onJoinPool() as used contract | no |
| PeckShield-Audit-Report-Xave-v1.0.pdf | ProportionalLiquidity | unmatched — not counted | — | Referenced in FXPool::onJoinPool() as used contract | no |
| Akira-Tech-Audit-Report.pdf | FXPool | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | FXPoolFactory | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | FXSwaps | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | CurveMath | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | Assimilators | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | ProportionalLiquidity | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | ABDKMath64x64 | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | OZSafeMath | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | UnsafeMath64x64 | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | ABDKMathQuad | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | UsdcToUsdAssimilator | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | AssimilatorFactory | unmatched — not counted | — | listed in scope | no |
| Akira-Tech-Audit-Report.pdf | BaseToUsdAssimilator | unmatched — not counted | — | listed in scope | no |
| PriceOracle-Final-Report.pdf | HLPPriceFeedOracle | unmatched — not counted | — | listed in scope table | no |
| PriceOracle-Final-Report.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 67 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=5
- Match method counts: n/a

Zero-match audit list:

- [18770] here
- [18771] Lending Market
- [18772] FXPool Final Audit
- [18773] Price Oracles Final Audit
- [18774] Standard Operating Procedure for Security
- [18775] Overview
- [18776] * The repository used by the auditors, Akira Tech, is also now publicly accessible here: <>
- [18777] Report.pdf
- [18778] PeckShield-Audit-Report-Xave-v1.0.pdf
- [18779] Akira-Tech-Audit-Report.pdf
- [18780] PriceOracle-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
