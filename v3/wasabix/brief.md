# Agentic Audit Brief: Wasabix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wasabix (`wasabix`)
- Website: [https://wasabix-finance.gitbook.io/wasabix_finance](https://wasabix-finance.gitbook.io/wasabix_finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 105 unique implementations (105 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $225,120.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Wasabix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, polygon. Structural roles: 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (2), erc20 (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BurnableWasabiToken (`0x86e732...de5aea`, chain 56)
- WasabiToken (`0x896e14...631503`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 103 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 105 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/105
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 105
- Raw deployments: 105
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WasabiToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396604 | `0x896e14...631503` | ✅ Audited |

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b5...48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b...0e4e62` | ⚠️ Unaudited |
| AirdropDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35d9da...d5d9b1` | ⚠️ Unaudited |
| Alchemist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cefb9...2b7076` | ⚠️ Unaudited |
| AlpacaBNBVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80c690...85abbe` | ⚠️ Unaudited |
| AlpacaBNBVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cda2a...d1e4cd` | ⚠️ Unaudited |
| AlpacaVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa33b1b...d161dc` | ⚠️ Unaudited |
| AlpacaVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b6ed7...09d373` | ⚠️ Unaudited |
| BunnyVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d244d...6d9ffe` | ⚠️ Unaudited |
| BurnableWasabiToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-396605 | `0x86e732...de5aea` | ⚠️ Unaudited |
| CompetitionDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59f409...958a63` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1...41f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332f...0738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706...f81d74` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce...db7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e762...3ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae9...c91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688...1b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d8...e1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbd...32ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d788...113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434...fc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b...3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6...51b304` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee...830d6a` | ⚠️ Unaudited |
| IdleVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5712c6...bf5844` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa...7f2eac` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a...a2de99` | ⚠️ Unaudited |
| LiquityStakingPoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95269...885c30` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b426...3c504e` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767bdd...009147` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf56053...49fe5a` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834893...ac1f47` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0...dbd93a` | ⚠️ Unaudited |
| LockerDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x256f29...2329e9` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06709d...9c8159` | ⚠️ Unaudited |
| MigratableBNBTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1d5a6...cb2109` | ⚠️ Unaudited |
| MigratableBUSDTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99b399...dec340` | ⚠️ Unaudited |
| MigratableLinkTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b4b6...78fb15` | ⚠️ Unaudited |
| MigratableMUSDTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb938d8...7493b2` | ⚠️ Unaudited |
| MigratablePUSDTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbb26c...0ec2eb` | ⚠️ Unaudited |
| MigratableTransmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b399...dec340` | ⚠️ Unaudited |
| MigratableTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208de...d606ea` | ⚠️ Unaudited |
| MigratableTransmuterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe8043...425540` | ⚠️ Unaudited |
| MigratableWethTransmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee64f...172a28` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x8b4b55...ce1c7b` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb...203a5f` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x162bda...3cf2b5` | ⚠️ Unaudited |
| MUSDVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3be55...74dd2b` | ⚠️ Unaudited |
| MUSDVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74ea4c...f5472a` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024b...41f38c` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4af56f...9d1abc` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89e...4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845...6c5445` | ⚠️ Unaudited |
| PickleVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd542b6...50cb7a` | ⚠️ Unaudited |
| PolyquityStabilityPoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x859d44...7af4a4` | ⚠️ Unaudited |
| PolyquityStabilityPoolAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2370b0...44a6dc` | ⚠️ Unaudited |
| RewardVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x219de7...055ecb` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041...8aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f16...b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2878...5b40dd` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecff...ce11bc` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e3884...ea10ef` | ⚠️ Unaudited |
| StakingPoolsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a8086...c4a085` | ⚠️ Unaudited |
| StakingPoolsV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0eda80...0fa010` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cb...6efef7` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219de7...055ecb` | ⚠️ Unaudited |
| TransmuterD8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e91d...f89ad0` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8f9ef7...fb9c3d` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c...49ae32` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e...1c2a1f` | ⚠️ Unaudited |
| VesperLinkVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599355...0c1b16` | ⚠️ Unaudited |
| VesperLinkVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba823e...263988` | ⚠️ Unaudited |
| VesperVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf1ea5...713b05` | ⚠️ Unaudited |
| VesperWETHVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b276d...6f4052` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d487a...7991ff` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd...5b97a9` | ⚠️ Unaudited |
| WaBNBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ac404...a9c223` | ⚠️ Unaudited |
| WaBtcToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8e70...792c36` | ⚠️ Unaudited |
| WaBUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x541f7b...c5e17d` | ⚠️ Unaudited |
| WaEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1fbe...b13794` | ⚠️ Unaudited |
| WaLINKToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ddf2...ab6d6c` | ⚠️ Unaudited |
| WaLUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf335...8d7022` | ⚠️ Unaudited |
| WaMUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b0063...92ac5b` | ⚠️ Unaudited |
| WaPUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d244d...6d9ffe` | ⚠️ Unaudited |
| WaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2db4c...929d55` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b...2de4d7` | ⚠️ Unaudited |
| WCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x337fb9...25238e` | ⚠️ Unaudited |
| WIToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cefb9...2b7076` | ⚠️ Unaudited |
| WIZToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x091d07...eddcb2` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436...fc74fd` | ⚠️ Unaudited |
| WVVToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f2c34...fe5704` | ⚠️ Unaudited |
| YumAlpacaBNBVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4f529...70b6dc` | ⚠️ Unaudited |
| YumAlpacaBUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84e6fd...80f412` | ⚠️ Unaudited |
| YumBunnyBUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a676d...614d0a` | ⚠️ Unaudited |
| YumEthVesperVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb642eb...d385bc` | ⚠️ Unaudited |
| YumIdleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894ccd...bf4e15` | ⚠️ Unaudited |
| YumLinkVesperVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f203...8ef142` | ⚠️ Unaudited |
| YumLUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55c754...075fb5` | ⚠️ Unaudited |
| YumMUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ff71c...cb5f1a` | ⚠️ Unaudited |
| YumPickleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de944...78040f` | ⚠️ Unaudited |
| YumPUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a8086...c4a085` | ⚠️ Unaudited |
| YumVesperVaultD8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a707...b24856` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-McPgoP0AUJ9kjMIoyGS%2F-McQ3GtcUwuBv6u97CwY%2Fpre-wasabix-yum-2021-06-11.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 18 | high |
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-MWNsuLL8yoNRHifRZ1c%2F-MWOeaOj-23tsPP3PJr9%2F-1146290826623177881security_assessment_for_wasabi_finance%20(2).pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-M_eD1DSVTu1RnIHDGIa%2F-M_eDOwmdj22tCQiii-i%2FWasabix%20Finance%20-%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [www.certik.org/projects/wasabixfinance](https://skynet.certik.com/projects/wasabixfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18616] Rendered PDF capture — matched: Extracted 19 contracts from the Audit Scope table and findings. The audit date is explicitly stated as 'Delivery Date Jun 11, 2021'.
- [18617] Rendered PDF capture — matched: Contracts in scope explicitly listed in the report.
- [18618] Rendered PDF capture — no match: Five Solidity files explicitly listed in scope table on page 4. Audit date from cover page: 14 May 2021.
- [18619] www.certik.org/projects/wasabixfinance — no match: The provided text is a project dashboard page from CertiK Skynet, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned (0x896e145568624a498c5a909187363ae947631503) is a token contract, but it is not listed as in scope for an audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | Alchemist | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | MultiSigWallet | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | MultiSigWalletWithTimelock | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | StakingPools | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | Transmuter | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | TransmuterD8 | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WIT | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WIZT | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WVVT | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WaBtcToken | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WaToken | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WasabiToken | own contract | WasabiToken (selected) `0x896e14...631503` — deployed 2021-03-22 10:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | YearnVaultAdapter | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | IdleVaultAdapter | unmatched — not counted | — | mentioned in findings (IVA-01, IVA-02) | no |
| Rendered PDF capture | PickleVaultAdapter | unmatched — not counted | — | mentioned in findings (PVA-01, PVA-02) | no |
| Rendered PDF capture | VesperVaultAdapter | unmatched — not counted | — | mentioned in findings (VVA-01, VVA-02) | no |
| Rendered PDF capture | YumIdleVault | unmatched — not counted | — | mentioned in findings (YIV-01 through YIV-04) | no |
| Rendered PDF capture | YumPickleVault | unmatched — not counted | — | mentioned in findings (YPV-01 through YPV-05) | no |
| Rendered PDF capture | YumVesperVaultD8 | unmatched — not counted | — | mentioned in findings (YVV-01 through YVV-04) | no |
| Rendered PDF capture | WasabiToken | own contract | WasabiToken (selected) `0x896e14...631503` — deployed 2021-03-22 10:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | MasterChef | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ContributorsVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TeamsVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StakedWasabi | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Alchemist | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | CDP | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | CDPD8 | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | Vault | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | VaultV2 | unmatched — not counted | — | listed in scope table and file analysis | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x86e732...de5aea` | BurnableWasabiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 103 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [18618] Rendered PDF capture
- [18619] www.certik.org/projects/wasabixfinance

Fork inheritance lineage and inherited audits are included when available.
