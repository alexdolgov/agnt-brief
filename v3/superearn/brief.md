# Agentic Audit Brief: SuperEarn

## Project Overview

- Project: SuperEarn (`superearn`)
- Website: [https://superearn.io/](https://superearn.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.107Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, klaytn
- Contract surface: 127 unique implementations (191 raw deployments)
- DeFi Llama TVL: $11,825,196.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 14 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 3 common project-authored base contract(s) (superearnaccesscontrol, basecooldownstrategy, basestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 191; live-surface contracts included: 187 (120 live, 67 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 38/109 (34.9%)
- Deployed-live implementations: 109 of 127 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 38/109
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 127
- Raw deployments: 191
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 38 match-unverified
- Tier 1 coverage: 19.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 33 | 30.3% | 2026-04 |
| Spearbit | Tier 1 | 21 | 19.3% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetPriceConverter | operational_periphery | ethereum | n/a | [`0xf1ccc5...9c4499`](./contracts/ethereum-1/0xf1ccc5ad12357b63f6b798cd4ae1582da49c4499/) | ✅ Audited |
| BridgeAccountant | operational_periphery | ethereum | n/a | [`0x4be44e...11ac98`](./contracts/ethereum-1/0x4be44e4903d2b00651a03dce2fb76bba5d11ac98/) | ✅ Audited |
| BridgeAccountant | operational_periphery | ethereum | n/a | [`0x8dbf7f...b85328`](./contracts/ethereum-1/0x8dbf7f2fe1d18c1de8853cfe7fa5c03ba7b85328/) | ✅ Audited |
| CooldownVault | core_logic | ethereum | n/a | [`0x1c097d...7ec83c`](./contracts/ethereum-1/0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c/) | ✅ Audited |
| CooldownVault | core_logic | ethereum | n/a | [`0xe0f3c0...cecc50`](./contracts/ethereum-1/0xe0f3c0f56cd0989d0e2ced6327f31f040bcecc50/) | ✅ Audited |
| CooldownVault | core_logic | ethereum | n/a | [`0xffbb37...eda9ac`](./contracts/ethereum-1/0xffbb37093493d49c864e097eeb2b6695f8eda9ac/) | ✅ Audited |
| CrosschainAdapter | adapter | ethereum | n/a | [`0x0095a2...e86a4c`](./contracts/ethereum-1/0x0095a258bdf491fc98009516dba74f780ee86a4c/) | ✅ Audited |
| CrosschainAdapter | adapter | ethereum | n/a | [`0xe8b100...dda272`](./contracts/ethereum-1/0xe8b1009c7bdd3502fea13b2d5a273addb0dda272/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x0277f7...e7a2ce`](./contracts/ethereum-1/0x0277f7e4100ab9ea332af8d695cc85e216e7a2ce/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x35701b...77262e`](./contracts/ethereum-1/0x35701bc7a94a9e37d57324a33d94d3721477262e/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3e92a9...9becc7`](./contracts/ethereum-1/0x3e92a93c7ae3c0d7aca27190b92f0f2db09becc7/); ethereum `0xa77549...6ed3ba` | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x4e3f34...1fc3f5`](./contracts/ethereum-1/0x4e3f34399bf0b92eb8b825ba9fd1ab2b211fc3f5/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x50519a...10f455`](./contracts/ethereum-1/0x50519a3af6c0662134ed7f9a160142d28d10f455/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x63db62...f6d8c0`](./contracts/ethereum-1/0x63db62e1d4e7f2d80730a01b6f4ccbe536f6d8c0/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x6458dd...124b50`](./contracts/ethereum-1/0x6458dd1433a8aed8f90d78da8cbeed150c124b50/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x72301d...724199`](./contracts/ethereum-1/0x72301ddb480d4a11b168f886bd4e766de0724199/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x72bd06...be0488`](./contracts/ethereum-1/0x72bd06f8e2c350359952d8791df280faf6be0488/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x76dffa...0cd8e8`](./contracts/ethereum-1/0x76dffac02b1e319e2fac02a1fc06a34d820cd8e8/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0x947ae1...2a59eb`](./contracts/ethereum-1/0x947ae1c8eaac50da2bd14e3230361f986a2a59eb/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0xcece82...496faa`](./contracts/ethereum-1/0xcece82a34902aa1b7cb6419dbcb2fed893496faa/) | ✅ Audited |
| CustomStrategy | core_logic | ethereum | n/a | [`0xe2c308...3b5ab4`](./contracts/ethereum-1/0xe2c3082df0ea5f3606e7adf6aab1b559a03b5ab4/) | ✅ Audited |
| PendlePTYearnFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3311d2...6bfde8`](./contracts/ethereum-1/0x3311d2a0d88597da3be946aa4d0d112b486bfde8/); ethereum `0x609c17...dd2387`; ethereum `0xa5540e...58e295` | ✅ Audited |
| RemoteVault | core_logic | ethereum | n/a | [`0x8c82b2...faa3b2`](./contracts/ethereum-1/0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2/) | ✅ Audited |
| RemoteVault | core_logic | ethereum | n/a | [`0xde4d0c...16a499`](./contracts/ethereum-1/0xde4d0cb575fb63a720c53188f12e647eab16a499/) | ✅ Audited |
| RemoteVault | core_logic | ethereum | n/a | [`0xe35826...2e4be0`](./contracts/ethereum-1/0xe3582626a1d18358fb431133ee3e6f6a702e4be0/) | ✅ Audited |
| StrategyMorphoV1Vault | core_logic | ethereum | n/a | [`0x1f5b38...ef5a61`](./contracts/ethereum-1/0x1f5b386243c42c7f297f084269b8f85636ef5a61/) | ✅ Audited |
| SuperEarnMessageAgent | unknown | ethereum | n/a | [`0xb4c91a...c0a61d`](./contracts/ethereum-1/0xb4c91ac6436800d3a3d9e9a5ed0fb3419bc0a61d/) | ✅ Audited |
| SuperEarnMessageAgent | unknown | ethereum | n/a | [`0xe4cb07...381e6d`](./contracts/ethereum-1/0xe4cb0758785eb172adedd08660d7073029381e6d/) | ✅ Audited |
| SuperEarnRouter | adapter | ethereum | n/a | [`0x4f9825...438864`](./contracts/ethereum-1/0x4f98255477a51597d83e38b589c455bddf438864/) | ✅ Audited |
| SuperEarnRouter | adapter | ethereum | n/a | [`0xc0bc83...32f25f`](./contracts/ethereum-1/0xc0bc83e3eb1ec09ef89a1e5475b5aa53cf32f25f/) | ✅ Audited |
| SwapQuoter | periphery | ethereum | n/a | [`0x3b37db...1fc95b`](./contracts/ethereum-1/0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b/) | ✅ Audited |
| SwapQuoter | periphery | ethereum | n/a | [`0xc08a98...f6190c`](./contracts/ethereum-1/0xc08a98433d66c7a903998fce613c4ae47cf6190c/) | ✅ Audited |
| UniversalSwapRouter | adapter | ethereum | n/a | [`0x519a06...31b324`](./contracts/ethereum-1/0x519a0609762c3546b857d78f9b1a7d3d6731b324/) | ✅ Audited |
| UniversalSwapRouter | adapter | ethereum | n/a | [`0x743789...c2006c`](./contracts/ethereum-1/0x7437892a3e2e658038758dd7ca638334c0c2006c/) | ✅ Audited |
| UniversalSwapRouter | adapter | ethereum | n/a | [`0xddfa9b...976828`](./contracts/ethereum-1/0xddfa9b7a915ff9ffb1160755e2a6d90bc9976828/) | ✅ Audited |
| USDCToCUSDOSwapper | adapter | ethereum | n/a | [`0xf74550...0525e8`](./contracts/ethereum-1/0xf74550de1d4b4ff41ad44fd5ef26acb5200525e8/) | ✅ Audited |
| USDCToSNUSDCurveSwapper | adapter | ethereum | n/a | [`0xdcc82a...16a514`](./contracts/ethereum-1/0xdcc82ab8abdcbedf1f42083300b13d1fa616a514/) | ✅ Audited |
| USDOKycedCA | unknown | ethereum | n/a | [`0xc693a8...c03f77`](./contracts/ethereum-1/0xc693a80b13763b3c69cceed4c434e9f1cfc03f77/) | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetPriceConverter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x46ee97...a18e2d`](./contracts/ethereum-1/0x46ee97692856dcaeeb7ce598f78b8eade7a18e2d/); ethereum `0x57b71d...870c20` | ⚠️ Unaudited |
| BridgeAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f4841...33732c`](./contracts/ethereum-1/0x0f4841b8b3796f406fa44b17d89465657533732c/); ethereum `0x40fb0f...43cd0f` | ⚠️ Unaudited |
| CooldownVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e53cd...58f200`](./contracts/ethereum-1/0x8e53cdaa89381c203a074fb3388f65936358f200/); ethereum `0xa8c0c4...ab53bc` | ⚠️ Unaudited |
| CrosschainAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6172c5...781bf2`](./contracts/ethereum-1/0x6172c5b4e42c13b41f82a8b58f08848f9d781bf2/); ethereum `0xc090e8...5f2675` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | ethereum | n/a | [`0x1d68a6...52d8de`](./contracts/ethereum-1/0x1d68a6cefed44101ed79a830e8a5ad5c0a52d8de/) | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | ethereum | n/a | [`0x420ed2...1074ae`](./contracts/ethereum-1/0x420ed2cca7d288a0e82cdad0ab9d5b93a81074ae/) | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | ethereum | n/a | [`0x6b26bc...f5b71c`](./contracts/ethereum-1/0x6b26bcb70d61689ac3c8948b1402d04123f5b71c/) | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | ethereum | n/a | [`0xe1ea03...64d892`](./contracts/ethereum-1/0xe1ea0391730daf0bb071c8d27adff26f6a64d892/) | ⚠️ Unaudited |
| LightKeeper | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0e79cc...0c99dc`](./contracts/ethereum-1/0x0e79ccf5e150c75baa4250456fb405ecec0c99dc/); ethereum `0xc25e4b...e3b66d` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | ethereum | n/a | [`0xd064f8...faf929`](./contracts/ethereum-1/0xd064f89a9a95ea86a706543449d0d97557faf929/) | ⚠️ Unaudited |
| LightKeeper | operational_periphery | ethereum | n/a | [`0xf7a6a9...ef0bdf`](./contracts/ethereum-1/0xf7a6a98de57d0eac06c4e6a05e8da10a6eef0bdf/) | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13cee5...2f3785`](./contracts/ethereum-1/0x13cee5ac81a78f23be0b3846e9d5b622d62f3785/); ethereum `0xd49162...5b8fb5` | ⚠️ Unaudited |
| PendleReUSDAssetsProvider | unknown | ethereum | n/a | [`0xdb0c13...71fb30`](./contracts/ethereum-1/0xdb0c1338c127840043cafdb208c956d24d71fb30/) | ⚠️ Unaudited |
| PendleSNUSDAssetsProviderV2 | unknown | ethereum | n/a | [`0x20e985...fc4adc`](./contracts/ethereum-1/0x20e985976ab18260995660636c5716d2f4fc4adc/) | ⚠️ Unaudited |
| PendleUSDGAssetsProviderV2 | unknown | ethereum | n/a | [`0x2572e1...aedc40`](./contracts/ethereum-1/0x2572e15f1c0806bb6d8efc0d867caa27bfaedc40/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x5732a7...39418d`](./contracts/ethereum-1/0x5732a7422a8f3631a28ab9439fe9a872bd39418d/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xce6917...897f2f`](./contracts/ethereum-1/0xce6917ff9125fff7da0e5da5840989b7f3897f2f/) | ⚠️ Unaudited |
| StrategyMorphoV2Vault | core_logic | ethereum | n/a | [`0xa41432...8ea19d`](./contracts/ethereum-1/0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d/) | ⚠️ Unaudited |
| StUSDSAssetsProvider | unknown | ethereum | n/a | [`0x84e63d...7a622c`](./contracts/ethereum-1/0x84e63d6ae32654bcdd5301e01e703959ac7a622c/) | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37887c...a135a9`](./contracts/ethereum-1/0x37887c5b3c9c9d8cd2113aba6078f125cfa135a9/); ethereum `0x4afd6a...a1bd3e` | ⚠️ Unaudited |
| SuperEarnRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd50d11...591a0d`](./contracts/ethereum-1/0xd50d11d1d1267c78240e2cf452d0707c46591a0d/); ethereum `0xd8acff...569e68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x05728b...ea6ea5`](./contracts/ethereum-1/0x05728b5710d2cbce93e25faeae0a1dc107ea6ea5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x065e75...e7dcee`](./contracts/ethereum-1/0x065e75ba08c0c869624d328c68f413d8cee7dcee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x0d4ce6...d30ef7`](./contracts/ethereum-1/0x0d4ce6ae89930713463256ab4216291271d30ef7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x0f554f...d39c96`](./contracts/ethereum-1/0x0f554ff1c806b9bbacef88462e21d685e5d39c96/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x120d82...77d331`](./contracts/ethereum-1/0x120d829aa8c0c6dccef25b193a9356e3c277d331/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x1647aa...da7f2a`](./contracts/ethereum-1/0x1647aa41055335de0e30482685db94c6a9da7f2a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x16975e...1a1422`](./contracts/ethereum-1/0x16975e52e7134b836ab51382fc0c9184f31a1422/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x194f71...c747c7`](./contracts/ethereum-1/0x194f71b1b7e357ba50a7dc0660218570bfc747c7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x239f2d...21ea42`](./contracts/ethereum-1/0x239f2d734e5b99acca1b1fdaddbcc680bd21ea42/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x428c55...775071`](./contracts/ethereum-1/0x428c5503858810bfb0b4c2a6825fdf4fcd775071/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x4b3e99...4466d2`](./contracts/ethereum-1/0x4b3e992464f5a6f000cbaf5ec4ab5830b74466d2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x4e4654...6f9a33`](./contracts/ethereum-1/0x4e4654ce4ca7ff0ba66a0a4a588a4bd55a6f9a33/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x55ced8...c38f55`](./contracts/ethereum-1/0x55ced8f290256e165d3f50eda0b60e261ec38f55/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x570435...ccd190`](./contracts/ethereum-1/0x570435b7abcc8241cfdbcbf05ba960218accd190/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x5ae1ae...925933`](./contracts/ethereum-1/0x5ae1aefb41c9334f06575fd4a9ddfdf6ad925933/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x5b7297...159c23`](./contracts/ethereum-1/0x5b7297fc1a636ce04c03ba3c0542a07031159c23/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x5bb976...d9839f`](./contracts/ethereum-1/0x5bb9761d45c5057ac49c6cf77dc8546e25d9839f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x6763d4...2ed08a`](./contracts/ethereum-1/0x6763d40b2feb1f35479e9ad5e73f49d8362ed08a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x6b8f00...59415b`](./contracts/ethereum-1/0x6b8f00bb604a05934ebb6dbfcaab76e38059415b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x733e75...498879`](./contracts/ethereum-1/0x733e7585b9545d5856c79da04a4378fc8a498879/); ethereum `0xde597f...cbd610` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x75bd4b...38e82d`](./contracts/ethereum-1/0x75bd4bdb50925b2e3ff5748cb2a629463338e82d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x76fd80...6ff95c`](./contracts/ethereum-1/0x76fd800616e6885e275ab4bf997a966fb16ff95c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x7876a2...21dfda`](./contracts/ethereum-1/0x7876a2faf6aad1f6f8e47ad612d9472a4821dfda/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x7d0c55...4870f7`](./contracts/ethereum-1/0x7d0c55e2f838ce2e9b5300b491e9c34be94870f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x80f421...714663`](./contracts/ethereum-1/0x80f4213809420e9751cbe2222fa3f50a3d714663/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x908f33...14e359`](./contracts/ethereum-1/0x908f3365fd2bb80f01efdc8eec063fb5f614e359/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x969e7b...7335fa`](./contracts/ethereum-1/0x969e7bcd7f15baeaf999c9aa1c0a585d6b7335fa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x9cc64f...2bef8f`](./contracts/ethereum-1/0x9cc64f1fc21a43d00f0887d4af0aec927f2bef8f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x9ef977...866b4b`](./contracts/ethereum-1/0x9ef977e4521ca735a870cbfa8ba225f558866b4b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x9f9798...d329ba`](./contracts/ethereum-1/0x9f9798a090b34fa4432f0e6d4f590aa7a1d329ba/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xa12cc7...7ece6f`](./contracts/ethereum-1/0xa12cc7aef211435d42490e111fce3c2ea97ece6f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xad4cbf...6f5f65`](./contracts/ethereum-1/0xad4cbfc75501967d5db740b0d3ee7ec6406f5f65/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xafa58b...4bdf06`](./contracts/ethereum-1/0xafa58b7155d08182cd57a5bd402e3d427d4bdf06/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xb80df8...8e45af`](./contracts/ethereum-1/0xb80df88d60bdc24f6216b7bb346de193f88e45af/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xb9c275...1eb418`](./contracts/ethereum-1/0xb9c275ebf0d54588578871bc9530207aa81eb418/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xc0287b...d95a10`](./contracts/ethereum-1/0xc0287ba2f665aff77729dae9499302aec6d95a10/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xc88510...ce1185`](./contracts/ethereum-1/0xc885109119a0a8933c997aec546160dfa3ce1185/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xccf053...5daa5c`](./contracts/ethereum-1/0xccf0536e01415630ae98c7044e6f7fc27c5daa5c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd1a10d...8ed8cc`](./contracts/ethereum-1/0xd1a10da860fa9f23da6bf6ea2583c6f9158ed8cc/); ethereum `0xf31310...e9f622` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xd94ba9...9cc304`](./contracts/ethereum-1/0xd94ba96d772db2394e49e51fcc5ef0119f9cc304/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xddbcef...3f084e`](./contracts/ethereum-1/0xddbcef84c745a1bc0fcde26ccf56ad109b3f084e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xea80c6...cd6215`](./contracts/ethereum-1/0xea80c6176649115031f362d99a98a23229cd6215/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xeb1f94...5343c5`](./contracts/ethereum-1/0xeb1f945d1d245e6fe83eb684e7b1a1cb935343c5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xf1134d...00fca2`](./contracts/ethereum-1/0xf1134df90056b9bdb125775446c652f1c700fca2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xfbf57c...350c89`](./contracts/ethereum-1/0xfbf57ce5d5f8a141277a2b159cf0d99ae9350c89/) | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f19e6...385822`](./contracts/ethereum-1/0x8f19e66b4ba81faae964232baa2bdc8118385822/); ethereum `0x91caae...6eb65d` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0becde...2691fe`](./contracts/ethereum-1/0x0becde49394d537b240c0272a7c5fefc932691fe/); ethereum `0x7eec57...aa878b`; ethereum `0x9e3e70...f70df2` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x04d907...9efcc4`](./contracts/ethereum-1/0x04d907db8b48eb87290426f757cd93c33c9efcc4/); ethereum `0x7094c7...1c4a17` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | ethereum | n/a | [`0x534ed5...10e95a`](./contracts/ethereum-1/0x534ed562fad41d239d0903571403358c8210e95a/) | ⚠️ Unaudited |
| YearnVaultManager | core_logic | ethereum | n/a | [`0xda84cc...77a9bb`](./contracts/ethereum-1/0xda84ccdf4450afbbba32fa77704523fff977a9bb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x0a9d6f20daf72042b0b7cc901bbfba2fc5b11381) | proxy | ethereum | n/a | `0xbab5ac...5312e8` | ❓ Unverified |
| Proxy (impl: 0x29a915943af6fcafa3524c5d64ee03016909a90c) | proxy | ethereum | n/a | `0xf3d1a0...3a9295` | ❓ Unverified |
| Proxy (impl: 0x45c999dfe22860978d5adbff9f7799f69e4e3e76) | proxy | ethereum | n/a | `0x531385...c10e78` | ❓ Unverified |
| Proxy (impl: 0x4aca64ad4f0424a13af90b51d7f4785bd9ef7cc6) | proxy | ethereum | n/a | `0x55c7a3...981a57` | ❓ Unverified |
| Proxy (impl: 0x4c2e0fdcdcf88cd179434756ab76759c33fd2367) | proxy | ethereum | n/a | `0xe67a25...3f51de` | ❓ Unverified |
| Proxy (impl: 0x5b618da0337c75ff616bed4eb653650e2a76593e) | proxy | ethereum | n/a | `0x38d2af...16f9b3` | ❓ Unverified |
| Proxy (impl: 0x643267631337fbb4aea601d8a918d4d06e6137e5) | proxy | ethereum | n/a | `0x46c396...3e8007` | ❓ Unverified |
| Proxy (impl: 0x6687962c41cc5a3d05433a16347c1c6c48fb2731) | proxy | ethereum | n/a | `0x16dc0a...82847c` | ❓ Unverified |
| Proxy (impl: 0x804c2f598f3b19608428c53dd1cebd6bc8d4e0ff) | proxy | ethereum | n/a | `0x093ffe...7da906` | ❓ Unverified |
| Proxy (impl: 0xa80b61e4f9adef22ec967236662ef2fa4d96fc68) | proxy | ethereum | n/a | `0x6a635d...9151ec` | ❓ Unverified |
| Proxy (impl: 0xb66a04318699b630d490a68c80c30695c7aa282c) | proxy | ethereum | n/a | `0x600dc6...6409cc` | ❓ Unverified |
| Proxy (impl: 0xc5bced0edbb91c53d6d807cc45ffb73c741998bc) | proxy | ethereum | n/a | `0x08dd4c...cd5841` | ❓ Unverified |
| Proxy (impl: 0xccfa7cc2269ac13033b81f3473f53b65199875de) | proxy | ethereum | n/a | `0x2e0bd3...ca741e` | ❓ Unverified |
| Proxy (impl: 0xe0926b2b096b6efa3fb68934686cad0a7aef765b) | proxy | ethereum | n/a | `0x5f5369...283607` | ❓ Unverified |
| Proxy (impl: 0xff399dc58f19fe6f6a32519329cf249df9cd79f7) | proxy | ethereum | n/a | `0x2e8612...a110f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd8540...017f50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee4a69...aa202d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 48 deployments: klaytn `0x0becde...2691fe`; klaytn `0x104562...90d575`; klaytn `0x13cee5...2f3785`; klaytn `0x1c097d...7ec83c`; klaytn `0x1cfd5d...58f672`; klaytn `0x1d68a6...52d8de`; klaytn `0x1f5b38...ef5a61`; klaytn `0x20e985...fc4adc`; klaytn `0x2572e1...aedc40`; klaytn `0x2e4e57...5bf5d6`; klaytn `0x3311d2...6bfde8`; klaytn `0x3b37db...1fc95b`; klaytn `0x3e92a9...9becc7`; klaytn `0x40fb0f...43cd0f`; klaytn `0x4afd6a...a1bd3e`; klaytn `0x4bfc17...c2b021`; klaytn `0x4e4654...6f9a33`; klaytn `0x50519a...10f455`; klaytn `0x55ced8...c38f55`; klaytn `0x57b71d...870c20`; klaytn `0x6090d8...5652bf`; klaytn `0x609c17...dd2387`; klaytn `0x650a4c...d9e5f5`; klaytn `0x72301d...724199`; klaytn `0x723d34...dbd8f3`; klaytn `0x743789...c2006c`; klaytn `0x7876a2...21dfda`; klaytn `0x7eec57...aa878b`; klaytn `0x84e63d...7a622c`; klaytn `0x8c82b2...faa3b2`; klaytn `0x8e53cd...58f200`; klaytn `0x8f19e6...385822`; klaytn `0x91caae...6eb65d`; klaytn `0x947ae1...2a59eb`; klaytn `0x9e3e70...f70df2`; klaytn `0xa41432...8ea19d`; klaytn `0xa5540e...58e295`; klaytn `0xc090e8...5f2675`; klaytn `0xc693a8...c03f77`; klaytn `0xcece82...496faa`; klaytn `0xd064f8...faf929`; klaytn `0xd49162...5b8fb5`; klaytn `0xd8acff...569e68`; klaytn `0xdb0c13...71fb30`; klaytn `0xdcc82a...16a514`; klaytn `0xe2c308...3b5ab4`; klaytn `0xea8e18...6ec786`; klaytn `0xf74550...0525e8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [superearn-audit-reports (GitHub directory)](https://github.com/superearn-io/superearn-audit-reports) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2026.05.21-spearbit.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.05.21-spearbit.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 21 | n/a |
| [2026.04.28-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.04.28-certik.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [2026.04.07-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.04.07-certik.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | 19 | n/a |
| [2026.02.19-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.02.19-certik.pdf) | CertiK | Audit | 2026-02 | fresh | Direct | contract_name | 17 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 127 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=57

Zero-match audit list:

- [3925] superearn-audit-reports (GitHub directory)
- [11866] 2026.04.28-certik.pdf

Fork inheritance lineage and inherited audits are included when available.
