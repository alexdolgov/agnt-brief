# Agentic Audit Brief: SuperEarn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SuperEarn (`superearn`)
- Website: [https://superearn.io/](https://superearn.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, kaia
- Contract surface: 152 unique implementations (191 raw deployments)
- Coverage basis: 10/32 confirmed own live verified implementations (31.3%); conservative 31.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,825,196.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SuperEarn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 41 contract row(s) across ethereum, kaia. Structural roles: 18 core, 15 unclassified, 7 supporting, 1 infra. 20 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 41
- Structural roles: core (18), unclassified (15), supporting (7), infra (1)
- Contract kinds: contract (37), unclassified (3), abstract (1)
- Detected standards: erc1967proxy (13), accesscontrol (2), erc165 (2)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (20), chainlink (3)
- Upgradeable-pattern rows: 20

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CooldownVault (`0xa8c0c468f90cc920cea6cb4ab965f7ca7fab53bc`, chain 1)
- CrosschainAdapter (`0x6172c5b4e42c13b41f82a8b58f08848f9d781bf2`, chain 1)
- MultiMorphoDirectAssetsProvider (`0x13cee5ac81a78f23be0b3846e9d5b622d62f3785`, chain 1)
- MultiMorphoDirectAssetsProvider (`0xd49162a9279441f9f12e199b0a28499fb85b8fb5`, chain 1)
- PendlePTDiamond (`0x3311d2a0d88597da3be946aa4d0d112b486bfde8`, chain 1)
- PendlePTDiamond (`0x609c1701ef5156e3c01bdbf80ce5ed1941dd2387`, chain 1)
- PendlePTDiamond (`0xa5540e13f476b597d7a8708e7caa2eb05c58e295`, chain 1)
- PendleReUSDAssetsProvider (`0xdb0c1338c127840043cafdb208c956d24d71fb30`, chain 1)
- PendleSNUSDAssetsProviderV2 (`0x20e985976ab18260995660636c5716d2f4fc4adc`, chain 1)
- PendleUSDGAssetsProviderV2 (`0x2572e15f1c0806bb6d8efc0d867caa27bfaedc40`, chain 1)
- StrategyMorphoV1Vault (`0x1f5b386243c42c7f297f084269b8f85636ef5a61`, chain 1)
- StrategyMorphoV2Vault (`0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d`, chain 1)
- StUSDSAssetsProvider (`0x84e63d6ae32654bcdd5301e01e703959ac7a622c`, chain 1)
- TransparentUpgradeableProxy (`0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c`, chain 1)
- TransparentUpgradeableProxy (`0x1d68a6cefed44101ed79a830e8a5ad5c0a52d8de`, chain 1)
- TransparentUpgradeableProxy (`0x3e92a93c7ae3c0d7aca27190b92f0f2db09becc7`, chain 1)
- TransparentUpgradeableProxy (`0x50519a3af6c0662134ed7f9a160142d28d10f455`, chain 1)
- TransparentUpgradeableProxy (`0x72301ddb480d4a11b168f886bd4e766de0724199`, chain 1)
- TransparentUpgradeableProxy (`0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2`, chain 1)
- TransparentUpgradeableProxy (`0x947ae1c8eaac50da2bd14e3230361f986a2a59eb`, chain 1)
- TransparentUpgradeableProxy (`0xc693a80b13763b3c69cceed4c434e9f1cfc03f77`, chain 1)
- TransparentUpgradeableProxy (`0xcece82a34902aa1b7cb6419dbcb2fed893496faa`, chain 1)
- TransparentUpgradeableProxy (`0xd064f89a9a95ea86a706543449d0d97557faf929`, chain 1)
- TransparentUpgradeableProxy (`0xdcc82ab8abdcbedf1f42083300b13d1fa616a514`, chain 1)
- TransparentUpgradeableProxy (`0xe2c3082df0ea5f3606e7adf6aab1b559a03b5ab4`, chain 1)
- TransparentUpgradeableProxy (`0xf74550de1d4b4ff41ad44fd5ef26acb5200525e8`, chain 1)
- UnnamedContract (`0x1045626a4b79a40827dd3087e06dcc73c590d575`, chain 8217)
- UnnamedContract (`0x1cfd5d5268400648c2ffaf9bdb01cb6b0b58f672`, chain 8217)
- UnnamedContract (`0x2e4e573d86c70688cd97d76bc5ddc1bb265bf5d6`, chain 8217)
- UnnamedContract (`0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b`, chain 8217)
- UnnamedContract (`0x40fb0f9084828adbc3dcd71840ea545bf243cd0f`, chain 8217)
- UnnamedContract (`0x4bfc1773280689d17c8c00b2514a5c28c8c2b021`, chain 8217)
- UnnamedContract (`0x4e4654ce4ca7ff0ba66a0a4a588a4bd55a6f9a33`, chain 8217)
- UnnamedContract (`0x55ced8f290256e165d3f50eda0b60e261ec38f55`, chain 8217)
- UnnamedContract (`0x6090d8eecb74058bc53bb24273345dd8ba5652bf`, chain 8217)
- UnnamedContract (`0x650a4c074a58b18fbeed48ae766e58a382d9e5f5`, chain 8217)
- UnnamedContract (`0x723d3422788f47f5dae153515a3c277293dbd8f3`, chain 8217)
- UnnamedContract (`0x7437892a3e2e658038758dd7ca638334c0c2006c`, chain 8217)
- UnnamedContract (`0x7876a2faf6aad1f6f8e47ad612d9472a4821dfda`, chain 8217)
- UnnamedContract (`0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2`, chain 8217)
- UnnamedContract (`0x8e53cdaa89381c203a074fb3388f65936358f200`, chain 8217)
- UnnamedContract (`0x8f19e66b4ba81faae964232baa2bdc8118385822`, chain 8217)
- UnnamedContract (`0xc090e88bdaa823b7c1dd8d9e24cbacb0f35f2675`, chain 8217)
- UnnamedContract (`0xd8acff2e2b8b1cf052aca4ba331743f73c569e68`, chain 8217)
- UnnamedContract (`0xea8e1872adce77efbe5d6fe37b5c257cc86ec786`, chain 8217)
- Vyper_contract (`0x0becde49394d537b240c0272a7c5fefc932691fe`, chain 1)
- Vyper_contract (`0x7eec57beb20576cb35c500ae5826e16960aa878b`, chain 1)
- Vyper_contract (`0x9e3e70f4d09bcfe08f456c426eb90f7aa6f70df2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 41; live-surface rows included: 41 (39 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/53 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/32 (31.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 51 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 101 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 44 standard proxy/library)
- Proxy deployments represented within implementation groups: 115
- Confirmed-live implementations: 51 of 152 unique; 101 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/115
- Verified + Unaudited implementations: 105
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 152
- Raw deployments: 191
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 21.9% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 9 | 7.8% | 2026-04 |
| Spearbit | Tier 1 | 7 | 6.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetPriceConverter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393396 | 2 deployments: ethereum `0x46ee97692856dcaeeb7ce598f78b8eade7a18e2d`; ethereum `0x57b71db8c039ad34b28c289272efa09b5a870c20` | ✅ Audited |
| BridgeAccountant | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393417 | `0x40fb0f9084828adbc3dcd71840ea545bf243cd0f` | ✅ Audited |
| CrosschainAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393398 | 2 deployments: ethereum `0x6172c5b4e42c13b41f82a8b58f08848f9d781bf2`; ethereum `0xc090e88bdaa823b7c1dd8d9e24cbacb0f35f2675` | ✅ Audited |
| RemoteVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393404 | `0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2` | ✅ Audited |
| StrategyMorphoV1Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393364 | `0x1f5b386243c42c7f297f084269b8f85636ef5a61` | ✅ Audited |
| SuperEarnMessageAgent | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393409 | `0x4afd6ad5b924cd29513d1fb9b66728c4c5a1bd3e` | ✅ Audited |
| UniversalSwapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393402 | 2 deployments: ethereum `0x8f19e66b4ba81faae964232baa2bdc8118385822`; ethereum `0x91caae299305a8133f295a59f4f22005d16eb65d` | ✅ Audited |
| USDCToCUSDOSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393415 | `0xf74550de1d4b4ff41ad44fd5ef26acb5200525e8` | ✅ Audited |
| USDCToSNUSDCurveSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393406 | `0xdcc82ab8abdcbedf1f42083300b13d1fa616a514` | ✅ Audited |
| USDOKycedCA | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393400 | `0xc693a80b13763b3c69cceed4c434e9f1cfc03f77` | ✅ Audited |

### ⚠️ Verified + Unaudited (105)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetPriceConverter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf1ccc5ad12357b63f6b798cd4ae1582da49c4499` | ⚠️ Unaudited |
| BridgeAccountant | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393362 | `0x0f4841b8b3796f406fa44b17d89465657533732c` | ⚠️ Unaudited |
| BridgeAccountant | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4be44e4903d2b00651a03dce2fb76bba5d11ac98` | ⚠️ Unaudited |
| BridgeAccountant | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8dbf7f2fe1d18c1de8853cfe7fa5c03ba7b85328` | ⚠️ Unaudited |
| CooldownVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393408 | `0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c` | ⚠️ Unaudited |
| CooldownVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393407 | 2 deployments: ethereum `0x8e53cdaa89381c203a074fb3388f65936358f200`; ethereum `0xa8c0c468f90cc920cea6cb4ab965f7ca7fab53bc` | ⚠️ Unaudited |
| CooldownVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe0f3c0f56cd0989d0e2ced6327f31f040bcecc50` | ⚠️ Unaudited |
| CooldownVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xffbb37093493d49c864e097eeb2b6695f8eda9ac` | ⚠️ Unaudited |
| CrosschainAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0095a258bdf491fc98009516dba74f780ee86a4c` | ⚠️ Unaudited |
| CrosschainAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe8b1009c7bdd3502fea13b2d5a273addb0dda272` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393393 | `0x1d68a6cefed44101ed79a830e8a5ad5c0a52d8de` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x420ed2cca7d288a0e82cdad0ab9d5b93a81074ae` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b26bcb70d61689ac3c8948b1402d04123f5b71c` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1ea0391730daf0bb071c8d27adff26f6a64d892` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0277f7e4100ab9ea332af8d695cc85e216e7a2ce` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x35701bc7a94a9e37d57324a33d94d3721477262e` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393394 | `0x3e92a93c7ae3c0d7aca27190b92f0f2db09becc7` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4e3f34399bf0b92eb8b825ba9fd1ab2b211fc3f5` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393397 | `0x50519a3af6c0662134ed7f9a160142d28d10f455` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x63db62e1d4e7f2d80730a01b6f4ccbe536f6d8c0` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6458dd1433a8aed8f90d78da8cbeed150c124b50` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393413 | `0x72301ddb480d4a11b168f886bd4e766de0724199` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x72bd06f8e2c350359952d8791df280faf6be0488` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x76dffac02b1e319e2fac02a1fc06a34d820cd8e8` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393395 | `0x947ae1c8eaac50da2bd14e3230361f986a2a59eb` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa77549facf00a60e7fcdc20faebbe2b2e26ed3ba` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393405 | `0xcece82a34902aa1b7cb6419dbcb2fed893496faa` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393401 | `0xe2c3082df0ea5f3606e7adf6aab1b559a03b5ab4` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e79ccf5e150c75baa4250456fb405ecec0c99dc`; ethereum `0xc25e4bc7d5fc581167dc84e5150f27c5eee3b66d` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393403 | `0xd064f89a9a95ea86a706543449d0d97557faf929` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf7a6a98de57d0eac06c4e6a05e8da10a6eef0bdf` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393363 | `0x13cee5ac81a78f23be0b3846e9d5b622d62f3785` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393372 | `0xd49162a9279441f9f12e199b0a28499fb85b8fb5` | ⚠️ Unaudited |
| PendlePTYearnFacet | unknown | project_anchor | own_supporting | 3 | ethereum | unit-393399 (3 proxies) | 3 deployments: ethereum `0x3311d2a0d88597da3be946aa4d0d112b486bfde8`; ethereum `0x609c1701ef5156e3c01bdbf80ce5ed1941dd2387`; ethereum `0xa5540e13f476b597d7a8708e7caa2eb05c58e295` | ⚠️ Unaudited |
| PendleReUSDAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393373 | `0xdb0c1338c127840043cafdb208c956d24d71fb30` | ⚠️ Unaudited |
| PendleSNUSDAssetsProviderV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393365 | `0x20e985976ab18260995660636c5716d2f4fc4adc` | ⚠️ Unaudited |
| PendleUSDGAssetsProviderV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393366 | `0x2572e15f1c0806bb6d8efc0d867caa27bfaedc40` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5732a7422a8f3631a28ab9439fe9a872bd39418d` | ⚠️ Unaudited |
| RemoteVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4d0cb575fb63a720c53188f12e647eab16a499` | ⚠️ Unaudited |
| RemoteVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe3582626a1d18358fb431133ee3e6f6a702e4be0` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xce6917ff9125fff7da0e5da5840989b7f3897f2f` | ⚠️ Unaudited |
| StrategyMorphoV2Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393371 | `0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d` | ⚠️ Unaudited |
| StUSDSAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393369 | `0x84e63d6ae32654bcdd5301e01e703959ac7a622c` | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393367 | `0x37887c5b3c9c9d8cd2113aba6078f125cfa135a9` | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb4c91ac6436800d3a3d9e9a5ed0fb3419bc0a61d` | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4cb0758785eb172adedd08660d7073029381e6d` | ⚠️ Unaudited |
| SuperEarnRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f98255477a51597d83e38b589c455bddf438864` | ⚠️ Unaudited |
| SuperEarnRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0bc83e3eb1ec09ef89a1e5475b5aa53cf32f25f` | ⚠️ Unaudited |
| SuperEarnRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393410 | 2 deployments: ethereum `0xd50d11d1d1267c78240e2cf452d0707c46591a0d`; ethereum `0xd8acff2e2b8b1cf052aca4ba331743f73c569e68` | ⚠️ Unaudited |
| SwapQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b` | ⚠️ Unaudited |
| SwapQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc08a98433d66c7a903998fce613c4ae47cf6190c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x05728b5710d2cbce93e25faeae0a1dc107ea6ea5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x065e75ba08c0c869624d328c68f413d8cee7dcee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d4ce6ae89930713463256ab4216291271d30ef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f554ff1c806b9bbacef88462e21d685e5d39c96` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x120d829aa8c0c6dccef25b193a9356e3c277d331` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1647aa41055335de0e30482685db94c6a9da7f2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16975e52e7134b836ab51382fc0c9184f31a1422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x194f71b1b7e357ba50a7dc0660218570bfc747c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x239f2d734e5b99acca1b1fdaddbcc680bd21ea42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x428c5503858810bfb0b4c2a6825fdf4fcd775071` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b3e992464f5a6f000cbaf5ec4ab5830b74466d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e4654ce4ca7ff0ba66a0a4a588a4bd55a6f9a33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x55ced8f290256e165d3f50eda0b60e261ec38f55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x570435b7abcc8241cfdbcbf05ba960218accd190` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5ae1aefb41c9334f06575fd4a9ddfdf6ad925933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5b7297fc1a636ce04c03ba3c0542a07031159c23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5bb9761d45c5057ac49c6cf77dc8546e25d9839f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6763d40b2feb1f35479e9ad5e73f49d8362ed08a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6b8f00bb604a05934ebb6dbfcaab76e38059415b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x733e7585b9545d5856c79da04a4378fc8a498879`; ethereum `0xde597fb7ee1de45ffe80881a4ce2259f67cbd610` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x75bd4bdb50925b2e3ff5748cb2a629463338e82d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x76fd800616e6885e275ab4bf997a966fb16ff95c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7876a2faf6aad1f6f8e47ad612d9472a4821dfda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7d0c55e2f838ce2e9b5300b491e9c34be94870f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x80f4213809420e9751cbe2222fa3f50a3d714663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x908f3365fd2bb80f01efdc8eec063fb5f614e359` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x969e7bcd7f15baeaf999c9aa1c0a585d6b7335fa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9cc64f1fc21a43d00f0887d4af0aec927f2bef8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9ef977e4521ca735a870cbfa8ba225f558866b4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f9798a090b34fa4432f0e6d4f590aa7a1d329ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa12cc7aef211435d42490e111fce3c2ea97ece6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xad4cbfc75501967d5db740b0d3ee7ec6406f5f65` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xafa58b7155d08182cd57a5bd402e3d427d4bdf06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb80df88d60bdc24f6216b7bb346de193f88e45af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb9c275ebf0d54588578871bc9530207aa81eb418` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc0287ba2f665aff77729dae9499302aec6d95a10` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc885109119a0a8933c997aec546160dfa3ce1185` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xccf0536e01415630ae98c7044e6f7fc27c5daa5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd1a10da860fa9f23da6bf6ea2583c6f9158ed8cc`; ethereum `0xf313102f42210accc7b17b33482d1eccd9e9f622` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd94ba96d772db2394e49e51fcc5ef0119f9cc304` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xddbcef84c745a1bc0fcde26ccf56ad109b3f084e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xea80c6176649115031f362d99a98a23229cd6215` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeb1f945d1d245e6fe83eb684e7b1a1cb935343c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xf1134df90056b9bdb125775446c652f1c700fca2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xfbf57ce5d5f8a141277a2b159cf0d99ae9350c89` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x519a0609762c3546b857d78f9b1a7d3d6731b324` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7437892a3e2e658038758dd7ca638334c0c2006c` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xddfa9b7a915ff9ffb1160755e2a6d90bc9976828` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393361 | `0x0becde49394d537b240c0272a7c5fefc932691fe` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393368 | `0x7eec57beb20576cb35c500ae5826e16960aa878b` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393370 | `0x9e3e70f4d09bcfe08f456c426eb90f7aa6f70df2` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x04d907db8b48eb87290426f757cd93c33c9efcc4`; ethereum `0x7094c725aaf2c1e9e90b2a8eb4212036651c4a17` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x534ed562fad41d239d0903571403358c8210e95a` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xda84ccdf4450afbbba32fa77704523fff977a9bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x0a9d6f20daf72042b0b7cc901bbfba2fc5b11381) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbab5acef5f9c6165a6c84b122a205a68225312e8` | ❓ Unverified |
| Proxy (impl: 0x29a915943af6fcafa3524c5d64ee03016909a90c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf3d1a02d181dc53860438421658db344023a9295` | ❓ Unverified |
| Proxy (impl: 0x45c999dfe22860978d5adbff9f7799f69e4e3e76) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x531385a099783b4ba23e1657dd93b4a7f5c10e78` | ❓ Unverified |
| Proxy (impl: 0x4aca64ad4f0424a13af90b51d7f4785bd9ef7cc6) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x55c7a37d44ce715d0d477211f018034562981a57` | ❓ Unverified |
| Proxy (impl: 0x4c2e0fdcdcf88cd179434756ab76759c33fd2367) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe67a250583220de5ab714f9b7bb36c72a93f51de` | ❓ Unverified |
| Proxy (impl: 0x5b618da0337c75ff616bed4eb653650e2a76593e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x38d2afd8cb2f55374e77d635cf780fd80e16f9b3` | ❓ Unverified |
| Proxy (impl: 0x643267631337fbb4aea601d8a918d4d06e6137e5) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c3969d5613cc64aa8bd47153731c59383e8007` | ❓ Unverified |
| Proxy (impl: 0x6687962c41cc5a3d05433a16347c1c6c48fb2731) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x16dc0aa2fe9c28bee9322f8cd63c3455df82847c` | ❓ Unverified |
| Proxy (impl: 0x804c2f598f3b19608428c53dd1cebd6bc8d4e0ff) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x093ffeaf5c2a4bc940754244f4760575e97da906` | ❓ Unverified |
| Proxy (impl: 0xa80b61e4f9adef22ec967236662ef2fa4d96fc68) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6a635ddbf1f09a42cd323ac7815247abda9151ec` | ❓ Unverified |
| Proxy (impl: 0xb66a04318699b630d490a68c80c30695c7aa282c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x600dc634123bd70e70e3fd2aba415ce9b56409cc` | ❓ Unverified |
| Proxy (impl: 0xc5bced0edbb91c53d6d807cc45ffb73c741998bc) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x08dd4c30ddd9b5e3550c58f49cd9a7a973cd5841` | ❓ Unverified |
| Proxy (impl: 0xccfa7cc2269ac13033b81f3473f53b65199875de) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e0bd3bb1cfb9e5b72a99599d9b4eb9243ca741e` | ❓ Unverified |
| Proxy (impl: 0xe0926b2b096b6efa3fb68934686cad0a7aef765b) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5f53693c1752214bc661f208e8243a68e1283607` | ❓ Unverified |
| Proxy (impl: 0xff399dc58f19fe6f6a32519329cf249df9cd79f7) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e8612c7306e25df7231565a91a8593744a110f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd85408e3ba9eb859b790055ca9e1a86cd017f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee4a691c4f9330aabe596141897239342eaa202d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 29 deployments: kaia `0x0becde49394d537b240c0272a7c5fefc932691fe`; kaia `0x13cee5ac81a78f23be0b3846e9d5b622d62f3785`; kaia `0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c`; kaia `0x1d68a6cefed44101ed79a830e8a5ad5c0a52d8de`; kaia `0x1f5b386243c42c7f297f084269b8f85636ef5a61`; kaia `0x20e985976ab18260995660636c5716d2f4fc4adc`; kaia `0x2572e15f1c0806bb6d8efc0d867caa27bfaedc40`; kaia `0x3311d2a0d88597da3be946aa4d0d112b486bfde8`; kaia `0x3e92a93c7ae3c0d7aca27190b92f0f2db09becc7`; kaia `0x4afd6ad5b924cd29513d1fb9b66728c4c5a1bd3e`; kaia `0x50519a3af6c0662134ed7f9a160142d28d10f455`; kaia `0x57b71db8c039ad34b28c289272efa09b5a870c20`; kaia `0x609c1701ef5156e3c01bdbf80ce5ed1941dd2387`; kaia `0x72301ddb480d4a11b168f886bd4e766de0724199`; kaia `0x7eec57beb20576cb35c500ae5826e16960aa878b`; kaia `0x84e63d6ae32654bcdd5301e01e703959ac7a622c`; kaia `0x91caae299305a8133f295a59f4f22005d16eb65d`; kaia `0x947ae1c8eaac50da2bd14e3230361f986a2a59eb`; kaia `0x9e3e70f4d09bcfe08f456c426eb90f7aa6f70df2`; kaia `0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d`; kaia `0xa5540e13f476b597d7a8708e7caa2eb05c58e295`; kaia `0xc693a80b13763b3c69cceed4c434e9f1cfc03f77`; kaia `0xcece82a34902aa1b7cb6419dbcb2fed893496faa`; kaia `0xd064f89a9a95ea86a706543449d0d97557faf929`; kaia `0xd49162a9279441f9f12e199b0a28499fb85b8fb5`; kaia `0xdb0c1338c127840043cafdb208c956d24d71fb30`; kaia `0xdcc82ab8abdcbedf1f42083300b13d1fa616a514`; kaia `0xe2c3082df0ea5f3606e7adf6aab1b559a03b5ab4`; kaia `0xf74550de1d4b4ff41ad44fd5ef26acb5200525e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393374 | `0x1045626a4b79a40827dd3087e06dcc73c590d575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393375 | `0x1cfd5d5268400648c2ffaf9bdb01cb6b0b58f672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393376 | `0x2e4e573d86c70688cd97d76bc5ddc1bb265bf5d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393377 | `0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393378 | `0x40fb0f9084828adbc3dcd71840ea545bf243cd0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393379 | `0x4bfc1773280689d17c8c00b2514a5c28c8c2b021` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393380 | `0x4e4654ce4ca7ff0ba66a0a4a588a4bd55a6f9a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393381 | `0x55ced8f290256e165d3f50eda0b60e261ec38f55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393382 | `0x6090d8eecb74058bc53bb24273345dd8ba5652bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393383 | `0x650a4c074a58b18fbeed48ae766e58a382d9e5f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393384 | `0x723d3422788f47f5dae153515a3c277293dbd8f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393385 | `0x7437892a3e2e658038758dd7ca638334c0c2006c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393386 | `0x7876a2faf6aad1f6f8e47ad612d9472a4821dfda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393387 | `0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393388 | `0x8e53cdaa89381c203a074fb3388f65936358f200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393389 | `0x8f19e66b4ba81faae964232baa2bdc8118385822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393390 | `0xc090e88bdaa823b7c1dd8d9e24cbacb0f35f2675` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393391 | `0xd8acff2e2b8b1cf052aca4ba331743f73c569e68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393392 | `0xea8e1872adce77efbe5d6fe37b5c257cc86ec786` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 18
- Live contracts: 12
- Unknown liveness contracts: 6
- Source-verified contracts: 16
- Currently scope-matched contracts retained as-is: 5
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=5, candidate review=7, source verified unclassified=4, unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0x40fb0f9084828adbc3dcd71840ea545bf243cd0f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0x4afd6ad5b924cd29513d1fb9b66728c4c5a1bd3e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0x57b71db8c039ad34b28c289272efa09b5a870c20` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0x91caae299305a8133f295a59f4f22005d16eb65d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0xc090e88bdaa823b7c1dd8d9e24cbacb0f35f2675` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | AssetPriceConverter<br>`0x46ee97692856dcaeeb7ce598f78b8eade7a18e2d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | SuperEarnRouter<br>`0xd50d11d1d1267c78240e2cf452d0707c46591a0d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x733e7585b9545d5856c79da04a4378fc8a498879` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x8e53cdaa89381c203a074fb3388f65936358f200` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd8acff2e2b8b1cf052aca4ba331743f73c569e68` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xf313102f42210accc7b17b33482d1eccd9e9f622` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | candidate review | UniversalSwapRouter<br>`0x8f19e66b4ba81faae964232baa2bdc8118385822` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | source verified unclassified | BridgeAccountant<br>`0x0f4841b8b3796f406fa44b17d89465657533732c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | source verified unclassified | CooldownVault<br>`0xa8c0c468f90cc920cea6cb4ab965f7ca7fab53bc` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | source verified unclassified | CrosschainAdapter<br>`0x6172c5b4e42c13b41f82a8b58f08848f9d781bf2` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | source verified unclassified | SuperEarnMessageAgent<br>`0x37887c5b3c9c9d8cd2113aba6078f125cfa135a9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1a10da860fa9f23da6bf6ea2583c6f9158ed8cc` | non_address_book | unknown | unknown | unverified | n/a | `0x95572bb567a3200ff432be6e048f2f50601182dd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde597fb7ee1de45ffe80881a4ce2259f67cbd610` | non_address_book | unknown | unknown | unverified | n/a | `0x95572bb567a3200ff432be6e048f2f50601182dd` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [superearn-audit-reports (GitHub directory)](https://github.com/superearn-io/superearn-audit-reports) | Spearbit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026.05.21-spearbit.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.05.21-spearbit.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 8 | 6 | 0 | 33 | high |
| [2026.04.28-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.04.28-certik.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2026.04.07-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.04.07-certik.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 9 | high |
| [2026.02.19-certik.pdf](https://github.com/superearn-io/superearn-audit-reports/blob/main/2026.02.19-certik.pdf) | CertiK | Audit | 2026-02 | fresh | Direct | contract_name | matched | 9 | 6 | 0 | 15 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3925] superearn-audit-reports (GitHub directory) — no match: The provided text is a GitHub repository page listing PDF files, not the actual audit report content. No contract names or audit details are extractable.
- [11865] 2026.05.21-spearbit.pdf — matched: Extracted all contracts from the scope section (Section 2.1) and file paths. Audit date from cover page.
- [11866] 2026.04.28-certik.pdf — matched: Audit scope explicitly lists CustomVault.sol and CustomYearnStrategy.sol. Audit date is 'Apr 27th, 2026' from cover page.
- [11867] 2026.04.07-certik.pdf — matched: Extracted 12 contract names from scope and findings. Audit date from cover page: 'CertiK Assessed on Apr 7th, 2026' and final report published on 04/07/2026.
- [11868] 2026.02.19-certik.pdf — matched: Extracted contract names from the audit scope section (Appendix), file paths in findings, and the list of upgradeable contracts in SUA-47. The audit date is from the cover page: 'CertiK Assessed on Feb 19th, 2026' and the timeline: 'Final report published on 02/19/2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026.05.21-spearbit.pdf | BaseCooldownStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | CooldownVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c` — deployed 2026-04-02 09:42:35+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x4e4654ce4ca7ff0ba66a0a4a588a4bd55a6f9a33` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8e53cdaa89381c203a074fb3388f65936358f200` — deployed 2025-12-04 10:11:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.05.21-spearbit.pdf | CooldownVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | HealthCheck | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | StrategyERC7540Vault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | StrategyMorphoV1Vault | own contract | StrategyMorphoV1Vault (selected) `0x1f5b386243c42c7f297f084269b8f85636ef5a61` — deployed 2026-03-05 10:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | IBaseFeeOracle | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICooldownVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IStrategyCooldownAware | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ISuperEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SuperEarnRouter | ambiguous — not counted | UnnamedContract (alternative) `0x7437892a3e2e658038758dd7ca638334c0c2006c` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8acff2e2b8b1cf052aca4ba331743f73c569e68` — deployed 2025-12-04 10:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.05.21-spearbit.pdf | SuperEarnAccessControl | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | BridgeAccountant | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40fb0f9084828adbc3dcd71840ea545bf243cd0f` — deployed 2025-12-04 11:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | BridgeQueue | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | CrosschainAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc090e88bdaa823b7c1dd8d9e24cbacb0f35f2675` — deployed 2025-12-04 11:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | SuperEarnMessageAgent | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4afd6ad5b924cd29513d1fb9b66728c4c5a1bd3e` — deployed 2025-12-04 11:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | OriginVault | own contract | UnnamedContract (selected) `0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | SuperearnERC7540 | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IBridgeAccountant | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICrosschainAdapter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICrosschainVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IOriginVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRemoteVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRunespearAgent | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRunespearReceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ISwapQuoter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | AssetPriceConverter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x57b71db8c039ad34b28c289272efa09b5a870c20` — deployed 2025-12-04 11:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | OraklAssetPriceConverter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | VaultStateHelper | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearLib | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearProtocol | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearReceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearSender | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearTransceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SuperEarnV2Protocol | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SwapQuoter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | UniversalSwapRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x91caae299305a8133f295a59f4f22005d16eb65d` — deployed 2026-02-12 09:34:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.28-certik.pdf | CustomVault | own contract | UnnamedContract (selected) `0x7876a2faf6aad1f6f8e47ad612d9472a4821dfda` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.28-certik.pdf | CustomYearnStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.04.07-certik.pdf | CustomStrategy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xcece82a34902aa1b7cb6419dbcb2fed893496faa` — deployed 2026-04-22 11:02:47+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x947ae1c8eaac50da2bd14e3230361f986a2a59eb` — deployed 2026-05-04 07:50:59+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x72301ddb480d4a11b168f886bd4e766de0724199` — deployed 2026-04-08 11:53:23+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e92a93c7ae3c0d7aca27190b92f0f2db09becc7` — deployed 2026-05-04 11:07:47+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2c3082df0ea5f3606e7adf6aab1b559a03b5ab4` — deployed 2026-05-05 17:48:35+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x50519a3af6c0662134ed7f9a160142d28d10f455` — deployed 2026-04-02 13:51:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | PendlePTDiamond | ambiguous — not counted | PendlePTDiamond (proxy) (alternative) `0x3311d2a0d88597da3be946aa4d0d112b486bfde8` — deployed 2026-04-02 11:09:59+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0xa5540e13f476b597d7a8708e7caa2eb05c58e295` — deployed 2026-04-02 11:10:11+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0x609c1701ef5156e3c01bdbf80ce5ed1941dd2387` — deployed 2026-04-02 11:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | USDTToSUSDeSwapper | unmatched — not counted | — | Listed in scope and findings (SA2-56, SA2-57) | no |
| 2026.04.07-certik.pdf | USDCToSNUSDCurveSwapper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdcc82ab8abdcbedf1f42083300b13d1fa616a514` — deployed 2026-04-02 11:07:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | USDCToCUSDOSwapper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf74550de1d4b4ff41ad44fd5ef26acb5200525e8` — deployed 2026-04-02 11:07:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | PendlePTCoreFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57, SA2-10, SA2-06, SA2-11, SA2-12, SA2-14) | no |
| 2026.04.07-certik.pdf | PendlePTCooldownFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | PendlePTExecutionFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | PendlePTYearnFacet | ambiguous — not counted | PendlePTDiamond (proxy) (alternative) `0x3311d2a0d88597da3be946aa4d0d112b486bfde8` — deployed 2026-04-02 11:09:59+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0xa5540e13f476b597d7a8708e7caa2eb05c58e295` — deployed 2026-04-02 11:10:11+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0x609c1701ef5156e3c01bdbf80ce5ed1941dd2387` — deployed 2026-04-02 11:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | DiamondCutFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | PendlePTEmergencyExecutionFacet | unmatched — not counted | — | Mentioned as outside scope but reviewed in Review Notes | no |
| 2026.02.19-certik.pdf | CooldownVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c` — deployed 2026-04-02 09:42:35+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x4e4654ce4ca7ff0ba66a0a4a588a4bd55a6f9a33` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8e53cdaa89381c203a074fb3388f65936358f200` — deployed 2025-12-04 10:11:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.02.19-certik.pdf | OriginVault | own contract | UnnamedContract (selected) `0x3b37db3ac2a58f2daba1a7d66d023937d61fc95b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | OriginVaultBase | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-48) | no |
| 2026.02.19-certik.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2fec291a43e41aa87669eaef01f4efaa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | CrosschainAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc090e88bdaa823b7c1dd8d9e24cbacb0f35f2675` — deployed 2025-12-04 11:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | SuperEarnAccessControl | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47) | no |
| 2026.02.19-certik.pdf | BridgeAccountant | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40fb0f9084828adbc3dcd71840ea545bf243cd0f` — deployed 2025-12-04 11:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | SuperEarnMessageAgent | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4afd6ad5b924cd29513d1fb9b66728c4c5a1bd3e` — deployed 2025-12-04 11:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | AssetPriceConverter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x57b71db8c039ad34b28c289272efa09b5a870c20` — deployed 2025-12-04 11:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | OraklAssetPriceConverter | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-48) | no |
| 2026.02.19-certik.pdf | USDOKycedCA | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc693a80b13763b3c69cceed4c434e9f1cfc03f77` — deployed 2025-12-30 08:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | RunespearReceiver | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-25, SUA-29) | no |
| 2026.02.19-certik.pdf | RunespearSender | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-30) | no |
| 2026.02.19-certik.pdf | RunespearTransceiver | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-25) | no |
| 2026.02.19-certik.pdf | HealthCheck | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-08) | no |
| 2026.02.19-certik.pdf | BaseCooldownStrategy | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-23, SUA-26) | no |
| 2026.02.19-certik.pdf | StrategyOriginVault | own contract | UnnamedContract (selected) `0x650a4c074a58b18fbeed48ae766e58a382d9e5f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | StrategyUSDOExpressV2 | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-23, SUA-41) | no |
| 2026.02.19-certik.pdf | StrategyMorphoV1Vault | own contract | StrategyMorphoV1Vault (selected) `0x1f5b386243c42c7f297f084269b8f85636ef5a61` — deployed 2026-03-05 10:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | BridgeQueue | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-12, SUA-15) | no |
| 2026.02.19-certik.pdf | RunespearLib | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-25, SUA-30) | no |
| 2026.02.19-certik.pdf | VaultStateHelper | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-55) | no |
| 2026.02.19-certik.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-24) | no |
| 2026.02.19-certik.pdf | TimelockExecutionLib | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-31) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1c097dfe13b0f511d987f7ea6077b7fb637ec83c` | CooldownVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e53cdaa89381c203a074fb3388f65936358f200` | CooldownVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d68a6cefed44101ed79a830e8a5ad5c0a52d8de` | CrosschainKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e92a93c7ae3c0d7aca27190b92f0f2db09becc7` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50519a3af6c0662134ed7f9a160142d28d10f455` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72301ddb480d4a11b168f886bd4e766de0724199` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947ae1c8eaac50da2bd14e3230361f986a2a59eb` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcece82a34902aa1b7cb6419dbcb2fed893496faa` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2c3082df0ea5f3606e7adf6aab1b559a03b5ab4` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd064f89a9a95ea86a706543449d0d97557faf929` | LightKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13cee5ac81a78f23be0b3846e9d5b622d62f3785` | MultiMorphoDirectAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd49162a9279441f9f12e199b0a28499fb85b8fb5` | MultiMorphoDirectAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa41432a67a60a79f45ddfd9e242e72b91c8ea19d` | StrategyMorphoV2Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84e63d6ae32654bcdd5301e01e703959ac7a622c` | StUSDSAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd50d11d1d1267c78240e2cf452d0707c46591a0d` | SuperEarnRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0becde49394d537b240c0272a7c5fefc932691fe` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7eec57beb20576cb35c500ae5826e16960aa878b` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e3e70f4d09bcfe08f456c426eb90f7aa6f70df2` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 7 |
| standard_library | 46 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (15 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 52 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=21

Zero-match audit list:

- [3925] superearn-audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
