# Agentic Audit Brief: Credbull

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Credbull (`credbull`)
- Website: [https://credbull.io/](https://credbull.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, polygon
- Contract surface: 102 unique implementations (142 raw deployments)
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

- UnnamedContract (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- UnnamedContract (`0x8f87e1258d645d948f270221c34202be0583f29b`, chain 137)
- UnnamedContract (`0xb89846b74f3b190f6e00fc35b3affcdf5d4bb9f9`, chain 137)

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
- Outside the address book: 99 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 3 of 102 unique; 99 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/85
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 102
- Raw deployments: 142
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
| AddressListRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8` | ⚠️ Unaudited |
| AllowedAdapterIncomingAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482` | ⚠️ Unaudited |
| AllowedAdaptersPerManagerPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710` | ⚠️ Unaudited |
| AllowedAdaptersPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4218783ae10bd1841e6664cf048ac295d8d27a4a` | ⚠️ Unaudited |
| AllowedAssetsForRedemptionPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71b8254f608a73162445655ff2f07ccb1586b3b6` | ⚠️ Unaudited |
| AllowedDepositRecipientsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1853502e2ea2b7c14c5e89169c63065f5a459ff` | ⚠️ Unaudited |
| AllowedExternalPositionTypesPerManagerPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c` | ⚠️ Unaudited |
| AllowedExternalPositionTypesPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a739da3099fd4fc954bd764099fc000da76d8e7` | ⚠️ Unaudited |
| AllowedRedeemersForSpecificAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f99e9bcb69c58e9889bdd6b88c1d3059a122195` | ⚠️ Unaudited |
| AllowedSharesTransferRecipientsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b6913a8ed4595919a6b4a9022208cede20194bd` | ⚠️ Unaudited |
| ArbitraryLoanFixedInterestModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x29b6e5fbfb23e639ac3e87766a2866886099c781`; polygon `0xa67be94ace58613a9e36044fbebaca1703bf9ff2` | ⚠️ Unaudited |
| ArbitraryLoanPositionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x4c3da79534300b2a8d494ebfe7a0aee28367c2e7`; polygon `0x7fec9c81adf55e7e1b287579192d6db7af398289`; polygon `0xf45071ea30afa81be89430f3d0f334e98af206d3` | ⚠️ Unaudited |
| ArbitraryLoanPositionParser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2e46462de3bf02d382c039bb021021f2277a7d05`; polygon `0xe8a5dadff7dbd09f3b2abbb09643ba67f1860131` | ⚠️ Unaudited |
| ArbitraryLoanTotalNominalDeltaOracleModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x6fd4a04f80fd21291884392ea5f78f2ea07ba6a2`; polygon `0x9301b377f646b38e31681cc5c35f364385e4121d` | ⚠️ Unaudited |
| ArrakisV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0409b59a971f5d0cdcc59b26f95340306e7011d` | ⚠️ Unaudited |
| ArrakisV2PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc80908a82676e1fa89837b2a06350e546ac678a` | ⚠️ Unaudited |
| AssetValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86` | ⚠️ Unaudited |
| CBL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x577349c99830d3c078034087a532581ef5381a08`; arbitrum `0xd6b3d81868770083307840f513a3491960b95cb6` | ⚠️ Unaudited |
| ComptrollerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5fc0e36c85552e44354132d188c33d9361eb441` | ⚠️ Unaudited |
| ConvertedQuoteAggregatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf19652f82eeacc4ec2c4284a3632c0e27d76857d` | ⚠️ Unaudited |
| CredbullFixedYieldVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x096227660b27e612f31838645cc3ad213cc72874`; arbitrum `0x1e0d689be9cab9ef4db8b24eb2a34feab54b0b8b`; arbitrum `0x581d72f798b3a5b3f3b12768c989656123e9cbff`; arbitrum `0x797ccfe4063e0c0cc6c1eb580f29bbcec6f62e4b`; arbitrum `0x8b261a75f10da41e0aa4e270487b06d7116bb4bb`; arbitrum `0x8f87e1258d645d948f270221c34202be0583f29b`; arbitrum `0xace0d7a6de1396a04daa8af16ec8767b07ce5516`; arbitrum `0xb89846b74f3b190f6e00fc35b3affcdf5d4bb9f9`; arbitrum `0xc0c1daa773570c041c47ce12c397addfd6b7403f`; arbitrum `0xe4a4d891f02df7bffc5ff9e691313de8a9e76b91` | ⚠️ Unaudited |
| CumulativeSlippageTolerancePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1332367c181f1157f751b160187dcaa219706bf2` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87`; polygon `0x30c4394916816ac289a61700fbc1211d6efcbafa`; polygon `0x5100ef340bc3a27113e96b9571e784e89fc49114`; polygon `0x6e84a082894f8c2f4dd1a8c4c5cfb1c971b12289`; polygon `0xb545e766527422bf1b86b47ebdfd1422cb874cb8` | ⚠️ Unaudited |
| Dispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2e25271297537b8124b8f883a92ffd95c4032733`; polygon `0xf9fe9a4f13ebef6a33863b42779ebeb2395778d2` | ⚠️ Unaudited |
| DispatcherOwnedBeaconFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa825861dd852a9aae44612228bf72e9b14048017` | ⚠️ Unaudited |
| EntranceRateBurnFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01460ba35cb6f847d65c5eee124e7e9e10055f16` | ⚠️ Unaudited |
| EntranceRateDirectFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8` | ⚠️ Unaudited |
| EnzymeV4VaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51b47d3dbef6ff6e1fd7a5054ff75d19e07d7f56` | ⚠️ Unaudited |
| EnzymeVaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd723241915bb1d3ac829cdef656ffdbb87ca0cf1` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79567acc4c54c23f5f449c1fbc1b54ac615df87d` | ⚠️ Unaudited |
| ERC4626PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb13f73c5e333fb760a5bed668b1ff04432cadab0` | ⚠️ Unaudited |
| ERC4626RateAggregatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b5730f5ff329ac41d206eba1a2aa12d356791e8` | ⚠️ Unaudited |
| ExitRateBurnFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bbb9635d12a9c022b647f379224d88874d37879` | ⚠️ Unaudited |
| ExitRateDirectFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848` | ⚠️ Unaudited |
| ExternalPositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067eeea753aba0ddecca0b80bbb8b7572bf6580d` | ⚠️ Unaudited |
| ExternalPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9513b3a49fc9ae8b76942c94fb6f660c41fd7f47` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddd7432671f5adc1c82c7c875624c1b0bc461deb` | ⚠️ Unaudited |
| FundDataProviderRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2e6b6f3c07f115df56fe268abd415de5f764d0bb`; polygon `0x4e518b11d06c17e6230b62aa1db7e07913d9636f`; polygon `0xf03dc1f6e470919b5078d17e23e7107204dace6b`; polygon `0xfb41e1d565a1f5cdef222d5258066fe74b7f0e84` | ⚠️ Unaudited |
| FundDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x188d356caf78bc6694aee5969fde99a9d612284f` | ⚠️ Unaudited |
| FundValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdf038dd3b66506d2e5378aee185b2f0084b7a33` | ⚠️ Unaudited |
| FundValueCalculatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd70389a7d6171e1dba6c3df4db7331811fd93f08` | ⚠️ Unaudited |
| FundValueCalculatorUsdWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdaa8bb19db0f85c57cf062cc8bf912d647e37323` | ⚠️ Unaudited |
| GasRelayPaymasterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed05786ef7b5e5bf909512f0ad46eb8f22cdc4ca` | ⚠️ Unaudited |
| GasRelayPaymasterLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x190e7045caeb09459bba12bced1d133e10d63715`; polygon `0x44654bc1107caaa3297ed5ccb70d9cdb445f5592`; polygon `0x9feea9ec855096e702a146ee39797927103dc7a0`; polygon `0xbedae7274c3717c7dec41738e00bedd9a4d01676` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a68d541af898c14fbd5ecbda3b402b18d8c17d4` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1ad5e5acc060fafde8a0e37aa382c250d64b62e3`; polygon `0x9932120518b25e35d4653a8b8d316c58c8b6d7c9` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x334ed809d962078b82f093aedc2d520d2e394b7d`; polygon `0x585527cfc0f3304ee7b631ec00ae6831fbf8cefa`; polygon `0xcee23e8c2edb19af09ec3405f7b95484d43a53f3`; polygon `0xe6ae7ba4224a40adb10d2eac2fa7b1e5a069586f` | ⚠️ Unaudited |
| GlobalConfigLib | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x905448cb27f51d9a663fb18d57d76c49d19be837`; polygon `0xcbbd50255cf49797badb28ce625a4ea217c67a64` | ⚠️ Unaudited |
| GlobalConfigLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce699a3153281453668127288e1e673a13948dd1` | ⚠️ Unaudited |
| IdleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d2135fa26a6202f2d39fdba61bcf53bb04b8434` | ⚠️ Unaudited |
| IdlePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99a8fea8d89efb5dcbd201688d6d62ae78740a58` | ⚠️ Unaudited |
| IntegrationManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92fcde09790671cf085864182b9670c77da0884b` | ⚠️ Unaudited |
| ManagementFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97f13b3040a565be791d331b0edd4b1b58dbd843` | ⚠️ Unaudited |
| ManualValueOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x735615beb04bfd3665f06541ea00af1860c4354f` | ⚠️ Unaudited |
| MinAssetBalancesPostRedemptionPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e` | ⚠️ Unaudited |
| MinMaxInvestmentPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ac04e34d9c1d0bd5a440157538cc6fbb0dbbc9a` | ⚠️ Unaudited |
| MinSharesSupplyFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb45b91d582ae383e750a1626a97f854a9df19a3` | ⚠️ Unaudited |
| NoDepegOnRedeemSharesForSpecificAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0069111def5258f692d88bde2116c9c211cf8b04` | ⚠️ Unaudited |
| OneInchV5Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f4a9c0256e4f8e8d65733da1aeb4871f923b457` | ⚠️ Unaudited |
| OnlyRemoveDustExternalPositionPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0f49507c125a000e02ab58c22be9764e2abab99` | ⚠️ Unaudited |
| OnlyUntrackDustOrPricelessAssetsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f856372f7bd844dac0254c7859b117259b5c9d2` | ⚠️ Unaudited |
| ParaSwapV5Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x2a5106122289d1891abb9b5e69c686680595d616`; polygon `0x5ef0dc91f1b109ef589b94447116eb58025e14d6`; polygon `0xa6402b88634029b84f79370edf187250aa6530e7`; polygon `0xb665e93e19eb18ef5005f0296d4693e3154ab0df`; polygon `0xb98c40bdd6d4c58d3cd143c3c435ec6399514293`; polygon `0xe9293a7fa3acd39955d3d33f8457c0af655879d4` | ⚠️ Unaudited |
| ParaSwapV6Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x4c8026a88f1da2d299c539b8c070c1c44372d53c`; polygon `0xe01f0599e9a0104fc9bbf3d789a39bc80683638e` | ⚠️ Unaudited |
| PeggedDerivativesPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfa1027ef1da99c17358cb4719a2297d67fcc5b1` | ⚠️ Unaudited |
| PeggedRateDeviationAggregatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x124fda4b626cda9481948a86a5f8f510d8a22f4a` | ⚠️ Unaudited |
| PerformanceFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf` | ⚠️ Unaudited |
| PolicyManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f` | ⚠️ Unaudited |
| PoolTogetherV4Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1ade612e8a568a4a060a60a22f890171d3dc63b` | ⚠️ Unaudited |
| PoolTogetherV4PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf35a9f4d9ceb494e3671bb79f7532607c1682f69` | ⚠️ Unaudited |
| ProtocolFeeReserveLib | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x309d2f616e73d35aa46719f08cd3e758a395fe46`; polygon `0xf0bfee2a93b0a1f9c5f6c1d731a6cf1308d68b2d` | ⚠️ Unaudited |
| ProtocolFeeReserveLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x420811f86787ae5f4070dcf85c74d8a5a2aaad5b` | ⚠️ Unaudited |
| ProtocolFeeTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5` | ⚠️ Unaudited |
| SharePriceThrottledAssetManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x42637a6fe8dd32448be441a10782b4e29bfea3de`; polygon `0x63b3fb7f2258fb2517e58ce1f2d882c887de8c5a` | ⚠️ Unaudited |
| SharePriceThrottledAssetManagerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65d9202b5494450310c43b6b47942305859a349c` | ⚠️ Unaudited |
| SharesSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a0e3326795a77903e2a11790bd702ebb29b8944` | ⚠️ Unaudited |
| SingleAssetDepositQueueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd33e75e1ae3185aa72d4365e1022ef23cd71233a` | ⚠️ Unaudited |
| SingleAssetRedemptionQueueFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b6b342ba8bb29e2d1b542532e6b7be1cae026b9` | ⚠️ Unaudited |
| SingleAssetRedemptionQueueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe54065f5b303c2843c769fb232b95bb893cf0b87` | ⚠️ Unaudited |
| TransferAssetsAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52e83a4c9a123500e8324b9f489a681ffda92a17` | ⚠️ Unaudited |
| UintListRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ddd871c1607348ebb5be250f882255390166519` | ⚠️ Unaudited |
| UnpermissionedActionsWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1648cc031a1b6d60b5585ae21dae507a69d2b17b` | ⚠️ Unaudited |
| ValueInterpreter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66de7e286aae66f7f3daf693c22d16eea48a0f45` | ⚠️ Unaudited |
| VaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddb8ebe5361ca93614e5efb34049e842912e1612` | ⚠️ Unaudited |
| VaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eda17eb596858566be933b26fae6fa4ee8ccd6d` | ⚠️ Unaudited |
| ZeroExV4Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x34558aa452cac926d6a78cc148ee1220e94fb687`; polygon `0xce663e0ae43f5bf213207a6f0a16dad7c8f1448a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x096227660b27e612f31838645cc3ad213cc72874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x155ef98ec2d8cee03c4419e03024aae7876b08a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e0d689be9cab9ef4db8b24eb2a34feab54b0b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234473 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53eedc0c750c9ffd63782a1b215effcb704fd402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x577349c99830d3c078034087a532581ef5381a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x797ccfe4063e0c0cc6c1eb580f29bbcec6f62e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234475 | `0x8f87e1258d645d948f270221c34202be0583f29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaad57fc5d654b3fc7917b798785b0d0a6f6044f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xace0d7a6de1396a04daa8af16ec8767b07ce5516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae66c0564a6bb320514cd133ddc8281de59d94d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234476 | `0xb89846b74f3b190f6e00fc35b3affcdf5d4bb9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc088fe902e5b99f2744f7e0a08426be396d91224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 124
- Live contracts: 0
- Unknown liveness contracts: 124
- Source-verified contracts: 110
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=42, contamination review=43, source verified unclassified=25, unverified unclassified=14

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | CredbullFixedYieldVault<br>`0x1e0d689be9cab9ef4db8b24eb2a34feab54b0b8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| arbitrum | candidate review | CredbullFixedYieldVault<br>`0x581d72f798b3a5b3f3b12768c989656123e9cbff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| arbitrum | candidate review | CredbullFixedYieldVault<br>`0x797ccfe4063e0c0cc6c1eb580f29bbcec6f62e4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| arbitrum | candidate review | CredbullFixedYieldVault<br>`0x8b261a75f10da41e0aa4e270487b06d7116bb4bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| arbitrum | candidate review | CredbullFixedYieldVault<br>`0x8f87e1258d645d948f270221c34202be0583f29b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| arbitrum | candidate review | CredbullFixedYieldVault<br>`0xb89846b74f3b190f6e00fc35b3affcdf5d4bb9f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| arbitrum | source verified unclassified | CBL<br>`0x577349c99830d3c078034087a532581ef5381a08` | non_address_book | unknown | unknown | verified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x096227660b27e612f31838645cc3ad213cc72874` | non_address_book | unknown | unknown | unverified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x155ef98ec2d8cee03c4419e03024aae7876b08a9` | non_address_book | unknown | unknown | unverified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1e0d689be9cab9ef4db8b24eb2a34feab54b0b8b` | non_address_book | unknown | unknown | unverified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x577349c99830d3c078034087a532581ef5381a08` | non_address_book | unknown | unknown | unverified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x797ccfe4063e0c0cc6c1eb580f29bbcec6f62e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xace0d7a6de1396a04daa8af16ec8767b07ce5516` | non_address_book | unknown | unknown | unverified | n/a | `0x194ef7a54202b7d243f97d1b727315d10f51c4a5` |
| polygon | candidate review | AddressListRegistry<br>`0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedAdapterIncomingAssetsPolicy<br>`0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedAdaptersPerManagerPolicy<br>`0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedAdaptersPolicy<br>`0x4218783ae10bd1841e6664cf048ac295d8d27a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedAssetsForRedemptionPolicy<br>`0x71b8254f608a73162445655ff2f07ccb1586b3b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedDepositRecipientsPolicy<br>`0xe1853502e2ea2b7c14c5e89169c63065f5a459ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedExternalPositionTypesPerManagerPolicy<br>`0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedExternalPositionTypesPolicy<br>`0x5a739da3099fd4fc954bd764099fc000da76d8e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AllowedSharesTransferRecipientsPolicy<br>`0x3b6913a8ed4595919a6b4a9022208cede20194bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ArbitraryLoanPositionParser<br>`0x2e46462de3bf02d382c039bb021021f2277a7d05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ArbitraryLoanPositionParser<br>`0xe8a5dadff7dbd09f3b2abbb09643ba67f1860131` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | AssetValueCalculator<br>`0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ComptrollerLib<br>`0xf5fc0e36c85552e44354132d188c33d9361eb441` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | CumulativeSlippageTolerancePolicy<br>`0x1332367c181f1157f751b160187dcaa219706bf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | DepositWrapper<br>`0x30c4394916816ac289a61700fbc1211d6efcbafa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | DepositWrapper<br>`0x5100ef340bc3a27113e96b9571e784e89fc49114` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | DepositWrapper<br>`0xb545e766527422bf1b86b47ebdfd1422cb874cb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | Dispatcher<br>`0x2e25271297537b8124b8f883a92ffd95c4032733` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | Dispatcher<br>`0xf9fe9a4f13ebef6a33863b42779ebeb2395778d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | EntranceRateDirectFee<br>`0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ExitRateDirectFee<br>`0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | FeeManager<br>`0xddd7432671f5adc1c82c7c875624c1b0bc461deb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | FundValueCalculator<br>`0xcdf038dd3b66506d2e5378aee185b2f0084b7a33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | GasRelayPaymasterLib<br>`0x44654bc1107caaa3297ed5ccb70d9cdb445f5592` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | GasRelayPaymasterLib<br>`0x9feea9ec855096e702a146ee39797927103dc7a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | GasRelayPaymasterLib<br>`0xbedae7274c3717c7dec41738e00bedd9a4d01676` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ManagementFee<br>`0x97f13b3040a565be791d331b0edd4b1b58dbd843` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | MinAssetBalancesPostRedemptionPolicy<br>`0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | OnlyRemoveDustExternalPositionPolicy<br>`0xc0f49507c125a000e02ab58c22be9764e2abab99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | OnlyUntrackDustOrPricelessAssetsPolicy<br>`0x9f856372f7bd844dac0254c7859b117259b5c9d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | PerformanceFee<br>`0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ProtocolFeeTracker<br>`0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | UintListRegistry<br>`0x6ddd871c1607348ebb5be250f882255390166519` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ValueInterpreter<br>`0x66de7e286aae66f7f3daf693c22d16eea48a0f45` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | VaultLib<br>`0xddb8ebe5361ca93614e5efb34049e842912e1612` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | candidate review | ZeroExV4Adapter<br>`0x34558aa452cac926d6a78cc148ee1220e94fb687` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | AllowedRedeemersForSpecificAssetsPolicy<br>`0x9f99e9bcb69c58e9889bdd6b88c1d3059a122195` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ArbitraryLoanFixedInterestModule<br>`0x29b6e5fbfb23e639ac3e87766a2866886099c781` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ArbitraryLoanPositionLib<br>`0x4c3da79534300b2a8d494ebfe7a0aee28367c2e7` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ArbitraryLoanTotalNominalDeltaOracleModule<br>`0x6fd4a04f80fd21291884392ea5f78f2ea07ba6a2` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ArrakisV2Adapter<br>`0xf0409b59a971f5d0cdcc59b26f95340306e7011d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ArrakisV2PriceFeed<br>`0xcc80908a82676e1fa89837b2a06350e546ac678a` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ConvertedQuoteAggregatorFactory<br>`0xf19652f82eeacc4ec2c4284a3632c0e27d76857d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | DispatcherOwnedBeaconFactory<br>`0xa825861dd852a9aae44612228bf72e9b14048017` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | EntranceRateBurnFee<br>`0x01460ba35cb6f847d65c5eee124e7e9e10055f16` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | EnzymeV4VaultAdapter<br>`0x51b47d3dbef6ff6e1fd7a5054ff75d19e07d7f56` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | EnzymeVaultPriceFeed<br>`0xd723241915bb1d3ac829cdef656ffdbb87ca0cf1` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ERC4626Adapter<br>`0x79567acc4c54c23f5f449c1fbc1b54ac615df87d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ERC4626PriceFeed<br>`0xb13f73c5e333fb760a5bed668b1ff04432cadab0` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ERC4626RateAggregatorFactory<br>`0x3b5730f5ff329ac41d206eba1a2aa12d356791e8` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ExitRateBurnFee<br>`0x0bbb9635d12a9c022b647f379224d88874d37879` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ExternalPositionFactory<br>`0x067eeea753aba0ddecca0b80bbb8b7572bf6580d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ExternalPositionManager<br>`0x9513b3a49fc9ae8b76942c94fb6f660c41fd7f47` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | FundDataProviderRouter<br>`0x2e6b6f3c07f115df56fe268abd415de5f764d0bb` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | FundValueCalculatorRouter<br>`0xd70389a7d6171e1dba6c3df4db7331811fd93f08` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | FundValueCalculatorUsdWrapper<br>`0xdaa8bb19db0f85c57cf062cc8bf912d647e37323` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | GasRelayPaymasterFactory<br>`0xed05786ef7b5e5bf909512f0ad46eb8f22cdc4ca` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | GasRelayPaymasterLib<br>`0x190e7045caeb09459bba12bced1d133e10d63715` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | GatedRedemptionQueueSharesWrapperFactory<br>`0x1ad5e5acc060fafde8a0e37aa382c250d64b62e3` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | GatedRedemptionQueueSharesWrapperFactory<br>`0x7a68d541af898c14fbd5ecbda3b402b18d8c17d4` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | IdleAdapter<br>`0x5d2135fa26a6202f2d39fdba61bcf53bb04b8434` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | IdlePriceFeed<br>`0x99a8fea8d89efb5dcbd201688d6d62ae78740a58` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | MinMaxInvestmentPolicy<br>`0x8ac04e34d9c1d0bd5a440157538cc6fbb0dbbc9a` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | MinSharesSupplyFee<br>`0xeb45b91d582ae383e750a1626a97f854a9df19a3` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | NoDepegOnRedeemSharesForSpecificAssetsPolicy<br>`0x0069111def5258f692d88bde2116c9c211cf8b04` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | OneInchV5Adapter<br>`0x2f4a9c0256e4f8e8d65733da1aeb4871f923b457` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ParaSwapV5Adapter<br>`0x2a5106122289d1891abb9b5e69c686680595d616` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | ParaSwapV6Adapter<br>`0x4c8026a88f1da2d299c539b8c070c1c44372d53c` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | PeggedDerivativesPriceFeed<br>`0xbfa1027ef1da99c17358cb4719a2297d67fcc5b1` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | PeggedRateDeviationAggregatorFactory<br>`0x124fda4b626cda9481948a86a5f8f510d8a22f4a` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | PoolTogetherV4Adapter<br>`0xe1ade612e8a568a4a060a60a22f890171d3dc63b` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | PoolTogetherV4PriceFeed<br>`0xf35a9f4d9ceb494e3671bb79f7532607c1682f69` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | SharePriceThrottledAssetManagerFactory<br>`0x42637a6fe8dd32448be441a10782b4e29bfea3de` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | SharePriceThrottledAssetManagerLib<br>`0x65d9202b5494450310c43b6b47942305859a349c` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | SharesSplitterFactory<br>`0x1a0e3326795a77903e2a11790bd702ebb29b8944` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | SingleAssetDepositQueueLib<br>`0xd33e75e1ae3185aa72d4365e1022ef23cd71233a` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | SingleAssetRedemptionQueueFactory<br>`0x4b6b342ba8bb29e2d1b542532e6b7be1cae026b9` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | SingleAssetRedemptionQueueLib<br>`0xe54065f5b303c2843c769fb232b95bb893cf0b87` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | contamination review | TransferAssetsAdapter<br>`0x52e83a4c9a123500e8324b9f489a681ffda92a17` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ArbitraryLoanFixedInterestModule<br>`0xa67be94ace58613a9e36044fbebaca1703bf9ff2` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ArbitraryLoanPositionLib<br>`0x7fec9c81adf55e7e1b287579192d6db7af398289` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ArbitraryLoanPositionLib<br>`0xf45071ea30afa81be89430f3d0f334e98af206d3` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ArbitraryLoanTotalNominalDeltaOracleModule<br>`0x9301b377f646b38e31681cc5c35f364385e4121d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | DepositWrapper<br>`0x6e84a082894f8c2f4dd1a8c4c5cfb1c971b12289` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | FundDataProviderRouter<br>`0x4e518b11d06c17e6230b62aa1db7e07913d9636f` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | FundDataProviderRouter<br>`0xf03dc1f6e470919b5078d17e23e7107204dace6b` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | FundDataProviderRouter<br>`0xfb41e1d565a1f5cdef222d5258066fe74b7f0e84` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | GatedRedemptionQueueSharesWrapperLib<br>`0x334ed809d962078b82f093aedc2d520d2e394b7d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | GatedRedemptionQueueSharesWrapperLib<br>`0x585527cfc0f3304ee7b631ec00ae6831fbf8cefa` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | GatedRedemptionQueueSharesWrapperLib<br>`0x9932120518b25e35d4653a8b8d316c58c8b6d7c9` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | GlobalConfigLib<br>`0xcbbd50255cf49797badb28ce625a4ea217c67a64` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | GlobalConfigLib<br>`0xce699a3153281453668127288e1e673a13948dd1` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | GlobalConfigProxy<br>`0x905448cb27f51d9a663fb18d57d76c49d19be837` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ParaSwapV5Adapter<br>`0x5ef0dc91f1b109ef589b94447116eb58025e14d6` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ParaSwapV5Adapter<br>`0xa6402b88634029b84f79370edf187250aa6530e7` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ParaSwapV5Adapter<br>`0xb665e93e19eb18ef5005f0296d4693e3154ab0df` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ParaSwapV5Adapter<br>`0xb98c40bdd6d4c58d3cd143c3c435ec6399514293` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ParaSwapV5Adapter<br>`0xe9293a7fa3acd39955d3d33f8457c0af655879d4` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ParaSwapV6Adapter<br>`0xe01f0599e9a0104fc9bbf3d789a39bc80683638e` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ProtocolFeeReserveLib<br>`0x309d2f616e73d35aa46719f08cd3e758a395fe46` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ProtocolFeeReserveLib<br>`0x420811f86787ae5f4070dcf85c74d8a5a2aaad5b` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | ProtocolFeeReserveProxy<br>`0xf0bfee2a93b0a1f9c5f6c1d731a6cf1308d68b2d` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | source verified unclassified | SharePriceThrottledAssetManagerFactory<br>`0x63b3fb7f2258fb2517e58ce1f2d882c887de8c5a` | non_address_book | unknown | unknown | verified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | unverified unclassified | UnnamedContract<br>`0xaad57fc5d654b3fc7917b798785b0d0a6f6044f1` | non_address_book | unknown | unknown | unverified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc088fe902e5b99f2744f7e0a08426be396d91224` | non_address_book | unknown | unknown | unverified | n/a | `0x5aa6aec74ee4c47cc25e64f83119185530dba5c2` |
| polygon | unverified unclassified | UnnamedContract<br>`0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x53eedc0c750c9ffd63782a1b215effcb704fd402` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xae66c0564a6bb320514cd133ddc8281de59d94d4` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |

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
| needs_review | 17 |

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
