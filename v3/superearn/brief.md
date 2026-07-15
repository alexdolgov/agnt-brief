# Agentic Audit Brief: SuperEarn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SuperEarn (`superearn`)
- Website: [https://superearn.io/](https://superearn.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
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

- CooldownVault (`0xa8c0c4...ab53bc`, chain 1)
- CrosschainAdapter (`0x6172c5...781bf2`, chain 1)
- MultiMorphoDirectAssetsProvider (`0x13cee5...2f3785`, chain 1)
- MultiMorphoDirectAssetsProvider (`0xd49162...5b8fb5`, chain 1)
- PendlePTDiamond (`0x3311d2...6bfde8`, chain 1)
- PendlePTDiamond (`0x609c17...dd2387`, chain 1)
- PendlePTDiamond (`0xa5540e...58e295`, chain 1)
- PendleReUSDAssetsProvider (`0xdb0c13...71fb30`, chain 1)
- PendleSNUSDAssetsProviderV2 (`0x20e985...fc4adc`, chain 1)
- PendleUSDGAssetsProviderV2 (`0x2572e1...aedc40`, chain 1)
- StrategyMorphoV1Vault (`0x1f5b38...ef5a61`, chain 1)
- StrategyMorphoV2Vault (`0xa41432...8ea19d`, chain 1)
- StUSDSAssetsProvider (`0x84e63d...7a622c`, chain 1)
- TransparentUpgradeableProxy (`0x1c097d...7ec83c`, chain 1)
- TransparentUpgradeableProxy (`0x1d68a6...52d8de`, chain 1)
- TransparentUpgradeableProxy (`0x3e92a9...9becc7`, chain 1)
- TransparentUpgradeableProxy (`0x50519a...10f455`, chain 1)
- TransparentUpgradeableProxy (`0x72301d...724199`, chain 1)
- TransparentUpgradeableProxy (`0x8c82b2...faa3b2`, chain 1)
- TransparentUpgradeableProxy (`0x947ae1...2a59eb`, chain 1)
- TransparentUpgradeableProxy (`0xc693a8...c03f77`, chain 1)
- TransparentUpgradeableProxy (`0xcece82...496faa`, chain 1)
- TransparentUpgradeableProxy (`0xd064f8...faf929`, chain 1)
- TransparentUpgradeableProxy (`0xdcc82a...16a514`, chain 1)
- TransparentUpgradeableProxy (`0xe2c308...3b5ab4`, chain 1)
- TransparentUpgradeableProxy (`0xf74550...0525e8`, chain 1)
- UnnamedContract (`0x104562...90d575`, chain 8217)
- UnnamedContract (`0x1cfd5d...58f672`, chain 8217)
- UnnamedContract (`0x2e4e57...5bf5d6`, chain 8217)
- UnnamedContract (`0x3b37db...1fc95b`, chain 8217)
- UnnamedContract (`0x40fb0f...43cd0f`, chain 8217)
- UnnamedContract (`0x4bfc17...c2b021`, chain 8217)
- UnnamedContract (`0x4e4654...6f9a33`, chain 8217)
- UnnamedContract (`0x55ced8...c38f55`, chain 8217)
- UnnamedContract (`0x6090d8...5652bf`, chain 8217)
- UnnamedContract (`0x650a4c...d9e5f5`, chain 8217)
- UnnamedContract (`0x723d34...dbd8f3`, chain 8217)
- UnnamedContract (`0x743789...c2006c`, chain 8217)
- UnnamedContract (`0x7876a2...21dfda`, chain 8217)
- UnnamedContract (`0x8c82b2...faa3b2`, chain 8217)
- UnnamedContract (`0x8e53cd...58f200`, chain 8217)
- UnnamedContract (`0x8f19e6...385822`, chain 8217)
- UnnamedContract (`0xc090e8...5f2675`, chain 8217)
- UnnamedContract (`0xd8acff...569e68`, chain 8217)
- UnnamedContract (`0xea8e18...6ec786`, chain 8217)
- Vyper_contract (`0x0becde...2691fe`, chain 1)
- Vyper_contract (`0x7eec57...aa878b`, chain 1)
- Vyper_contract (`0x9e3e70...f70df2`, chain 1)

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
| AssetPriceConverter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393396 | 2 deployments: ethereum `0x46ee97...a18e2d`; ethereum `0x57b71d...870c20` | ✅ Audited |
| BridgeAccountant | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393417 | `0x40fb0f...43cd0f` | ✅ Audited |
| CrosschainAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393398 | 2 deployments: ethereum `0x6172c5...781bf2`; ethereum `0xc090e8...5f2675` | ✅ Audited |
| RemoteVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393404 | `0x8c82b2...faa3b2` | ✅ Audited |
| StrategyMorphoV1Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393364 | `0x1f5b38...ef5a61` | ✅ Audited |
| SuperEarnMessageAgent | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393409 | `0x4afd6a...a1bd3e` | ✅ Audited |
| UniversalSwapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393402 | 2 deployments: ethereum `0x8f19e6...385822`; ethereum `0x91caae...6eb65d` | ✅ Audited |
| USDCToCUSDOSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393415 | `0xf74550...0525e8` | ✅ Audited |
| USDCToSNUSDCurveSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393406 | `0xdcc82a...16a514` | ✅ Audited |
| USDOKycedCA | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393400 | `0xc693a8...c03f77` | ✅ Audited |

### ⚠️ Verified + Unaudited (105)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetPriceConverter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf1ccc5...9c4499` | ⚠️ Unaudited |
| BridgeAccountant | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393362 | `0x0f4841...33732c` | ⚠️ Unaudited |
| BridgeAccountant | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4be44e...11ac98` | ⚠️ Unaudited |
| BridgeAccountant | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8dbf7f...b85328` | ⚠️ Unaudited |
| CooldownVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393408 | `0x1c097d...7ec83c` | ⚠️ Unaudited |
| CooldownVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393407 | 2 deployments: ethereum `0x8e53cd...58f200`; ethereum `0xa8c0c4...ab53bc` | ⚠️ Unaudited |
| CooldownVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe0f3c0...cecc50` | ⚠️ Unaudited |
| CooldownVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xffbb37...eda9ac` | ⚠️ Unaudited |
| CrosschainAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0095a2...e86a4c` | ⚠️ Unaudited |
| CrosschainAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe8b100...dda272` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393393 | `0x1d68a6...52d8de` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x420ed2...1074ae` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b26bc...f5b71c` | ⚠️ Unaudited |
| CrosschainKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1ea03...64d892` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0277f7...e7a2ce` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x35701b...77262e` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393394 | `0x3e92a9...9becc7` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4e3f34...1fc3f5` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393397 | `0x50519a...10f455` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x63db62...f6d8c0` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6458dd...124b50` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393413 | `0x72301d...724199` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x72bd06...be0488` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x76dffa...0cd8e8` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393395 | `0x947ae1...2a59eb` | ⚠️ Unaudited |
| CustomStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa77549...6ed3ba` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393405 | `0xcece82...496faa` | ⚠️ Unaudited |
| CustomStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393401 | `0xe2c308...3b5ab4` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e79cc...0c99dc`; ethereum `0xc25e4b...e3b66d` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393403 | `0xd064f8...faf929` | ⚠️ Unaudited |
| LightKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf7a6a9...ef0bdf` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393363 | `0x13cee5...2f3785` | ⚠️ Unaudited |
| MultiMorphoDirectAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393372 | `0xd49162...5b8fb5` | ⚠️ Unaudited |
| PendlePTYearnFacet | unknown | project_anchor | own_supporting | 3 | ethereum | unit-393399 (3 proxies) | 3 deployments: ethereum `0x3311d2...6bfde8`; ethereum `0x609c17...dd2387`; ethereum `0xa5540e...58e295` | ⚠️ Unaudited |
| PendleReUSDAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393373 | `0xdb0c13...71fb30` | ⚠️ Unaudited |
| PendleSNUSDAssetsProviderV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393365 | `0x20e985...fc4adc` | ⚠️ Unaudited |
| PendleUSDGAssetsProviderV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393366 | `0x2572e1...aedc40` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5732a7...39418d` | ⚠️ Unaudited |
| RemoteVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4d0c...16a499` | ⚠️ Unaudited |
| RemoteVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe35826...2e4be0` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xce6917...897f2f` | ⚠️ Unaudited |
| StrategyMorphoV2Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393371 | `0xa41432...8ea19d` | ⚠️ Unaudited |
| StUSDSAssetsProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393369 | `0x84e63d...7a622c` | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393367 | `0x37887c...a135a9` | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb4c91a...c0a61d` | ⚠️ Unaudited |
| SuperEarnMessageAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4cb07...381e6d` | ⚠️ Unaudited |
| SuperEarnRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f9825...438864` | ⚠️ Unaudited |
| SuperEarnRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0bc83...32f25f` | ⚠️ Unaudited |
| SuperEarnRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393410 | 2 deployments: ethereum `0xd50d11...591a0d`; ethereum `0xd8acff...569e68` | ⚠️ Unaudited |
| SwapQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3b37db...1fc95b` | ⚠️ Unaudited |
| SwapQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc08a98...f6190c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x05728b...ea6ea5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x065e75...e7dcee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d4ce6...d30ef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f554f...d39c96` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x120d82...77d331` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1647aa...da7f2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16975e...1a1422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x194f71...c747c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x239f2d...21ea42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x428c55...775071` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b3e99...4466d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e4654...6f9a33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x55ced8...c38f55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x570435...ccd190` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5ae1ae...925933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5b7297...159c23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5bb976...d9839f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6763d4...2ed08a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6b8f00...59415b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x733e75...498879`; ethereum `0xde597f...cbd610` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x75bd4b...38e82d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x76fd80...6ff95c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7876a2...21dfda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7d0c55...4870f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x80f421...714663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x908f33...14e359` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x969e7b...7335fa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9cc64f...2bef8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9ef977...866b4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f9798...d329ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa12cc7...7ece6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xad4cbf...6f5f65` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xafa58b...4bdf06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb80df8...8e45af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb9c275...1eb418` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc0287b...d95a10` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc88510...ce1185` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xccf053...5daa5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd1a10d...8ed8cc`; ethereum `0xf31310...e9f622` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd94ba9...9cc304` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xddbcef...3f084e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xea80c6...cd6215` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeb1f94...5343c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xf1134d...00fca2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xfbf57c...350c89` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x519a06...31b324` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x743789...c2006c` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xddfa9b...976828` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393361 | `0x0becde...2691fe` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393368 | `0x7eec57...aa878b` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393370 | `0x9e3e70...f70df2` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x04d907...9efcc4`; ethereum `0x7094c7...1c4a17` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x534ed5...10e95a` | ⚠️ Unaudited |
| YearnVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xda84cc...77a9bb` | ⚠️ Unaudited |

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
| Proxy (impl: 0x0a9d6f20daf72042b0b7cc901bbfba2fc5b11381) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbab5ac...5312e8` | ❓ Unverified |
| Proxy (impl: 0x29a915943af6fcafa3524c5d64ee03016909a90c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf3d1a0...3a9295` | ❓ Unverified |
| Proxy (impl: 0x45c999dfe22860978d5adbff9f7799f69e4e3e76) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x531385...c10e78` | ❓ Unverified |
| Proxy (impl: 0x4aca64ad4f0424a13af90b51d7f4785bd9ef7cc6) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x55c7a3...981a57` | ❓ Unverified |
| Proxy (impl: 0x4c2e0fdcdcf88cd179434756ab76759c33fd2367) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe67a25...3f51de` | ❓ Unverified |
| Proxy (impl: 0x5b618da0337c75ff616bed4eb653650e2a76593e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x38d2af...16f9b3` | ❓ Unverified |
| Proxy (impl: 0x643267631337fbb4aea601d8a918d4d06e6137e5) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c396...3e8007` | ❓ Unverified |
| Proxy (impl: 0x6687962c41cc5a3d05433a16347c1c6c48fb2731) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x16dc0a...82847c` | ❓ Unverified |
| Proxy (impl: 0x804c2f598f3b19608428c53dd1cebd6bc8d4e0ff) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x093ffe...7da906` | ❓ Unverified |
| Proxy (impl: 0xa80b61e4f9adef22ec967236662ef2fa4d96fc68) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6a635d...9151ec` | ❓ Unverified |
| Proxy (impl: 0xb66a04318699b630d490a68c80c30695c7aa282c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x600dc6...6409cc` | ❓ Unverified |
| Proxy (impl: 0xc5bced0edbb91c53d6d807cc45ffb73c741998bc) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x08dd4c...cd5841` | ❓ Unverified |
| Proxy (impl: 0xccfa7cc2269ac13033b81f3473f53b65199875de) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e0bd3...ca741e` | ❓ Unverified |
| Proxy (impl: 0xe0926b2b096b6efa3fb68934686cad0a7aef765b) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5f5369...283607` | ❓ Unverified |
| Proxy (impl: 0xff399dc58f19fe6f6a32519329cf249df9cd79f7) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e8612...a110f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd8540...017f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee4a69...aa202d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 29 deployments: kaia `0x0becde...2691fe`; kaia `0x13cee5...2f3785`; kaia `0x1c097d...7ec83c`; kaia `0x1d68a6...52d8de`; kaia `0x1f5b38...ef5a61`; kaia `0x20e985...fc4adc`; kaia `0x2572e1...aedc40`; kaia `0x3311d2...6bfde8`; kaia `0x3e92a9...9becc7`; kaia `0x4afd6a...a1bd3e`; kaia `0x50519a...10f455`; kaia `0x57b71d...870c20`; kaia `0x609c17...dd2387`; kaia `0x72301d...724199`; kaia `0x7eec57...aa878b`; kaia `0x84e63d...7a622c`; kaia `0x91caae...6eb65d`; kaia `0x947ae1...2a59eb`; kaia `0x9e3e70...f70df2`; kaia `0xa41432...8ea19d`; kaia `0xa5540e...58e295`; kaia `0xc693a8...c03f77`; kaia `0xcece82...496faa`; kaia `0xd064f8...faf929`; kaia `0xd49162...5b8fb5`; kaia `0xdb0c13...71fb30`; kaia `0xdcc82a...16a514`; kaia `0xe2c308...3b5ab4`; kaia `0xf74550...0525e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393374 | `0x104562...90d575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393375 | `0x1cfd5d...58f672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393376 | `0x2e4e57...5bf5d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393377 | `0x3b37db...1fc95b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393378 | `0x40fb0f...43cd0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393379 | `0x4bfc17...c2b021` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393380 | `0x4e4654...6f9a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393381 | `0x55ced8...c38f55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393382 | `0x6090d8...5652bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393383 | `0x650a4c...d9e5f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393384 | `0x723d34...dbd8f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393385 | `0x743789...c2006c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393386 | `0x7876a2...21dfda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393387 | `0x8c82b2...faa3b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393388 | `0x8e53cd...58f200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393389 | `0x8f19e6...385822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393390 | `0xc090e8...5f2675` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393391 | `0xd8acff...569e68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-393392 | `0xea8e18...6ec786` | ❓ Unverified |

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
| 2026.05.21-spearbit.pdf | CooldownVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1c097d...7ec83c` — deployed 2026-04-02 09:42:35+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x4e4654...6f9a33` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8e53cd...58f200` — deployed 2025-12-04 10:11:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.05.21-spearbit.pdf | CooldownVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | HealthCheck | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | StrategyERC7540Vault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | StrategyMorphoV1Vault | own contract | StrategyMorphoV1Vault (selected) `0x1f5b38...ef5a61` — deployed 2026-03-05 10:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | IBaseFeeOracle | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICooldownVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IStrategyCooldownAware | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ISuperEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SuperEarnRouter | ambiguous — not counted | UnnamedContract (alternative) `0x743789...c2006c` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8acff...569e68` — deployed 2025-12-04 10:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.05.21-spearbit.pdf | SuperEarnAccessControl | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | BridgeAccountant | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40fb0f...43cd0f` — deployed 2025-12-04 11:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | BridgeQueue | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | CrosschainAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc090e8...5f2675` — deployed 2025-12-04 11:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | SuperEarnMessageAgent | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4afd6a...a1bd3e` — deployed 2025-12-04 11:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | OriginVault | own contract | UnnamedContract (selected) `0x3b37db...1fc95b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2...faa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | SuperearnERC7540 | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IBridgeAccountant | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICrosschainAdapter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ICrosschainVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IOriginVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRemoteVault | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRunespearAgent | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | IRunespearReceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | ISwapQuoter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | AssetPriceConverter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x57b71d...870c20` — deployed 2025-12-04 11:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.05.21-spearbit.pdf | OraklAssetPriceConverter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | VaultStateHelper | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearLib | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearProtocol | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearReceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearSender | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | RunespearTransceiver | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SuperEarnV2Protocol | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | SwapQuoter | unmatched — not counted | — | listed in scope | no |
| 2026.05.21-spearbit.pdf | UniversalSwapRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x91caae...6eb65d` — deployed 2026-02-12 09:34:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.28-certik.pdf | CustomVault | own contract | UnnamedContract (selected) `0x7876a2...21dfda` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.28-certik.pdf | CustomYearnStrategy | unmatched — not counted | — | listed in scope | no |
| 2026.04.07-certik.pdf | CustomStrategy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xcece82...496faa` — deployed 2026-04-22 11:02:47+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x947ae1...2a59eb` — deployed 2026-05-04 07:50:59+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x72301d...724199` — deployed 2026-04-08 11:53:23+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e92a9...9becc7` — deployed 2026-05-04 11:07:47+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2c308...3b5ab4` — deployed 2026-05-05 17:48:35+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x50519a...10f455` — deployed 2026-04-02 13:51:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | PendlePTDiamond | ambiguous — not counted | PendlePTDiamond (proxy) (alternative) `0x3311d2...6bfde8` — deployed 2026-04-02 11:09:59+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0xa5540e...58e295` — deployed 2026-04-02 11:10:11+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0x609c17...dd2387` — deployed 2026-04-02 11:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | USDTToSUSDeSwapper | unmatched — not counted | — | Listed in scope and findings (SA2-56, SA2-57) | no |
| 2026.04.07-certik.pdf | USDCToSNUSDCurveSwapper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdcc82a...16a514` — deployed 2026-04-02 11:07:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | USDCToCUSDOSwapper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf74550...0525e8` — deployed 2026-04-02 11:07:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | PendlePTCoreFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57, SA2-10, SA2-06, SA2-11, SA2-12, SA2-14) | no |
| 2026.04.07-certik.pdf | PendlePTCooldownFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | PendlePTExecutionFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | PendlePTYearnFacet | ambiguous — not counted | PendlePTDiamond (proxy) (alternative) `0x3311d2...6bfde8` — deployed 2026-04-02 11:09:59+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0xa5540e...58e295` — deployed 2026-04-02 11:10:11+03 — liveness: live (current_address_book_code)<br>PendlePTDiamond (proxy) (alternative) `0x609c17...dd2387` — deployed 2026-04-02 11:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.04.07-certik.pdf | DiamondCutFacet | unmatched — not counted | — | Listed in scope and findings (SA2-57) | no |
| 2026.04.07-certik.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2...faa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.04.07-certik.pdf | PendlePTEmergencyExecutionFacet | unmatched — not counted | — | Mentioned as outside scope but reviewed in Review Notes | no |
| 2026.02.19-certik.pdf | CooldownVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1c097d...7ec83c` — deployed 2026-04-02 09:42:35+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x4e4654...6f9a33` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8e53cd...58f200` — deployed 2025-12-04 10:11:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.02.19-certik.pdf | OriginVault | own contract | UnnamedContract (selected) `0x3b37db...1fc95b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | OriginVaultBase | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-48) | no |
| 2026.02.19-certik.pdf | RemoteVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8c82b2...faa3b2` — deployed 2025-12-04 11:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | CrosschainAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc090e8...5f2675` — deployed 2025-12-04 11:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | SuperEarnAccessControl | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47) | no |
| 2026.02.19-certik.pdf | BridgeAccountant | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40fb0f...43cd0f` — deployed 2025-12-04 11:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | SuperEarnMessageAgent | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4afd6a...a1bd3e` — deployed 2025-12-04 11:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | AssetPriceConverter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x57b71d...870c20` — deployed 2025-12-04 11:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | OraklAssetPriceConverter | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-48) | no |
| 2026.02.19-certik.pdf | USDOKycedCA | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc693a8...c03f77` — deployed 2025-12-30 08:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | RunespearReceiver | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-25, SUA-29) | no |
| 2026.02.19-certik.pdf | RunespearSender | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-30) | no |
| 2026.02.19-certik.pdf | RunespearTransceiver | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-47, SUA-25) | no |
| 2026.02.19-certik.pdf | HealthCheck | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-08) | no |
| 2026.02.19-certik.pdf | BaseCooldownStrategy | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-23, SUA-26) | no |
| 2026.02.19-certik.pdf | StrategyOriginVault | own contract | UnnamedContract (selected) `0x650a4c...d9e5f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | StrategyUSDOExpressV2 | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-48, SUA-23, SUA-41) | no |
| 2026.02.19-certik.pdf | StrategyMorphoV1Vault | own contract | StrategyMorphoV1Vault (selected) `0x1f5b38...ef5a61` — deployed 2026-03-05 10:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.19-certik.pdf | BridgeQueue | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-12, SUA-15) | no |
| 2026.02.19-certik.pdf | RunespearLib | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-25, SUA-30) | no |
| 2026.02.19-certik.pdf | VaultStateHelper | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-55) | no |
| 2026.02.19-certik.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-24) | no |
| 2026.02.19-certik.pdf | TimelockExecutionLib | unmatched — not counted | — | Listed in scope and mentioned in findings (SUA-31) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1c097d...7ec83c` | CooldownVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e53cd...58f200` | CooldownVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d68a6...52d8de` | CrosschainKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e92a9...9becc7` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50519a...10f455` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72301d...724199` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947ae1...2a59eb` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcece82...496faa` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2c308...3b5ab4` | CustomStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd064f8...faf929` | LightKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13cee5...2f3785` | MultiMorphoDirectAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd49162...5b8fb5` | MultiMorphoDirectAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa41432...8ea19d` | StrategyMorphoV2Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84e63d...7a622c` | StUSDSAssetsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd50d11...591a0d` | SuperEarnRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0becde...2691fe` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7eec57...aa878b` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e3e70...f70df2` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
