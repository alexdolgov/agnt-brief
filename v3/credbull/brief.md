# Agentic Audit Brief: Credbull

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Credbull (`credbull`)
- Website: [https://credbull.io/](https://credbull.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, polygon
- Contract surface: 90 unique implementations (130 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $10,940,088.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Credbull in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3c499c...5c3359`, chain 137)
- UnnamedContract (`0x8f87e1...83f29b`, chain 137)
- UnnamedContract (`0xb89846...4bb9f9`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 87 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 3 of 90 unique; 87 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/85
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 90
- Raw deployments: 130
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 7 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressListRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ae15b...a248f8` | ⚠️ Unaudited |
| AllowedAdapterIncomingAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc192fd...cdd482` | ⚠️ Unaudited |
| AllowedAdaptersPerManagerPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30ed4e...0bb710` | ⚠️ Unaudited |
| AllowedAdaptersPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x421878...d27a4a` | ⚠️ Unaudited |
| AllowedAssetsForRedemptionPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71b825...86b3b6` | ⚠️ Unaudited |
| AllowedDepositRecipientsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe18535...a459ff` | ⚠️ Unaudited |
| AllowedExternalPositionTypesPerManagerPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6367c...ede28c` | ⚠️ Unaudited |
| AllowedExternalPositionTypesPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a739d...76d8e7` | ⚠️ Unaudited |
| AllowedRedeemersForSpecificAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f99e9...122195` | ⚠️ Unaudited |
| AllowedSharesTransferRecipientsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b6913...0194bd` | ⚠️ Unaudited |
| ArbitraryLoanFixedInterestModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x29b6e5...99c781`; polygon `0xa67be9...bf9ff2` | ⚠️ Unaudited |
| ArbitraryLoanPositionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x4c3da7...67c2e7`; polygon `0x7fec9c...398289`; polygon `0xf45071...f206d3` | ⚠️ Unaudited |
| ArbitraryLoanPositionParser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2e4646...7a7d05`; polygon `0xe8a5da...860131` | ⚠️ Unaudited |
| ArbitraryLoanTotalNominalDeltaOracleModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x6fd4a0...7ba6a2`; polygon `0x9301b3...e4121d` | ⚠️ Unaudited |
| ArrakisV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0409b...e7011d` | ⚠️ Unaudited |
| ArrakisV2PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc8090...ac678a` | ⚠️ Unaudited |
| AssetValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9d4d8...d27d86` | ⚠️ Unaudited |
| CBL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x577349...381a08`; arbitrum `0xd6b3d8...b95cb6` | ⚠️ Unaudited |
| ComptrollerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5fc0e...1eb441` | ⚠️ Unaudited |
| ConvertedQuoteAggregatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf19652...76857d` | ⚠️ Unaudited |
| CredbullFixedYieldVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x096227...c72874`; arbitrum `0x1e0d68...4b0b8b`; arbitrum `0x581d72...e9cbff`; arbitrum `0x797ccf...f62e4b`; arbitrum `0x8b261a...6bb4bb`; arbitrum `0x8f87e1...83f29b`; arbitrum `0xace0d7...ce5516`; arbitrum `0xb89846...4bb9f9`; arbitrum `0xc0c1da...b7403f`; arbitrum `0xe4a4d8...e76b91` | ⚠️ Unaudited |
| CumulativeSlippageTolerancePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x133236...706bf2` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x2baa64...e82c87`; polygon `0x30c439...fcbafa`; polygon `0x5100ef...c49114`; polygon `0x6e84a0...b12289`; polygon `0xb545e7...874cb8` | ⚠️ Unaudited |
| Dispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2e2527...032733`; polygon `0xf9fe9a...5778d2` | ⚠️ Unaudited |
| DispatcherOwnedBeaconFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa82586...048017` | ⚠️ Unaudited |
| EntranceRateBurnFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01460b...055f16` | ⚠️ Unaudited |
| EntranceRateDirectFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88c9a1...fb78b8` | ⚠️ Unaudited |
| EnzymeV4VaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51b47d...7d7f56` | ⚠️ Unaudited |
| EnzymeVaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd72324...ca0cf1` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79567a...5df87d` | ⚠️ Unaudited |
| ERC4626PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb13f73...cadab0` | ⚠️ Unaudited |
| ERC4626RateAggregatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b5730...6791e8` | ⚠️ Unaudited |
| ExitRateBurnFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bbb96...d37879` | ⚠️ Unaudited |
| ExitRateDirectFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5c7f7...99b848` | ⚠️ Unaudited |
| ExternalPositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067eee...f6580d` | ⚠️ Unaudited |
| ExternalPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9513b3...fd7f47` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddd743...461deb` | ⚠️ Unaudited |
| FundDataProviderRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2e6b6f...64d0bb`; polygon `0x4e518b...d9636f`; polygon `0xf03dc1...dace6b`; polygon `0xfb41e1...7f0e84` | ⚠️ Unaudited |
| FundDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x188d35...12284f` | ⚠️ Unaudited |
| FundValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdf038...4b7a33` | ⚠️ Unaudited |
| FundValueCalculatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd70389...d93f08` | ⚠️ Unaudited |
| FundValueCalculatorUsdWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdaa8bb...e37323` | ⚠️ Unaudited |
| GasRelayPaymasterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed0578...cdc4ca` | ⚠️ Unaudited |
| GasRelayPaymasterLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x190e70...d63715`; polygon `0x44654b...5f5592`; polygon `0x9feea9...3dc7a0`; polygon `0xbedae7...d01676` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a68d5...8c17d4` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1ad5e5...4b62e3`; polygon `0x993212...b6d7c9` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x334ed8...394b7d`; polygon `0x585527...f8cefa`; polygon `0xcee23e...3a53f3`; polygon `0xe6ae7b...69586f` | ⚠️ Unaudited |
| GlobalConfigLib | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x905448...9be837`; polygon `0xcbbd50...c67a64` | ⚠️ Unaudited |
| GlobalConfigLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce699a...948dd1` | ⚠️ Unaudited |
| IdleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d2135...4b8434` | ⚠️ Unaudited |
| IdlePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99a8fe...740a58` | ⚠️ Unaudited |
| IntegrationManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92fcde...a0884b` | ⚠️ Unaudited |
| ManagementFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97f13b...dbd843` | ⚠️ Unaudited |
| ManualValueOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x735615...c4354f` | ⚠️ Unaudited |
| MinAssetBalancesPostRedemptionPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d940b...f8251e` | ⚠️ Unaudited |
| MinMaxInvestmentPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ac04e...dbbc9a` | ⚠️ Unaudited |
| MinSharesSupplyFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb45b9...df19a3` | ⚠️ Unaudited |
| NoDepegOnRedeemSharesForSpecificAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x006911...cf8b04` | ⚠️ Unaudited |
| OneInchV5Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f4a9c...23b457` | ⚠️ Unaudited |
| OnlyRemoveDustExternalPositionPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0f495...abab99` | ⚠️ Unaudited |
| OnlyUntrackDustOrPricelessAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f8563...b5c9d2` | ⚠️ Unaudited |
| ParaSwapV5Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x2a5106...95d616`; polygon `0x5ef0dc...5e14d6`; polygon `0xa6402b...6530e7`; polygon `0xb665e9...4ab0df`; polygon `0xb98c40...514293`; polygon `0xe9293a...5879d4` | ⚠️ Unaudited |
| ParaSwapV6Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x4c8026...72d53c`; polygon `0xe01f05...83638e` | ⚠️ Unaudited |
| PeggedDerivativesPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfa102...fcc5b1` | ⚠️ Unaudited |
| PeggedRateDeviationAggregatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x124fda...a22f4a` | ⚠️ Unaudited |
| PerformanceFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc63af...479bdf` | ⚠️ Unaudited |
| PolicyManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a8ee0...f5546f` | ⚠️ Unaudited |
| PoolTogetherV4Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1ade6...3dc63b` | ⚠️ Unaudited |
| PoolTogetherV4PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf35a9f...682f69` | ⚠️ Unaudited |
| ProtocolFeeReserveLib | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x309d2f...95fe46`; polygon `0xf0bfee...d68b2d` | ⚠️ Unaudited |
| ProtocolFeeReserveLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x420811...aaad5b` | ⚠️ Unaudited |
| ProtocolFeeTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8e6ed...6e23d5` | ⚠️ Unaudited |
| SharePriceThrottledAssetManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x42637a...fea3de`; polygon `0x63b3fb...de8c5a` | ⚠️ Unaudited |
| SharePriceThrottledAssetManagerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65d920...9a349c` | ⚠️ Unaudited |
| SharesSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a0e33...9b8944` | ⚠️ Unaudited |
| SingleAssetDepositQueueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd33e75...71233a` | ⚠️ Unaudited |
| SingleAssetRedemptionQueueFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b6b34...e026b9` | ⚠️ Unaudited |
| SingleAssetRedemptionQueueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe54065...cf0b87` | ⚠️ Unaudited |
| TransferAssetsAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52e83a...a92a17` | ⚠️ Unaudited |
| UintListRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ddd87...166519` | ⚠️ Unaudited |
| UnpermissionedActionsWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1648cc...d2b17b` | ⚠️ Unaudited |
| ValueInterpreter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66de7e...8a0f45` | ⚠️ Unaudited |
| VaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddb8eb...2e1612` | ⚠️ Unaudited |
| VaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eda17...8ccd6d` | ⚠️ Unaudited |
| ZeroExV4Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x34558a...4fb687`; polygon `0xce663e...f1448a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234473 | `0x3c499c...5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234475 | `0x8f87e1...83f29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaad57f...6044f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234476 | `0xb89846...4bb9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc088fe...d91224` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Credbull-DeFi_Audit_20241217_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20241217_Hacken.pdf) | Hacken | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Credbull-DeFi_Audit_20241031_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20241031_Hacken.pdf) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Credbull-DeFi_Audit_20240815_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20240815_Hacken.pdf) | Hacken | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Credbull-DeFi_Audit_20240514.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20240514.pdf) | CertiK | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Credbull-CBL_Audit_20241023_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-CBL_Audit_20241023_Hacken.pdf) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024](https://hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf](https://hashlock.com/wp-content/uploads/2025/05/Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf) | Hashlock | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21290] Credbull-DeFi_Audit_20241217_Hacken.pdf — no match: All contracts listed in Appendix 2 Scope table and System Overview section. Date from cover page: 17/12/2024.
- [21291] Credbull-DeFi_Audit_20241031_Hacken.pdf — no match: All contracts listed in Appendix 2 Scope table, plus additional contracts mentioned in System Overview and findings.
- [21292] Credbull-DeFi_Audit_20240815_Hacken.pdf — no match: All contracts listed in Appendix 2: Scope section. Date from cover page: 15/08/2024.
- [21293] Credbull-DeFi_Audit_20240514.pdf — no match: Extracted 15 unique contract names from the audit scope tables. The audit date is explicitly stated as 'Assessed on May 13th, 2024' on the cover page and in the summary.
- [21294] Credbull-CBL_Audit_20241023_Hacken.pdf — no match: All contracts listed in Appendix 2 Scope table, plus additional contracts mentioned in System Overview and findings.
- [21295] hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024 — no match: Only one contract (CBL) is in scope. The report focuses on the Credbull CBL token.
- [21296] Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf — no match: Only one contract in scope: WrappedERC20.sol. Audit date is April 2025, mapped to last day of month.
- [21297] Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf — no match: Only one contract in scope: WrappedERC20.sol. Audit date is April 2025, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Credbull-DeFi_Audit_20241217_Hacken.pdf | AbstractYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | CalcDiscounted | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | CalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | CalcSimpleInterest | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | RedeemOptimizerFIFO | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | Timer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | TripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | LiquidContinuousMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | MultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | TimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | SimpleInterestYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | TripleRateYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITimelock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITimelockOpenEnded | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IComponentToken | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IRedeemOptimizer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ICalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | AbstractYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | CalcDiscounted | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | CalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | CalcSimpleInterest | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | RedeemOptimizerFIFO | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | Timer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | TripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | LiquidContinuousMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | MultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | TimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | SimpleInterestYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | TripleRateYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IComponentToken | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ICalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IRedeemOptimizer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITimelock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITimelockOpenEnded | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | MaturityVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | FixedYieldVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | UpsideVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | WhiteListProvider | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | MaxCapPlugin | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | WhiteListPlugin | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | WindowPlugin | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullFixedYieldVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullFixedYieldVaultFactory | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullFixedYieldVaultWithUpside | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullUpsideVaultFactory | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullWhiteListProvider | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | IWhiteListProvider | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullBaseVault | unmatched — not counted | — | listed in scope table with ID CBV and CRE | no |
| Credbull-DeFi_Audit_20240514.pdf | UpsideVault | unmatched — not counted | — | listed in scope table with ID UVB and UVU | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullKYCProvider | unmatched — not counted | — | listed in scope table with ID CKY and CKC | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullFixedYieldVaultWithUpside | unmatched — not counted | — | listed in scope table with ID CFY and CFW | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullFixedYieldVault | unmatched — not counted | — | listed in scope table with ID CFV and CYV | no |
| Credbull-DeFi_Audit_20240514.pdf | MaturityVault | unmatched — not counted | — | listed in scope table with ID MVB and MVU | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullFixedYieldVaultFactory | unmatched — not counted | — | listed in scope table with ID CFF and CYF | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullUpsideVaultFactory | unmatched — not counted | — | listed in scope table with ID CUV and CUF | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullVaultFactory | unmatched — not counted | — | listed in scope table with ID CVF and CRD | no |
| Credbull-DeFi_Audit_20240514.pdf | MaxCapPlug | unmatched — not counted | — | listed in scope table with ID MCP and MAX | no |
| Credbull-DeFi_Audit_20240514.pdf | WhitelistPlugIn | unmatched — not counted | — | listed in scope table with ID WPI and WHI | no |
| Credbull-DeFi_Audit_20240514.pdf | WindowPlugIn | unmatched — not counted | — | listed in scope table with ID WIN and WID | no |
| Credbull-DeFi_Audit_20240514.pdf | FixedYieldVault | unmatched — not counted | — | listed in scope table with ID FYV and FIX | no |
| Credbull-DeFi_Audit_20240514.pdf | ICredbull | unmatched — not counted | — | listed in scope table with ID ICB and ICU | no |
| Credbull-DeFi_Audit_20240514.pdf | IKYCProvider | unmatched — not counted | — | listed in scope table with ID IKY and IKC | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | AbstractYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | CalcDiscounted | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | CalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | CalcSimpleInterest | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | RedeemOptimizerFIFO | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | Timer | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | TripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | LiquidContinuousMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | MultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | TimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | SimpleInterestYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | TripleRateYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IComponentToken | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ICalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IRedeemOptimizer | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITimelock | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITimelockOpenEnded | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024 | CBL | unmatched — not counted | — | listed in scope table as 'File: token CBL.sol' | no |
| Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf | WrappedERC20 | unmatched — not counted | — | listed in Audit Scope section as Contract 1 | no |
| Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf | WrappedERC20 | unmatched — not counted | — | listed in Audit Scope section as Contract 1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 96 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [21290] Credbull-DeFi_Audit_20241217_Hacken.pdf
- [21291] Credbull-DeFi_Audit_20241031_Hacken.pdf
- [21292] Credbull-DeFi_Audit_20240815_Hacken.pdf
- [21293] Credbull-DeFi_Audit_20240514.pdf
- [21294] Credbull-CBL_Audit_20241023_Hacken.pdf
- [21295] hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024
- [21296] Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf
- [21297] Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf

Fork inheritance lineage and inherited audits are included when available.
