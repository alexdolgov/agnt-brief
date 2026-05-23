# Agentic Audit Brief: Credbull

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Credbull (`credbull`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-05-23T02:43:47.564Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, polygon
- Contract surface: 83 unique implementations (128 raw deployments)
- DeFi Llama TVL: $10,940,088.68
- On-chain TVL (included contracts): $1,892.86
- TVL by chain: Arbitrum $1,892.86

## Project Description

Credbull is a DeFi protocol offering fixed-yield vaults that allow users to deposit assets and earn predictable returns. It operates on Polygon and Arbitrum, using a modular architecture with shared configuration and fee management.

### Architecture

The Credbull family uses a single VaultLib implementation behind multiple VaultProxy instances, sharing a GlobalConfig for parameters and a ProtocolFeeReserve for fee collection. The FundValueCalculator supports vault accounting, while the GatedRedemptionQueueSharesWrapper manages share redemptions.

## Audit Coverage Summary

- Verified implementations audited: 0/82 (0.0%)
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 83
- Raw deployments: 128
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,892.86
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,892.86 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CredbullFixedYieldVault | core_logic | arbitrum | 10 deployments: arbitrum [`0x096227...c72874`](./contracts/arbitrum-42161/0x096227660b27e612f31838645cc3ad213cc72874/); arbitrum `0x1e0d68...4b0b8b`; arbitrum `0x581d72...e9cbff`; arbitrum `0x797ccf...f62e4b`; arbitrum `0x8b261a...6bb4bb`; arbitrum `0x8f87e1...83f29b`; arbitrum `0xace0d7...ce5516`; arbitrum `0xb89846...4bb9f9`; arbitrum `0xc0c1da...b7403f`; arbitrum `0xe4a4d8...e76b91` | ⚠️ Unaudited |
| AddressListRegistry | registry | polygon | [`0x5ae15b...a248f8`](./contracts/polygon-137/0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8/) | ⚠️ Unaudited |
| AllowedAdapterIncomingAssetsPolicy | adapter | polygon | [`0xc192fd...cdd482`](./contracts/polygon-137/0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482/) | ⚠️ Unaudited |
| AllowedAdaptersPerManagerPolicy | adapter | polygon | [`0x30ed4e...0bb710`](./contracts/polygon-137/0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710/) | ⚠️ Unaudited |
| AllowedAdaptersPolicy | adapter | polygon | [`0x421878...d27a4a`](./contracts/polygon-137/0x4218783ae10bd1841e6664cf048ac295d8d27a4a/) | ⚠️ Unaudited |
| AllowedAssetsForRedemptionPolicy | unknown | polygon | [`0x71b825...86b3b6`](./contracts/polygon-137/0x71b8254f608a73162445655ff2f07ccb1586b3b6/) | ⚠️ Unaudited |
| AllowedDepositRecipientsPolicy | operational_periphery | polygon | [`0xe18535...a459ff`](./contracts/polygon-137/0xe1853502e2ea2b7c14c5e89169c63065f5a459ff/) | ⚠️ Unaudited |
| AllowedExternalPositionTypesPerManagerPolicy | governance | polygon | [`0xb6367c...ede28c`](./contracts/polygon-137/0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c/) | ⚠️ Unaudited |
| AllowedExternalPositionTypesPolicy | unknown | polygon | [`0x5a739d...76d8e7`](./contracts/polygon-137/0x5a739da3099fd4fc954bd764099fc000da76d8e7/) | ⚠️ Unaudited |
| AllowedRedeemersForSpecificAssetsPolicy | unknown | polygon | [`0x9f99e9...122195`](./contracts/polygon-137/0x9f99e9bcb69c58e9889bdd6b88c1d3059a122195/) | ⚠️ Unaudited |
| AllowedSharesTransferRecipientsPolicy | operational_periphery | polygon | [`0x3b6913...0194bd`](./contracts/polygon-137/0x3b6913a8ed4595919a6b4a9022208cede20194bd/) | ⚠️ Unaudited |
| ArbitraryLoanFixedInterestModule | unknown | polygon | 2 deployments: polygon [`0x29b6e5...99c781`](./contracts/polygon-137/0x29b6e5fbfb23e639ac3e87766a2866886099c781/); polygon `0xa67be9...bf9ff2` | ⚠️ Unaudited |
| ArbitraryLoanPositionLib | unknown | polygon | 3 deployments: polygon [`0x4c3da7...67c2e7`](./contracts/polygon-137/0x4c3da79534300b2a8d494ebfe7a0aee28367c2e7/); polygon `0x7fec9c...398289`; polygon `0xf45071...f206d3` | ⚠️ Unaudited |
| ArbitraryLoanPositionParser | unknown | polygon | 2 deployments: polygon [`0x2e4646...7a7d05`](./contracts/polygon-137/0x2e46462de3bf02d382c039bb021021f2277a7d05/); polygon `0xe8a5da...860131` | ⚠️ Unaudited |
| ArbitraryLoanTotalNominalDeltaOracleModule | operational_periphery | polygon | 2 deployments: polygon [`0x6fd4a0...7ba6a2`](./contracts/polygon-137/0x6fd4a04f80fd21291884392ea5f78f2ea07ba6a2/); polygon `0x9301b3...e4121d` | ⚠️ Unaudited |
| ArrakisV2Adapter | adapter | polygon | [`0xf0409b...e7011d`](./contracts/polygon-137/0xf0409b59a971f5d0cdcc59b26f95340306e7011d/) | ⚠️ Unaudited |
| ArrakisV2PriceFeed | operational_periphery | polygon | [`0xcc8090...ac678a`](./contracts/polygon-137/0xcc80908a82676e1fa89837b2a06350e546ac678a/) | ⚠️ Unaudited |
| AssetValueCalculator | unknown | polygon | [`0xe9d4d8...d27d86`](./contracts/polygon-137/0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86/) | ⚠️ Unaudited |
| CBL | unknown | arbitrum | 2 deployments: arbitrum [`0x577349...381a08`](./contracts/arbitrum-42161/0x577349c99830d3c078034087a532581ef5381a08/); arbitrum `0xd6b3d8...b95cb6` | ⚠️ Unaudited |
| ComptrollerLib | unknown | polygon | [`0xf5fc0e...1eb441`](./contracts/polygon-137/0xf5fc0e36c85552e44354132d188c33d9361eb441/) | ⚠️ Unaudited |
| ConvertedQuoteAggregatorFactory | registry | polygon | [`0xf19652...76857d`](./contracts/polygon-137/0xf19652f82eeacc4ec2c4284a3632c0e27d76857d/) | ⚠️ Unaudited |
| CumulativeSlippageTolerancePolicy | unknown | polygon | [`0x133236...706bf2`](./contracts/polygon-137/0x1332367c181f1157f751b160187dcaa219706bf2/) | ⚠️ Unaudited |
| DepositWrapper | unknown | polygon | 5 deployments: polygon [`0x2baa64...e82c87`](./contracts/polygon-137/0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87/); polygon `0x30c439...fcbafa`; polygon `0x5100ef...c49114`; polygon `0x6e84a0...b12289`; polygon `0xb545e7...874cb8` | ⚠️ Unaudited |
| Dispatcher | unknown | polygon | 2 deployments: polygon [`0x2e2527...032733`](./contracts/polygon-137/0x2e25271297537b8124b8f883a92ffd95c4032733/); polygon `0xf9fe9a...5778d2` | ⚠️ Unaudited |
| DispatcherOwnedBeaconFactory | registry | polygon | [`0xa82586...048017`](./contracts/polygon-137/0xa825861dd852a9aae44612228bf72e9b14048017/) | ⚠️ Unaudited |
| EntranceRateBurnFee | unknown | polygon | [`0x01460b...055f16`](./contracts/polygon-137/0x01460ba35cb6f847d65c5eee124e7e9e10055f16/) | ⚠️ Unaudited |
| EntranceRateDirectFee | unknown | polygon | [`0x88c9a1...fb78b8`](./contracts/polygon-137/0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8/) | ⚠️ Unaudited |
| EnzymeV4VaultAdapter | adapter | polygon | [`0x51b47d...7d7f56`](./contracts/polygon-137/0x51b47d3dbef6ff6e1fd7a5054ff75d19e07d7f56/) | ⚠️ Unaudited |
| EnzymeVaultPriceFeed | operational_periphery | polygon | [`0xd72324...ca0cf1`](./contracts/polygon-137/0xd723241915bb1d3ac829cdef656ffdbb87ca0cf1/) | ⚠️ Unaudited |
| ERC4626Adapter | adapter | polygon | [`0x79567a...5df87d`](./contracts/polygon-137/0x79567acc4c54c23f5f449c1fbc1b54ac615df87d/) | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | polygon | [`0xb13f73...cadab0`](./contracts/polygon-137/0xb13f73c5e333fb760a5bed668b1ff04432cadab0/) | ⚠️ Unaudited |
| ERC4626RateAggregatorFactory | registry | polygon | [`0x3b5730...6791e8`](./contracts/polygon-137/0x3b5730f5ff329ac41d206eba1a2aa12d356791e8/) | ⚠️ Unaudited |
| ExitRateBurnFee | operational_periphery | polygon | [`0x0bbb96...d37879`](./contracts/polygon-137/0x0bbb9635d12a9c022b647f379224d88874d37879/) | ⚠️ Unaudited |
| ExitRateDirectFee | operational_periphery | polygon | [`0xc5c7f7...99b848`](./contracts/polygon-137/0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848/) | ⚠️ Unaudited |
| ExternalPositionFactory | registry | polygon | [`0x067eee...f6580d`](./contracts/polygon-137/0x067eeea753aba0ddecca0b80bbb8b7572bf6580d/) | ⚠️ Unaudited |
| ExternalPositionManager | governance | polygon | [`0x9513b3...fd7f47`](./contracts/polygon-137/0x9513b3a49fc9ae8b76942c94fb6f660c41fd7f47/) | ⚠️ Unaudited |
| FeeManager | governance | polygon | [`0xddd743...461deb`](./contracts/polygon-137/0xddd7432671f5adc1c82c7c875624c1b0bc461deb/) | ⚠️ Unaudited |
| FundDataProviderRouter | adapter | polygon | 4 deployments: polygon [`0x2e6b6f...64d0bb`](./contracts/polygon-137/0x2e6b6f3c07f115df56fe268abd415de5f764d0bb/); polygon `0x4e518b...d9636f`; polygon `0xf03dc1...dace6b`; polygon `0xfb41e1...7f0e84` | ⚠️ Unaudited |
| FundDeployer | unknown | polygon | [`0x188d35...12284f`](./contracts/polygon-137/0x188d356caf78bc6694aee5969fde99a9d612284f/) | ⚠️ Unaudited |
| FundValueCalculator | unknown | polygon | [`0xcdf038...4b7a33`](./contracts/polygon-137/0xcdf038dd3b66506d2e5378aee185b2f0084b7a33/) | ⚠️ Unaudited |
| FundValueCalculatorRouter | adapter | polygon | [`0xd70389...d93f08`](./contracts/polygon-137/0xd70389a7d6171e1dba6c3df4db7331811fd93f08/) | ⚠️ Unaudited |
| FundValueCalculatorUsdWrapper | unknown | polygon | [`0xdaa8bb...e37323`](./contracts/polygon-137/0xdaa8bb19db0f85c57cf062cc8bf912d647e37323/) | ⚠️ Unaudited |
| GasRelayPaymasterFactory | registry | polygon | [`0xed0578...cdc4ca`](./contracts/polygon-137/0xed05786ef7b5e5bf909512f0ad46eb8f22cdc4ca/) | ⚠️ Unaudited |
| GasRelayPaymasterLib | unknown | polygon | 4 deployments: polygon [`0x190e70...d63715`](./contracts/polygon-137/0x190e7045caeb09459bba12bced1d133e10d63715/); polygon `0x44654b...5f5592`; polygon `0x9feea9...3dc7a0`; polygon `0xbedae7...d01676` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperFactory | registry | polygon | [`0x7a68d5...8c17d4`](./contracts/polygon-137/0x7a68d541af898c14fbd5ecbda3b402b18d8c17d4/) | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | polygon | 6 deployments: polygon [`0x1ad5e5...4b62e3`](./contracts/polygon-137/0x1ad5e5acc060fafde8a0e37aa382c250d64b62e3/); polygon `0x334ed8...394b7d`; polygon `0x585527...f8cefa`; polygon `0x993212...b6d7c9`; polygon `0xcee23e...3a53f3`; polygon `0xe6ae7b...69586f` | ⚠️ Unaudited |
| GlobalConfigLib | governance | polygon | 3 deployments: polygon [`0x905448...9be837`](./contracts/polygon-137/0x905448cb27f51d9a663fb18d57d76c49d19be837/); polygon `0xcbbd50...c67a64`; polygon `0xce699a...948dd1` | ⚠️ Unaudited |
| IdleAdapter | adapter | polygon | [`0x5d2135...4b8434`](./contracts/polygon-137/0x5d2135fa26a6202f2d39fdba61bcf53bb04b8434/) | ⚠️ Unaudited |
| IdlePriceFeed | operational_periphery | polygon | [`0x99a8fe...740a58`](./contracts/polygon-137/0x99a8fea8d89efb5dcbd201688d6d62ae78740a58/) | ⚠️ Unaudited |
| IntegrationManager | governance | polygon | [`0x92fcde...a0884b`](./contracts/polygon-137/0x92fcde09790671cf085864182b9670c77da0884b/) | ⚠️ Unaudited |
| ManagementFee | unknown | polygon | [`0x97f13b...dbd843`](./contracts/polygon-137/0x97f13b3040a565be791d331b0edd4b1b58dbd843/) | ⚠️ Unaudited |
| ManualValueOracleFactory | operational_periphery | polygon | [`0x735615...c4354f`](./contracts/polygon-137/0x735615beb04bfd3665f06541ea00af1860c4354f/) | ⚠️ Unaudited |
| MinAssetBalancesPostRedemptionPolicy | unknown | polygon | [`0x9d940b...f8251e`](./contracts/polygon-137/0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e/) | ⚠️ Unaudited |
| MinMaxInvestmentPolicy | operational_periphery | polygon | [`0x8ac04e...dbbc9a`](./contracts/polygon-137/0x8ac04e34d9c1d0bd5a440157538cc6fbb0dbbc9a/) | ⚠️ Unaudited |
| MinSharesSupplyFee | unknown | polygon | [`0xeb45b9...df19a3`](./contracts/polygon-137/0xeb45b91d582ae383e750a1626a97f854a9df19a3/) | ⚠️ Unaudited |
| NoDepegOnRedeemSharesForSpecificAssetsPolicy | unknown | polygon | [`0x006911...cf8b04`](./contracts/polygon-137/0x0069111def5258f692d88bde2116c9c211cf8b04/) | ⚠️ Unaudited |
| OneInchV5Adapter | adapter | polygon | [`0x2f4a9c...23b457`](./contracts/polygon-137/0x2f4a9c0256e4f8e8d65733da1aeb4871f923b457/) | ⚠️ Unaudited |
| OnlyRemoveDustExternalPositionPolicy | unknown | polygon | [`0xc0f495...abab99`](./contracts/polygon-137/0xc0f49507c125a000e02ab58c22be9764e2abab99/) | ⚠️ Unaudited |
| OnlyUntrackDustOrPricelessAssetsPolicy | operational_periphery | polygon | [`0x9f8563...b5c9d2`](./contracts/polygon-137/0x9f856372f7bd844dac0254c7859b117259b5c9d2/) | ⚠️ Unaudited |
| ParaSwapV5Adapter | adapter | polygon | 6 deployments: polygon [`0x2a5106...95d616`](./contracts/polygon-137/0x2a5106122289d1891abb9b5e69c686680595d616/); polygon `0x5ef0dc...5e14d6`; polygon `0xa6402b...6530e7`; polygon `0xb665e9...4ab0df`; polygon `0xb98c40...514293`; polygon `0xe9293a...5879d4` | ⚠️ Unaudited |
| ParaSwapV6Adapter | adapter | polygon | 2 deployments: polygon [`0x4c8026...72d53c`](./contracts/polygon-137/0x4c8026a88f1da2d299c539b8c070c1c44372d53c/); polygon `0xe01f05...83638e` | ⚠️ Unaudited |
| PeggedDerivativesPriceFeed | operational_periphery | polygon | [`0xbfa102...fcc5b1`](./contracts/polygon-137/0xbfa1027ef1da99c17358cb4719a2297d67fcc5b1/) | ⚠️ Unaudited |
| PeggedRateDeviationAggregatorFactory | registry | polygon | [`0x124fda...a22f4a`](./contracts/polygon-137/0x124fda4b626cda9481948a86a5f8f510d8a22f4a/) | ⚠️ Unaudited |
| PerformanceFee | unknown | polygon | [`0xbc63af...479bdf`](./contracts/polygon-137/0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf/) | ⚠️ Unaudited |
| PolicyManager | governance | polygon | [`0x5a8ee0...f5546f`](./contracts/polygon-137/0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f/) | ⚠️ Unaudited |
| PoolTogetherV4Adapter | adapter | polygon | [`0xe1ade6...3dc63b`](./contracts/polygon-137/0xe1ade612e8a568a4a060a60a22f890171d3dc63b/) | ⚠️ Unaudited |
| PoolTogetherV4PriceFeed | operational_periphery | polygon | [`0xf35a9f...682f69`](./contracts/polygon-137/0xf35a9f4d9ceb494e3671bb79f7532607c1682f69/) | ⚠️ Unaudited |
| ProtocolFeeReserveLib | unknown | polygon | 3 deployments: polygon [`0x309d2f...95fe46`](./contracts/polygon-137/0x309d2f616e73d35aa46719f08cd3e758a395fe46/); polygon `0x420811...aaad5b`; polygon `0xf0bfee...d68b2d` | ⚠️ Unaudited |
| ProtocolFeeTracker | unknown | polygon | [`0xb8e6ed...6e23d5`](./contracts/polygon-137/0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5/) | ⚠️ Unaudited |
| SharePriceThrottledAssetManagerFactory | operational_periphery | polygon | 2 deployments: polygon [`0x42637a...fea3de`](./contracts/polygon-137/0x42637a6fe8dd32448be441a10782b4e29bfea3de/); polygon `0x63b3fb...de8c5a` | ⚠️ Unaudited |
| SharePriceThrottledAssetManagerLib | operational_periphery | polygon | [`0x65d920...9a349c`](./contracts/polygon-137/0x65d9202b5494450310c43b6b47942305859a349c/) | ⚠️ Unaudited |
| SharesSplitterFactory | operational_periphery | polygon | [`0x1a0e33...9b8944`](./contracts/polygon-137/0x1a0e3326795a77903e2a11790bd702ebb29b8944/) | ⚠️ Unaudited |
| SingleAssetDepositQueueLib | unknown | polygon | [`0xd33e75...71233a`](./contracts/polygon-137/0xd33e75e1ae3185aa72d4365e1022ef23cd71233a/) | ⚠️ Unaudited |
| SingleAssetRedemptionQueueFactory | registry | polygon | [`0x4b6b34...e026b9`](./contracts/polygon-137/0x4b6b342ba8bb29e2d1b542532e6b7be1cae026b9/) | ⚠️ Unaudited |
| SingleAssetRedemptionQueueLib | unknown | polygon | [`0xe54065...cf0b87`](./contracts/polygon-137/0xe54065f5b303c2843c769fb232b95bb893cf0b87/) | ⚠️ Unaudited |
| TransferAssetsAdapter | adapter | polygon | [`0x52e83a...a92a17`](./contracts/polygon-137/0x52e83a4c9a123500e8324b9f489a681ffda92a17/) | ⚠️ Unaudited |
| UintListRegistry | registry | polygon | [`0x6ddd87...166519`](./contracts/polygon-137/0x6ddd871c1607348ebb5be250f882255390166519/) | ⚠️ Unaudited |
| UnpermissionedActionsWrapper | unknown | polygon | [`0x1648cc...d2b17b`](./contracts/polygon-137/0x1648cc031a1b6d60b5585ae21dae507a69d2b17b/) | ⚠️ Unaudited |
| ValueInterpreter | unknown | polygon | [`0x66de7e...8a0f45`](./contracts/polygon-137/0x66de7e286aae66f7f3daf693c22d16eea48a0f45/) | ⚠️ Unaudited |
| VaultLib | core_logic | polygon | 3 deployments: polygon [`0xd1bd30...888d65`](./contracts/polygon-137/0xd1bd301397bf9623a5696f4fdeced13a47888d65/); polygon `0xd93e37...09390b`; polygon `0xddb8eb...2e1612` | ⚠️ Unaudited |
| VaultProxy | core_logic | polygon | [`0x2eda17...8ccd6d`](./contracts/polygon-137/0x2eda17eb596858566be933b26fae6fa4ee8ccd6d/) | ⚠️ Unaudited |
| ZeroExV4Adapter | adapter | polygon | 2 deployments: polygon [`0x34558a...4fb687`](./contracts/polygon-137/0x34558aa452cac926d6a78cc148ee1220e94fb687/); polygon `0xce663e...f1448a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0xc088fe...d91224` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x096227...c72874`](./contracts/arbitrum-42161/0x096227660b27e612f31838645cc3ad213cc72874/) | CredbullFixedYieldVault | core_logic | $1,892.86 | Verified native implementation with $1,892.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5ae15b...a248f8`](./contracts/polygon-137/0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8/) | AddressListRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc192fd...cdd482`](./contracts/polygon-137/0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482/) | AllowedAdapterIncomingAssetsPolicy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30ed4e...0bb710`](./contracts/polygon-137/0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710/) | AllowedAdaptersPerManagerPolicy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x421878...d27a4a`](./contracts/polygon-137/0x4218783ae10bd1841e6664cf048ac295d8d27a4a/) | AllowedAdaptersPolicy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x71b825...86b3b6`](./contracts/polygon-137/0x71b8254f608a73162445655ff2f07ccb1586b3b6/) | AllowedAssetsForRedemptionPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe18535...a459ff`](./contracts/polygon-137/0xe1853502e2ea2b7c14c5e89169c63065f5a459ff/) | AllowedDepositRecipientsPolicy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb6367c...ede28c`](./contracts/polygon-137/0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c/) | AllowedExternalPositionTypesPerManagerPolicy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a739d...76d8e7`](./contracts/polygon-137/0x5a739da3099fd4fc954bd764099fc000da76d8e7/) | AllowedExternalPositionTypesPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3b6913...0194bd`](./contracts/polygon-137/0x3b6913a8ed4595919a6b4a9022208cede20194bd/) | AllowedSharesTransferRecipientsPolicy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e4646...7a7d05`](./contracts/polygon-137/0x2e46462de3bf02d382c039bb021021f2277a7d05/) | ArbitraryLoanPositionParser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe9d4d8...d27d86`](./contracts/polygon-137/0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86/) | AssetValueCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x577349...381a08`](./contracts/arbitrum-42161/0x577349c99830d3c078034087a532581ef5381a08/) | CBL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf5fc0e...1eb441`](./contracts/polygon-137/0xf5fc0e36c85552e44354132d188c33d9361eb441/) | ComptrollerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x133236...706bf2`](./contracts/polygon-137/0x1332367c181f1157f751b160187dcaa219706bf2/) | CumulativeSlippageTolerancePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e2527...032733`](./contracts/polygon-137/0x2e25271297537b8124b8f883a92ffd95c4032733/) | Dispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01460b...055f16`](./contracts/polygon-137/0x01460ba35cb6f847d65c5eee124e7e9e10055f16/) | EntranceRateBurnFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x88c9a1...fb78b8`](./contracts/polygon-137/0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8/) | EntranceRateDirectFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0bbb96...d37879`](./contracts/polygon-137/0x0bbb9635d12a9c022b647f379224d88874d37879/) | ExitRateBurnFee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc5c7f7...99b848`](./contracts/polygon-137/0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848/) | ExitRateDirectFee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xddd743...461deb`](./contracts/polygon-137/0xddd7432671f5adc1c82c7c875624c1b0bc461deb/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e6b6f...64d0bb`](./contracts/polygon-137/0x2e6b6f3c07f115df56fe268abd415de5f764d0bb/) | FundDataProviderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x188d35...12284f`](./contracts/polygon-137/0x188d356caf78bc6694aee5969fde99a9d612284f/) | FundDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcdf038...4b7a33`](./contracts/polygon-137/0xcdf038dd3b66506d2e5378aee185b2f0084b7a33/) | FundValueCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd70389...d93f08`](./contracts/polygon-137/0xd70389a7d6171e1dba6c3df4db7331811fd93f08/) | FundValueCalculatorRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xdaa8bb...e37323`](./contracts/polygon-137/0xdaa8bb19db0f85c57cf062cc8bf912d647e37323/) | FundValueCalculatorUsdWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x97f13b...dbd843`](./contracts/polygon-137/0x97f13b3040a565be791d331b0edd4b1b58dbd843/) | ManagementFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9d940b...f8251e`](./contracts/polygon-137/0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e/) | MinAssetBalancesPostRedemptionPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xeb45b9...df19a3`](./contracts/polygon-137/0xeb45b91d582ae383e750a1626a97f854a9df19a3/) | MinSharesSupplyFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x006911...cf8b04`](./contracts/polygon-137/0x0069111def5258f692d88bde2116c9c211cf8b04/) | NoDepegOnRedeemSharesForSpecificAssetsPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc0f495...abab99`](./contracts/polygon-137/0xc0f49507c125a000e02ab58c22be9764e2abab99/) | OnlyRemoveDustExternalPositionPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f8563...b5c9d2`](./contracts/polygon-137/0x9f856372f7bd844dac0254c7859b117259b5c9d2/) | OnlyUntrackDustOrPricelessAssetsPolicy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbfa102...fcc5b1`](./contracts/polygon-137/0xbfa1027ef1da99c17358cb4719a2297d67fcc5b1/) | PeggedDerivativesPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbc63af...479bdf`](./contracts/polygon-137/0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf/) | PerformanceFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a8ee0...f5546f`](./contracts/polygon-137/0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f/) | PolicyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x309d2f...95fe46`](./contracts/polygon-137/0x309d2f616e73d35aa46719f08cd3e758a395fe46/) | ProtocolFeeReserveLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb8e6ed...6e23d5`](./contracts/polygon-137/0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5/) | ProtocolFeeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x42637a...fea3de`](./contracts/polygon-137/0x42637a6fe8dd32448be441a10782b4e29bfea3de/) | SharePriceThrottledAssetManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65d920...9a349c`](./contracts/polygon-137/0x65d9202b5494450310c43b6b47942305859a349c/) | SharePriceThrottledAssetManagerLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd33e75...71233a`](./contracts/polygon-137/0xd33e75e1ae3185aa72d4365e1022ef23cd71233a/) | SingleAssetDepositQueueLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4b6b34...e026b9`](./contracts/polygon-137/0x4b6b342ba8bb29e2d1b542532e6b7be1cae026b9/) | SingleAssetRedemptionQueueFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe54065...cf0b87`](./contracts/polygon-137/0xe54065f5b303c2843c769fb232b95bb893cf0b87/) | SingleAssetRedemptionQueueLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x52e83a...a92a17`](./contracts/polygon-137/0x52e83a4c9a123500e8324b9f489a681ffda92a17/) | TransferAssetsAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ddd87...166519`](./contracts/polygon-137/0x6ddd871c1607348ebb5be250f882255390166519/) | UintListRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1648cc...d2b17b`](./contracts/polygon-137/0x1648cc031a1b6d60b5585ae21dae507a69d2b17b/) | UnpermissionedActionsWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x66de7e...8a0f45`](./contracts/polygon-137/0x66de7e286aae66f7f3daf693c22d16eea48a0f45/) | ValueInterpreter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd1bd30...888d65`](./contracts/polygon-137/0xd1bd301397bf9623a5696f4fdeced13a47888d65/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2eda17...8ccd6d`](./contracts/polygon-137/0x2eda17eb596858566be933b26fae6fa4ee8ccd6d/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x34558a...4fb687`](./contracts/polygon-137/0x34558aa452cac926d6a78cc148ee1220e94fb687/) | ZeroExV4Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 27 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
