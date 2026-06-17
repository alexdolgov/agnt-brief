# Agentic Audit Brief: Turtle Club

⚠️ Lifecycle status: DECLINING - TVL dropped 80.8% over 90 days

## Project Overview

- Project: Turtle Club (`turtle-club`)
- Website: [https://app.turtle.xyz/](https://app.turtle.xyz/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:36.305Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, bsc, ethereum, linea
- Contract surface: 183 unique implementations (366 raw deployments)
- DeFi Llama TVL: $857,946.04
- On-chain TVL (included contracts): $41,930,957.46
- TVL by chain: Ethereum $39,945,518.74 | Avalanche $1,966,929.71 | Linea $18,509.00

## Project Description

Turtle Club is a liquidity-distribution and onchain capital-allocation incentives protocol. Its public product positioning is focused on routing and incentivizing liquidity across supported EVM deployments and integrations. Vaults, restaking, Morpho, Aave, Compound, liquid-staking assets, and similar yield sources should be described only as integrations or underlying exposures where independently verified, not as Turtle Club's own core protocol surface.

### Architecture

The Contracts family provides the governance and staking token layer that underpins the Turtle Club vaults. Vaults in the Turtle Club family use shared infrastructure like proxy patterns (OptinProxy, TransparentUpgradeableProxy) and access control (SafeProxy, GnosisSafeProxy) to manage deposits and rewards, while tokens from the Contracts family are used for staking and governance across the ecosystem.

## Contract Surface Quality

- Indexed contracts: 1230; live-surface contracts included: 366 (366 live, 0 unknown).
- Excluded by liveness: 644 inactive, 220 singleton, 0 uninitialized.
- Deployment units: 19/127 live.
- Detected codebases: curve-stableswap, uniswap-v2
- Unverified dependencies: 25/168.

## Audit Coverage Summary

- Verified implementations audited: 0/155 (0.0%)
- Verified + Unaudited implementations: 155
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 183
- Raw deployments: 366
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $41,930,957.46
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $41,930,957.46 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (155)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RswETH | token | ethereum | unit-22207 | [`0xfae103...afa6c0`](./contracts/ethereum-1/0xfae103dc9cf190ed75350761e95403b7b8afa6c0/) | ⚠️ Unaudited |
| EzRVault | core_logic | ethereum | unit-22164 | [`0x77b118...368f60`](./contracts/ethereum-1/0x77b1183e730275f6a8024ce53d54bcc12b368f60/) | ⚠️ Unaudited |
| LevvaToken | token | ethereum | n/a | [`0x624355...abfc76`](./contracts/ethereum-1/0x6243558a24cc6116abe751f27e6d7ede50abfc76/) | ⚠️ Unaudited |
| TokenGGP | token | avalanche | n/a | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| IporToken | token | ethereum | n/a | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x294eec...a9fbad`](./contracts/ethereum-1/0x294eecec65a0142e84aedfd8eb2fbea8c9a9fbad/); ethereum `0x699e04...976490`; ethereum `0x6bf340...1c3ddf` | ⚠️ Unaudited |
| SiloToken | token | ethereum | n/a | [`0xf0b2dd...486bb0`](./contracts/ethereum-1/0xf0b2dd79324a66d2108c961d680f7616e1486bb0/) | ⚠️ Unaudited |
| Vault | core_logic | avalanche | unit-22215 (3 proxies) | 3 deployments: avalanche [`0x304892...db54af`](./contracts/avalanche-43114/0x3048925b3ea5a8c12eecccb8810f5f7544db54af/); avalanche `0x662e5e...78bd08`; avalanche `0xb893c8...0d25e3` | ⚠️ Unaudited |
| RewardToken | token | ethereum | n/a | [`0xf3e621...b4e696`](./contracts/ethereum-1/0xf3e621395fc714b90da337aa9108771597b4e696/) | ⚠️ Unaudited |
| Vault | core_logic | linea | unit-22240 (2 proxies) | 2 deployments: linea [`0x1b316f...2f0f71`](./contracts/linea-59144/0x1b316fa2d6c44b65c1ed6d29b37743cd362f0f71/); linea `0x7df7e4...1a07f7` | ⚠️ Unaudited |
| PlasmaVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x20e934...b9ac44`](./contracts/ethereum-1/0x20e934c725b6703f0ac696f1689008057db9ac44/); ethereum `0xae4362...9a573c`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | unit-22154 (4 proxies) | 4 deployments: ethereum [`0x423b46...19bc52`](./contracts/ethereum-1/0x423b469268b15821107c38d1e1f702877219bc52/); ethereum `0xbca723...fd555c`; ethereum `0xd56031...7b26ce`; ethereum `0xe0dfbe...bf9621` | ⚠️ Unaudited |
| SiloGovernanceToken | token | ethereum | n/a | [`0x6f8031...8ab1f8`](./contracts/ethereum-1/0x6f80310ca7f2c654691d1383149fa1a57d8ab1f8/) | ⚠️ Unaudited |
| AccessManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/); ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | ethereum | n/a | [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/) | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | ethereum | n/a | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | ethereum | n/a | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | ethereum | n/a | [`0x0ccccd...3ab361`](./contracts/ethereum-1/0x0ccccdc5b809c71ce5cd298907aad117513ab361/) | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | ethereum | n/a | [`0xce9680...7db70d`](./contracts/ethereum-1/0xce96800a16791d68ee96706915ead714d67db70d/) | ⚠️ Unaudited |
| AmmPoolsServiceStEth | core_logic | ethereum | n/a | [`0xcd96ba...fbebbc`](./contracts/ethereum-1/0xcd96ba8995e6e0146df363b80e6f1f2b93fbebbc/) | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | ethereum | n/a | [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/) | ⚠️ Unaudited |
| ApexMaker | unknown | avalanche | n/a | [`0xf98ea8...e4f18e`](./contracts/avalanche-43114/0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e/) | ⚠️ Unaudited |
| ApexMakerV2 | unknown | avalanche | n/a | [`0x3bf597...4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ⚠️ Unaudited |
| ApexPremier | unknown | avalanche | n/a | [`0xd189d2...d8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | ethereum | n/a | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | ⚠️ Unaudited |
| AsyncActionFuse | unknown | ethereum | n/a | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-22144 | [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| AutoETHAdapter | adapter | ethereum | n/a | [`0xbcac2b...20ae4e`](./contracts/ethereum-1/0xbcac2b4b09b2d33d0bb3f618bb0189fbf220ae4e/) | ⚠️ Unaudited |
| AutoUSDAdapter | adapter | ethereum | n/a | [`0xbcf18d...9bafa9`](./contracts/ethereum-1/0xbcf18d9081be42eaf439bca93f35f3a5cd9bafa9/) | ⚠️ Unaudited |
| BIFKN314 | unknown | avalanche | n/a | [`0xcffb86...9363dd`](./contracts/avalanche-43114/0xcffb862299f971121e731422090e318f529363dd/) | ⚠️ Unaudited |
| BIFKN314Factory | registry | avalanche | n/a | [`0x96a97d...dab0f0`](./contracts/avalanche-43114/0x96a97d36fc007075e300399da892f5cedfdab0f0/) | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | avalanche | n/a | 22 deployments: avalanche [`0x18e015...25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/); avalanche `0x19b7cc...7f4fed`; avalanche `0x1b923f...3b1516`; avalanche `0x1c7b3f...aad39a`; avalanche `0x2e3ac2...e536fb`; avalanche `0x4df08c...f5dc9a`; avalanche `0x5b5913...481ce1`; avalanche `0x5facc8...a26461`; avalanche `0x65fcc0...e053f0`; avalanche `0x836094...e47cd1`; avalanche `0x8bb1e4...324bed`; avalanche `0x8e02a1...f65d96`; avalanche `0x9a25d8...f70736`; avalanche `0x9af107...5d697e`; avalanche `0x9fa9b0...92c15e`; avalanche `0xbe2ff4...fc545b`; avalanche `0xbf835b...ae176d`; avalanche `0xce6450...616da6`; avalanche `0xcec0b5...0442bd`; avalanche `0xda5d3f...b00947`; avalanche `0xdd4bfa...956d14`; avalanche `0xeb3dfd...6a8734` | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | avalanche | n/a | 2 deployments: avalanche [`0x6242c8...2744fc`](./contracts/avalanche-43114/0x6242c833fe85de19c38b3e280a2ddcee262744fc/); avalanche `0xa6d21c...11a682` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | avalanche | n/a | 29 deployments: avalanche [`0x0133a8...374bff`](./contracts/avalanche-43114/0x0133a82c4a2ec404ea61529c45ee15b08d374bff/); avalanche `0x098086...18b3da`; avalanche `0x1a308e...620f54`; avalanche `0x1f6c7e...f8e50f`; avalanche `0x1fb3f2...49c612`; avalanche `0x26ab72...3124d5`; avalanche `0x28f699...ad020c`; avalanche `0x430dde...ab2f46`; avalanche `0x485ea0...d6ed82`; avalanche `0x52e44b...e119ad`; avalanche `0x5c84b4...c3e9f9`; avalanche `0x5fe449...1ac6d6`; avalanche `0x636483...3b8941`; avalanche `0x69e852...87143b`; avalanche `0x6c5d31...5f05a2`; avalanche `0x737805...6a2e68`; avalanche `0x77cb12...9e8573`; avalanche `0x7e4126...811b5d`; avalanche `0x9dcde3...8be6c4`; avalanche `0xa28745...c00abe`; avalanche `0xae3f01...1b47a0`; avalanche `0xb47f0d...7ce5c3`; avalanche `0xbf2b86...97789e`; avalanche `0xbf88e0...31bb18`; avalanche `0xc80f88...fc817d`; avalanche `0xd714f2...fba4ec`; avalanche `0xde2468...0114a1`; avalanche `0xfb0cf8...d29332`; avalanche `0xfc6c9b...4e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | avalanche | n/a | [`0x421d0d...128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | avalanche | n/a | [`0x599587...ed38d3`](./contracts/avalanche-43114/0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3/) | ⚠️ Unaudited |
| BIFKNRewarder | unknown | avalanche | n/a | [`0xc158d2...67194f`](./contracts/avalanche-43114/0xc158d2d31a854644ac7b1ff13fcb1c1def67194f/) | ⚠️ Unaudited |
| Blub | unknown | avalanche | n/a | [`0x0f6698...b1b5cd`](./contracts/avalanche-43114/0x0f669808d88b2b0b3d23214dcd2a1cc6a8b1b5cd/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | bsc | n/a | 4 deployments: ethereum `0xd3bd7d...2f8bbb`; bsc [`0x455960...04335a`](./contracts/bsc-56/0x4559605e3003fda8c059e14af4f16ba9a004335a/); linea `0x7263bc...c0c647`; linea `0xe9a64f...d612b2` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | ethereum | n/a | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | ethereum | n/a | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | n/a | [`0x6476a7...bb286c`](./contracts/avalanche-43114/0x6476a72282ea701748f56dcfb8a9ffa919bb286c/) | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | ethereum | unit-22140 | [`0x0ed13e...8bb5a7`](./contracts/ethereum-1/0x0ed13eec003ea0f51214c4a641a3d0a0718bb5a7/) | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | ethereum | n/a | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ⚠️ Unaudited |
| ContextManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x0fe8d7...62a702`](./contracts/ethereum-1/0x0fe8d799dd76e11b27e769ad3d2916d63062a702/); ethereum `0x3782bc...3c9fd8`; ethereum `0x695d74...68de3a`; ethereum `0xba6839...270317` | ⚠️ Unaudited |
| ContextManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/); ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | n/a | 16 deployments: ethereum [`0x007274...3ff43d`](./contracts/ethereum-1/0x007274f6e5615c1131c860d376309f2a663ff43d/); ethereum `0x0bfb5f...de52c2`; ethereum `0x0c27d5...d4a29f`; ethereum `0x33141f...9ebb74`; ethereum `0x3981e3...7037a9`; ethereum `0x5454c1...26c7f3`; ethereum `0x5520ec...a5865f`; ethereum `0x5601a6...d5230e`; ethereum `0x5d16d2...687d5a`; ethereum `0x77ab13...d14220`; ethereum `0x833ab7...acc25c`; ethereum `0x9046a3...3f522c`; ethereum `0xaa9215...af2b0c`; ethereum `0xbc3bf0...23d6b1`; ethereum `0xd3e5ef...326c84`; ethereum `0xdf12b8...748f5e` | ⚠️ Unaudited |
| DistributionModule | unknown | ethereum | unit-22163 | [`0x75cc0c...11e36a`](./contracts/ethereum-1/0x75cc0c0ddd2ccafe6ec415be686267588011e36a/) | ⚠️ Unaudited |
| Drip | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0c140d...dc01a5`](./contracts/ethereum-1/0x0c140dc69b02033e45c32c9ba7d7fe48d2dc01a5/); ethereum `0x455960...04335a`; ethereum `0x4d7017...d3466a`; ethereum `0x6b7239...5e6bbd`; ethereum `0x904de7...814a4b`; bsc `0x56aa6d...bae8ef`; linea `0xd3fd41...4f1cd3` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | ethereum | n/a | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | ethereum | n/a | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | ethereum | n/a | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | ethereum | n/a | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | ethereum | n/a | 2 deployments: ethereum [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/); ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | ethereum | n/a | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | avalanche | n/a | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | ethereum | n/a | [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/) | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | ethereum | n/a | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | ethereum | n/a | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ⚠️ Unaudited |
| Eul | unknown | ethereum | n/a | [`0xd9fcd9...aae07b`](./contracts/ethereum-1/0xd9fcd98c322942075a5c3860693e9f4f03aae07b/) | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | ethereum | n/a | [`0xae9a37...7baabd`](./contracts/ethereum-1/0xae9a37dd9229687662834e6696e396e7837baabd/) | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | ethereum | n/a | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | ⚠️ Unaudited |
| EulerV2BorrowFuse | core_logic | ethereum | n/a | [`0x6b339a...f7f2f6`](./contracts/ethereum-1/0x6b339a926328b9a5a5705fd051aa5028d9f7f2f6/) | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | ethereum | n/a | [`0x07d809...e36514`](./contracts/ethereum-1/0x07d80997d57ad9489a4c48f6134df91822e36514/) | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | ethereum | n/a | [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/) | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9425cc...57f217`](./contracts/ethereum-1/0x9425cc51e61f04942008b7caff129c2c6e57f217/); ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | ethereum | n/a | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ⚠️ Unaudited |
| FeeManager | governance | ethereum | n/a | [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/) | ⚠️ Unaudited |
| FeeManagerFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/); ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | [`0x242ed4...a0f9b0`](./contracts/ethereum-1/0x242ed4bfc5c2fdfc0b38f634f49b5e9fafa0f9b0/) | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/); ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | unit-22194 | [`0xcd0590...d9b852`](./contracts/ethereum-1/0xcd05909c4a1f8e501e4ed554cef4ed5e48d9b852/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | unit-22241 | [`0x1fee19...368216`](./contracts/linea-59144/0x1fee198a3d28b2419bf0ab4bbbd6cc8f75368216/) | ⚠️ Unaudited |
| GuessGame | unknown | ethereum | n/a | [`0x58d7d6...27a67c`](./contracts/ethereum-1/0x58d7d693788f50fcc1df7aaf08e64db81b27a67c/) | ⚠️ Unaudited |
| IporFusionAccessManager | governance | ethereum | n/a | 12 deployments: ethereum [`0x3df9d7...9eabae`](./contracts/ethereum-1/0x3df9d7be4017e3d72ea39b96ed4c7070c19eabae/); ethereum `0x56e767...b4af56`; ethereum `0x6857b2...66e0c7`; ethereum `0x818912...7df7aa`; ethereum `0x85fd76...72325e`; ethereum `0x922350...eb1d42`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IpToken | token | ethereum | n/a | 2 deployments: ethereum [`0xac5b04...166125`](./contracts/ethereum-1/0xac5b04988bc71bee96f8d93040777db3ef166125/); ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | ethereum | n/a | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | ⚠️ Unaudited |
| IpTokenUsdt | token | ethereum | n/a | 2 deployments: ethereum [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/); ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| LevvaAirdrop | operational_periphery | ethereum | n/a | [`0xe3f64a...27697e`](./contracts/ethereum-1/0xe3f64a918a2007059d8b5cd083c2b7891927697e/) | ⚠️ Unaudited |
| LevvaAirdropV2 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x44eb44...818f73`](./contracts/ethereum-1/0x44eb44642e381f16eb787d1fe0f770096c818f73/); ethereum `0x6329d4...62cbe7`; ethereum `0xadb221...f6b2d4` | ⚠️ Unaudited |
| LevvaPoolAdapter | adapter | ethereum | n/a | 10 deployments: ethereum [`0x02b50e...e6e66b`](./contracts/ethereum-1/0x02b50e308b7b49e2ef5c69b06319a8e16ee6e66b/); ethereum `0x0721fa...0de54d`; ethereum `0x0d66f2...87b0ff`; ethereum `0x10cc5e...144696`; ethereum `0x1b5b05...2b9cb5`; ethereum `0x75eb30...6db7f3`; ethereum `0x7cd87c...7f8c1b`; ethereum `0xa02f9a...ad7559`; ethereum `0xef55d7...ffb655`; ethereum `0xf9e6ba...21baea` | ⚠️ Unaudited |
| LevvaVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x9b36e0...3e55e2`](./contracts/ethereum-1/0x9b36e02b13c9d53bf3cb371a5b0ce789243e55e2/); ethereum `0xbc0c3d...a1dfc5`; ethereum `0xf0f560...68f182` | ⚠️ Unaudited |
| LevvaVaultAdapter | adapter | ethereum | n/a | [`0x86baa9...b1b16d`](./contracts/ethereum-1/0x86baa92651b5d636c98eb804d24cdd8bf5b1b16d/) | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | ethereum | n/a | [`0xf71339...9daa97`](./contracts/ethereum-1/0xf713395a26400c2ecd4af9faf0f6ad7c569daa97/) | ⚠️ Unaudited |
| MerklClaimFuse | unknown | ethereum | n/a | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0bb275...f5046a`](./contracts/ethereum-1/0x0bb2751a90fff62e844b1521637ded28f3f5046a/); ethereum `0x1e2aaa...9f5741`; ethereum `0xb5e457...4ef9e0` | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1bfb9e...22e050`](./contracts/ethereum-1/0x1bfb9e4b7d849c641e7ff896849a4d446322e050/); ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b66a7...209a3c`](./contracts/ethereum-1/0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c/); ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99bc01...bec386`](./contracts/ethereum-1/0x99bc0136ba3cc8d1a920e68eadff4fd899bec386/); ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| N2MERC721NS | token | linea | n/a | [`0x398f0a...af4749`](./contracts/linea-59144/0x398f0a3e303afd3cae2b602d6bbe01b1c1af4749/) | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | n/a | [`0xffdc3b...ad5542`](./contracts/avalanche-43114/0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542/) | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | ethereum | n/a | [`0xc13f3f...1cb691`](./contracts/ethereum-1/0xc13f3fd20556a595990c35612e9e5c1c071cb691/) | ⚠️ Unaudited |
| OptionTokenV3 | token | linea | n/a | [`0x63349b...400b60`](./contracts/linea-59144/0x63349ba5e1f71252ecd56e8f950d1a518b400b60/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| OriginETHAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x9b6f39...3acfac`](./contracts/ethereum-1/0x9b6f395d0f1cc253ca85e3b2ce54f915d03acfac/); ethereum `0xc7f296...f8aee6` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2de732...0171ab`](./contracts/ethereum-1/0x2de7320004f837925ba31326ff66210be90171ab/); ethereum `0x394356...49df44` | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/); ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/); ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x18fda4...187d5e`](./contracts/ethereum-1/0x18fda40bee2a2ec4fff630dedba78a2aa0187d5e/); ethereum `0x45d0e1...74c115`; ethereum `0x962131...90ee87`; ethereum `0xcb5ef9...179362` | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | n/a | [`0xfc3ea3...d8051a`](./contracts/avalanche-43114/0xfc3ea32c03b4be326bced178431789f7e2d8051a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | 2 deployments: avalanche [`0x6e8fd3...aed940`](./contracts/avalanche-43114/0x6e8fd36d51d159209054dadda7f87aa4e1aed940/); avalanche `0xbc5627...e9e190` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | ethereum | n/a | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ⚠️ Unaudited |
| Renzo | unknown | ethereum | n/a | [`0x3b5080...3fa6f9`](./contracts/ethereum-1/0x3b50805453023a91a8bf641e279401a0b23fa6f9/) | ⚠️ Unaudited |
| ResolvAdapter | adapter | ethereum | n/a | [`0x812e32...bbc3bb`](./contracts/ethereum-1/0x812e3249b0a4bf41fee4201987b4cc4d53bbc3bb/) | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | ethereum | n/a | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | ⚠️ Unaudited |
| RewardsClaimManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x1f8397...02ded0`](./contracts/ethereum-1/0x1f8397de7c32cc7f042477326892953ca102ded0/); ethereum `0x2d1a21...af2792`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0xb20e1d...0cd802`; ethereum `0xd0e170...937901` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | linea | n/a | [`0x2222c5...910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | ⚠️ Unaudited |
| RewardsManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/); ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-22147 | [`0x2e0355...7f25b2`](./contracts/ethereum-1/0x2e0355922ef3a5b77d29287c808aeafb4e7f25b2/) | ⚠️ Unaudited |
| SafeL2 | unknown | avalanche | unit-22217 | [`0x58a916...78e811`](./contracts/avalanche-43114/0x58a916ad66584811c939aa844025036e5078e811/) | ⚠️ Unaudited |
| SafeL2 | unknown | linea | unit-22243 | [`0x58a916...78e811`](./contracts/linea-59144/0x58a916ad66584811c939aa844025036e5078e811/) | ⚠️ Unaudited |
| SafeProxy | unknown | avalanche | n/a | [`0xb63019...1d3a25`](./contracts/avalanche-43114/0xb6301976f04e6a58d6e57ff04144a31d911d3a25/) | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | ethereum | n/a | [`0x086aca...17998f`](./contracts/ethereum-1/0x086aca94aa413932c6ac5e09b863ac2cbe17998f/) | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | ethereum | n/a | [`0x1d24b8...13005b`](./contracts/ethereum-1/0x1d24b8d16d87a570e8539c2849a23bbc5f13005b/) | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | ethereum | n/a | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | ethereum | n/a | [`0x897d96...defa56`](./contracts/ethereum-1/0x897d96a7c91e2f1b8213f240cad031f9acdefa56/) | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | ethereum | n/a | [`0x0c59d9...1c3816`](./contracts/ethereum-1/0x0c59d9cd3859673edc70b0bcf66e2715831c3816/) | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | ethereum | n/a | [`0x7ec22c...77defc`](./contracts/ethereum-1/0x7ec22c4defe53ec35f03f0b6468ec319c577defc/) | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | ethereum | n/a | [`0x5be6e7...ce3c1e`](./contracts/ethereum-1/0x5be6e757763a3b7106d211df5017823366ce3c1e/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x062ab4...9e2e7b`](./contracts/ethereum-1/0x062ab43e7c2d0419d996ccfd634161d6289e2e7b/); ethereum `0x6d1fba...9e230e`; ethereum `0xb08b28...89adb4`; ethereum `0xd56320...d1aa3b`; avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/); ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| Stream | adapter | bsc | n/a | 3 deployments: ethereum `0xcd3f84...650ae6`; bsc [`0x54beea...eb54d0`](./contracts/bsc-56/0x54beea0a1a450883801c2bc1426aae7ad3eb54d0/); linea `0x558996...f01a4c` | ⚠️ Unaudited |
| StreamFactory | registry | bsc | n/a | [`0xc651ce...b68e6b`](./contracts/bsc-56/0xc651ce768c22c691ab76af315787c0f2b7b68e6b/) | ⚠️ Unaudited |
| StreamFactoryProxy | registry | bsc | n/a | [`0x298d29...b3c120`](./contracts/bsc-56/0x298d2967588b5c93a137ce1a05d0b8cfffb3c120/) | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/); ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | ethereum | n/a | [`0x5b1a6b...41f537`](./contracts/ethereum-1/0x5b1a6b2e6af64e74275015a65687de0ca941f537/) | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f...14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokemakAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x446b6d...300af4`](./contracts/ethereum-1/0x446b6d4ba19647c06be4b06597fbc7e0c0300af4/); ethereum `0xc59e64...757b56` | ⚠️ Unaudited |
| TokenBatchTransfer | token | ethereum | n/a | [`0x35cb40...2bb7f1`](./contracts/ethereum-1/0x35cb400f5c443d8efa7e2ea5d123eb78332bb7f1/) | ⚠️ Unaudited |
| TokenggAVAX | token | avalanche | n/a | 2 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922` | ⚠️ Unaudited |
| TokenMinter | token | ethereum | n/a | [`0x254163...d82eb2`](./contracts/ethereum-1/0x2541633ec276d94e181caea8fc26f3bb4bd82eb2/) | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/); ethereum `0x0bc03a...d9372b`; ethereum `0x239f61...128bdb`; ethereum `0x3a6df8...26e8e1`; ethereum `0x48a6e2...0c4cc5`; ethereum `0xb0ba55...4cf0b9`; ethereum `0xc43de3...dbf79e` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/); ethereum `0xd932d4...f2dbf0` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | ethereum | n/a | 3 deployments: ethereum [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/); ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | ethereum | n/a | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | ⚠️ Unaudited |
| UsualX | unknown | ethereum | unit-22134 | [`0x06b964...4d4b8e`](./contracts/ethereum-1/0x06b964d96f5dcf7eae9d7c559b09edce244d4b8e/) | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | ethereum | n/a | [`0x8771e2...15d48b`](./contracts/ethereum-1/0x8771e28451f0a2b891b3401c94bcfa272215d48b/) | ⚠️ Unaudited |
| VoterV5 | unknown | linea | unit-22239 | [`0x0b2c83...3b63c5`](./contracts/linea-59144/0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | avalanche | unit-22231 | [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | linea | unit-22253 | [`0xaaaea1...b9ce6f`](./contracts/linea-59144/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | linea | unit-22249 | [`0x8d95f5...9b4c0c`](./contracts/linea-59144/0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c/) | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | ethereum | n/a | [`0xabd643...b4374d`](./contracts/ethereum-1/0xabd643daebbc7a98fc00afbe4e6204b23eb4374d/) | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xb886d4...45464b`](./contracts/ethereum-1/0xb886d4ed71c5677347ad891a6a71dfe4fa45464b/); ethereum `0xcb3b03...976168`; ethereum `0xee1186...fdd66e` | ⚠️ Unaudited |
| WithdrawManager | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x468de9...6d7b76`](./contracts/ethereum-1/0x468de989457f45c7bba362227274ae67e96d7b76/); ethereum `0x79f140...79bbdb`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xcb1cea...80b111` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/); ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |
| Xai | unknown | ethereum | n/a | [`0xd7c9f0...c3beac`](./contracts/ethereum-1/0xd7c9f0e536dc865ae858b0c0453fe76d13c3beac/) | ⚠️ Unaudited |
| xBIFKN314 | unknown | avalanche | n/a | [`0xa43f06...86374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | unit-22139 | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |
| YUSDWithdrawalAdapter | operational_periphery | ethereum | n/a | [`0xf26ffa...09bdca`](./contracts/ethereum-1/0xf26ffa13064939ac6d2253acaf2329750d09bdca/) | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/); ethereum `0xb5c14b...0be9c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x47733f...61035d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a460...37ea04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c8aea...72f677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe082f0...96c3d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15dbf0...68ce47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18e360...c18973` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ff575...914d2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x206336...a869e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2aaad9...974761` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d193d...106a87` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x463a7e...c75e9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x490bf7...02e3eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49424f...1d5586` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a8876...2e6138` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ab51b...404d80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e6b2a...f4590c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d2dda...28082b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d7dcc...a666fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x772ebf...308cdc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e3751...85f63d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaa2cee...6b1c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaeb261...a06e22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc300bc...268ee7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9871b...6fa33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd960ce...16e584` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfb880...845802` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf4c562...1620a9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6e22a6...fce86e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[Drip Contract Audit 10/18/25]()](https://drive.google.com/file/d/1vsfYioACulqb17qgNKXHKjDSbj_WDT60/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [[Streams Contract Audit (Cantina)]()](https://drive.google.com/file/d/17-KHHhgcOTUVI6JcwTLvhoWp7lrNTyJP/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Turtle's smart contracts have been audited by independent security firms. The Streams contract system was audited by [Cantina]() in January 2026, and further audits cover the Drip contract and core protocol infrastructure.](https://cantina.xyz/welcome) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x624355...abfc76`](./contracts/ethereum-1/0x6243558a24cc6116abe751f27e6d7ede50abfc76/) | LevvaToken | token | $2,056,617.47 | Verified native implementation with $2,056,617.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294eec...a9fbad`](./contracts/ethereum-1/0x294eecec65a0142e84aedfd8eb2fbea8c9a9fbad/) | BoringVault | core_logic | $658,216.50 | Verified native implementation with $658,216.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x304892...db54af`](./contracts/avalanche-43114/0x3048925b3ea5a8c12eecccb8810f5f7544db54af/) | Vault | core_logic | $553,710.44 | Verified native implementation with $553,710.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3e621...b4e696`](./contracts/ethereum-1/0xf3e621395fc714b90da337aa9108771597b4e696/) | RewardToken | token | $218,594.13 | Verified native implementation with $218,594.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1b316f...2f0f71`](./contracts/linea-59144/0x1b316fa2d6c44b65c1ed6d29b37743cd362f0f71/) | Vault | core_logic | $18,509.00 | Verified native implementation with $18,509.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20e934...b9ac44`](./contracts/ethereum-1/0x20e934c725b6703f0ac696f1689008057db9ac44/) | PlasmaVault | core_logic | $6,265.73 | Verified native implementation with $6,265.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x423b46...19bc52`](./contracts/ethereum-1/0x423b469268b15821107c38d1e1f702877219bc52/) | Vault | core_logic | $5,938.80 | Verified native implementation with $5,938.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/) | AccessManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/) | AmmCloseSwapLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | AmmCloseSwapServiceStEthBaseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ccccd...3ab361`](./contracts/ethereum-1/0x0ccccdc5b809c71ce5cd298907aad117513ab361/) | AmmOpenSwapServiceStEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3bf597...4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ApexMakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | AsyncActionBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcac2b...20ae4e`](./contracts/ethereum-1/0xbcac2b4b09b2d33d0bb3f618bb0189fbf220ae4e/) | AutoETHAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcf18d...9bafa9`](./contracts/ethereum-1/0xbcf18d9081be42eaf439bca93f35f3a5cd9bafa9/) | AutoUSDAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x421d0d...128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | BIFKNChefStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x599587...ed38d3`](./contracts/avalanche-43114/0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3/) | BIFKNChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | CallbackHandlerEuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | CallbackHandlerReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ConfigureInstantWithdrawalFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fe8d7...62a702`](./contracts/ethereum-1/0x0fe8d799dd76e11b27e769ad3d2916d63062a702/) | ContextManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/) | ContextManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c140d...dc01a5`](./contracts/ethereum-1/0x0c140dc69b02033e45c32c9ba7d7fe48d2dc01a5/) | Drip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | EbisuZapperBalanceFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/) | EbisuZapperCreateFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | EbisuZapperLeverModifyFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | EmissionsToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/) | ERC4626PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ERC4626ZapIn | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ERC4626ZapInWithNativeToken | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | EulerV2BatchFuse | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ExchangeRateValidatorPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/) | FeeManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x242ed4...a0f9b0`](./contracts/ethereum-1/0x242ed4bfc5c2fdfc0b38f634f49b5e9fafa0f9b0/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/) | FusionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3df9d7...9eabae`](./contracts/ethereum-1/0x3df9d7be4017e3d72ea39b96ed4c7070c19eabae/) | IporFusionAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac5b04...166125`](./contracts/ethereum-1/0xac5b04988bc71bee96f8d93040777db3ef166125/) | IpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | IpTokenDai | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/) | IpTokenUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3f64a...27697e`](./contracts/ethereum-1/0xe3f64a918a2007059d8b5cd083c2b7891927697e/) | LevvaAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44eb44...818f73`](./contracts/ethereum-1/0x44eb44642e381f16eb787d1fe0f770096c818f73/) | LevvaAirdropV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b36e0...3e55e2`](./contracts/ethereum-1/0x9b36e02b13c9d53bf3cb371a5b0ce789243e55e2/) | LevvaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bfb9e...22e050`](./contracts/ethereum-1/0x1bfb9e4b7d849c641e7ff896849a4d446322e050/) | MidasBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b66a7...209a3c`](./contracts/ethereum-1/0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c/) | MidasRequestSupplyFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2de732...0171ab`](./contracts/ethereum-1/0x2de7320004f837925ba31326ff66210be90171ab/) | PlasmaVaultBase | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/) | PlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/) | PriceManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18fda4...187d5e`](./contracts/ethereum-1/0x18fda40bee2a2ec4fff630dedba78a2aa0187d5e/) | PriceOracleMiddlewareManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ReferralPlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8397...02ded0`](./contracts/ethereum-1/0x1f8397de7c32cc7f042477326892953ca102ded0/) | RewardsClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/) | RewardsManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x062ab4...9e2e7b`](./contracts/ethereum-1/0x062ab43e7c2d0419d996ccfd634161d6289e2e7b/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/) | StEthWrapperFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54beea...eb54d0`](./contracts/bsc-56/0x54beea0a1a450883801c2bc1426aae7ad3eb54d0/) | Stream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc651ce...b68e6b`](./contracts/bsc-56/0xc651ce768c22c691ab76af315787c0f2b7b68e6b/) | StreamFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x298d29...b3c120`](./contracts/bsc-56/0x298d2967588b5c93a137ce1a05d0b8cfffb3c120/) | StreamFactoryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/) | SwapExecutorRestricted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35cb40...2bb7f1`](./contracts/ethereum-1/0x35cb400f5c443d8efa7e2ea5d123eb78332bb7f1/) | TokenBatchTransfer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/) | TokenggAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x254163...d82eb2`](./contracts/ethereum-1/0x2541633ec276d94e181caea8fc26f3bb4bd82eb2/) | TokenMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/) | UniversalTokenSwapperEthFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/) | UniversalTokenSwapperFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | UniversalTokenSwapperWithVerificationFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabd643...b4374d`](./contracts/ethereum-1/0xabd643daebbc7a98fc00afbe4e6204b23eb4374d/) | WhitelistWrappedPlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb886d4...45464b`](./contracts/ethereum-1/0xb886d4ed71c5677347ad891a6a71dfe4fa45464b/) | WithdrawalQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x468de9...6d7b76`](./contracts/ethereum-1/0x468de989457f45c7bba362227274ae67e96d7b76/) | WithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/) | WithdrawManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/) | ZeroBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 23 |
| standard_library | 16 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3322] [Drip Contract Audit 10/18/25]()
- [3323] [Streams Contract Audit (Cantina)]()
- [12007] Turtle's smart contracts have been audited by independent security firms. The Streams contract system was audited by [Cantina]() in January 2026, and further audits cover the Drip contract and core protocol infrastructure.

Fork inheritance lineage and inherited audits are included when available.
