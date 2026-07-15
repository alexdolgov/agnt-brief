# Agentic Audit Brief: ZyFAI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ZyFAI (`zyfai`)
- Website: [https://zyf.ai](https://zyf.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, base-sepolia, ethereum, plasma, sepolia, sonic
- Contract surface: 154 unique implementations (443 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,315,888.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for ZyFAI in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 148 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 120
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/129
- Verified + Unaudited implementations: 129
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 154
- Raw deployments: 443
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (129)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1c1efa...fcd548`; ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2` | ⚠️ Unaudited |
| AddressProvider | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2b0434...15ee72`; ethereum `0x409fb5...d075c4`; ethereum `0xdabc80...8e8c93`; ethereum `0xf74748...081828` | ⚠️ Unaudited |
| ALMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92afd6...1d8709` | ⚠️ Unaudited |
| ArbitrumReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x212871...ed8474`; arbitrum `0x567214...305cbc` | ⚠️ Unaudited |
| ArcadeLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31166...c8c09a` | ⚠️ Unaudited |
| ArcadeLoanTransferrer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71d5e...4d2aee` | ⚠️ Unaudited |
| AssetListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ff744...5dec4e`; ethereum `0xadf7ad...e9f02e`; ethereum `0xea2a6e...5883c2` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x0b925e...9e9371`; ethereum `0x4d5f47...c514e8`; ethereum `0x5c647c...efd1dd`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x578ee1...cd11c6` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4e65fe...f5c0ab` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x5d72a9...30a948` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x724dc8...b8c637` | ⚠️ Unaudited |
| BNPLOptionBidValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327fe5...38550e` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f...8d80c3` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0be923...50510f`; ethereum `0x50cb5e...4d634e`; ethereum `0x58ebb8...63b514`; ethereum `0xaa3907...18989c` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f4eaf...ef4ed0`; ethereum `0x4b5dee...0c8118` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1f7190...676856`; ethereum `0x285617...8d45b0`; ethereum `0x5c58d4...79a36e`; ethereum `0x95dedd...b116e7`; ethereum `0x995e39...62b214`; ethereum `0xe16515...af7e3e`; ethereum `0xe2c1f5...09f030` | ⚠️ Unaudited |
| CometExtAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x055e53...091e1f`; ethereum `0x16f353...9cf3b3`; ethereum `0x4f4d5a...d9bdd5`; ethereum `0x53cead...936587`; ethereum `0xa70a02...3aaedc`; ethereum `0xd4ec91...3f68ed`; ethereum `0xe3458a...a14dd1` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1c1853...db1ae7`; ethereum `0x271a20...8d4680`; ethereum `0x4a900f...6df6f3`; ethereum `0x4cfce7...679ae4`; ethereum `0x698a94...0fcef1`; ethereum `0x6c987d...978e2a`; ethereum `0x89128f...16c865`; ethereum `0x8d38a3...dbc991`; ethereum `0xaeb318...409a07` | ⚠️ Unaudited |
| CometFactoryWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1fa408...e8c958`; ethereum `0x435260...6a1314`; ethereum `0x97d81f...43ddcb`; ethereum `0xba8f83...c33867`; ethereum `0xc4aafc...552ad0`; ethereum `0xdfb81f...7d1585` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec63b...2e8779` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0e76...885a40` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3afdc9...ab0840` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d0bb1...8fafe3` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d409e...897b56` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x652b18...50cd0a`; ethereum `0x7ca80e...8820bf` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa17581...93ae94` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc3d688...84cdc3` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe85dc5...6a9293` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb125e6...15eb2f` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c4ec7...ff58bf` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316f97...d336e3`; ethereum `0xcfc1fa...80df4f` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x72e9b6...b7fa48`; ethereum `0xd72ac1...4ce0ab` | ⚠️ Unaudited |
| DebtController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xfbc94e...1246d1`; ethereum `0xfe7b8f...ee60c2` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf7b512...d489af` | ⚠️ Unaudited |
| DSRAuthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x15acee...447898`; base `0x2dd2a2...3e8fae`; base `0x779053...d6b776`; arbitrum `0xe206ae...7c32f3`; arbitrum `0xec0c14...cc14d0`; arbitrum `0xed5668...606709` | ⚠️ Unaudited |
| DSROracleReceiverArbitrum | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0d2bfc...252b17`; arbitrum `0x3a60e6...495fe1`; arbitrum `0xca6154...ecb91b` | ⚠️ Unaudited |
| DSROracleReceiverOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x33a3ab...f00b64`; base `0xadeaf0...6e0676`; base `0xee2816...033a36` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d850f...54d165` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8e0edf...d5afc0` | ⚠️ Unaudited |
| ERC20WasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fbf4f...d93eed` | ⚠️ Unaudited |
| ERC721CreatorImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0cc347...142467` | ⚠️ Unaudited |
| ETHWasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046299...1ed355` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3b4802...f9a4af`; plasma `0xe818ad...14dec4`; arbitrum `0xe47838...c62de0` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd8b27c...4984c2` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 2 deployments: sonic `0x196f3c...0349d9`; sonic `0x3d9e54...cd13bc` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x972e33...e8dd2c`; ethereum `0x9f2781...f3e1ac` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65d946...88f7a1` | ⚠️ Unaudited |
| EzETHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4360...d6ec1b` | ⚠️ Unaudited |
| Flashloan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001a05...6e6f3d` | ⚠️ Unaudited |
| ForeignController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x5f0325...da0440`; base `0xb94378...5d8b9b`; base `0xbe6732...f8163c`; base `0xe09e6f...018591`; arbitrum `0x77e114...61ba6c`; arbitrum `0x98f567...f79ee1` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x241180...06b29c`; ethereum `0x5c20b5...cedd18`; ethereum `0x9fb7b4...251b33`; base `0xf42f57...fd9169`; plasma `0x1dd4b1...2ed27b`; arbitrum `0x1a996c...db6096` | ⚠️ Unaudited |
| fTokenNativeUnderlying | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90551c...faa260` | ⚠️ Unaudited |
| LendingAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc39961...a30e79` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66...a81fa3` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8...4b00c7` | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7760...eea518` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2371e1...740618`; ethereum `0x4881ef...ce0658`; ethereum `0x4f460b...eea8b6`; ethereum `0xbeef01...2a64cb`; ethereum `0xbeef05...4b8cd4`; ethereum `0xbeefff...86f5bc`; base `0xb7890c...6ab863` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0c6aec...398dc1`; ethereum `0x1e2aaa...9f5741`; ethereum `0x2ed106...98aefb`; ethereum `0x31a568...a024f9`; ethereum `0x6c2679...f0bc8e`; ethereum `0x7204b7...8d6330`; ethereum `0xa8875a...dd6c45`; ethereum `0xb0f05e...504ba9`; ethereum `0xc582f0...7b754e`; ethereum `0xc88eff...8e982a`; arbitrum `0x7c5741...a8b3ed` | ⚠️ Unaudited |
| METHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5bd3e6...f7de46`; ethereum `0x66228d...2b7627`; ethereum `0x7e8631...0050dc` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x023ee7...0a5f1b`; ethereum `0x2f7439...db5b89`; ethereum `0x7783a5...da5f5e`; ethereum `0xa742a8...846cc4`; ethereum `0xc3a73a...434daf`; ethereum `0xd187f9...23f434`; ethereum `0xd98be0...a57d07` | ⚠️ Unaudited |
| NFTfiLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f4f72...32d1b2` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x212871...ed8474` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc902f6...566af2` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcac101...934d33` | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc4a9d8...372fa3` | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x004f76...c8a212`; sonic `0x3f5ea5...182418`; sonic `0x84ecc6...ed3b60` | ⚠️ Unaudited |
| PendlePrincipalToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x0fb682...d54fa3`; sonic `0x930441...7e6643`; sonic `0x973184...12a8c8` | ⚠️ Unaudited |
| PendleSiloV2SY_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x068def...188ea3` | ⚠️ Unaudited |
| PendleYieldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x18d2d5...9e6027`; sonic `0x3ab072...078920` | ⚠️ Unaudited |
| PerpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2eb99d...55910b`; ethereum `0x3461ae...56eee2`; ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xff9f87...4d39dc` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0b01a...010e7d` | ⚠️ Unaudited |
| PoolAskVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f3dc...cce0ac` | ⚠️ Unaudited |
| PoolBidVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x668736...933cca` | ⚠️ Unaudited |
| PriceFeedWith4626Support | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x31b844...23bf3f`; ethereum `0x403f20...5777d1`; ethereum `0x4f90c3...9fb2ab`; ethereum `0xe3a409...8a2496` | ⚠️ Unaudited |
| PSM3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b05f8...d27266` | ⚠️ Unaudited |
| RateBasedScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1ad4ce...330f26`; ethereum `0xdd1868...1132d9`; ethereum `0xe802a0...a0c873` | ⚠️ Unaudited |
| RateLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19d088...ad6838` | ⚠️ Unaudited |
| RegistryProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444868...2c4d14` | ⚠️ Unaudited |
| ReverseMultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1933f7...14027b`; ethereum `0x39b44c...f9278e`; ethereum `0x57a71a...7400d1`; ethereum `0x5ecf85...aea818`; ethereum `0x99a099...196490`; ethereum `0xc49399...b3e493`; ethereum `0xc7986b...8d3c24` | ⚠️ Unaudited |
| RsETHScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c30b5...7ed178`; ethereum `0xfa454d...b89f45` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x0a4f4f...af887d`; ethereum `0x23a982...bb5549`; ethereum `0x2c7118...5f2921`; ethereum `0x2d0914...05722d`; ethereum `0x351a13...ddec91`; ethereum `0x540487...37fb93`; ethereum `0x66f5af...44d04d`; ethereum `0x7b03a0...06bc37`; ethereum `0x87641f...f74188`; ethereum `0x970ffd...1d5dc3`; ethereum `0x9f2f60...e97c1f`; ethereum `0x9f57e4...b00230`; ethereum `0xaa9527...8d3484`; ethereum `0xcb3643...9d4ba3` | ⚠️ Unaudited |
| Signing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bb84...6e6094` | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf6bc16...47a581` | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf6f870...f89885` | ⚠️ Unaudited |
| SiloVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x592d1e...47b2a7`; sonic `0xcca902...9745ed` | ⚠️ Unaudited |
| SmartAccountWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd58007...9bec5d` | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d54a0...34b3d5` | ⚠️ Unaudited |
| SparkVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x15f4a4...741211`; ethereum `0xc2c058...547f12`; ethereum `0xe742c8...0fa929` | ⚠️ Unaudited |
| SparkVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x28b3a8...96a43d`; ethereum `0xe2e7a1...e3c372`; ethereum `0xfe6eb3...209b8f` | ⚠️ Unaudited |
| SSRAuthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x65d946...88f7a1`; arbitrum `0xee2816...033a36` | ⚠️ Unaudited |
| Streamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86b6b...9ea752` | ⚠️ Unaudited |
| TellerLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xca954b...0982e1`; ethereum `0xee83e5...e8624a`; ethereum `0xeebbc0...a24dc9` | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x19fdac...49e250`; ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f`; ethereum `0xe0a709...e14fe0` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd9ba99...82ec4f` | ⚠️ Unaudited |
| UsdcVaultL2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3128a0...28e858`; base `0x6acc02...9c7723` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4cb851...1fbe90`; base `0xb979b7...870bb4` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x62da45...fa7df3`; base `0xe13942...0fda0a` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x940098...464609`; arbitrum `0xdc8df2...a092d6` | ⚠️ Unaudited |
| VaultBoostManager | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x028edb...9c4d3c`; ethereum `0x0424c6...7728b3`; ethereum `0xb33c89...1e7524`; ethereum `0xcc174f...e36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x382a45...cbfbd0` | ⚠️ Unaudited |
| VaultDummyImplementation | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0d370...98be78` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x23f5e9...8e1e11`; ethereum `0x2bd3a4...df0e3d`; ethereum `0xa877d5...1a275f`; ethereum `0xbeef00...83ec58`; ethereum `0xbeef00...4108e3`; ethereum `0xbeeff0...fedeb7`; ethereum `0xbeeff2...fca757`; ethereum `0xcdbe4a...7d034d`; ethereum `0xd1e924...a94a7e`; ethereum `0xd5cce2...aeaa13`; ethereum `0xebbae8...24ddcd`; ethereum `0xfa17f7...7df853` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbeef00...ab2bf9` | ⚠️ Unaudited |
| WasabiBNPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead3dd...2af12d` | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf28d...8aeb89` | ⚠️ Unaudited |
| WasabiConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e31ef...c57209`; ethereum `0xf29a66...fff856` | ⚠️ Unaudited |
| WasabiFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030107...c10c3a` | ⚠️ Unaudited |
| WasabiFeeManager2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08c2d...625e34` | ⚠️ Unaudited |
| WasabiLongPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 20 deployments: ethereum `0x000728...fbf1cf`; ethereum `0x023afc...6a6078`; ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x3a2774...e4fd97`; ethereum `0x45a933...aac7cd`; ethereum `0x7041ce...7f3e95`; ethereum `0x7f5451...e6cbc8`; ethereum `0x8d9040...b41b59`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xa5a645...ac7b96`; ethereum `0xab1644...5df9cb`; ethereum `0xc24f58...656b51`; ethereum `0xcda7ce...c8c0ca`; ethereum `0xcf41e5...b075dd`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d` | ⚠️ Unaudited |
| WasabiOption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc68f2...2e18a0` | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5cd3...bbd8f3` | ⚠️ Unaudited |
| WasabiPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2b50...961e40` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x08aad5...72ae33`; ethereum `0x0b38cb...5f437e`; ethereum `0x1b362e...e046b7`; ethereum `0x33d2ac...77ee9a`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xee5c45...aac03b` | ⚠️ Unaudited |
| WasabiShortPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x0b9f9e...9ada57`; ethereum `0x1536f7...a3662b`; ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x5bb9e0...088c60`; ethereum `0x62d254...9bf842`; ethereum `0x76e8f3...279499`; ethereum `0x774835...bf8b32`; ethereum `0x8826d2...3cbc96`; ethereum `0x8ea384...b13277`; ethereum `0x923612...9312f2`; ethereum `0x96ce21...137f78`; ethereum `0xbc07db...69cbbe`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xcc2a29...e26bee`; ethereum `0xd5a09a...33ae95`; ethereum `0xea9a83...ca647c`; ethereum `0xf22b8d...64aafa`; ethereum `0xfb71f0...490c4a`; ethereum `0xfc55a2...28006b` | ⚠️ Unaudited |
| WasabiShortPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0fdc7b...30d8ff`; ethereum `0x61d0df...5ebe12` | ⚠️ Unaudited |
| WasabiStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2885...99dcd3` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0db381...747e12`; ethereum `0x3f631b...5caa8d`; ethereum `0x65aa8f...59991e`; ethereum `0x7d8c76...67ac53`; ethereum `0x7f1cec...d1681a`; ethereum `0x9720f7...a84fa4`; ethereum `0xa6354e...55dadf`; ethereum `0xa9d119...9771d7`; ethereum `0xb6463f...39f113`; ethereum `0xc883de...141c1a`; ethereum `0xcd1953...5f7d53`; ethereum `0xd46c77...563a1d`; ethereum `0xf7855f...ae8153` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 54 | ethereum | n/a | 54 deployments: ethereum `0x1831f6...a61ae2`; ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7dd8f2...248319`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x551618...5b23ca`; ethereum `0xc7d3fa...23652b` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 8 deployments: ethereum `0x10432b...7bfe71`; ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4` | ⚠️ Unaudited |
| WBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x443ea0...c3c2e9`; ethereum `0x4e64e5...52b499`; ethereum `0x72874c...ba5e45` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f67e4...f48e79`; ethereum `0x7de363...c14228` | ⚠️ Unaudited |
| X2Y2Lending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4cd094...bbad5f`; ethereum `0xcf7da6...6f6ee1` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x310b7e...efafaa`; ethereum `0xac3772...ca7571` | ⚠️ Unaudited |
| YoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda92d2...2dc169` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x3a43ae...0e9de7`; ethereum `0x50c749...c871e9` | ⚠️ Unaudited |
| ZhartaLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0466b9...6fa09b`; ethereum `0x0d08ea...b2e4d5`; ethereum `0x2cfe1c...dea90b`; ethereum `0x6209a1...009788`; ethereum `0xb06e99...9cf383`; ethereum `0xb2a557...88afaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082481...1b595f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4b8c...c83b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e74e...8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe435...566efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0bf0...c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2664a...e7734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d7413...f9c229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x205216...9d576d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2627d5...a73e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c258b...1ffa06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61baf0...aa4ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76b3d3...d35e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3091d...27e00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa72e01...e96f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae20f9...8498c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1e495...9acd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe28680...c411e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe81a5b...d6219d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1202d...48905a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x07a1dc...93be09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x8004a8...94bd9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x8004b6...388713` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x752ac7...41ee7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8004a8...94bd9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8004b6...388713` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Report - 20.12.2025](https://zyf.ai/sherlock-audit-november-2025.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [audited by Sherlock](https://zyf.ai/zyfai_erc7540_sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Report - 03.03.2025](https://zyf.ai/zyfai_audit_cecuro.pdf) | Cecuro | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report - 06.07.2025](https://www.zyf.ai/rzfi-audit-report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Supremacy IRMLinearKinky.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18732] Report - 20.12.2025 — no match: Extracted two Solidity smart contracts from the executor-module repository scope. The backend TypeScript files are not smart contracts and are excluded.
- [18733] audited by Sherlock — no match: Scope section explicitly lists three files: SemiAsyncRedeemVault.sol, SmartAccountProxy.sol, SmartAccountWrapper.sol. Audit date is March 2-March 4, 2026, so end date is March 4, 2026.
- [18734] Report - 03.03.2025 — no match: Audit scope explicitly lists 4 files. Audit date found on cover page: 'Audit Date:March 3, 2026'.
- [18739] Report - 06.07.2025 — no match: Scope section explicitly lists RewardToken.sol and ERC20WrapperLocked.sol. No date found in the provided text.
- [18761] Supremacy IRMLinearKinky.pdf — no match: Only one contract in scope: IRMLinearKinky. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Report - 20.12.2025 | GuardedExecModuleUpgradeable | unmatched — not counted | — | listed in scope | no |
| Report - 20.12.2025 | TargetRegistry | unmatched — not counted | — | listed in scope | no |
| audited by Sherlock | SemiAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| audited by Sherlock | SmartAccountProxy | unmatched — not counted | — | listed in scope | no |
| audited by Sherlock | SmartAccountWrapper | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | ISemiAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | SemiAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | SmartAccountProxy | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | SmartAccountWrapper | unmatched — not counted | — | listed in scope | no |
| Report - 06.07.2025 | RewardToken | unmatched — not counted | — | listed in scope | no |
| Report - 06.07.2025 | ERC20WrapperLocked | unmatched — not counted | — | listed in scope | no |
| Supremacy IRMLinearKinky.pdf | IRMLinearKinky | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 116 |
| upstream | 12 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [18732] Report - 20.12.2025
- [18733] audited by Sherlock
- [18734] Report - 03.03.2025
- [18739] Report - 06.07.2025
- [18761] Supremacy IRMLinearKinky.pdf

Fork inheritance lineage and inherited audits are included when available.
