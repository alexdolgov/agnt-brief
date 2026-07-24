# Agentic Audit Brief: Blend Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 12 (3 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 88.6% over 90 days

## Project Overview

- Project: Blend Money (`blend-money`)
- Website: [https://blend.money/](https://blend.money/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, hyperliquid, polygon, scroll
- Contract surface: 39 unique implementations (107 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $122,738.61
- On-chain TVL (included contracts): $8,101.70
- TVL by chain: Arbitrum $8,101.70

## Project Description

This brief describes the observed EVM deployment and audit surface for Blend Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across arbitrum, base, ethereum, hyperliquid, polygon, scroll. Structural roles: 11 supporting, 10 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: supporting (11), core (10)
- Contract kinds: contract (21)
- Detected standards: ownable (5), erc165 (4), accesscontrol (3), pausable (3)
- Frameworks: openzeppelin (18), permit2 (4), solmate (4), layerzero (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MorphoVaultController (`0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031`, chain 1)
- MorphoVaultController (`0x20baf09df508c6e055be01b508478d3f674229c3`, chain 8453)
- MorphoVaultController (`0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c`, chain 8453)
- MorphoVaultController (`0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304`, chain 42161)
- MorphoVaultController (`0xab84362b57a83c4bcdc1de76835eb4dc9345ed50`, chain 534352)
- RolesBroadcaster (`0x6f94ac2c4129a7f1435532f39913dfd23d061263`, chain 8453)
- RolesGuard (`0xab6a8f5a37cee7a979622138524c4ddf22debc49`, chain 999)
- RolesGuard (`0x0a55aa9881b64bf370738f088154f997b975f718`, chain 8453)
- RolesGuard (`0x7d55a2bd88ed4e886ba8a95871df823db70acddf`, chain 42161)
- RolesGuard (`0xad7188d0970cbedbdb233f0e5b7367cf149c3449`, chain 534352)
- RolesReceiver (`0x9944555a71d6e188a4c2615545e443e7097c5d6e`, chain 8453)
- RolesReceiver (`0xe4e0f5eb706084f4d598049ddd0abfd2f8431360`, chain 8453)
- RolesReceiver (`0x107b9863c91383cb4b4683a1e8d4304216a98fed`, chain 42161)
- RolesReceiver (`0xa03f41ede4d9a50f87e34fce042034eae74a82e8`, chain 42161)
- RolesReceiver (`0x2af296e77f32a356d13d9a3466678265cb92a4c9`, chain 534352)
- SwapAdapter (`0x30c7437c1063fc3c7af022ac7ab01c897fb5e135`, chain 1)
- SwapAdapter (`0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b`, chain 999)
- SwapAdapter (`0x2207189bab0f177df87d77b7575102f2df925754`, chain 8453)
- SwapAdapter (`0xbf76d87abb1c22a2a820888483956298a172def4`, chain 8453)
- SwapAdapter (`0x920029f02b87c7bb0013c8e17e245209c03dd7bf`, chain 42161)
- WhitelistedSwapAdapter (`0x44c6dcba90dae9238f5c8842abbf8506c3d3b437`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 14 of 39 unique; 25 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/26
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 39
- Raw deployments: 107
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 12 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 14.3% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 7.7% | 2025-10 |
| Zellic | Tier 2 | 1 | 3.8% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RolesBroadcaster | unknown | project_anchor | own_supporting | 0 | base | unit-381233 | `0x6f94ac2c4129a7f1435532f39913dfd23d061263` | ✅ Audited |
| SwapAdapter | adapter | project_anchor | own_core | 0 | base | unit-381238 | `0xbf76d87abb1c22a2a820888483956298a172def4` | ✅ Audited |
| WhitelistedSwapAdapter | adapter | project_anchor | own_supporting | 0 | scroll | unit-381215 | `0x44c6dcba90dae9238f5c8842abbf8506c3d3b437` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87`; arbitrum `0x75e9d4fea6c408097ee4f3c63359d0dc617acb4f`; arbitrum `0x9ce8a73296704d4689586347ef6e2087c2128f45`; arbitrum `0xa47c5203d22ae173788a9d9be0f2beecc97f4df9`; arbitrum `0xe3637ca4d1d6dd756de0ecd527c40077029ece6e` | ⚠️ Unaudited |
| AcrossXChainAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c`; ethereum `0x3f4196b3932c9353285d846d3785da7bc0b96a86`; ethereum `0x8d74ec9b936ffe441a2d1864a002778821d633d6` | ⚠️ Unaudited |
| CCTPXChainAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2809ff34acf6905f263532c1de7468789ef4b8da`; ethereum `0x60ee482f7199807772478d8f9e719a286a8ae793`; ethereum `0x68b0f81935f00ac726ba7e369cf720f8ae64feb6`; ethereum `0xa40cff55ae81c6e8b245eee371186a168645628c`; ethereum `0xbb62cb9017417a95fcd0aaca29332f73ecc46cce`; polygon `0x44c6dcba90dae9238f5c8842abbf8506c3d3b437`; hyperliquid `0x2809ff34acf6905f263532c1de7468789ef4b8da` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | 3 deployments: scroll `0x8a23d825467860edb4aca0909f29d0a6a8e3a0a7`; scroll `0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad`; scroll `0xec5906675a92e4113a39d719c5c65a62a0995d59` | ⚠️ Unaudited |
| MockRolesReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1be406661b1df80d25db143ae95e849411d72bdb` | ⚠️ Unaudited |
| MorphoVaultController | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381200 | `0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031` | ⚠️ Unaudited |
| MorphoVaultController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; polygon `0x05824db4609ec96c77e99bc61c8fe0acf3269b24`; polygon `0x107b9863c91383cb4b4683a1e8d4304216a98fed`; hyperliquid `0x44c6dcba90dae9238f5c8842abbf8506c3d3b437`; hyperliquid `0x9f4fb60b8bf16b9b46134f803c39ceaa82f96037`; arbitrum `0xad7188d0970cbedbdb233f0e5b7367cf149c3449` | ⚠️ Unaudited |
| MorphoVaultController | core_logic | project_anchor | own_supporting | 0 | base | unit-381226 | `0x20baf09df508c6e055be01b508478d3f674229c3` | ⚠️ Unaudited |
| MorphoVaultController | core_logic | project_anchor | own_supporting | 0 | base | unit-381230 | `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` | ⚠️ Unaudited |
| MorphoVaultController | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-381211 | `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304` | ⚠️ Unaudited |
| MorphoVaultController | core_logic | project_anchor | own_supporting | 0 | scroll | unit-381218 | `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50` | ⚠️ Unaudited |
| OFTXChainAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: ethereum `0x3fb0c3ae279c71a25f5ab52c046986d408156cf9`; polygon `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b`; hyperliquid `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` | ⚠️ Unaudited |
| RolesGuard | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-381244 | `0xab6a8f5a37cee7a979622138524c4ddf22debc49` | ⚠️ Unaudited |
| RolesGuard | governance | project_anchor | own_core | 0 | base | unit-381223 | 5 deployments: ethereum `0xbb4021d387a48ffe32150f8154c57892e6c6156c`; polygon `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; hyperliquid `0x920029f02b87c7bb0013c8e17e245209c03dd7bf`; base `0x0a55aa9881b64bf370738f088154f997b975f718`; arbitrum `0x7d55a2bd88ed4e886ba8a95871df823db70acddf` | ⚠️ Unaudited |
| RolesGuard | governance | project_anchor | own_supporting | 0 | scroll | unit-381221 | `0xad7188d0970cbedbdb233f0e5b7367cf149c3449` | ⚠️ Unaudited |
| RolesReceiver | unknown | project_anchor | own_core | 0 | ethereum | n/a | 11 deployments: ethereum `0x05824db4609ec96c77e99bc61c8fe0acf3269b24`; ethereum `0x7d55a2bd88ed4e886ba8a95871df823db70acddf`; polygon `0x920029f02b87c7bb0013c8e17e245209c03dd7bf`; polygon `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304`; hyperliquid `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50`; hyperliquid `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304`; base `0x9944555a71d6e188a4c2615545e443e7097c5d6e`; base `0xe4e0f5eb706084f4d598049ddd0abfd2f8431360`; arbitrum `0x107b9863c91383cb4b4683a1e8d4304216a98fed`; arbitrum `0xa03f41ede4d9a50f87e34fce042034eae74a82e8`; scroll `0x6f94ac2c4129a7f1435532f39913dfd23d061263` | ⚠️ Unaudited |
| RolesReceiver | unknown | project_anchor | own_supporting | 0 | scroll | unit-381213 | `0x2af296e77f32a356d13d9a3466678265cb92a4c9` | ⚠️ Unaudited |
| SwapAdapter | unknown | project_anchor | own_supporting | 0 | polygon | n/a | 14 deployments: ethereum `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135`; ethereum `0x8ccedc4f8ea3362e0f85c88a6866976ad3db3406`; ethereum `0x9095bfff63a69e678163f85cf4ae9e3618f12f53`; ethereum `0x920029f02b87c7bb0013c8e17e245209c03dd7bf`; polygon `0x20baf09df508c6e055be01b508478d3f674229c3`; polygon `0x9f4fb60b8bf16b9b46134f803c39ceaa82f96037`; polygon `0xa12e4f2b4aa4ee29e5a81fc83123822d86c0354e`; hyperliquid `0x3d39b3339063e70d03cd2d77822a0f7f61b7f5ae`; hyperliquid `0x7fba4a74f4518719885ea4abf9882101bec4b45e`; hyperliquid `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b`; hyperliquid `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; base `0x2207189bab0f177df87d77b7575102f2df925754`; arbitrum `0x6f94ac2c4129a7f1435532f39913dfd23d061263`; arbitrum `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 6 deployments: ethereum `0x107b9863c91383cb4b4683a1e8d4304216a98fed`; polygon `0x6f94ac2c4129a7f1435532f39913dfd23d061263`; hyperliquid `0x086d13402360efa4c4189695eced9805240ce76a`; hyperliquid `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135`; hyperliquid `0x6f94ac2c4129a7f1435532f39913dfd23d061263`; hyperliquid `0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031` | ⚠️ Unaudited |
| UserWithdrawController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0x509ce0134e14d60a3d67070db5af13c8b3260303`; ethereum `0xb50d1fdf99cbd33f2387cec1611e41770ab74089`; ethereum `0xfd5ce759d38b112dee44ad7b2f509ce658b32a50`; ethereum `0xfd99c8fd21a61029d9df72195764a65612e3a648`; polygon `0x086d13402360efa4c4189695eced9805240ce76a`; polygon `0x9944555a71d6e188a4c2615545e443e7097c5d6e`; hyperliquid `0xbb62cb9017417a95fcd0aaca29332f73ecc46cce`; hyperliquid `0xd78357543f0856fcba65e0410f48b0840501e652` | ⚠️ Unaudited |
| UserWithdrawVaultAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4dd1f0781073d4c917f6c7358f9df3eba25b9fe3`; polygon `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50`; polygon `0xe7c7c7846f890598526ae811c0042d85fa78dcb3`; hyperliquid `0xe4e0f5eb706084f4d598049ddd0abfd2f8431360` | ⚠️ Unaudited |
| XChainVaultAction | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2207189bab0f177df87d77b7575102f2df925754`; ethereum `0x34f8b748554d87a5c85a34817dac2e123ff44d12`; ethereum `0x79635ab06bacee109117c8600b9b95d72527ca9a`; ethereum `0xe5db83eb700a69a5b18a31a3d5ebece5166985b1`; polygon `0x2af296e77f32a356d13d9a3466678265cb92a4c9`; hyperliquid `0x8d74ec9b936ffe441a2d1864a002778821d633d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3f4196b3932c9353285d846d3785da7bc0b96a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0a55aa9881b64bf370738f088154f997b975f718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x107b9863c91383cb4b4683a1e8d4304216a98fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2207189bab0f177df87d77b7575102f2df925754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2809ff34acf6905f263532c1de7468789ef4b8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4366dd5cb0a0922038c305ae41a6559ff1582739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x76ee2923e2b685d9ad97aae5d89e1ed97f5bf7d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7d55a2bd88ed4e886ba8a95871df823db70acddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x81ef98cb6053d030e2050ab6a74370a23b4a93f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9f4fb60b8bf16b9b46134f803c39ceaa82f96037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xab6a8f5a37cee7a979622138524c4ddf22debc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe7c7c7846f890598526ae811c0042d85fa78dcb3` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 36
- Live contracts: 0
- Unknown liveness contracts: 36
- Source-verified contracts: 26
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=2, source verified unclassified=24, unverified unclassified=10

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | OFTXChainAdapter<br>`0x3fb0c3ae279c71a25f5ab52c046986d408156cf9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | AcrossXChainAdapter<br>`0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | AcrossXChainAdapter<br>`0x3f4196b3932c9353285d846d3785da7bc0b96a86` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | AcrossXChainAdapter<br>`0x8d74ec9b936ffe441a2d1864a002778821d633d6` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | CCTPXChainAdapter<br>`0x2809ff34acf6905f263532c1de7468789ef4b8da` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | CCTPXChainAdapter<br>`0x60ee482f7199807772478d8f9e719a286a8ae793` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | CCTPXChainAdapter<br>`0x68b0f81935f00ac726ba7e369cf720f8ae64feb6` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | CCTPXChainAdapter<br>`0xa40cff55ae81c6e8b245eee371186a168645628c` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | CCTPXChainAdapter<br>`0xbb62cb9017417a95fcd0aaca29332f73ecc46cce` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | UserWithdrawController<br>`0xfd99c8fd21a61029d9df72195764a65612e3a648` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | UserWithdrawVaultAction<br>`0x4dd1f0781073d4c917f6c7358f9df3eba25b9fe3` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| ethereum | source verified unclassified | XChainVaultAction<br>`0xe5db83eb700a69a5b18a31a3d5ebece5166985b1` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | CCTPXChainAdapter<br>`0x2809ff34acf6905f263532c1de7468789ef4b8da` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | MockRolesReceiver<br>`0x1be406661b1df80d25db143ae95e849411d72bdb` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | OFTXChainAdapter<br>`0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | SwapAdapter<br>`0x7fba4a74f4518719885ea4abf9882101bec4b45e` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | UserWithdrawController<br>`0xd78357543f0856fcba65e0410f48b0840501e652` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | UserWithdrawVaultAction<br>`0xe4e0f5eb706084f4d598049ddd0abfd2f8431360` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| hyperliquid | source verified unclassified | XChainVaultAction<br>`0x8d74ec9b936ffe441a2d1864a002778821d633d6` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | candidate review | OFTXChainAdapter<br>`0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | source verified unclassified | CCTPXChainAdapter<br>`0x44c6dcba90dae9238f5c8842abbf8506c3d3b437` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | source verified unclassified | SwapAdapter<br>`0x20baf09df508c6e055be01b508478d3f674229c3` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | source verified unclassified | UserWithdrawController<br>`0x9944555a71d6e188a4c2615545e443e7097c5d6e` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | source verified unclassified | UserWithdrawVaultAction<br>`0xab84362b57a83c4bcdc1de76835eb4dc9345ed50` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | source verified unclassified | UserWithdrawVaultAction<br>`0xe7c7c7846f890598526ae811c0042d85fa78dcb3` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| polygon | source verified unclassified | XChainVaultAction<br>`0x2af296e77f32a356d13d9a3466678265cb92a4c9` | non_address_book | unknown | unknown | verified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0a55aa9881b64bf370738f088154f997b975f718` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x2207189bab0f177df87d77b7575102f2df925754` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x2809ff34acf6905f263532c1de7468789ef4b8da` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x4366dd5cb0a0922038c305ae41a6559ff1582739` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x76ee2923e2b685d9ad97aae5d89e1ed97f5bf7d9` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x7d55a2bd88ed4e886ba8a95871df823db70acddf` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x81ef98cb6053d030e2050ab6a74370a23b4a93f6` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0xab6a8f5a37cee7a979622138524c4ddf22debc49` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |
| scroll | unverified unclassified | UnnamedContract<br>`0xe7c7c7846f890598526ae811c0042d85fa78dcb3` | non_address_book | unknown | unknown | unverified | n/a | `0xfb51f16ff17d0bb2f0606279bd0377ca65ff0d4f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits (GitHub directory)](https://github.com/blendmoney/audits) | unknown | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [blend-25-08-10-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-08-10-0-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [blend-25-09-29-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-09-29-0-cantinacode.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [blend-25-09-29-1-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-09-29-1-cantinacode.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [blend-25-10-02-0-zellic.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-10-02-0-zellic.pdf) | Zellic | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [blend-25-10-05-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-10-05-0-cantinacode.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blend-25-10-10-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-10-10-0-cantinacode.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [blend-25-12-05-0-sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-12-05-0-sherlock.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blend-26-01-22-0-sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-26-01-22-0-sherlock.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [blend-26-03-10-0.sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-26-03-10-0.sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [blend-26-05-04-0.sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-26-05-04-0.sherlock.pdf) | Sherlock | Contest | 2026-05 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [blend-26-06-12-0.sherlock.pdf](https://github.com/BlendMoney/audits/blob/main/blend-26-06-12-0.sherlock.pdf) | Sherlock | Contest | 2026-06 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12800] audits (GitHub directory) — no match: Extracted contract names from multiple audit scope descriptions in the README. The latest audit date is June 12, 2026.
- [12801] blend-25-08-10-0-cantinacode.pdf — matched: Extracted contract names from findings context and file references. No explicit scope section found, but contracts are clearly audited targets.
- [12802] blend-25-09-29-0-cantinacode.pdf — no match: No explicit scope section; contracts inferred from finding contexts. Audit date from cover page.
- [12803] blend-25-09-29-1-cantinacode.pdf — matched: No reason recorded
- [12804] blend-25-10-02-0-zellic.pdf — matched: Scope section lists SwapAdapter.sol and WhitelistedSwapAdapter.sol as programs in scope.
- [12805] blend-25-10-05-0-cantinacode.pdf — no match: Only SwapAdapter.sol is explicitly mentioned as the contract in scope. No other contracts or files are listed.
- [12806] blend-25-10-10-0-cantinacode.pdf — no match: Only one contract (StrategyManager) is explicitly referenced in findings. No explicit scope section or file listing provided.
- [12807] blend-25-12-05-0-sherlock.pdf — no match: Scope section lists two files: SwapAdapter.sol and PriceLib.sol. Audit date is November 27-28, 2025, end date used.
- [12808] blend-26-01-22-0-sherlock.pdf — no match: Extracted 10 contract names from the scope section listing files. Audit date is January 15, 2026 (end of range January 12-15, 2026).
- [12809] blend-26-03-10-0.sherlock.pdf — no match: No reason recorded
- [12810] blend-26-05-04-0.sherlock.pdf — no match: No reason recorded
- [15922] blend-26-06-12-0.sherlock.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audits (GitHub directory) | IntentEngine | unmatched — not counted | — | Scope: Intent Engine contract improvements (PR 47, 48, 49) | no |
| audits (GitHub directory) | AcrossXChainAdapter | unmatched — not counted | — | Scope: Cross-chain infrastructure, AcrossXChainAdapter and SwapAdapter (PR 62); also in later audits | no |
| audits (GitHub directory) | SwapAdapter | ambiguous — not counted | SwapAdapter (alternative) `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135` — deployed 2025-10-11 20:29:23+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x2207189bab0f177df87d77b7575102f2df925754` — deployed 2025-10-10 21:51:11+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` — deployed 2025-10-10 23:05:00+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0xbf76d87abb1c22a2a820888483956298a172def4` — deployed 2025-09-20 22:11:47+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` — deployed 2025-10-10 22:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audits (GitHub directory) | PriceLib | unmatched — not counted | — | Scope: Swap adapter implementations (SwapAdapter.sol and PriceLib.sol); also in later audits | no |
| audits (GitHub directory) | OstiumVaultController | unmatched — not counted | — | Scope: Ostium vault controllers integration and Morpho Bundler3 adapter compatibility | no |
| audits (GitHub directory) | VaultToVaultAction | unmatched — not counted | — | Scope: Ostium vault controllers integration and Morpho Bundler3 adapter compatibility | no |
| audits (GitHub directory) | BalanceReplacementAdapter | unmatched — not counted | — | Scope: Ostium vault controllers integration and Morpho Bundler3 adapter compatibility | no |
| audits (GitHub directory) | CCTPXChainAdapter | unmatched — not counted | — | Scope: Cross-chain infrastructure updates covering AcrossXChainAdapter.sol, CCTPXChainAdapter.sol, XChainVaultAction.sol, BlendSafeFactory.sol, MorphoVaultLib.sol, and PriceLib.sol | no |
| audits (GitHub directory) | XChainVaultAction | unmatched — not counted | — | Scope: Cross-chain infrastructure updates covering AcrossXChainAdapter.sol, CCTPXChainAdapter.sol, XChainVaultAction.sol, BlendSafeFactory.sol, MorphoVaultLib.sol, and PriceLib.sol | no |
| audits (GitHub directory) | BlendSafeFactory | unmatched — not counted | — | Scope: Cross-chain infrastructure updates covering AcrossXChainAdapter.sol, CCTPXChainAdapter.sol, XChainVaultAction.sol, BlendSafeFactory.sol, MorphoVaultLib.sol, and PriceLib.sol | no |
| audits (GitHub directory) | MorphoVaultLib | unmatched — not counted | — | Scope: Cross-chain infrastructure updates covering AcrossXChainAdapter.sol, CCTPXChainAdapter.sol, XChainVaultAction.sol, BlendSafeFactory.sol, MorphoVaultLib.sol, and PriceLib.sol | no |
| audits (GitHub directory) | UserWithdrawController | unmatched — not counted | — | Scope: User withdraw controller, delegate controller, and supporting libraries (UserWithdrawController.sol, DelegateController.sol, MorphoVaultLib.sol, PriceLib.sol, StrategyManager.sol, RebalanceTypes.sol, StrategyTypes.sol) | no |
| audits (GitHub directory) | DelegateController | unmatched — not counted | — | Scope: User withdraw controller, delegate controller, and supporting libraries | no |
| audits (GitHub directory) | StrategyManager | unmatched — not counted | — | Scope: Rate limiting enhancements in Strategy Manager contract (PR 80); also in later audits | no |
| audits (GitHub directory) | RebalanceTypes | unmatched — not counted | — | Scope: User withdraw controller, delegate controller, and supporting libraries | no |
| audits (GitHub directory) | StrategyTypes | unmatched — not counted | — | Scope: User withdraw controller, delegate controller, and supporting libraries | no |
| audits (GitHub directory) | OFTXChainAdapter | unmatched — not counted | — | Scope: Cross-chain adapters and user withdraw infrastructure (AcrossXChainAdapter.sol, CCTPXChainAdapter.sol, OFTXChainAdapter.sol, UserWithdrawVaultAction.sol, XChainVaultAction.sol, IXChainAdapterController.sol, DeallocateLib.sol, PriceLib.sol, UserWithdrawController.sol) | no |
| audits (GitHub directory) | UserWithdrawVaultAction | unmatched — not counted | — | Scope: Cross-chain adapters and user withdraw infrastructure | no |
| audits (GitHub directory) | IXChainAdapterController | unmatched — not counted | — | Scope: Cross-chain adapters and user withdraw infrastructure | no |
| audits (GitHub directory) | DeallocateLib | unmatched — not counted | — | Scope: Cross-chain adapters and user withdraw infrastructure | no |
| blend-25-08-10-0-cantinacode.pdf | MorphoVaultController | ambiguous — not counted | MorphoVaultController (alternative) `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304` — deployed 2025-09-30 00:09:22+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50` — deployed 2025-10-10 22:00:44+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0x20baf09df508c6e055be01b508478d3f674229c3` — deployed 2025-09-20 22:07:03+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031` — deployed 2025-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` — deployed 2025-10-10 21:48:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-08-10-0-cantinacode.pdf | StrategyManager | unmatched — not counted | — | Listed in scope context and findings | no |
| blend-25-08-10-0-cantinacode.pdf | ExactErc4626Adapter | unmatched — not counted | — | Listed in scope context and findings | no |
| blend-25-08-10-0-cantinacode.pdf | RolesReceiver | ambiguous — not counted | RolesReceiver (alternative) `0xa03f41ede4d9a50f87e34fce042034eae74a82e8` — deployed 2025-09-29 23:59:03+03 — liveness: live (current_address_book_code)<br>RolesReceiver (alternative) `0x9944555a71d6e188a4c2615545e443e7097c5d6e` — deployed 2025-09-20 21:50:03+03 — liveness: live (current_address_book_code)<br>RolesReceiver (alternative) `0xe4e0f5eb706084f4d598049ddd0abfd2f8431360` — deployed 2025-10-10 21:40:19+03 — liveness: live (code_present_context)<br>RolesReceiver (alternative) `0x107b9863c91383cb4b4683a1e8d4304216a98fed` — deployed 2025-10-10 22:25:38+03 — liveness: live (current_address_book_code)<br>RolesReceiver (alternative) `0x2af296e77f32a356d13d9a3466678265cb92a4c9` — deployed 2025-10-10 21:57:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-08-10-0-cantinacode.pdf | RolesBroadcaster | own contract | RolesBroadcaster (selected) `0x6f94ac2c4129a7f1435532f39913dfd23d061263` — deployed 2025-09-20 19:06:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blend-25-08-10-0-cantinacode.pdf | MarketWrapper | unmatched — not counted | — | Listed in scope context and findings | no |
| blend-25-08-10-0-cantinacode.pdf | RolesGuard | ambiguous — not counted | RolesGuard (alternative) `0xad7188d0970cbedbdb233f0e5b7367cf149c3449` — deployed 2025-09-20 22:59:24+03 — liveness: live (current_address_book_code)<br>RolesGuard (alternative) `0xab6a8f5a37cee7a979622138524c4ddf22debc49` — deployed 2025-10-10 23:06:00+03 — liveness: live (current_address_book_code)<br>RolesGuard (alternative) `0x7d55a2bd88ed4e886ba8a95871df823db70acddf` — deployed 2025-09-30 00:17:46+03 — liveness: live (current_address_book_code)<br>RolesGuard (alternative) `0x0a55aa9881b64bf370738f088154f997b975f718` — deployed 2025-09-20 22:15:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-08-10-0-cantinacode.pdf | AssignmentManager | unmatched — not counted | — | Listed in scope context and findings | no |
| blend-25-08-10-0-cantinacode.pdf | CallBuilder | unmatched — not counted | — | Listed in scope context and findings | no |
| blend-25-08-10-0-cantinacode.pdf | MorphoVaultLib | unmatched — not counted | — | Listed in scope context and findings | no |
| blend-25-09-29-0-cantinacode.pdf | StrategyManager | unmatched — not counted | — | mentioned in finding context | no |
| blend-25-09-29-0-cantinacode.pdf | MorphoVaultController | ambiguous — not counted | MorphoVaultController (alternative) `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304` — deployed 2025-09-30 00:09:22+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50` — deployed 2025-10-10 22:00:44+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0x20baf09df508c6e055be01b508478d3f674229c3` — deployed 2025-09-20 22:07:03+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031` — deployed 2025-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>MorphoVaultController (alternative) `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c` — deployed 2025-10-10 21:48:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-09-29-1-cantinacode.pdf | AcrossXChainAdapter | unmatched — not counted | — | — | no |
| blend-25-09-29-1-cantinacode.pdf | SwapAdapter | own contract | SwapAdapter (alternative) `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135` — deployed 2025-10-11 20:29:23+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x2207189bab0f177df87d77b7575102f2df925754` — deployed 2025-10-10 21:51:11+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` — deployed 2025-10-10 23:05:00+03 — liveness: live (current_address_book_code)<br>SwapAdapter (selected) `0xbf76d87abb1c22a2a820888483956298a172def4` — deployed 2025-09-20 22:11:47+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` — deployed 2025-10-10 22:28:57+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-09-20 was 19d from audit; next candidate 39d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blend-25-10-02-0-zellic.pdf | SwapAdapter | ambiguous — not counted | SwapAdapter (alternative) `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135` — deployed 2025-10-11 20:29:23+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x2207189bab0f177df87d77b7575102f2df925754` — deployed 2025-10-10 21:51:11+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` — deployed 2025-10-10 23:05:00+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0xbf76d87abb1c22a2a820888483956298a172def4` — deployed 2025-09-20 22:11:47+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` — deployed 2025-10-10 22:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-10-02-0-zellic.pdf | WhitelistedSwapAdapter | own contract | WhitelistedSwapAdapter (selected) `0x44c6dcba90dae9238f5c8842abbf8506c3d3b437` — deployed 2025-10-10 22:32:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blend-25-10-05-0-cantinacode.pdf | SwapAdapter | ambiguous — not counted | SwapAdapter (alternative) `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135` — deployed 2025-10-11 20:29:23+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x2207189bab0f177df87d77b7575102f2df925754` — deployed 2025-10-10 21:51:11+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` — deployed 2025-10-10 23:05:00+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0xbf76d87abb1c22a2a820888483956298a172def4` — deployed 2025-09-20 22:11:47+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` — deployed 2025-10-10 22:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-10-10-0-cantinacode.pdf | StrategyManager | unmatched — not counted | — | mentioned in findings context: StrategyManager.sol#L44, L278, L259 | no |
| blend-25-12-05-0-sherlock.pdf | SwapAdapter | ambiguous — not counted | SwapAdapter (alternative) `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135` — deployed 2025-10-11 20:29:23+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x2207189bab0f177df87d77b7575102f2df925754` — deployed 2025-10-10 21:51:11+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` — deployed 2025-10-10 23:05:00+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0xbf76d87abb1c22a2a820888483956298a172def4` — deployed 2025-09-20 22:11:47+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` — deployed 2025-10-10 22:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-25-12-05-0-sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | OstiumVaultController | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | SwapAdapter | ambiguous — not counted | SwapAdapter (alternative) `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135` — deployed 2025-10-11 20:29:23+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x2207189bab0f177df87d77b7575102f2df925754` — deployed 2025-10-10 21:51:11+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` — deployed 2025-10-10 23:05:00+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0xbf76d87abb1c22a2a820888483956298a172def4` — deployed 2025-09-20 22:11:47+03 — liveness: live (current_address_book_code)<br>SwapAdapter (alternative) `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` — deployed 2025-10-10 22:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blend-26-01-22-0-sherlock.pdf | VaultToVaultAction | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | BalanceReplacementAdapter | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | BasePerpVaultController | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | MorphoVaultLib | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | VaultController | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | RebalanceTypes | unmatched — not counted | — | listed in scope | no |
| blend-26-01-22-0-sherlock.pdf | StrategyTypes | unmatched — not counted | — | listed in scope | no |
| blend-26-03-10-0.sherlock.pdf | AcrossXChainAdapter | unmatched — not counted | — | — | no |
| blend-26-03-10-0.sherlock.pdf | BlendSafeFactory | unmatched — not counted | — | — | no |
| blend-26-03-10-0.sherlock.pdf | CCTPXChainAdapter | unmatched — not counted | — | — | no |
| blend-26-03-10-0.sherlock.pdf | MorphoVaultLib | unmatched — not counted | — | — | no |
| blend-26-03-10-0.sherlock.pdf | PriceLib | unmatched — not counted | — | — | no |
| blend-26-03-10-0.sherlock.pdf | XChainVaultAction | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | DelegateController | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | MorphoVaultLib | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | PriceLib | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | RebalanceTypes | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | StrategyManager | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | StrategyTypes | unmatched — not counted | — | — | no |
| blend-26-05-04-0.sherlock.pdf | UserWithdrawController | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | AcrossXChainAdapter | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | CCTPXChainAdapter | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | DeallocateLib | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | IXChainAdapterController | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | OFTXChainAdapter | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | PriceLib | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | UserWithdrawController | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | UserWithdrawVaultAction | unmatched — not counted | — | — | no |
| blend-26-06-12-0.sherlock.pdf | XChainVaultAction | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0xab6a8f5a37cee7a979622138524c4ddf22debc49` | RolesGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a55aa9881b64bf370738f088154f997b975f718` | RolesGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xad7188d0970cbedbdb233f0e5b7367cf149c3449` | RolesGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05824db4609ec96c77e99bc61c8fe0acf3269b24` | RolesReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x2af296e77f32a356d13d9a3466678265cb92a4c9` | RolesReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x20baf09df508c6e055be01b508478d3f674229c3` | SwapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 60 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, medium=2
- Match method counts: temporal_name=1, unique_name=2

Zero-match audit list:

- [12800] audits (GitHub directory)
- [12802] blend-25-09-29-0-cantinacode.pdf
- [12805] blend-25-10-05-0-cantinacode.pdf
- [12806] blend-25-10-10-0-cantinacode.pdf
- [12807] blend-25-12-05-0-sherlock.pdf
- [12808] blend-26-01-22-0-sherlock.pdf
- [12809] blend-26-03-10-0.sherlock.pdf
- [12810] blend-26-05-04-0.sherlock.pdf
- [15922] blend-26-06-12-0.sherlock.pdf

Fork inheritance lineage and inherited audits are included when available.
