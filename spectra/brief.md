# Agentic Audit Brief: Spectra

## Project Overview

- Project: Spectra (`spectra`)
- Website: [https://www.spectra.finance](https://www.spectra.finance)
- Lifecycle: active (Tier 0, 81.8% below peak)
- Generated: 2026-06-17T07:00:42.479Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, hyperliquid, optimism, sonic
- Contract surface: 90 unique implementations (217 raw deployments)
- DeFi Llama TVL: $40,073,123.00
- On-chain TVL (included contracts): $286.49
- TVL by chain: Ethereum $285.85 | Base $0.64

## Project Description

Spectra is a permissionless interest-rate derivatives and yield-tokenization protocol. It enables users to split yield-bearing assets into principal tokens and yield tokens, trade fixed-rate and future-yield exposure, access yield leverage, and provide liquidity through PT/YT markets and AMM pools. Spectra also includes MetaVaults and related periphery that can automate access to curated yield strategies, but these are features of the broader yield-tokenization and interest-rate market protocol rather than the protocol’s primary identity.

### Architecture

Spectra V2 factories deploy yield tokens and principal tokens, which are wrapped by Spectra Wrappers and priced by Spectra Oracles. MetaVaults aggregate these tokens, while Bridges enable cross-chain movement, and Governance/Rewards contracts manage incentives and protocol control.

## Contract Surface Quality

- Indexed contracts: 1270; live-surface contracts included: 217 (217 live, 0 unknown).
- Excluded by liveness: 303 inactive, 750 singleton, 0 uninitialized.
- Deployment units: 30/424 live.
- Detected codebases: curve-stableswap
- Unverified dependencies: 6/8.

## Audit Coverage Summary

- Verified implementations audited: 9/73 (12.3%)
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 90
- Raw deployments: 217
- Audits discovered: 7
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Staleness: 2 fresh, 0 aging, 2 stale, 3 unknown
- Tier 1 coverage: 11.0% (Code4rena, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 4naly3er | Tier 2 | 5 | 6.8% | n/a |
| bot | Tier 2 | 5 | 6.8% | n/a |
| Code4rena | Tier 1 | 5 | 6.8% | 2024-02 |
| Sherlock | Tier 1 | 3 | 4.1% | 2025-12 |
| unknown | Tier 2 | 1 | 1.4% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CampaignManagerMainnet | core_logic | ethereum | unit-25593 | [`0x38b9b4...21786c`](./contracts/ethereum-1/0x38b9b4884a5581e96ed3882aa2f7449bc321786c/) | ✅ Audited |
| CampaignManager | core_logic | base | unit-25814 | [`0x392fca...dd2954`](./contracts/base-8453/0x392fca63e58c1870fbec04eb6518a75703dd2954/) | ✅ Audited |
| BridgeGatekeeper | operational_periphery | base | n/a | 3 deployments: base [`0x1e0eb1...ca9b4c`](./contracts/base-8453/0x1e0eb1a41bd39a382bae176508d9c21e07ca9b4c/); arbitrum `0x260570...9ea42e`; avalanche `0x94570b...0a178e` | ✅ Audited |
| CampaignManager | core_logic | optimism | unit-25710 | [`0xacfee9...ac04fd`](./contracts/optimism-10/0xacfee9a21fc48040f12793bd5a478dd155ac04fd/) | ✅ Audited |
| CampaignManager | core_logic | arbitrum | unit-25878 | [`0x06c030...efff4d`](./contracts/arbitrum-42161/0x06c03069de266f58d10a0724a4f65c3d4fefff4d/) | ✅ Audited |
| MetavaultsRegistry | registry | base | n/a | 15 deployments: ethereum `0x7458a4...94bd3a`; base [`0x07ab18...5214e5`](./contracts/base-8453/0x07ab18facbf032c4bbcfab448fc8041f005214e5/); base `0x2ed7fe...db5646`; base `0x41b37f...fb4ae9`; base `0x80c833...76c734`; base `0x85b0e5...cb3bb1`; base `0xb73bef...d616ba`; base `0xfcb46d...547f96`; base `0xff90bd...c2641c`; arbitrum `0x16b282...e1f6b8`; arbitrum `0x45f2cc...3d53e4`; arbitrum `0x5b08e6...0e41c8`; arbitrum `0x77ad1f...9895e5`; avalanche `0x36e22e...9d9bba`; avalanche `0x6f86f8...8a7582` | ✅ Audited |
| MetaVaultWrapper | core_logic | arbitrum | n/a | 15 deployments: ethereum `0x47c5a4...cce6f6`; ethereum `0x8255f8...53be48`; base `0x20be54...530606`; base `0x3573cd...b354c6`; base `0x3dca71...486201`; base `0x422db7...0c2641`; base `0x5339dc...fd5820`; base `0x7adc44...899c21`; base `0x82b7ee...b8ecd1`; base `0xa51a24...529061`; base `0xc92ff9...b00278`; base `0xd9d5b4...2ed789`; base `0xed96d8...86adea`; arbitrum [`0x082ee0...21324c`](./contracts/arbitrum-42161/0x082ee010d8470050cb979fcd6e4996773721324c/); avalanche `0xce9cc0...c6e0e5` | ✅ Audited |
| PrincipalToken | token | ethereum | n/a | 10 deployments: ethereum [`0x032b7c...049c96`](./contracts/ethereum-1/0x032b7cc608c4855c89bd0a38c3c1a43c6e049c96/); optimism `0x948990...75f3a5`; bsc `0xdd200a...82d42a`; bsc `0xe78c64...c6991e`; sonic `0x0fc2fb...c59532`; hyperliquid `0x069cf0...1eed21`; hyperliquid `0x3d2060...b69f1a`; base `0x1e28b4...9520e0`; arbitrum `0x270188...2b4f54`; avalanche `0xf0db34...ec87ae` | ✅ Audited |
| RouterUtil | adapter | base | n/a | 2 deployments: hyperliquid `0xf19eaa...2b5420`; base [`0x0b8742...c548da`](./contracts/base-8453/0x0b8742710a7120d409ecb5b8df7ee9da75c548da/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | hyperliquid | n/a | 15 deployments: ethereum `0x1d6e93...108d59`; ethereum `0xb00c45...6756b8`; ethereum `0xc0e926...aa4410`; ethereum `0xc7e436...29b3d2`; hyperliquid [`0x071350...6ce0a0`](./contracts/hyperliquid-999/0x071350a9ee4d153c272fc75ea9557372eb6ce0a0/); base `0x33fc63...896cd4`; base `0x585412...376699`; base `0x7458a4...94bd3a`; base `0x8231d8...dc8740`; base `0xb0c516...60c72a`; arbitrum `0x7458a4...94bd3a`; arbitrum `0x9cc77c...e6c980`; arbitrum `0xd8fde9...3f65b6`; avalanche `0x872a17...9e9db8`; avalanche `0xe28151...f0204b` | ⚠️ Unaudited |
| AsyncVault | core_logic | avalanche | n/a | 2 deployments: arbitrum `0xa58c8e...7d8a30`; avalanche [`0x0c3bca...7563ba`](./contracts/avalanche-43114/0x0c3bca65854e1857c31d273097114006d97563ba/) | ⚠️ Unaudited |
| BridgeInterfaceCCTP | operational_periphery | arbitrum | n/a | 3 deployments: base `0x5226e4...92342d`; arbitrum [`0x4bfa6a...11c339`](./contracts/arbitrum-42161/0x4bfa6a074c7570946548b565ec047a96fe11c339/); avalanche `0x69d38c...01bdaf` | ⚠️ Unaudited |
| BridgeInterfaceCondition | operational_periphery | avalanche | n/a | 8 deployments: ethereum `0x70c981...02546b`; ethereum `0x85d45b...a1083a`; base `0xa32a6a...9a49dd`; base `0xaf3c2f...05c75b`; arbitrum `0x7b5971...4f23df`; arbitrum `0xbb676b...4676c3`; avalanche [`0x2f1d40...aff748`](./contracts/avalanche-43114/0x2f1d40016cad2fa0dbe4a505616ed42315aff748/); avalanche `0x3ca647...1d6096` | ⚠️ Unaudited |
| BridgeInterfaceDeBridge | operational_periphery | avalanche | n/a | 3 deployments: base `0x4140a3...b5b385`; arbitrum `0xe53459...5d74c2`; avalanche [`0x1fc815...1bbf33`](./contracts/avalanche-43114/0x1fc815dd99e3fc3495ce76a255092c98b71bbf33/) | ⚠️ Unaudited |
| CommandsModule | unknown | base | n/a | [`0xdb4d50...7d96bd`](./contracts/base-8453/0xdb4d5091df24c79ed281d74d333626947d7d96bd/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | avalanche | n/a | [`0x548e1c...60ee78`](./contracts/avalanche-43114/0x548e1c75964df772c1da8992d0086b609460ee78/) | ⚠️ Unaudited |
| Delay | unknown | base | unit-25853 (2 proxies) | 2 deployments: base [`0xacf339...516602`](./contracts/base-8453/0xacf33983cab5f9e914e6a93a2f4d531b5c516602/); base `0xda41a0...7812f7` | ⚠️ Unaudited |
| DelayOnlyDeployer | unknown | arbitrum | n/a | 4 deployments: ethereum `0xc63498...764bc3`; base `0xf342a2...437427`; arbitrum [`0x0aa76e...adc2e6`](./contracts/arbitrum-42161/0x0aa76e6bc1bad6565565b33d0962db02b2adc2e6/); avalanche `0x41a795...ba7003` | ⚠️ Unaudited |
| DiamondMultiInit | unknown | base | n/a | [`0xbe419a...003508`](./contracts/base-8453/0xbe419ac6a0fedb7ff6db498d2a57692c1b003508/) | ⚠️ Unaudited |
| DutchAuction | unknown | arbitrum | n/a | 15 deployments: ethereum `0x859498...f2408f`; ethereum `0xa4a9f8...3bf531`; ethereum `0xacf339...516602`; ethereum `0xed96d8...86adea`; ethereum `0xee84b9...a09536`; base `0x353e94...f174a3`; base `0x4b6290...c77cb6`; base `0xfd3434...a96a3e`; arbitrum [`0x0712c2...73aef9`](./contracts/arbitrum-42161/0x0712c296dd10fc5140421c7b59da9311ef73aef9/); arbitrum `0x1cca0f...0e6806`; arbitrum `0xe5ddbc...e66f27`; avalanche `0x62ccb8...531c41`; avalanche `0x985ddf...2d7e2d`; avalanche `0xd77ff4...abadf9`; avalanche `0xed96d8...86adea` | ⚠️ Unaudited |
| FlashloanModule | unknown | base | n/a | [`0xaf56ba...36d388`](./contracts/base-8453/0xaf56bac99b34d6014e196bfbb924437e0236d388/) | ⚠️ Unaudited |
| FunctionManagerModule | governance | base | n/a | [`0x5b5285...9fe94b`](./contracts/base-8453/0x5b5285a3882a4f3d37ca09088c379cabe39fe94b/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-25674 | [`0xdbbfc0...2de9e7`](./contracts/ethereum-1/0xdbbfc051d200438dd5847b093b22484b842de9e7/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | unit-25717 | [`0xf8576b...156470`](./contracts/optimism-10/0xf8576b3830fa131bbd39da1e97fbb24864156470/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-25828 (2 proxies) | 2 deployments: base [`0x5e93e1...429b9a`](./contracts/base-8453/0x5e93e1193a5e297cba0856e9b3f22b6e05429b9a/); base `0xe59d75...02cc7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-25893 | [`0x417c59...8fe381`](./contracts/arbitrum-42161/0x417c5997fc9f1fd341742c71de9b1908028fe381/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | ethereum | n/a | [`0xe59d75...02cc7c`](./contracts/ethereum-1/0xe59d75c87ed608e4f5f22c9f9affb7b6fd02cc7c/) | ⚠️ Unaudited |
| KarakDepositor | unknown | ethereum | n/a | [`0x5cf40c...b74772`](./contracts/ethereum-1/0x5cf40cc1056225d38c87d68c83178315f4b74772/) | ⚠️ Unaudited |
| KyberSwapModule | unknown | base | n/a | [`0xc4c708...3cb0c9`](./contracts/base-8453/0xc4c70800eb6d7f91cfbc6674eb72dcf5213cb0c9/) | ⚠️ Unaudited |
| LimitOrderModule | unknown | base | n/a | [`0x67d940...c5deb5`](./contracts/base-8453/0x67d940439b608b18d2aa73e14c0e64b297c5deb5/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | ethereum | unit-25560 | [`0x0064be...7b0ca5`](./contracts/ethereum-1/0x0064be65c84712fae8c2fa6a257fe9cd9c7b0ca5/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | base | unit-25822 (2 proxies) | 2 deployments: base [`0x4fca14...a3e58c`](./contracts/base-8453/0x4fca141cd17158296b9c4e1ec304232d20a3e58c/); base `0xdc19e4...617591` | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | base | unit-25854 | [`0xacf374...dc23b2`](./contracts/base-8453/0xacf374b06c0ef22dcf40c69618737fb26ddc23b2/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | arbitrum | unit-25883 | [`0x11900f...f1289c`](./contracts/arbitrum-42161/0x11900f417357c947639cc059da116d2cb2f1289c/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | arbitrum | unit-25901 | [`0x5128b9...72889d`](./contracts/arbitrum-42161/0x5128b9c466270fe44a8baf2bc6e035cd2272889d/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | avalanche | unit-25930 | [`0x0064be...7b0ca5`](./contracts/avalanche-43114/0x0064be65c84712fae8c2fa6a257fe9cd9c7b0ca5/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | avalanche | unit-25971 | [`0xac3dea...2c5aa0`](./contracts/avalanche-43114/0xac3deab251a9c01248fae52e028ef9fbd92c5aa0/) | ⚠️ Unaudited |
| MetavaultPrincipalTokenZap | adapter | base | n/a | 2 deployments: base [`0x0c95de...b3992f`](./contracts/base-8453/0x0c95de2c03a4bd4efaeae697d7ff897a1bb3992f/); base `0x967639...e8e447` | ⚠️ Unaudited |
| PreviewCommandsModule | unknown | base | n/a | [`0x4b8fdc...4f5b89`](./contracts/base-8453/0x4b8fdcd4bdc9af9be1ad67070c7520b07a4f5b89/) | ⚠️ Unaudited |
| PriceFeedCurveLPTAssetSNG | operational_periphery | hyperliquid | unit-25770 | [`0x7f7760...6eecfd`](./contracts/hyperliquid-999/0x7f7760dd8868aedc03128fa3709a04f0b96eecfd/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | ethereum | unit-25577 | [`0x176d64...78a300`](./contracts/ethereum-1/0x176d64576aca651e15973e77c2eb7f5ad178a300/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | optimism | unit-25691 | [`0x0fc2fb...c59532`](./contracts/optimism-10/0x0fc2fbd3e8391744426c8be5228b668481c59532/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | hyperliquid | unit-25779 | [`0xd89fc4...d8c18c`](./contracts/hyperliquid-999/0xd89fc47aacbb31e2bf23ec599f593a4876d8c18c/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | base | unit-25804 | [`0x28f55f...03fc48`](./contracts/base-8453/0x28f55fd5418422bf2265730dca5089056e03fc48/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | arbitrum | unit-25879 | [`0x06c910...a00a7f`](./contracts/arbitrum-42161/0x06c910f853d7a7962f4da625f1b6758f86a00a7f/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | avalanche | unit-25966 | [`0x927d93...525260`](./contracts/avalanche-43114/0x927d931a3cab152ab9e0a98fe10fcc4b91525260/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetSNG | operational_periphery | hyperliquid | unit-25774 | [`0xa3eea1...ca445d`](./contracts/hyperliquid-999/0xa3eea13183421c9a8bda0bdee191b70de8ca445d/) | ⚠️ Unaudited |
| PriceFeedCurvePTIBTSNG | operational_periphery | hyperliquid | unit-25763 | [`0x54a1e5...fa16c0`](./contracts/hyperliquid-999/0x54a1e56176139a963d7582fa9d0da3b0aefa16c0/) | ⚠️ Unaudited |
| PriceFeedCurveYTAssetSNG | operational_periphery | hyperliquid | unit-25781 | [`0xf93149...bca505`](./contracts/hyperliquid-999/0xf93149b2d237bf2d4230231d005cd5830cbca505/) | ⚠️ Unaudited |
| PrincipalTokenModule | token | base | n/a | [`0xd8f4c8...cb1d99`](./contracts/base-8453/0xd8f4c8686fe26ee2910fbfc62e173e12e1cb1d99/) | ⚠️ Unaudited |
| RateAdjustmentOracle | operational_periphery | hyperliquid | n/a | 2 deployments: bsc `0xaa055f...ced561`; hyperliquid [`0x916cd5...3b46e7`](./contracts/hyperliquid-999/0x916cd56a5fbbeae186f488f4db83b00c103b46e7/) | ⚠️ Unaudited |
| ReceiverLock | unknown | arbitrum | n/a | 15 deployments: ethereum `0x56f4db...f216fc`; ethereum `0x6420a6...473bf1`; ethereum `0x9a3713...48143b`; ethereum `0xda41a0...7812f7`; ethereum `0xf97912...24cacc`; base `0x6c439a...02b35a`; base `0xbdb1a4...d03efc`; base `0xc92588...eb3fc5`; arbitrum [`0x171d15...8f3aef`](./contracts/arbitrum-42161/0x171d15998b7edf865c1323e4fcdd28c1a58f3aef/); arbitrum `0x54d709...1e1eb8`; arbitrum `0xeaaf5a...0b9eee`; avalanche `0x6420a6...473bf1`; avalanche `0x94b8c8...b4ed3c`; avalanche `0x9de39e...e9b2ef`; avalanche `0xf689a7...dbfe94` | ⚠️ Unaudited |
| RegistryManagerModule | registry | base | n/a | [`0x286a63...7be687`](./contracts/base-8453/0x286a6322525d6ffcc836be1e916553bbdd7be687/) | ⚠️ Unaudited |
| RegistryV2Deployer | registry | base | n/a | 4 deployments: ethereum `0x4d4cbd...868ea0`; base [`0x00cd68...89a53d`](./contracts/base-8453/0x00cd6829b5df2cf4a757d690fdcedb3f3a89a53d/); arbitrum `0xb01d18...080cd2`; avalanche `0x49015f...5a1a7a` | ⚠️ Unaudited |
| Roles | unknown | base | unit-25811 (2 proxies) | 2 deployments: base [`0x33fd28...41e057`](./contracts/base-8453/0x33fd28ef056dfec22a84ab2d66a60ace9b41e057/); base `0x36e22e...9d9bba` | ⚠️ Unaudited |
| RolesOnlyDeployer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d4dab...3cd33d`](./contracts/ethereum-1/0x0d4dabee88297363116e609797bd4691203cd33d/); base `0xc99043...aca8c1`; arbitrum `0xf345af...21f463`; avalanche `0xe65aeb...3ab82f` | ⚠️ Unaudited |
| SafeDeployer | unknown | arbitrum | n/a | 5 deployments: ethereum `0xc4f6d6...927d63`; ethereum `0xfc1b40...15201a`; base `0xd6c5e1...02a057`; arbitrum [`0xb7b7a6...fc345d`](./contracts/arbitrum-42161/0xb7b7a698cf0290910045f976f060fd0919fc345d/); avalanche `0xf35f63...b89e00` | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | unit-25740 | [`0x589269...1db6c2`](./contracts/sonic-146/0x589269998df4d7d16351aa2ff996486aec1db6c2/) | ⚠️ Unaudited |
| SafeSetupHelper | periphery | base | n/a | 5 deployments: ethereum `0x4f5139...ef23e4`; ethereum `0xf2d266...2d5ab4`; base [`0x34a158...f2f217`](./contracts/base-8453/0x34a1580ad0db0a009d4392af37ac49eba1f2f217/); arbitrum `0xcb61f6...5af793`; avalanche `0xf85a6c...528529` | ⚠️ Unaudited |
| SeedVaultDeployer | core_logic | avalanche | n/a | 4 deployments: ethereum `0xf3a5e0...79a6af`; base `0x4c29d4...175f1f`; arbitrum `0xb2aadc...dcf325`; avalanche [`0x3651f0...beb6da`](./contracts/avalanche-43114/0x3651f0e6256f6f9115169f86b1ed446b8cbeb6da/) | ⚠️ Unaudited |
| SpectraWrappedBedrockUniBTC | unknown | ethereum | unit-25657 | [`0xbde752...7eb254`](./contracts/ethereum-1/0xbde752ef69880c00a795d88438040b8f737eb254/) | ⚠️ Unaudited |
| SpectraWrappedBedrockUniETH | unknown | ethereum | unit-25588 | [`0x248f43...619cd5`](./contracts/ethereum-1/0x248f43b622ce2f35a14db3fc528284730b619cd5/) | ⚠️ Unaudited |
| SpectraWrappedMidasVault | core_logic | hyperliquid | n/a | [`0xb7c5eb...82bf46`](./contracts/hyperliquid-999/0xb7c5eb1271432f725a8f182dc00eaee13982bf46/) | ⚠️ Unaudited |
| SpectraWrappedWvlpMidas | unknown | hyperliquid | n/a | [`0x442785...47ebb0`](./contracts/hyperliquid-999/0x4427855b3d9d0a3e931cd6bbdbe4e0f74d47ebb0/) | ⚠️ Unaudited |
| StellarBridgeModule | operational_periphery | base | n/a | [`0xd68753...835959`](./contracts/base-8453/0xd687534e1e95da982dd1766e93192560ac835959/) | ⚠️ Unaudited |
| SWAuraVaultRewardsProxy | core_logic | ethereum | n/a | [`0x430202...437009`](./contracts/ethereum-1/0x4302023584ff53808e039130d45711c3a5437009/) | ⚠️ Unaudited |
| TransferModule | unknown | base | n/a | [`0x227ead...b998aa`](./contracts/base-8453/0x227ead1effbfc0fec32fbd2cbbe4cace37b998aa/) | ⚠️ Unaudited |
| TwapOracleFactorySNG | operational_periphery | hyperliquid | n/a | [`0xa3a724...f1aacb`](./contracts/hyperliquid-999/0xa3a724065b717dc46c024dc52c0aabe5d7f1aacb/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | sonic | n/a | 2 deployments: bsc `0xd3f0f2...5aa7c5`; sonic [`0x414a78...750e08`](./contracts/sonic-146/0x414a78b16fa373663d3b5161a18f709ee6750e08/) | ⚠️ Unaudited |
| VaultDeployer | core_logic | arbitrum | n/a | 4 deployments: ethereum `0x6c84dc...3cb28d`; base `0x409115...408808`; arbitrum [`0x3ec941...78e488`](./contracts/arbitrum-42161/0x3ec941200ccb65d77d33d547d4d234695e78e488/); avalanche `0x82352f...c7f034` | ⚠️ Unaudited |
| Vyper_contract | unknown | base | n/a | [`0x1c5ecc...b0f1d9`](./contracts/base-8453/0x1c5ecca381961d92b6aaf7bc1656c37021b0f1d9/) | ⚠️ Unaudited |
| WrapperModule | unknown | base | n/a | [`0x1a4d55...6749d8`](./contracts/base-8453/0x1a4d55d6f936f9069163fa86e984592ce66749d8/) | ⚠️ Unaudited |
| ZodiacPipelineDeployer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2d25a4...196651`](./contracts/ethereum-1/0x2d25a4cb310099952eb96a0429966889e7196651/); base `0x88f285...57e733`; arbitrum `0xe46445...f24b2c`; avalanche `0x7bcf80...a133b6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0b26d0...aee1e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6fd134...698295` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8f2ce1...02c3b8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc4dc44...3a37f1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe5cd77...111422` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7296fd...d4b3d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdd200a...82d42a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Spectra-security-review.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://1608032478-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSE6NakmHsqUzyells7H%2Fuploads%2FoaRoctf29lEXC7Gi2dy6%2FMetaVault%20-%20Spectra%20Finance%20Audit%20-%20Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | 30 | high |
| [Rendered PDF capture](https://1608032478-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSE6NakmHsqUzyells7H%2Fuploads%2FvuzYJLjktAmIGOhM9sKL%2FMetaVault%20Bridge%20-%20Spectra%20Finance%20Audit%20-%20Sherlock.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | 18 | high |
| [| 42 security auditors of Code4rena | <https://github.com/code-423n4/2024-02-spectra> | March-April 2024 | <> | <p>0 High-risk findings <br>️2 Medium-risk findings<br>11 low risk/non-cricital findings</p> |](https://code4rena.com/reports/2024-02-spectra) | Code4rena | Contest | 2024-02 | stale | Direct | contract_name | 14 | high |
| [4naly3er-report.md](https://github.com/code-423n4/2024-02-spectra/blob/main/4naly3er-report.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | 14 | medium |
| [bot-report.json](https://github.com/code-423n4/2024-02-spectra/blob/main/bot-report.json) | bot | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bot-report.md](https://github.com/code-423n4/2024-02-spectra/blob/main/bot-report.md) | bot | Audit | n/a | unknown | Direct | contract_name | 14 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 89 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=2
- Match method counts: extraction_exact=683

Zero-match audit list:

- [11685] bot-report.json

Fork inheritance lineage and inherited audits are included when available.
