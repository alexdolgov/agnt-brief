# Agentic Audit Brief: SuperEarn

## Project Overview

- Project: SuperEarn (`superearn`)
- Website: [https://superearn.io/](https://superearn.io/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-26T14:48:16.628Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: ethereum, klaytn
- Contract surface: 94 unique implementations (190 raw deployments)
- DeFi Llama TVL: $40,335,552.22
- On-chain TVL (included contracts): $295.42
- TVL by chain: Ethereum $295.42

## Project Description

SuperEarn is a cross-chain yield aggregation protocol that deploys user deposits into curated DeFi strategies (e.g., Morpho, Pendle) across Ethereum and Klaytn. It uses vaults, routers, and cross-chain messaging to optimize and automate yield generation.

### Architecture

Ethereum vaults rely on asset providers and swappers to execute strategies, while cross-chain messaging agents and keepers synchronize state with Kaia vaults. The SuperEarnRouter serves as the unified user interface, directing funds to either Ethereum or Kaia vaults based on strategy availability.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 1
- Unverified implementations: 68
- Unique implementations: 94
- Raw deployments: 190
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $295.42
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RemoteVault | core_logic | ethereum | 3 deployments: ethereum [`0x8c82b2...faa3b2`](./contracts/ethereum-1/0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2/); ethereum `0xde4d0c...16a499`; ethereum `0xe35826...2e4be0` | ⚠️ Unaudited |
| CooldownVault | core_logic | ethereum | 5 deployments: ethereum [`0x1c097d...7ec83c`](./contracts/ethereum-1/0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c/); ethereum `0x8e53cd...58f200`; ethereum `0xa8c0c4...ab53bc`; ethereum `0xe0f3c0...cecc50`; ethereum `0xffbb37...eda9ac` | ⚠️ Unaudited |
| AssetPriceConverter | operational_periphery | ethereum | 3 deployments: ethereum [`0x46ee97...a18e2d`](./contracts/ethereum-1/0x46ee97692856dcaeeb7ce598f78b8eade7a18e2d/); ethereum `0x57b71d...870c20`; ethereum `0xf1ccc5...9c4499` | ⚠️ Unaudited |
| BridgeAccountant | operational_periphery | ethereum | 4 deployments: ethereum [`0x0f4841...33732c`](./contracts/ethereum-1/0x0f4841b8b3796f406fa44b17d89465657533732c/); ethereum `0x40fb0f...43cd0f`; ethereum `0x4be44e...11ac98`; ethereum `0x8dbf7f...b85328` | ⚠️ Unaudited |
| CrosschainAdapter | adapter | ethereum | 4 deployments: ethereum [`0x0095a2...e86a4c`](./contracts/ethereum-1/0x0095a258bdf491fc98009516dba74f780ee86a4c/); ethereum `0x6172c5...781bf2`; ethereum `0xc090e8...5f2675`; ethereum `0xe8b100...dda272` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | ethereum | 4 deployments: ethereum [`0x1d68a6...52d8de`](./contracts/ethereum-1/0x1d68a6cefed44101ed79a830e8a5ad5c0a52d8de/); ethereum `0x420ed2...1074ae`; ethereum `0x6b26bc...f5b71c`; ethereum `0xe1ea03...64d892` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | ethereum | 4 deployments: ethereum [`0x0e79cc...0c99dc`](./contracts/ethereum-1/0x0e79ccf5e150c75baa4250456fb405ecec0c99dc/); ethereum `0xc25e4b...e3b66d`; ethereum `0xd064f8...faf929`; ethereum `0xf7a6a9...ef0bdf` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | ethereum | 2 deployments: ethereum [`0x13cee5...2f3785`](./contracts/ethereum-1/0x13cee5ac81a78f23be0b3846e9d5b622d62f3785/); ethereum `0xd49162...5b8fb5` | ⚠️ Unaudited |
| PendlePTYearnFacet | unknown | ethereum | 3 deployments: ethereum [`0x3311d2...6bfde8`](./contracts/ethereum-1/0x3311d2a0d88597da3be946aa4d0d112b486bfde8/); ethereum `0x609c17...dd2387`; ethereum `0xa5540e...58e295` | ⚠️ Unaudited |
| PendleReUSDAssetsProvider | unknown | ethereum | [`0xdb0c13...71fb30`](./contracts/ethereum-1/0xdb0c1338c127840043cafdb208c956d24d71fb30/) | ⚠️ Unaudited |
| PendleSNUSDAssetsProviderV2 | unknown | ethereum | [`0x20e985...fc4adc`](./contracts/ethereum-1/0x20e985976ab18260995660636c5716d2f4fc4adc/) | ⚠️ Unaudited |
| PendleUSDGAssetsProviderV2 | unknown | ethereum | [`0x2572e1...aedc40`](./contracts/ethereum-1/0x2572e15f1c0806bb6d8efc0d867caa27bfaedc40/) | ⚠️ Unaudited |
| StrategyMorphoV1Vault | core_logic | ethereum | [`0x1f5b38...ef5a61`](./contracts/ethereum-1/0x1f5b386243c42c7f297f084269b8f85636ef5a61/) | ⚠️ Unaudited |
| StrategyMorphoV2Vault | core_logic | ethereum | [`0xa41432...8ea19d`](./contracts/ethereum-1/0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d/) | ⚠️ Unaudited |
| StUSDSAssetsProvider | unknown | ethereum | [`0x84e63d...7a622c`](./contracts/ethereum-1/0x84e63d6ae32654bcdd5301e01e703959ac7a622c/) | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | ethereum | 4 deployments: ethereum [`0x37887c...a135a9`](./contracts/ethereum-1/0x37887c5b3c9c9d8cd2113aba6078f125cfa135a9/); ethereum `0x4afd6a...a1bd3e`; ethereum `0xb4c91a...c0a61d`; ethereum `0xe4cb07...381e6d` | ⚠️ Unaudited |
| SuperEarnRouter | adapter | ethereum | 4 deployments: ethereum [`0x4f9825...438864`](./contracts/ethereum-1/0x4f98255477a51597d83e38b589c455bddf438864/); ethereum `0xc0bc83...32f25f`; ethereum `0xd50d11...591a0d`; ethereum `0xd8acff...569e68` | ⚠️ Unaudited |
| SwapQuoter | periphery | ethereum | 2 deployments: ethereum [`0x3b37db...1fc95b`](./contracts/ethereum-1/0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b/); ethereum `0xc08a98...f6190c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 45 deployments: ethereum [`0x05728b...ea6ea5`](./contracts/ethereum-1/0x05728b5710d2cbce93e25faeae0a1dc107ea6ea5/); ethereum `0x065e75...e7dcee`; ethereum `0x0d4ce6...d30ef7`; ethereum `0x0f554f...d39c96`; ethereum `0x120d82...77d331`; ethereum `0x1647aa...da7f2a`; ethereum `0x16975e...1a1422`; ethereum `0x194f71...c747c7`; ethereum `0x239f2d...21ea42`; ethereum `0x428c55...775071`; ethereum `0x4b3e99...4466d2`; ethereum `0x4e4654...6f9a33`; ethereum `0x55ced8...c38f55`; ethereum `0x570435...ccd190`; ethereum `0x5ae1ae...925933`; ethereum `0x5b7297...159c23`; ethereum `0x5bb976...d9839f`; ethereum `0x6763d4...2ed08a`; ethereum `0x6b8f00...59415b`; ethereum `0x733e75...498879`; ethereum `0x75bd4b...38e82d`; ethereum `0x76fd80...6ff95c`; ethereum `0x7876a2...21dfda`; ethereum `0x7d0c55...4870f7`; ethereum `0x80f421...714663`; ethereum `0x908f33...14e359`; ethereum `0x969e7b...7335fa`; ethereum `0x9cc64f...2bef8f`; ethereum `0x9ef977...866b4b`; ethereum `0x9f9798...d329ba`; ethereum `0xa12cc7...7ece6f`; ethereum `0xad4cbf...6f5f65`; ethereum `0xafa58b...4bdf06`; ethereum `0xb80df8...8e45af`; ethereum `0xb9c275...1eb418`; ethereum `0xc0287b...d95a10`; ethereum `0xc88510...ce1185`; ethereum `0xccf053...5daa5c`; ethereum `0xd94ba9...9cc304`; ethereum `0xddbcef...3f084e`; ethereum `0xea80c6...cd6215`; ethereum `0xeb1f94...5343c5`; ethereum `0xf1134d...00fca2`; ethereum `0xf31310...e9f622`; ethereum `0xfbf57c...350c89` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | ethereum | 5 deployments: ethereum [`0x519a06...31b324`](./contracts/ethereum-1/0x519a0609762c3546b857d78f9b1a7d3d6731b324/); ethereum `0x743789...c2006c`; ethereum `0x8f19e6...385822`; ethereum `0x91caae...6eb65d`; ethereum `0xddfa9b...976828` | ⚠️ Unaudited |
| USDCToCUSDOSwapper | adapter | ethereum | [`0xf74550...0525e8`](./contracts/ethereum-1/0xf74550de1d4b4ff41ad44fd5ef26acb5200525e8/) | ⚠️ Unaudited |
| USDCToSNUSDCurveSwapper | adapter | ethereum | [`0xdcc82a...16a514`](./contracts/ethereum-1/0xdcc82ab8abdcbedf1f42083300b13d1fa616a514/) | ⚠️ Unaudited |
| USDOKycedCA | unknown | ethereum | [`0xc693a8...c03f77`](./contracts/ethereum-1/0xc693a80b13763b3c69cceed4c434e9f1cfc03f77/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 3 deployments: ethereum [`0x0becde...2691fe`](./contracts/ethereum-1/0x0becde49394d537b240c0272a7c5fefc932691fe/); ethereum `0x7eec57...aa878b`; ethereum `0x9e3e70...f70df2` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | ethereum | 4 deployments: ethereum [`0x04d907...9efcc4`](./contracts/ethereum-1/0x04d907db8b48eb87290426f757cd93c33c9efcc4/); ethereum `0x534ed5...10e95a`; ethereum `0x7094c7...1c4a17`; ethereum `0xda84cc...77a9bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CustomStrategy | core_logic | ethereum | 14 deployments: ethereum [`0x0277f7...e7a2ce`](./contracts/ethereum-1/0x0277f7e4100ab9ea332af8d695cc85e216e7a2ce/); ethereum `0x35701b...77262e`; ethereum `0x3e92a9...9becc7`; ethereum `0x4e3f34...1fc3f5`; ethereum `0x50519a...10f455`; ethereum `0x63db62...f6d8c0`; ethereum `0x6458dd...124b50`; ethereum `0x72301d...724199`; ethereum `0x72bd06...be0488`; ethereum `0x76dffa...0cd8e8`; ethereum `0x947ae1...2a59eb`; ethereum `0xa77549...6ed3ba`; ethereum `0xcece82...496faa`; ethereum `0xe2c308...3b5ab4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0a9d6f20daf72042b0b7cc901bbfba2fc5b11381) | proxy | ethereum | `0xbab5ac...5312e8` | ❓ Unverified |
| Proxy (impl: 0x29a915943af6fcafa3524c5d64ee03016909a90c) | proxy | ethereum | `0xf3d1a0...3a9295` | ❓ Unverified |
| Proxy (impl: 0x45c999dfe22860978d5adbff9f7799f69e4e3e76) | proxy | ethereum | `0x531385...c10e78` | ❓ Unverified |
| Proxy (impl: 0x4aca64ad4f0424a13af90b51d7f4785bd9ef7cc6) | proxy | ethereum | `0x55c7a3...981a57` | ❓ Unverified |
| Proxy (impl: 0x4c2e0fdcdcf88cd179434756ab76759c33fd2367) | proxy | ethereum | `0xe67a25...3f51de` | ❓ Unverified |
| Proxy (impl: 0x5b618da0337c75ff616bed4eb653650e2a76593e) | proxy | ethereum | `0x38d2af...16f9b3` | ❓ Unverified |
| Proxy (impl: 0x643267631337fbb4aea601d8a918d4d06e6137e5) | proxy | ethereum | `0x46c396...3e8007` | ❓ Unverified |
| Proxy (impl: 0x6687962c41cc5a3d05433a16347c1c6c48fb2731) | proxy | ethereum | `0x16dc0a...82847c` | ❓ Unverified |
| Proxy (impl: 0x804c2f598f3b19608428c53dd1cebd6bc8d4e0ff) | proxy | ethereum | `0x093ffe...7da906` | ❓ Unverified |
| Proxy (impl: 0xa80b61e4f9adef22ec967236662ef2fa4d96fc68) | proxy | ethereum | `0x6a635d...9151ec` | ❓ Unverified |
| Proxy (impl: 0xb66a04318699b630d490a68c80c30695c7aa282c) | proxy | ethereum | `0x600dc6...6409cc` | ❓ Unverified |
| Proxy (impl: 0xc5bced0edbb91c53d6d807cc45ffb73c741998bc) | proxy | ethereum | `0x08dd4c...cd5841` | ❓ Unverified |
| Proxy (impl: 0xccfa7cc2269ac13033b81f3473f53b65199875de) | proxy | ethereum | `0x2e0bd3...ca741e` | ❓ Unverified |
| Proxy (impl: 0xe0926b2b096b6efa3fb68934686cad0a7aef765b) | proxy | ethereum | `0x5f5369...283607` | ❓ Unverified |
| Proxy (impl: 0xff399dc58f19fe6f6a32519329cf249df9cd79f7) | proxy | ethereum | `0x2e8612...a110f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5732a7...39418d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd8540...017f50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1a10d...8ed8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde597f...cbd610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee4a69...aa202d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x0becde...2691fe` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x104562...90d575` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x13cee5...2f3785` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x1c097d...7ec83c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x1cfd5d...58f672` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x1d68a6...52d8de` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x1f5b38...ef5a61` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x20e985...fc4adc` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x2572e1...aedc40` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x2e4e57...5bf5d6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x3311d2...6bfde8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x3b37db...1fc95b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x3e92a9...9becc7` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x40fb0f...43cd0f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x4afd6a...a1bd3e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x4bfc17...c2b021` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x4e4654...6f9a33` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x50519a...10f455` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x55ced8...c38f55` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x57b71d...870c20` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x6090d8...5652bf` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x609c17...dd2387` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x650a4c...d9e5f5` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x72301d...724199` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x723d34...dbd8f3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x743789...c2006c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x7876a2...21dfda` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x7eec57...aa878b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x84e63d...7a622c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x8c82b2...faa3b2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x8e53cd...58f200` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x8f19e6...385822` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x91caae...6eb65d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x947ae1...2a59eb` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x9e3e70...f70df2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xa41432...8ea19d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xa5540e...58e295` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xc090e8...5f2675` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xc693a8...c03f77` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xcece82...496faa` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xd064f8...faf929` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xd49162...5b8fb5` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xd8acff...569e68` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xdb0c13...71fb30` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xdcc82a...16a514` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xe2c308...3b5ab4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xea8e18...6ec786` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xf74550...0525e8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SuperEarn's smart contracts have been audited by [Spearbit](https://spearbit.com) and [CertiK](https://www.certik.com/en). The full audit reports are available in our [audit reports repository]().](https://github.com/superearn-io/superearn-audit-reports) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x46ee97...a18e2d`](./contracts/ethereum-1/0x46ee97692856dcaeeb7ce598f78b8eade7a18e2d/) | AssetPriceConverter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f4841...33732c`](./contracts/ethereum-1/0x0f4841b8b3796f406fa44b17d89465657533732c/) | BridgeAccountant | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0095a2...e86a4c`](./contracts/ethereum-1/0x0095a258bdf491fc98009516dba74f780ee86a4c/) | CrosschainAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e79cc...0c99dc`](./contracts/ethereum-1/0x0e79ccf5e150c75baa4250456fb405ecec0c99dc/) | LightKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f5b38...ef5a61`](./contracts/ethereum-1/0x1f5b386243c42c7f297f084269b8f85636ef5a61/) | StrategyMorphoV1Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa41432...8ea19d`](./contracts/ethereum-1/0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d/) | StrategyMorphoV2Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84e63d...7a622c`](./contracts/ethereum-1/0x84e63d6ae32654bcdd5301e01e703959ac7a622c/) | StUSDSAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37887c...a135a9`](./contracts/ethereum-1/0x37887c5b3c9c9d8cd2113aba6078f125cfa135a9/) | SuperEarnMessageAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3925] SuperEarn's smart contracts have been audited by [Spearbit](https://spearbit.com) and [CertiK](https://www.certik.com/en). The full audit reports are available in our [audit reports repository]().

Fork inheritance lineage and inherited audits are included when available.
