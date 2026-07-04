# Agentic Audit Brief: Spectra

## Project Overview

- Project: Spectra (`spectra`)
- Website: [https://www.spectra.finance](https://www.spectra.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.463Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: arbitrum, avalanche, base, bsc, ethereum, hyperliquid, optimism, sonic
- Contract surface: 960 unique implementations (1087 raw deployments)
- DeFi Llama TVL: $41,523,304.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 163 project-authored contract(s) across 8 chain(s); 19 ERC4626 vaults, 28 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (proxy, erc20permitupgradeable, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 1087; live-surface contracts included: 1087 (200 live, 887 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/65 (13.8%)
- Deployed-live implementations: 73 of 960 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/73
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 887
- Unique implementations: 960
- Raw deployments: 1087
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 12.3% (Code4rena, Sherlock)

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
| BridgeGatekeeper | operational_periphery | base | n/a | 3 deployments: base [`0x1e0eb1...ca9b4c`](./contracts/base-8453/0x1e0eb1a41bd39a382bae176508d9c21e07ca9b4c/); arbitrum `0x260570...9ea42e`; avalanche `0x94570b...0a178e` | ✅ Audited |
| CampaignManager | core_logic | optimism | n/a | [`0xacfee9...ac04fd`](./contracts/optimism-10/0xacfee9a21fc48040f12793bd5a478dd155ac04fd/) | ✅ Audited |
| CampaignManager | core_logic | base | n/a | [`0x392fca...dd2954`](./contracts/base-8453/0x392fca63e58c1870fbec04eb6518a75703dd2954/) | ✅ Audited |
| CampaignManager | core_logic | arbitrum | n/a | [`0x06c030...efff4d`](./contracts/arbitrum-42161/0x06c03069de266f58d10a0724a4f65c3d4fefff4d/) | ✅ Audited |
| CampaignManagerMainnet | core_logic | ethereum | n/a | [`0x38b9b4...21786c`](./contracts/ethereum-1/0x38b9b4884a5581e96ed3882aa2f7449bc321786c/) | ✅ Audited |
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
| Delay | unknown | base | n/a | 2 deployments: base [`0xacf339...516602`](./contracts/base-8453/0xacf33983cab5f9e914e6a93a2f4d531b5c516602/); base `0xda41a0...7812f7` | ⚠️ Unaudited |
| DelayOnlyDeployer | unknown | arbitrum | n/a | 4 deployments: ethereum `0xc63498...764bc3`; base `0xf342a2...437427`; arbitrum [`0x0aa76e...adc2e6`](./contracts/arbitrum-42161/0x0aa76e6bc1bad6565565b33d0962db02b2adc2e6/); avalanche `0x41a795...ba7003` | ⚠️ Unaudited |
| DiamondMultiInit | unknown | base | n/a | [`0xbe419a...003508`](./contracts/base-8453/0xbe419ac6a0fedb7ff6db498d2a57692c1b003508/) | ⚠️ Unaudited |
| DutchAuction | unknown | arbitrum | n/a | 15 deployments: ethereum `0x859498...f2408f`; ethereum `0xa4a9f8...3bf531`; ethereum `0xacf339...516602`; ethereum `0xed96d8...86adea`; ethereum `0xee84b9...a09536`; base `0x353e94...f174a3`; base `0x4b6290...c77cb6`; base `0xfd3434...a96a3e`; arbitrum [`0x0712c2...73aef9`](./contracts/arbitrum-42161/0x0712c296dd10fc5140421c7b59da9311ef73aef9/); arbitrum `0x1cca0f...0e6806`; arbitrum `0xe5ddbc...e66f27`; avalanche `0x62ccb8...531c41`; avalanche `0x985ddf...2d7e2d`; avalanche `0xd77ff4...abadf9`; avalanche `0xed96d8...86adea` | ⚠️ Unaudited |
| FlashloanModule | unknown | base | n/a | [`0xaf56ba...36d388`](./contracts/base-8453/0xaf56bac99b34d6014e196bfbb924437e0236d388/) | ⚠️ Unaudited |
| FunctionManagerModule | governance | base | n/a | [`0x5b5285...9fe94b`](./contracts/base-8453/0x5b5285a3882a4f3d37ca09088c379cabe39fe94b/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xdbbfc0...2de9e7`](./contracts/ethereum-1/0xdbbfc051d200438dd5847b093b22484b842de9e7/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | n/a | [`0xf8576b...156470`](./contracts/optimism-10/0xf8576b3830fa131bbd39da1e97fbb24864156470/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | 2 deployments: base [`0x5e93e1...429b9a`](./contracts/base-8453/0x5e93e1193a5e297cba0856e9b3f22b6e05429b9a/); base `0xe59d75...02cc7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0x417c59...8fe381`](./contracts/arbitrum-42161/0x417c5997fc9f1fd341742c71de9b1908028fe381/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | ethereum | n/a | [`0xe59d75...02cc7c`](./contracts/ethereum-1/0xe59d75c87ed608e4f5f22c9f9affb7b6fd02cc7c/) | ⚠️ Unaudited |
| KarakDepositor | unknown | ethereum | n/a | [`0x5cf40c...b74772`](./contracts/ethereum-1/0x5cf40cc1056225d38c87d68c83178315f4b74772/) | ⚠️ Unaudited |
| KyberSwapModule | unknown | base | n/a | [`0xc4c708...3cb0c9`](./contracts/base-8453/0xc4c70800eb6d7f91cfbc6674eb72dcf5213cb0c9/) | ⚠️ Unaudited |
| LimitOrderModule | unknown | base | n/a | [`0x67d940...c5deb5`](./contracts/base-8453/0x67d940439b608b18d2aa73e14c0e64b297c5deb5/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | ethereum | n/a | [`0x0064be...7b0ca5`](./contracts/ethereum-1/0x0064be65c84712fae8c2fa6a257fe9cd9c7b0ca5/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | base | n/a | 2 deployments: base [`0x4fca14...a3e58c`](./contracts/base-8453/0x4fca141cd17158296b9c4e1ec304232d20a3e58c/); base `0xdc19e4...617591` | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | base | n/a | [`0xacf374...dc23b2`](./contracts/base-8453/0xacf374b06c0ef22dcf40c69618737fb26ddc23b2/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | arbitrum | n/a | [`0x11900f...f1289c`](./contracts/arbitrum-42161/0x11900f417357c947639cc059da116d2cb2f1289c/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | arbitrum | n/a | [`0x5128b9...72889d`](./contracts/arbitrum-42161/0x5128b9c466270fe44a8baf2bc6e035cd2272889d/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | avalanche | n/a | [`0x0064be...7b0ca5`](./contracts/avalanche-43114/0x0064be65c84712fae8c2fa6a257fe9cd9c7b0ca5/) | ⚠️ Unaudited |
| MetavaultCurveLiquidityZap | adapter | avalanche | n/a | [`0xac3dea...2c5aa0`](./contracts/avalanche-43114/0xac3deab251a9c01248fae52e028ef9fbd92c5aa0/) | ⚠️ Unaudited |
| MetavaultPrincipalTokenZap | adapter | base | n/a | 2 deployments: base [`0x0c95de...b3992f`](./contracts/base-8453/0x0c95de2c03a4bd4efaeae697d7ff897a1bb3992f/); base `0x967639...e8e447` | ⚠️ Unaudited |
| PreviewCommandsModule | unknown | base | n/a | [`0x4b8fdc...4f5b89`](./contracts/base-8453/0x4b8fdcd4bdc9af9be1ad67070c7520b07a4f5b89/) | ⚠️ Unaudited |
| PriceFeedCurveLPTAssetSNG | operational_periphery | hyperliquid | n/a | [`0x7f7760...6eecfd`](./contracts/hyperliquid-999/0x7f7760dd8868aedc03128fa3709a04f0b96eecfd/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | ethereum | n/a | [`0x176d64...78a300`](./contracts/ethereum-1/0x176d64576aca651e15973e77c2eb7f5ad178a300/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | optimism | n/a | [`0x0fc2fb...c59532`](./contracts/optimism-10/0x0fc2fbd3e8391744426c8be5228b668481c59532/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | hyperliquid | n/a | [`0xd89fc4...d8c18c`](./contracts/hyperliquid-999/0xd89fc47aacbb31e2bf23ec599f593a4876d8c18c/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | base | n/a | [`0x28f55f...03fc48`](./contracts/base-8453/0x28f55fd5418422bf2265730dca5089056e03fc48/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | arbitrum | n/a | [`0x06c910...a00a7f`](./contracts/arbitrum-42161/0x06c910f853d7a7962f4da625f1b6758f86a00a7f/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetBounded | operational_periphery | avalanche | n/a | [`0x927d93...525260`](./contracts/avalanche-43114/0x927d931a3cab152ab9e0a98fe10fcc4b91525260/) | ⚠️ Unaudited |
| PriceFeedCurvePTAssetSNG | operational_periphery | hyperliquid | n/a | [`0xa3eea1...ca445d`](./contracts/hyperliquid-999/0xa3eea13183421c9a8bda0bdee191b70de8ca445d/) | ⚠️ Unaudited |
| PriceFeedCurvePTIBTSNG | operational_periphery | hyperliquid | n/a | [`0x54a1e5...fa16c0`](./contracts/hyperliquid-999/0x54a1e56176139a963d7582fa9d0da3b0aefa16c0/) | ⚠️ Unaudited |
| PriceFeedCurveYTAssetSNG | operational_periphery | hyperliquid | n/a | [`0xf93149...bca505`](./contracts/hyperliquid-999/0xf93149b2d237bf2d4230231d005cd5830cbca505/) | ⚠️ Unaudited |
| PrincipalTokenModule | token | base | n/a | [`0xd8f4c8...cb1d99`](./contracts/base-8453/0xd8f4c8686fe26ee2910fbfc62e173e12e1cb1d99/) | ⚠️ Unaudited |
| RateAdjustmentOracle | operational_periphery | hyperliquid | n/a | 2 deployments: bsc `0xaa055f...ced561`; hyperliquid [`0x916cd5...3b46e7`](./contracts/hyperliquid-999/0x916cd56a5fbbeae186f488f4db83b00c103b46e7/) | ⚠️ Unaudited |
| ReceiverLock | unknown | arbitrum | n/a | 15 deployments: ethereum `0x56f4db...f216fc`; ethereum `0x6420a6...473bf1`; ethereum `0x9a3713...48143b`; ethereum `0xda41a0...7812f7`; ethereum `0xf97912...24cacc`; base `0x6c439a...02b35a`; base `0xbdb1a4...d03efc`; base `0xc92588...eb3fc5`; arbitrum [`0x171d15...8f3aef`](./contracts/arbitrum-42161/0x171d15998b7edf865c1323e4fcdd28c1a58f3aef/); arbitrum `0x54d709...1e1eb8`; arbitrum `0xeaaf5a...0b9eee`; avalanche `0x6420a6...473bf1`; avalanche `0x94b8c8...b4ed3c`; avalanche `0x9de39e...e9b2ef`; avalanche `0xf689a7...dbfe94` | ⚠️ Unaudited |
| RegistryManagerModule | registry | base | n/a | [`0x286a63...7be687`](./contracts/base-8453/0x286a6322525d6ffcc836be1e916553bbdd7be687/) | ⚠️ Unaudited |
| RegistryV2Deployer | registry | base | n/a | 4 deployments: ethereum `0x4d4cbd...868ea0`; base [`0x00cd68...89a53d`](./contracts/base-8453/0x00cd6829b5df2cf4a757d690fdcedb3f3a89a53d/); arbitrum `0xb01d18...080cd2`; avalanche `0x49015f...5a1a7a` | ⚠️ Unaudited |
| Roles | unknown | base | n/a | 2 deployments: base [`0x33fd28...41e057`](./contracts/base-8453/0x33fd28ef056dfec22a84ab2d66a60ace9b41e057/); base `0x36e22e...9d9bba` | ⚠️ Unaudited |
| RolesOnlyDeployer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d4dab...3cd33d`](./contracts/ethereum-1/0x0d4dabee88297363116e609797bd4691203cd33d/); base `0xc99043...aca8c1`; arbitrum `0xf345af...21f463`; avalanche `0xe65aeb...3ab82f` | ⚠️ Unaudited |
| SafeDeployer | unknown | arbitrum | n/a | 5 deployments: ethereum `0xc4f6d6...927d63`; ethereum `0xfc1b40...15201a`; base `0xd6c5e1...02a057`; arbitrum [`0xb7b7a6...fc345d`](./contracts/arbitrum-42161/0xb7b7a698cf0290910045f976f060fd0919fc345d/); avalanche `0xf35f63...b89e00` | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | n/a | [`0x589269...1db6c2`](./contracts/sonic-146/0x589269998df4d7d16351aa2ff996486aec1db6c2/) | ⚠️ Unaudited |
| SafeSetupHelper | periphery | base | n/a | 5 deployments: ethereum `0x4f5139...ef23e4`; ethereum `0xf2d266...2d5ab4`; base [`0x34a158...f2f217`](./contracts/base-8453/0x34a1580ad0db0a009d4392af37ac49eba1f2f217/); arbitrum `0xcb61f6...5af793`; avalanche `0xf85a6c...528529` | ⚠️ Unaudited |
| SeedVaultDeployer | core_logic | avalanche | n/a | 4 deployments: ethereum `0xf3a5e0...79a6af`; base `0x4c29d4...175f1f`; arbitrum `0xb2aadc...dcf325`; avalanche [`0x3651f0...beb6da`](./contracts/avalanche-43114/0x3651f0e6256f6f9115169f86b1ed446b8cbeb6da/) | ⚠️ Unaudited |
| SpectraWrappedBedrockUniBTC | unknown | ethereum | n/a | [`0xbde752...7eb254`](./contracts/ethereum-1/0xbde752ef69880c00a795d88438040b8f737eb254/) | ⚠️ Unaudited |
| SpectraWrappedBedrockUniETH | unknown | ethereum | n/a | [`0x248f43...619cd5`](./contracts/ethereum-1/0x248f43b622ce2f35a14db3fc528284730b619cd5/) | ⚠️ Unaudited |
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

### ❓ Unverified (887)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000ba1...859e61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03e2ec...b13f96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0458c0...949eb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ec86...b4e106` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x069cf0...1eed21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06c030...efff4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06c910...a00a7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07766e...dbbf39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09e85a...3c7380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b26d0...aee1e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c95de...b3992f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eeefe...0c755b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc2fb...c59532` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc8e6...c00a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x100f22...c9fa79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1060e1...98f9bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11900f...f1289c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x126fc5...03dfa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15e4f4...303bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b282...e1f6b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x182110...a842d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a2f79...951c3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5ecc...b0f1d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c77c5...178d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ddda4...d8046d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x214c04...52e112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2151c8...17118f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2154a5...424bbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x221598...7b9381` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22af2e...95f69c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x242edf...216052` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x270188...2b4f54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c06c9...b1b947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x303478...74da22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33fd28...41e057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x392fca...dd2954` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3945ce...8b8bf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc95e...08e57d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3be73e...f9e3ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d2060...b69f1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7244...208832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd0e7...08bd3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x414a78...750e08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x442577...dfdb17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x442785...47ebb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x451113...e0dbc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45f29a...f69fc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46500e...ca7e9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a9b7...e48eea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dd254...90f992` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9157...d129cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe89c...16de70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5291af...c16653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5342f3...b4dfb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5390d7...032abe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54a1e5...fa16c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5828c5...e9ee8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dc65e...e63cf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebe0a...c0ba32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63d5dd...29eade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x648220...1b8adb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65cd78...306acc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68b42e...e026ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x690700...11670e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a8922...2b478b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x710f6b...f5285d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7256ef...961aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73b4ff...a437d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7672bc...8ff5fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76918d...ecc17a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bbc8b...846422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dcdea...4c00dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e32f4...da6e30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81b474...1c31d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82765f...668805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82f838...352967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c272...d5bd9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83ff56...a0bf85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ac719...94c639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9093...28c521` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9055eb...1c62d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90f584...efe38a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x916cd5...3b46e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x927d93...525260` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x928d0c...1c2ad2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x930993...3d551f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94570b...0a178e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x947de5...a0de21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x948990...75f3a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c594c...4c3e7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d9cf8...8ed888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e6ff9...84c7a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eabc4...001b4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3a724...f1aacb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d7cb...787fe8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa76f6a...7139c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa94ec3...f67ca7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9c6a0...d9c3e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa055f...ced561` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacfee9...ac04fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae4d5d...91abc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaebaa0...96f362` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaee874...81d01d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3d020...0c4b44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6cded...5f8628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb77f1a...cc30f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7c5eb...82bf46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb828b2...ca16b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb959b7...17db22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb024f...adc7a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb372e...547aeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdec3d...896b7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe6271...560bff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc03309...e28e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4dc44...3a37f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc86952...247d5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc92330...5fc4ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc99a0d...1caaf9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbe00e...c149de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd4954...851d0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd142c8...54d2da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd187cb...52d4a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f0f2...5aa7c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd598ad...f7bc32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd68839...2b28a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89fc4...d8c18c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9c821...f145d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb895a...55bac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe5b6...aa8d84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc19e4...617591` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc8ab6...6d75c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcffdd...8329de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd200a...82d42a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfcfdf...f8d5a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3b7aa...6e42a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe644cf...baa3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe78c64...c6991e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeab93e...32a99d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb4d6c...a6d63f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefda9a...9dc13d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04f67...3bc2a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0be13...0ba3d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0db34...ec87ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf19eaa...2b5420` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf75b27...3745c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf93149...bca505` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcb46d...547f96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcd0d6...44c615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfeb5cb...1cbdeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff2dde...668847` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0458c0...949eb1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x050d38...d1aa1d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x06c030...efff4d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09c9bc...92538d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b26d0...aee1e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0fc8e6...c00a97` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x124691...ec6d52` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1c5ecc...b0f1d9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1c77c5...178d2f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x303478...74da22` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3945ce...8b8bf5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x442785...47ebb0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4fe89c...16de70` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x511005...0fdb60` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x54a1e5...fa16c0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x648220...1b8adb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x64f20b...b3f6ed` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x690700...11670e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6bd93e...47bbf9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x71c709...f53033` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7dcdea...4c00dc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x823d4d...adf535` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x82f838...352967` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x916cd5...3b46e7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x93f6fe...7c240c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9c594c...4c3e7c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa465b3...f394e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa76f6a...7139c5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa94ec3...f67ca7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xae4d5d...91abc8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb7c5eb...82bf46` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbde752...7eb254` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc4dc44...3a37f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc86952...247d5f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd142c8...54d2da` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd89fc4...d8c18c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe9b114...1bea0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x050d38...d1aa1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09c9bc...92538d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c77c5...178d2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29ccc6...878f63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bc95e...08e57d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3da466...9f015d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43922c...9aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511005...0fdb60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cf40c...b74772` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64f20b...b3f6ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71c709...f53033` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7256ef...961aac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7760...6eecfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a3a92...d07d99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ac719...94c639` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x948990...75f3a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3a724...f1aacb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae4d5d...91abc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7c5eb...82bf46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9bcac...8c7ca2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc86952...247d5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd4954...851d0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd142c8...54d2da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeab93e...32a99d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec1a51...44e775` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf41e...bea955` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x03e2ec...b13f96` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x04ec86...b4e106` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x06c030...efff4d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0fc8e6...c00a97` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x100f22...c9fa79` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x124691...ec6d52` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c5ecc...b0f1d9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2c06c9...b1b947` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x303478...74da22` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x392fca...dd2954` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3bc95e...08e57d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3d2060...b69f1a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3da466...9f015d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x442785...47ebb0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4fe89c...16de70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x511005...0fdb60` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5390d7...032abe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x54a1e5...fa16c0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ade7c...638480` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5cf40c...b74772` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x648220...1b8adb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x64f20b...b3f6ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x690700...11670e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a8922...2b478b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6bd93e...47bbf9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x71c709...f53033` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7dcdea...4c00dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7e32f4...da6e30` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7f7760...6eecfd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x823d4d...adf535` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f2ce1...02c3b8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x90f584...efe38a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x916cd5...3b46e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x948990...75f3a5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9e6ff9...84c7a8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa3a724...f1aacb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa3eea1...ca445d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa94ec3...f67ca7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xacfee9...ac04fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb7292f...df7318` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb77f1a...cc30f8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba4f8e...b66ccd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbde752...7eb254` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe6271...560bff` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4dc44...3a37f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc90927...ccd0f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcb671f...e9d3fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcd4954...851d0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd89fc4...d8c18c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdd200a...82d42a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe3288e...68bcaf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeab93e...32a99d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf0db34...ec87ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf93149...bca505` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfbf41e...bea955` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x050d38...d1aa1d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x09c9bc...92538d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0b26d0...aee1e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0b553e...c24ba3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x124691...ec6d52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x303478...74da22` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x392fca...dd2954` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3945ce...8b8bf5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3da466...9f015d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4b6e7f...f6eeff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5390d7...032abe` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c8680...771b95` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x64f20b...b3f6ed` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x690700...11670e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6bd93e...47bbf9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6fd134...698295` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x71c709...f53033` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x82f838...352967` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8f2ce1...02c3b8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x90f584...efe38a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9c594c...4c3e7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb7292f...df7318` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xba4f8e...b66ccd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc4dc44...3a37f1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc86952...247d5f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcd4954...851d0b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd142c8...54d2da` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd187cb...52d4a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3288e...68bcaf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe5cd77...111422` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa7738...7f3b97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x000ba1...859e61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x004134...bcfaa0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0064be...7b0ca5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x032b7c...049c96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03e2ec...b13f96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x050d38...d1aa1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06c910...a00a7f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07766e...dbbf39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07b662...3669e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09c9bc...92538d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09e85a...3c7380` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09fd89...b7b29a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f0620...fc0d5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fc2fb...c59532` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fc8e6...c00a97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fee4d...be36bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100f22...c9fa79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x113f79...4ac66e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x115e6a...8e1adf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11900f...f1289c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126fc5...03dfa0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x159eb2...a392af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15e4f4...303bc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x160135...82b07f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16b282...e1f6b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x176017...da33bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b18b2...1c384a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20de43...4a41dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x214c04...52e112` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2154a5...424bbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2195bf...79bebe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x220b82...770c75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2243b9...5ec20c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22af2e...95f69c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2679db...9135d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x270188...2b4f54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29ccc6...878f63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2bb1d7...92ab9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e9680...9afb3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fc51e...332a91` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x300645...a1ac1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x301583...bf05f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x303478...74da22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x308c7f...e0363a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3945ce...8b8bf5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39c987...98c5d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b0feb...41daf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3bc95e...08e57d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d2060...b69f1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3da466...9f015d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3dd0e7...08bd3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e068d...0f1f80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x414a78...750e08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43922c...9aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43fde1...3b0494` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x442785...47ebb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x451113...e0dbc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46500e...ca7e9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dd254...90f992` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4fcbe3...22f5c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4fe89c...16de70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x510c6c...25103d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x511005...0fdb60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52d674...384765` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5390d7...032abe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53cb49...5da89e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54a1e5...fa16c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5828c5...e9ee8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ad51e...47a963` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dc65e...e63cf5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ebe0a...c0ba32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x624265...16f938` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6292b8...c28879` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63d5dd...29eade` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6420a6...473bf1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64f20b...b3f6ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68b42e...e026ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x690700...11670e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x697f38...4e987a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a426f...9c1f63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a8922...2b478b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6acf5a...227e11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bd93e...47bbf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71c709...f53033` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7256ef...961aac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7296fd...d4b3d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x74782b...3f1c27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7672bc...8ff5fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x776f95...8da69a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x782cb7...619e3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79de3f...000178` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bb763...101fcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bbc8b...846422` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bce9d...ab09ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d0765...bea0df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d0bc8...4f4789` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d85f4...34f118` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e32f4...da6e30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb517...6d89ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f7760...6eecfd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81fcec...104955` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82765f...668805` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83c272...d5bd9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85c884...a204f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85ffed...bf60ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x864910...75c41b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87ae30...8e1d72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a3a92...d07d99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ac719...94c639` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c4f97...588216` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8cecf6...e9c0a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9055eb...1c62d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90f584...efe38a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x910a79...546310` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x916cd5...3b46e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x927d93...525260` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x930993...3d551f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x947de5...a0de21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x948990...75f3a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94c5d4...c90691` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x956bd1...e4f90c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x974601...0e6c28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bae29...107afe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bf01a...233778` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c68e7...641513` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9eaed4...0667f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa26bd3...3b1c8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2c9da...031ac1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3429b...15c8f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3a724...f1aacb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3eea1...ca445d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6d7cb...787fe8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7ace8...f4ff57` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9c6a0...d9c3e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa055f...ced561` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab2d76...98f1dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac77de...e7a215` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xacfee9...ac04fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae4d5d...91abc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaee874...81d01d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4b38a...455262` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb678f9...bf47f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6cded...5f8628` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb77f8d...a9eabb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7c5eb...82bf46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb828b2...ca16b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9bcac...8c7ca2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb024f...adc7a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbde752...7eb254` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdec3d...896b7f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe6271...560bff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf4b8f...90e3b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc02351...e6a263` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc03309...e28e6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc21f71...12039e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc62734...3fbaa1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc83600...37c8eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc86952...247d5f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc92330...5fc4ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbe00e...c149de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd4954...851d0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcfb722...60cb40` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd142c8...54d2da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2787c...907e2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3f0f2...5aa7c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd598ad...f7bc32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd68839...2b28a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd89fc4...d8c18c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xda6764...5af1fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdafdb5...10595b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb895a...55bac5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdbe5b6...aa8d84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcffdd...8329de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd200a...82d42a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddc345...c3a774` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdddf52...f3ed5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde1532...11ee88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8c393...da8481` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8e279...9519a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeab93e...32a99d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb4d6c...a6d63f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec1a51...44e775` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed9cf8...9bf56d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef2720...7115bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf05c58...febb60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0be13...0ba3d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0db34...ec87ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf508f0...5871fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf93149...bca505` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9fe84...123259` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbf41e...bea955` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00ff13...042fc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03e2ec...b13f96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07766e...dbbf39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x078ee6...1ffd39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b26d0...aee1e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c95de...b3992f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fc8e6...c00a97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x100f22...c9fa79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11a98b...7082dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x126fc5...03dfa0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15e4f4...303bc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c5ecc...b0f1d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2154a5...424bbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24b770...d546ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29ccc6...878f63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a67d0...34cea9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c06c9...b1b947` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ca49d...53e7d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x303478...74da22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38f021...6ee76a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x392fca...dd2954` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bc95e...08e57d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d2060...b69f1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3da466...9f015d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43922c...9aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x442785...47ebb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45222d...ac3eb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fe89c...16de70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50500c...b05cb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x511005...0fdb60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5390d7...032abe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54a1e5...fa16c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5630c3...66b884` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ade7c...638480` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cf40c...b74772` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61bc0f...172e02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6417fc...3ee847` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67022f...578c9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x690700...11670e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x696c3c...2a2654` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a8922...2b478b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6bd93e...47bbf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7256ef...961aac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76918d...ecc17a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79d6f8...802196` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc327...baeba5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dcdea...4c00dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e32f4...da6e30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87ae30...8e1d72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a3a92...d07d99` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9055eb...1c62d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x916cd5...3b46e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92286e...0533cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x948990...75f3a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b7d59...aa7107` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e6ff9...84c7a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa048dd...4d1979` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0a6a0...4b76a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2e1ff...6c9d3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa355dd...c560be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac77e0...ca9e02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacfee9...ac04fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae4d5d...91abc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6cded...5f8628` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7292f...df7318` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb77f1a...cc30f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9bcac...8c7ca2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbde752...7eb254` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4dc44...3a37f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8c935...2e524c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb4df3...38fd97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcdd85d...cf7b06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0d11e...7e36f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3f0f2...5aa7c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd89fc4...d8c18c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb895a...55bac5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc19e4...617591` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd200a...82d42a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfcfdf...f8d5a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3288e...68bcaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeab93e...32a99d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec1a51...44e775` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0be13...0ba3d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf19eaa...2b5420` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf93149...bca505` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcb46d...547f96` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x050d38...d1aa1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07766e...dbbf39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09c9bc...92538d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c1105...1a9b3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c95de...b3992f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11900f...f1289c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x126fc5...03dfa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1423b3...e25f95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16b282...e1f6b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x174a1f...799d33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17bd67...4bf607` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a86fc...eb875a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c77c5...178d2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1dd8bb...22e32a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2154a5...424bbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29ccc6...878f63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2bbd14...6f1983` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c869c...f776c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fd28...41e057` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37f11e...139e5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x383047...397548` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bc95e...08e57d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c4c39...a97934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3da466...9f015d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x43922c...9aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x46c762...0d8e21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47a9b7...e48eea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x511005...0fdb60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51bdbf...142ecc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5342f3...b4dfb8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5620cd...7efdda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b3ac3...a3c6e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5cf40c...b74772` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6483f3...63f481` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64f20b...b3f6ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71c709...f53033` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7256ef...961aac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73f9dd...4b49b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7458a4...94bd3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x76918d...ecc17a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x786a2c...f33f65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7be591...67da29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f7760...6eecfd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x838e86...7592f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844691...815302` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a3a92...d07d99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a697a...703dfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ac719...94c639` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f1b5c...a73e2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x948990...75f3a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x980cea...4059af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e496a...5bb506` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3a724...f1aacb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa54a3f...a6002a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa784a2...095dda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac77de...e7a215` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xacf339...516602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae4d5d...91abc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6cded...5f8628` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7292f...df7318` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7c5eb...82bf46` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9bcac...8c7ca2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbde752...7eb254` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdec3d...896b7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc86952...247d5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd4954...851d0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd142c8...54d2da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda41a0...7812f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdb895a...55bac5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc19e4...617591` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdceb3f...1e6bc1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdd200a...82d42a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfcfdf...f8d5a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3288e...68bcaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe36568...8d4385` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe38d08...598f46` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeab93e...32a99d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xebb617...f3f7f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec1a51...44e775` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0be13...0ba3d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfbf41e...bea955` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfcb46d...547f96` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfcd0d6...44c615` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Spectra-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Spectra-security-review.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf](https://1608032478-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSE6NakmHsqUzyells7H%2Fuploads%2FoaRoctf29lEXC7Gi2dy6%2FMetaVault%20-%20Spectra%20Finance%20Audit%20-%20Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | 2 | n/a |
| [spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf](https://1608032478-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSE6NakmHsqUzyells7H%2Fuploads%2FvuzYJLjktAmIGOhM9sKL%2FMetaVault%20Bridge%20-%20Spectra%20Finance%20Audit%20-%20Sherlock.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | 2 | n/a |
| [code4rena.com/reports/2024-02-spectra](https://code4rena.com/reports/2024-02-spectra) | Code4rena | Contest | 2024-02 | stale | Direct | contract_name | 5 | n/a |
| [4naly3er-report.md](https://github.com/code-423n4/2024-02-spectra/blob/main/4naly3er-report.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | 5 | n/a |
| [bot-report.json](https://github.com/code-423n4/2024-02-spectra/blob/main/bot-report.json) | bot | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bot-report.md](https://github.com/code-423n4/2024-02-spectra/blob/main/bot-report.md) | bot | Audit | n/a | unknown | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x071350...6ce0a0`](./contracts/hyperliquid-999/0x071350a9ee4d153c272fc75ea9557372eb6ce0a0/) | AccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c3bca...7563ba`](./contracts/avalanche-43114/0x0c3bca65854e1857c31d273097114006d97563ba/) | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4bfa6a...11c339`](./contracts/arbitrum-42161/0x4bfa6a074c7570946548b565ec047a96fe11c339/) | BridgeInterfaceCCTP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2f1d40...aff748`](./contracts/avalanche-43114/0x2f1d40016cad2fa0dbe4a505616ed42315aff748/) | BridgeInterfaceCondition | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1fc815...1bbf33`](./contracts/avalanche-43114/0x1fc815dd99e3fc3495ce76a255092c98b71bbf33/) | BridgeInterfaceDeBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdb4d50...7d96bd`](./contracts/base-8453/0xdb4d5091df24c79ed281d74d333626947d7d96bd/) | CommandsModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xacf339...516602`](./contracts/base-8453/0xacf33983cab5f9e914e6a93a2f4d531b5c516602/) | Delay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aa76e...adc2e6`](./contracts/arbitrum-42161/0x0aa76e6bc1bad6565565b33d0962db02b2adc2e6/) | DelayOnlyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe419a...003508`](./contracts/base-8453/0xbe419ac6a0fedb7ff6db498d2a57692c1b003508/) | DiamondMultiInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0712c2...73aef9`](./contracts/arbitrum-42161/0x0712c296dd10fc5140421c7b59da9311ef73aef9/) | DutchAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaf56ba...36d388`](./contracts/base-8453/0xaf56bac99b34d6014e196bfbb924437e0236d388/) | FlashloanModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b5285...9fe94b`](./contracts/base-8453/0x5b5285a3882a4f3d37ca09088c379cabe39fe94b/) | FunctionManagerModule | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cf40c...b74772`](./contracts/ethereum-1/0x5cf40cc1056225d38c87d68c83178315f4b74772/) | KarakDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc4c708...3cb0c9`](./contracts/base-8453/0xc4c70800eb6d7f91cfbc6674eb72dcf5213cb0c9/) | KyberSwapModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x67d940...c5deb5`](./contracts/base-8453/0x67d940439b608b18d2aa73e14c0e64b297c5deb5/) | LimitOrderModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0064be...7b0ca5`](./contracts/ethereum-1/0x0064be65c84712fae8c2fa6a257fe9cd9c7b0ca5/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4fca14...a3e58c`](./contracts/base-8453/0x4fca141cd17158296b9c4e1ec304232d20a3e58c/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xacf374...dc23b2`](./contracts/base-8453/0xacf374b06c0ef22dcf40c69618737fb26ddc23b2/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11900f...f1289c`](./contracts/arbitrum-42161/0x11900f417357c947639cc059da116d2cb2f1289c/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5128b9...72889d`](./contracts/arbitrum-42161/0x5128b9c466270fe44a8baf2bc6e035cd2272889d/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0064be...7b0ca5`](./contracts/avalanche-43114/0x0064be65c84712fae8c2fa6a257fe9cd9c7b0ca5/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xac3dea...2c5aa0`](./contracts/avalanche-43114/0xac3deab251a9c01248fae52e028ef9fbd92c5aa0/) | MetavaultCurveLiquidityZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c95de...b3992f`](./contracts/base-8453/0x0c95de2c03a4bd4efaeae697d7ff897a1bb3992f/) | MetavaultPrincipalTokenZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4b8fdc...4f5b89`](./contracts/base-8453/0x4b8fdcd4bdc9af9be1ad67070c7520b07a4f5b89/) | PreviewCommandsModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7f7760...6eecfd`](./contracts/hyperliquid-999/0x7f7760dd8868aedc03128fa3709a04f0b96eecfd/) | PriceFeedCurveLPTAssetSNG | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176d64...78a300`](./contracts/ethereum-1/0x176d64576aca651e15973e77c2eb7f5ad178a300/) | PriceFeedCurvePTAssetBounded | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0fc2fb...c59532`](./contracts/optimism-10/0x0fc2fbd3e8391744426c8be5228b668481c59532/) | PriceFeedCurvePTAssetBounded | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd89fc4...d8c18c`](./contracts/hyperliquid-999/0xd89fc47aacbb31e2bf23ec599f593a4876d8c18c/) | PriceFeedCurvePTAssetBounded | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x28f55f...03fc48`](./contracts/base-8453/0x28f55fd5418422bf2265730dca5089056e03fc48/) | PriceFeedCurvePTAssetBounded | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06c910...a00a7f`](./contracts/arbitrum-42161/0x06c910f853d7a7962f4da625f1b6758f86a00a7f/) | PriceFeedCurvePTAssetBounded | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x927d93...525260`](./contracts/avalanche-43114/0x927d931a3cab152ab9e0a98fe10fcc4b91525260/) | PriceFeedCurvePTAssetBounded | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa3eea1...ca445d`](./contracts/hyperliquid-999/0xa3eea13183421c9a8bda0bdee191b70de8ca445d/) | PriceFeedCurvePTAssetSNG | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x54a1e5...fa16c0`](./contracts/hyperliquid-999/0x54a1e56176139a963d7582fa9d0da3b0aefa16c0/) | PriceFeedCurvePTIBTSNG | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xf93149...bca505`](./contracts/hyperliquid-999/0xf93149b2d237bf2d4230231d005cd5830cbca505/) | PriceFeedCurveYTAssetSNG | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd8f4c8...cb1d99`](./contracts/base-8453/0xd8f4c8686fe26ee2910fbfc62e173e12e1cb1d99/) | PrincipalTokenModule | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x916cd5...3b46e7`](./contracts/hyperliquid-999/0x916cd56a5fbbeae186f488f4db83b00c103b46e7/) | RateAdjustmentOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x171d15...8f3aef`](./contracts/arbitrum-42161/0x171d15998b7edf865c1323e4fcdd28c1a58f3aef/) | ReceiverLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x286a63...7be687`](./contracts/base-8453/0x286a6322525d6ffcc836be1e916553bbdd7be687/) | RegistryManagerModule | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00cd68...89a53d`](./contracts/base-8453/0x00cd6829b5df2cf4a757d690fdcedb3f3a89a53d/) | RegistryV2Deployer | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33fd28...41e057`](./contracts/base-8453/0x33fd28ef056dfec22a84ab2d66a60ace9b41e057/) | Roles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d4dab...3cd33d`](./contracts/ethereum-1/0x0d4dabee88297363116e609797bd4691203cd33d/) | RolesOnlyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb7b7a6...fc345d`](./contracts/arbitrum-42161/0xb7b7a698cf0290910045f976f060fd0919fc345d/) | SafeDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x34a158...f2f217`](./contracts/base-8453/0x34a1580ad0db0a009d4392af37ac49eba1f2f217/) | SafeSetupHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3651f0...beb6da`](./contracts/avalanche-43114/0x3651f0e6256f6f9115169f86b1ed446b8cbeb6da/) | SeedVaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbde752...7eb254`](./contracts/ethereum-1/0xbde752ef69880c00a795d88438040b8f737eb254/) | SpectraWrappedBedrockUniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x248f43...619cd5`](./contracts/ethereum-1/0x248f43b622ce2f35a14db3fc528284730b619cd5/) | SpectraWrappedBedrockUniETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb7c5eb...82bf46`](./contracts/hyperliquid-999/0xb7c5eb1271432f725a8f182dc00eaee13982bf46/) | SpectraWrappedMidasVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x442785...47ebb0`](./contracts/hyperliquid-999/0x4427855b3d9d0a3e931cd6bbdbe4e0f74d47ebb0/) | SpectraWrappedWvlpMidas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd68753...835959`](./contracts/base-8453/0xd687534e1e95da982dd1766e93192560ac835959/) | StellarBridgeModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430202...437009`](./contracts/ethereum-1/0x4302023584ff53808e039130d45711c3a5437009/) | SWAuraVaultRewardsProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227ead...b998aa`](./contracts/base-8453/0x227ead1effbfc0fec32fbd2cbbe4cace37b998aa/) | TransferModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa3a724...f1aacb`](./contracts/hyperliquid-999/0xa3a724065b717dc46c024dc52c0aabe5d7f1aacb/) | TwapOracleFactorySNG | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3ec941...78e488`](./contracts/arbitrum-42161/0x3ec941200ccb65d77d33d547d4d234695e78e488/) | VaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c5ecc...b0f1d9`](./contracts/base-8453/0x1c5ecca381961d92b6aaf7bc1656c37021b0f1d9/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a4d55...6749d8`](./contracts/base-8453/0x1a4d55d6f936f9069163fa86e984592ce66749d8/) | WrapperModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d25a4...196651`](./contracts/ethereum-1/0x2d25a4cb310099952eb96a0429966889e7196651/) | ZodiacPipelineDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 887 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=20

Zero-match audit list:

- [11685] bot-report.json

Fork inheritance lineage and inherited audits are included when available.
